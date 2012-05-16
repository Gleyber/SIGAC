unit daruma32;

interface

uses
  Windows, Classes, Sysutils, Dialogs;

const
  SLIBNOTFOUND = 'Biblioteca dinânica %s não encontrada.';
  DARUMALIB='Daruma32.dll';
type
  //============================================================================\\
    // Funções do Cupom Fiscal
  //============================================================================\\
  TDaruma_FI_AbreCupom  = function(CNPJ_CPF: string) : integer;stdcall;

  TDaruma_FI_VendeItem  = function(Codigo, Descricao, Aliquota, TipoQuantidade,
    Quantidade: string; CasasDecimais : integer;
    ValorUnitario, TipoDesconto, ValorDesconto: string) : integer; stdcall;

  TDaruma_FI_VendeItemTresDecimais  = function(Codigo, Descricao, Aliquota,
    Quantidade, ValorUnitario, AcrescimoDesconto, PercentAcr_Desc: string):integer; stdcall;

  TDaruma_FI_VendeItemDepartamento  = function(Codigo, Descricao, Aliquota,
    ValorUnitario, Quantidade, Acrescimo, Desconto, IndiceDepartamento,
    UnidadeMedida : string) : integer; stdcall;

  TDaruma_FI_VendeItem1Lin13Dig  = function(Codigo, Descricao, Aliquota,
    Quantidade ,ValorUnitario, AcrescimoDesconto,
    PercentAcr_Desc: string) : integer; stdcall;

  TDaruma_FI_VendeItem1Lin6Dig  = function(Codigo, Descricao, Aliquota,
    Quantidade, ValorUnitario, AcrescimoDesconto,
    PercentAcr_Desc: string) : integer; stdcall;

  TDaruma_FI_CancelaItemAnterior  = function: integer; stdcall;

  TDaruma_FI_CancelaItemGenerico  = function(NumeroItem : string):integer; stdcall;

  TDaruma_FI_CancelaCupom  = function: integer; stdcall;

  TDaruma_FI_EmitirCupomAdicional  = function: integer; stdcall;

  TDaruma_FI_FechaCupomResumido  = function(FormaPagamento,
    Mensagem: string) : integer; stdcall;

  TDaruma_FI_FechaCupom  = function(FormaPagamento, AcrescimoDesconto,
    TipoAcrescimoDesconto, ValorAcrescimoDesconto, ValorPago,
    Mensagem: string) : integer;stdcall;

  TDaruma_FI_ResetaImpressora  = function: integer; stdcall;

  TDaruma_FI_FechaRelatorioXouZ  = function: integer; stdcall;

  TDaruma_FI_IniciaFechamentoCupom  = function(AcrescimoDesconto,
    TipoAcrescimoDesconto, ValorAcrescimoDesconto: string) : integer; stdcall;

  TDaruma_FI_EfetuaFormaPagamento  = function(FormaPagamento,
    ValorFormaPagamento : string) : integer; stdcall;

  TDaruma_FI_EfetuaFormaPagamentoDescricaoForma  = function(FormaPagamento,
    ValorFormaPagamento, DescricaoFormaPagto: string) : integer; stdcall;

  TDaruma_FI_TerminaFechamentoCupom  = function(Mensagem: string) : integer; stdcall;

  TDaruma_FI_IdentificaConsumidor  = function(Nome, Endereco,
    CNPJ_CPF: string) : integer; stdcall;

  TDaruma_FI_EstornoFormasPagamento  = function(FormaOrigem, FormaDestino,
    Valor: string) : integer; stdcall;

  TDaruma_FI_UsaUnidadeMedida  = function(UnidadeMedida: string) : integer; stdcall;

  TDaruma_FI_AumentaDescricaoItem  = function(Descricao : string) : integer; stdcall;

  //============================================================================\\
  //Funcoes de Registry
  //============================================================================\\
  TDaruma_Registry_Porta  = function(COM: string) : integer; stdcall;
  TDaruma_Registry_Path  = function(Path : string) : integer; stdcall;
  TDaruma_Registry_Status  = function(Status : string) : integer; stdcall;
  TDaruma_Registry_StatusFuncao  = function(StatusFuncao: string) : integer; stdcall;
  TDaruma_Registry_Retorno  = function(Retorno : string) : integer; stdcall;
  TDaruma_Registry_ControlePorta  = function(ControlePorta : string) : integer; stdcall;
  TDaruma_Registry_ModoGaveta  = function(ModoGaveta: string) : integer; stdcall;
  TDaruma_Registry_Log  = function(Log : string) : integer; stdcall;
  TDaruma_Registry_NomeLog  = function(NomeLog : string) : integer; stdcall;
  TDaruma_Registry_Separador  = function(Separador : string) : integer; stdcall;
  TDaruma_Registry_SeparaMsgPromo  = function(SeparaMsgPromo : string) : integer; stdcall;
  TDaruma_Registry_Emulador  = function(Emulador : string) : integer; stdcall;
  TDaruma_Registry_ConfigRede  = function(ConfigRede : string) : integer; stdcall;
  TDaruma_Registry_VendeItemUmaLinha  = function(VendeItemUmaLinha : string) : integer; stdcall;
  TDaruma_Registry_RetornaValor  = function(Produto : string; chave : string;
    Referencia : string) : integer; stdcall;
  TDaruma_Registry_ImprimeValor  = function(ImprimeValor : string) : integer; stdcall;
  TDaruma_Registry_ZAutomatica  = function(ZAutomatica : string) : integer; stdcall;
  TDaruma_Registry_XAutomatica  = function(XAutomatica : string) : integer; stdcall;
  TDaruma_Registry_Default  = function : integer; stdcall;
  TDaruma_Registry_ImprimeRegistry  = function(ImprimeRegistry : string) : integer; stdcall;
  TDaruma_Registry_TerminalServer  = function(TerminalServer : string) : integer; stdcall;
  TDaruma_Registry_AlteraRegistry  = function(Chave : string;
    Valor: string) : integer; stdcall;
  TDaruma_Registry_ErroExtendidoOk  = function(ErroExtendidoOk : string) : integer; stdcall;
  TDaruma_Registry_AbrirDiaFiscal  = function(AbrirDiaFiscal : string) : integer; stdcall;
  TDaruma_Registry_VendaAutomatica  = function(VendaAutomatica : string) : integer; stdcall;

  //============================================================================\\
  //Funcoes de Configuracao da IF
  //============================================================================\\
  TDaruma_FI_Cfg = function(icaracter : integer; valor: string) : integer;stdcall;
  TDaruma_FI_CfgEnviar  = function : integer; stdcall;
  TDaruma_FI_CfgFechaAutomaticoCupom  = function(valor: string) : integer;stdcall;
  TDaruma_FI_CfgRedZAutomatico  = function(valor: string) : integer; stdcall;
  TDaruma_FI_CfgImpEstGavVendas  = function(valor :string) : integer; stdcall;
  TDaruma_FI_CfgLeituraXAuto  = function(valor: string) : integer;stdcall;
  TDaruma_FI_CfgCalcArredondamento  = function(valor: string) : integer;stdcall;
  TDaruma_FI_CfgHorarioVerao   =  function(valor: string) : integer;stdcall;
  TDaruma_FI_CfgSensorAut = function (valor: string) : integer; stdcall;
  TDaruma_FI_CfgCupomAdicional = function(valor: string) : integer; stdcall;
  TDaruma_FI_CfgLegProdutos = function (valor: string) : integer; stdcall;
  TDaruma_FI_CfgEspacamentoCupons = function(valor: string) : integer; stdcall;
  TDaruma_FI_CfgHoraMinReducaoZ = function(valor: string) : integer; stdcall;
  TDaruma_FI_CfgLimiarNearEnd = function(valor: string) : integer;stdcall;
  TDaruma_FI_CfgPermMensPromCNF = function(valor: string) : integer; stdcall;

  //============================================================================\\
  // Funções de Inicialização
  //============================================================================\\
  TDaruma_FI_AlteraSimboloMoeda  = function(SimboloMoeda: string) : integer;stdcall;
  TDaruma_FI_ProgramaAliquota  = function (Aliquota : string;
    ICMS_ISS: integer): integer;stdcall;
  TDaruma_FI_ProgramaHorarioVerao  = function: integer; stdcall;
  TDaruma_FI_NomeiaDepartamento  = function (Indice : integer;
    Departamento: string) : integer; stdcall;
  TDaruma_FI_NomeiaTotalizadorNaoSujeitoIcms = function(Indice : integer;
    Totalizador : string) : integer; stdcall;
  TDaruma_FI_ProgramaArredondamento  = function: integer; stdcall;
  TDaruma_FI_ProgramaTruncamento  = function: integer;  stdcall;
  TDaruma_FI_LinhasEntreCupons = function(Linhas: integer) : integer; stdcall;
  TDaruma_FI_EspacoEntreLinhas  = function(Dots: integer) : integer; stdcall;
  TDaruma_FI_ForcaImpactoAgulhas  = function(ForcaImpacto: integer):integer;stdcall;
  TDaruma_FI_ProgramaFormasPagamento  = function(Formas: string) : integer; stdcall;
  TDaruma_FI_ProgramaOperador  = function(Operador : string) : integer; stdcall;

  //============================================================================\\
  // Funções dos Relatórios Fiscais
  //============================================================================\\
  TDaruma_FI_LeituraX  = function: integer; stdcall;
  TDaruma_FI_ReducaoZ  = function(Data : string; Hora: string): integer; stdcall;
  TDaruma_FI_RelatorioGerencial  = function(Texto : string): integer; stdcall;
  TDaruma_FI_AbreRelatorioGerencial  = function() : integer; stdcall;
  TDaruma_FI_EnviarTextoCNF = function(Texto : string): integer;stdcall;
  TDaruma_FI_FechaRelatorioGerencial  = function: integer; stdcall;
  TDaruma_FI_LeituraMemoriaFiscalData  = function(DataInicial: string; DataFinal : string) : integer; stdcall;
  TDaruma_FI_RetornaRegistradoresFiscais = function(Registradores:string):integer; stdcall;
  TDaruma_FI_LeituraMemoriaFiscalReducao  = function(ReducaoInicial: string;
    ReducaoFinal : string) : integer; stdcall;
  TDaruma_FI_LeituraMemoriaFiscalSerialData = function(DataInicial: string;
    DataFinal : string) : integer; stdcall;
  TDaruma_FI_LeituraMemoriaFiscalSerialReducao = function(ReducaoInicial: string;
    ReducaoFinal : string) : integer; stdcall;

  //============================================================================\\
  // Funções das Operações Não Fiscais
  //============================================================================\\
  TDaruma_FI_RecebimentoNaoFiscal = function(IndiceTotalizador: string;  Valor : string; FormaPagamento : string) : integer; stdcall;
  TDaruma_FI_AbreComprovanteNaoFiscalVinculado  = function(FormaPagamento: string;  Valor : string; NumeroCupom : string) : integer; stdcall;
  TDaruma_FI_UsaComprovanteNaoFiscalVinculado = function(Texto: string):integer; stdcall;
  TDaruma_FI_FechaComprovanteNaoFiscalVinculado  = function: integer; stdcall;

  TDaruma_FI_Sangria  = function(Valor: string) : integer;  stdcall;
  TDaruma_FI_Suprimento = function(Valor : string; FormaPagamento: string):integer;stdcall;

  //============================================================================\\
  // Funções de Informações da Impressora
  //============================================================================\\

  TDaruma_FI_StatusCupomFiscal = function(StatusRel: string) : integer; stdcall;
  TDaruma_FI_StatusComprovanteNaoFiscalVinculado = function(StatusRel: string) : integer; stdcall;
  TDaruma_FI_StatusRelatorioGerencial = function(StatusRel: string) : integer; stdcall;
  TDaruma_FI_NumeroSerie  = function(NumeroSerie: string) : integer; stdcall;
  TDaruma_FI_SubTotal = function(SubTotal: string) : integer;stdcall;
  TDaruma_FI_NumeroCupom = function(NumeroCupom: string) : integer; stdcall;
  TDaruma_FI_LeituraXSerial  = function: integer; stdcall;
  TDaruma_FI_VersaoFirmware  = function(VersaoFirmware: string) : integer; stdcall;
  TDaruma_FI_CGC_IE  = function(CGC : string; IE: string) : integer; stdcall;
  TDaruma_FI_GrandeTotal  = function(GrandeTotal: string) : integer; stdcall;
  TDaruma_FI_Cancelamentos  = function(ValorCancelamentos: string) : integer;stdcall;
  TDaruma_FI_Descontos  = function(ValorDescontos: string) : integer; stdcall;
  TDaruma_FI_NumeroOperacoesNaoFiscais = function(NumeroOperacoes: string) : integer; stdcall;
  TDaruma_FI_NumeroCuponsCancelados = function(NumeroCancelamentos  : string) : integer; stdcall;
  TDaruma_FI_NumeroIntervencoes = function(NumeroIntervencoes: string) : integer; stdcall;
  TDaruma_FI_NumeroReducoes  =function(NumeroReducoes: string) : integer; stdcall;
  TDaruma_FI_NumeroSubstituicoesProprietario  = function(NumeroSubstituicoes: string) : integer; stdcall;
  TDaruma_FI_UltimoItemVendido = function(NumeroItem: string) : integer; stdcall;
  TDaruma_FI_ClicheProprietario = function (Cliche: string) : integer; stdcall;
  TDaruma_FI_NumeroCaixa  = function(NumeroCaixa : string) : integer; stdcall;
  TDaruma_FI_NumeroLoja  = function(NumeroLoja : string) : integer; stdcall;
  TDaruma_FI_SimboloMoeda = function(SimboloMoeda : string) : integer; stdcall;
  TDaruma_FI_MinutosLigada = function(Minutos : string) : integer; stdcall;
  TDaruma_FI_MinutosImprimindo = function(Minutos : string) : integer; stdcall;
  TDaruma_FI_VerificaModoOperacao  = function(Modo : string) : integer; stdcall;
  TDaruma_FI_VerificaEpromConectada  = function(Flag : string) : integer; stdcall;
  TDaruma_FI_FlagsFiscais  = function (var Flag: integer) : integer; stdcall;
  TDaruma_FI_ValorPagoUltimoCupom  = function(ValorCupom: string) : integer; stdcall;
  TDaruma_FI_DataHoraImpressora  = function(Data : string; Hora :string) : integer;stdcall;
  TDaruma_FI_ContadoresTotalizadoresNaoFiscais  = function(Contadores: string) : integer;stdcall;
  TDaruma_FI_VerificaTotalizadoresNaoFiscais  = function(Totalizadores: string) : integer;stdcall;
  TDaruma_FI_VerificaTotalizadoresNaoFiscaisEx = function(Totalizadores: string) : integer;stdcall;
  TDaruma_FI_DataHoraReducao = function(Data : string; Hora: string) : integer;stdcall;
  TDaruma_FI_DataMovimento = function(Data : string) : integer; stdcall;
  TDaruma_FI_VerificaTruncamento = function(Flag : string) : integer; stdcall;
  TDaruma_FI_Acrescimos = function(ValorAcrescimos : string) : integer; stdcall;
  TDaruma_FI_ContadorBilhetePassagem  = function(ContadorPassagem : string):integer; stdcall;
  TDaruma_FI_VerificaAliquotasIss = function(Flag : string) : integer; stdcall;
  TDaruma_FI_VerificaFormasPagamentoEx = function(Formas : string) : integer; stdcall;
  TDaruma_FI_VerificaRecebimentoNaoFiscal  = function(Recebimentos : string): integer; stdcall;
  TDaruma_FI_VerificaDepartamentos  = function(Departamentos : string) : integer; stdcall;
  TDaruma_FI_VerificaTipoImpressora  = function(var TipoImpressora : integer) : integer; stdcall;
  TDaruma_FI_VerificaTotalizadoresParciais = function(Totalizadores : string) : integer; stdcall;
  TDaruma_FI_RetornoAliquotas  = function(Aliquotas : string) : integer; stdcall;
  TDaruma_FI_VerificaEstadoImpressora = function (var ACK : integer;
    var ST1 : integer; var ST2 : integer) : integer; stdcall;
  TDaruma_FI_DadosUltimaReducao = function(DadosReducao : string) : integer; stdcall;
  TDaruma_FI_MonitoramentoPapel  = function(var Linhas : integer) : integer; stdcall;
  TDaruma_FI_VerificaIndiceAliquotasIss = function(Flag: string) : integer; stdcall;
  TDaruma_FI_ValorFormaPagamento  = function (FormaPagamento: string;
    Valor : string) : integer; stdcall;
  TDaruma_FI_ValorTotalizadorNaoFiscal  = function (Totalizador: string;
    Valor : string) : integer; stdcall;
  TDaruma_FI_PalavraStatus = function(Palavra: string) : integer; stdcall;
  TDaruma_FI_PalavraStatusBinario = function(Palavra: string) : integer; stdcall;
  TDaruma_FI_LerAliquotasComIndice = function(Palavra : string) : integer; stdcall;

  //============================================================================\\
  // Funções de Autenticação e Gaveta de Dinheiro
  //============================================================================\\
  TDaruma_FI_Autenticacao  = function: integer; stdcall;
  TDaruma_FI_AutenticacaoStr = function (str: string) : integer; stdcall;
  TDaruma_FI_VerificaDocAutenticacao  = function: integer; stdcall;
  TDaruma_FI_AcionaGaveta  = function: integer;  stdcall;
  TDaruma_FI_VerificaEstadoGaveta = function (var EstadoGaveta: integer) : integer; stdcall;

  //============================================================================\\
  // Outras Funções
  //============================================================================\\
  TDaruma_FI_AbrePortaSerial  = function: integer; stdcall;
  TDaruma_FI_RetornoImpressora = function(var ACK : integer; var ST1 : integer;
    var ST2 : integer) : integer; stdcall;
  TDaruma_FI_FechaPortaSerial  = function: integer; stdcall;
  TDaruma_FI_MapaResumo  = function: integer; stdcall;
  TDaruma_FI_AberturaDoDia = function (ValorCompra: string;
    FormaPagamento : string) : integer; stdcall;
  TDaruma_FI_FechamentoDoDia  = function: integer; stdcall;
  TDaruma_FI_ImprimeConfiguracoesImpressora  = function: integer; stdcall;
  TDaruma_FI_ImprimeDepartamentos  = function: integer; stdcall;
  TDaruma_FI_RelatorioTipo60Analitico  = function: integer; stdcall;
  TDaruma_FI_RelatorioTipo60Mestre  = function: integer; stdcall;
  TDaruma_FI_VerificaImpressoraLigada  = function: integer; stdcall;
  TDaruma_FI_RetornaErroExtendido  = function(Codigoerro : string) : integer; stdcall;

  //============================================================================\\
  // Funções de Facilidades para o TEF
  //============================================================================\\
  TDaruma_TEF_EsperarArquivo  = function(Arquivo, Tempo,
    TravarTeclado: string) : integer; stdcall;
  TDaruma_TEF_ImprimirResposta  = function(Arquivo, Forma,
    TravarTeclado : string) : integer; stdcall;
  TDaruma_TEF_SetFocus  = function(Janela : string) : integer; stdcall;
  TDaruma_TEF_TravarTeclado  = function(Travar : string) : integer; stdcall;
  TDaruma_TEF_FechaRelatorio = function : Integer; stdcall;

var           
  hDLL: THandle = 0;
  Daruma_FI_AbreCupom: TDaruma_FI_AbreCupom;
  Daruma_FI_VendeItem: TDaruma_FI_VendeItem;
  Daruma_FI_VendeItemTresDecimais: TDaruma_FI_VendeItemTresDecimais;
  Daruma_FI_VendeItemDepartamento: TDaruma_FI_VendeItemDepartamento;
  Daruma_FI_VendeItem1Lin13Dig: TDaruma_FI_VendeItem1Lin13Dig;
  Daruma_FI_VendeItem1Lin6Dig: TDaruma_FI_VendeItem1Lin6Dig;
  Daruma_FI_CancelaItemAnterior: TDaruma_FI_CancelaItemAnterior;
  Daruma_FI_CancelaItemGenerico: TDaruma_FI_CancelaItemGenerico;
  Daruma_FI_CancelaCupom: TDaruma_FI_CancelaCupom;
  Daruma_FI_EmitirCupomAdicional: TDaruma_FI_EmitirCupomAdicional;
  Daruma_FI_FechaCupomResumido: TDaruma_FI_FechaCupomResumido;
  Daruma_FI_FechaCupom: TDaruma_FI_FechaCupom;
  Daruma_FI_ResetaImpressora: TDaruma_FI_ResetaImpressora;
  Daruma_FI_FechaRelatorioXouZ: TDaruma_FI_FechaRelatorioXouZ;
  Daruma_FI_IniciaFechamentoCupom: TDaruma_FI_IniciaFechamentoCupom;
  Daruma_FI_EfetuaFormaPagamento: TDaruma_FI_EfetuaFormaPagamento;
  Daruma_FI_EfetuaFormaPagamentoDescricaoForma: TDaruma_FI_EfetuaFormaPagamentoDescricaoForma;
  Daruma_FI_TerminaFechamentoCupom: TDaruma_FI_TerminaFechamentoCupom;
  Daruma_FI_IdentificaConsumidor: TDaruma_FI_IdentificaConsumidor;
  Daruma_FI_EstornoFormasPagamento: TDaruma_FI_EstornoFormasPagamento;
  Daruma_FI_UsaUnidadeMedida: TDaruma_FI_UsaUnidadeMedida;
  Daruma_FI_AumentaDescricaoItem: TDaruma_FI_AumentaDescricaoItem;
  Daruma_Registry_Porta: TDaruma_Registry_Porta;
  Daruma_Registry_Path: TDaruma_Registry_Path;
  Daruma_Registry_Status: TDaruma_Registry_Status;
  Daruma_Registry_StatusFuncao: TDaruma_Registry_StatusFuncao;
  Daruma_Registry_Retorno: TDaruma_Registry_Retorno;
  Daruma_Registry_ControlePorta: TDaruma_Registry_ControlePorta;
  Daruma_Registry_ModoGaveta: TDaruma_Registry_ModoGaveta;
  Daruma_Registry_Log: TDaruma_Registry_Log;
  Daruma_Registry_NomeLog: TDaruma_Registry_NomeLog;
  Daruma_Registry_Separador: TDaruma_Registry_Separador;
  Daruma_Registry_SeparaMsgPromo: TDaruma_Registry_SeparaMsgPromo;
  Daruma_Registry_Emulador: TDaruma_Registry_Emulador;
  Daruma_Registry_ConfigRede: TDaruma_Registry_ConfigRede;
  Daruma_Registry_VendeItemUmaLinha: TDaruma_Registry_VendeItemUmaLinha;
  Daruma_Registry_RetornaValor: TDaruma_Registry_RetornaValor;
  Daruma_Registry_ImprimeValor: TDaruma_Registry_ImprimeValor;
  Daruma_Registry_ZAutomatica: TDaruma_Registry_ZAutomatica;
  Daruma_Registry_XAutomatica: TDaruma_Registry_XAutomatica;
  Daruma_Registry_Default: TDaruma_Registry_Default;
  Daruma_Registry_ImprimeRegistry: TDaruma_Registry_ImprimeRegistry;
  Daruma_Registry_TerminalServer: TDaruma_Registry_TerminalServer;
  Daruma_Registry_AlteraRegistry: TDaruma_Registry_AlteraRegistry;
  Daruma_Registry_ErroExtendidoOk: TDaruma_Registry_ErroExtendidoOk;
  Daruma_Registry_AbrirDiaFiscal: TDaruma_Registry_AbrirDiaFiscal;
  Daruma_Registry_VendaAutomatica: TDaruma_Registry_VendaAutomatica;
  Daruma_FI_Cfg: TDaruma_FI_Cfg;
  Daruma_FI_CfgEnviar: TDaruma_FI_CfgEnviar;
  Daruma_FI_CfgFechaAutomaticoCupom: TDaruma_FI_CfgFechaAutomaticoCupom;
  Daruma_FI_CfgRedZAutomatico: TDaruma_FI_CfgRedZAutomatico;
  Daruma_FI_CfgImpEstGavVendas: TDaruma_FI_CfgImpEstGavVendas;
  Daruma_FI_CfgLeituraXAuto: TDaruma_FI_CfgLeituraXAuto;
  Daruma_FI_CfgCalcArredondamento: TDaruma_FI_CfgCalcArredondamento;
  Daruma_FI_CfgHorarioVerao: TDaruma_FI_CfgHorarioVerao;
  Daruma_FI_CfgSensorAut: TDaruma_FI_CfgSensorAut;
  Daruma_FI_CfgCupomAdicional: TDaruma_FI_CfgCupomAdicional;
  Daruma_FI_CfgLegProdutos: TDaruma_FI_CfgLegProdutos;
  Daruma_FI_CfgEspacamentoCupons: TDaruma_FI_CfgEspacamentoCupons;
  Daruma_FI_CfgHoraMinReducaoZ: TDaruma_FI_CfgHoraMinReducaoZ;
  Daruma_FI_CfgLimiarNearEnd: TDaruma_FI_CfgLimiarNearEnd;
  Daruma_FI_CfgPermMensPromCNF: TDaruma_FI_CfgPermMensPromCNF;
  Daruma_FI_AlteraSimboloMoeda: TDaruma_FI_AlteraSimboloMoeda;
  Daruma_FI_ProgramaAliquota: TDaruma_FI_ProgramaAliquota;
  Daruma_FI_ProgramaHorarioVerao: TDaruma_FI_ProgramaHorarioVerao;
  Daruma_FI_NomeiaDepartamento: TDaruma_FI_NomeiaDepartamento;
  Daruma_FI_NomeiaTotalizadorNaoSujeitoIcms: TDaruma_FI_NomeiaTotalizadorNaoSujeitoIcms;
  Daruma_FI_ProgramaArredondamento: TDaruma_FI_ProgramaArredondamento;
  Daruma_FI_ProgramaTruncamento: TDaruma_FI_ProgramaTruncamento;
  Daruma_FI_LinhasEntreCupons: TDaruma_FI_LinhasEntreCupons;
  Daruma_FI_EspacoEntreLinhas: TDaruma_FI_EspacoEntreLinhas;
  Daruma_FI_ForcaImpactoAgulhas: TDaruma_FI_ForcaImpactoAgulhas;
  Daruma_FI_ProgramaFormasPagamento: TDaruma_FI_ProgramaFormasPagamento;
  Daruma_FI_ProgramaOperador: TDaruma_FI_ProgramaOperador;
  Daruma_FI_LeituraX: TDaruma_FI_LeituraX;
  Daruma_FI_ReducaoZ: TDaruma_FI_ReducaoZ;
  Daruma_FI_RelatorioGerencial: TDaruma_FI_RelatorioGerencial;

  Daruma_FI_AbreRelatorioGerencial: TDaruma_FI_AbreRelatorioGerencial;
  Daruma_FI_EnviarTextoCNF: TDaruma_FI_EnviarTextoCNF;
  Daruma_FI_FechaRelatorioGerencial: TDaruma_FI_FechaRelatorioGerencial;

  Daruma_FI_LeituraMemoriaFiscalData: TDaruma_FI_LeituraMemoriaFiscalData;
  Daruma_FI_RetornaRegistradoresFiscais: TDaruma_FI_RetornaRegistradoresFiscais;
  Daruma_FI_LeituraMemoriaFiscalReducao: TDaruma_FI_LeituraMemoriaFiscalReducao;
  Daruma_FI_LeituraMemoriaFiscalSerialData: TDaruma_FI_LeituraMemoriaFiscalSerialData;
  Daruma_FI_LeituraMemoriaFiscalSerialReducao: TDaruma_FI_LeituraMemoriaFiscalSerialReducao;
  Daruma_FI_RecebimentoNaoFiscal: TDaruma_FI_RecebimentoNaoFiscal;
  Daruma_FI_AbreComprovanteNaoFiscalVinculado: TDaruma_FI_AbreComprovanteNaoFiscalVinculado;
  Daruma_FI_UsaComprovanteNaoFiscalVinculado: TDaruma_FI_UsaComprovanteNaoFiscalVinculado;
  Daruma_FI_FechaComprovanteNaoFiscalVinculado: TDaruma_FI_FechaComprovanteNaoFiscalVinculado;
  Daruma_FI_Sangria: TDaruma_FI_Sangria;
  Daruma_FI_Suprimento: TDaruma_FI_Suprimento;
  Daruma_FI_StatusCupomFiscal: TDaruma_FI_StatusCupomFiscal;
  Daruma_FI_StatusComprovanteNaoFiscalVinculado: TDaruma_FI_StatusComprovanteNaoFiscalVinculado;
  Daruma_FI_StatusRelatorioGerencial: TDaruma_FI_StatusRelatorioGerencial;
  Daruma_FI_NumeroSerie: TDaruma_FI_NumeroSerie;
  Daruma_FI_SubTotal: TDaruma_FI_SubTotal;
  Daruma_FI_NumeroCupom: TDaruma_FI_NumeroCupom;
  Daruma_FI_LeituraXSerial: TDaruma_FI_LeituraXSerial;
  Daruma_FI_VersaoFirmware: TDaruma_FI_VersaoFirmware;
  Daruma_FI_CGC_IE: TDaruma_FI_CGC_IE;
  Daruma_FI_GrandeTotal: TDaruma_FI_GrandeTotal;
  Daruma_FI_Cancelamentos: TDaruma_FI_Cancelamentos;
  Daruma_FI_Descontos: TDaruma_FI_Descontos;
  Daruma_FI_NumeroOperacoesNaoFiscais: TDaruma_FI_NumeroOperacoesNaoFiscais;
  Daruma_FI_NumeroCuponsCancelados: TDaruma_FI_NumeroCuponsCancelados;
  Daruma_FI_NumeroIntervencoes: TDaruma_FI_NumeroIntervencoes;
  Daruma_FI_NumeroReducoes: TDaruma_FI_NumeroReducoes;
  Daruma_FI_NumeroSubstituicoesProprietario: TDaruma_FI_NumeroSubstituicoesProprietario;
  Daruma_FI_UltimoItemVendido: TDaruma_FI_UltimoItemVendido;
  Daruma_FI_ClicheProprietario: TDaruma_FI_ClicheProprietario;
  Daruma_FI_NumeroCaixa: TDaruma_FI_NumeroCaixa;
  Daruma_FI_NumeroLoja: TDaruma_FI_NumeroLoja;
  Daruma_FI_SimboloMoeda: TDaruma_FI_SimboloMoeda;
  Daruma_FI_MinutosLigada: TDaruma_FI_MinutosLigada;
  Daruma_FI_MinutosImprimindo: TDaruma_FI_MinutosImprimindo;
  Daruma_FI_VerificaModoOperacao: TDaruma_FI_VerificaModoOperacao;
  Daruma_FI_VerificaEpromConectada: TDaruma_FI_VerificaEpromConectada;
  Daruma_FI_FlagsFiscais: TDaruma_FI_FlagsFiscais;
  Daruma_FI_ValorPagoUltimoCupom: TDaruma_FI_ValorPagoUltimoCupom;
  Daruma_FI_DataHoraImpressora: TDaruma_FI_DataHoraImpressora;
  Daruma_FI_ContadoresTotalizadoresNaoFiscais: TDaruma_FI_ContadoresTotalizadoresNaoFiscais;
  Daruma_FI_VerificaTotalizadoresNaoFiscais: TDaruma_FI_VerificaTotalizadoresNaoFiscais;
  Daruma_FI_VerificaTotalizadoresNaoFiscaisEx: TDaruma_FI_VerificaTotalizadoresNaoFiscaisEx;
  Daruma_FI_DataHoraReducao: TDaruma_FI_DataHoraReducao;
  Daruma_FI_DataMovimento: TDaruma_FI_DataMovimento;
  Daruma_FI_VerificaTruncamento: TDaruma_FI_VerificaTruncamento;
  Daruma_FI_Acrescimos: TDaruma_FI_Acrescimos;
  Daruma_FI_ContadorBilhetePassagem: TDaruma_FI_ContadorBilhetePassagem;
  Daruma_FI_VerificaAliquotasIss: TDaruma_FI_VerificaAliquotasIss;
  Daruma_FI_VerificaFormasPagamentoEx: TDaruma_FI_VerificaFormasPagamentoEx;
  Daruma_FI_VerificaRecebimentoNaoFiscal: TDaruma_FI_VerificaRecebimentoNaoFiscal;
  Daruma_FI_VerificaDepartamentos: TDaruma_FI_VerificaDepartamentos;
  Daruma_FI_VerificaTipoImpressora: TDaruma_FI_VerificaTipoImpressora;
  Daruma_FI_VerificaTotalizadoresParciais: TDaruma_FI_VerificaTotalizadoresParciais;
  Daruma_FI_RetornoAliquotas: TDaruma_FI_RetornoAliquotas;
  Daruma_FI_VerificaEstadoImpressora: TDaruma_FI_VerificaEstadoImpressora;
  Daruma_FI_DadosUltimaReducao: TDaruma_FI_DadosUltimaReducao;
  Daruma_FI_MonitoramentoPapel: TDaruma_FI_MonitoramentoPapel;
  Daruma_FI_VerificaIndiceAliquotasIss: TDaruma_FI_VerificaIndiceAliquotasIss;
  Daruma_FI_ValorFormaPagamento: TDaruma_FI_ValorFormaPagamento;
  Daruma_FI_ValorTotalizadorNaoFiscal: TDaruma_FI_ValorTotalizadorNaoFiscal;
  Daruma_FI_PalavraStatus: TDaruma_FI_PalavraStatus;
  Daruma_FI_PalavraStatusBinario: TDaruma_FI_PalavraStatusBinario;
  Daruma_FI_LerAliquotasComIndice: TDaruma_FI_LerAliquotasComIndice;
  Daruma_FI_Autenticacao: TDaruma_FI_Autenticacao;
  Daruma_FI_AutenticacaoStr: TDaruma_FI_AutenticacaoStr;
  Daruma_FI_VerificaDocAutenticacao: TDaruma_FI_VerificaDocAutenticacao;
  Daruma_FI_AcionaGaveta: TDaruma_FI_AcionaGaveta;
  Daruma_FI_VerificaEstadoGaveta: TDaruma_FI_VerificaEstadoGaveta;
  Daruma_FI_AbrePortaSerial: TDaruma_FI_AbrePortaSerial;
  Daruma_FI_RetornoImpressora: TDaruma_FI_RetornoImpressora;
  Daruma_FI_FechaPortaSerial: TDaruma_FI_FechaPortaSerial;
  Daruma_FI_MapaResumo: TDaruma_FI_MapaResumo;
  Daruma_FI_AberturaDoDia: TDaruma_FI_AberturaDoDia;
  Daruma_FI_FechamentoDoDia: TDaruma_FI_FechamentoDoDia;
  Daruma_FI_ImprimeConfiguracoesImpressora: TDaruma_FI_ImprimeConfiguracoesImpressora;
  Daruma_FI_ImprimeDepartamentos: TDaruma_FI_ImprimeDepartamentos;
  Daruma_FI_RelatorioTipo60Analitico: TDaruma_FI_RelatorioTipo60Analitico;
  Daruma_FI_RelatorioTipo60Mestre: TDaruma_FI_RelatorioTipo60Mestre;
  Daruma_FI_VerificaImpressoraLigada: TDaruma_FI_VerificaImpressoraLigada;
  Daruma_FI_RetornaErroExtendido: TDaruma_FI_RetornaErroExtendido;
  Daruma_TEF_EsperarArquivo: TDaruma_TEF_EsperarArquivo;
  Daruma_TEF_ImprimirResposta: TDaruma_TEF_ImprimirResposta;
  Daruma_TEF_SetFocus: TDaruma_TEF_SetFocus;
  Daruma_TEF_TravarTeclado: TDaruma_TEF_TravarTeclado;
  Daruma_TEF_FechaRelatorio: TDaruma_TEF_FechaRelatorio;
  function Load_Daruma32: integer;
  procedure Unload_Daruma32;
  procedure ErroDll_Daruma32;
  function Daruma_FechaPortaSerial:integer;

implementation

function Load_Daruma32: integer;
begin
  if hDLL = 0 then
    hDLL := LoadLibrary(PChar(DARUMALIB));
  if hDLL <> 0 then
  begin
    @Daruma_FI_AbreCupom :=
      GetProcAddress(hDLL,'Daruma_FI_AbreCupom');
    @Daruma_FI_VendeItem :=
      GetProcAddress(hDLL,'Daruma_FI_VendeItem');
    @Daruma_FI_VendeItemTresDecimais :=
      GetProcAddress(hDLL,'Daruma_FI_VendeItemTresDecimais');
    @Daruma_FI_VendeItemDepartamento :=
      GetProcAddress(hDLL,'Daruma_FI_VendeItemDepartamento');
    @Daruma_FI_VendeItem1Lin13Dig :=
      GetProcAddress(hDLL,'Daruma_FI_VendeItem1Lin13Dig');
    @Daruma_FI_VendeItem1Lin6Dig :=
      GetProcAddress(hDLL,'Daruma_FI_VendeItem1Lin6Dig');
    @Daruma_FI_CancelaItemAnterior :=
      GetProcAddress(hDLL,'Daruma_FI_CancelaItemAnterior');
    @Daruma_FI_CancelaItemGenerico :=
      GetProcAddress(hDLL,'Daruma_FI_CancelaItemGenerico');
    @Daruma_FI_CancelaCupom :=
      GetProcAddress(hDLL,'Daruma_FI_CancelaCupom');
    @Daruma_FI_EmitirCupomAdicional :=
      GetProcAddress(hDLL,'Daruma_FI_EmitirCupomAdicional');
    @Daruma_FI_FechaCupomResumido :=
      GetProcAddress(hDLL,'Daruma_FI_FechaCupomResumido');
    @Daruma_FI_FechaCupom :=
      GetProcAddress(hDLL,'Daruma_FI_FechaCupom');
    @Daruma_FI_ResetaImpressora :=
      GetProcAddress(hDLL,'Daruma_FI_ResetaImpressora');
    @Daruma_FI_FechaRelatorioXouZ :=
      GetProcAddress(hDLL,'Daruma_FI_FechaRelatorioXouZ');
    @Daruma_FI_IniciaFechamentoCupom :=
      GetProcAddress(hDLL,'Daruma_FI_IniciaFechamentoCupom');
    @Daruma_FI_EfetuaFormaPagamento :=
      GetProcAddress(hDLL,'Daruma_FI_EfetuaFormaPagamento');
    @Daruma_FI_EfetuaFormaPagamentoDescricaoForma :=
      GetProcAddress(hDLL,'Daruma_FI_EfetuaFormaPagamentoDescricaoForma');
    @Daruma_FI_TerminaFechamentoCupom :=
      GetProcAddress(hDLL,'Daruma_FI_TerminaFechamentoCupom');
    @Daruma_FI_IdentificaConsumidor :=
      GetProcAddress(hDLL,'Daruma_FI_IdentificaConsumidor');
    @Daruma_FI_EstornoFormasPagamento :=
      GetProcAddress(hDLL,'Daruma_FI_EstornoFormasPagamento');
    @Daruma_FI_UsaUnidadeMedida :=
      GetProcAddress(hDLL,'Daruma_FI_UsaUnidadeMedida');
    @Daruma_FI_AumentaDescricaoItem :=
      GetProcAddress(hDLL,'Daruma_FI_AumentaDescricaoItem');

    @Daruma_Registry_Porta :=
      GetProcAddress(hDLL,'Daruma_Registry_Porta');
    @Daruma_Registry_Path :=
      GetProcAddress(hDLL,'Daruma_Registry_Path');
    @Daruma_Registry_Status :=
      GetProcAddress(hDLL,'Daruma_Registry_Status');
    @Daruma_Registry_StatusFuncao :=
      GetProcAddress(hDLL,'Daruma_Registry_StatusFuncao');
    @Daruma_Registry_Retorno :=
      GetProcAddress(hDLL,'Daruma_Registry_Retorno');
    @Daruma_Registry_ControlePorta :=
      GetProcAddress(hDLL,'Daruma_Registry_ControlePorta');
    @Daruma_Registry_ModoGaveta :=
      GetProcAddress(hDLL,'Daruma_Registry_ModoGaveta');
    @Daruma_Registry_Log :=
      GetProcAddress(hDLL,'Daruma_Registry_Log');
    @Daruma_Registry_NomeLog :=
      GetProcAddress(hDLL,'Daruma_Registry_NomeLog');
    @Daruma_Registry_Separador :=
      GetProcAddress(hDLL,'Daruma_Registry_Separador');
    @Daruma_Registry_SeparaMsgPromo :=
      GetProcAddress(hDLL,'Daruma_Registry_SeparaMsgPromo');
    @Daruma_Registry_Emulador :=
      GetProcAddress(hDLL,'Daruma_Registry_Emulador');
    @Daruma_Registry_ConfigRede :=
      GetProcAddress(hDLL,'Daruma_Registry_ConfigRede');
    @Daruma_Registry_VendeItemUmaLinha :=
      GetProcAddress(hDLL,'Daruma_Registry_VendeItemUmaLinha');
    @Daruma_Registry_RetornaValor :=
      GetProcAddress(hDLL,'Daruma_Registry_RetornaValor');
    @Daruma_Registry_ImprimeValor :=
      GetProcAddress(hDLL,'Daruma_Registry_ImprimeValor');
    @Daruma_Registry_ZAutomatica :=
      GetProcAddress(hDLL,'Daruma_Registry_ZAutomatica');
    @Daruma_Registry_XAutomatica :=
      GetProcAddress(hDLL,'Daruma_Registry_XAutomatica');
    @Daruma_Registry_Default :=
      GetProcAddress(hDLL,'Daruma_Registry_Default');
    @Daruma_Registry_ImprimeRegistry :=
      GetProcAddress(hDLL,'Daruma_Registry_ImprimeRegistry');
    @Daruma_Registry_TerminalServer :=
      GetProcAddress(hDLL,'Daruma_Registry_TerminalServer');
    @Daruma_Registry_AlteraRegistry :=
      GetProcAddress(hDLL,'Daruma_Registry_AlteraRegistry');
    @Daruma_Registry_ErroExtendidoOk :=
      GetProcAddress(hDLL,'Daruma_Registry_ErroExtendidoOk');
    @Daruma_Registry_AbrirDiaFiscal :=
      GetProcAddress(hDLL,'Daruma_Registry_AbrirDiaFiscal');
    @Daruma_Registry_VendaAutomatica :=
      GetProcAddress(hDLL,'Daruma_Registry_VendaAutomatica');

    @Daruma_FI_Cfg :=
      GetProcAddress(hDLL,'Daruma_FI_Cfg');
    @Daruma_FI_CfgEnviar :=
      GetProcAddress(hDLL,'Daruma_FI_CfgEnviar');
    @Daruma_FI_CfgFechaAutomaticoCupom :=
      GetProcAddress(hDLL,'Daruma_FI_CfgFechaAutomaticoCupom');
    @Daruma_FI_CfgRedZAutomatico :=
      GetProcAddress(hDLL,'Daruma_FI_CfgRedZAutomatico');
    @Daruma_FI_CfgImpEstGavVendas :=
      GetProcAddress(hDLL,'Daruma_FI_CfgImpEstGavVendas');
    @Daruma_FI_CfgLeituraXAuto :=
      GetProcAddress(hDLL,'Daruma_FI_CfgLeituraXAuto');
    @Daruma_FI_CfgCalcArredondamento :=
      GetProcAddress(hDLL,'Daruma_FI_CfgCalcArredondamento');
    @Daruma_FI_CfgHorarioVerao :=
      GetProcAddress(hDLL,'Daruma_FI_CfgHorarioVerao');
    @Daruma_FI_CfgSensorAut :=
      GetProcAddress(hDLL,'Daruma_FI_CfgSensorAut');
    @Daruma_FI_CfgCupomAdicional :=
      GetProcAddress(hDLL,'Daruma_FI_CfgCupomAdicional');
    @Daruma_FI_CfgLegProdutos :=
      GetProcAddress(hDLL,'Daruma_FI_CfgLegProdutos');
    @Daruma_FI_CfgEspacamentoCupons :=
      GetProcAddress(hDLL,'Daruma_FI_CfgEspacamentoCupons');
    @Daruma_FI_CfgHoraMinReducaoZ :=
      GetProcAddress(hDLL,'Daruma_FI_CfgHoraMinReducaoZ');
    @Daruma_FI_CfgLimiarNearEnd :=
      GetProcAddress(hDLL,'Daruma_FI_CfgLimiarNearEnd');
    @Daruma_FI_CfgPermMensPromCNF :=
      GetProcAddress(hDLL,'Daruma_FI_CfgPermMensPromCNF');

    @Daruma_FI_AlteraSimboloMoeda :=
      GetProcAddress(hDLL,'Daruma_FI_AlteraSimboloMoeda');
    @Daruma_FI_ProgramaAliquota :=
      GetProcAddress(hDLL,'Daruma_FI_ProgramaAliquota');
    @Daruma_FI_ProgramaHorarioVerao :=
      GetProcAddress(hDLL,'Daruma_FI_ProgramaHorarioVerao');
    @Daruma_FI_NomeiaDepartamento :=
      GetProcAddress(hDLL,'Daruma_FI_NomeiaDepartamento');
    @Daruma_FI_NomeiaTotalizadorNaoSujeitoIcms :=
      GetProcAddress(hDLL,'Daruma_FI_NomeiaTotalizadorNaoSujeitoIcms');
    @Daruma_FI_ProgramaArredondamento :=
      GetProcAddress(hDLL,'Daruma_FI_ProgramaArredondamento');
    @Daruma_FI_ProgramaTruncamento :=
      GetProcAddress(hDLL,'Daruma_FI_ProgramaTruncamento');
    @Daruma_FI_LinhasEntreCupons :=
      GetProcAddress(hDLL,'Daruma_FI_LinhasEntreCupons');
    @Daruma_FI_EspacoEntreLinhas :=
      GetProcAddress(hDLL,'Daruma_FI_EspacoEntreLinhas');
    @Daruma_FI_ForcaImpactoAgulhas :=
      GetProcAddress(hDLL,'Daruma_FI_ForcaImpactoAgulhas');
    @Daruma_FI_ProgramaFormasPagamento :=
      GetProcAddress(hDLL,'Daruma_FI_ProgramaFormasPagamento');
    @Daruma_FI_ProgramaOperador :=
      GetProcAddress(hDLL,'Daruma_FI_ProgramaOperador');
    @Daruma_FI_LeituraX :=
      GetProcAddress(hDLL,'Daruma_FI_LeituraX');
    @Daruma_FI_ReducaoZ :=
      GetProcAddress(hDLL,'Daruma_FI_ReducaoZ');
    @Daruma_FI_RelatorioGerencial :=
      GetProcAddress(hDLL,'Daruma_FI_RelatorioGerencial');
    @Daruma_FI_AbreRelatorioGerencial :=
      GetProcAddress(hDLL,'Daruma_FI_AbreRelatorioGerencial');
    @Daruma_FI_EnviarTextoCNF :=
      GetProcAddress(hDLL,'Daruma_FI_EnviarTextoCNF');
    @Daruma_FI_FechaRelatorioGerencial :=
      GetProcAddress(hDLL,'Daruma_FI_FechaRelatorioGerencial');
    @Daruma_FI_LeituraMemoriaFiscalData :=
      GetProcAddress(hDLL,'Daruma_FI_LeituraMemoriaFiscalData');
    @Daruma_FI_RetornaRegistradoresFiscais:=
      GetProcAddress(hDLL, 'Daruma_FI_RetornaRegistradoresFiscais');
    @Daruma_FI_LeituraMemoriaFiscalReducao :=
      GetProcAddress(hDLL,'Daruma_FI_LeituraMemoriaFiscalReducao');
    @Daruma_FI_LeituraMemoriaFiscalSerialData :=
      GetProcAddress(hDLL,'Daruma_FI_LeituraMemoriaFiscalSerialData');
    @Daruma_FI_LeituraMemoriaFiscalSerialReducao :=
      GetProcAddress(hDLL,'Daruma_FI_LeituraMemoriaFiscalSerialReducao');
    @Daruma_FI_RecebimentoNaoFiscal :=
      GetProcAddress(hDLL,'Daruma_FI_RecebimentoNaoFiscal');
    @Daruma_FI_AbreComprovanteNaoFiscalVinculado :=
      GetProcAddress(hDLL,'Daruma_FI_AbreComprovanteNaoFiscalVinculado');
    @Daruma_FI_UsaComprovanteNaoFiscalVinculado :=
      GetProcAddress(hDLL,'Daruma_FI_UsaComprovanteNaoFiscalVinculado');
    @Daruma_FI_FechaComprovanteNaoFiscalVinculado :=
      GetProcAddress(hDLL,'Daruma_FI_FechaComprovanteNaoFiscalVinculado');
    @Daruma_FI_Sangria :=
      GetProcAddress(hDLL,'Daruma_FI_Sangria');
    @Daruma_FI_Suprimento :=
      GetProcAddress(hDLL,'Daruma_FI_Suprimento');
    @Daruma_FI_StatusCupomFiscal :=
      GetProcAddress(hDLL,'Daruma_FI_StatusCupomFiscal');
    @Daruma_FI_StatusComprovanteNaoFiscalVinculado :=
      GetProcAddress(hDLL,'Daruma_FI_StatusComprovanteNaoFiscalVinculado');
    @Daruma_FI_StatusRelatorioGerencial :=
      GetProcAddress(hDLL,'Daruma_FI_StatusRelatorioGerencial');
    @Daruma_FI_NumeroSerie :=
      GetProcAddress(hDLL,'Daruma_FI_NumeroSerie');
    @Daruma_FI_SubTotal :=
      GetProcAddress(hDLL,'Daruma_FI_SubTotal');
    @Daruma_FI_NumeroCupom :=
      GetProcAddress(hDLL,'Daruma_FI_NumeroCupom');
    @Daruma_FI_LeituraXSerial :=
      GetProcAddress(hDLL,'Daruma_FI_LeituraXSerial');
    @Daruma_FI_VersaoFirmware :=
      GetProcAddress(hDLL,'Daruma_FI_VersaoFirmware');
    @Daruma_FI_CGC_IE :=
      GetProcAddress(hDLL,'Daruma_FI_CGC_IE');
    @Daruma_FI_GrandeTotal :=
      GetProcAddress(hDLL,'Daruma_FI_GrandeTotal');
    @Daruma_FI_Cancelamentos :=
      GetProcAddress(hDLL,'Daruma_FI_Cancelamentos');
    @Daruma_FI_Descontos :=
      GetProcAddress(hDLL,'Daruma_FI_Descontos');
    @Daruma_FI_NumeroOperacoesNaoFiscais :=
      GetProcAddress(hDLL,'Daruma_FI_NumeroOperacoesNaoFiscais');
    @Daruma_FI_NumeroCuponsCancelados :=
      GetProcAddress(hDLL,'Daruma_FI_NumeroCuponsCancelados');
    @Daruma_FI_NumeroIntervencoes :=
      GetProcAddress(hDLL,'Daruma_FI_NumeroIntervencoes');
    @Daruma_FI_NumeroReducoes :=
      GetProcAddress(hDLL,'Daruma_FI_NumeroReducoes');
    @Daruma_FI_NumeroSubstituicoesProprietario :=
      GetProcAddress(hDLL,'Daruma_FI_NumeroSubstituicoesProprietario');
    @Daruma_FI_UltimoItemVendido :=
      GetProcAddress(hDLL,'Daruma_FI_UltimoItemVendido');
    @Daruma_FI_ClicheProprietario :=
      GetProcAddress(hDLL,'Daruma_FI_ClicheProprietario');
    @Daruma_FI_NumeroCaixa :=
      GetProcAddress(hDLL,'Daruma_FI_NumeroCaixa');
    @Daruma_FI_NumeroLoja :=
      GetProcAddress(hDLL,'Daruma_FI_NumeroLoja');
    @Daruma_FI_SimboloMoeda :=
      GetProcAddress(hDLL,'Daruma_FI_SimboloMoeda');
    @Daruma_FI_MinutosLigada :=
      GetProcAddress(hDLL,'Daruma_FI_MinutosLigada');
    @Daruma_FI_MinutosImprimindo :=
      GetProcAddress(hDLL,'Daruma_FI_MinutosImprimindo');
    @Daruma_FI_VerificaModoOperacao :=
      GetProcAddress(hDLL,'Daruma_FI_VerificaModoOperacao');
    @Daruma_FI_VerificaEpromConectada :=
      GetProcAddress(hDLL,'Daruma_FI_VerificaEpromConectada');
    @Daruma_FI_FlagsFiscais :=
      GetProcAddress(hDLL,'Daruma_FI_FlagsFiscais');
    @Daruma_FI_ValorPagoUltimoCupom :=
      GetProcAddress(hDLL,'Daruma_FI_ValorPagoUltimoCupom');
    @Daruma_FI_DataHoraImpressora :=
      GetProcAddress(hDLL,'Daruma_FI_DataHoraImpressora');
    @Daruma_FI_ContadoresTotalizadoresNaoFiscais :=
      GetProcAddress(hDLL,'Daruma_FI_ContadoresTotalizadoresNaoFiscais');
    @Daruma_FI_VerificaTotalizadoresNaoFiscais :=
      GetProcAddress(hDLL,'Daruma_FI_VerificaTotalizadoresNaoFiscais');
    @Daruma_FI_VerificaTotalizadoresNaoFiscaisEx :=
      GetProcAddress(hDLL,'Daruma_FI_VerificaTotalizadoresNaoFiscaisEx');
    @Daruma_FI_DataHoraReducao :=
      GetProcAddress(hDLL,'Daruma_FI_DataHoraReducao');
    @Daruma_FI_DataMovimento :=
      GetProcAddress(hDLL,'Daruma_FI_DataMovimento');
    @Daruma_FI_VerificaTruncamento :=
      GetProcAddress(hDLL,'Daruma_FI_VerificaTruncamento');
    @Daruma_FI_Acrescimos :=
      GetProcAddress(hDLL,'Daruma_FI_Acrescimos');
    @Daruma_FI_ContadorBilhetePassagem :=
      GetProcAddress(hDLL,'Daruma_FI_ContadorBilhetePassagem');
    @Daruma_FI_VerificaAliquotasIss :=
      GetProcAddress(hDLL,'Daruma_FI_VerificaAliquotasIss');
    @Daruma_FI_VerificaFormasPagamentoEx :=
      GetProcAddress(hDLL,'Daruma_FI_VerificaFormasPagamentoEx');
    @Daruma_FI_VerificaRecebimentoNaoFiscal :=
      GetProcAddress(hDLL,'Daruma_FI_VerificaRecebimentoNaoFiscal');
    @Daruma_FI_VerificaDepartamentos :=
      GetProcAddress(hDLL,'Daruma_FI_VerificaDepartamentos');
    @Daruma_FI_VerificaTipoImpressora :=
      GetProcAddress(hDLL,'Daruma_FI_VerificaTipoImpressora');
    @Daruma_FI_VerificaTotalizadoresParciais :=
      GetProcAddress(hDLL,'Daruma_FI_VerificaTotalizadoresParciais');
    @Daruma_FI_RetornoAliquotas :=
      GetProcAddress(hDLL,'Daruma_FI_RetornoAliquotas');
    @Daruma_FI_VerificaEstadoImpressora :=
      GetProcAddress(hDLL,'Daruma_FI_VerificaEstadoImpressora');
    @Daruma_FI_DadosUltimaReducao :=
      GetProcAddress(hDLL,'Daruma_FI_DadosUltimaReducao');
    @Daruma_FI_MonitoramentoPapel :=
      GetProcAddress(hDLL,'Daruma_FI_MonitoramentoPapel');
    @Daruma_FI_VerificaIndiceAliquotasIss :=
      GetProcAddress(hDLL,'Daruma_FI_VerificaIndiceAliquotasIss');
    @Daruma_FI_ValorFormaPagamento :=
      GetProcAddress(hDLL,'Daruma_FI_ValorFormaPagamento');
    @Daruma_FI_ValorTotalizadorNaoFiscal :=
      GetProcAddress(hDLL,'Daruma_FI_ValorTotalizadorNaoFiscal');
    @Daruma_FI_PalavraStatus :=
      GetProcAddress(hDLL,'Daruma_FI_PalavraStatus');
    @Daruma_FI_PalavraStatusBinario :=
      GetProcAddress(hDLL,'Daruma_FI_PalavraStatusBinario');
    @Daruma_FI_LerAliquotasComIndice :=
      GetProcAddress(hDLL,'Daruma_FI_LerAliquotasComIndice');
    @Daruma_FI_Autenticacao :=
      GetProcAddress(hDLL,'Daruma_FI_Autenticacao');
    @Daruma_FI_AutenticacaoStr :=
      GetProcAddress(hDLL,'Daruma_FI_AutenticacaoStr');
    @Daruma_FI_VerificaDocAutenticacao :=
      GetProcAddress(hDLL,'Daruma_FI_VerificaDocAutenticacao');
    @Daruma_FI_AcionaGaveta :=
      GetProcAddress(hDLL,'Daruma_FI_AcionaGaveta');
    @Daruma_FI_VerificaEstadoGaveta :=
      GetProcAddress(hDLL,'Daruma_FI_VerificaEstadoGaveta');
    @Daruma_FI_AbrePortaSerial :=
      GetProcAddress(hDLL,'Daruma_FI_AbrePortaSerial');
    @Daruma_FI_RetornoImpressora :=
      GetProcAddress(hDLL,'Daruma_FI_RetornoImpressora');
    @Daruma_FI_FechaPortaSerial :=
      GetProcAddress(hDLL,'Daruma_FI_FechaPortaSerial');
    @Daruma_FI_MapaResumo :=
      GetProcAddress(hDLL,'Daruma_FI_MapaResumo');
    @Daruma_FI_AberturaDoDia :=
      GetProcAddress(hDLL,'Daruma_FI_AberturaDoDia');
    @Daruma_FI_FechamentoDoDia :=
      GetProcAddress(hDLL,'Daruma_FI_FechamentoDoDia');
    @Daruma_FI_ImprimeConfiguracoesImpressora :=
      GetProcAddress(hDLL,'Daruma_FI_ImprimeConfiguracoesImpressora');
    @Daruma_FI_ImprimeDepartamentos :=
      GetProcAddress(hDLL,'Daruma_FI_ImprimeDepartamentos');
    @Daruma_FI_RelatorioTipo60Analitico :=
      GetProcAddress(hDLL,'Daruma_FI_RelatorioTipo60Analitico');
    @Daruma_FI_RelatorioTipo60Mestre :=
      GetProcAddress(hDLL,'Daruma_FI_RelatorioTipo60Mestre');
    @Daruma_FI_VerificaImpressoraLigada :=
      GetProcAddress(hDLL,'Daruma_FI_VerificaImpressoraLigada');
    @Daruma_FI_RetornaErroExtendido :=
      GetProcAddress(hDLL,'Daruma_FI_RetornaErroExtendido');

    @Daruma_TEF_EsperarArquivo :=
      GetProcAddress(hDLL,'Daruma_TEF_EsperarArquivo');
    @Daruma_TEF_ImprimirResposta :=
      GetProcAddress(hDLL,'Daruma_TEF_ImprimirResposta');
    @Daruma_TEF_SetFocus :=
      GetProcAddress(hDLL,'Daruma_TEF_SetFocus');
    @Daruma_TEF_TravarTeclado :=
      GetProcAddress(hDLL,'Daruma_TEF_TravarTeclado');
    @Daruma_TEF_FechaRelatorio :=
      GetProcAddress(hDLL,'Daruma_TEF_FechaRelatorio');
    Result := 1;
  end
  else
  begin
    Result := 0;
    raise Exception.Create(Format(SLIBNOTFOUND, [DARUMALIB]));
  end;
end;

procedure Unload_Daruma32;
begin
  if hDLL > 0 then
  begin
    if freeLibrary(hDLL) then
      hdll := 0;
  end;
end;

procedure ErroDll_Daruma32;
begin
  raise Exception.Create(Format('Erro ao carregar %s', [DARUMALIB]));
end;

function Daruma_FechaPortaSerial:integer;
begin
  if hDLL > 0 then
    Result:=Daruma_FI_FechaPortaSerial;
end;

initialization

finalization
  Unload_Daruma32;
end.
