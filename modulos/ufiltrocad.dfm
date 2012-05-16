object ffiltrocad: Tffiltrocad
  Left = 270
  Top = 180
  AutoSize = True
  BorderStyle = bsDialog
  Caption = 'FILTROS PERSONALIZADOS'
  ClientHeight = 344
  ClientWidth = 323
  Color = 14344679
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 323
    Height = 344
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Filtro'
      OnShow = TabSheet1Show
    end
    object TabSheet2: TTabSheet
      Caption = 'Campo'
      OnShow = TabSheet2Show
      object Label28: TLabel
        Left = 0
        Top = -1
        Width = 314
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = 'Escolha os campos que v'#227'o formar a grade'
        Color = 9073514
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 163
    Top = 1
    Width = 77
    Height = 19
    Caption = 'Filtrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 243
    Top = 1
    Width = 77
    Height = 19
    Caption = 'Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object ActionList1: TActionList
    Left = 244
    Top = 56
    object combos: TAction
      Caption = 'combos'
    end
    object campograde: TAction
      Caption = 'campograde'
      OnExecute = campogradeExecute
    end
    object grava: TAction
      Caption = 'grava'
    end
    object fontepag: TAction
      Caption = 'fontepag'
      OnExecute = fontepagExecute
    end
    object ra: TAction
      Caption = 'ra'
      OnExecute = raExecute
    end
    object ma: TAction
      Caption = 'ma'
      OnExecute = maExecute
    end
    object maenter: TAction
      Caption = 'maenter'
      OnExecute = maenterExecute
    end
    object ch: TAction
      Caption = 'ch'
      OnExecute = chExecute
    end
    object chenter: TAction
      Caption = 'chenter'
      OnExecute = chenterExecute
    end
    object dbl: TAction
      Caption = 'dbl'
      OnExecute = dblExecute
    end
    object dblenter: TAction
      Caption = 'dblenter'
      OnExecute = dblenterExecute
    end
  end
  object tb: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'index'
    Params = <>
    Left = 244
    Top = 108
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
    object tbindex: TIntegerField
      FieldName = 'index'
    end
  end
  object tbini: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 28
    Top = 128
    object tbininome: TStringField
      FieldName = 'nome'
      Size = 30
    end
    object tbinix: TStringField
      FieldName = 'x'
      Size = 1
    end
  end
  object tbcampo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 28
    Top = 76
    object StringField1: TStringField
      FieldName = 'nome'
      Size = 30
    end
    object tbcampox: TStringField
      FieldName = 'x'
      Size = 50
    end
    object tbcampo_x: TStringField
      FieldName = '_x'
      Size = 12
    end
  end
end
