object fmovimento: Tfmovimento
  Left = 35
  Top = 120
  Width = 798
  Height = 568
  Caption = 'MOVIMENTO DO DIA'
  Color = 15329769
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 14
  object pagecontrol1: TPageControl
    Left = 0
    Top = 95
    Width = 790
    Height = 446
    ActivePage = Tabcoms
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = pagecontrol1Change
    object Tabvenda: TTabSheet
      Caption = 'Vendas/OS'
      OnShow = TabvendaShow
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 782
        Height = 418
        ActivePage = Tabvendaservico
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MultiLine = True
        ParentFont = False
        TabOrder = 0
        TabPosition = tpLeft
        OnChange = PageControl2Change
        object Tabvendag: TTabSheet
          Caption = 'Vendas'
          OnShow = TabvendagShow
          object g0: TDBGrid
            Left = 0
            Top = 0
            Width = 755
            Height = 233
            Hint = 'Clique no cabe'#231'alho da coluna para ordenar'
            Align = alClient
            Color = 16382712
            DataSource = dsvenda
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
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = 6049863
            TitleFont.Height = -11
            TitleFont.Name = 'Arial'
            TitleFont.Style = [fsBold]
            OnTitleClick = g0TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'modo'
                Title.Caption = 'Status'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'data'
                Title.Caption = 'Emiss'#227'o'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DtFechamento'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'numero'
                Title.Caption = 'N'#250'mero'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 46
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'codigo'
                Title.Caption = 'Codigo'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 44
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome'
                Title.Caption = 'Cliente'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 182
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'codigovendedor'
                Title.Caption = 'Vendedor'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nf'
                Title.Caption = 'NF'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'total'
                Title.Caption = 'Total'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dinheiro'
                Title.Caption = 'Dinheiro'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'credito'
                Title.Caption = 'Cr'#233'dito'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cheque'
                Title.Caption = 'Cheque'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'chequepre'
                Title.Caption = 'Chequepre'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cartao'
                Title.Caption = 'CartaoC'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cartaod'
                Title.Caption = 'Cart'#227'oD'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'fiado'
                Title.Caption = 'A Prazo'
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end>
          end
          object mobs: TDBMemo
            Left = 0
            Top = 292
            Width = 755
            Height = 75
            Align = alBottom
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BiDiMode = bdRightToLeft
            BorderStyle = bsNone
            DataSource = dsvenda
            ParentBiDiMode = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 1
            Visible = False
          end
          object mobs2: TDBMemo
            Left = 0
            Top = 367
            Width = 755
            Height = 36
            Align = alBottom
            BevelOuter = bvRaised
            BevelKind = bkFlat
            BiDiMode = bdRightToLeft
            BorderStyle = bsNone
            DataSource = dsvenda
            ParentBiDiMode = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 2
            Visible = False
          end
          object potica: TPanel
            Left = 0
            Top = 233
            Width = 755
            Height = 59
            Align = alBottom
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 3
            object Shape1: TShape
              Left = 24
              Top = 12
              Width = 21
              Height = 12
              Brush.Style = bsClear
            end
            object Label48: TLabel
              Left = 62
              Top = 0
              Width = 19
              Height = 14
              Caption = 'ESF'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label49: TLabel
              Left = 26
              Top = 11
              Width = 15
              Height = 14
              Caption = 'OD'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Shape2: TShape
              Left = 24
              Top = 23
              Width = 21
              Height = 12
              Brush.Style = bsClear
            end
            object Label50: TLabel
              Left = 26
              Top = 22
              Width = 14
              Height = 14
              Caption = 'OE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label51: TLabel
              Left = 26
              Top = 34
              Width = 15
              Height = 14
              Caption = 'OD'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Shape3: TShape
              Left = 24
              Top = 35
              Width = 21
              Height = 12
              Brush.Style = bsClear
            end
            object Shape4: TShape
              Left = 24
              Top = 46
              Width = 21
              Height = 12
              Brush.Style = bsClear
            end
            object Label52: TLabel
              Left = 26
              Top = 45
              Width = 14
              Height = 14
              Caption = 'OE'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label53: TLabel
              Left = 110
              Top = 0
              Width = 18
              Height = 14
              Caption = 'CIL'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label54: TLabel
              Left = 157
              Top = 0
              Width = 24
              Height = 14
              Caption = 'EIXO'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label55: TLabel
              Left = 206
              Top = 0
              Width = 21
              Height = 14
              Caption = 'DNP'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label60: TLabel
              Left = 254
              Top = 0
              Width = 21
              Height = 14
              Caption = 'ALT'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object Label70: TLabel
              Left = 292
              Top = 0
              Width = 42
              Height = 14
              Caption = 'ADI'#199#195'O'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
              Transparent = True
            end
            object eo8: TDBEdit
              Left = 96
              Top = 48
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'cil_oe_l'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 7
            end
            object RLAngleLabel1: TRLAngleLabel
              Left = 11
              Top = 7
              Width = 13
              Height = 90
              Angle = 270.000000000000000000
              AutoSize = False
              Caption = 'Perto Long'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial Narrow'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object eo1: TDBEdit
              Left = 48
              Top = 12
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'esf_od_p'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object eo2: TDBEdit
              Left = 48
              Top = 24
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'esf_oe_p'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object eo3: TDBEdit
              Left = 48
              Top = 36
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'esf_od_l'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object eo4: TDBEdit
              Left = 48
              Top = 48
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'esf_oe_l'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object eo5: TDBEdit
              Left = 96
              Top = 12
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'cil_od_p'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
            end
            object eo6: TDBEdit
              Left = 96
              Top = 24
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'cil_oe_p'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
            end
            object eo7: TDBEdit
              Left = 96
              Top = 36
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'cil_od_l'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 6
            end
            object eo9: TDBEdit
              Left = 144
              Top = 12
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'eixo_od_p'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 8
            end
            object eo10: TDBEdit
              Left = 144
              Top = 24
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'eixo_oe_p'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 9
            end
            object eo11: TDBEdit
              Left = 144
              Top = 36
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'eixo_od_l'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 10
            end
            object eo12: TDBEdit
              Left = 144
              Top = 48
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'eixo_oe_l'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 11
            end
            object eo13: TDBEdit
              Left = 192
              Top = 12
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'dnp_od_p'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 12
            end
            object eo14: TDBEdit
              Left = 192
              Top = 24
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'dnp_oe_p'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 13
            end
            object eo15: TDBEdit
              Left = 192
              Top = 36
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'dnp_od_l'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 14
            end
            object eo16: TDBEdit
              Left = 192
              Top = 48
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'dnp_oe_l'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 15
            end
            object eo17: TDBEdit
              Left = 240
              Top = 12
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'alt_od_p'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 16
            end
            object eo18: TDBEdit
              Left = 240
              Top = 24
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'alt_oe_p'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 17
            end
            object eo19: TDBEdit
              Left = 240
              Top = 36
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'alt_od_l'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 18
            end
            object eo20: TDBEdit
              Left = 240
              Top = 48
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'alt_oe_l'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 19
            end
            object eo21: TDBEdit
              Left = 288
              Top = 12
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'adicao_od_p'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 20
            end
            object eo22: TDBEdit
              Left = 288
              Top = 24
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'adicao_oe_p'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 21
            end
            object eo23: TDBEdit
              Left = 288
              Top = 36
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'adicao_od_l'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 22
            end
            object eo24: TDBEdit
              Left = 288
              Top = 48
              Width = 48
              Height = 13
              BevelInner = bvLowered
              BevelKind = bkFlat
              BorderStyle = bsNone
              DataField = 'adicao_oe_l'
              DataSource = dsvenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -8
              Font.Name = 'Small Fonts'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 23
            end
          end
        end
        object Tabvendaitem: TTabSheet
          Caption = 'Itens da venda'
          ImageIndex = 1
          OnShow = TabvendaitemShow
          object g0_1: TDBGrid
            Left = 0
            Top = 0
            Width = 755
            Height = 403
            Align = alClient
            Color = 16382712
            DataSource = dsvendaitem
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = [fsBold]
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnTitleClick = g0_1TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'codigo'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Title.Caption = 'C'#243'digo'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Title.Caption = 'Descri'#231#227'o'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 304
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtd'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Title.Caption = 'Qtd'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 33
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vrunit'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Title.Caption = 'VrUnit'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 67
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descontoReal'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Title.Caption = 'Desc'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 57
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'totalparcial'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Title.Caption = 'Valor'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'total'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Title.Caption = 'Total'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 76
                Visible = True
              end>
          end
        end
        object Tabvendac: TTabSheet
          Caption = 'Consumo'
          ImageIndex = 3
          OnShow = TabvendacShow
          object g0_3: TDBGrid
            Left = 0
            Top = 0
            Width = 755
            Height = 403
            Align = alClient
            Color = 16382712
            DataSource = dsconsumo
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = [fsBold]
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnTitleClick = g0_3TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'codigo'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Title.Caption = 'C'#243'digo'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Title.Caption = 'Descri'#231#227'o'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 419
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtd'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Title.Caption = 'Qtd'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vrunit'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Title.Caption = 'VrUnit'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 85
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'numero'
                Title.Caption = 'N. Venda'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'data'
                Title.Caption = 'Data'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Visible = True
              end>
          end
        end
        object Tabvendaservico: TTabSheet
          Caption = 'Servicos'
          ImageIndex = 3
          OnShow = TabvendaservicoShow
          object g0_2: TDBGrid
            Left = 0
            Top = 0
            Width = 755
            Height = 403
            Align = alClient
            Color = 16382712
            DataSource = dsservico
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = [fsBold]
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnTitleClick = g0_2TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'codigo'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Title.Caption = 'C'#243'digo'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Title.Caption = 'Descri'#231#227'o'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 477
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtd'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Title.Caption = 'Qtd'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 33
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vrunit'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Title.Caption = 'VrUnit'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 67
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'total'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                Title.Caption = 'Total'
                Title.Color = 15526374
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'MS Sans Serif'
                Title.Font.Style = [fsBold]
                Width = 76
                Visible = True
              end>
          end
        end
      end
    end
    object Tabcompra: TTabSheet
      Caption = 'Compras'
      ImageIndex = 2
      OnShow = TabcompraShow
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 782
        Height = 418
        ActivePage = TabcompraG
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MultiLine = True
        ParentFont = False
        TabOrder = 0
        TabPosition = tpLeft
        OnChange = PageControl3Change
        object TabcompraG: TTabSheet
          Caption = 'Compras'
          OnShow = TabcompraGShow
          object g1: TDBGrid
            Left = 0
            Top = 0
            Width = 755
            Height = 403
            Hint = 'Clique no cabe'#231'alho da coluna para ordenar'
            Align = alClient
            Color = 16382712
            DataSource = dscompra
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            ParentFont = False
            ParentShowHint = False
            ReadOnly = True
            ShowHint = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnTitleClick = g1TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'data'
                Title.Caption = 'Data'
                Title.Color = 15526374
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 53
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'numero'
                Title.Caption = 'N'#250'mero'
                Title.Color = 15526374
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 46
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'codigo'
                Title.Caption = 'Codigo'
                Title.Color = 15526374
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 44
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'nome'
                Title.Caption = 'Nome'
                Title.Color = 15526374
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 221
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'total'
                Title.Caption = 'Total'
                Title.Color = 15526374
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dinheiro'
                Title.Caption = 'Dinheiro'
                Title.Color = 15526374
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'credito'
                Title.Caption = 'Cr'#233'dito'
                Title.Color = 15526374
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cheque'
                Title.Caption = 'Cheque'
                Title.Color = 15526374
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'chequepre'
                Title.Caption = 'Chequepre'
                Title.Color = 15526374
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'fiado'
                Title.Caption = 'A Prazp'
                Title.Color = 15526374
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Visible = True
              end>
          end
        end
        object Tabcompraitem: TTabSheet
          Caption = 'Itens da compra'
          ImageIndex = 1
          OnShow = TabcompraitemShow
          object g1_1: TDBGrid
            Left = 0
            Top = 0
            Width = 765
            Height = 413
            Align = alClient
            Color = 16382712
            DataSource = dscompraitem
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Options = [dgTitles, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnTitleClick = g1_1TitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'codigo'
                Title.Caption = 'C'#243'digo'
                Title.Color = 15526374
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Title.Caption = 'Descri'#231#227'o'
                Title.Color = 15526374
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 433
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'qtd'
                Title.Caption = 'Qtd'
                Title.Color = 15526374
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 33
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vrunit'
                Title.Caption = 'VrUnit'
                Title.Color = 15526374
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'total'
                Title.Caption = 'Total'
                Title.Color = 15526374
                Title.Font.Charset = ANSI_CHARSET
                Title.Font.Color = 6049863
                Title.Font.Height = -11
                Title.Font.Name = 'Arial'
                Title.Font.Style = [fsBold]
                Width = 68
                Visible = True
              end>
          end
        end
      end
    end
    object Tabreceber: TTabSheet
      Caption = 'Contas a Receber'
      ImageIndex = 1
      OnShow = TabreceberShow
      object RTIPO: TRadioGroup
        Left = 0
        Top = 0
        Width = 782
        Height = 30
        Align = alTop
        Caption = 'Filtrar'
        Color = 15329769
        Columns = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = 6049863
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 3
        Items.Strings = (
          'Recebido'
          'N Recebido'
          'Vencido'
          'Todos')
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        OnClick = RTIPOClick
      end
      object g2: TDBGrid
        Left = 0
        Top = 30
        Width = 782
        Height = 388
        Hint = 'Clique no cabe'#231'alho de uma coluna para ordenar'
        Align = alClient
        Color = 16382712
        DataSource = dsreceber
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = OEM_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Terminal'
        TitleFont.Style = [fsBold]
        OnTitleClick = g2TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'tipoconta'
            Title.Caption = 'TpConta'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Nome'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'documento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Doc.'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtemissao'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Emiss'#227'o'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtvencimento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Vencto.'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtpagamento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Dt. Receb.'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Valor'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'desconto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Desconto'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'acrescimo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Acr'#233'scimo'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vrdocumento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'A Receber'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'juro'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Juros'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'totalgeral'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Vr. c/ Juros'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'recebido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Recebido'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'diferenca'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Diferen'#231'a'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object Tabpagar: TTabSheet
      Caption = 'Contas a Pagar'
      ImageIndex = 3
      OnShow = TabpagarShow
      object rpagar: TRadioGroup
        Left = 0
        Top = 0
        Width = 782
        Height = 30
        Align = alTop
        Caption = 'Filtrar'
        Color = 15329769
        Columns = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = 6049863
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemIndex = 3
        Items.Strings = (
          'Pago'
          'N Pago'
          'Vencido'
          'Todos')
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        OnClick = rpagarClick
      end
      object g3: TDBGrid
        Left = 0
        Top = 30
        Width = 782
        Height = 388
        Hint = 'Clique no cabe'#231'alho de uma coluna para ordenar'
        Align = alClient
        Color = 16382712
        DataSource = dspagar
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 1
        TitleFont.Charset = OEM_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Terminal'
        TitleFont.Style = [fsBold]
        OnTitleClick = g3TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'tipoconta'
            Title.Caption = 'TipoConta'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Nome'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'documento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Doc.'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtemissao'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Emiss'#227'o'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtvencimento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Vencto.'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtpagamento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Dt. Receb.'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Valor'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'desconto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Desconto'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'acrescimo'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Acr'#233'scimo'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vrdocumento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'A Receber'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'recebido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Recebido'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'diferenca'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Diferen'#231'a'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object Tabcaixa: TTabSheet
      Caption = 'Caixa'
      ImageIndex = 4
      OnShow = TabcaixaShow
    end
    object Tabcomv: TTabSheet
      Caption = 'Comiss'#245'es Vendas'
      ImageIndex = 5
      OnShow = TabcomvShow
      object RadioGroup1: TRadioGroup
        Left = 0
        Top = 0
        Width = 782
        Height = 31
        Align = alTop
        Color = 15526374
        Columns = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6049863
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 2
        Items.Strings = (
          'Pago'
          'N'#227'o Pago'
          'Ambos')
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
      object g5: TDBGrid
        Left = 0
        Top = 31
        Width = 782
        Height = 366
        Hint = 'Clique no cabe'#231'alho da coluna para ordenar'
        Align = alClient
        Color = 16382712
        DataSource = dscomissaov
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
        OnTitleClick = g5TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Documento'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Emiss'#227'o'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comissao'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Margem'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 51
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'VrComissao'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 57
            Visible = True
          end>
      end
      object pcomissaov: TPanel
        Left = 0
        Top = 397
        Width = 782
        Height = 21
        Align = alBottom
        BevelInner = bvLowered
        Color = 15329769
        Font.Charset = ANSI_CHARSET
        Font.Color = 6049863
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object Tabcoms: TTabSheet
      Caption = 'Comiss'#227'o Servi'#231'o'
      ImageIndex = 6
      OnShow = TabcomsShow
      object RadioGroup2: TRadioGroup
        Left = 0
        Top = 0
        Width = 782
        Height = 31
        Align = alTop
        Color = 15526374
        Columns = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6049863
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemIndex = 2
        Items.Strings = (
          'Pago'
          'N'#227'o Pago'
          'Ambos')
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        OnClick = RadioGroup2Click
      end
      object g6: TDBGrid
        Left = 0
        Top = 31
        Width = 782
        Height = 366
        Hint = 'Clique no cabe'#231'alho da coluna para ordenar'
        Align = alClient
        Color = 16382712
        DataSource = dscomissaos
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
        OnTitleClick = g6TitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'doc'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Pedido/OS'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Emiss'#227'o'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vrunit'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Valor'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Qtd'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Tot. Servi'#231'o'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'comissao'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Comiss.'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vrcomissao'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Total'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Cliente'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 149
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Title.Caption = 'Servi'#231'o'
            Title.Color = 15526374
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = 6049863
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object pcomissaos: TPanel
        Left = 0
        Top = 397
        Width = 782
        Height = 21
        Align = alBottom
        BevelInner = bvLowered
        Color = 15329769
        Font.Charset = ANSI_CHARSET
        Font.Color = 6049863
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 72
    Align = alTop
    BevelInner = bvLowered
    BevelOuter = bvSpace
    Color = 15329769
    TabOrder = 1
    object mtbvenda: TMemo
      Left = 73
      Top = 2
      Width = 158
      Height = 68
      Align = alLeft
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object mtbcaixa: TMemo
      Left = 705
      Top = 2
      Width = 158
      Height = 68
      Align = alLeft
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object mtbpagar: TMemo
      Left = 547
      Top = 2
      Width = 158
      Height = 68
      Align = alLeft
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object mtbcompra: TMemo
      Left = 231
      Top = 2
      Width = 158
      Height = 68
      Align = alLeft
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object mtbreceber: TMemo
      Left = 389
      Top = 2
      Width = 158
      Height = 68
      Align = alLeft
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BiDiMode = bdRightToLeft
      BorderStyle = bsNone
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 71
      Height = 68
      Align = alLeft
      BevelOuter = bvNone
      Color = 15329769
      TabOrder = 0
      object Label1: TLabel
        Left = 11
        Top = 0
        Width = 46
        Height = 13
        Caption = 'Per'#237'odo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object d1: TMaskEdit
        Left = 2
        Top = 12
        Width = 67
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        Text = '  /  /    '
        OnKeyDown = d1KeyDown
      end
      object d2: TMaskEdit
        Left = 2
        Top = 31
        Width = 67
        Height = 17
        BevelOuter = bvRaised
        BevelKind = bkFlat
        BiDiMode = bdRightToLeft
        BorderStyle = bsNone
        CharCase = ecUpperCase
        EditMask = '99/99/9999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        Text = '  /  /    '
        OnKeyDown = d2KeyDown
      end
      object BitBtn1: TBitBtn
        Left = 2
        Top = 49
        Width = 67
        Height = 19
        Caption = 'Filtrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = BitBtn1Click
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 72
    Width = 790
    Height = 23
    Align = alTop
    BevelInner = bvLowered
    Color = 15329769
    TabOrder = 2
    object llocalizar: TLabel
      Left = 143
      Top = 4
      Width = 116
      Height = 14
      Alignment = taRightJustify
      Caption = 'Localizar Nome (A~Z)'
      Font.Charset = ANSI_CHARSET
      Font.Color = 6049863
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object elocalizar: TEdit
      Left = 264
      Top = 3
      Width = 337
      Height = 17
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BiDiMode = bdRightToLeft
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
      OnChange = elocalizarChange
    end
    object rvisualiza: TCheckBox
      Left = 696
      Top = 5
      Width = 99
      Height = 15
      Alignment = taLeftJustify
      Caption = 'Escolhe Campos'
      Color = 14342874
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn2: TBitBtn
      Left = 610
      Top = 2
      Width = 72
      Height = 19
      Caption = 'Imprimir...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn2Click
    end
  end
  object dsvendaitem: TDataSource
    DataSet = tbvendaitem
    Left = 116
    Top = 237
  end
  object tbvenda: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'nome'
    Params = <>
    Left = 44
    Top = 180
    object tbvendaesf_od_p: TStringField
      FieldName = 'esf_od_p'
      Size = 8
    end
    object tbvendaesf_oe_p: TStringField
      FieldName = 'esf_oe_p'
      Size = 8
    end
    object tbvendaesf_od_l: TStringField
      FieldName = 'esf_od_l'
      Size = 8
    end
    object tbvendaesf_oe_l: TStringField
      FieldName = 'esf_oe_l'
      Size = 8
    end
    object tbvendacil_od_p: TStringField
      FieldName = 'cil_od_p'
      Size = 8
    end
    object tbvendacil_oe_p: TStringField
      FieldName = 'cil_oe_p'
      Size = 8
    end
    object tbvendacil_od_l: TStringField
      FieldName = 'cil_od_l'
      Size = 8
    end
    object tbvendacil_oe_l: TStringField
      FieldName = 'cil_oe_l'
      Size = 8
    end
    object tbvendaeixo_od_p: TStringField
      FieldName = 'eixo_od_p'
      Size = 8
    end
    object tbvendaeixo_oe_p: TStringField
      FieldName = 'eixo_oe_p'
      Size = 8
    end
    object tbvendaeixo_od_l: TStringField
      FieldName = 'eixo_od_l'
      Size = 8
    end
    object tbvendaeixo_oe_l: TStringField
      FieldName = 'eixo_oe_l'
      Size = 8
    end
    object tbvendadnp_od_p: TStringField
      FieldName = 'dnp_od_p'
      Size = 8
    end
    object tbvendadnp_oe_p: TStringField
      FieldName = 'dnp_oe_p'
      Size = 8
    end
    object tbvendadnp_od_l: TStringField
      FieldName = 'dnp_od_l'
      Size = 8
    end
    object tbvendadnp_oe_l: TStringField
      FieldName = 'dnp_oe_l'
      Size = 8
    end
    object tbvendaalt_od_p: TStringField
      FieldName = 'alt_od_p'
      Size = 8
    end
    object tbvendaalt_oe_p: TStringField
      FieldName = 'alt_oe_p'
      Size = 8
    end
    object tbvendaalt_od_l: TStringField
      FieldName = 'alt_od_l'
      Size = 8
    end
    object tbvendaalt_oe_l: TStringField
      FieldName = 'alt_oe_l'
      Size = 8
    end
    object tbvendaadicao_od_p: TStringField
      FieldName = 'adicao_od_p'
      Size = 8
    end
    object tbvendaadicao_oe_p: TStringField
      FieldName = 'adicao_oe_p'
      Size = 8
    end
    object tbvendaadicao_od_l: TStringField
      FieldName = 'adicao_od_l'
      Size = 8
    end
    object tbvendaadicao_oe_l: TStringField
      FieldName = 'adicao_oe_l'
      Size = 8
    end
    object tbvendamodo: TStringField
      FieldName = 'modo'
      Size = 3
    end
    object tbvendachave: TIntegerField
      FieldName = 'chave'
    end
    object tbvendanumero: TIntegerField
      FieldName = 'numero'
    end
    object tbvendadata: TDateField
      FieldName = 'data'
    end
    object tbvendaDtFechamento: TDateField
      FieldName = 'DtFechamento'
    end
    object tbvendaDtAprova: TDateField
      FieldName = 'DtAprova'
    end
    object tbvendaDtDevolucao: TDateField
      FieldName = 'DtDevolucao'
    end
    object tbvendacodigo: TIntegerField
      FieldName = 'codigo'
    end
    object tbvendanome: TStringField
      FieldName = 'nome'
      Size = 60
    end
    object tbvendavendedor: TIntegerField
      FieldName = 'vendedor'
    end
    object tbvendatotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '###,##0.00'
    end
    object tbvendadinheiro: TFloatField
      FieldName = 'dinheiro'
      DisplayFormat = '###,##0.00'
    end
    object tbvendacheque: TFloatField
      FieldName = 'cheque'
      DisplayFormat = '###,##0.00'
    end
    object tbvendachequepre: TFloatField
      FieldName = 'chequepre'
      DisplayFormat = '###,##0.00'
    end
    object tbvendacartao: TFloatField
      FieldName = 'cartao'
      DisplayFormat = '###,##0.00'
    end
    object tbvendacartaod: TFloatField
      FieldName = 'cartaod'
      DisplayFormat = '###,##0.00'
    end
    object tbvendafiado: TFloatField
      FieldName = 'fiado'
      DisplayFormat = '###,##0.00'
    end
    object tbvendacredito: TFloatField
      FieldName = 'credito'
      DisplayFormat = '###,##0.00'
    end
    object tbvendacodigovendedor: TIntegerField
      FieldName = 'codigovendedor'
    end
    object tbvendacampo1: TStringField
      FieldName = 'campo1'
    end
    object tbvendacampo2: TStringField
      FieldName = 'campo2'
    end
    object tbvendacampo3: TStringField
      FieldName = 'campo3'
      Size = 30
    end
    object tbvendacampo4: TStringField
      FieldName = 'campo4'
      Size = 30
    end
    object tbvendacampo5: TStringField
      FieldName = 'campo5'
      Size = 13
    end
    object tbvendacampo6: TStringField
      FieldName = 'campo6'
      Size = 15
    end
    object tbvendacampo7: TStringField
      FieldName = 'campo7'
      Size = 10
    end
    object tbvendacampo8: TStringField
      FieldName = 'campo8'
      Size = 10
    end
    object tbvendaservico2: TMemoField
      FieldName = 'servico'
      BlobType = ftMemo
    end
    object tbvendaobs1: TMemoField
      FieldName = 'obs1'
      BlobType = ftMemo
    end
    object tbvendanf: TIntegerField
      FieldName = 'nf'
    end
  end
  object dsvenda: TDataSource
    DataSet = tbvenda
    Left = 108
    Top = 188
  end
  object dsreceber: TDataSource
    DataSet = tbreceber
    Left = 370
    Top = 180
  end
  object ActionList1: TActionList
    Left = 620
    Top = 284
    object venda: TAction
      Caption = 'venda'
      OnExecute = vendaExecute
    end
    object compra: TAction
      Caption = 'compra'
      OnExecute = compraExecute
    end
    object receber: TAction
      Caption = 'receber'
      OnExecute = receberExecute
    end
    object pagar: TAction
      Caption = 'pagar'
      OnExecute = pagarExecute
    end
    object comissaov: TAction
      Caption = 'comissaov'
      OnExecute = comissaovExecute
    end
    object comissaos: TAction
      Caption = 'comissaos'
      OnExecute = comissaosExecute
    end
  end
  object dsservico: TDataSource
    DataSet = tbvendaservico
    Left = 124
    Top = 309
  end
  object dscompra: TDataSource
    DataSet = tbcompra
    Left = 192
    Top = 180
  end
  object dscompraitem: TDataSource
    DataSet = tbcompraitem
    Left = 272
    Top = 237
  end
  object dspagar: TDataSource
    DataSet = tbpagar
    Left = 482
    Top = 180
  end
  object sqld: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      
        'select * from tbcadastroservico where (flag <> "D" or flag is nu' +
        'll)')
    Params = <>
    Left = 384
    Top = 390
  end
  object tbcompra: TZQuery
    Connection = fdm.conector
    SortedFields = 'nome'
    SQL.Strings = (
      
        'select * from tbcadastroservico where (flag <> "D" or flag is nu' +
        'll)')
    Params = <>
    IndexFieldNames = 'nome Asc'
    Left = 264
    Top = 182
  end
  object tbreceber: TZQuery
    Connection = fdm.conector
    SortedFields = 'nome'
    SQL.Strings = (
      
        'select * from tbcadastroservico where (flag <> "D" or flag is nu' +
        'll)')
    Params = <>
    IndexFieldNames = 'nome Asc'
    Left = 320
    Top = 182
  end
  object tbpagar: TZQuery
    Connection = fdm.conector
    SortedFields = 'nome'
    SQL.Strings = (
      
        'select * from tbcadastroservico where (flag <> "D" or flag is nu' +
        'll)')
    Params = <>
    IndexFieldNames = 'nome Asc'
    Left = 424
    Top = 174
  end
  object tbvendaitem: TZQuery
    Connection = fdm.conector
    SortedFields = 'descricao'
    SQL.Strings = (
      
        'select * from tbcadastroservico where (flag <> "D" or flag is nu' +
        'll)')
    Params = <>
    IndexFieldNames = 'descricao Asc'
    Left = 48
    Top = 238
  end
  object tbvendaservico: TZQuery
    Connection = fdm.conector
    SortedFields = 'descricao'
    SQL.Strings = (
      
        'select * from tbcadastroservico where (flag <> "D" or flag is nu' +
        'll)')
    Params = <>
    IndexFieldNames = 'descricao Asc'
    Left = 48
    Top = 310
  end
  object tbcompraitem: TZQuery
    Connection = fdm.conector
    SortedFields = 'descricao'
    SQL.Strings = (
      
        'select * from tbcadastroservico where (flag <> "D" or flag is nu' +
        'll)')
    Params = <>
    IndexFieldNames = 'descricao Asc'
    Left = 192
    Top = 230
  end
  object tbcomissaov: TZQuery
    Connection = fdm.conector
    SortedFields = 'documento'
    SQL.Strings = (
      
        'select chave, Numero as Documento, Data, Total, Comissao, VrComi' +
        'ssao,  Pago  from tbpedido')
    Params = <>
    IndexFieldNames = 'documento Asc'
    Left = 448
    Top = 254
  end
  object dscomissaov: TDataSource
    DataSet = tbcomissaov
    Left = 522
    Top = 252
  end
  object tbcomissaos: TZQuery
    Connection = fdm.conector
    SortedFields = 'nome'
    SQL.Strings = (
      'select * from tbpedidoservico')
    Params = <>
    IndexFieldNames = 'nome Asc'
    Left = 448
    Top = 334
  end
  object dscomissaos: TDataSource
    DataSet = tbcomissaos
    Left = 506
    Top = 332
  end
  object tbconsumo: TZQuery
    Connection = fdm.conector
    SortedFields = 'descricao'
    SQL.Strings = (
      
        'select * from tbcadastroservico where (flag <> "D" or flag is nu' +
        'll)')
    Params = <>
    IndexFieldNames = 'descricao Asc'
    Left = 504
    Top = 390
  end
  object dsconsumo: TDataSource
    DataSet = tbconsumo
    Left = 564
    Top = 391
  end
end
