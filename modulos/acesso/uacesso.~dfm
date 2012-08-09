object Facesso: TFacesso
  Left = 372
  Top = 197
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Acesso ao sistema'
  ClientHeight = 187
  ClientWidth = 264
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
  object Label1: TLabel
    Left = 12
    Top = 80
    Width = 58
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Usu'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = 5197647
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 12
    Top = 104
    Width = 58
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Senha'
    Font.Charset = ANSI_CHARSET
    Font.Color = 5197647
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lfantasia1: TLabel
    Left = 135
    Top = 17
    Width = 124
    Height = 27
    HelpType = htKeyword
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'S e n i c'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Georgia'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object lfantasia: TLabel
    Left = 137
    Top = 19
    Width = 124
    Height = 27
    HelpType = htKeyword
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'S e n i c'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Georgia'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object prodape: TPanel
    Left = 0
    Top = 134
    Width = 264
    Height = 53
    Align = alBottom
    Color = clWhite
    TabOrder = 2
    object btnconfirmar: TSpeedButton
      Left = 145
      Top = 21
      Width = 88
      Height = 17
      Caption = '&Confirmar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 15855853
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnconfirmarClick
    end
    object btnlimpra: TSpeedButton
      Left = 44
      Top = 21
      Width = 88
      Height = 17
      Caption = '&Limpar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 15855853
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnlimpraClick
    end
  end
  object euso: TEdit
    Left = 76
    Top = 80
    Width = 180
    Height = 16
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object esenha: TEdit
    Left = 76
    Top = 104
    Width = 180
    Height = 16
    BevelInner = bvLowered
    BevelKind = bkFlat
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    OnKeyDown = esenhaKeyDown
  end
  object conector: TZConnection
    Protocol = 'mysql'
    HostName = 'localhost'
    Port = 3306
    Database = 'sigac'
    User = 'root'
    AutoCommit = False
    BeforeConnect = conectorBeforeConnect
    Left = 164
    Top = 60
  end
  object q: TZQuery
    Connection = conector
    SQL.Strings = (
      'select * from tbpedido')
    Params = <>
    Left = 216
    Top = 48
  end
end
