object fimpterm: Tfimpterm
  Left = 228
  Top = 143
  Width = 217
  Height = 196
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSizeToolWin
  Caption = 'Impress'#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 76
    Height = 13
    Caption = 'Argox (PPLA)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 9
    Top = 23
    Width = 35
    Height = 13
    Caption = 'Qtd Col'
  end
  object Label3: TLabel
    Left = 65
    Top = 23
    Width = 36
    Height = 13
    Caption = 'Largura'
  end
  object Label4: TLabel
    Left = 132
    Top = 23
    Width = 27
    Height = 13
    Caption = 'Altura'
  end
  object Label5: TLabel
    Left = 9
    Top = 57
    Width = 52
    Height = 13
    Caption = 'Mensagem'
  end
  object eqtd: TEdit
    Left = 8
    Top = 37
    Width = 49
    Height = 16
    Hint = 'Qtd de colunas'
    BevelKind = bkFlat
    BorderStyle = bsNone
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Text = '3'
    OnKeyPress = etamxKeyPress
  end
  object BtCancel: TBitBtn
    Left = 94
    Top = 133
    Width = 51
    Height = 25
    Caption = '&Cancela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ModalResult = 2
    ParentFont = False
    TabOrder = 6
  end
  object btOk: TBitBtn
    Left = 150
    Top = 133
    Width = 43
    Height = 25
    Caption = '&Ok'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 5
    OnClick = btOkClick
  end
  object etamx: TEdit
    Left = 64
    Top = 37
    Width = 60
    Height = 16
    Hint = 'Largura de cada etiqueta'
    BevelKind = bkFlat
    BorderStyle = bsNone
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Text = '35'
    OnKeyPress = etamxKeyPress
  end
  object etamy: TEdit
    Left = 131
    Top = 37
    Width = 62
    Height = 16
    Hint = 'Comprimento de cada etiqueta'
    BevelKind = bkFlat
    BorderStyle = bsNone
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Text = '60'
    OnKeyPress = etamxKeyPress
  end
  object EMsg1: TEdit
    Left = 7
    Top = 71
    Width = 185
    Height = 16
    BevelKind = bkFlat
    BorderStyle = bsNone
    TabOrder = 3
    OnKeyDown = EMsg1KeyDown
  end
  object EMsg2: TEdit
    Left = 7
    Top = 90
    Width = 185
    Height = 16
    BevelKind = bkFlat
    BorderStyle = bsNone
    TabOrder = 4
    OnKeyDown = EMsg2KeyDown
  end
  object rpreco: TCheckBox
    Left = 8
    Top = 112
    Width = 121
    Height = 17
    Caption = 'Encodificar o pre'#231'o'
    TabOrder = 7
  end
  object Button1: TButton
    Left = 2
    Top = 144
    Width = 55
    Height = 18
    Caption = 'Testar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = Button1Click
  end
end
