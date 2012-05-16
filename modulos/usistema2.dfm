object fsistema2: Tfsistema2
  Left = 108
  Top = 130
  BorderStyle = bsDialog
  Caption = 'SIGAC'
  ClientHeight = 462
  ClientWidth = 742
  Color = clWhite
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
    Width = 742
    Height = 462
    ActivePage = passacheque
    Align = alClient
    TabOrder = 0
    object entrega: TTabSheet
      Caption = 'entrega'
      object Panel5: TPanel
        Left = 0
        Top = 31
        Width = 734
        Height = 64
        Align = alTop
        BevelInner = bvRaised
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        object btentimprimir: TSpeedButton
          Left = 694
          Top = 33
          Width = 75
          Height = 23
          Caption = '&Imprimir'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btentimprimirClick
        end
        object entllocalizar: TLabel
          Left = -1
          Top = 30
          Width = 288
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Localizar Descri'#231#227'o (A~Z)'
          Color = 3487029
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label1: TLabel
          Left = 334
          Top = 30
          Width = 155
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Alterar qtd entregar(+ ou -)'
          Color = 3487029
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object btenttudo: TSpeedButton
          Left = 528
          Top = 33
          Width = 83
          Height = 23
          Caption = '&Entregar tudo'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btenttudoClick
        end
        object btentsalvar: TSpeedButton
          Left = 615
          Top = 33
          Width = 75
          Height = 23
          Caption = '&Salvar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btentsalvarClick
        end
        object entelocalizar: TEdit
          Left = 1
          Top = 45
          Width = 287
          Height = 17
          BevelKind = bkFlat
          BevelOuter = bvRaised
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnChange = entelocalizarChange
          OnKeyDown = eqtdentregaKeyDown
          OnKeyPress = entelocalizarKeyPress
        end
        object eqtdentrega: TEdit
          Left = 335
          Top = 45
          Width = 154
          Height = 17
          BevelKind = bkFlat
          BevelOuter = bvRaised
          BorderStyle = bsNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnKeyDown = eqtdentregaKeyDown
          OnKeyPress = eqtdentregaKeyPress
        end
        object entl1: TStaticText
          Left = 1
          Top = 1
          Width = 732
          Height = 18
          Align = alTop
          AutoSize = False
          Color = 15395562
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
      end
      object entgrade: TDBGrid
        Left = 0
        Top = 95
        Width = 734
        Height = 338
        Align = alClient
        Color = 16382712
        DataSource = d1
        FixedColor = 15987699
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
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
        OnTitleClick = entgradeTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'numero'
            Title.Caption = 'Pedido'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data'
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigo'
            Title.Caption = 'C'#243'digo'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Width = 263
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd'
            Title.Caption = 'QtdVenda'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'entregue'
            Title.Caption = 'Entregue'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtentregue'
            Title.Caption = 'Data'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'entregar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Entregar'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Diferenca'
            Title.Caption = 'Diferen'#231'a'
            Visible = True
          end>
      end
      object entgr: TRadioGroup
        Left = 0
        Top = 0
        Width = 734
        Height = 31
        Align = alTop
        Columns = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Tudo'
          'Entregue'
          'N'#227'o Entregue'
          'Entregar')
        ParentFont = False
        TabOrder = 2
        OnClick = entgrClick
      end
    end
    object op: TTabSheet
      Caption = 'op'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 657
        Height = 52
        Align = alTop
        BevelInner = bvLowered
        Color = 16250871
        TabOrder = 0
        object SpeedButton4: TSpeedButton
          Left = 4
          Top = 15
          Width = 51
          Height = 25
          Caption = '&Nova OP'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton4Click
        end
        object btopapagar: TSpeedButton
          Left = 66
          Top = 15
          Width = 63
          Height = 25
          Caption = '&Apagar OP'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btopapagarClick
        end
        object Label89: TLabel
          Left = 478
          Top = 2
          Width = 73
          Height = 14
          Cursor = crHandPoint
          Alignment = taCenter
          AutoSize = False
          Caption = 'Data In'#237'cio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          OnClick = Label89Click
        end
        object Label90: TLabel
          Left = 404
          Top = 2
          Width = 73
          Height = 14
          Cursor = crHandPoint
          Alignment = taCenter
          AutoSize = False
          Caption = 'N'#250'mero OP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          OnClick = Label90Click
        end
        object SpeedButton6: TSpeedButton
          Left = 136
          Top = 15
          Width = 71
          Height = 25
          Caption = '&Finalizar OP'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton6Click
        end
        object SpeedButton7: TSpeedButton
          Left = 212
          Top = 15
          Width = 71
          Height = 25
          Caption = '&Imprimir...'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton7Click
        end
        object Label88: TLabel
          Left = 552
          Top = 2
          Width = 73
          Height = 14
          Cursor = crHandPoint
          Alignment = taCenter
          AutoSize = False
          Caption = 'Data prev'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = True
          OnClick = Label88Click
        end
        object SpeedButton8: TSpeedButton
          Left = 289
          Top = 15
          Width = 71
          Height = 25
          Caption = 'Ence&rradas'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton8Click
        end
        object Bevel5: TBevel
          Left = 370
          Top = 3
          Width = 9
          Height = 48
          Shape = bsRightLine
        end
        object Label2: TLabel
          Left = 628
          Top = 2
          Width = 57
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Peso'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 692
          Top = 2
          Width = 54
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = 'Volume'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object loppeso: TDBText
          Left = 628
          Top = 17
          Width = 57
          Height = 16
          Color = 15794175
          DataField = 'peso'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lopvolume: TDBText
          Left = 692
          Top = 17
          Width = 54
          Height = 16
          Color = 15794175
          DataField = 'volume'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Bevel1: TBevel
          Left = 404
          Top = 33
          Width = 373
          Height = 2
          Shape = bsTopLine
        end
        object Bevel2: TBevel
          Left = 404
          Top = 16
          Width = 373
          Height = 2
          Shape = bsTopLine
        end
        object Label4: TLabel
          Left = 380
          Top = 36
          Width = 39
          Height = 14
          Caption = 'Cliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lopcliente: TDBText
          Left = 456
          Top = 36
          Width = 319
          Height = 12
          Color = 15794175
          DataField = 'obs'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object lopcodcliente: TDBText
          Left = 422
          Top = 36
          Width = 31
          Height = 12
          Color = 15794175
          DataField = 'obs'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object opdata: TDBEdit
          Left = 478
          Top = 17
          Width = 73
          Height = 16
          BevelEdges = [beLeft, beRight]
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15794175
          DataField = 'data'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object openum: TDBEdit
          Left = 404
          Top = 17
          Width = 73
          Height = 16
          BevelEdges = [beLeft, beRight]
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15794175
          DataField = 'numero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object opprev: TDBEdit
          Left = 552
          Top = 17
          Width = 73
          Height = 16
          BevelEdges = [beLeft, beRight]
          BevelInner = bvLowered
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 15794175
          DataField = 'dataprev'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 52
        Width = 657
        Height = 36
        Align = alTop
        BevelOuter = bvNone
        Color = 15794175
        TabOrder = 1
        object btopn: TSpeedButton
          Left = 418
          Top = 5
          Width = 113
          Height = 25
          Caption = 'Alt&erar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btopnClick
        end
        object btopd: TSpeedButton
          Left = 536
          Top = 5
          Width = 97
          Height = 25
          Caption = 'Apagar o ite&m'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btopdClick
        end
        object Label87: TLabel
          Left = 1
          Top = 2
          Width = 305
          Height = 14
          Caption = 'Inserir item:  Digite o c'#243'digo ou descri'#231#227'o e tecle ENTER'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel4: TBevel
          Left = 402
          Top = 3
          Width = 9
          Height = 13
          Shape = bsRightLine
        end
        object elocalizarop: TEdit
          Left = 1
          Top = 17
          Width = 409
          Height = 17
          BevelKind = bkFlat
          BevelOuter = bvRaised
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnKeyDown = elocalizaropKeyDown
        end
      end
      object gradeop: TDBGrid
        Left = 0
        Top = 88
        Width = 657
        Height = 279
        Align = alClient
        Color = 16382712
        DataSource = d1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'codigo'
            Title.Caption = 'C'#243'digo'
            Title.Color = 15921906
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Title.Color = 15921906
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 215
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd'
            Title.Caption = 'Qtd'
            Title.Color = 15921906
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'peso'
            Title.Caption = 'Peso'
            Title.Color = 15921906
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'volume'
            Title.Caption = 'Volume'
            Title.Color = 15921906
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'obs'
            Title.Caption = 'Obs'
            Title.Color = 15921906
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 331
            Visible = True
          end>
      end
      object opobs: TDBMemo
        Left = 0
        Top = 386
        Width = 657
        Height = 47
        Align = alBottom
        BevelInner = bvLowered
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = clWhite
        DataField = 'obs2'
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 3
        OnExit = opobsExit
      end
      object lopobs: TPanel
        Left = 0
        Top = 367
        Width = 657
        Height = 19
        Align = alBottom
        Alignment = taLeftJustify
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Caption = 'Obs - Clique para inserir/alterar'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        TabOrder = 4
        OnClick = lopobsClick
      end
    end
    object combo: TTabSheet
      Caption = 'combo'
      ImageIndex = 2
      object lcombo: TLabel
        Left = 10
        Top = 0
        Width = 254
        Height = 13
        AutoSize = False
        Caption = 'Escolha a conta d'#233'bito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 10
        Top = 48
        Width = 254
        Height = 13
        AutoSize = False
        Caption = 'Escolha a conta cr'#233'dito'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 10
        Top = 96
        Width = 254
        Height = 13
        AutoSize = False
        Caption = 'Escolha a conta para baixa autom'#225'tica'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btokcombo: TBitBtn
        Left = 191
        Top = 144
        Width = 75
        Height = 25
        Caption = 'OK'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btokcomboClick
      end
      object combos: TDBLookupComboBox
        Left = 8
        Top = 17
        Width = 260
        Height = 22
        BevelOuter = bvRaised
        BevelKind = bkFlat
        ListSource = d1
        TabOrder = 1
      end
      object combos2: TDBLookupComboBox
        Left = 8
        Top = 65
        Width = 260
        Height = 22
        BevelOuter = bvRaised
        BevelKind = bkFlat
        ListSource = d2
        TabOrder = 2
      end
      object combos3: TDBLookupComboBox
        Left = 8
        Top = 113
        Width = 260
        Height = 22
        BevelOuter = bvRaised
        BevelKind = bkFlat
        ListSource = d3
        TabOrder = 3
      end
    end
    object cadconta: TTabSheet
      Caption = 'cadconta'
      ImageIndex = 3
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 734
        Height = 49
        ActivePage = TabSheet1
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnChange = PageControl2Change
        object TabSheet1: TTabSheet
          Caption = 'Estrutura'
        end
        object TabSheet2: TTabSheet
          Caption = 'Grupo'
          ImageIndex = 1
        end
        object TabSheet3: TTabSheet
          Caption = 'Subgrupo'
          ImageIndex = 2
        end
        object TabSheet4: TTabSheet
          Caption = 'Conta'
          ImageIndex = 3
        end
      end
      object grade: TDBGrid
        Left = 0
        Top = 86
        Width = 734
        Height = 311
        Hint = 'Clique duplo para alterar'
        Align = alClient
        Color = 16382712
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
        TabOrder = 2
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = 6049863
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        OnDblClick = gradeDblClick
        OnTitleClick = gradeTitleClick
      end
      object Panel1: TPanel
        Left = 0
        Top = 397
        Width = 734
        Height = 36
        Align = alBottom
        BevelOuter = bvNone
        Color = 15794175
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object lnivel1: TLabel
          Left = 2
          Top = -1
          Width = 239
          Height = 14
          AutoSize = False
          Caption = 'N'#237'vel1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lnivel2: TLabel
          Left = 2
          Top = 11
          Width = 239
          Height = 14
          AutoSize = False
          Caption = 'N'#237'vel1'
          Font.Charset = ANSI_CHARSET
          Font.Color = 5439488
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lnivel3: TLabel
          Left = 2
          Top = 24
          Width = 239
          Height = 14
          AutoSize = False
          Caption = 'N'#237'vel1'
          Font.Charset = ANSI_CHARSET
          Font.Color = 11403264
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lnivel5: TLabel
          Left = 245
          Top = 11
          Width = 239
          Height = 14
          AutoSize = False
          Caption = 'N'#237'vel1'
          Font.Charset = ANSI_CHARSET
          Font.Color = 16744448
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object lnivel4: TLabel
          Left = 245
          Top = -1
          Width = 239
          Height = 14
          AutoSize = False
          Caption = 'N'#237'vel1'
          Font.Charset = ANSI_CHARSET
          Font.Color = 16728128
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Bevel3: TBevel
          Left = 0
          Top = 12
          Width = 586
          Height = 2
        end
        object Bevel6: TBevel
          Left = 0
          Top = 25
          Width = 586
          Height = 2
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 49
        Width = 734
        Height = 37
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        object Label6: TLabel
          Left = 2
          Top = -1
          Width = 153
          Height = 14
          Caption = 'Digite e clique em cadastrar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object ECONTA: TEdit
          Left = 1
          Top = 16
          Width = 296
          Height = 17
          BevelKind = bkFlat
          BevelOuter = bvRaised
          BorderStyle = bsNone
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object bcad: TBitBtn
          Left = 304
          Top = 8
          Width = 75
          Height = 25
          Caption = '&Cadastrar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = bcadClick
        end
        object bimp: TBitBtn
          Left = 384
          Top = 8
          Width = 89
          Height = 25
          Caption = '&Imprimir...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = bimpClick
        end
        object rvisualiza: TCheckBox
          Left = 459
          Top = 14
          Width = 12
          Height = 13
          Hint = 'Escolher os campos'
          Alignment = taLeftJustify
          Color = 14342874
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object bconfig: TBitBtn
          Left = 492
          Top = 8
          Width = 45
          Height = 25
          Caption = 'Con&fig'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = bconfigClick
        end
      end
    end
    object bcaixa: TTabSheet
      Caption = 'bcaixa'
      ImageIndex = 4
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 734
        Height = 37
        Align = alTop
        BevelOuter = bvNone
        Color = 15794175
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 357
          Top = 6
          Width = 110
          Height = 31
          Caption = '&Selecionar conta(s)'
          Flat = True
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 485
          Top = 6
          Width = 108
          Height = 31
          Caption = '&Finalizar'
          Flat = True
          OnClick = SpeedButton2Click
        end
        object rgcx: TRadioGroup
          Left = 0
          Top = 0
          Width = 353
          Height = 37
          Align = alLeft
          Caption = 'Seleciona uma op'#231#227'o'
          Columns = 4
          ItemIndex = 0
          Items.Strings = (
            'Dinheiro'
            'Cheque'
            'Cart'#227'o'
            'A Prazo')
          TabOrder = 0
          OnClick = rgcxClick
        end
      end
      object gradecaixa: TDBGrid
        Left = 0
        Top = 37
        Width = 734
        Height = 396
        Hint = 'Clique no cabe'#231'alho de uma coluna para ordenar'
        Align = alClient
        Color = 16382712
        FixedColor = 15395562
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
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
      end
    end
    object precomateria: TTabSheet
      Caption = 'precomateria'
      ImageIndex = 5
      object Bevel11: TBevel
        Left = -1
        Top = 157
        Width = 201
        Height = 21
      end
      object Bevel14: TBevel
        Left = -1
        Top = 318
        Width = 202
        Height = 36
      end
      object Bevel13: TBevel
        Left = -1
        Top = 278
        Width = 202
        Height = 37
      end
      object Bevel12: TBevel
        Left = -1
        Top = 237
        Width = 202
        Height = 38
      end
      object Bevel9: TBevel
        Left = -1
        Top = 19
        Width = 202
        Height = 52
      end
      object Label27: TLabel
        Left = 16
        Top = 23
        Width = 93
        Height = 16
        Cursor = crHandPoint
        Alignment = taRightJustify
        AutoSize = False
        Caption = '&Vr Compra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label28: TLabel
        Left = 16
        Top = 39
        Width = 93
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Qtd/Embalagem'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label29: TLabel
        Left = 15
        Top = 164
        Width = 93
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cust Fin L'#237'quido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lmaximo: TLabel
        Left = 34
        Top = 296
        Width = 74
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vr Atacado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label30: TLabel
        Left = 34
        Top = 240
        Width = 74
        Height = 16
        Cursor = crHandPoint
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Percent'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object lminimo123: TLabel
        Left = 34
        Top = 256
        Width = 74
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vr Varejo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label31: TLabel
        Left = 34
        Top = 280
        Width = 74
        Height = 16
        Cursor = crHandPoint
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Percent'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object bnaltera: TSpeedButton
        Left = 118
        Top = 357
        Width = 81
        Height = 19
        Caption = 'N'#227'o Alterar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = bnalteraClick
      end
      object Label33: TLabel
        Left = 16
        Top = 96
        Width = 93
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Frete'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label98: TLabel
        Left = 34
        Top = 320
        Width = 74
        Height = 16
        Cursor = crHandPoint
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Percent 1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label99: TLabel
        Left = 34
        Top = 336
        Width = 74
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vr Atacado 1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label63: TLabel
        Left = 16
        Top = 79
        Width = 93
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Despesa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 16
        Top = 113
        Width = 93
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'ICM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 16
        Top = 130
        Width = 93
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 15
        Top = 180
        Width = 93
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cust Fin Bruto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label11: TLabel
        Left = 15
        Top = 196
        Width = 93
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total Kg Lt'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label12: TLabel
        Left = 15
        Top = 212
        Width = 93
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total Mat Prima'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 15
        Top = 55
        Width = 93
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cust Fin L'#237'quido'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Bevel7: TBevel
        Left = -1
        Top = 75
        Width = 202
        Height = 72
      end
      object db1: TDBText
        Left = 0
        Top = 0
        Width = 657
        Height = 16
        Align = alTop
        Color = -1
        DataField = 'descricao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object emp1: TDBEdit
        Left = 119
        Top = 21
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrcompra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object emp2: TDBEdit
        Left = 119
        Top = 38
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'fracao'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object emp7: TDBEdit
        Left = 119
        Top = 164
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'custocompraunit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object emp13: TDBEdit
        Left = 119
        Top = 280
        Width = 81
        Height = 15
        HelpType = htKeyword
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'percentatacado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnExit = emp11Exit
      end
      object emp14: TDBEdit
        Left = 119
        Top = 296
        Width = 81
        Height = 15
        HelpType = htKeyword
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vratacado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
      end
      object emp11: TDBEdit
        Left = 119
        Top = 240
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'percent'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnExit = emp11Exit
      end
      object emp12: TDBEdit
        Left = 119
        Top = 256
        Width = 81
        Height = 15
        HelpType = htKeyword
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrvenda'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object baltera: TButton
        Left = 53
        Top = 357
        Width = 65
        Height = 19
        Caption = 'Alterar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
        OnClick = balteraClick
      end
      object emp4: TDBEdit
        Left = 119
        Top = 96
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'frete'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnExit = emp11Exit
      end
      object emp15: TDBEdit
        Left = 119
        Top = 320
        Width = 81
        Height = 15
        HelpType = htKeyword
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'percent3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        OnExit = emp11Exit
      end
      object emp16: TDBEdit
        Left = 119
        Top = 336
        Width = 81
        Height = 15
        HelpType = htKeyword
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'valor3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
      end
      object emp3: TDBEdit
        Left = 119
        Top = 79
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'despesaacessoria'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnExit = emp11Exit
      end
      object emp5: TDBEdit
        Left = 119
        Top = 113
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'Imposto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnExit = emp11Exit
      end
      object emp6: TDBEdit
        Left = 119
        Top = 130
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'IPI'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnExit = emp11Exit
      end
      object emp8: TDBEdit
        Left = 119
        Top = 180
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'vrunit'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object emp9: TDBEdit
        Left = 119
        Top = 196
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'cpliq'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object emp10: TDBEdit
        Left = 119
        Top = 212
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'totalmp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object emp17: TDBEdit
        Left = 119
        Top = 55
        Width = 81
        Height = 15
        BevelInner = bvNone
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BorderStyle = bsNone
        CharCase = ecUpperCase
        DataField = 'custocompra'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
    end
    object prontuario: TTabSheet
      Caption = 'prontuario'
      ImageIndex = 6
      object PageControl3: TPageControl
        Left = 0
        Top = 74
        Width = 734
        Height = 359
        ActivePage = TabSheet6
        Align = alClient
        MultiLine = True
        TabOrder = 0
        TabPosition = tpLeft
        OnChange = PageControl3Change
        object TabSheet5: TTabSheet
          Caption = 'Dados Pessoais'
          object Label20: TLabel
            Left = 248
            Top = 11
            Width = 20
            Height = 14
            Caption = 'Cor'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label21: TLabel
            Left = 333
            Top = 11
            Width = 53
            Height = 14
            Caption = 'Peso (Kg)'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label22: TLabel
            Left = 417
            Top = 11
            Width = 55
            Height = 14
            Caption = 'Natural de'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label23: TLabel
            Left = 432
            Top = 59
            Width = 21
            Height = 14
            Caption = 'CPF'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label24: TLabel
            Left = 545
            Top = 59
            Width = 15
            Height = 14
            Caption = 'RG'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label25: TLabel
            Left = 257
            Top = 59
            Width = 71
            Height = 14
            Caption = 'Respons'#225'vel'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label26: TLabel
            Left = 107
            Top = 99
            Width = 32
            Height = 14
            Caption = 'E-Mail'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label32: TLabel
            Left = 368
            Top = 99
            Width = 24
            Height = 14
            Caption = 'MSN'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label34: TLabel
            Left = 250
            Top = 139
            Width = 16
            Height = 14
            Caption = 'Pai'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label35: TLabel
            Left = 439
            Top = 139
            Width = 23
            Height = 14
            Caption = 'M'#227'e'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label36: TLabel
            Left = 1
            Top = 179
            Width = 52
            Height = 14
            Caption = 'Endere'#231'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label37: TLabel
            Left = 469
            Top = 179
            Width = 33
            Height = 14
            Caption = 'Bairro'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label38: TLabel
            Left = 1
            Top = 219
            Width = 38
            Height = 14
            Caption = 'Cidade'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label39: TLabel
            Left = 260
            Top = 219
            Width = 22
            Height = 14
            Caption = 'Cep'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label40: TLabel
            Left = 345
            Top = 219
            Width = 37
            Height = 14
            Caption = 'Estado'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label41: TLabel
            Left = 430
            Top = 219
            Width = 43
            Height = 14
            Caption = 'Contato'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label42: TLabel
            Left = 1
            Top = 260
            Width = 21
            Height = 14
            Caption = 'DDD'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label43: TLabel
            Left = 44
            Top = 260
            Width = 48
            Height = 14
            Caption = 'Telefone'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label44: TLabel
            Left = 140
            Top = 260
            Width = 57
            Height = 14
            Caption = 'Telefone 2'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label45: TLabel
            Left = 235
            Top = 260
            Width = 57
            Height = 14
            Caption = 'Telefone 3'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label46: TLabel
            Left = 329
            Top = 260
            Width = 34
            Height = 14
            Caption = 'Skype'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label47: TLabel
            Left = 106
            Top = 59
            Width = 98
            Height = 14
            Caption = 'Grau de instru'#231#227'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label48: TLabel
            Left = 107
            Top = 139
            Width = 68
            Height = 14
            Caption = 'Indicado por'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label49: TLabel
            Left = 1
            Top = 308
            Width = 25
            Height = 14
            Caption = 'Obs:'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label50: TLabel
            Left = 290
            Top = 179
            Width = 10
            Height = 14
            Caption = 'N.'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label51: TLabel
            Left = 347
            Top = 179
            Width = 79
            Height = 14
            Caption = 'Complemento'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object vimagep: TDBImage
            Left = 1
            Top = 60
            Width = 100
            Height = 109
            Cursor = crHandPoint
            Hint = 'Clique para adicionar/alterar a imagem'
            BorderStyle = bsNone
            Color = 6049863
            Font.Charset = ANSI_CHARSET
            Font.Color = 6049863
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Stretch = True
            TabOrder = 0
          end
          object pr7: TDBRadioGroup
            Left = 1
            Top = -2
            Width = 100
            Height = 44
            Caption = 'Sexo'
            DataField = 'sexo'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Items.Strings = (
              'Masculino'
              'Femenino')
            ParentFont = False
            TabOrder = 1
            Values.Strings = (
              'M'
              'F')
          end
          object pr9: TDBEdit
            Left = 248
            Top = 25
            Width = 81
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'cor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object pr8: TDBRadioGroup
            Left = 99
            Top = -2
            Width = 145
            Height = 44
            Caption = 'Estado Civil'
            Columns = 2
            DataField = 'Estadocivil'
            Font.Charset = ANSI_CHARSET
            Font.Color = 3487029
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Items.Strings = (
              'Solteiro'
              'Casado'
              'Divorc'
              'Outros')
            ParentFont = False
            TabOrder = 3
            Values.Strings = (
              'S'
              'C'
              'D'
              'O')
          end
          object pr10: TDBEdit
            Left = 333
            Top = 25
            Width = 81
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'peso'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object pr11: TDBEdit
            Left = 417
            Top = 25
            Width = 210
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'naturalidade'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object pr14: TDBEdit
            Left = 432
            Top = 73
            Width = 110
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'cnpj'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 8
          end
          object pr15: TDBEdit
            Left = 545
            Top = 73
            Width = 81
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'ie'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object pr13: TDBEdit
            Left = 257
            Top = 73
            Width = 172
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'responsavel'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 7
          end
          object pr16: TDBEdit
            Left = 107
            Top = 113
            Width = 255
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'email'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 10
          end
          object pr17: TDBEdit
            Left = 368
            Top = 113
            Width = 258
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'msn'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
          end
          object pr19: TDBEdit
            Left = 250
            Top = 153
            Width = 184
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'pai'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 13
          end
          object pr20: TDBEdit
            Left = 439
            Top = 153
            Width = 187
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'mae'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
          end
          object pr21: TDBEdit
            Left = 1
            Top = 193
            Width = 281
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'endereco'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 15
          end
          object pr22: TDBEdit
            Left = 469
            Top = 193
            Width = 157
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'bairro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 18
          end
          object pr23: TDBEdit
            Left = 1
            Top = 233
            Width = 255
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'municipio'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 19
          end
          object pr24: TDBEdit
            Left = 260
            Top = 233
            Width = 82
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'cep'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 20
          end
          object pr25: TDBEdit
            Left = 345
            Top = 233
            Width = 82
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'uf'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 21
          end
          object pr26: TDBEdit
            Left = 430
            Top = 233
            Width = 196
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'contato'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 22
          end
          object pr27: TDBEdit
            Left = 1
            Top = 274
            Width = 28
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'ddd'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 23
          end
          object pr28: TDBEdit
            Left = 44
            Top = 274
            Width = 81
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'fone'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 24
          end
          object pr29: TDBEdit
            Left = 140
            Top = 274
            Width = 81
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'fone2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 25
          end
          object pr30: TDBEdit
            Left = 235
            Top = 274
            Width = 81
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'fone3'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 26
          end
          object pr31: TDBEdit
            Left = 329
            Top = 274
            Width = 297
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'skype'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 27
          end
          object pr12: TDBEdit
            Left = 106
            Top = 73
            Width = 148
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'instrucao'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object pr18: TDBEdit
            Left = 107
            Top = 153
            Width = 137
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'Indicado_por'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 12
          end
          object pr32: TDBEdit
            Left = 30
            Top = 307
            Width = 594
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'obs'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 28
          end
          object pr33: TDBMemo
            Left = 0
            Top = 315
            Width = 707
            Height = 36
            Align = alBottom
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 6049863
            DataField = 'obs1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 29
          end
          object pr34: TDBEdit
            Left = 287
            Top = 193
            Width = 51
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'numero'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 16
          end
          object pr35: TDBEdit
            Left = 344
            Top = 193
            Width = 119
            Height = 16
            BevelInner = bvNone
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BorderStyle = bsNone
            CharCase = ecUpperCase
            DataField = 'complemento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 17
          end
        end
        object TabSheet6: TTabSheet
          Caption = 'Acompanhamento'
          ImageIndex = 1
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 707
            Height = 84
            Align = alTop
            BevelOuter = bvNone
            Color = clSilver
            TabOrder = 0
            object btnnovop: TSpeedButton
              Left = 1
              Top = 12
              Width = 91
              Height = 50
              Cursor = crHandPoint
              HelpType = htKeyword
              Caption = 'Diagn'#243'stico'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Layout = blGlyphTop
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              OnClick = btnnovopClick
            end
            object btnimprimirp: TSpeedButton
              Left = 205
              Top = 12
              Width = 91
              Height = 50
              Cursor = crHandPoint
              Caption = 'Imprimir'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Layout = blGlyphTop
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              OnClick = btnimprimirpClick
            end
            object Label52: TLabel
              Left = 16
              Top = 68
              Width = 71
              Height = 14
              Caption = 'Diagn'#243'sticos'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object btneditarp: TSpeedButton
              Left = 94
              Top = 12
              Width = 110
              Height = 50
              Cursor = crHandPoint
              HelpType = htKeyword
              Caption = 'Acompanhamento'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Layout = blGlyphTop
              ParentFont = False
              ParentShowHint = False
              ShowHint = False
              OnClick = btneditarpClick
            end
            object btnanotacoesp: TSpeedButton
              Left = 298
              Top = 12
              Width = 92
              Height = 50
              Cursor = crHandPoint
              HelpType = htKeyword
              Caption = 'Agenda'
              Flat = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Layout = blGlyphTop
              ParentFont = False
              OnClick = btnanotacoespClick
            end
            object rv2: TCheckBox
              Left = 206
              Top = 43
              Width = 13
              Height = 12
              Hint = 'Escolher os campos'
              Alignment = taLeftJustify
              Color = 16056319
              Font.Charset = ANSI_CHARSET
              Font.Color = 6049863
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
            end
          end
          object gprontuario: TDBGrid
            Left = 0
            Top = 84
            Width = 707
            Height = 68
            Hint = 'Clique no cabe'#231'alho de uma coluna para ordenar'
            Align = alClient
            Color = 16382712
            FixedColor = 15395562
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
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = [fsBold]
          end
          object Panel9: TPanel
            Left = 0
            Top = 152
            Width = 707
            Height = 199
            Align = alBottom
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 2
            object StaticText1: TStaticText
              Left = 0
              Top = 0
              Width = 108
              Height = 19
              Align = alTop
              Alignment = taCenter
              Caption = 'Acompanhamento'
              Color = 3487029
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object gprontuarioitem: TDBGrid
              Left = 0
              Top = 19
              Width = 225
              Height = 180
              Hint = 'Clique no cabe'#231'alho de uma coluna para ordenar'
              Align = alLeft
              Color = 16382712
              FixedColor = 15395562
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
              TitleFont.Color = clBlack
              TitleFont.Height = -11
              TitleFont.Name = 'Arial'
              TitleFont.Style = [fsBold]
            end
            object emp: TDBMemo
              Left = 225
              Top = 40
              Width = 405
              Height = 159
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              Color = 16383999
              DataField = 'obs'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 2
            end
          end
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 734
        Height = 74
        Align = alTop
        BevelOuter = bvNone
        Color = 16382457
        TabOrder = 1
        object Label14: TLabel
          Left = 1
          Top = 2
          Width = 76
          Height = 14
          Caption = 'Data Cadastro'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3487029
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label15: TLabel
          Left = 101
          Top = 2
          Width = 39
          Height = 14
          Caption = 'C'#243'digo'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3487029
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel
          Left = 201
          Top = 2
          Width = 32
          Height = 14
          Caption = 'Nome'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3487029
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label18: TLabel
          Left = 1
          Top = 34
          Width = 65
          Height = 14
          Caption = 'Nascimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3487029
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label19: TLabel
          Left = 100
          Top = 34
          Width = 30
          Height = 14
          Caption = 'Idade'
          Font.Charset = ANSI_CHARSET
          Font.Color = 3487029
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object pr1: TDBEdit
          Left = 1
          Top = 16
          Width = 81
          Height = 16
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'data'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object pr2: TDBEdit
          Left = 101
          Top = 16
          Width = 81
          Height = 16
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'codigo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object pr3: TDBEdit
          Left = 201
          Top = 16
          Width = 455
          Height = 23
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Color = 16383999
          DataField = 'nome'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object pr4: TDBEdit
          Left = 1
          Top = 48
          Width = 81
          Height = 16
          BevelInner = bvNone
          BevelOuter = bvRaised
          BevelKind = bkFlat
          BorderStyle = bsNone
          CharCase = ecUpperCase
          DataField = 'nascimento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object pr5: TEdit
          Left = 101
          Top = 48
          Width = 81
          Height = 16
          BevelInner = bvNone
          BevelKind = bkFlat
          BevelOuter = bvRaised
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
      end
    end
    object passacheque: TTabSheet
      Caption = 'passacheque'
      ImageIndex = 7
      object pcabeca: TPanel
        Left = 0
        Top = 0
        Width = 734
        Height = 62
        Align = alTop
        BevelInner = bvLowered
        Color = 16119285
        TabOrder = 0
        object Label54: TLabel
          Left = 224
          Top = 15
          Width = 109
          Height = 20
          Caption = 'Localizar N'#250'mero'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object btnconfirmar: TSpeedButton
          Left = 629
          Top = 35
          Width = 100
          Height = 27
          Cursor = crHandPoint
          HelpType = htKeyword
          Caption = '&Confirmar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnconfirmarClick
        end
        object Label55: TLabel
          Left = 54
          Top = 15
          Width = 108
          Height = 20
          Caption = 'N'#250'mero da Conta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object ec1: TEdit
          Left = 224
          Top = 36
          Width = 401
          Height = 24
          BevelInner = bvLowered
          BevelKind = bkFlat
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          OnChange = ec1Change
          OnKeyDown = ec1KeyDown
        end
        object ec2: TEdit
          Left = 1
          Top = 36
          Width = 222
          Height = 24
          BevelInner = bvLowered
          BevelKind = bkFlat
          BiDiMode = bdLeftToRight
          BorderStyle = bsNone
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnChange = ec2Change
          OnKeyDown = ec2KeyDown
        end
      end
      object gcheque: TDBGrid
        Left = 0
        Top = 62
        Width = 734
        Height = 177
        Hint = 'Clique no cabe'#231'alho da coluna para ordenar'
        Align = alClient
        Color = 16382712
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = gchequeDblClick
        OnTitleClick = gchequeTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'dtemissao'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Title.Caption = 'Emiss'#227'o'
            Title.Color = 15987699
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtvencimento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Title.Caption = 'Vencto'
            Title.Color = 15987699
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Title.Caption = 'Valor'
            Title.Color = 15987699
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'conta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Title.Caption = 'Conta'
            Title.Color = 15987699
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cheque'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -16
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Title.Caption = 'Cheque'
            Title.Color = 15987699
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'banco'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Title.Caption = 'Banco'
            Title.Color = 15987699
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'agencia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Title.Caption = 'Ag'#234'ncia'
            Title.Color = 15987699
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Title.Caption = 'C'#243'digo'
            Title.Color = 15987699
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Title.Caption = 'Nome'
            Title.Color = 15987699
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 192
            Visible = True
          end>
      end
      object cm1: TDBMemo
        Left = 0
        Top = 239
        Width = 734
        Height = 28
        Align = alBottom
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = 4473924
        DataField = 'obs'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 2
      end
      object Panel10: TPanel
        Left = 0
        Top = 392
        Width = 734
        Height = 41
        Align = alBottom
        BevelInner = bvSpace
        BevelOuter = bvLowered
        TabOrder = 3
        object Bevel8: TBevel
          Left = 424
          Top = 0
          Width = 306
          Height = 39
        end
        object tt2: TLabel
          Left = 434
          Top = 4
          Width = 90
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Soma Cheque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object tt3: TLabel
          Left = 533
          Top = 4
          Width = 90
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'A Pagar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object tt1: TLabel
          Left = 633
          Top = 4
          Width = 90
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = 'Diferen'#231'a'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object c1: TLabel
          Left = 434
          Top = 20
          Width = 90
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = '0,00'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          WordWrap = True
        end
        object c2: TLabel
          Left = 533
          Top = 20
          Width = 90
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = '0,00'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          WordWrap = True
        end
        object c3: TLabel
          Left = 633
          Top = 20
          Width = 90
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Caption = '0,00'
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          WordWrap = True
        end
        object bch: TButton
          Left = 5
          Top = 8
          Width = 60
          Height = 25
          Caption = 'Apagar'
          TabOrder = 0
          OnClick = bchClick
        end
      end
      object gcheque2: TDBGrid
        Left = 0
        Top = 267
        Width = 734
        Height = 125
        Hint = 'Clique no cabe'#231'alho da coluna para ordenar'
        Align = alBottom
        Color = 16382712
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'banco'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Title.Caption = 'Banco'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -16
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'agencia'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Title.Caption = 'Ag'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -16
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'conta'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Title.Caption = 'Conta'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -16
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cheque'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Title.Caption = 'Cheque'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -16
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Title.Caption = 'Nome'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -16
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 282
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial Narrow'
            Font.Style = [fsBold]
            Title.Caption = 'Valor'
            Title.Color = 14342874
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -16
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 124
            Visible = True
          end>
      end
    end
  end
  object btnsair: TBitBtn
    Left = 552
    Top = 104
    Width = 72
    Height = 25
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
  object qmedico: TRLReport
    Left = 6
    Top = -2000
    Width = 794
    Height = 1123
    AdjustableMargins = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Transparent = False
    object RLBand1: TRLBand
      Left = 38
      Top = 184
      Width = 718
      Height = 35
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = True
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Color = clWhite
      ParentColor = False
      Transparent = False
      object RLDBText2: TRLDBText
        Left = 0
        Top = 18
        Width = 201
        Height = 16
        AutoSize = False
        DataField = 'descricao'
        DataSource = d2
      end
      object RLLabel4: TRLLabel
        Left = 0
        Top = 2
        Width = 78
        Height = 16
        Caption = 'Diagn'#243'stico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 208
        Top = 2
        Width = 43
        Height = 16
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 304
        Top = 2
        Width = 50
        Height = 16
        Caption = 'M'#233'dico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 456
        Top = 2
        Width = 64
        Height = 16
        Caption = 'Conv'#233'nio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel7: TRLLabel
        Left = 576
        Top = 2
        Width = 39
        Height = 16
        Caption = 'In'#237'cio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 648
        Top = 2
        Width = 28
        Height = 16
        Caption = 'Fim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText4: TRLDBText
        Left = 208
        Top = 18
        Width = 92
        Height = 16
        AutoSize = False
        DataField = 'status'
        DataSource = d2
      end
      object RLDBText5: TRLDBText
        Left = 304
        Top = 18
        Width = 149
        Height = 16
        AutoSize = False
        DataField = 'medico'
        DataSource = d2
      end
      object RLDBText6: TRLDBText
        Left = 456
        Top = 18
        Width = 117
        Height = 16
        AutoSize = False
        DataField = 'convenio'
        DataSource = d2
      end
      object RLDBText7: TRLDBText
        Left = 576
        Top = 18
        Width = 68
        Height = 16
        AutoSize = False
        DataField = 'inicio'
        DataSource = d2
      end
      object RLDBText8: TRLDBText
        Left = 648
        Top = 18
        Width = 67
        Height = 16
        AutoSize = False
        DataField = 'fim'
        DataSource = d2
      end
    end
    object qdatil: TRLSubDetail
      Left = 38
      Top = 219
      Width = 718
      Height = 136
      Color = clWhite
      Margins.LeftMargin = 10.000000000000000000
      ParentColor = False
      Transparent = False
      object RLBand2: TRLBand
        Left = 38
        Top = 0
        Width = 680
        Height = 14
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
        Top = 14
        Width = 680
        Height = 75
        AutoSize = True
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Color = clWhite
        ParentColor = False
        Transparent = False
        object RLDBMemo1: TRLDBMemo
          Left = 88
          Top = 59
          Width = 622
          Height = 16
          DataField = 'obs'
          DataSource = d3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object RLDBText1: TRLDBText
          Left = 0
          Top = 40
          Width = 29
          Height = 16
          DataField = 'data'
          DataSource = d3
        end
        object RLDBText3: TRLDBText
          Left = 88
          Top = 40
          Width = 60
          Height = 16
          DataField = 'descricao'
          DataSource = d3
        end
        object RLLabel1: TRLLabel
          Left = -1
          Top = 18
          Width = 90
          Height = 17
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 87
          Top = 18
          Width = 292
          Height = 17
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object RLBand4: TRLBand
        Left = 38
        Top = 89
        Width = 680
        Height = 21
        BandType = btSummary
        Color = clWhite
        ParentColor = False
        Transparent = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 173
      Width = 718
      Height = 11
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
    object RLBand6: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 135
      BandType = btHeader
      Color = clWhite
      Degrade.OppositeColor = clWhite
      ParentColor = False
      object pi1: TRLImage
        Left = 4
        Top = 36
        Width = 80
        Height = 90
        Scaled = True
        Transparent = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 566
        Top = 122
        Width = 150
        Height = 10
        Alignment = taRightJustify
        Anchors = [fkRight]
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPagePreview
        ParentColor = False
        ParentFont = False
        Text = 'Pag.: # de #'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 614
        Top = 122
        Width = 37
        Height = 10
        Alignment = taRightJustify
        Anchors = [fkRight]
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        Info = itFullDate
        ParentColor = False
        ParentFont = False
      end
      object pfantasia: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 28
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'N'#250'mero da NF'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel9: TRLLabel
        Left = 95
        Top = 34
        Width = 90
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Nome:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel10: TRLLabel
        Left = 95
        Top = 52
        Width = 90
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText9: TRLDBText
        Left = 192
        Top = 34
        Width = 49
        Height = 17
        AutoSize = False
        DataField = 'codigo'
        DataSource = d1
      end
      object RLDBText10: TRLDBText
        Left = 248
        Top = 34
        Width = 36
        Height = 16
        DataField = 'nome'
        DataSource = d1
      end
      object RLLabel11: TRLLabel
        Left = 95
        Top = 71
        Width = 90
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 348
        Top = 71
        Width = 53
        Height = 16
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 536
        Top = 71
        Width = 33
        Height = 16
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Cep:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 656
        Top = 71
        Width = 25
        Height = 16
        Alignment = taRightJustify
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel15: TRLLabel
        Left = 95
        Top = 90
        Width = 90
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Telefones:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel16: TRLLabel
        Left = 95
        Top = 109
        Width = 90
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'E-Mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText11: TRLDBText
        Left = 192
        Top = 52
        Width = 49
        Height = 17
        AutoSize = False
        DataSource = d1
        BeforePrint = RLDBText11BeforePrint
      end
      object RLDBText12: TRLDBText
        Left = 192
        Top = 71
        Width = 49
        Height = 17
        AutoSize = False
        DataField = 'bairro'
        DataSource = d1
      end
      object RLDBText13: TRLDBText
        Left = 192
        Top = 90
        Width = 33
        Height = 17
        AutoSize = False
        DataField = 'ddd'
        DataSource = d1
      end
      object RLDBText14: TRLDBText
        Left = 192
        Top = 109
        Width = 521
        Height = 17
        AutoSize = False
        DataField = 'email'
        DataSource = d1
        Transparent = False
      end
      object RLDBText15: TRLDBText
        Left = 408
        Top = 71
        Width = 123
        Height = 16
        AutoSize = False
        DataField = 'municipio'
        DataSource = d1
      end
      object RLDBText16: TRLDBText
        Left = 576
        Top = 71
        Width = 25
        Height = 16
        DataField = 'cep'
        DataSource = d1
      end
      object RLDBText17: TRLDBText
        Left = 688
        Top = 71
        Width = 14
        Height = 16
        DataField = 'uf'
        DataSource = d1
      end
      object RLDBText18: TRLDBText
        Left = 224
        Top = 90
        Width = 89
        Height = 17
        AutoSize = False
        DataField = 'fone'
        DataSource = d1
      end
      object RLDBText19: TRLDBText
        Left = 320
        Top = 90
        Width = 89
        Height = 17
        AutoSize = False
        DataField = 'fone2'
        DataSource = d1
      end
      object RLDBText20: TRLDBText
        Left = 416
        Top = 90
        Width = 89
        Height = 17
        AutoSize = False
        DataField = 'fone3'
        DataSource = d1
      end
    end
  end
  object ActionList1: TActionList
    Left = 168
    Top = 224
    object entrega_: TAction
      Caption = 'entrega_'
      OnExecute = entrega_Execute
    end
    object op_: TAction
      Caption = 'op_'
      OnExecute = op_Execute
    end
    object opselitem: TAction
      Caption = 'opselitem'
      OnExecute = opselitemExecute
    end
    object combo_: TAction
      Caption = 'combo_'
      OnExecute = combo_Execute
    end
    object cadconta_: TAction
      Caption = 'cadconta_'
      OnExecute = cadconta_Execute
    end
    object bcaixa_: TAction
      Caption = 'bcaixa_'
      OnExecute = bcaixa_Execute
    end
    object precomateria_: TAction
      Caption = 'precomateria_'
      OnExecute = precomateria_Execute
    end
    object prontuario_: TAction
      Caption = 'prontuario_'
      OnExecute = prontuario_Execute
    end
    object passacheque_: TAction
      Caption = 'passacheque_'
      OnExecute = passacheque_Execute
    end
    object scheque: TAction
      Caption = 'scheque'
      OnExecute = schequeExecute
    end
    object sinserir: TAction
      Caption = 'sinserir'
      OnExecute = sinserirExecute
    end
  end
  object d1: TDataSource
    DataSet = t1
    OnDataChange = d1DataChange
    Left = 264
    Top = 160
  end
  object tb1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 184
  end
  object p1: TDataSetProvider
    Left = 376
    Top = 184
  end
  object t1: TZQuery
    Connection = fdm.conector
    Params = <>
    Left = 216
    Top = 168
  end
  object t2: TZQuery
    Connection = fdm.conector
    AfterScroll = t2AfterScroll
    SQL.Strings = (
      
        'select tbm.uf, tbm.uf as estado, sum(tbs.totnf) as vrcontabil,  ' +
        'sum(tbs.baseicm) as basecalc,  sum(tbs.VrIcms) as icms,  sum(tbs' +
        '.baseicmisento) as isento,  sum(tbs.baseoutros) as outros,'
      
        ' sum(tbs.totnf-tbs.totnf)as debito,   sum(tbs.totnf-tbs.totnf)as' +
        ' estorno '
      
        'from tbentrada tbm, tbentradaitem   tbs where (tbm.data between ' +
        #39'2008/09/01'#39' and '#39'2008/09/13'#39') and tbm.modo = "F"  and tbs.link=' +
        'tbm.chave group by tbm.uf order by tbm.uf')
    Params = <>
    Left = 224
    Top = 224
  end
  object d2: TDataSource
    DataSet = t2
    Left = 272
    Top = 224
  end
  object n2: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      
        'select chave, chave as codigo, descricao from tbnivel2 order by ' +
        'descricao')
    Params = <>
    Left = 352
    Top = 24
  end
  object n3: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      
        'select chave, chave as codigo, descricao,link from tbnivel3 orde' +
        'r by descricao')
    Params = <>
    MasterFields = 'chave'
    MasterSource = dn2
    LinkedFields = 'link'
    Left = 400
    Top = 24
  end
  object n4: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      
        'select chave, chave as codigo, descricao,  link from tbdespesa  ' +
        'order by descricao')
    Params = <>
    MasterFields = 'chave'
    MasterSource = dn3
    LinkedFields = 'link'
    Left = 448
    Top = 24
  end
  object n5: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      
        'select chave, codigo, descricao, contaanalitica, codnivel4 as li' +
        'nk from tbconta  order by descricao')
    Params = <>
    MasterFields = 'chave'
    MasterSource = dn4
    LinkedFields = 'link'
    Left = 504
    Top = 24
  end
  object dn2: TDataSource
    DataSet = n2
    Left = 352
    Top = 43
  end
  object dn3: TDataSource
    DataSet = n3
    Left = 400
    Top = 43
  end
  object dn4: TDataSource
    DataSet = n4
    Left = 456
    Top = 43
  end
  object dn5: TDataSource
    DataSet = n5
    Left = 504
    Top = 43
  end
  object d4: TDataSource
    DataSet = t4
    Left = 256
    Top = 376
  end
  object d3: TDataSource
    DataSet = t3
    OnDataChange = d1DataChange
    Left = 272
    Top = 304
  end
  object t3: TZQuery
    Connection = fdm.conector
    Params = <>
    Left = 224
    Top = 304
  end
  object t4: TZQuery
    Connection = fdm.conector
    AfterScroll = t2AfterScroll
    SQL.Strings = (
      
        'select tbm.uf, tbm.uf as estado, sum(tbs.totnf) as vrcontabil,  ' +
        'sum(tbs.baseicm) as basecalc,  sum(tbs.VrIcms) as icms,  sum(tbs' +
        '.baseicmisento) as isento,  sum(tbs.baseoutros) as outros,'
      
        ' sum(tbs.totnf-tbs.totnf)as debito,   sum(tbs.totnf-tbs.totnf)as' +
        ' estorno '
      
        'from tbentrada tbm, tbentradaitem   tbs where (tbm.data between ' +
        #39'2008/09/01'#39' and '#39'2008/09/13'#39') and tbm.modo = "F"  and tbs.link=' +
        'tbm.chave group by tbm.uf order by tbm.uf')
    Params = <>
    Left = 200
    Top = 368
  end
  object tb2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 224
  end
  object p2: TDataSetProvider
    Left = 384
    Top = 224
  end
  object tb3: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 304
  end
  object p3: TDataSetProvider
    Left = 384
    Top = 304
  end
  object tb4: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 312
    Top = 376
  end
  object p4: TDataSetProvider
    Left = 352
    Top = 376
  end
  object cheque: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 508
    Top = 321
    object chequechave: TIntegerField
      FieldName = 'chave'
    end
    object chequebanco: TStringField
      FieldName = 'banco'
    end
    object chequeagencia: TStringField
      FieldName = 'agencia'
      Size = 10
    end
    object chequeconta: TStringField
      FieldName = 'conta'
      Size = 10
    end
    object chequecheque: TStringField
      FieldName = 'cheque'
    end
    object chequetotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '##0.00'
    end
    object chequenome: TStringField
      FieldName = 'nome'
      Size = 60
    end
  end
end
