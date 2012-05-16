object fconsumotexto: Tfconsumotexto
  Left = 16
  Top = 63
  Width = 808
  Height = 580
  Caption = 'PRODUTOS CONSUMIDOS'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 293
    Top = 41
    Width = 11
    Height = 505
    Color = clGray
    ParentColor = False
  end
  object mtext: TRichEdit
    Left = 304
    Top = 41
    Width = 496
    Height = 505
    Align = alClient
    Color = 16382457
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    PlainText = True
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object pmenu: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 41
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 734
      Top = 5
      Width = 63
      Height = 23
      Cursor = crHandPoint
      Caption = 'Imprimir'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object ltitulo: TLabel
      Left = 1
      Top = 1
      Width = 224
      Height = 27
      Caption = 'C'#243'digo/Descri'#231#227'o'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object btndeletar: TSpeedButton
      Left = 669
      Top = 5
      Width = 63
      Height = 23
      HelpType = htKeyword
      Caption = 'Deletar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      OnClick = btndeletarClick
    end
    object btnabortar: TSpeedButton
      Left = 669
      Top = 5
      Width = 63
      Height = 23
      HelpType = htKeyword
      Caption = 'Abortar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
      OnClick = btnabortarClick
    end
  end
  object FileListBox1: TFileListBox
    Left = 0
    Top = 41
    Width = 293
    Height = 505
    Align = alLeft
    Color = 14869218
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    Mask = '*.txt'
    ParentFont = False
    TabOrder = 2
    Visible = False
    OnChange = FileListBox1Change
  end
  object qimpressao: TRLReport
    Left = -118
    Top = -2000
    Width = 794
    Height = 1323
    AdjustableMargins = True
    DataSource = ds
    DefaultFilter = fdm.filtro
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Margins.RightMargin = 5.000000000000000000
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 350.000000000000000000
    Transparent = False
    BeforePrint = qimpressaoBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 78
      Width = 737
      Height = 48
      AutoSize = True
      Color = clWhite
      ParentColor = False
      Transparent = False
      object lmemo: TRLMemo
        Left = 4
        Top = 0
        Width = 661
        Height = 48
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'ksadjfh sajkdfh skdfsdf'
          'df sa '
          'dfsadf')
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 74
      Width = 737
      Height = 4
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      Color = clWhite
      ParentColor = False
      Transparent = False
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 38
      Width = 737
      Height = 36
      BandType = btTitle
      object LABELTIRULO: TRLLabel
        Left = 298
        Top = 0
        Width = 140
        Height = 22
        Align = faCenterTop
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object ActionList1: TActionList
    Left = 552
    Top = 72
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 45
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 120
      OnExecute = Action2Execute
    end
  end
  object tb: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 276
    object tbcampo: TStringField
      FieldName = 'campo'
      Size = 1
    end
  end
  object ds: TDataSource
    DataSet = tb
    Left = 472
    Top = 272
  end
end
