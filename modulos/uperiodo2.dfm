object fperiodo2: Tfperiodo2
  Left = 27
  Top = 200
  BorderStyle = bsDialog
  Caption = 'SIGAC'
  ClientHeight = 178
  ClientWidth = 346
  Color = 15329769
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 346
    Height = 178
    Align = alClient
    TabOrder = 0
  end
  object btnsair: TBitBtn
    Left = 241
    Top = 10
    Width = 72
    Height = 22
    Caption = 'Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnsairClick
  end
  object ActionList1: TActionList
    Left = 336
    Top = 40
  end
  object tbbanco: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 500
    Top = 272
    object tbbancochave: TIntegerField
      FieldName = 'chave'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbbancoconta: TStringField
      FieldName = 'conta'
      Size = 9
    end
    object tbbancodata: TDateField
      FieldName = 'data'
      EditMask = '99/99/9999'
    end
    object tbbancohora: TTimeField
      FieldName = 'hora'
      EditMask = '99:99'
    end
    object tbbancodc: TStringField
      FieldName = 'dc'
      Size = 9
    end
    object tbbancodocumento: TStringField
      FieldName = 'documento'
      Size = 15
    end
    object tbbancovalor: TFloatField
      FieldName = 'valor'
      DisplayFormat = '###,##0.00'
    end
    object tbbancohistorico: TStringField
      FieldName = 'historico'
      Size = 100
    end
    object tbbancomodulo: TStringField
      FieldName = 'modulo'
      Size = 1
    end
    object tbbancolinkvenda: TIntegerField
      FieldName = 'linkvenda'
    end
    object tbbancotipo: TStringField
      FieldName = 'tipo'
    end
    object tbbancousu: TIntegerField
      FieldName = 'usu'
    end
    object tbbancodtcompensacao: TDateField
      FieldName = 'dtcompensacao'
      EditMask = '99/99/9999'
    end
  end
  object dsbanco: TDataSource
    DataSet = tbbanco
    Left = 496
    Top = 320
  end
  object opendialog: TOpenPictureDialog
    DefaultExt = 'JPG'
    Filter = 'JPG|*.JPG'
    InitialDir = 'C:\'
    Left = 172
    Top = 280
  end
  object produto: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 52
    object produtochave: TIntegerField
      FieldName = 'chave'
    end
    object produtocodigo2: TIntegerField
      FieldName = 'codigo'
    end
    object produtocompra: TFloatField
      FieldName = 'compra'
      DisplayFormat = '###,##0.000'
    end
    object produtovrcompra2: TFloatField
      FieldName = 'vrcompra'
      DisplayFormat = '###,##0.000'
    end
    object produtomargem2: TFloatField
      FieldName = 'margem'
      DisplayFormat = '###,##0.000'
    end
    object produtovrvenda2: TFloatField
      FieldName = 'vrvenda'
      DisplayFormat = '###,##0.000'
    end
    object produtopercentvendasite: TFloatField
      FieldName = 'percentvendasite'
      DisplayFormat = '###,##0.000'
    end
    object produtovendasite: TFloatField
      FieldName = 'vendasite'
      DisplayFormat = '###,##0.000'
    end
    object produtoestoque: TFloatField
      FieldName = 'estoque'
    end
  end
  object dsproduto: TDataSource
    DataSet = produto
    Left = 280
    Top = 112
  end
end
