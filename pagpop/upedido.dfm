object fpedido: Tfpedido
  Left = 192
  Top = 107
  Width = 325
  Height = 138
  Caption = 'fpedido'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object evendedor: TEdit
    Left = 40
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'evendedor'
  end
  object CFPgto: TEdit
    Left = 48
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'evendedor'
  end
  object btneditargrupo: TButton
    Left = 184
    Top = 56
    Width = 75
    Height = 25
    Caption = 'btneditargrupo'
    TabOrder = 2
    OnClick = btneditargrupoClick
  end
  object btnnovo: TButton
    Left = 240
    Top = 80
    Width = 75
    Height = 25
    Caption = 'btneditargrupo'
    TabOrder = 3
    OnClick = btnnovoClick
  end
  object btnnovoD: TButton
    Left = 26
    Top = 86
    Width = 75
    Height = 25
    Caption = 'btneditargrupo'
    TabOrder = 4
    OnClick = btnnovoDClick
  end
  object btngravarD: TButton
    Left = 114
    Top = 86
    Width = 75
    Height = 25
    Caption = 'btneditargrupo'
    TabOrder = 5
    OnClick = btngravarDClick
  end
  object venda: TZQuery
    Params = <>
    Left = 176
    Top = 8
  end
  object tbdevolucao: TZQuery
    Params = <>
    Left = 176
    Top = 8
  end
  object ActionList1: TActionList
    Left = 232
    Top = 8
    object preencherproduto: TAction
      Caption = 'preencherproduto'
      OnExecute = preencherprodutoExecute
    end
    object totalitem: TAction
      Caption = 'totalitem'
      OnExecute = totalitemExecute
    end
  end
  object tbitem: TZQuery
    Params = <>
    Left = 96
    Top = 65528
  end
end
