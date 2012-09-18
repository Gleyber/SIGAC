object fcadg: Tfcadg
  Left = 249
  Top = 67
  Width = 1036
  Height = 732
  Caption = 'cadastro'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object Label8: TLabel
    Left = 600
    Top = 64
    Width = 110
    Height = 15
    Alignment = taCenter
    AutoSize = False
    Caption = 'Escolher a impress'#227'o'
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
  object rativo: TRadioGroup
    Left = 0
    Top = 105
    Width = 1028
    Height = 32
    Align = alTop
    Color = 6049863
    Columns = 4
    Ctl3D = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    Visible = False
    OnClick = rativoClick
  end
  object panel2: TPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object litem: TLabel
      Left = 109
      Top = 65
      Width = 69
      Height = 14
      Cursor = crHandPoint
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
    object btnnovo: TSpeedButton
      Left = 80
      Top = 12
      Width = 91
      Height = 50
      Cursor = crHandPoint
      HelpType = htKeyword
      Caption = 'Cadastrar (F2)'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
      Left = 172
      Top = 12
      Width = 91
      Height = 50
      Cursor = crHandPoint
      HelpType = htKeyword
      Caption = 'Alterar (F3)'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = btneditarClick
    end
    object btnreplicar: TSpeedButton
      Left = 263
      Top = 12
      Width = 91
      Height = 50
      Cursor = crHandPoint
      HelpType = htKeyword
      Caption = 'Replicar (F4)'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = btnreplicarClick
    end
    object btnapagar: TSpeedButton
      Left = 362
      Top = 12
      Width = 91
      Height = 50
      Cursor = crHandPoint
      HelpType = htKeyword
      Caption = 'Apagar (F5)'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = btnapagarClick
    end
    object btnfiltro: TSpeedButton
      Left = 453
      Top = 12
      Width = 91
      Height = 50
      Cursor = crHandPoint
      Caption = 'Filtros (F6)'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnfiltroClick
    end
    object btnanotacoes: TSpeedButton
      Left = 544
      Top = 12
      Width = 92
      Height = 50
      Cursor = crHandPoint
      HelpType = htKeyword
      Caption = 'Anota'#231#245'es (F7)'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnanotacoesClick
    end
    object btnimprimir: TSpeedButton
      Left = 636
      Top = 12
      Width = 91
      Height = 50
      Cursor = crHandPoint
      Caption = 'Imprimir (F8)'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = btnimprimirClick
    end
    object btnmenu: TSpeedButton
      Left = 727
      Top = 12
      Width = 75
      Height = 50
      Cursor = crHandPoint
      HelpType = htKeyword
      Caption = 'Menus (F9)'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnmenuClick
    end
    object llocalizar: TLabel
      Left = -1
      Top = 90
      Width = 200
      Height = 36
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
    object Label1: TLabel
      Left = 200
      Top = 90
      Width = 10
      Height = 36
      Cursor = crHandPoint
      Alignment = taRightJustify
      AutoSize = False
      Caption = '?'
      Color = 3487029
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      OnClick = Label1Click
    end
    object Label2: TLabel
      Left = 24
      Top = -2
      Width = 33
      Height = 11
      Caption = 'Imagem'
      Font.Charset = ANSI_CHARSET
      Font.Color = 15138815
      Font.Height = -9
      Font.Name = 'Small Fonts'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object btelaborar: TSpeedButton
      Left = 248
      Top = 65
      Width = 81
      Height = 14
      Cursor = crHandPoint
      Caption = 'Elaborar (F12)'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 14024703
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btelaborarClick
    end
    object elocalizar: TEdit
      Left = 213
      Top = 91
      Width = 584
      Height = 14
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
      TabOrder = 0
      OnChange = elocalizarChange
      OnKeyDown = elocalizarKeyDown
      OnKeyPress = elocalizarKeyPress
    end
    object rvisualiza: TCheckBox
      Left = 646
      Top = 35
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
      TabOrder = 1
    end
    object vimage: TDBImage
      Left = 0
      Top = 11
      Width = 78
      Height = 51
      Cursor = crHandPoint
      Hint = 'Clique para adicionar/alterar a imagem'
      BorderStyle = bsNone
      Color = 6049863
      Font.Charset = ANSI_CHARSET
      Font.Color = 6049863
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Stretch = True
      TabOrder = 2
      OnClick = vimageClick
    end
    object rsemelhante: TCheckBox
      Left = 3
      Top = 68
      Width = 96
      Height = 14
      Caption = 'Semelhantes'
      Color = 3881787
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = rsemelhanteClick
    end
  end
  object pcliente: TPanel
    Left = 0
    Top = 616
    Width = 1028
    Height = 89
    Align = alBottom
    BevelOuter = bvNone
    BiDiMode = bdRightToLeftReadingOnly
    Color = clSilver
    ParentBiDiMode = False
    TabOrder = 2
    Visible = False
    object ll5: TLabel
      Left = 443
      Top = 20
      Width = 88
      Height = 13
      AutoSize = False
      Caption = 'Fone'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
      OnDblClick = ll5DblClick
    end
    object l6: TDBText
      Left = 539
      Top = 40
      Width = 88
      Height = 14
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ll6: TLabel
      Left = 537
      Top = 20
      Width = 85
      Height = 14
      AutoSize = False
      Caption = 'Celular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object l8: TDBText
      Left = 753
      Top = 40
      Width = 85
      Height = 14
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ll1: TLabel
      Left = 9
      Top = 20
      Width = 89
      Height = 13
      AutoSize = False
      Caption = 'Data Cadastro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object l1: TDBText
      Left = 9
      Top = 40
      Width = 89
      Height = 14
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object l2: TDBText
      Left = 105
      Top = 40
      Width = 86
      Height = 14
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ll2: TLabel
      Left = 105
      Top = 20
      Width = 86
      Height = 13
      AutoSize = False
      Caption = 'Ult. Venda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object ll9: TLabel
      Left = 840
      Top = 20
      Width = 38
      Height = 13
      AutoSize = False
      Caption = 'E  Mail'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object l3: TDBText
      Left = 228
      Top = 40
      Width = 84
      Height = 13
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ll3: TLabel
      Left = 228
      Top = 20
      Width = 85
      Height = 13
      AutoSize = False
      Caption = 'D'#233'bito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
      OnDblClick = ll3DblClick
    end
    object l9: TDBText
      Left = 840
      Top = 40
      Width = 184
      Height = 14
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ll4: TLabel
      Left = 320
      Top = 20
      Width = 88
      Height = 13
      Cursor = crHandPoint
      AutoSize = False
      Caption = 'Cr'#233'dito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
      OnClick = ll4Click
    end
    object l4: TDBText
      Left = 321
      Top = 40
      Width = 87
      Height = 13
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ll7: TLabel
      Left = 656
      Top = 20
      Width = 88
      Height = 13
      AutoSize = False
      Caption = 'CPF/CNPJ'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object l5: TDBText
      Left = 443
      Top = 40
      Width = 88
      Height = 14
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object ll8: TLabel
      Left = 753
      Top = 20
      Width = 85
      Height = 14
      AutoSize = False
      Caption = 'RG/IE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object l7: TDBText
      Left = 648
      Top = 40
      Width = 105
      Height = 14
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object llobs: TLabel
      Left = 2
      Top = 67
      Width = 74
      Height = 12
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Obs:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Bevel1: TBevel
      Left = 0
      Top = 37
      Width = 2000
      Height = 6
      Shape = bsTopLine
    end
    object BitBtn1: TBitBtn
      Left = 752
      Top = 0
      Width = 17
      Height = 16
      TabOrder = 0
      Visible = False
    end
    object lobs: TDBMemo
      Left = 80
      Top = 67
      Width = 942
      Height = 15
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
      TabOrder = 1
      OnDblClick = lobsDblClick
    end
  end
  object pcontagem: TPanel
    Left = 0
    Top = 137
    Width = 200
    Height = 479
    Align = alLeft
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 3
    Visible = False
    object DBGrid2: TDBGrid
      Left = 0
      Top = 0
      Width = 200
      Height = 387
      Hint = 'Clique no cabe'#231'alho de uma coluna para indexar'
      Align = alClient
      Color = 16382712
      DataSource = ds
      FixedColor = 15987699
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'estoqueAntes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Caption = 'Estoque'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'estoquedepois'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Caption = 'Contagem'
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
          FieldName = 'divergencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Caption = 'Diverg'#234'ncia'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 70
          Visible = True
        end>
    end
    object rqtd: TRadioGroup
      Left = 0
      Top = 387
      Width = 200
      Height = 30
      Align = alBottom
      Color = 15987699
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6180680
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 1
      Items.Strings = (
        'Somar1'
        'Dig Qtd'
        'SomQtd')
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 417
      Width = 200
      Height = 62
      Align = alBottom
      Color = 15987699
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object btnfechar: TSpeedButton
        Left = 112
        Top = 40
        Width = 87
        Height = 21
        Cursor = crHandPoint
        Caption = 'Voltar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6180680
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnfecharClick
      end
      object SpeedButton13: TSpeedButton
        Left = 4
        Top = 40
        Width = 109
        Height = 21
        Cursor = crHandPoint
        Caption = 'Abortar Contagem'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6180680
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton13Click
      end
      object SpeedButton14: TSpeedButton
        Left = 1
        Top = 21
        Width = 197
        Height = 21
        Cursor = crHandPoint
        Caption = 'Efetivar/Zerar Contagem'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6180680
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton14Click
      end
      object rcontagem: TCheckBox
        Left = 37
        Top = 6
        Width = 164
        Height = 15
        Caption = 'Zerar n'#227'o contado?'
        Color = 15987699
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 200
    Top = 137
    Width = 828
    Height = 479
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 4
    object psemelhante: TPanel
      Left = 0
      Top = 285
      Width = 828
      Height = 30
      Align = alBottom
      Anchors = []
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      Visible = False
      object Panel6: TPanel
        Left = 803
        Top = 0
        Width = 25
        Height = 30
        Align = alRight
        BevelOuter = bvNone
        Color = 7887179
        TabOrder = 0
        object Label30: TLabel
          Left = 3
          Top = 32
          Width = 20
          Height = 14
          Cursor = crHandPoint
          Caption = 'DEL'
          Font.Charset = ANSI_CHARSET
          Font.Color = 15138815
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          OnClick = Label30Click
        end
        object Label29: TLabel
          Left = 3
          Top = 56
          Width = 17
          Height = 14
          Cursor = crHandPoint
          Caption = 'INS'
          Font.Charset = ANSI_CHARSET
          Font.Color = 15138815
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          OnClick = Label29Click
        end
      end
      object grades: TDBGrid
        Left = 0
        Top = 0
        Width = 803
        Height = 30
        Hint = 'Clique no cabe'#231'alho de uma coluna para ordenar'
        Align = alClient
        Color = 16382712
        DataSource = dssemelhante
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
        TabOrder = 1
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = 6049863
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
      end
    end
    object grade: TDBGrid
      Left = 0
      Top = 0
      Width = 828
      Height = 184
      Hint = 'Clique no cabe'#231'alho de uma coluna para ordenar'
      Align = alClient
      Color = 16382712
      DataSource = ds
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
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = 6049863
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = gradeDrawColumnCell
      OnDblClick = gradeDblClick
      OnTitleClick = gradeTitleClick
    end
    object padesivo: TPanel
      Left = 0
      Top = 315
      Width = 828
      Height = 164
      Align = alBottom
      Anchors = []
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 2
      Visible = False
      object Label5: TLabel
        Left = 2
        Top = 3
        Width = 306
        Height = 14
        Cursor = crHandPoint
        Hint = 'Clique para incluir/alterar'
        Alignment = taCenter
        AutoSize = False
        Caption = 'Tabela de Quantidade/Valor'
        Color = 7887179
        Font.Charset = ANSI_CHARSET
        Font.Color = 15138815
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = Label5Click
      end
      object Label6: TLabel
        Left = 309
        Top = 3
        Width = 189
        Height = 14
        Cursor = crHandPoint
        Hint = 'Clique para incluir/alterar'
        Alignment = taCenter
        AutoSize = False
        Caption = 'Tabela de Cores(%)'
        Color = 7887179
        Font.Charset = ANSI_CHARSET
        Font.Color = 15138815
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = Label6Click
      end
      object Label9: TLabel
        Left = 499
        Top = 3
        Width = 213
        Height = 14
        Cursor = crHandPoint
        Hint = 'Clique para incluir/alterar'
        Alignment = taCenter
        AutoSize = False
        Caption = 'Outros'
        Color = 7887179
        Font.Charset = ANSI_CHARSET
        Font.Color = 15138815
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = Label9Click
      end
      object Label7: TLabel
        Left = 525
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
        Left = 581
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
        Left = 637
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
        Left = 637
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
        Left = 637
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
        Left = 551
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
      object DBGrid1: TDBGrid
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
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
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
      object DBGrid3: TDBGrid
        Left = 309
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
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
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
            Width = 68
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
            Width = 77
            Visible = True
          end>
      end
      object adcorte: TCheckBox
        Left = 551
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
        TabOrder = 2
        OnClick = adcorteClick
      end
      object adnumerado: TCheckBox
        Left = 551
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
        TabOrder = 3
        OnClick = adcorteClick
      end
      object adresina: TCheckBox
        Left = 551
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
        TabOrder = 4
        OnClick = adcorteClick
      end
      object eqtd: TSpinEdit
        Left = 625
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
      Top = 184
      Width = 828
      Height = 101
      Hint = 'Clique duplo para inserir/alterar'
      Align = alBottom
      Color = 16382712
      DataSource = dsprodgrade
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
      TabOrder = 3
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = 6049863
      TitleFont.Height = -11
      TitleFont.Name = 'Arial'
      TitleFont.Style = [fsBold]
      Visible = False
      OnDblClick = pgradeprecoDblClick
    end
  end
  object qrecibo: TRLReport
    Left = 39
    Top = -2000
    Width = 605
    Height = 529
    DataSource = ds
    DefaultFilter = fdm.filtro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 5.000000000000000000
    Margins.TopMargin = 5.000000000000000000
    Margins.RightMargin = 5.000000000000000000
    Margins.BottomMargin = 0.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 160.000000000000000000
    PageSetup.PaperHeight = 140.000000000000000000
    PreviewOptions.ShowModal = True
    BeforePrint = qreciboBeforePrint
    object RLBand1: TRLBand
      Left = 19
      Top = 19
      Width = 567
      Height = 505
      object lnome: TRLDBText
        Left = 164
        Top = 76
        Width = 40
        Height = 16
        Color = clWhite
        DataField = 'nome'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 100
        Top = 348
        Width = 221
        Height = 19
        HelpType = htKeyword
        AutoSize = False
        DataField = 'emitente'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 397
        Top = 347
        Width = 31
        Height = 16
        DataField = 'cnpj'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 3
        Top = 0
        Width = 560
        Height = 16
        Caption = 
          '================================================================' +
          '====='
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 16
        Top = 76
        Width = 145
        Height = 20
        HelpType = htKeyword
        AutoSize = False
        Caption = 'Recebi (emos) de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ldtextenso: TRLLabel
        Left = 16
        Top = 296
        Width = 541
        Height = 20
        HelpType = htKeyword
        AutoSize = False
        Caption = 'REcebi (emos) de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 324
        Top = 346
        Width = 71
        Height = 19
        HelpType = htKeyword
        Caption = 'CPF/RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 16
        Top = 464
        Width = 545
        Height = 20
        HelpType = htKeyword
        AutoSize = False
        Caption = 'Assinatura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 3
        Top = 276
        Width = 560
        Height = 16
        Caption = 
          '----------------------------------------------------------------' +
          '-----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 46
        Width = 560
        Height = 16
        Caption = 
          '================================================================' +
          '====='
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 3
        Top = 211
        Width = 560
        Height = 16
        Caption = 
          '----------------------------------------------------------------' +
          '-----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel9: TRLLabel
        Left = 3
        Top = 148
        Width = 560
        Height = 16
        Caption = 
          '----------------------------------------------------------------' +
          '-----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel10: TRLLabel
        Left = 3
        Top = 92
        Width = 560
        Height = 16
        Caption = 
          '----------------------------------------------------------------' +
          '-----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel11: TRLLabel
        Left = 3
        Top = 60
        Width = 560
        Height = 16
        Caption = 
          '----------------------------------------------------------------' +
          '-----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel12: TRLLabel
        Left = 3
        Top = 480
        Width = 560
        Height = 16
        Caption = 
          '----------------------------------------------------------------' +
          '-----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel13: TRLLabel
        Left = 3
        Top = 428
        Width = 560
        Height = 16
        Caption = 
          '----------------------------------------------------------------' +
          '-----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel14: TRLLabel
        Left = 3
        Top = 368
        Width = 560
        Height = 16
        Caption = 
          '----------------------------------------------------------------' +
          '-----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel15: TRLLabel
        Left = 3
        Top = 316
        Width = 560
        Height = 16
        Caption = 
          '----------------------------------------------------------------' +
          '-----'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        Transparent = False
      end
      object RLLabel17: TRLLabel
        Left = 16
        Top = 161
        Width = 138
        Height = 19
        HelpType = htKeyword
        Caption = 'A import'#226'ncia de:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel18: TRLLabel
        Left = 16
        Top = 225
        Width = 84
        Height = 19
        HelpType = htKeyword
        Caption = 'Referente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel19: TRLLabel
        Left = 16
        Top = 347
        Width = 77
        Height = 19
        HelpType = htKeyword
        Caption = 'Emitente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel20: TRLLabel
        Left = 16
        Top = 383
        Width = 84
        Height = 19
        HelpType = htKeyword
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBMemo1: TRLDBMemo
        Left = 108
        Top = 104
        Width = 447
        Height = 49
        HelpType = htKeyword
        AutoSize = False
        Behavior = []
        DataField = 'endereco'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 20
        Top = 102
        Width = 84
        Height = 19
        HelpType = htKeyword
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBMemo3: TRLDBMemo
        Left = 104
        Top = 228
        Width = 449
        Height = 50
        HelpType = htKeyword
        AutoSize = False
        Behavior = []
        DataField = 'referente'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBMemo4: TRLDBMemo
        Left = 104
        Top = 385
        Width = 449
        Height = 49
        HelpType = htKeyword
        AutoSize = False
        Behavior = []
        DataField = 'enderecoemitente'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDraw2: TRLDraw
        Left = 10
        Top = 10
        Width = 5
        Height = 497
        Angle = 90.000000000000000000
        Brush.Style = bsClear
        DrawKind = dkLine
        Pen.Style = psDot
      end
      object m1: TRLAngleLabel
        Left = 15
        Top = 14
        Width = 172
        Height = 37
        Alignment = taCenter
        Caption = 'RECIBO N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -32
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lnumero: TRLAngleLabel
        Left = 191
        Top = 14
        Width = 166
        Height = 37
        AutoSize = False
        Caption = 'n/vr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -32
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lvalor: TRLAngleLabel
        Left = 364
        Top = 14
        Width = 195
        Height = 37
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'n/vr'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -32
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lextenso: TRLMemo
        Left = 160
        Top = 164
        Width = 394
        Height = 49
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLDraw1: TRLDraw
      Left = 580
      Top = 28
      Width = 5
      Height = 497
      Angle = 90.000000000000000000
      Brush.Style = bsClear
      DrawKind = dkLine
      Pen.Style = psDot
    end
  end
  object qcalculo: TRLReport
    Left = 20
    Top = -2000
    Width = 794
    Height = 1123
    DefaultFilter = fdm.filtro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.LeftMargin = 15.000000000000000000
    ExpressionParser = fdm.RLExpressionParser1
    Transparent = False
    BeforePrint = qcalculoBeforePrint
    object RLBand5: TRLBand
      Left = 57
      Top = 38
      Width = 699
      Height = 98
      AutoSize = True
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLPanel3: TRLPanel
        Left = 0
        Top = 0
        Width = 699
        Height = 81
        Align = faTop
        object i1: TImage
          Left = 0
          Top = 0
          Width = 153
          Height = 81
          Align = alLeft
          Stretch = True
          Transparent = True
        end
        object RLPanel6: TRLPanel
          Left = 153
          Top = 0
          Width = 546
          Height = 81
          Align = faClient
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          object m1_: TRLLabel
            Left = 0
            Top = 0
            Width = 546
            Height = 16
            Align = faTop
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object gnome: TRLLabel
            Left = 0
            Top = 16
            Width = 546
            Height = 16
            Align = faTop
            Alignment = taCenter
            AutoSize = False
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold, fsUnderline]
            ParentColor = False
            ParentFont = False
          end
          object gfone: TRLLabel
            Left = 0
            Top = 32
            Width = 546
            Height = 16
            Align = faTop
            Alignment = taCenter
            AutoSize = False
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object gendereco: TRLMemo
            Left = 0
            Top = 48
            Width = 546
            Height = 14
            Align = faTop
            Alignment = taCenter
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object RLAngleLabel2: TRLAngleLabel
        Left = 0
        Top = 81
        Width = 699
        Height = 16
        Align = faTop
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'Relat'#243'rio Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 57
      Top = 136
      Width = 699
      Height = 537
      BandType = btSummary
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 160
        Top = 60
        Width = 130
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'ICM:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel21: TRLLabel
        Left = 0
        Top = 1
        Width = 202
        Height = 16
        Alignment = taCenter
        Caption = 'Faturamento Bruto No Per'#237'odo:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel22: TRLLabel
        Left = 160
        Top = 76
        Width = 130
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'PIS:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel23: TRLLabel
        Left = 0
        Top = 16
        Width = 202
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'Custo Vari'#225'vel:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel24: TRLLabel
        Left = 160
        Top = 92
        Width = 130
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'COFINS:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel25: TRLLabel
        Left = 160
        Top = 108
        Width = 130
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Contribui'#231#227'o Social:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel26: TRLLabel
        Left = 0
        Top = 35
        Width = 700
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'Encargos Sobre Venda:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel27: TRLLabel
        Left = 160
        Top = 124
        Width = 130
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'SIMPLES:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel28: TRLLabel
        Left = 160
        Top = 172
        Width = 130
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Juros:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel29: TRLLabel
        Left = 160
        Top = 156
        Width = 130
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Comiss'#227'o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel30: TRLLabel
        Left = 160
        Top = 140
        Width = 130
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Frete:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel31: TRLLabel
        Left = 160
        Top = 204
        Width = 130
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Outros 2:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel32: TRLLabel
        Left = 160
        Top = 188
        Width = 130
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Outros 1:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel33: TRLLabel
        Left = 160
        Top = 220
        Width = 130
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel34: TRLLabel
        Left = 77
        Top = 464
        Width = 206
        Height = 16
        Alignment = taCenter
        Caption = 'Ponto De Equil'#237'brio No Per'#237'odo:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel35: TRLLabel
        Left = 7
        Top = 440
        Width = 278
        Height = 16
        Alignment = taCenter
        Caption = 'Margem De Contribui'#231#227'o Ponderada(Coef):'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel41: TRLLabel
        Left = 244
        Top = 416
        Width = 40
        Height = 16
        Alignment = taCenter
        Caption = 'Total:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel42: TRLLabel
        Left = 128
        Top = 400
        Width = 156
        Height = 16
        Alignment = taCenter
        Caption = 'Sal'#225'rios Com Encargos:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel51: TRLLabel
        Left = 49
        Top = 292
        Width = 106
        Height = 16
        Alignment = taCenter
        Caption = 'Despesas Fixas:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel52: TRLLabel
        Left = 178
        Top = 384
        Width = 106
        Height = 16
        Alignment = taCenter
        Caption = 'Despesas Fixas:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel54: TRLLabel
        Left = 0
        Top = 360
        Width = 700
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'PONTO DE EQUIL'#205'BRIO (CUSTO FIXO MENSAL / MARGEM DE CONTRIBUI'#199#195'O)'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel55: TRLLabel
        Left = 10
        Top = 340
        Width = 146
        Height = 16
        Alignment = taCenter
        Caption = 'Resultado No Per'#237'odo:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel56: TRLLabel
        Left = -1
        Top = 308
        Width = 156
        Height = 16
        Alignment = taCenter
        Caption = 'Sal'#225'rios Com Encargos:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLLabel59: TRLLabel
        Left = 0
        Top = 251
        Width = 237
        Height = 16
        Caption = 'Lucro Bruto (Margem Cont. Per'#237'odo):'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLDBText1: TRLDBText
        Left = 206
        Top = 1
        Width = 135
        Height = 16
        DataField = 'TFaturamentoBrutoPer'
        DataSource = dsrelatfinal
      end
      object RLDBText3: TRLDBText
        Left = 206
        Top = 16
        Width = 494
        Height = 17
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        DataField = 'TConsumoMatPrimaPer'
        DataSource = dsrelatfinal
      end
      object RLDBText5: TRLDBText
        Left = 304
        Top = 60
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ICMPar'
        DataSource = dsparametro
      end
      object RLDBText6: TRLDBText
        Left = 304
        Top = 76
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'PISPar'
        DataSource = dsparametro
      end
      object RLDBText7: TRLDBText
        Left = 304
        Top = 92
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'COFINSPar'
        DataSource = dsparametro
      end
      object RLDBText8: TRLDBText
        Left = 304
        Top = 108
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ContribSocialPar'
        DataSource = dsparametro
      end
      object RLDBText9: TRLDBText
        Left = 304
        Top = 124
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'SIMPLESPar'
        DataSource = dsparametro
      end
      object RLDBText10: TRLDBText
        Left = 304
        Top = 156
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'ComissaoPar'
        DataSource = dsparametro
      end
      object RLDBText11: TRLDBText
        Left = 304
        Top = 172
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'JurosPar'
        DataSource = dsparametro
      end
      object RLDBText12: TRLDBText
        Left = 304
        Top = 140
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'FretePar'
        DataSource = dsparametro
      end
      object RLDBText13: TRLDBText
        Left = 304
        Top = 204
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'Outros2Par'
        DataSource = dsparametro
      end
      object RLDBText14: TRLDBText
        Left = 304
        Top = 188
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'Outros1Par'
        DataSource = dsparametro
      end
      object RLLabel36: TRLLabel
        Left = 0
        Top = 243
        Width = 700
        Height = 5
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLDBText15: TRLDBText
        Left = 392
        Top = 60
        Width = 118
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
      end
      object RLDBText16: TRLDBText
        Left = 392
        Top = 76
        Width = 118
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        BeforePrint = RLDBText16BeforePrint
      end
      object RLDBText17: TRLDBText
        Left = 392
        Top = 92
        Width = 118
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        BeforePrint = RLDBText17BeforePrint
      end
      object RLDBText18: TRLDBText
        Left = 392
        Top = 108
        Width = 118
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        BeforePrint = RLDBText18BeforePrint
      end
      object RLDBText19: TRLDBText
        Left = 392
        Top = 124
        Width = 118
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        BeforePrint = RLDBText19BeforePrint
      end
      object RLDBText20: TRLDBText
        Left = 392
        Top = 140
        Width = 118
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        BeforePrint = RLDBText20BeforePrint
      end
      object RLDBText21: TRLDBText
        Left = 392
        Top = 156
        Width = 118
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        BeforePrint = RLDBText21BeforePrint
      end
      object RLDBText22: TRLDBText
        Left = 392
        Top = 172
        Width = 118
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        BeforePrint = RLDBText22BeforePrint
      end
      object RLDBText23: TRLDBText
        Left = 392
        Top = 188
        Width = 118
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        BeforePrint = RLDBText23BeforePrint
      end
      object RLDBText24: TRLDBText
        Left = 392
        Top = 204
        Width = 118
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        BeforePrint = RLDBText24BeforePrint
      end
      object RLDBText25: TRLDBText
        Left = 392
        Top = 220
        Width = 118
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        BeforePrint = RLDBText25BeforePrint
      end
      object RLDBText27: TRLDBText
        Left = 248
        Top = 251
        Width = 77
        Height = 16
      end
      object RLDBText28: TRLDBText
        Left = 168
        Top = 292
        Width = 80
        Height = 16
        DataField = 'TotalDespFix'
        DataSource = dsparametro
      end
      object RLLabel37: TRLLabel
        Left = 0
        Top = 271
        Width = 700
        Height = 20
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'Custo Fixo:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object RLDBText26: TRLDBText
        Left = 168
        Top = 308
        Width = 74
        Height = 16
        DataField = 'TotalSalEnc'
        DataSource = dsparametro
      end
      object RLDBText29: TRLDBText
        Left = 168
        Top = 340
        Width = 77
        Height = 16
        BeforePrint = RLDBText29BeforePrint
      end
      object RLDBText30: TRLDBText
        Left = 292
        Top = 384
        Width = 80
        Height = 16
        DataField = 'TotalDespFix'
        DataSource = dsparametro
      end
      object RLDBText31: TRLDBText
        Left = 292
        Top = 400
        Width = 74
        Height = 16
        DataField = 'TotalSalEnc'
        DataSource = dsparametro
      end
      object RLDBText32: TRLDBText
        Left = 292
        Top = 416
        Width = 122
        Height = 16
        DataField = 'TotalDespFixSalEnc'
        DataSource = dsparametro
      end
      object RLDBText33: TRLDBText
        Left = 292
        Top = 464
        Width = 77
        Height = 16
        BeforePrint = RLDBText33BeforePrint
      end
      object RLDBText34: TRLDBText
        Left = 304
        Top = 220
        Width = 70
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        BeforePrint = RLDBText34BeforePrint
      end
      object RLLabel38: TRLLabel
        Left = 3
        Top = 483
        Width = 700
        Height = 5
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object MP_: TRLLabel
        Left = 292
        Top = 440
        Width = 31
        Height = 16
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object ds: TDataSource
    DataSet = tabela
    Left = 148
    Top = 260
  end
  object ActionList1: TActionList
    Left = 236
    Top = 222
    object valoradesivo: TAction
      Caption = 'valoradesivo'
      OnExecute = valoradesivoExecute
    end
    object f4: TAction
      Caption = 'f4'
      ShortCut = 115
      OnExecute = f4Execute
    end
    object filtro: TAction
      Caption = 'filtro'
      OnExecute = filtroExecute
    end
    object refazcombo: TAction
      Caption = 'refazcombo'
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
    object tgrade: TAction
      Caption = 'tgrade'
      OnExecute = tgradeExecute
    end
    object replicar: TAction
      Caption = 'replicar'
      OnExecute = replicarExecute
    end
    object gravasite: TAction
      Caption = 'gravasite'
      OnExecute = gravasiteExecute
    end
    object gentilgrava: TAction
      Caption = 'gentilgrava'
      OnExecute = gentilgravaExecute
    end
    object gentilaltera: TAction
      Caption = 'gentilaltera'
      OnExecute = gentilalteraExecute
    end
    object geraentrada: TAction
      Caption = 'geraentrada'
      OnExecute = geraentradaExecute
    end
    object contagem: TAction
      Caption = 'contagem'
      OnExecute = contagemExecute
    end
    object recpg: TAction
      Caption = 'recpg'
      OnExecute = recpgExecute
    end
    object recpgcampos: TAction
      Caption = 'recpgcampos'
      OnExecute = recpgcamposExecute
    end
    object totrecpg: TAction
      Caption = 'totrecpg'
      OnExecute = totrecpgExecute
    end
    object formataprod: TAction
      Caption = 'formataprod'
      OnExecute = formataprodExecute
    end
    object grafico: TAction
      Caption = 'grafico'
      OnExecute = graficoExecute
    end
    object mod100: TAction
      Caption = 'mod100'
      OnExecute = mod100Execute
    end
    object mod101_102: TAction
      Caption = 'mod101_102'
      OnExecute = mod101_102Execute
    end
    object mod101_: TAction
      Caption = 'mod101_'
      OnExecute = mod101_Execute
    end
    object mod0: TAction
      Caption = 'empresa'
      OnExecute = mod0Execute
    end
    object mod11: TAction
      Caption = 'mod11'
      OnExecute = mod11Execute
    end
    object mod103: TAction
      Caption = 'mod103'
      OnExecute = mod103Execute
    end
    object mod31: TAction
      Caption = 'mod31'
      OnExecute = mod31Execute
    end
    object mod32: TAction
      Caption = 'mod32'
      OnExecute = mod32Execute
    end
    object mod12: TAction
      Caption = 'mod12'
      OnExecute = mod12Execute
    end
    object mod104: TAction
      Caption = 'mod104'
      OnExecute = mod104Execute
    end
  end
  object tabela: TZQuery
    Connection = fdm.conector
    AfterScroll = tabelaAfterScroll
    SQL.Strings = (
      'select * from tbalmax')
    Params = <>
    Left = 192
    Top = 230
  end
  object menu: TPopupMenu
    Left = 296
    Top = 220
    object Deletados1: TMenuItem
      Caption = 'Deletados'
      OnClick = Deletados1Click
    end
    object EMail1: TMenuItem
      Caption = 'Enviar E-Mail'
      OnClick = EMail1Click
    end
    object Atualizarcentral1: TMenuItem
      Caption = 'Atualizar clientes central'
      OnClick = Atualizarcentral1Click
    end
    object Atualizarfiliais1: TMenuItem
      Caption = 'Atualizar filiais'
      OnClick = Atualizarfiliais1Click
    end
    object EstoquedasFiliais1: TMenuItem
      Caption = 'Estoque das Filiais'
      OnClick = EstoquedasFiliais1Click
    end
    object Vida1: TMenuItem
      Caption = 'Vida'
      OnClick = Vida1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Oqueoclienteconsome1: TMenuItem
      Caption = 'O que o cliente consome'
      OnClick = Oqueoclienteconsome1Click
    end
    object CadastrodeAnimais1: TMenuItem
      Caption = 'Cadastro de animais'
      OnClick = CadastrodeAnimais1Click
    end
    object Cadastrodeequipamentos1: TMenuItem
      Caption = 'Cadastro de equipamentos'
      OnClick = Cadastrodeequipamentos1Click
    end
    object ipoCliente1: TMenuItem
      Caption = 'Tipo Cliente'
      OnClick = ipoCliente1Click
    end
    object StatusCliente1: TMenuItem
      Caption = 'Status Cliente'
      OnClick = StatusCliente1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Divisao1: TMenuItem
      Caption = 'Cadastro de Divisao'
      OnClick = Divisao1Click
    end
    object CadastrodeAssunto1: TMenuItem
      Caption = 'Cadastro de Assunto'
      OnClick = CadastrodeAssunto1Click
    end
    object CadastrarGrupo1: TMenuItem
      Caption = 'Cadastrar Grupo'
      OnClick = CadastrarGrupo1Click
    end
    object CadastrodeFunes1: TMenuItem
      Caption = 'Cadastro de Fun'#231#245'es'
      OnClick = CadastrodeFunes1Click
    end
    object FormasPgto1: TMenuItem
      Caption = 'Formas Pgto'
      OnClick = FormasPgto1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Montagemdoproduto1: TMenuItem
      Caption = 'Montagem do produto'
    end
    object AlterarValores1: TMenuItem
      Caption = 'Alterar Valores'
      OnClick = AlterarValores1Click
    end
    object Promoodoproduto1: TMenuItem
      Caption = 'Colocar/tirar da promo'#231#227'o'
      OnClick = Promoodoproduto1Click
    end
    object Substituirstrings1: TMenuItem
      Caption = 'Substituir descri'#231#227'o'
      OnClick = Substituirstrings1Click
    end
    object Imprimirgradepreos1: TMenuItem
      Caption = 'Imprimir grade pre'#231'os'
      OnClick = Imprimirgradepreos1Click
    end
    object N9: TMenuItem
      Caption = '-'
    end
    object RelatriodeAcertodeEstoquesadas1: TMenuItem
      Caption = 'Relat'#243'rio de Acerto de Estoque'
      OnClick = RelatriodeAcertodeEstoquesadas1Click
    end
    object Listadepreos1: TMenuItem
      Caption = 'Lista de pre'#231'os'
      OnClick = Listadepreos1Click
    end
    object ContagedeEstoque1: TMenuItem
      Caption = 'Contagem de Estoque'
      OnClick = ContagedeEstoque1Click
    end
    object Curvaabc1: TMenuItem
      Caption = 'Processar Curva ABC'
      OnClick = Curvaabc1Click
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object Cadastrarunidademedida1: TMenuItem
      Caption = 'Cadastrar unidade medida'
      OnClick = Cadastrarunidademedida1Click
    end
    object LetradeDesconto1: TMenuItem
      Caption = 'Cadastrar letra de desconto'
      OnClick = LetradeDesconto1Click
    end
    object ICMS1: TMenuItem
      Caption = 'Cadastrar ICMS'
      OnClick = ICMS1Click
    end
    object CadastrarSubGrupo1: TMenuItem
      Caption = 'Cadastrar grupos'
      OnClick = CadastrarSubGrupo1Click
    end
    object NatOperao1: TMenuItem
      Caption = 'Nat. Opera'#231#227'o'
      OnClick = NatOperao1Click
    end
    object Cadastrarfabricante1: TMenuItem
      Caption = 'Cadastrar fabricante'
      OnClick = Cadastrarfabricante1Click
    end
    object Cadastrarmarca1: TMenuItem
      Caption = 'Cadastrar marca'
      OnClick = Cadastrarmarca1Click
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Consumidores1: TMenuItem
      Caption = 'Consumidores'
      OnClick = Consumidores1Click
    end
    object Fornecedores1: TMenuItem
      Caption = 'Fornecedores do produto'
      OnClick = Fornecedores1Click
    end
    object ltimasCompras1: TMenuItem
      Caption = #218'ltimas Compras'
      OnClick = ltimasCompras1Click
    end
    object Movimentodoproduto1: TMenuItem
      Caption = 'Movimento do produto'
      OnClick = Movimentodoproduto1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object IncluirAlterarCEP1: TMenuItem
      Caption = 'Incluir/Alterar CEP'
      OnClick = IncluirAlterarCEP1Click
    end
    object municipioibge: TMenuItem
      Caption = 'Incluir/Alterar Cidade IBGE'
      OnClick = municipioibgeClick
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object mrctipoconta: TMenuItem
      Caption = 'Plano de contas'
      OnClick = mrctipocontaClick
    end
    object mrcposicaoconta: TMenuItem
      Caption = 'Posi'#231#227'o da conta'
      OnClick = mrcposicaocontaClick
    end
    object Itensdacompra1: TMenuItem
      Caption = 'Itens da compra'
      OnClick = Itensdacompra1Click
    end
    object Mostraracerto1: TMenuItem
      Caption = 'Mostrar acerto'
      OnClick = Mostraracerto1Click
    end
    object Passarocheque1: TMenuItem
      Caption = 'Passar o cheque'
      OnClick = Passarocheque1Click
    end
    object Voltarochequeparanopassado1: TMenuItem
      Caption = 'Voltar o cheque para n'#227'o passado'
      OnClick = Voltarochequeparanopassado1Click
    end
    object Configurarcomisso1: TMenuItem
      Caption = 'Configurar comiss'#227'o'
      OnClick = Configurarcomisso1Click
    end
    object Dependentes1: TMenuItem
      Caption = 'Dependentes'
      OnClick = Dependentes1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object mcedente: TMenuItem
      Caption = 'Cadastro de cedentes'
      OnClick = mcedenteClick
    end
    object Gerararquivoderemessa1: TMenuItem
      Caption = 'Gerar arquivo de remessa'
      OnClick = Gerararquivoderemessa1Click
    end
    object arquivoderetorno1: TMenuItem
      Caption = 'Arquivo de retorno (baixar boleto) '
      OnClick = arquivoderetorno1Click
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object Lancarascontas1: TMenuItem
      Caption = 'Lan'#231'ar as contas'
      OnClick = Lancarascontas1Click
    end
    object Relatrioderetornos1: TMenuItem
      Caption = 'Retorno de clientes'
      OnClick = Relatrioderetornos1Click
    end
    object Importardados1: TMenuItem
      Caption = 'Importar dados'
      OnClick = Importardados1Click
    end
    object Veculosmensal1: TMenuItem
      Caption = 'Ve'#237'culos autorizados'
      OnClick = Veculosmensal1Click
    end
    object Contrato1: TMenuItem
      Caption = 'Imprime Contrato'
      OnClick = Contrato1Click
    end
    object Alteraracontadedestino1: TMenuItem
      Caption = 'Alterar a conta de destino'
      OnClick = Alteraracontadedestino1Click
    end
    object Cdigoadicional1: TMenuItem
      Caption = 'C'#243'digo adicional'
      OnClick = Cdigoadicional1Click
    end
    object Documentos1: TMenuItem
      Caption = 'Documentos'
      OnClick = Documentos1Click
    end
    object Cadastrarconvnio1: TMenuItem
      Caption = 'Cadastrar conv'#234'nio'
      OnClick = Cadastrarconvnio1Click
    end
    object contagem1: TMenuItem
      Action = contagem
    end
    object Clienteadicional1: TMenuItem
      Caption = 'Cliente adicional'
      OnClick = Clienteadicional1Click
    end
    object Baixartudo1: TMenuItem
      Caption = 'Baixar tudo'
      Visible = False
      OnClick = Baixartudo1Click
    end
  end
  object opendialog: TOpenPictureDialog
    Filter = 'JPG|*.JPG'
    InitialDir = 'C:\'
    Left = 344
    Top = 216
  end
  object tbgrafico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provedor'
    Left = 592
    Top = 240
  end
  object provedor: TDataSetProvider
    DataSet = tabela
    Left = 403
    Top = 217
  end
  object ssemelhante: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      
        'select codigo,descricao,vrvenda,vratacado,valor3 from tbproduto ' +
        'limit 1,1')
    Params = <>
    Left = 464
    Top = 232
  end
  object dssemelhante: TDataSource
    DataSet = ssemelhante
    Left = 540
    Top = 236
  end
  object RLSaveDialogSetup1: TRLSaveDialogSetup
    SaveInBackground = False
    Filter = RLPDFFilter1
    Left = 16
    Top = 256
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 80
    Top = 248
  end
  object dsparametro: TDataSource
    Left = 60
    Top = 300
  end
  object dsrelatfinal: TDataSource
    Left = 138
    Top = 301
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
    Left = 280
    Top = 544
  end
  object dsqtd: TDataSource
    DataSet = tbqtd
    Left = 244
    Top = 540
  end
  object tbcor: TZQuery
    Connection = fdm.conector
    SortedFields = 'qtd'
    AfterScroll = tbcorAfterScroll
    SQL.Strings = (
      'select * from tbprodcor')
    Params = <>
    MasterFields = 'chave'
    MasterSource = ds
    LinkedFields = 'link'
    IndexFieldNames = 'qtd Asc'
    Left = 528
    Top = 528
  end
  object dscor: TDataSource
    DataSet = tbcor
    Left = 484
    Top = 532
  end
  object dsprodgrade: TDataSource
    DataSet = tbprodgrade
    Left = 252
    Top = 364
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
    Left = 312
    Top = 364
  end
end
