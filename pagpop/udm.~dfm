object fdm: Tfdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 273
  Top = 8
  Height = 568
  Width = 798
  object dsempresa: TDataSource
    DataSet = tbempresa
    Left = 395
    Top = 135
  end
  object dsbancomovimento: TDataSource
    DataSet = tbbancomovimento
    Left = 264
    Top = 122
  end
  object dsconfig: TDataSource
    DataSet = tbconfig
    Left = 336
    Top = 127
  end
  object dscaixagrupo: TDataSource
    DataSet = tbcaixagrupo
    Left = 432
    Top = 263
  end
  object tbentradacaixa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'link'
    MasterFields = 'chave'
    MasterSource = dscaixagrupo
    PacketRecords = 0
    Params = <>
    Left = 508
    Top = 135
    object tbentradacaixachave: TIntegerField
      FieldName = 'chave'
      Required = True
    end
    object tbentradacaixadata: TDateField
      FieldName = 'data'
    end
    object tbentradacaixahora: TTimeField
      FieldName = 'hora'
    end
    object tbentradacaixadocumento: TStringField
      FieldName = 'documento'
      Size = 30
    end
    object tbentradacaixatotalparcial: TFloatField
      FieldName = 'totalparcial'
    end
    object tbentradacaixadesconto: TFloatField
      FieldName = 'desconto'
    end
    object tbentradacaixavalorgarcom: TFloatField
      FieldName = 'valorgarcom'
    end
    object tbentradacaixavrcouvert: TFloatField
      FieldName = 'vrcouvert'
    end
    object tbentradacaixataxa: TFloatField
      FieldName = 'taxa'
    end
    object tbentradacaixatotal: TFloatField
      FieldName = 'total'
    end
    object tbentradacaixadinheiro: TFloatField
      FieldName = 'dinheiro'
    end
    object tbentradacaixacheque: TFloatField
      FieldName = 'cheque'
    end
    object tbentradacaixachequepre: TFloatField
      FieldName = 'chequepre'
    end
    object tbentradacaixacartao: TFloatField
      FieldName = 'cartao'
    end
    object tbentradacaixatickts: TFloatField
      FieldName = 'tickts'
    end
    object tbentradacaixavltransp: TFloatField
      FieldName = 'vltransp'
    end
    object tbentradacaixafiado: TFloatField
      FieldName = 'fiado'
    end
    object tbentradacaixalink: TIntegerField
      FieldName = 'link'
    end
    object tbentradacaixamodo: TStringField
      FieldName = 'modo'
      Size = 8
    end
    object tbentradacaixausuario: TStringField
      FieldName = 'usuario'
    end
    object tbentradacaixasaida: TFloatField
      FieldName = 'saida'
    end
    object tbentradacaixasaidacredito: TFloatField
      FieldName = 'saidacredito'
    end
    object tbentradacaixacartaod: TFloatField
      FieldName = 'cartaod'
    end
    object tbentradacaixaconvenio: TFloatField
      FieldName = 'convenio'
    end
    object tbentradacaixanomecartaoc: TStringField
      FieldName = 'nomecartaoc'
      Size = 30
    end
    object tbentradacaixanomecartaod: TStringField
      FieldName = 'nomecartaod'
      Size = 30
    end
    object tbentradacaixadescricao: TStringField
      FieldName = 'descricao'
      Size = 30
    end
    object tbentradacaixaacrescimo: TFloatField
      FieldName = 'acrescimo'
    end
    object tbentradacaixajuro: TFloatField
      FieldName = 'juro'
    end
    object tbentradacaixacliente: TStringField
      FieldName = 'cliente'
      Size = 60
    end
    object tbentradacaixanomeconvenio: TStringField
      FieldName = 'nomeconvenio'
      Size = 60
    end
    object tbentradacaixacredito: TFloatField
      FieldName = 'credito'
    end
    object tbentradacaixatipo: TStringField
      FieldName = 'tipo'
      Size = 12
    end
    object tbentradacaixalinkvenda: TIntegerField
      FieldName = 'linkvenda'
    end
    object tbentradacaixamodulo: TStringField
      FieldName = 'modulo'
      Size = 3
    end
    object tbentradacaixaemp: TIntegerField
      FieldName = 'emp'
    end
  end
  object dsentradacaixa: TDataSource
    DataSet = tbentradacaixa
    Left = 508
    Top = 187
  end
  object ActionList1: TActionList
    Left = 268
    Top = 198
    object comadriana: TAction
      Caption = 'comadriana'
    end
    object lerxml: TAction
      Caption = 'lerxml'
      OnExecute = lerxmlExecute
    end
  end
  object dstransfere: TDataSource
    DataSet = tbtransfere
    Left = 628
    Top = 202
  end
  object pquery2: TDataSetProvider
    DataSet = Query2
    Left = 84
    Top = 395
  end
  object tbquery2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pquery2'
    Left = 28
    Top = 343
  end
  object dsquery2: TDataSource
    DataSet = tbquery2
    Left = 136
    Top = 410
  end
  object tb: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'nome'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'x'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 420
    Top = 322
    object tbnome: TStringField
      FieldName = 'nome'
      Size = 30
    end
    object tbx: TStringField
      FieldName = 'x'
      Size = 1
    end
  end
  object pquery1: TDataSetProvider
    DataSet = Query1
    Left = 52
    Top = 86
  end
  object tbquery1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pquery1'
    Left = 8
    Top = 134
  end
  object dsquery1: TDataSource
    DataSet = tbquery1
    Left = 52
    Top = 126
  end
  object tbmov: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'data'
    Params = <>
    Left = 668
    Top = 324
    object tbmovchave: TIntegerField
      FieldName = 'chave'
    end
    object tbmovdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
    end
    object tbmovestiniqtd: TFloatField
      DisplayLabel = 'Qtd'
      DisplayWidth = 9
      FieldName = 'estiniqtd'
    end
    object tbmovestinivr: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 9
      FieldName = 'estinivr'
      DisplayFormat = '###,##0.00'
    end
    object tbmovqtde: TFloatField
      DisplayLabel = 'Qtd'
      DisplayWidth = 9
      FieldName = 'qtde'
    end
    object tbmovvrunite: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 9
      FieldName = 'vrunite'
      DisplayFormat = '###,##0.00'
    end
    object tbmovqtded: TFloatField
      DisplayLabel = 'Qtd'
      DisplayWidth = 9
      FieldName = 'qtded'
    end
    object tbmovvrunited: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 9
      FieldName = 'vrunited'
      DisplayFormat = '###,##0.00'
    end
    object tbmovqtds: TFloatField
      DisplayLabel = 'Qtd'
      DisplayWidth = 9
      FieldName = 'qtds'
    end
    object tbmovvrunits: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 9
      FieldName = 'vrunits'
      DisplayFormat = '###,##0.00'
    end
    object tbmovqtdsd: TFloatField
      DisplayLabel = 'Qtd'
      DisplayWidth = 9
      FieldName = 'qtdsd'
    end
    object tbmovvrunitsd: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 9
      FieldName = 'vrunitsd'
      DisplayFormat = '###,##0.00'
    end
    object tbmovestfinqtd: TFloatField
      DisplayLabel = 'Qtd'
      DisplayWidth = 9
      FieldName = 'estfinqtd'
    end
    object tbmovestfinvr: TFloatField
      DisplayLabel = 'Valor'
      DisplayWidth = 9
      FieldName = 'estfinvr'
      DisplayFormat = '###,##0.00'
    end
    object tbmovacumulo: TFloatField
      DisplayLabel = 'Ac'#250'm'
      DisplayWidth = 9
      FieldName = 'acumulo'
    end
    object tbmovcustomedio: TFloatField
      DisplayLabel = 'C.M'#233'd'
      DisplayWidth = 9
      FieldName = 'customedio'
      DisplayFormat = '###,##0.00'
    end
  end
  object dsmov: TDataSource
    DataSet = tbmov
    Left = 708
    Top = 312
  end
  object dg: TDataSource
    DataSet = tg
    Left = 416
    Top = 384
  end
  object pg: TDataSetProvider
    DataSet = sg
    Left = 468
    Top = 384
  end
  object dp: TDataSource
    DataSet = tp
    Left = 416
    Top = 436
  end
  object pp: TDataSetProvider
    DataSet = sp
    Left = 468
    Top = 436
  end
  object tp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pp'
    Left = 576
    Top = 436
  end
  object conector: TZConnection
    Protocol = 'mysql'
    HostName = 'localhost'
    Port = 3306
    Database = 'sigac'
    User = 'root'
    AutoCommit = False
    BeforeConnect = conectorBeforeConnect
    Left = 148
    Top = 12
  end
  object sg: TZQuery
    Connection = conector
    SQL.Strings = (
      'select * from tbcliente')
    Params = <>
    Left = 520
    Top = 384
  end
  object sp: TZQuery
    Connection = conector
    Params = <>
    Left = 520
    Top = 432
  end
  object Query1: TZQuery
    Connection = conector
    Params = <>
    Left = 8
    Top = 80
  end
  object queryext: TZQuery
    Connection = conector
    SQL.Strings = (
      
        'select qtd ,modo , 1 as link , if (descontoreal is not null, vru' +
        'nit - descontoreal,vrunit) , if (descontoreal is not null, (vrun' +
        'it -descontoreal)*qtd, vrunit*qtd) , data , vrunit , descontoRea' +
        'l , vendal , defeito , defeitoN , tipovenda , tamanho , chavedev' +
        'olucao , tipoestoque , tm1 , tm2 , tm3 , cor , bonificacao , qtd' +
        '-qtd as pis , qtd-qtd as confins , codigo , descricao  , descric' +
        'ao as cf , descricao as st , descricao as un , descricao as impo' +
        'sto , descricao as codigooriginal  , descricao as codigoforneced' +
        'or  , descricao as icm  , descricao as desconto  , qtd-qtd as ip' +
        'i , qtd-qtd as custo , qtd-qtd as custol , qtd-qtd as reducaobas' +
        'ecalc  , qtd-qtd as mva  , descricao as cfop  , descricao as cod' +
        'igobarras  from tbpedidoitem where link = '#39'1'#39)
    Params = <>
    Left = 24
    Top = 424
  end
  object Query2: TZQuery
    Connection = conector
    SQL.Strings = (
      'select * from tbcategoria order by chave')
    Params = <>
    Left = 56
    Top = 192
  end
  object conectnet: TZConnection
    Protocol = 'mysql'
    HostName = 'localhost'
    Port = 3306
    Database = 'sigac'
    User = 'root'
    AutoCommit = False
    BeforeConnect = conectnetBeforeConnect
    Left = 92
    Top = 12
  end
  object snet: TZQuery
    Connection = conectnet
    Params = <>
    Left = 144
    Top = 88
  end
  object sqext: TZConnection
    Protocol = 'mysql'
    HostName = 'localhost'
    Port = 3306
    Database = 'sigac'
    User = 'root'
    AutoCommit = False
    BeforeConnect = sqextBeforeConnect
    Left = 196
    Top = 12
  end
  object DsIndEcf: TDataSource
    DataSet = TbIndEcf
    Left = 228
    Top = 293
  end
  object DsEcf: TDataSource
    DataSet = tbecf
    Left = 220
    Top = 348
  end
  object DsEcfitem: TDataSource
    DataSet = tbecfitem
    Left = 344
    Top = 296
  end
  object tbecf: TZQuery
    Connection = conector
    SQL.Strings = (
      
        'select * from  tbecf where num_cupom='#39'1449'#39' and num_serie_ECF='#39'0' +
        '00000000046632'#39)
    Params = <>
    Left = 168
    Top = 352
  end
  object TbIndEcf: TZQuery
    Connection = conector
    SortedFields = 'link'
    SQL.Strings = (
      'select * from tbindecf')
    Params = <>
    MasterFields = 'chave'
    MasterSource = dsicms
    LinkedFields = 'link'
    IndexFieldNames = 'link Asc'
    Left = 168
    Top = 296
  end
  object dsicms: TDataSource
    DataSet = tbicms
    Left = 320
    Top = 352
  end
  object tbicms: TZQuery
    Connection = conector
    SQL.Strings = (
      'select * from tbicms')
    Params = <>
    Left = 272
    Top = 352
  end
  object conectemp: TZConnection
    Protocol = 'mysql'
    HostName = 'localhost'
    Port = 3306
    Database = 'sigac'
    User = 'root'
    AutoCommit = False
    BeforeConnect = conectempBeforeConnect
    Left = 252
    Top = 12
  end
  object tbecfitem: TZQuery
    Connection = conector
    SQL.Strings = (
      'select * from tbecfitem')
    Params = <>
    Left = 288
    Top = 296
  end
  object dbcep: TZConnection
    Protocol = 'mysql'
    HostName = 'localhost'
    Port = 3306
    Database = 'cep'
    User = 'root'
    AutoCommit = False
    BeforeConnect = dbcepBeforeConnect
    Left = 36
    Top = 12
  end
  object cep: TZQuery
    Connection = dbcep
    Params = <>
    Left = 96
    Top = 88
  end
  object dsuso: TDataSource
    DataSet = tbuso
    Left = 512
    Top = 320
  end
  object tbcaixagrupo: TZQuery
    Connection = conector
    Params = <>
    Left = 520
    Top = 256
  end
  object tbtransfere: TZQuery
    Connection = conector
    SQL.Strings = (
      'select * from tbtransfere')
    Params = <>
    Left = 592
    Top = 200
  end
  object sSintegra: TZQuery
    Connection = conector
    Params = <>
    Left = 584
    Top = 136
  end
  object tbempresa: TZQuery
    Connection = conector
    SQL.Strings = (
      'select * from tbempresa')
    Params = <>
    Left = 392
    Top = 128
  end
  object tbbancomovimento: TZQuery
    Connection = conector
    SQL.Strings = (
      'select * from tbbancomovimento')
    Params = <>
    Left = 264
    Top = 120
  end
  object tbconfig: TZQuery
    Connection = conector
    SQL.Strings = (
      'select * from tbconfig')
    Params = <>
    Left = 336
    Top = 120
  end
  object psintegra: TDataSetProvider
    DataSet = sSintegra
    Left = 624
    Top = 136
  end
  object TbSintegra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'psintegra'
    Left = 664
    Top = 136
  end
  object tbuso: TClientDataSet
    Aggregates = <>
    FileName = 'D:\fonte delphi\sigac\tbcedente.xml'
    Params = <>
    Left = 464
    Top = 320
  end
  object tg: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pg'
    Left = 576
    Top = 384
  end
  object tbtef: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 616
    Top = 240
    object tbteftipocupom: TIntegerField
      FieldName = 'tipocupom'
    end
    object tbtefposicao: TIntegerField
      FieldName = 'posicao'
    end
    object tbtefcupom: TIntegerField
      FieldName = 'cupom'
    end
    object tbtefrecebido: TStringField
      FieldName = 'recebido'
      Size = 1
    end
  end
  object tbteftxt: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    IndexFieldNames = 'chave'
    Params = <>
    StoreDefs = True
    Left = 680
    Top = 240
    object tbteftxtchave: TIntegerField
      FieldName = 'chave'
    end
    object tbteftxttexto: TStringField
      FieldName = 'texto'
      Size = 255
    end
    object tbteftxtqtd: TIntegerField
      FieldName = 'qtd'
    end
  end
  object snet2: TZQuery
    Connection = conectnet
    Params = <>
    Left = 136
    Top = 192
  end
  object pnet: TDataSetProvider
    DataSet = snet
    Left = 140
    Top = 118
  end
  object tbnet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pnet'
    Left = 176
    Top = 118
  end
  object Expressao: TRLExpressionParser
    Left = 580
    Top = 14
  end
  object RLExpressionParser1: TRLExpressionParser
    Left = 704
    Top = 14
  end
  object SaveDialog: TSaveDialog
    Left = 468
    Top = 14
  end
  object PDF: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.19 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 420
    Top = 14
  end
  object html: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 376
    Top = 14
  end
  object word: TRLRichFilter
    DisplayName = 'Formato RichText'
    Left = 344
    Top = 14
  end
  object excel: TRLXLSFilter
    DisplayName = 'Planilha Excel'
    Left = 308
    Top = 14
  end
  object OpenDialog: TOpenDialog
    InitialDir = 'C:\'
    Left = 528
    Top = 12
  end
  object filtro: TRLDraftFilter
    DisplayName = 'Impressora Matricial'
    Left = 632
    Top = 16
  end
  object RLBTitulo1: TRLBTitulo
    BoletoLayout = blCarne
    PrintDialog = True
    TipoOcorrencia = toRemessaRegistrar
    LocalPagamento = 'PAG'#193'VEL EM QUALQUER BANCO AT'#201' O VENCIMENTO'
    Cedente.TipoInscricao = tiPessoaFisica
    Sacado.TipoInscricao = tiPessoaFisica
    AceiteDocumento = adNao
    EspecieDocumento = edDuplicataMercantil
    EmissaoBoleto = ebClienteEmite
    LayoutNN = lnN17
    Versao = '1.1.5'
    Left = 691
    Top = 72
  end
  object RLBRemessa1: TRLBRemessa
    NumeroArquivo = 0
    LayoutArquivo = laCNAB240
    TipoMovimento = tmRetorno
    Left = 624
    Top = 80
  end
  object tbei: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 228
    Top = 432
    object tbeicodigobarras: TStringField
      FieldName = 'codigobarras'
      Size = 13
    end
    object tbeiqtd: TFloatField
      FieldName = 'qtd'
    end
    object tbeivrunit: TFloatField
      FieldName = 'vrunit'
    end
    object tbeitotnf: TFloatField
      FieldName = 'totnf'
    end
    object tbeidescontoReal: TFloatField
      FieldName = 'descontoReal'
    end
    object tbeisegurovr: TFloatField
      FieldName = 'segurovr'
    end
    object tbeifretevr: TFloatField
      FieldName = 'fretevr'
    end
    object tbeivripi: TFloatField
      FieldName = 'vripi'
    end
    object tbeiicmsent: TFloatField
      FieldName = 'icmsent'
    end
    object tbeiipi: TFloatField
      FieldName = 'ipi'
    end
    object tbeidescricao: TStringField
      FieldName = 'descricao'
      Size = 60
    end
    object tbeicfop: TStringField
      FieldName = 'cfop'
      Size = 5
    end
    object tbeicst: TStringField
      FieldName = 'cst'
      Size = 3
    end
    object tbeiRedBasePct: TFloatField
      FieldName = 'RedBasePct'
    end
    object tbeiredsai: TFloatField
      FieldName = 'redsai'
    end
    object tbeimva: TFloatField
      FieldName = 'mva'
    end
    object tbeipauta: TStringField
      FieldName = 'pauta'
      Size = 6
    end
    object tbeiitem: TIntegerField
      FieldName = 'item'
    end
    object tbeiBsIcmsSubst: TFloatField
      FieldName = 'BsIcmsSubst'
    end
    object tbeiVrIcmsSubst: TFloatField
      FieldName = 'VrIcmsSubst'
    end
    object tbeicodigofornecedor: TStringField
      FieldName = 'codigofornecedor'
      Size = 30
    end
    object tbeincmsh: TStringField
      FieldName = 'ncmsh'
      Size = 30
    end
    object tbeibaseicm: TFloatField
      FieldName = 'baseicm'
    end
    object tbeiVrIcms: TFloatField
      FieldName = 'VrIcms'
    end
  end
  object tbe: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 284
    Top = 432
    object tbenf: TIntegerField
      FieldName = 'nf'
    end
    object tbedatanota: TDateField
      FieldName = 'datanota'
    end
    object tbecnpj: TStringField
      FieldName = 'cnpj'
    end
    object tbefreteconta: TStringField
      FieldName = 'freteconta'
      Size = 12
    end
    object tbedescontoReal: TFloatField
      FieldName = 'descontoReal'
    end
    object tbebasecalculo: TFloatField
      FieldName = 'basecalculo'
    end
    object tbevaloricms: TFloatField
      FieldName = 'valoricms'
    end
    object tbevaloricmss: TFloatField
      FieldName = 'valoricmss'
    end
    object tbebasecalculoS: TFloatField
      FieldName = 'basecalculoS'
    end
    object tbefretesoma: TFloatField
      FieldName = 'fretesoma'
    end
    object tbevaloripi: TFloatField
      FieldName = 'valoripi'
    end
    object tbedespesaacessoria: TFloatField
      FieldName = 'despesaacessoria'
    end
    object tbesegurodig: TFloatField
      FieldName = 'segurodig'
    end
    object tbetotaldesconto: TFloatField
      FieldName = 'totaldesconto'
    end
    object tbetotalparcial: TFloatField
      FieldName = 'totalparcial'
    end
    object tbemodelo: TIntegerField
      FieldName = 'modelo'
    end
    object tbeserie: TIntegerField
      FieldName = 'serie'
    end
  end
  object tbnet2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pnet2'
    Left = 144
    Top = 262
  end
  object pnet2: TDataSetProvider
    DataSet = snet2
    Left = 108
    Top = 262
  end
  object nfe: TACBrNFe
    Configuracoes.Geral.PathSalvar = 'C:\Program Files\Borland\Delphi7\Bin\'
    Configuracoes.WebServices.UF = 'RS'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.IntervaloTentativas = 0
    Configuracoes.WebServices.AjustaAguardaConsultaRet = False
    Configuracoes.Arquivos.Salvar = True
    Configuracoes.Arquivos.PastaMensal = True
    Configuracoes.Arquivos.AdicionarLiteral = True
    Configuracoes.Arquivos.EmissaoPathNFe = True
    Configuracoes.Arquivos.PathNFe = 'C:\Nfe\Enviadas'
    Configuracoes.Arquivos.PathCan = 'C:\Nfe\Cancelar'
    Configuracoes.Arquivos.PathInu = 'C:\Nfe\Inutilizar'
    Configuracoes.Arquivos.PathDPEC = 'C:\Nfe\DPEC'
    Left = 388
    Top = 200
  end
  object sqlBanco: TZQuery
    Connection = conectnet
    Params = <>
    Left = 656
    Top = 376
  end
  object dspBanco: TDataSetProvider
    DataSet = sqlBanco
    Left = 656
    Top = 422
  end
  object cdsBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBanco'
    Left = 656
    Top = 470
  end
end
