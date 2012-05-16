object fimp: Tfimp
  Left = 100
  Top = 119
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'IMPRESS'#195'O'
  ClientHeight = 293
  ClientWidth = 682
  Color = 15329769
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label35: TLabel
    Left = 8
    Top = 237
    Width = 155
    Height = 14
    Alignment = taCenter
    Caption = 'Progresso do uso da p'#225'gina'
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = 13434879
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 601
    Top = 278
    Width = 39
    Height = 14
    Caption = 'Espa'#231'o'
    Color = 9073514
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Progresso1: TProgressBar
    Left = 8
    Top = 218
    Width = 671
    Height = 21
    BorderWidth = 2
    TabOrder = 0
  end
  object btnimprimir: TBitBtn
    Left = 524
    Top = 244
    Width = 111
    Height = 26
    Caption = 'Visualizar/Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnimprimirClick
  end
  object BitBtn2: TBitBtn
    Left = 636
    Top = 244
    Width = 45
    Height = 26
    Caption = 'Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 682
    Height = 217
    ActivePage = TabSheet2
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object TabSheet2: TTabSheet
      Caption = 'Configura'#231#245'es'
      ImageIndex = 1
      object Label36: TLabel
        Left = 8
        Top = 37
        Width = 100
        Height = 14
        Caption = 'T'#237'tulo do Relat'#243'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 538
        Top = 131
        Width = 101
        Height = 16
        Caption = 'Imagem rodap'#233
        OnClick = SpeedButton1Click
      end
      object vimage: TImage
        Left = 536
        Top = 147
        Width = 102
        Height = 43
        Stretch = True
      end
      object Label37: TLabel
        Left = 8
        Top = 128
        Width = 110
        Height = 14
        Caption = 'Rodap'#233' do Relat'#243'rio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 8
        Top = 66
        Width = 123
        Height = 14
        Caption = 'Dados depois do t'#237'tulo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 542
        Top = 48
        Width = 88
        Height = 14
        Caption = 'Altura da P'#225'gina'
      end
      object rpagina: TRadioGroup
        Left = 8
        Top = 2
        Width = 234
        Height = 32
        Caption = 'P'#225'gina'
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Ventical'
          'Horizontal')
        ParentFont = False
        TabOrder = 0
        OnClick = rpaginaClick
      end
      object rfonte: TRadioGroup
        Left = 411
        Top = 2
        Width = 262
        Height = 33
        Caption = 'Tamanho da Fonte'
        Columns = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 2
        Items.Strings = (
          '6'
          '8'
          '10'
          '12')
        ParentFont = False
        TabOrder = 2
        OnClick = rfonteClick
      end
      object etitulo: TEdit
        Left = 8
        Top = 50
        Width = 462
        Height = 17
        BevelInner = bvLowered
        BevelKind = bkSoft
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        Color = 15857144
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
      end
      object m2: TMemo
        Left = 8
        Top = 140
        Width = 462
        Height = 49
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = [fsBold]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object rcoluna: TRadioGroup
        Left = 249
        Top = 2
        Width = 155
        Height = 33
        Caption = 'N'#186' Colunas'
        Columns = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          '1'
          '2'
          '3')
        ParentFont = False
        TabOrder = 1
        OnClick = rfonteClick
      end
      object r6: TMemo
        Left = 8
        Top = 78
        Width = 462
        Height = 49
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Lucida Console'
        Font.Style = [fsBold]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 5
      end
      object ealtura: TEdit
        Left = 541
        Top = 64
        Width = 96
        Height = 13
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = 15857144
        ParentBiDiMode = False
        TabOrder = 6
        Text = '280'
        OnKeyPress = ealturaKeyPress
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Campos'
      object StaticText1: TStaticText
        Left = -1
        Top = -3
        Width = 584
        Height = 19
        Alignment = taCenter
        AutoSize = False
        BevelKind = bkFlat
        Caption = 'Marque os campos que ser'#227'o impressos'
        Color = 9073514
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Grupos'
      ImageIndex = 2
      object gsrupog4: TRadioGroup
        Left = 499
        Top = 0
        Width = 176
        Height = 188
        Caption = ' Grupo N'#237'vel 4'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'N'#227'o Agrupar')
        ParentFont = False
        TabOrder = 3
        OnClick = gsrupog4Click
      end
      object gsrupog3: TRadioGroup
        Left = 330
        Top = 0
        Width = 178
        Height = 188
        Caption = ' Grupo N'#237'vel 3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'N'#227'o Agrupar')
        ParentFont = False
        TabOrder = 2
        OnClick = gsrupog3Click
      end
      object gsrupog: TRadioGroup
        Left = 161
        Top = 0
        Width = 178
        Height = 188
        Caption = ' Grupo N'#237'vel 2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'N'#227'o Agrupar')
        ParentFont = False
        TabOrder = 1
        OnClick = gsrupogClick
      end
      object grupog: TRadioGroup
        Left = -8
        Top = 0
        Width = 177
        Height = 188
        Caption = 'Grupo N'#237'vel 1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'N'#227'o Agrupar')
        ParentFont = False
        TabOrder = 0
        OnClick = grupogClick
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Ordenar'
      ImageIndex = 3
      object Label3: TLabel
        Left = 414
        Top = -2
        Width = 109
        Height = 14
        Hint = 'Localiza aproximadamente'
        Alignment = taCenter
        Caption = '2'#186' Campo Ordenado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 6
        Top = -2
        Width = 70
        Height = 14
        Hint = 'Localiza aproximadamente'
        Alignment = taCenter
        Caption = 'Ordenar Por:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object gindex2: TComboBox
        Left = 413
        Top = 11
        Width = 255
        Height = 21
        BevelKind = bkFlat
        Style = csOwnerDrawVariable
        Ctl3D = True
        DropDownCount = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 15
        ItemIndex = 0
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = 'N'#227'o Ordenar'
        OnClick = gindex2Click
        Items.Strings = (
          'N'#227'o Ordenar')
      end
      object gindex: TComboBox
        Left = 6
        Top = 11
        Width = 255
        Height = 21
        BevelKind = bkFlat
        Style = csOwnerDrawVariable
        Ctl3D = True
        DropDownCount = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 15
        ItemIndex = 0
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Text = 'N'#227'o Ordenar'
        OnClick = cgrupoClick
        Items.Strings = (
          'N'#227'o Ordenar')
      end
    end
  end
  object rendereco: TCheckBox
    Left = 7
    Top = 250
    Width = 214
    Height = 11
    Caption = 'Com Endere'#231'o/Logo da Empresa'
    Checked = True
    Color = 9073514
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    State = cbChecked
    TabOrder = 4
    OnClick = renderecoClick
  end
  object rqtd: TCheckBox
    Left = 7
    Top = 262
    Width = 214
    Height = 11
    Caption = 'Conta Itens'
    Color = 9073514
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 5
  end
  object rlin: TCheckBox
    Left = 524
    Top = 278
    Width = 62
    Height = 13
    Caption = 'Linhas'
    Color = 9073514
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 6
  end
  object rcol: TCheckBox
    Left = 227
    Top = 278
    Width = 105
    Height = 13
    Caption = 'Colunas'
    Checked = True
    Color = 9073514
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    State = cbChecked
    TabOrder = 7
  end
  object cpagina: TCheckBox
    Left = 227
    Top = 250
    Width = 105
    Height = 13
    Caption = 'S'#243' na 1'#170' P'#225'gina'
    Checked = True
    Color = 9073514
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    State = cbChecked
    TabOrder = 8
  end
  object cborda: TCheckBox
    Left = 227
    Top = 264
    Width = 105
    Height = 13
    Caption = 'Com bordas?'
    Checked = True
    Color = 9073514
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    State = cbChecked
    TabOrder = 9
  end
  object llargura: TSpinEdit
    Left = 645
    Top = 270
    Width = 35
    Height = 23
    Cursor = crHandPoint
    HelpType = htKeyword
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxValue = 10
    MinValue = 1
    ParentFont = False
    TabOrder = 10
    Value = 1
  end
  object ActionList1: TActionList
    Left = 300
    Top = 160
    object fontepag: TAction
      Caption = 'fontepag'
      OnExecute = fontepagExecute
    end
    object contar: TAction
      Caption = 'contar'
      OnExecute = contarExecute
    end
    object soma: TAction
      Caption = 'soma'
      OnExecute = somaExecute
    end
    object sitconta: TAction
      Caption = 'sitconta'
      OnExecute = sitcontaExecute
    end
  end
  object opendialog: TOpenPictureDialog
    Filter = 'JPG|*.JPG'
    InitialDir = 'C:\'
    Left = 80
    Top = 176
  end
  object tbsoma: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'index'
    Params = <>
    ProviderName = 'pgrupo'
    Left = 28
    Top = 148
    object tbsomanome: TStringField
      FieldName = 'nome'
      Size = 40
    end
    object tbsomacap: TStringField
      FieldName = 'cap'
      Size = 40
    end
    object tbsomaX: TStringField
      FieldName = 'X'
      Size = 1
    end
    object tbsomaindex: TIntegerField
      FieldName = 'index'
    end
  end
  object tb: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'index'
    Params = <>
    Left = 128
    Top = 148
    object tbnome: TStringField
      FieldName = 'nome'
      Size = 30
    end
    object tbcap: TStringField
      FieldName = 'cap'
      Size = 30
    end
    object tbx: TStringField
      FieldName = 'x'
      Size = 1
    end
    object tbtm: TIntegerField
      FieldName = 'tm'
    end
    object tbpos: TIntegerField
      FieldName = 'pos'
    end
    object tbindex: TIntegerField
      FieldName = 'index'
    end
  end
  object tbini: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 188
    Top = 140
    object tbininome: TStringField
      FieldName = 'nome'
      Size = 30
    end
    object tbinix: TStringField
      FieldName = 'x'
      Size = 1
    end
  end
  object tbinisoma: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 144
    object tbinisomanome: TStringField
      FieldName = 'nome'
      Size = 40
    end
    object tbinisomaX: TStringField
      FieldName = 'X'
      Size = 1
    end
  end
end
