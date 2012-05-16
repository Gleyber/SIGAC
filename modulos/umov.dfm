object fmov: Tfmov
  Left = 190
  Top = 247
  BorderStyle = bsDialog
  Caption = 'Entradas/Sa'#237'das de Ve'#237'culos'
  ClientHeight = 148
  ClientWidth = 362
  Color = 15461355
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Bevel1: TBevel
    Left = 1
    Top = 84
    Width = 355
    Height = 59
  end
  object Label1: TLabel
    Left = 8
    Top = 43
    Width = 53
    Height = 14
    Caption = 'Categoria'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 33
    Top = 95
    Width = 203
    Height = 14
    Caption = 'Digite a placa do ve'#237'culo e tecle enter'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object rg1: TRadioGroup
    Left = 168
    Top = 12
    Width = 190
    Height = 73
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Horista'
      'Diarista'
      'Mensalista')
    ParentFont = False
    TabOrder = 1
    OnClick = rg1Click
  end
  object eplaca: TEdit
    Left = 32
    Top = 113
    Width = 248
    Height = 22
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnKeyDown = eplacaKeyDown
    OnKeyPress = eplacaKeyPress
  end
  object c: TComboBox
    Left = 8
    Top = 56
    Width = 153
    Height = 22
    BevelKind = bkFlat
    BevelOuter = bvRaised
    Style = csOwnerDrawVariable
    ItemHeight = 16
    TabOrder = 2
    OnChange = cChange
  end
  object rdesconto: TCheckBox
    Left = 284
    Top = 114
    Width = 71
    Height = 17
    Caption = 'Desconto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = rdescontoClick
  end
  object rentsai: TRadioGroup
    Left = 0
    Top = -22
    Width = 359
    Height = 30
    Columns = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Entrada'
      'Sa'#237'da')
    ParentFont = False
    TabOrder = 4
    Visible = False
    OnClick = rentsaiClick
  end
end
