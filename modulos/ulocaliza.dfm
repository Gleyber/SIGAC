object flocaliza: Tflocaliza
  Left = 256
  Top = 127
  BorderStyle = bsDialog
  Caption = 'LOCALIZAR'
  ClientHeight = 415
  ClientWidth = 283
  Color = 14211288
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
  object grade: TDBGrid
    Left = 0
    Top = 91
    Width = 283
    Height = 324
    Hint = 'Clique no cabe'#231'alho de uma coluna para ordenar'
    Align = alClient
    Color = 16382712
    DataSource = ds
    FixedColor = 15987699
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = 6049863
    TitleFont.Height = -11
    TitleFont.Name = 'Arial'
    TitleFont.Style = [fsBold]
    OnDblClick = gradeDblClick
    OnKeyDown = gradeKeyDown
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 283
    Height = 91
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object Label2: TLabel
      Left = 0
      Top = 14
      Width = 283
      Height = 14
      Alignment = taCenter
      AutoSize = False
      Caption = 'Localizar por Descri'#231#227'o (A~Z)'
      Color = 15987699
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object elocalizar: TEdit
      Left = 0
      Top = 34
      Width = 281
      Height = 21
      BevelKind = bkFlat
      BevelOuter = bvRaised
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = elocalizarChange
      OnEnter = elocalizarEnter
      OnExit = elocalizarExit
      OnKeyDown = elocalizarKeyDown
      OnKeyPress = elocalizarKeyPress
    end
  end
  object ds: TDataSource
    Left = 100
    Top = 132
  end
end
