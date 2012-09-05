object FrmInconsistencia: TFrmInconsistencia
  Left = 230
  Top = 172
  Width = 820
  Height = 563
  Caption = 'Inconsist'#234'ncia entre bases'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object pnlWebXLocal: TPanel
    Left = 0
    Top = 81
    Width = 812
    Height = 455
    Align = alClient
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 812
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 346
      Height = 16
      Caption = 'Escolha onde verificar a inconsistencia de dados:'
    end
    object Bevel1: TBevel
      Left = 496
      Top = 16
      Width = 281
      Height = 58
    end
    object lblExplic: TLabel
      Left = 520
      Top = 24
      Width = 241
      Height = 49
      AutoSize = False
      Caption = 
        'Verificando dados existentes na base web que n'#227'o existam na base' +
        ' local.'
      WordWrap = True
    end
    object rg1Opcao: TRadioGroup
      Left = 8
      Top = 32
      Width = 433
      Height = 41
      Columns = 2
      Items.Strings = (
        'Base Local X Base Web'
        'Base Web X Base Local')
      TabOrder = 0
      OnClick = rg1OpcaoClick
    end
  end
  object pnlLocalXWeb: TPanel
    Left = 0
    Top = 81
    Width = 812
    Height = 455
    Align = alClient
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 810
      Height = 453
      ActivePage = tbsInsercao
      Align = alClient
      TabHeight = 1
      TabOrder = 0
      TabWidth = 1
      object tbsRelatorio: TTabSheet
        Caption = 'tbsRelatorio'
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 665
          Height = 431
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvNone
          TabOrder = 0
          object pnlPreviewBar: TPanel
            Left = 1
            Top = 1
            Width = 663
            Height = 32
            Align = alTop
            BevelOuter = bvNone
            ParentShowHint = False
            ShowHint = False
            TabOrder = 1
            object spbPreviewPrint: TSpeedButton
              Left = 4
              Top = 5
              Width = 24
              Height = 24
              Hint = 'Impress'#227'o do relat'#243'rio'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                5A010000424D5A01000000000000760000002800000014000000130000000100
                040000000000E400000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777777700007777777777777777777700007777777777777777777700007777
                0000000000077777000077707777777770707777000077000000000000070777
                0000770777777BBB770007770000770777777888770707770000770000000000
                0007707700007707777777777070707700007770000000000707007700007777
                0FFFFFFFF07070770000777770F00000F00007770000777770FFFFFFFF077777
                00007777770F00000F07777700007777770FFFFFFFF077770000777777700000
                000077770000777777777777777777770000777777777777777777770000}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = spbPreviewPrintClick
            end
            object spbPreviewWhole: TSpeedButton
              Left = 38
              Top = 4
              Width = 24
              Height = 24
              Hint = 'P'#225'gina Inteira'
              AllowAllUp = True
              GroupIndex = 1
              Down = True
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                6E030000424D6E03000000000000760000002800000050000000130000000100
                040000000000F802000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777777777777777777777777777777777777777777777777F7F7F7F7F7F7F7F
                7F7F777777777777777777777777777777777777777777777777777777777777
                F7F7F7F7F7F7F7F7F7F777000000000000000077770000000000000000777700
                00000000000000777F00000000000000007F7706868686868686807777068686
                86868686807777068686868686868077F70080808080808080F7770868000000
                0068607777086800000000686077770868000000006860777F08080000000008
                007F7706860FFFFFF08680777706860FFFFFF08680777706860FFFFFF0868077
                F70080087878708080F77708680FFFFFF06860777708680FFFFFF06860777708
                680FFFFFF06860777F08080787878008007F7706860F00F0F08680777706860F
                00F0F08680777706860F00F0F0868077F70080080070708080F77708680FFFFF
                F06860777708680FFFFFF06860777708680FFFFFF06860777F08080787878008
                007F7706860F00F0F08680777706860F00F0F08680777706860F00F0F0868077
                F70080080070708080F77708680FFFFFF06860777708680FFFFFF06860777708
                680FFFFFF06860777F08080787878008007F7706860F00F0F08680777706860F
                00F0F08680777706860F00F0F0868077F70080080070708080F77708680FFFFF
                F06860777708680FFFFFF06860777708680FFFFFF06860777F08080787878008
                007F7706860FFFFFF08680777706860FFFFFF08680777706860FFFFFF0868077
                F70080087878708080F777086800000000686077770868000000006860777708
                68000000006860777F08080000000008007F7706868686868686807777068686
                86868686807777068686868686868077F70080808080808080F7770000000000
                0000007777000000000000000077770000000000000000777F00000000000000
                007F777777777777777777777777777777777777777777777777777777777777
                F7F7F7F7F7F7F7F7F7F777777777777777777777777777777777777777777777
                77777777777777777F7F7F7F7F7F7F7F7F7F}
              NumGlyphs = 4
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = spbPreviewWholeClick
            end
            object spbPreviewFirst: TSpeedButton
              Left = 120
              Top = 4
              Width = 24
              Height = 24
              Hint = 'Primeira p'#225'gina'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                5A010000424D5A01000000000000760000002800000014000000130000000100
                040000000000E400000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777777700007777777777777777777700007777777777777777777700007777
                7777777777777777000077778877777778777777000077770077777780777777
                0000777700777778007777770000777700777780007777770000777700777800
                0077777700007777007780000077777700007777007778000077777700007777
                0077778000777777000077770077777800777777000077770077777780777777
                0000777788777777787777770000777777777777777777770000777777777777
                777777770000777777777777777777770000777777777777777777770000}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = spbPreviewFirstClick
            end
            object spbPreviewPrior: TSpeedButton
              Left = 144
              Top = 4
              Width = 24
              Height = 24
              Hint = 'P'#225'gina anterior'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                5A010000424D5A01000000000000760000002800000014000000130000000100
                040000000000E400000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777777700007777777777777777777700007777777777777777777700007777
                7777777777777777000077777777777877777777000077777777778077777777
                0000777777777800777777770000777777778000777777770000777777780000
                7777777700007777778000007777777700007777777800007777777700007777
                7777800077777777000077777777780077777777000077777777778077777777
                0000777777777778777777770000777777777777777777770000777777777777
                777777770000777777777777777777770000777777777777777777770000}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = spbPreviewPriorClick
            end
            object spbPreviewNext: TSpeedButton
              Left = 211
              Top = 4
              Width = 24
              Height = 24
              Hint = 'Pr'#243'xima p'#225'gina'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                5A010000424D5A01000000000000760000002800000014000000130000000100
                040000000000E400000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777777700007777777777777777777700007777777777777777777700007777
                7777777777777777000077777778777777777777000077777770877777777777
                0000777777700877777777770000777777700087777777770000777777700008
                7777777700007777777000008777777700007777777000087777777700007777
                7770008777777777000077777770087777777777000077777770877777777777
                0000777777787777777777770000777777777777777777770000777777777777
                777777770000777777777777777777770000777777777777777777770000}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = spbPreviewNextClick
            end
            object spbPreviewLast: TSpeedButton
              Left = 235
              Top = 4
              Width = 24
              Height = 24
              Hint = #218'ltima p'#225'gina'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                5A010000424D5A01000000000000760000002800000014000000130000000100
                040000000000E400000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777777700007777777777777777777700007777777777777777777700007777
                7777777777777777000077777877777778877777000077777087777770077777
                0000777770087777700777770000777770008777700777770000777770000877
                7007777700007777700000877007777700007777700008777007777700007777
                7000877770077777000077777008777770077777000077777087777770077777
                0000777778777777788777770000777777777777777777770000777777777777
                777777770000777777777777777777770000777777777777777777770000}
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = spbPreviewLastClick
            end
            object spbPreviewWidth: TSpeedButton
              Left = 62
              Top = 4
              Width = 24
              Height = 24
              Hint = 'Largura da p'#225'gina'
              AllowAllUp = True
              GroupIndex = 1
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                6E030000424D6E03000000000000760000002800000050000000130000000100
                040000000000F802000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                7777777777777777777777777777777777777777777777777F7F7F7F7F7F7F7F
                7F7F777777777777777777777777777777777777777777777777777777777777
                F7F7F7F7F7F7F7F7F7F777000000000000000077770000000000000000777700
                00000000000000777F00000000000000007F77060FFFFFFFFFF0807777060FFF
                FFFFFFF0807777060FFFFFFFFFF08077F70000787878787080F777080F00000F
                00F0607777080F00000F00F0607777080F00000F00F060777F08008000070080
                007F77060FFFFFFFFFF0807777060FFFFFFFFFF0807777060FFFFFFFFFF08077
                F70000787878787080F777080F00000F00F0607777080F00000F00F060777708
                0F00000F00F060777F08008000070080007F77060FFFFFFFFFF0807777060FFF
                FFFFFFF0807777060FFFFFFFFFF08077F70000787878787080F777080F00000F
                00F0607777080F00000F00F0607777080F00000F00F060777F08008000070080
                007F77060FFFFFFFFFF0807777060FFFFFFFFFF0807777060FFFFFFFFFF08077
                F70000787878787080F777080F00000F00F0607777080F00000F00F060777708
                0F00000F00F060777F08008000070080007F77060FFFFFFFFFF0807777060FFF
                FFFFFFF0807777060FFFFFFFFFF08077F70000787878787080F777080FFFFFFF
                FFF0607777080FFFFFFFFFF0607777080FFFFFFFFFF060777F08008787878780
                007F770600000000000080777706000000000000807777060000000000008077
                F70000000000000080F777086868686868686077770868686868686860777708
                68686868686860777F08080808080808007F7706868686868686807777068686
                86868686807777068686868686868077F70080808080808080F7770000000000
                0000007777000000000000000077770000000000000000777F00000000000000
                007F777777777777777777777777777777777777777777777777777777777777
                F7F7F7F7F7F7F7F7F7F777777777777777777777777777777777777777777777
                77777777777777777F7F7F7F7F7F7F7F7F7F}
              NumGlyphs = 4
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = spbPreviewWidthClick
            end
            object spbPreview100Percent: TSpeedButton
              Left = 86
              Top = 4
              Width = 24
              Height = 24
              Hint = '100 %'
              AllowAllUp = True
              GroupIndex = 1
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Glyph.Data = {
                BA030000424DBA03000000000000760000002800000051000000130000000100
                0400000000004403000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
                77777777777777777777777777777777777777777777777777F7F7F7F7F7F7F7
                F7F7F00000007777777777777777777777777777777777777777777777777777
                777777777F7F7F7F7F7F7F7F7F7F700000007700000000000000007777700000
                0000000000077770000000000000000777F00000000000000007F00000007706
                80FFFFFFFFFFF0777770680FFFFFFFFFFF077770680FFFFFFFFFFF077F700807
                87878787870F70000000770860FFFFFFFFFFF0777770860FFFFFFFFFFF077770
                860FFFFFFFFFFF0777F08008787878787807F0000000770680FF000F00000077
                7770680FF000F00000077770680FF000F00000077F70080780008000000F7000
                0000770860FF000F000000777770860FF000F00000077770860FF000F0000007
                77F08008700070000007F0000000770680FFFFFFFFFFF0777770680FFFFFFFFF
                FF077770680FFFFFFFFFFF077F70080787878787870F70000000770860FFFFFF
                FFFFF0777770860FFFFFFFFFFF077770860FFFFFFFFFFF0777F0800878787878
                7807F0000000770680FF000F000000777770680FF000F00000077770680FF000
                F00000077F70080780008000000F70000000770860FF000F000000777770860F
                F000F00000077770860FF000F000000777F08008700070000007F00000007706
                80FFFFFFFFFFF0777770680FFFFFFFFFFF077770680FFFFFFFFFFF077F700807
                87878787870F70000000770860FFFFFFFFFFF0777770860FFFFFFFFFFF077770
                860FFFFFFFFFFF0777F08008787878787807F000000077068000000000000077
                77706800000000000007777068000000000000077F70080000000000000F7000
                0000770868686868686860777770868686868686860777708686868686868607
                77F08080808080808007F0000000770686868686868680777770686868686868
                6807777068686868686868077F70080808080808080F70000000770000000000
                00000077777000000000000000077770000000000000000777F0000000000000
                0007F00000007777777777777777777777777777777777777777777777777777
                777777777F7F7F7F7F7F7F7F7F7F700000007777777777777777777777777777
                7777777777777777777777777777777777F7F7F7F7F7F7F7F7F7F0000000}
              NumGlyphs = 4
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = spbPreview100PercentClick
            end
            object Bevel2: TBevel
              Left = 510
              Top = 1
              Width = 1
              Height = 33
              Style = bsRaised
            end
            object mskPreviewPercentage: TMaskEdit
              Left = 268
              Top = 6
              Width = 37
              Height = 21
              TabStop = False
              AutoSelect = False
              EditMask = '999\ %;0; '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnKeyPress = mskPreviewPercentageKeyPress
            end
            object mskPreviewPage: TMaskEdit
              Left = 170
              Top = 6
              Width = 37
              Height = 21
              TabStop = False
              AutoSelect = False
              EditMask = '99999;0; '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              MaxLength = 5
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 0
              OnKeyPress = mskPreviewPageKeyPress
            end
            object pnlCancelButton: TPanel
              Left = 608
              Top = 0
              Width = 55
              Height = 32
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              object spbPreviewCancel: TSpeedButton
                Left = 3
                Top = 4
                Width = 47
                Height = 24
                Caption = 'Cancel'
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                OnClick = spbPreviewCancelClick
              end
            end
          end
          object pnlStatusBar: TPanel
            Left = 1
            Top = 410
            Width = 663
            Height = 20
            Align = alBottom
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            TabOrder = 0
          end
        end
      end
      object tbsInsercao: TTabSheet
        Caption = 'tbsInsercao'
        ImageIndex = 1
        object Label2: TLabel
          Left = 8
          Top = 4
          Width = 145
          Height = 16
          Caption = 'Item a ser localizado'
        end
        object Label3: TLabel
          Left = 176
          Top = 4
          Width = 145
          Height = 16
          Caption = 'Item a ser localizado'
        end
        object edtItem: TEdit
          Left = 172
          Top = 20
          Width = 425
          Height = 24
          CharCase = ecUpperCase
          TabOrder = 1
          OnExit = dblItemExit
        end
        object cbbItem: TComboBox
          Left = 8
          Top = 20
          Width = 153
          Height = 24
          ItemHeight = 16
          TabOrder = 0
          OnCloseUp = cbbItemCloseUp
          Items.Strings = (
            'C'#243'digo'
            'Nome'
            'CPF'
            'RG'
            'Data da Inser'#231#227'o')
        end
        object btnSeek: TBitBtn
          Left = 604
          Top = 12
          Width = 57
          Height = 37
          TabOrder = 2
          OnClick = btnSeekClick
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCD2E2B9BDCFD8D1D7FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D0E1285A
            9F2B5899626F8DABA2AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            C8D1E3285EA55BD3F977DBF426589F707B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFC8D2E52963AC5BD5FA7EE3FA45AFF11879DE255099FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC9D4E72967B45CD5FA7FE3FA45AFF1177FE41F5AADC9
            D4E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D5E9296CBA5CD5FC7FE3FA44AFF1177F
            E41F5EB6C9D5E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9D6EA2971C15CD5FC7EE3FA
            44AFF1177FE41F63BDC9D6EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFF7F6F7E7E5E6E6E5E6F4F3F3FFFFFFFFFFFFFFFFFFFFFFFF447DC551
            C3F47EE3FA44AFEF177FE41F67C3C9D8ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFDFCFCB6B2B66A636C483F48564950534952453B455C545CA8A3A8F7F7
            F7EFEDF1B4C2D52E79C83DA2E91780E41F6CC8C9D9EDFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFEFEEEF6C646E66574AAD9D6FFBDCACFFE6C4FFEECDFFF5CC
            C0C8A6606263483C4871647F9CA1B691A9BC2372CB1F70D2C9DBF1FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFEFEEEF5D56618E7753F2C18FFFCFA9FFD6B3FF
            E6C9FFEDD0FFF2D3FFF8D8FFFCDF97ACA6453B45726374C8C1CBE0EEFAD4E3F5
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A737E8D734FEAB486F5BC
            91F6BD91FFD8B6FFE8CDFFEED2FFF3D7FFF9E0FFFDE9FFFEF095AEAD463C49CD
            C9CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C6CB6F5C51
            DAA574EDB489E2A97EF8BF93FFDAB9FFE7CDFFEED5FFF4DAFFF9E3FFFDEFFFFE
            F7FFFEEE6B7175A5A1A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF8F8792A07F52E1A87DDBA277DDA479F6BD92FFD7B5FFE7CEFFEDD4FFF2DA
            FFF7E1FFFAE7FFFDEDFFFCE7CCD6C05D555FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF706471C4905DDDA479D39A6FF8BF94FFD0ACFFDABCFF
            EBD8FFEBD4FFEED7FFF4DDFFF7E1FFF8E1FFF9DEFFFAD75D525FF0F0F1FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7C6A78C0895BDAA176EFB68BDAA1
            76E5AC81FDC498FFDCBDFFEFE0FFECD5FFEED6FFF2DAFFF4DAFFF3D8FFF2CF7D
            7179D6D5D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E7181BE8759
            D89F74E4AB80FFCCA5FFE1CBFFDBBFFFCCA4FFDFC3FFECDBFFE9D1FFECD3FFED
            D3FFEDD1FFEFCE7F767BDAD8DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF827788BF8857D0976CF3BA8FFFE1CBFFEEE2FFF9F5FFDABDFFCBA3FFE6D1
            FFE4CBFFE5CBFFE7CDFFE7CCFFECC26A5E6BF1F1F2FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFA8A0ACA68053CB9267EBB287FFD9BBFFEADAFFF1E7FF
            DEC5F1B88DFFDBBFFFCCA3FED3AEFFD8B6FFDDC0D3C594796F7CFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDCE08B776FBF8656D9A075FCC3
            98FFDCC2FFE5D2FFCCA5FBC297FCC398ECB388F3BA8EFFC99EFCD1A08C8171BC
            B8BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABA4AF
            9D7E5CC0885CDBA277EEB58AFBC297F6BD92EEB58AD1986DDDA479F1B88DF4BE
            91B09F77847A89FCFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFAFAFA9C929FA0825FBF8857CD9469D69D72DDA479DBA277E3AA7F
            EAB186DFAC7BAB976F857988E9E8EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAB2ABB598867DAD875AC38C5BBC
            8558C28B5DCF9967BA9668958475968F9BEDECEFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0
            E4B7AFBA9D91A09F919DA1939D968B9BA69FABD7D3D8FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object grp1: TGroupBox
          Left = 8
          Top = 62
          Width = 649
          Height = 185
          Caption = '  Dados Localizados  '
          TabOrder = 4
          object Label4: TLabel
            Left = 12
            Top = 26
            Width = 51
            Height = 16
            Caption = 'C'#243'digo'
          end
          object Label5: TLabel
            Left = 120
            Top = 26
            Width = 42
            Height = 16
            Caption = 'Nome'
          end
          object Label6: TLabel
            Left = 14
            Top = 74
            Width = 42
            Height = 16
            Caption = 'C.P.F.'
          end
          object Label7: TLabel
            Left = 404
            Top = 74
            Width = 31
            Height = 16
            Caption = 'R.G.'
          end
          object Label8: TLabel
            Left = 14
            Top = 130
            Width = 120
            Height = 16
            Caption = 'Data da Inser'#231#227'o'
          end
          object edtCodigo: TEdit
            Left = 14
            Top = 44
            Width = 99
            Height = 24
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object edtNome: TEdit
            Left = 122
            Top = 44
            Width = 517
            Height = 24
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object edtCPF: TEdit
            Left = 16
            Top = 94
            Width = 231
            Height = 24
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object edtRG: TEdit
            Left = 406
            Top = 92
            Width = 231
            Height = 24
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object edtData: TEdit
            Left = 16
            Top = 150
            Width = 145
            Height = 24
            Color = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
        end
        object btnInsere: TBitBtn
          Left = 132
          Top = 280
          Width = 363
          Height = 103
          Caption = 'For'#231'ar a inser'#231#227'o de dados selecionados'
          TabOrder = 3
          OnClick = btnInsereClick
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFB5763FB5763FB5763FB5763FB5763FB5763FB5763FB576
            3FB5763FB5763FB5763FB5763FB5763FB5763FFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFD4B493ECE0D3F4EAE4E9DDCEF0E5DCECE0D3
            EEE4D9EEE1D5EFE2D7EEE3D8EDE1D4F0E7DBF3EAE2EBDDCEE9D9C9D7B99BFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFFFFE5D4C3E8D8C6F4EDE6FAF6F4EE
            E3D7F8F3EFF1E7DCF6EFE7F2ECE2F3EAE2F5EEE8F0E7DDF7F1ECF6EFE8F2E9DF
            F6F1EBDDC5AAFCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBC0A0F7F3
            ECDBC2A5FFFFFFD2B48FFDFBFADAC0A4F1E8DDE6D6C3E4D4BDF2EAE2D9BFA1F9
            F8F5DCC2A7FAFAF7D7BB9BF1E7DCE0C6A8FFFFFFFFFFFFFFFFFFFFFFFEFFFFFF
            FCFAF7DEC8ABFFFFFFF8F5F0FFFFFFF0E7DAFFFFFFF2E8DFFDFCFBF7F3EEF5F0
            E8FFFFFFF1E8DDFFFFFFF3EBE3FFFFFFF5EEE5FDFCFADAC09FFFFFFFFFFFFFFF
            FFFFFFFEFEFFFFFFDEC7A9F4ECE2DEC7AAEDE1D2ECE2D3D3B28CFFFFFFCCA97C
            F8F4EEE2CEB5DCC3A6FCFBF9CBA577FFFFFED8BD9BF5EEE5E2CFB7E1CCB2ECE0
            D0E7D5BFFFFFFFFFFFFFFFFFFFFFFFFFD7BA95FFFFFFFFFFFFFFFFFFFFFFFFFE
            FEFEFFFFFFFEFEFDFFFFFFFFFFFFFEFEFEFFFFFFFEFEFDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFEFEFDFDD8BB97FFFFFFFFFFFFFFFFFFEEE0D0E9D8C4EDE0D1D0B0
            87FFFFFFCAA473E8D8C3F5EFE7C39964FDFDFEDBC1A1D2B38CFFFFFFC59D6AEE
            E2D4EEE2D5D1AF86FFFFFFC9A270EDE1D1E1CEB4FAF6F1FFFFFFFFFFFFDEC6A7
            FFFFFFFFFFFFFBF9F7FFFFFFF6EFE7FFFFFFFFFFFFF2EBE1FFFFFFFBFBF9F6F3
            F0FFFFFFF5EFE7FFFFFFFFFFFFF8F1EAFFFFFFF8F4EEFFFFFFFDFAF8DEC7A9FF
            FFFFEFE4D2DFCCABFEFFF9FEFFFBFCFDF8FBFCF4FEFEFAF7F1E9F9F4EEFDFEF9
            FCF9F1FFFFFCFFFFFAFFFBF4FFFFFCFAF4EDF7F3EBFCFAF5FAF9F1FEFFFBFEFF
            F8FCFDF5DECAA5FFFFFFB5763FB5763FB5763FB5763FB5763FB5763FB5763FDA
            B087DAB086B5763FB5763FB5763FB5763FB5763FB5763FDAB086DAB087B5763F
            B5763FB5763FB5763FB5763FB5763FB5763FFFFFFFC59671BD8E5DBD8D5DBD8D
            5DBD8D5CBE8F5FDAB289DAB087BE8A587751181267161267167D5118BF8A58DA
            B087DAB289BE8E5DBC8A59BD8D5DBD8D5CC29768B47749FFFFFFFFFFFFFFFFFF
            BB8857B5763FB57841B37942BA854FDAB28ADBB289A4804F196D1F47CD9246CD
            92196D1FA7824FDCB289DAB289B9804DC39469B07C43B17941B37C43FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCB28ADBB188
            DCB289DCB289DDB289DCB289DBB188DBB189FFFFFFFCF9F6FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF1E7127DCB28ADCB28ADCB28ADCB28ADCB28ADCB28A1E7127FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF
            FEFFFFFFFFFFFF23752D81E0BE7FDCB776D4AE75D4AD73D4AC72D3AC7CD8B27E
            DBB723752DFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFF4FAF7287A348AD5B891D4B69DD8BBA5DDC19CD6B99BD6
            B8A0D9BB97D3B28ECEAC84CFAE287A34FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF328340328340328340328340
            BDE3D0ABDBC3A8D9C1B8E1CD328340328340328340328340FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF429155D1ECE0BBE1D0B7DFCDCAE8D9429155FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFEFFFEFFFFFFFFFFFF49975FC4E4D9C9E6DDC4E4D9C3E3D849975FFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4C9A63D7EDE8D7EDE8D2EA
            E4D6ECE74C9A63FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFF5EAA7B
            FFFFFFFFFBFFFFFAFFFFFFFF5EAA7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF71BC94FEFFFFF2F9F6F2F9F6F3FAF771BC94FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF81C9A881C9A881C9A881C9A881C9A881C9A8FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          Layout = blGlyphTop
        end
      end
    end
  end
  object dtpBaseLocal: TDataSetProvider
    DataSet = sqlBaseLocal
    Left = 20
    Top = 4
  end
  object sqlBaseLocal: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      'SELECT *'
      'FROM tbcliente'
      
        'WHERE REPLACE(REPLACE(REPLACE(REPLACE(CNPJ,'#39'.'#39','#39#39'),'#39'-'#39','#39#39'),'#39'/'#39','#39 +
        #39'),'#39' '#39','#39#39') <> '#39#39
      '  AND NP <> '#39'C'#39)
    Params = <>
    Left = 80
    Top = 4
  end
  object cdsBaseLocal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtpBaseLocal'
    Left = 156
    Top = 4
  end
  object dtpBaseWeb: TDataSetProvider
    DataSet = sqlBaseWeb
    Left = 324
    Top = 4
  end
  object sqlBaseWeb: TZQuery
    Connection = fdm.conectnet
    SQL.Strings = (
      'select c.*, b.nome as nome_banco '
      
        'from tab_clientes c left join tab_bancos b on (c.numero_banco = ' +
        'b.numero) '
      'where (c.cpf is not null and c.cpf<>"" '
      '  and c.cpf <>"000.000.000-00" and cpf <>"00.000.000/0000-00"'
      
        '  and c.cpf <>"00000000000" and cpf <>"00000000000000") order by' +
        ' c.nome')
    Params = <>
    Left = 400
    Top = 4
  end
  object cdsBaseWeb: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'nome'
    Params = <>
    ProviderName = 'dtpBaseWeb'
    Left = 478
    Top = 4
  end
  object qryReport: TZQuery
    Connection = fdm.conector
    SQL.Strings = (
      
        'select c.codigo as cod, c.nome, c.cnpj as cpf, c.ie as rg, c.dat' +
        'a as data_insercao'
      'from tbcliente c'
      'where 1 = 2')
    Params = <>
    Left = 56
    Top = 140
  end
  object dsReport: TDataSource
    DataSet = cdsReport
    Left = 56
    Top = 197
  end
  object cdsReport: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'nome'
    Params = <>
    ProviderName = 'dtpReport'
    Left = 58
    Top = 367
  end
  object dtpReport: TDataSetProvider
    DataSet = qryReport
    Left = 56
    Top = 421
  end
  object qryAux: TZQuery
    Params = <>
    Left = 760
    Top = 4
  end
end
