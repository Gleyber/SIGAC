object fimpressora: Tfimpressora
  Left = 124
  Top = 133
  BorderStyle = bsDialog
  Caption = 'IMPRESS'#195'O'
  ClientHeight = 110
  ClientWidth = 323
  Color = 15790320
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 4
    Top = 36
    Width = 119
    Height = 14
    Caption = 'Escolha a Impressora'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 265
    Top = 36
    Width = 52
    Height = 14
    Caption = 'N'#186' C'#243'pias'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 4
    Top = 3
    Width = 313
    Height = 24
    Alignment = taCenter
    AutoSize = False
    Caption = 'Controle de Impress'#227'o'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object cimpressao: TComboBox
    Left = 4
    Top = 50
    Width = 259
    Height = 21
    HelpType = htKeyword
    ItemHeight = 13
    TabOrder = 1
    OnDropDown = cimpressaoDropDown
    OnEnter = cimpressaoEnter
    OnExit = cimpressaoExit
    OnKeyDown = cimpressaoKeyDown
    OnKeyPress = cimpressaoKeyPress
  end
  object SpinEdit1: TSpinEdit
    Left = 265
    Top = 50
    Width = 54
    Height = 22
    MaxValue = 20
    MinValue = 1
    TabOrder = 2
    Value = 1
    OnEnter = SpinEdit1Enter
    OnExit = SpinEdit1Exit
  end
  object BitBtn1: TBitBtn
    Left = 162
    Top = 81
    Width = 75
    Height = 25
    Caption = '&Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn3: TBitBtn
    Left = 242
    Top = 80
    Width = 75
    Height = 25
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn3Click
  end
  object ActionList1: TActionList
    Left = 120
    object pedidovenda: TAction
      Caption = 'pedidovenda'
      OnExecute = pedidovendaExecute
    end
    object consignada: TAction
      Caption = 'consignada'
      OnExecute = consignadaExecute
    end
    object duplicata: TAction
      Caption = 'duplicata'
      OnExecute = duplicataExecute
    end
    object fatura: TAction
      Caption = 'fatura'
      OnExecute = faturaExecute
    end
    object cartacartorio: TAction
      Caption = 'cartacartorio'
      OnExecute = cartacartorioExecute
    end
    object promissoria: TAction
      Caption = 'promissoria'
    end
    object notamousart: TAction
      Caption = 'notamousart'
      OnExecute = notamousartExecute
    end
    object chequeemitido: TAction
      Caption = 'chequeemitido'
      OnExecute = chequeemitidoExecute
    end
    object chequerecebido: TAction
      Caption = 'chequerecebido'
    end
    object cartajuridica: TAction
      Caption = 'cartajuridica'
      OnExecute = cartajuridicaExecute
    end
    object boleto: TAction
      Caption = 'boleto'
    end
    object cartao: TAction
      Caption = 'cartao'
    end
    object notadiskbaterias: TAction
      Caption = 'notadiskbaterias'
      OnExecute = notadiskbateriasExecute
    end
    object autenticar: TAction
      Caption = 'autenticar'
      OnExecute = autenticarExecute
    end
  end
end
