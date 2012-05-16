object fabrircaixa: Tfabrircaixa
  Left = 160
  Top = 142
  BorderStyle = bsDialog
  Caption = 'Abrir Caixa'
  ClientHeight = 111
  ClientWidth = 213
  Color = clSilver
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
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 67
    Top = 42
    Width = 48
    Height = 14
    Caption = 'Usu'#225'rio1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 17
    Top = 7
    Width = 23
    Height = 14
    Caption = 'Data'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 139
    Top = 7
    Width = 43
    Height = 14
    Caption = 'N'#186' Caixa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 78
    Top = 7
    Width = 25
    Height = 14
    Caption = 'Hora'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 1
    Top = 42
    Width = 63
    Height = 14
    Caption = 'Caixa Inicial'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object MaskEdit1: TMaskEdit
    Left = 1
    Top = 19
    Width = 61
    Height = 17
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
    ReadOnly = True
    TabOrder = 0
    Text = '  /  /    '
    OnEnter = MaskEdit1Enter
    OnExit = MaskEdit1Exit
  end
  object MaskEdit3: TMaskEdit
    Left = 65
    Top = 19
    Width = 50
    Height = 17
    BevelOuter = bvRaised
    BevelKind = bkFlat
    BiDiMode = bdRightToLeft
    BorderStyle = bsNone
    CharCase = ecUpperCase
    EditMask = '00:00:00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    MaxLength = 8
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 1
    Text = '  :  :  '
    OnEnter = MaskEdit3Enter
    OnExit = MaskEdit3Exit
  end
  object BitBtn1: TBitBtn
    Left = 60
    Top = 81
    Width = 75
    Height = 26
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
  end
  object Edit2: TEdit
    Left = 67
    Top = 56
    Width = 142
    Height = 17
    HelpType = htKeyword
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
    ReadOnly = True
    TabOrder = 4
    Text = 'EUSUARIO'
    OnEnter = Edit2Enter
    OnExit = Edit2Exit
  end
  object encaixa: TEdit
    Left = 117
    Top = 19
    Width = 92
    Height = 17
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
    TabOrder = 2
    OnEnter = encaixaEnter
    OnExit = encaixaExit
    OnKeyPress = Edit1KeyPress
  end
  object BitBtn2: TBitBtn
    Left = 137
    Top = 81
    Width = 72
    Height = 26
    Caption = 'Cancelar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn2Click
  end
  object evrinicial: TEdit
    Left = 1
    Top = 56
    Width = 63
    Height = 17
    HelpType = htKeyword
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
    TabOrder = 3
    Text = '0'
    OnEnter = evrinicialEnter
    OnExit = evrinicialExit
    OnKeyPress = evrinicialKeyPress
  end
  object tbcaixagrupo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 24
    Top = 64
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
  end
end
