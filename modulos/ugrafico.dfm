object fgrafico: Tfgrafico
  Left = -4
  Top = -4
  Width = 808
  Height = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 72
    Align = alTop
    TabOrder = 0
    object Bevel1: TBevel
      Left = 241
      Top = 41
      Width = 132
      Height = 27
    end
    object Bevel4: TBevel
      Left = 241
      Top = 5
      Width = 220
      Height = 36
    end
    object Label3: TLabel
      Left = 465
      Top = 3
      Width = 143
      Height = 13
      Caption = 'Escolha o tipo de gr'#225'fico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 241
      Top = 0
      Width = 64
      Height = 13
      Caption = 'Exibir Itens'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 245
      Top = 19
      Width = 21
      Height = 13
      Caption = 'De:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 337
      Top = 19
      Width = 13
      Height = 13
      Caption = 'A:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 717
      Top = 44
      Width = 82
      Height = 23
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object Label9: TLabel
      Left = 288
      Top = 47
      Width = 33
      Height = 13
      Hint = 'Localiza aproximadamente'
      Alignment = taCenter
      Caption = 'Tam. '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object SpeedButton3: TSpeedButton
      Left = 431
      Top = 13
      Width = 23
      Height = 22
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton3Click
    end
    object RadioGroup2: TRadioGroup
      Left = 374
      Top = 35
      Width = 278
      Height = 33
      HelpType = htKeyword
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 1
      Items.Strings = (
        'Crescente'
        'Decrescente'
        'Nome')
      ParentFont = False
      TabOrder = 8
      OnClick = RadioGroup2Click
    end
    object ComboBox1: TComboBox
      Left = 464
      Top = 19
      Width = 189
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 7
      OnClick = ComboBox1Click
      Items.Strings = (
        'Rectangle'
        'Pyramid'
        'InvPyramid'
        'Cilinder'
        'Ellipse'
        'Arrow')
    end
    object CheckBox1: TCheckBox
      Left = 9
      Top = 14
      Width = 132
      Height = 13
      Caption = 'Exibir Legenda'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object e1: TSpinEdit
      Left = 268
      Top = 15
      Width = 63
      Height = 22
      Cursor = crHandPoint
      HelpType = htKeyword
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 50000
      MinValue = 1
      ParentFont = False
      TabOrder = 3
      Value = 1
      OnKeyDown = e1KeyDown
    end
    object e2: TSpinEdit
      Left = 352
      Top = 15
      Width = 63
      Height = 22
      Cursor = crHandPoint
      HelpType = htKeyword
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 1000000
      MinValue = 1
      ParentFont = False
      TabOrder = 4
      Value = 10
      OnKeyDown = e1KeyDown
    end
    object SpinEdit1: TSpinEdit
      Left = 318
      Top = 44
      Width = 50
      Height = 22
      Increment = 5
      MaxValue = 100
      MinValue = 10
      TabOrder = 6
      Value = 60
      OnChange = SpinEdit1Change
    end
    object RadioGroup1: TRadioGroup
      Left = 3
      Top = 35
      Width = 235
      Height = 32
      Caption = 'Posi'#231#227'o da Legenda'
      Columns = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 1
      Items.Strings = (
        'Left'
        'Right'
        'Top'
        'Bottom')
      ParentFont = False
      TabOrder = 2
      OnClick = RadioGroup1Click
    end
    object BitBtn1: TBitBtn
      Left = 651
      Top = 44
      Width = 65
      Height = 23
      Caption = 'Zoom +'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = BitBtn1Click
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDD0000000D00DDDDDDDDDDDDDD0000000D000DDDDDDDDDDDDD0000000DD00
        0DDDDDDDDDDDD0000000DDD000D800008DDDD0000000DDDD0000777700DDD000
        0000DDDDD08EE777780DD0000000DDDD807E70077708D0000000DDDD07E77007
        7770D0000000DDDD077000000770D0000000DDDD077000000E70D0000000DDDD
        077770077E70D0000000DDDD80777007EE08D0000000DDDDD08777EEE80DD000
        0000DDDDDD00777700DDD0000000DDDDDDD800008DDDD0000000DDDDDDDDDDDD
        DDDDD0000000}
    end
    object BitBtn2: TBitBtn
      Left = 651
      Top = 19
      Width = 65
      Height = 25
      Caption = 'Zoom -'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BitBtn2Click
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC000000CE0E0000D80E00001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDD0000000D00DDDDDDDDDDDDDD0000000D000DDDDDDDDDDDDD0000000DD00
        0DDDDDDDDDDDD0000000DDD000D800008DDDD0000000DDDD0000777700DDD000
        0000DDDDD08EE777780DD0000000DDDD807E77777708D0000000DDDD07E77777
        7770D0000000DDDD077000000770D0000000DDDD077000000E70D0000000DDDD
        077777777E70D0000000DDDD80777777EE08D0000000DDDDD08777EEE80DD000
        0000DDDDDD00777700DDD0000000DDDDDDD800008DDDD0000000DDDDDDDDDDDD
        DDDDD0000000}
    end
    object BitBtn3: TBitBtn
      Left = 716
      Top = 19
      Width = 82
      Height = 25
      Caption = 'Ressete Zoom'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = BitBtn3Click
    end
    object CheckBox3: TCheckBox
      Left = 124
      Top = 13
      Width = 110
      Height = 17
      Caption = 'Exibir Marcas'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 1
      OnClick = CheckBox3Click
    end
    object CheckBox2: TCheckBox
      Left = 244
      Top = 47
      Width = 41
      Height = 17
      Caption = '&3D'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      State = cbChecked
      TabOrder = 5
      OnClick = CheckBox2Click
    end
    object rindex: TRadioGroup
      Left = 390
      Top = 71
      Width = 238
      Height = 33
      HelpType = htKeyword
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 1
      Items.Strings = (
        'Crescente'
        'Decrescente')
      ParentFont = False
      TabOrder = 12
      OnClick = RadioGroup2Click
    end
  end
  object DBChart1: TDBChart
    Left = 0
    Top = 72
    Width = 800
    Height = 472
    Hint = 'Click on a Bar to see an example of event handling.'
    AnimatedZoomSteps = 6
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Color = 8454016
    BackWall.Dark3D = False
    BackWall.Pen.Visible = False
    BottomWall.Brush.Color = clWhite
    BottomWall.Color = clNavy
    Foot.AdjustFrame = False
    Foot.Font.Charset = DEFAULT_CHARSET
    Foot.Font.Color = clRed
    Foot.Font.Height = -15
    Foot.Font.Name = 'Arial'
    Foot.Font.Style = [fsBold]
    Foot.Frame.Color = clScrollBar
    Foot.Visible = False
    Gradient.EndColor = 3692391
    Gradient.Visible = True
    LeftWall.Brush.Color = clWhite
    LeftWall.Color = clGreen
    MarginBottom = 0
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    PrintProportional = False
    Title.Alignment = taLeftJustify
    Title.Brush.Color = clWhite
    Title.Brush.Style = bsClear
    Title.Color = 16777088
    Title.Font.Charset = DEFAULT_CHARSET
    Title.Font.Color = clBlue
    Title.Font.Height = -16
    Title.Font.Name = 'Arial'
    Title.Font.Style = [fsBold, fsItalic]
    Title.Frame.Color = 8421440
    Title.Frame.Width = 4
    Title.Text.Strings = (
      '')
    Title.Visible = False
    BackColor = 8454016
    BottomAxis.Grid.Color = clScrollBar
    ClipPoints = False
    Frame.Visible = False
    LeftAxis.Grid.Color = clScrollBar
    LeftAxis.LabelsFont.Charset = DEFAULT_CHARSET
    LeftAxis.LabelsFont.Color = clBlue
    LeftAxis.LabelsFont.Height = -11
    LeftAxis.LabelsFont.Name = 'Arial'
    LeftAxis.LabelsFont.Style = [fsBold]
    LeftAxis.MinorTickLength = 7
    LeftAxis.PositionPercent = 1.000000000000000000
    LeftAxis.TickLength = 0
    LeftAxis.Title.Angle = 0
    Legend.ColorWidth = 5
    Legend.Font.Charset = ANSI_CHARSET
    Legend.Font.Color = clBlack
    Legend.Font.Height = -9
    Legend.Font.Name = 'Small Fonts'
    Legend.Font.Style = []
    Legend.Frame.Color = clYellow
    Legend.Frame.Width = 2
    Legend.HorizMargin = 1
    Legend.ShadowColor = 16512
    Legend.TextStyle = ltsRightPercent
    Legend.TopPos = 1
    RightAxis.Grid.Color = clScrollBar
    ScaleLastPage = False
    TopAxis.Grid.Color = clScrollBar
    TopAxis.Visible = False
    View3DOptions.Elevation = 331
    View3DOptions.HorizOffset = -7
    View3DOptions.Perspective = 18
    View3DOptions.Zoom = 99
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 0
    Color = 4227327
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    object BarSeries1: TBarSeries
      ColorEachPoint = True
      HorizAxis = aTopAxis
      Marks.ArrowLength = 20
      Marks.Font.Charset = DEFAULT_CHARSET
      Marks.Font.Color = clBlack
      Marks.Font.Height = -11
      Marks.Font.Name = 'Arial'
      Marks.Font.Style = [fsBold]
      Marks.Style = smsValue
      Marks.Visible = True
      DataSource = tabela
      SeriesColor = clRed
      XLabelsSource = 'nome'
      BarStyle = bsPyramid
      BarWidthPercent = 80
      MultiBar = mbNone
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'total'
      Left = 82
      Top = 118
    end
  end
  object ds: TDataSource
    DataSet = tabela
    Left = 456
    Top = 164
  end
  object tabela: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'total'
        DataType = ftFloat
      end
      item
        Name = 'cont'
        DataType = ftInteger
      end
      item
        Name = 'num'
        DataType = ftFloat
      end
      item
        Name = 'data'
        DataType = ftDate
      end
      item
        Name = 'nm'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'total'
        Fields = 'total'
      end
      item
        Name = 'totaldesc'
        Fields = 'total'
      end>
    Params = <>
    StoreDefs = True
    Left = 304
    Top = 224
    object tabelanome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object tabelatotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '###,##0.00'
    end
    object tabelacont: TIntegerField
      FieldName = 'cont'
    end
    object tabelanum: TFloatField
      FieldName = 'num'
    end
    object tabeladata: TDateField
      FieldName = 'data'
    end
    object tabelanm: TStringField
      FieldName = 'nm'
    end
  end
end
