object flista: Tflista
  Left = 116
  Top = 109
  Width = 789
  Height = 477
  Caption = 'LISTA'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object panel2: TPanel
    Left = 0
    Top = 0
    Width = 781
    Height = 104
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 0
    object litem: TLabel
      Left = 0
      Top = 65
      Width = 781
      Height = 39
      Align = alBottom
      Alignment = taCenter
      AutoSize = False
      Caption = '40000O Itens'
      Color = 16056319
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object btnimprimir: TSpeedButton
      Left = 88
      Top = 11
      Width = 91
      Height = 51
      Caption = '&Imprimir'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnimprimirClick
    end
    object btnmenu: TSpeedButton
      Left = 272
      Top = 11
      Width = 91
      Height = 51
      Caption = 'Menus (F9)'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnmenuClick
    end
    object btnimage: TSpeedButton
      Left = 180
      Top = 11
      Width = 90
      Height = 51
      Caption = 'Imagem (F11)'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnimageClick
    end
    object btninserir: TSpeedButton
      Left = 0
      Top = 11
      Width = 89
      Height = 51
      Hint = 'Tecle Insert para Inserir'
      Caption = 'Inserir (Ins)'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btninserirClick
    end
    object llocalizar: TLabel
      Left = 0
      Top = 90
      Width = 200
      Height = 16
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Localizar (A~Z)'
      Color = 3487029
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object btnova: TSpeedButton
      Left = 364
      Top = 11
      Width = 91
      Height = 51
      Caption = 'Pesquisar (F3)'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnovaClick
    end
    object rvisualiza: TCheckBox
      Left = 164
      Top = 30
      Width = 12
      Height = 11
      Hint = 'Escolher os campos'
      Color = 9895936
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object elocalizar: TEdit
      Left = 201
      Top = 90
      Width = 275
      Height = 14
      Hint = 'Use o F3 para nova pesquisa'
      BevelInner = bvNone
      BevelOuter = bvNone
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnChange = elocalizarChange
      OnKeyDown = elocalizarKeyDown
      OnKeyPress = elocalizarKeyPress
    end
    object rsemelhante: TCheckBox
      Left = 3
      Top = 68
      Width = 93
      Height = 15
      Caption = 'Semelhantes'
      Color = 4473924
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      Visible = False
      OnClick = rsemelhanteClick
    end
  end
  object grade: TDBGrid
    Left = 0
    Top = 104
    Width = 781
    Height = 23
    Hint = 
      'Clique no cabe'#231'alho de uma coluna para ordenar  -  Use o F3 para' +
      ' nova pesquisa'
    Align = alClient
    Color = 16382712
    DataSource = ds
    FixedColor = 15987699
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = 6049863
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnCellClick = gradeCellClick
    OnDblClick = gradeDblClick
    OnKeyUp = gradeKeyUp
    OnTitleClick = gradeTitleClick
  end
  object lobs: TDBMemo
    Left = 0
    Top = 411
    Width = 781
    Height = 26
    Align = alBottom
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = bsNone
    Color = clBlack
    DataSource = ds
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 2
    OnDblClick = lobsDblClick
  end
  object psemelhante: TDBGrid
    Left = 0
    Top = 437
    Width = 781
    Height = 13
    Align = alBottom
    Color = 16382712
    DataSource = dssemelhante
    FixedColor = 15987699
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 3
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = 6049863
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Visible = False
    OnDblClick = psemelhanteDblClick
  end
  object padesivo: TPanel
    Left = 0
    Top = 228
    Width = 781
    Height = 183
    Align = alBottom
    Anchors = []
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 4
    Visible = False
    object Label5: TLabel
      Left = 2
      Top = 3
      Width = 307
      Height = 14
      Hint = 'Clique para incluir/alterar'
      Alignment = taCenter
      AutoSize = False
      Caption = 'Tabela de Quantidade/Valor'
      Color = 7887179
      Font.Charset = ANSI_CHARSET
      Font.Color = 15138815
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label6: TLabel
      Left = 310
      Top = 3
      Width = 189
      Height = 14
      Hint = 'Clique para incluir/alterar'
      Alignment = taCenter
      AutoSize = False
      Caption = 'Tabela de Cores(%)'
      Color = 7887179
      Font.Charset = ANSI_CHARSET
      Font.Color = 15138815
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label9: TLabel
      Left = 502
      Top = 3
      Width = 186
      Height = 14
      Hint = 'Clique para incluir/alterar'
      Alignment = taCenter
      AutoSize = False
      Caption = 'Outros'
      Color = 7887179
      Font.Charset = ANSI_CHARSET
      Font.Color = 15138815
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label7: TLabel
      Left = 501
      Top = 138
      Width = 55
      Height = 23
      Hint = 'Clique para cadastrar'
      Alignment = taCenter
      AutoSize = False
      Caption = 'Valor'
      Color = 7887179
      Font.Charset = ANSI_CHARSET
      Font.Color = 10354687
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object ltotal: TLabel
      Left = 557
      Top = 138
      Width = 131
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Color = 7887179
      Font.Charset = ANSI_CHARSET
      Font.Color = 10354687
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object adcorte_: TLabel
      Left = 638
      Top = 63
      Width = 50
      Height = 17
      Hint = 'Clique para cadastrar'
      Alignment = taCenter
      AutoSize = False
      Caption = 'Valor'
      Color = 7887179
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object adnumerado_: TLabel
      Left = 638
      Top = 82
      Width = 50
      Height = 17
      Hint = 'Clique para cadastrar'
      Alignment = taCenter
      AutoSize = False
      Caption = 'Valor'
      Color = 7887179
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object adresina_: TLabel
      Left = 638
      Top = 101
      Width = 50
      Height = 17
      Hint = 'Clique para cadastrar'
      Alignment = taCenter
      AutoSize = False
      Caption = 'Valor'
      Color = 7887179
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object Label3: TLabel
      Left = 552
      Top = 39
      Width = 72
      Height = 17
      Hint = 'Clique para cadastrar'
      Alignment = taCenter
      AutoSize = False
      Caption = 'Quantidade'
      Color = 7887179
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object DBGrid3: TDBGrid
      Left = 310
      Top = 18
      Width = 189
      Height = 144
      Hint = 'Clique no nome da coluna que deseja localizar'
      Color = 16382457
      DataSource = dscor
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid3DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'qtd'
          Title.Caption = 'Qtd'
          Title.Color = 8938325
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'acrescimo'
          Title.Caption = 'Acr'#233'scimo de'
          Title.Color = 8938325
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end>
    end
    object adcorte: TCheckBox
      Left = 552
      Top = 63
      Width = 86
      Height = 17
      Caption = 'Corte'
      Color = 7887179
      Font.Charset = ANSI_CHARSET
      Font.Color = 15138815
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      OnClick = adresinaClick
    end
    object adnumerado: TCheckBox
      Left = 552
      Top = 82
      Width = 86
      Height = 17
      Caption = 'Numerado'
      Color = 7887179
      Font.Charset = ANSI_CHARSET
      Font.Color = 15138815
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      OnClick = adresinaClick
    end
    object adresina: TCheckBox
      Left = 552
      Top = 101
      Width = 86
      Height = 17
      Caption = 'Resina'
      Color = 7887179
      Font.Charset = ANSI_CHARSET
      Font.Color = 15138815
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      OnClick = adresinaClick
    end
    object DBGrid2: TDBGrid
      Left = 2
      Top = 18
      Width = 307
      Height = 144
      Hint = 'Clique no nome da coluna que deseja localizar'
      Color = 16382457
      DataSource = dsqtd
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid2DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'de'
          Title.Caption = 'De'
          Title.Color = 8938325
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'a'
          Title.Caption = 'A'
          Title.Color = 8938325
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor'
          Title.Caption = 'Valor'
          Title.Color = 8938325
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vrcorte'
          Title.Caption = 'VrCorte'
          Title.Color = 8938325
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWhite
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end>
    end
    object eqtd: TSpinEdit
      Left = 626
      Top = 38
      Width = 63
      Height = 23
      Cursor = crHandPoint
      HelpType = htKeyword
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      MaxValue = 10000000
      MinValue = 1
      ParentFont = False
      TabOrder = 5
      Value = 1000
      OnChange = eqtdChange
    end
  end
  object pgradepreco: TDBGrid
    Left = 0
    Top = 127
    Width = 781
    Height = 101
    Hint = 'Clique duplo para inserir'
    Align = alBottom
    Color = 16382712
    DataSource = dsprodgrade
    FixedColor = 15987699
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 5
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = 6049863
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    Visible = False
    OnDblClick = pgradeprecoDblClick
  end
  object menu: TPopupMenu
    Left = 168
    Top = 116
    object Cadastrar1: TMenuItem
      Caption = 'Cadastrar'
      OnClick = Cadastrar1Click
    end
    object Recuperar1: TMenuItem
      Caption = 'Recuperar'
      Visible = False
      OnClick = Recuperar1Click
    end
    object Informaes1: TMenuItem
      Caption = 'Informa'#231#245'es'
      Visible = False
      OnClick = Informaes1Click
    end
    object CdigosAnteriores1: TMenuItem
      Caption = 'C'#243'digos Anteriores'
      Visible = False
      OnClick = CdigosAnteriores1Click
    end
    object Consumo1: TMenuItem
      Caption = 'Consumo'
    end
    object Veritensdavenda1: TMenuItem
      Caption = 'Ver itens da venda'
      OnClick = Veritensdavenda1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object UseF3paranovapesquisa1: TMenuItem
      Caption = 'Use F3 para nova pesquisa'
    end
    object DetalhesF101: TMenuItem
      Caption = 'Detalhes (F10)'
      OnClick = DetalhesF101Click
    end
  end
  object ds: TDataSource
    DataSet = fdm.sg
    OnDataChange = dsDataChange
    Left = 116
    Top = 116
  end
  object ActionList1: TActionList
    Left = 64
    Top = 112
    object inserir: TAction
      Caption = 'inserir'
      ShortCut = 45
      OnExecute = inserirExecute
    end
    object insent: TAction
      Caption = 'insent'
      ShortCut = 13
      OnExecute = insentExecute
    end
    object imagem: TAction
      Caption = 'imagem'
      OnExecute = imagemExecute
    end
    object nfe_: TAction
      Caption = 'nfe_'
      ShortCut = 123
      OnExecute = nfe_Execute
    end
    object formatar: TAction
      Caption = 'formatar'
      OnExecute = formatarExecute
    end
    object F10_itens: TAction
      Caption = 'F10_itens'
      ShortCut = 121
      OnExecute = F10_itensExecute
    end
    object valoradesivo: TAction
      Caption = 'valoradesivo'
      OnExecute = valoradesivoExecute
    end
  end
  object dssemelhante: TDataSource
    DataSet = ssemelhante
    Left = 396
    Top = 116
  end
  object ssemelhante: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      
        'select codigo,descricao,vrvenda,vratacado,valor3 from tbproduto ' +
        'limit 1,1')
    Params = <>
    Left = 336
    Top = 112
  end
  object tbqtd: TZQuery
    Connection = fdm.conector
    SortedFields = 'de'
    AfterScroll = tbqtdAfterScroll
    SQL.Strings = (
      'select * from tbprodqtd')
    Params = <>
    MasterFields = 'chave'
    MasterSource = ds
    LinkedFields = 'link'
    IndexFieldNames = 'de Asc'
    Left = 128
    Top = 576
  end
  object dsqtd: TDataSource
    DataSet = tbqtd
    Left = 44
    Top = 572
  end
  object dscor: TDataSource
    DataSet = tbcor
    Left = 268
    Top = 596
  end
  object tbcor: TZQuery
    Connection = fdm.conector
    SortedFields = 'qtd'
    AfterScroll = tbqtdAfterScroll
    SQL.Strings = (
      'select * from tbprodcor')
    Params = <>
    MasterFields = 'chave'
    MasterSource = ds
    LinkedFields = 'link'
    IndexFieldNames = 'qtd Asc'
    Left = 312
    Top = 600
  end
  object tbprodgrade: TZQuery
    Connection = fdm.conector
    SortedFields = 'descricao'
    SQL.Strings = (
      'select * from tbprodgrade')
    Params = <>
    MasterFields = 'chave'
    MasterSource = ds
    LinkedFields = 'link'
    IndexFieldNames = 'descricao Asc'
    Left = 304
    Top = 204
  end
  object dsprodgrade: TDataSource
    DataSet = tbprodgrade
    Left = 244
    Top = 204
  end
end
