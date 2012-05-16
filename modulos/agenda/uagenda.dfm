object fagenda: Tfagenda
  Left = 41
  Top = 99
  Width = 808
  Height = 561
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Compromissos Agendados'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 67
    Height = 489
    Align = alLeft
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 26
      Width = 5
      Height = 462
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 65
      Height = 25
      Align = alTop
      BevelInner = bvLowered
      BorderStyle = bsSingle
      TabOrder = 0
      object SpinEdit1: TSpinEdit
        Left = 1
        Top = -1
        Width = 64
        Height = 26
        Cursor = crHandPoint
        Color = 6312266
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxValue = 0
        MinValue = 0
        ParentFont = False
        TabOrder = 0
        Value = 2006
        OnChange = SpinEdit1Change
      end
    end
    object PageControl1: TPageControl
      Left = 6
      Top = 26
      Width = 25
      Height = 462
      Cursor = crHandPoint
      ActivePage = TabSheet1
      Align = alLeft
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      MultiLine = True
      ParentFont = False
      TabOrder = 1
      TabPosition = tpLeft
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'JAN'
      end
      object TabSheet2: TTabSheet
        Caption = 'FEV'
        ImageIndex = 1
      end
      object TabSheet3: TTabSheet
        Caption = 'MAR'
        ImageIndex = 2
      end
      object TabSheet4: TTabSheet
        Caption = 'ABR'
        ImageIndex = 3
      end
      object TabSheet5: TTabSheet
        Caption = 'MAI'
        ImageIndex = 4
      end
      object TabSheet6: TTabSheet
        Caption = 'JUN'
        ImageIndex = 5
      end
      object TabSheet7: TTabSheet
        Caption = 'JUL'
        ImageIndex = 6
      end
      object TabSheet8: TTabSheet
        Caption = 'AGO'
        ImageIndex = 7
      end
      object TabSheet9: TTabSheet
        Caption = 'SET'
        ImageIndex = 8
      end
      object TabSheet10: TTabSheet
        Caption = 'OUT'
        ImageIndex = 9
      end
      object TabSheet11: TTabSheet
        Caption = 'NOV'
        ImageIndex = 10
      end
      object TabSheet12: TTabSheet
        Caption = 'DEZ'
        ImageIndex = 11
      end
    end
    object rdia: TGroupBox
      Left = 31
      Top = 26
      Width = 39
      Height = 462
      Align = alLeft
      Caption = 'Dia'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object RadioButton3: TRadioButton
        Left = 2
        Top = 56
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '3'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        OnClick = RadioButton32Click
      end
      object RadioButton2: TRadioButton
        Left = 2
        Top = 43
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '2'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        OnClick = RadioButton32Click
      end
      object RadioButton1: TRadioButton
        Left = 2
        Top = 30
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '1'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        OnClick = RadioButton32Click
      end
      object RadioButton32: TRadioButton
        Left = 2
        Top = 17
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = 'T'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        OnClick = RadioButton32Click
      end
      object RadioButton31: TRadioButton
        Left = 2
        Top = 430
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '31'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 31
        OnClick = RadioButton32Click
      end
      object RadioButton30: TRadioButton
        Left = 2
        Top = 416
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '30'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 30
        OnClick = RadioButton32Click
      end
      object RadioButton29: TRadioButton
        Left = 2
        Top = 403
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '29'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 29
        OnClick = RadioButton32Click
      end
      object RadioButton28: TRadioButton
        Left = 2
        Top = 390
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '28'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 28
        OnClick = RadioButton32Click
      end
      object RadioButton27: TRadioButton
        Left = 2
        Top = 376
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '27'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 27
        OnClick = RadioButton32Click
      end
      object RadioButton26: TRadioButton
        Left = 2
        Top = 363
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '26'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 26
        OnClick = RadioButton32Click
      end
      object RadioButton25: TRadioButton
        Left = 2
        Top = 350
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '25'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 25
        OnClick = RadioButton32Click
      end
      object RadioButton24: TRadioButton
        Left = 2
        Top = 336
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '24'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 24
        OnClick = RadioButton32Click
      end
      object RadioButton23: TRadioButton
        Left = 2
        Top = 323
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '23'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 23
        OnClick = RadioButton32Click
      end
      object RadioButton22: TRadioButton
        Left = 2
        Top = 310
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '22'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 22
        OnClick = RadioButton32Click
      end
      object RadioButton21: TRadioButton
        Left = 2
        Top = 296
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '21'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 21
        OnClick = RadioButton32Click
      end
      object RadioButton20: TRadioButton
        Left = 2
        Top = 283
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '20'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 20
        OnClick = RadioButton32Click
      end
      object RadioButton19: TRadioButton
        Left = 2
        Top = 270
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '19'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 19
        OnClick = RadioButton32Click
      end
      object RadioButton18: TRadioButton
        Left = 2
        Top = 256
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '18'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 18
        OnClick = RadioButton32Click
      end
      object RadioButton17: TRadioButton
        Left = 2
        Top = 243
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '17'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 17
        OnClick = RadioButton32Click
      end
      object RadioButton16: TRadioButton
        Left = 2
        Top = 230
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '16'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 16
        OnClick = RadioButton32Click
      end
      object RadioButton15: TRadioButton
        Left = 2
        Top = 216
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '15'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 15
        OnClick = RadioButton32Click
      end
      object RadioButton14: TRadioButton
        Left = 2
        Top = 203
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '14'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 14
        OnClick = RadioButton32Click
      end
      object RadioButton13: TRadioButton
        Left = 2
        Top = 190
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '13'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 13
        OnClick = RadioButton32Click
      end
      object RadioButton12: TRadioButton
        Left = 2
        Top = 176
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '12'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 12
        OnClick = RadioButton32Click
      end
      object RadioButton11: TRadioButton
        Left = 2
        Top = 163
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '11'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 11
        OnClick = RadioButton32Click
      end
      object RadioButton10: TRadioButton
        Left = 2
        Top = 150
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '10'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 10
        OnClick = RadioButton32Click
      end
      object RadioButton9: TRadioButton
        Left = 2
        Top = 136
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '9'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 9
        OnClick = RadioButton32Click
      end
      object RadioButton8: TRadioButton
        Left = 2
        Top = 123
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '8'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 8
        OnClick = RadioButton32Click
      end
      object RadioButton7: TRadioButton
        Left = 2
        Top = 110
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '7'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 7
        OnClick = RadioButton32Click
      end
      object RadioButton6: TRadioButton
        Left = 2
        Top = 96
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '6'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 6
        OnClick = RadioButton32Click
      end
      object RadioButton5: TRadioButton
        Left = 2
        Top = 83
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '5'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 5
        OnClick = RadioButton32Click
      end
      object RadioButton4: TRadioButton
        Left = 2
        Top = 70
        Width = 38
        Height = 13
        Cursor = crHandPoint
        Caption = '4'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        OnClick = RadioButton32Click
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 489
    Width = 800
    Height = 45
    Align = alBottom
    BevelInner = bvLowered
    Color = 15790836
    TabOrder = 1
    object Label2: TLabel
      Left = 294
      Top = 15
      Width = 32
      Height = 14
      Hint = 'Clique para enviar E-Mail'
      Caption = 'E-Mail'
      DragCursor = crArrow
      Font.Charset = ANSI_CHARSET
      Font.Color = 5329233
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 524
      Top = 15
      Width = 27
      Height = 14
      Caption = 'Fone'
      Font.Charset = ANSI_CHARSET
      Font.Color = 5329233
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lemail: TDBText
      Left = 294
      Top = 28
      Width = 227
      Height = 16
      Cursor = crHandPoint
      Hint = 'Clique para enviar E-Mail'
      DataField = 'email'
      DataSource = ds
      DragCursor = crHandPoint
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      ParentShowHint = False
      Transparent = True
      ShowHint = True
      OnClick = lemailClick
    end
    object DBText2: TDBText
      Left = 524
      Top = 28
      Width = 173
      Height = 16
      DataField = 'foneemail'
      DataSource = ds
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lmes: TLabel
      Left = 5
      Top = 28
      Width = 278
      Height = 16
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lcompromisso: TLabel
      Left = 5
      Top = 15
      Width = 278
      Height = 16
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = 5329233
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText1: TDBText
      Left = 708
      Top = 28
      Width = 317
      Height = 16
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
    object Label1: TLabel
      Left = 708
      Top = 15
      Width = 22
      Height = 14
      Caption = 'Obs'
      Font.Charset = ANSI_CHARSET
      Font.Color = 5329233
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Bevel1: TBevel
      Left = 0
      Top = 28
      Width = 2000
      Height = 6
      Shape = bsTopLine
    end
  end
  object Panel1: TPanel
    Left = 67
    Top = 0
    Width = 733
    Height = 489
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 2
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 733
      Height = 91
      Align = alTop
      BevelInner = bvLowered
      Color = 15790836
      TabOrder = 0
      object btnnovo: TSpeedButton
        Left = 3
        Top = 14
        Width = 84
        Height = 49
        Cursor = crHandPoint
        Hint = 'Abre um novo registro (Insert).'
        Caption = '&Agendar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = btnnovoClick
      end
      object btneditar: TSpeedButton
        Left = 87
        Top = 14
        Width = 84
        Height = 49
        Cursor = crHandPoint
        Hint = 'Apaga o registro selecionado (ALT+A).'
        HelpType = htKeyword
        Caption = 'A&lterar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = btneditarClick
      end
      object btnimprimir: TSpeedButton
        Left = 255
        Top = 14
        Width = 84
        Height = 49
        Cursor = crHandPoint
        Hint = 'Atualiza os registros no rede.'
        HelpType = htKeyword
        Caption = '&Imprimir...'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = btnimprimirClick
      end
      object btnapagar: TSpeedButton
        Left = 171
        Top = 14
        Width = 84
        Height = 49
        Cursor = crHandPoint
        Hint = 'Apaga o registro selecionado (ALT+A).'
        HelpType = htKeyword
        Caption = 'A&pagar'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        NumGlyphs = 2
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        OnClick = btnapagarClick
      end
      object btnanotacoes: TSpeedButton
        Left = 340
        Top = 12
        Width = 84
        Height = 52
        Cursor = crHandPoint
        HelpType = htKeyword
        Caption = 'Ag. Fone'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnanotacoesClick
      end
      object btnlocalizar: TSpeedButton
        Left = 425
        Top = 12
        Width = 84
        Height = 52
        Caption = 'Localizar...'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Layout = blGlyphTop
        ParentFont = False
        OnClick = btnlocalizarClick
      end
      object rvisualiza: TCheckBox
        Left = 323
        Top = 29
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
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 490
      Top = 91
      Width = 243
      Height = 398
      Align = alRight
      Color = 15461355
      TabOrder = 1
      object Calendar: TMonthCalendar
        Left = 1
        Top = 1
        Width = 241
        Height = 145
        Align = alTop
        AutoSize = True
        CalColors.TitleBackColor = clDefault
        Date = 38260.835052291670000000
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        ShowToday = False
        ShowTodayCircle = False
        TabOrder = 0
        WeekNumbers = True
      end
      object StaticText1: TStaticText
        Left = 1
        Top = 154
        Width = 241
        Height = 19
        Cursor = crHandPoint
        Align = alTop
        Alignment = taCenter
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvRaised
        BorderStyle = sbsSingle
        Caption = 'Feriados'
        Color = 9073514
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object lnomeferiado: TStaticText
        Left = 1
        Top = 150
        Width = 241
        Height = 4
        Align = alTop
        Alignment = taCenter
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvRaised
        BorderStyle = sbsSingle
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object lsemana: TStaticText
        Left = 1
        Top = 146
        Width = 241
        Height = 4
        Align = alTop
        Alignment = taCenter
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvRaised
        BorderStyle = sbsSingle
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
      end
      object DBGrid2: TDBGrid
        Left = 1
        Top = 173
        Width = 241
        Height = 224
        Cursor = crHandPoint
        Align = alClient
        Color = 15461355
        DataSource = dsdc
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid2DrawColumnCell
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Color = 16382712
            Expanded = False
            FieldName = 'data'
            Title.Caption = 'Data'
            Title.Color = 9073514
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = 15138815
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 36
            Visible = True
          end
          item
            Color = 16382712
            Expanded = False
            FieldName = 'nome'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Nome'
            Title.Color = 9073514
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 15138815
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 182
            Visible = True
          end>
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 91
      Width = 490
      Height = 398
      Align = alClient
      BevelInner = bvLowered
      TabOrder = 2
      object DBGrid1: TDBGrid
        Left = 2
        Top = 2
        Width = 486
        Height = 394
        Cursor = crHandPoint
        Align = alClient
        Color = 15461355
        Ctl3D = False
        DataSource = ds
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = DBGrid1TitleClick
        Columns = <
          item
            Color = 16382712
            Expanded = False
            FieldName = 'data'
            Title.Caption = 'Data'
            Title.Color = 9073514
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 15138815
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Color = 16382712
            Expanded = False
            FieldName = 'hora'
            Title.Caption = 'Hora'
            Title.Color = 9073514
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 15138815
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 35
            Visible = True
          end
          item
            Color = 16382712
            Expanded = False
            FieldName = 'nome'
            Title.Caption = 'Nome'
            Title.Color = 9073514
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 15138815
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 148
            Visible = True
          end
          item
            Color = 16382712
            Expanded = False
            FieldName = 'status'
            Title.Caption = 'Status'
            Title.Color = 9073514
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 15138815
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 83
            Visible = True
          end
          item
            Color = 16382712
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Assunto'
            Title.Color = 9073514
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 15138815
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Color = 16382712
            Expanded = False
            FieldName = 'email'
            Title.Caption = 'E-Mail'
            Title.Color = 9073514
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 15138815
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 123
            Visible = True
          end
          item
            Color = 16382712
            Expanded = False
            FieldName = 'foneemail'
            Title.Caption = 'Fone'
            Title.Color = 9073514
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 15138815
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 87
            Visible = True
          end
          item
            Color = 16382712
            Expanded = False
            FieldName = 'endereco'
            Title.Caption = 'Endere'#231'o'
            Title.Color = 9073514
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 15138815
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 300
            Visible = True
          end
          item
            Color = 16382712
            Expanded = False
            FieldName = 'obs'
            Title.Caption = 'Obs'
            Title.Color = 9073514
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 15138815
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 300
            Visible = True
          end>
      end
    end
  end
  object tabela: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'data'
    Params = <>
    AfterScroll = tabelaAfterScroll
    Left = 356
    Top = 168
    object tabeladiasemana: TStringField
      FieldName = 'diasemana'
      Size = 9
    end
    object tabeladata: TDateField
      FieldName = 'data'
    end
    object tabelahora: TTimeField
      FieldName = 'hora'
    end
    object tabelanome: TStringField
      FieldName = 'nome'
      Size = 40
    end
    object tabelafoneemail: TStringField
      FieldName = 'foneemail'
      Size = 40
    end
    object tabelaendereco: TStringField
      FieldName = 'endereco'
      Size = 255
    end
    object tabeladescricao: TStringField
      FieldName = 'descricao'
      Size = 100
    end
    object tabelaobs: TStringField
      FieldName = 'obs'
      Size = 100
    end
    object tabelaemail: TStringField
      FieldName = 'email'
      Size = 30
    end
    object tabelausuario: TIntegerField
      FieldName = 'usuario'
    end
    object tabelatipo: TStringField
      FieldName = 'tipo'
      Size = 10
    end
    object tabelafim: TDateField
      FieldName = 'fim'
    end
    object tabelames: TStringField
      FieldName = 'mes'
      Size = 9
    end
    object tabelatodomes: TIntegerField
      FieldName = 'todomes'
    end
    object tabelaprogramado: TIntegerField
      FieldName = 'programado'
    end
    object tabelachave: TIntegerField
      FieldName = 'chave'
    end
    object tabeladia: TStringField
      FieldName = 'dia'
      Size = 3
    end
    object tabelatipomes: TStringField
      FieldName = 'tipomes'
      Size = 9
    end
    object tabelastatus: TStringField
      FieldName = 'status'
    end
  end
  object ds: TDataSource
    DataSet = tabela
    Left = 272
    Top = 172
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 216
    Top = 160
  end
  object tbdc: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'dt'
    Params = <>
    StoreDefs = True
    Left = 280
    Top = 280
    object tbdcnome: TStringField
      FieldName = 'nome'
      Size = 30
    end
    object tbdcdata: TStringField
      FieldName = 'data'
      Size = 7
    end
    object tbdccor: TStringField
      FieldName = 'cor'
    end
    object tbdcdt: TDateField
      FieldName = 'dt'
    end
  end
  object dsdc: TDataSource
    DataSet = tbdc
    Left = 344
    Top = 304
  end
end
