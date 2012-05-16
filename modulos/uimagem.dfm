object fimagem: Tfimagem
  Left = 285
  Top = 180
  Width = 313
  Height = 253
  BorderIcons = [biSystemMenu]
  Caption = 'IMAGEM  (Tecle + ou - para zoom)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object vimage: TDBImage
    Left = 0
    Top = 0
    Width = 305
    Height = 201
    Align = alClient
    Color = 6049863
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 6049863
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 201
    Width = 305
    Height = 18
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 6049863
    TabOrder = 1
    object CheckBox1: TCheckBox
      Left = 95
      Top = 3
      Width = 140
      Height = 14
      Caption = 'Tamanho Autom'#225'tico'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = CheckBox1Click
    end
  end
end
