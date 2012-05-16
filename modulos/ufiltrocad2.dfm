object ffiltrocad2: Tffiltrocad2
  Left = 192
  Top = 114
  Width = 560
  Height = 121
  BorderIcons = [biSystemMenu]
  Caption = 'Filtros personalizados'
  Color = 16053492
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object panimal: TPanel
    Left = 0
    Top = 0
    Width = 552
    Height = 28
    Align = alTop
    BevelInner = bvLowered
    Color = 16382457
    TabOrder = 0
    object BTOK: TSpeedButton
      Left = 480
      Top = 12
      Width = 71
      Height = 15
      Caption = 'Filtrar(ins)'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BTOKClick
    end
    object Label5: TLabel
      Left = 194
      Top = 15
      Width = 175
      Height = 14
      Alignment = taCenter
      Caption = 'SELECIONE E CLIQUE EM FILTRAR'
      Transparent = True
    end
  end
  object sq: TScrollBox
    Left = 0
    Top = 28
    Width = 552
    Height = 66
    Align = alClient
    TabOrder = 1
  end
  object tbcampo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 192
    Top = 40
  end
  object ds: TDataSource
    DataSet = tbcampo
    Left = 248
    Top = 40
  end
end
