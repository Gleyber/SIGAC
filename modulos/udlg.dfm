object fdlg: Tfdlg
  Left = 193
  Top = 115
  BorderStyle = bsDialog
  Caption = 'Di'#225'logo'
  ClientHeight = 194
  ClientWidth = 390
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object imflag: TImage
    Left = 3
    Top = 79
    Width = 30
    Height = 30
    AutoSize = True
  end
  object lt1: TLabel
    Left = 306
    Top = 17
    Width = 77
    Height = 23
    Alignment = taRightJustify
    Caption = 'P i n g o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Georgia'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object lt2: TLabel
    Left = 306
    Top = 18
    Width = 77
    Height = 23
    Cursor = crHandPoint
    Alignment = taRightJustify
    Caption = 'P i n g o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Georgia'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    Transparent = True
  end
  object L1: TLabel
    Left = 39
    Top = 86
    Width = 52
    Height = 14
    Caption = 'Confirme'
    Font.Charset = ANSI_CHARSET
    Font.Color = 2228224
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object l2: TLabel
    Left = 16
    Top = 132
    Width = 352
    Height = 14
    Alignment = taCenter
    AutoSize = False
    Caption = '1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 111
    Width = 390
    Height = 2
    Alignment = taCenter
    AutoSize = False
    BevelKind = bkSoft
    BevelOuter = bvNone
    Caption = '  '
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 164
    Width = 390
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    object imrodape: TImage
      Left = 0
      Top = -27
      Width = 390
      Height = 58
    end
    object btnok: TSpeedButton
      Left = 296
      Top = 3
      Width = 93
      Height = 26
      Caption = '&N'#227'o'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnokClick
    end
    object btnsair: TSpeedButton
      Left = 197
      Top = 3
      Width = 93
      Height = 26
      Caption = '&Sim'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Layout = blGlyphTop
      ParentFont = False
      OnClick = btnsairClick
    end
  end
  object pbox: TPanel
    Left = 0
    Top = 126
    Width = 390
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Visible = False
    object mk: TMaskEdit
      Left = 16
      Top = 0
      Width = 351
      Height = 17
      BevelInner = bvLowered
      BevelKind = bkFlat
      BorderStyle = bsNone
      TabOrder = 0
      OnKeyPress = mkKeyPress
    end
    object mk2: TMaskEdit
      Left = 242
      Top = 0
      Width = 89
      Height = 17
      BevelInner = bvLowered
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditMask = '99/99/9999'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      Visible = False
      OnKeyPress = mkKeyPress
    end
  end
end
