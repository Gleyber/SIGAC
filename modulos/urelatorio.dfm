object frelatorio: Tfrelatorio
  Left = 59
  Top = 157
  Width = 798
  Height = 568
  Caption = 'RELATORIOS'
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 109
    Align = alTop
    Alignment = taLeftJustify
    BevelInner = bvSpace
    BevelOuter = bvLowered
    Color = 14869218
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label17: TLabel
      Left = 4
      Top = 0
      Width = 94
      Height = 14
      Caption = 'De:                       A'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btnimprimir: TSpeedButton
      Left = 348
      Top = 13
      Width = 56
      Height = 52
      Cursor = crHandPoint
      HelpType = htKeyword
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
    object btnfiltro: TSpeedButton
      Left = 502
      Top = 13
      Width = 56
      Height = 52
      Cursor = crHandPoint
      HelpType = htKeyword
      Caption = '&Filtrar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnfiltroClick
    end
    object btntodo: TSpeedButton
      Left = 200
      Top = 13
      Width = 56
      Height = 52
      Cursor = crHandPoint
      HelpType = htKeyword
      Caption = '&Todos'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btntodoClick
    end
    object lqtd: TLabel
      Left = 8
      Top = 68
      Width = 164
      Height = 13
      AutoSize = False
      Caption = '0 registros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btngrafico: TSpeedButton
      Left = 274
      Top = 13
      Width = 56
      Height = 52
      Cursor = crHandPoint
      Caption = '&Gr'#225'fico'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btngraficoClick
    end
    object btnok: TSpeedButton
      Left = 3
      Top = 51
      Width = 171
      Height = 15
      Cursor = crHandPoint
      Caption = 'Clique ou tecle F9'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 14286847
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = btnokClick
    end
    object btnmenu: TSpeedButton
      Left = 420
      Top = 13
      Width = 63
      Height = 52
      Cursor = crHandPoint
      HelpType = htKeyword
      Caption = '&Menus'
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
    object llocalizar: TLabel
      Left = 0
      Top = 92
      Width = 244
      Height = 14
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
    object ldata: TLabel
      Left = 4
      Top = 36
      Width = 77
      Height = 14
      Caption = 'Escolha a data'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object elocalizar: TEdit
      Left = 248
      Top = 93
      Width = 545
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
    object md1: TDateTimePicker
      Left = 3
      Top = 13
      Width = 86
      Height = 22
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BiDiMode = bdRightToLeft
      Date = 39503.720719039400000000
      Time = 39503.720719039400000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
    end
    object md2: TDateTimePicker
      Left = 89
      Top = 13
      Width = 86
      Height = 22
      BevelOuter = bvRaised
      BevelKind = bkFlat
      BiDiMode = bdRightToLeft
      Date = 39503.720719039400000000
      Time = 39503.720719039400000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
    end
    object rvisualiza: TCheckBox
      Left = 389
      Top = 37
      Width = 12
      Height = 13
      Hint = 'Escolher os campos'
      Alignment = taLeftJustify
      Color = 14342874
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
    end
    object cdata: TComboBox
      Left = 89
      Top = 33
      Width = 86
      Height = 18
      Cursor = crHandPoint
      BevelInner = bvLowered
      BevelKind = bkFlat
      Style = csOwnerDrawVariable
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 12
      ParentFont = False
      TabOrder = 4
      OnClick = cdataClick
    end
  end
  object grade: TDBGrid
    Left = 0
    Top = 127
    Width = 790
    Height = 351
    Hint = 'Clique no cabe'#231'alho de uma coluna para ordenar'
    Align = alClient
    Color = 16382712
    DataSource = ds
    FixedColor = 15395562
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
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnCellClick = gradeCellClick
    OnDblClick = gradeDblClick
    OnTitleClick = gradeTitleClick
  end
  object smov: TStaticText
    Left = 0
    Top = 109
    Width = 790
    Height = 18
    Align = alTop
    Caption = 
      '                          Estoque ini                        |  ' +
      'Entrada                           | Devolu'#231#227'o For               ' +
      ' | Vendas                            | Devolu'#231#227'o Cli            ' +
      '      | Estoque'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    Visible = False
  end
  object prodape1: TPanel
    Left = 0
    Top = 478
    Width = 790
    Height = 15
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = 15006716
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
    object t8: TStaticText
      Left = 85
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object t7: TStaticText
      Left = 170
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object t6: TStaticText
      Left = 255
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object t5: TStaticText
      Left = 340
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object t4: TStaticText
      Left = 425
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object t3: TStaticText
      Left = 510
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object t2: TStaticText
      Left = 595
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
    end
    object t1: TStaticText
      Left = 680
      Top = 0
      Width = 110
      Height = 15
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = 15006716
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
    object t9: TStaticText
      Left = 0
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 8
    end
  end
  object prodape3: TPanel
    Left = 0
    Top = 511
    Width = 790
    Height = 15
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Visible = False
    object t17: TStaticText
      Left = 85
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object t16: TStaticText
      Left = 170
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object t15: TStaticText
      Left = 255
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object t14: TStaticText
      Left = 340
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object t13: TStaticText
      Left = 425
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object t12: TStaticText
      Left = 510
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object t18: TStaticText
      Left = 0
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
    end
    object t10: TStaticText
      Left = 680
      Top = 0
      Width = 110
      Height = 15
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
    object t11: TStaticText
      Left = 595
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 5395026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 8
    end
  end
  object prodape4: TPanel
    Left = 0
    Top = 526
    Width = 790
    Height = 15
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Visible = False
    object tt17: TStaticText
      Left = 85
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 16252413
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object tt16: TStaticText
      Left = 170
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 16252413
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object tt15: TStaticText
      Left = 255
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 16252413
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object tt14: TStaticText
      Left = 340
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 16252413
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object tt13: TStaticText
      Left = 425
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 16252413
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object tt12: TStaticText
      Left = 510
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 16252413
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object tt18: TStaticText
      Left = 0
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 16252413
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
    end
    object tt10: TStaticText
      Left = 680
      Top = 0
      Width = 110
      Height = 15
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 16252413
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
    object tt11: TStaticText
      Left = 595
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 16252413
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 8
    end
  end
  object prodape2: TPanel
    Left = 0
    Top = 493
    Width = 790
    Height = 15
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Visible = False
    object tt8: TStaticText
      Left = 85
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 16252413
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object tt7: TStaticText
      Left = 170
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 16252413
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object tt6: TStaticText
      Left = 255
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 16252413
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object tt5: TStaticText
      Left = 340
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 16252413
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object tt4: TStaticText
      Left = 425
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 16252413
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object tt3: TStaticText
      Left = 510
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 16252413
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object tt2: TStaticText
      Left = 595
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 16252413
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
    end
    object tt1: TStaticText
      Left = 680
      Top = 0
      Width = 110
      Height = 15
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 15006716
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
    object tt9: TStaticText
      Left = 0
      Top = 0
      Width = 85
      Height = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvLowered
      BevelKind = bkSoft
      BevelOuter = bvNone
      Color = 2368548
      Font.Charset = ANSI_CHARSET
      Font.Color = 16252413
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 8
    end
  end
  object psepara: TStaticText
    Left = 0
    Top = 508
    Width = 790
    Height = 3
    Align = alBottom
    AutoSize = False
    BevelInner = bvLowered
    BevelKind = bkSoft
    BevelOuter = bvNone
    BiDiMode = bdRightToLeftNoAlign
    Color = clWhite
    ParentBiDiMode = False
    ParentColor = False
    TabOrder = 7
    Visible = False
  end
  object provedor: TDataSetProvider
    DataSet = sq
    Left = 251
    Top = 233
  end
  object ds: TDataSource
    DataSet = tabela
    Left = 132
    Top = 233
  end
  object tabela1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provedor'
    Left = 304
    Top = 232
  end
  object sq: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'select * from tbfinanceiro')
    Params = <>
    Left = 96
    Top = 136
  end
  object tbi: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'i'
    Params = <>
    Left = 168
    Top = 232
    object tbichave: TIntegerField
      FieldName = 'chave'
    end
    object tbii: TIntegerField
      FieldName = 'i'
    end
    object tbidescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object tbicodigo: TIntegerField
      FieldName = 'codigo'
    end
    object tbinbanco: TStringField
      FieldName = 'nbanco'
      Size = 10
    end
    object tbivalor: TFloatField
      FieldName = 'valor'
    end
  end
  object dstb: TDataSource
    DataSet = tbi
    Left = 208
    Top = 232
  end
  object menu: TPopupMenu
    Left = 352
    Top = 236
    object Usurio1: TMenuItem
      Caption = 'Nome Usu'#225'rio'
      Visible = False
      OnClick = Usurio1Click
    end
    object MostrarVendedor1: TMenuItem
      Caption = 'Mostrar Vendedor'
      Visible = False
      OnClick = MostrarVendedor1Click
    end
    object MostrarFornecedor1: TMenuItem
      Caption = 'Mostrar Fornecedor/Grupos'
      Visible = False
      OnClick = MostrarFornecedor1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Baixar1: TMenuItem
      Caption = 'Baixar'
      Visible = False
      OnClick = Baixar1Click
    end
    object Preenchecliente1: TMenuItem
      Caption = 'Mostrar nome do cliente'
      Visible = False
      OnClick = Preenchecliente1Click
    end
    object NoRecebido1: TMenuItem
      Caption = 'N'#227'o Recebido'
      Visible = False
      OnClick = NoRecebido1Click
    end
    object Filtrar01: TMenuItem
      Caption = 'Filtrar > 0'
      Visible = False
      OnClick = Filtrar01Click
    end
    object Servios1: TMenuItem
      Caption = 'Servi'#231'os'
      Visible = False
      OnClick = Servios1Click
    end
    object Pagar1: TMenuItem
      Caption = 'Pagar'
      Visible = False
      OnClick = Pagar1Click
    end
    object AbriraEntrada1: TMenuItem
      Caption = 'Abrir (Ent/Dev)'
      Visible = False
      OnClick = AbriraEntrada1Click
    end
    object AbrirVenda1: TMenuItem
      Caption = 'Abrir'
      Visible = False
      OnClick = AbrirVenda1Click
    end
    object Itensdaentrada1: TMenuItem
      Caption = 'Exibir os itens'
      Visible = False
      OnClick = Itensdaentrada1Click
    end
    object Margemdavenda1: TMenuItem
      Caption = 'Margem da venda'
      OnClick = Margemdavenda1Click
    end
    object Replicaravenda1: TMenuItem
      Caption = 'Criar nova venda a partir desta (replicar)'
      Visible = False
      OnClick = Replicaravenda1Click
    end
    object Excluiravenda1: TMenuItem
      Caption = 'Cancelar a venda'
      Visible = False
      OnClick = Excluiravenda1Click
    end
    object GerarNotaFiscal1: TMenuItem
      Caption = 'Gerar Nota Fiscal'
      Visible = False
      OnClick = GerarNotaFiscal1Click
    end
    object Alterarondanota1: TMenuItem
      Caption = 'Alterar o n'#186' da nota'
      Visible = False
      OnClick = Alterarondanota1Click
    end
    object Abriranota1: TMenuItem
      Caption = 'Abrir a nota'
      Visible = False
      OnClick = Abriranota1Click
    end
    object Exibiromovimento1: TMenuItem
      Caption = 'Exibir o movimento'
    end
    object Inseriritensselecionados1: TMenuItem
      Caption = 'Inserir itens selecionados'
      Visible = False
      OnClick = Inseriritensselecionados1Click
    end
    object linsumo: TMenuItem
      Caption = 'Insumos/NF'
      Visible = False
      OnClick = linsumoClick
    end
    object Inserirchequesselecionados1: TMenuItem
      Caption = 'Inserir cheques selecionados'
      Visible = False
      OnClick = Inserirchequesselecionados1Click
    end
    object Mostrarvendedor2: TMenuItem
      Caption = 'Mostrar outros dados'
      Visible = False
      OnClick = Mostrarvendedor2Click
    end
    object ContasGeradas1: TMenuItem
      Caption = 'Contas Geradas (acerto)'
      Visible = False
      OnClick = ContasGeradas1Click
    end
    object mvdcli: TMenuItem
      Caption = 'Mostrar vendedor e cliente'
      Visible = False
      OnClick = mvdcliClick
    end
    object Fecharocaixa1: TMenuItem
      Caption = 'Fechar o caixa'
      Visible = False
      OnClick = Fecharocaixa1Click
    end
  end
  object tabela: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'p'
    AfterScroll = tabelaAfterScroll
    Left = 160
    Top = 136
  end
  object p: TDataSetProvider
    DataSet = sq
    Left = 240
    Top = 144
  end
end
