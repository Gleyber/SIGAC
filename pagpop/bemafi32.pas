unit bemafi32;

interface

uses
  Windows, Classes, Sysutils, Dialogs;

const
  SLIBNOTFOUND = 'Biblioteca dinânica %s não encontrada.';
  BEMATECHLIB = 'Bemafi32.dll';
  
type
  (*******************************************
  **********Funções externas dll**************
  *******************************************)

  // Funções de Inicialização

  TBematech_FI_ProgramaHorarioVerao = function: integer; stdcall;
  
  // Funções do Cupom Fiscal
  TBematech_FI_AbreCupom = function(CGC_CPF: string): integer; stdcall;

  TBematech_FI_VendeItem = function(Codigo, Descricao, Aliquota, TipoQuantidade,
    Quantidade: string; CasasDecimais: integer;
    ValorUnitario, TipoDesconto, Desconto: string): integer; stdcall;

  TBematech_FI_VendeItemDepartamento = function(Codigo, Descricao, Aliquota,
    ValorUnitario, Quantidade, Acrescimo, Desconto, IndiceDepartamento,
    UnidadeMedida: string): integer; stdcall;

  TBematech_FI_CancelaItemAnterior = function: integer; stdcall;

  TBematech_FI_CancelaItemGenerico = function(NumeroItem: string): integer; stdcall;

  TBematech_FI_CancelaCupom = function: integer; stdcall;

  TBematech_FI_FechaCupomResumido = function(FormaPagamento,
    Mensagem: string): integer; stdcall;

  TBematech_FI_FechaCupom = function(FormaPagamento, AcrescimoDesconto,
    TipoAcrescimoDesconto, ValorAcrescimoDesconto, ValorPago,
    Mensagem: string): integer; stdcall;

  TBematech_FI_ResetaImpressora = function: integer; stdcall;

  TBematech_FI_IniciaFechamentoCupom = function(AcrescimoDesconto,
    TipoAcrescimoDesconto, ValorAcrescimoDesconto: string): integer; stdcall;

  TBematech_FI_EfetuaFormaPagamento = function(FormaPagamento,
    ValorFormaPagamento: string): integer; stdcall;

  TBematech_FI_EfetuaFormaPagamentoDescricaoForma = function(FormaPagamento,
    ValorFormaPagamento, DescricaoFormaPagto: string): integer; stdcall;

  TBematech_FI_TerminaFechamentoCupom = function(Mensagem: string): integer; stdcall;

  TBematech_FI_EstornoFormasPagamento = function(FormaOrigem, FormaDestino,
    Valor: string): integer; stdcall;

  TBematech_FI_UsaUnidadeMedida = function(UnidadeMedida: string): integer; stdcall;
  TBematech_FI_AumentaDescricaoItem = function(Descricao: string): integer; stdcall;

  // Funções dos Relatórios Fiscais
  TBematech_FI_LeituraX = function: integer; stdcall;

  TBematech_FI_ReducaoZ = function(Data, Hora: string): integer; stdcall;

  TBematech_FI_RelatorioGerencial = function(Texto: string): integer; stdcall;

  TBematech_FI_FechaRelatorioGerencial = function: integer; stdcall;

  TBematech_FI_LeituraMemoriaFiscalData = function(DataInicial,
  DataFinal: string): integer; stdcall;

  TBematech_FI_LeituraMemoriaFiscalReducao = function(ReducaoInicial,
    ReducaoFinal: string): integer; stdcall;

  TBematech_FI_LeituraMemoriaFiscalSerialData = function(DataInicial,
    DataFinal: string): integer; stdcall;

  TBematech_FI_LeituraMemoriaFiscalSerialReducao = function(ReducaoInicial,
    ReducaoFinal: string): integer; stdcall;

  TBematech_FI_RetornaRegistradoresFiscais = function(Registradores:string):integer; stdcall;

  // Funções das Operações Não Fiscais
  TBematech_FI_RecebimentoNaoFiscal = function(IndiceTotalizador: string;
    Valor: string; FormaPagamento: string): integer; stdcall;

  TBematech_FI_AbreComprovanteNaoFiscalVinculado = function(FormaPagamento,
    Valor, NumeroCupom: string): integer; stdcall;

  TBematech_FI_UsaComprovanteNaoFiscalVinculado = function(Texto: string): integer; stdcall;

  TBematech_FI_FechaComprovanteNaoFiscalVinculado = function: integer; stdcall;

  TBematech_FI_Sangria = function(Valor: string): integer; stdcall;

  TBematech_FI_Suprimento = function(Valor,
    FormaPagamento: string): integer; stdcall;

  // Funções de Informações da Impressora
  TBematech_FI_NumeroSerie = function(NumeroSerie: string): integer; stdcall;

  TBematech_FI_NumeroSerieMFD= function(NumeroSerie : string): Integer; StdCall;

  TBematech_FI_SubTotal = function(SubTotal: string): integer; stdcall;

  TBematech_FI_NumeroCupom = function(NumeroCupom: string): integer; stdcall;

  TBematech_FI_LeituraXSerial = function: integer; stdcall;

  TBematech_FI_VersaoFirmware = function(VersaoFirmware: string): integer; stdcall;

  TBematech_FI_CGC_IE = function(CGC: string; IE: string): integer;  stdcall;

  TBematech_FI_GrandeTotal = function(GrandeTotal: string): integer; stdcall;

  TBematech_FI_Cancelamentos = function(ValorCancelamentos: string): integer; stdcall;

  TBematech_FI_Descontos = function(ValorDescontos: string): integer; stdcall;

  TBematech_FI_NumeroOperacoesNaoFiscais =
    function(NumeroOperacoes: string): integer; stdcall;

  TBematech_FI_NumeroCuponsCancelados = function(NumeroCancelamentos: string): integer; stdcall;

  TBematech_FI_NumeroIntervencoes = function(NumeroIntervencoes: string): integer; stdcall;

  TBematech_FI_NumeroReducoes = function(NumeroReducoes: string): integer; stdcall;

  TBematech_FI_NumeroSubstituicoesProprietario =
    function(NumeroSubstituicoes: string): integer; stdcall;

  TBematech_FI_UltimoItemVendido = function(NumeroItem: string): integer; stdcall;

  TBematech_FI_ClicheProprietario = function(Cliche: string): integer; stdcall;

  TBematech_FI_NumeroCaixa = function(NumeroCaixa: string): integer; stdcall;

  TBematech_FI_NumeroLoja = function(NumeroLoja: string): integer; stdcall;

  TBematech_FI_SimboloMoeda = function(SimboloMoeda: string): integer; stdcall;

  TBematech_FI_MinutosLigada = function(Minutos: string): integer; stdcall;

  TBematech_FI_MinutosImprimindo = function(Minutos: string): integer; stdcall;

  TBematech_FI_VerificaModoOperacao = function(Modo: string): integer; stdcall;

  TBematech_FI_VerificaEpromConectada = function(Flag: string): integer; stdcall;

  TBematech_FI_FlagsFiscais = function(var Flag: integer): integer; stdcall;

  TBematech_FI_ValorPagoUltimoCupom =
    function(ValorCupom: string): integer; stdcall;

  TBematech_FI_DataHoraImpressora = function(Data, Hora: string): integer; stdcall;

  TBematech_FI_ContadoresTotalizadoresNaoFiscais =
    function(Contadores: string): integer; stdcall;

  TBematech_FI_VerificaTotalizadoresNaoFiscais =
    function(Totalizadores: string): integer; stdcall;

  TBematech_FI_DataHoraReducao = function(Data, Hora: string): integer; stdcall;

  TBematech_FI_DataMovimento = function(Data: string): integer; stdcall;

  TBematech_FI_VerificaTruncamento = function(Flag: string): integer; stdcall;

  TBematech_FI_Acrescimos = function(ValorAcrescimos: string): integer; stdcall;

  TBematech_FI_ContadorBilhetePassagem =
    function(ContadorPassagem: string): integer; stdcall;

  TBematech_FI_VerificaAliquotasIss = function(Flag: string): integer; stdcall;

  TBematech_FI_VerificaFormasPagamento =
    function(Formas: string): integer; stdcall;

  TBematech_FI_VerificaRecebimentoNaoFiscal =
    function(Recebimentos: string): integer; stdcall;


  TBematech_FI_VerificaDepartamentos =
    function(Departamentos: string): integer; stdcall;

  TBematech_FI_VerificaTipoImpressora =
    function(var TipoImpressora: integer): integer; stdcall;

  TBematech_FI_VerificaTotalizadoresParciais =
    function(Totalizadores: string): integer; stdcall;

  TBematech_FI_RetornoAliquotas =
    function(Aliquotas: string): integer; stdcall;

  TBematech_FI_VerificaEstadoImpressora =
    function(var ACK, ST1, ST2: integer): integer; stdcall;

  TBematech_FI_DadosUltimaReducao =
    function(DadosReducao: string): integer; stdcall;

  TBematech_FI_MonitoramentoPapel =
    function(var Linhas: integer): integer; stdcall;

  TBematech_FI_VerificaIndiceAliquotasIss =
    function(Flag: string): integer; stdcall;

  TBematech_FI_ValorFormaPagamento = function(FormaPagamento,
    Valor: string): integer; stdcall;

  TBematech_FI_ValorTotalizadorNaoFiscal = function(Totalizador,
    Valor: string): integer; stdcall;

  //Funções de Autenticação e Gaveta de Dinheiro

  TBematech_FI_Autenticacao = function: integer; stdcall;

  TBematech_FI_ProgramaCaracterAutenticacao =
    function(Parametros: string): integer;stdcall;

  TBematech_FI_ProgramaArredondamento = function: integer; stdcall;

  TBematech_FI_ProgramaTruncamento = function: integer; stdcall;

  TBematech_FI_AcionaGaveta = function: integer; stdcall;

  TBematech_FI_VerificaEstadoGaveta =
    function(var EstadoGaveta: integer): integer; stdcall;

  TBematech_FI_AbrePortaSerial = function: integer; stdcall;

  TBematech_FI_RetornoImpressora = function(var ACK,
    ST1, ST2: integer): integer; stdcall;

  TBematech_FI_FechaPortaSerial = function: integer; stdcall;

  TBematech_FI_MapaResumo = function: integer; stdcall;

  TBematech_FI_AberturaDoDia = function(ValorCompra: string;
    FormaPagamento: string): integer; stdcall;

  TBematech_FI_FechamentoDoDia = function: integer; stdcall;

  TBematech_FI_ImprimeConfiguracoesImpressora = function: integer; stdcall;

  TBematech_FI_ImprimeDepartamentos = function: integer; stdcall;

  TBematech_FI_RelatorioTipo60Analitico = function: integer; stdcall;

  TBematech_FI_RelatorioTipo60Mestre = function: integer; stdcall;

  TBematech_FI_VerificaImpressoraLigada = function: integer; stdcall;

  TBematech_FI_ImpressaoCarne = function(Titulo, Percelas,
    Datas, Quantidade: integer; Texto, Cliente,RG_CPF, Cupom: string;
    Vias, Assina: integer): integer;stdcall;

  TBematech_FI_InfoBalanca = function(Porta: string; Modelo: integer;
    Peso, PrecoKilo, Total: string): integer;
  stdcall;

  (*****************************Fim************************************)
var
  hDLL: THandle = 0;
  Bematech_FI_ProgramaHorarioVerao: TBematech_FI_ProgramaHorarioVerao;
  Bematech_FI_AbreCupom: TBematech_FI_AbreCupom;
  Bematech_FI_VendeItem: TBematech_FI_VendeItem;
  Bematech_FI_VendeItemDepartamento: TBematech_FI_VendeItemDepartamento;
  Bematech_FI_CancelaItemAnterior: TBematech_FI_CancelaItemAnterior;
  Bematech_FI_CancelaItemGenerico: TBematech_FI_CancelaItemGenerico;
  Bematech_FI_CancelaCupom: TBematech_FI_CancelaCupom;
  Bematech_FI_FechaCupomResumido: TBematech_FI_FechaCupomResumido;
  Bematech_FI_FechaCupom: TBematech_FI_FechaCupom;
  Bematech_FI_ResetaImpressora: TBematech_FI_ResetaImpressora;
  Bematech_FI_IniciaFechamentoCupom: TBematech_FI_IniciaFechamentoCupom;
  Bematech_FI_EfetuaFormaPagamento: TBematech_FI_EfetuaFormaPagamento;
  Bematech_FI_EfetuaFormaPagamentoDescricaoForma: TBematech_FI_EfetuaFormaPagamentoDescricaoForma;
  Bematech_FI_TerminaFechamentoCupom: TBematech_FI_TerminaFechamentoCupom;
  Bematech_FI_EstornoFormasPagamento: TBematech_FI_EstornoFormasPagamento;
  Bematech_FI_UsaUnidadeMedida: TBematech_FI_UsaUnidadeMedida;
  Bematech_FI_AumentaDescricaoItem: TBematech_FI_AumentaDescricaoItem;
  Bematech_FI_LeituraX: TBematech_FI_LeituraX;
  Bematech_FI_ReducaoZ: TBematech_FI_ReducaoZ;
  Bematech_FI_RelatorioGerencial: TBematech_FI_RelatorioGerencial;
  Bematech_FI_FechaRelatorioGerencial: TBematech_FI_FechaRelatorioGerencial;
  Bematech_FI_LeituraMemoriaFiscalData: TBematech_FI_LeituraMemoriaFiscalData;
  Bematech_FI_LeituraMemoriaFiscalReducao: TBematech_FI_LeituraMemoriaFiscalReducao;
  Bematech_FI_LeituraMemoriaFiscalSerialData: TBematech_FI_LeituraMemoriaFiscalSerialData;
  Bematech_FI_RetornaRegistradoresFiscais : TBematech_FI_RetornaRegistradoresFiscais;
  Bematech_FI_LeituraMemoriaFiscalSerialReducao: TBematech_FI_LeituraMemoriaFiscalSerialReducao;
  Bematech_FI_RecebimentoNaoFiscal: TBematech_FI_RecebimentoNaoFiscal;
  Bematech_FI_AbreComprovanteNaoFiscalVinculado: TBematech_FI_AbreComprovanteNaoFiscalVinculado;
  Bematech_FI_UsaComprovanteNaoFiscalVinculado: TBematech_FI_UsaComprovanteNaoFiscalVinculado;
  Bematech_FI_FechaComprovanteNaoFiscalVinculado: TBematech_FI_FechaComprovanteNaoFiscalVinculado;
  Bematech_FI_Sangria: TBematech_FI_Sangria;
  Bematech_FI_Suprimento: TBematech_FI_Suprimento;
  Bematech_FI_NumeroSerie: TBematech_FI_NumeroSerie;
  Bematech_FI_NumeroSerieMFD: TBematech_FI_NumeroSerieMFD; 
  Bematech_FI_SubTotal: TBematech_FI_SubTotal;
  Bematech_FI_NumeroCupom: TBematech_FI_NumeroCupom;
  Bematech_FI_LeituraXSerial: TBematech_FI_LeituraXSerial;
  Bematech_FI_VersaoFirmware: TBematech_FI_VersaoFirmware;
  Bematech_FI_CGC_IE: TBematech_FI_CGC_IE;
  Bematech_FI_GrandeTotal: TBematech_FI_GrandeTotal;
  Bematech_FI_Cancelamentos: TBematech_FI_Cancelamentos;
  Bematech_FI_Descontos: TBematech_FI_Descontos;
  Bematech_FI_NumeroOperacoesNaoFiscais: TBematech_FI_NumeroOperacoesNaoFiscais;
  Bematech_FI_NumeroCuponsCancelados: TBematech_FI_NumeroCuponsCancelados;
  Bematech_FI_NumeroIntervencoes: TBematech_FI_NumeroIntervencoes;
  Bematech_FI_NumeroReducoes: TBematech_FI_NumeroReducoes;
  Bematech_FI_NumeroSubstituicoesProprietario: TBematech_FI_NumeroSubstituicoesProprietario;
  Bematech_FI_UltimoItemVendido: TBematech_FI_UltimoItemVendido;
  Bematech_FI_ClicheProprietario: TBematech_FI_ClicheProprietario;
  Bematech_FI_NumeroCaixa: TBematech_FI_NumeroCaixa;
  Bematech_FI_NumeroLoja: TBematech_FI_NumeroLoja;
  Bematech_FI_SimboloMoeda: TBematech_FI_SimboloMoeda;
  Bematech_FI_MinutosLigada: TBematech_FI_MinutosLigada;
  Bematech_FI_MinutosImprimindo: TBematech_FI_MinutosImprimindo;
  Bematech_FI_VerificaModoOperacao: TBematech_FI_VerificaModoOperacao;
  Bematech_FI_VerificaEpromConectada: TBematech_FI_VerificaEpromConectada;
  Bematech_FI_FlagsFiscais: TBematech_FI_FlagsFiscais;
  Bematech_FI_ValorPagoUltimoCupom: TBematech_FI_ValorPagoUltimoCupom;
  Bematech_FI_DataHoraImpressora: TBematech_FI_DataHoraImpressora;
  Bematech_FI_ContadoresTotalizadoresNaoFiscais: TBematech_FI_ContadoresTotalizadoresNaoFiscais;
  Bematech_FI_VerificaTotalizadoresNaoFiscais: TBematech_FI_VerificaTotalizadoresNaoFiscais;
  Bematech_FI_DataHoraReducao: TBematech_FI_DataHoraReducao;
  Bematech_FI_DataMovimento: TBematech_FI_DataMovimento;
  Bematech_FI_VerificaTruncamento: TBematech_FI_VerificaTruncamento;
  Bematech_FI_Acrescimos: TBematech_FI_Acrescimos;
  Bematech_FI_ContadorBilhetePassagem: TBematech_FI_ContadorBilhetePassagem;
  Bematech_FI_VerificaAliquotasIss: TBematech_FI_VerificaAliquotasIss;
  Bematech_FI_VerificaFormasPagamento: TBematech_FI_VerificaFormasPagamento;
  Bematech_FI_VerificaRecebimentoNaoFiscal: TBematech_FI_VerificaRecebimentoNaoFiscal;
  Bematech_FI_VerificaDepartamentos: TBematech_FI_VerificaDepartamentos;
  Bematech_FI_VerificaTipoImpressora: TBematech_FI_VerificaTipoImpressora;
  Bematech_FI_VerificaTotalizadoresParciais: TBematech_FI_VerificaTotalizadoresParciais;
  Bematech_FI_RetornoAliquotas: TBematech_FI_RetornoAliquotas;
  Bematech_FI_VerificaEstadoImpressora: TBematech_FI_VerificaEstadoImpressora;
  Bematech_FI_DadosUltimaReducao: TBematech_FI_DadosUltimaReducao;
  Bematech_FI_MonitoramentoPapel: TBematech_FI_MonitoramentoPapel;
  Bematech_FI_VerificaIndiceAliquotasIss: TBematech_FI_VerificaIndiceAliquotasIss;
  Bematech_FI_ValorFormaPagamento: TBematech_FI_ValorFormaPagamento;
  Bematech_FI_ValorTotalizadorNaoFiscal: TBematech_FI_ValorTotalizadorNaoFiscal;
  Bematech_FI_Autenticacao: TBematech_FI_Autenticacao;
  Bematech_FI_ProgramaCaracterAutenticacao: TBematech_FI_ProgramaCaracterAutenticacao;
  Bematech_FI_ProgramaArredondamento : TBematech_FI_ProgramaArredondamento;
  Bematech_FI_ProgramaTruncamento : TBematech_FI_ProgramaTruncamento;
  Bematech_FI_AcionaGaveta: TBematech_FI_AcionaGaveta;
  Bematech_FI_VerificaEstadoGaveta: TBematech_FI_VerificaEstadoGaveta;
  Bematech_FI_AbrePortaSerial: TBematech_FI_AbrePortaSerial;
  Bematech_FI_RetornoImpressora: TBematech_FI_RetornoImpressora;
  Bematech_FI_FechaPortaSerial: TBematech_FI_FechaPortaSerial;
  Bematech_FI_MapaResumo: TBematech_FI_MapaResumo;
  Bematech_FI_AberturaDoDia: TBematech_FI_AberturaDoDia;
  Bematech_FI_FechamentoDoDia: TBematech_FI_FechamentoDoDia;
  Bematech_FI_ImprimeConfiguracoesImpressora: TBematech_FI_ImprimeConfiguracoesImpressora;
  Bematech_FI_ImprimeDepartamentos: TBematech_FI_ImprimeDepartamentos;
  Bematech_FI_RelatorioTipo60Analitico: TBematech_FI_RelatorioTipo60Analitico;
  Bematech_FI_RelatorioTipo60Mestre: TBematech_FI_RelatorioTipo60Mestre;
  Bematech_FI_VerificaImpressoraLigada: TBematech_FI_VerificaImpressoraLigada;
  Bematech_FI_ImpressaoCarne: TBematech_FI_ImpressaoCarne;
  Bematech_FI_InfoBalanca: TBematech_FI_InfoBalanca;
  function Load_Bemafi32: integer;
  procedure Unload_Bemafi32;
  procedure ErroDll_Bemafi32;
  function Bematech_FechaPortaSerial:integer;

implementation

function Load_Bemafi32: integer;
begin
  if hDLL = 0 then
    hDLL := LoadLibrary(PChar(BEMATECHLIB));
  if hDLL > 0 then
  begin
    @Bematech_FI_ProgramaHorarioVerao :=
      GetProcAddress(hDLL, 'Bematech_FI_ProgramaHorarioVerao');
    @Bematech_FI_AbreCupom :=
      GetProcAddress(hDLL, 'Bematech_FI_AbreCupom');
    @Bematech_FI_VendeItem :=
      GetProcAddress(hDLL, 'Bematech_FI_VendeItem');
    @Bematech_FI_VendeItemDepartamento :=
      GetProcAddress(hDLL, 'Bematech_FI_VendeItemDepartamento');
    @Bematech_FI_CancelaItemAnterior :=
      GetProcAddress(hDLL, 'Bematech_FI_CancelaItemAnterior');
    @Bematech_FI_CancelaItemGenerico :=
      GetProcAddress(hDLL, 'Bematech_FI_CancelaItemGenerico');
    @Bematech_FI_CancelaCupom :=
      GetProcAddress(hDLL, 'Bematech_FI_CancelaCupom');
    @Bematech_FI_FechaCupomResumido :=
      GetProcAddress(hDLL, 'Bematech_FI_FechaCupomResumido');
    @Bematech_FI_FechaCupom :=
      GetProcAddress(hDLL, 'Bematech_FI_FechaCupom');
    @Bematech_FI_ResetaImpressora :=
      GetProcAddress(hDLL, 'Bematech_FI_ResetaImpressora');
    @Bematech_FI_IniciaFechamentoCupom :=
      GetProcAddress(hDLL, 'Bematech_FI_IniciaFechamentoCupom');
    @Bematech_FI_EfetuaFormaPagamento :=
      GetProcAddress(hDLL, 'Bematech_FI_EfetuaFormaPagamento');
    @Bematech_FI_EfetuaFormaPagamentoDescricaoForma :=
      GetProcAddress(hDLL, 'Bematech_FI_EfetuaFormaPagamentoDescricaoForma');
    @Bematech_FI_TerminaFechamentoCupom :=
      GetProcAddress(hDLL, 'Bematech_FI_TerminaFechamentoCupom');
    @Bematech_FI_EstornoFormasPagamento :=
      GetProcAddress(hDLL, 'Bematech_FI_EstornoFormasPagamento');
    @Bematech_FI_UsaUnidadeMedida :=
      GetProcAddress(hDLL, 'Bematech_FI_UsaUnidadeMedida');
    @Bematech_FI_AumentaDescricaoItem :=
      GetProcAddress(hDLL, 'Bematech_FI_AumentaDescricaoItem');
    @Bematech_FI_LeituraX :=
      GetProcAddress(hDLL, 'Bematech_FI_LeituraX');
    @Bematech_FI_ReducaoZ :=
      GetProcAddress(hDLL, 'Bematech_FI_ReducaoZ');
    @Bematech_FI_RelatorioGerencial :=
      GetProcAddress(hDLL, 'Bematech_FI_RelatorioGerencial');
    @Bematech_FI_FechaRelatorioGerencial :=
      GetProcAddress(hDLL, 'Bematech_FI_FechaRelatorioGerencial');
    @Bematech_FI_LeituraMemoriaFiscalData :=
      GetProcAddress(hDLL, 'Bematech_FI_LeituraMemoriaFiscalData');
    @Bematech_FI_LeituraMemoriaFiscalReducao :=
      GetProcAddress(hDLL, 'Bematech_FI_LeituraMemoriaFiscalReducao');
    @Bematech_FI_LeituraMemoriaFiscalSerialData :=
      GetProcAddress(hDLL, 'Bematech_FI_LeituraMemoriaFiscalSerialData');
    @Bematech_FI_RetornaRegistradoresFiscais :=
      GetProcAddress(hDLL, 'Bematech_FI_RetornaRegistradoresFiscais');
    @Bematech_FI_LeituraMemoriaFiscalSerialReducao :=
      GetProcAddress(hDLL, 'Bematech_FI_LeituraMemoriaFiscalSerialReducao');
    @Bematech_FI_RecebimentoNaoFiscal :=
      GetProcAddress(hDLL, 'Bematech_FI_RecebimentoNaoFiscal');
    @Bematech_FI_AbreComprovanteNaoFiscalVinculado :=
      GetProcAddress(hDLL, 'Bematech_FI_AbreComprovanteNaoFiscalVinculado');
    @Bematech_FI_UsaComprovanteNaoFiscalVinculado :=
      GetProcAddress(hDLL, 'Bematech_FI_UsaComprovanteNaoFiscalVinculado');
    @Bematech_FI_FechaComprovanteNaoFiscalVinculado :=
      GetProcAddress(hDLL, 'Bematech_FI_FechaComprovanteNaoFiscalVinculado');
    @Bematech_FI_Sangria :=
      GetProcAddress(hDLL, 'Bematech_FI_Sangria');
    @Bematech_FI_Suprimento :=
      GetProcAddress(hDLL, 'Bematech_FI_Suprimento');
    @Bematech_FI_NumeroSerie :=
      GetProcAddress(hDLL, 'Bematech_FI_NumeroSerie');
    @Bematech_FI_NumeroSerieMFD :=
      GetProcAddress(hDLL, 'Bematech_FI_NumeroSerieMFD');
    @Bematech_FI_SubTotal :=
      GetProcAddress(hDLL, 'Bematech_FI_SubTotal');
    @Bematech_FI_NumeroCupom :=
      GetProcAddress(hDLL, 'Bematech_FI_NumeroCupom');
    @Bematech_FI_LeituraXSerial :=
      GetProcAddress(hDLL, 'Bematech_FI_LeituraXSerial');
    @Bematech_FI_VersaoFirmware :=
      GetProcAddress(hDLL, 'Bematech_FI_VersaoFirmware');
    @Bematech_FI_CGC_IE :=
      GetProcAddress(hDLL, 'Bematech_FI_CGC_IE');
    @Bematech_FI_GrandeTotal :=
      GetProcAddress(hDLL, 'Bematech_FI_GrandeTotal');
    @Bematech_FI_Cancelamentos :=
      GetProcAddress(hDLL, 'Bematech_FI_Cancelamentos');
    @Bematech_FI_Descontos :=
      GetProcAddress(hDLL, 'Bematech_FI_Descontos');
    @Bematech_FI_NumeroOperacoesNaoFiscais :=
      GetProcAddress(hDLL, 'Bematech_FI_NumeroOperacoesNaoFiscais');
    @Bematech_FI_NumeroCuponsCancelados :=
      GetProcAddress(hDLL, 'Bematech_FI_NumeroCuponsCancelados');
    @Bematech_FI_NumeroIntervencoes :=
      GetProcAddress(hDLL, 'Bematech_FI_NumeroIntervencoes');
    @Bematech_FI_NumeroReducoes :=
      GetProcAddress(hDLL, 'Bematech_FI_NumeroReducoes');
    @Bematech_FI_NumeroSubstituicoesProprietario :=
      GetProcAddress(hDLL, 'Bematech_FI_NumeroSubstituicoesProprietario');
    @Bematech_FI_UltimoItemVendido :=
      GetProcAddress(hDLL, 'Bematech_FI_UltimoItemVendido');
    @Bematech_FI_ClicheProprietario :=
      GetProcAddress(hDLL, 'Bematech_FI_ClicheProprietario');
    @Bematech_FI_NumeroCaixa :=
      GetProcAddress(hDLL, 'Bematech_FI_NumeroCaixa');
    @Bematech_FI_NumeroLoja :=
      GetProcAddress(hDLL, 'Bematech_FI_NumeroLoja');
    @Bematech_FI_SimboloMoeda :=
      GetProcAddress(hDLL, 'Bematech_FI_SimboloMoeda');
    @Bematech_FI_MinutosLigada :=
      GetProcAddress(hDLL, 'Bematech_FI_MinutosLigada');
    @Bematech_FI_MinutosImprimindo :=
      GetProcAddress(hDLL, 'Bematech_FI_MinutosImprimindo');
    @Bematech_FI_VerificaModoOperacao :=
      GetProcAddress(hDLL, 'Bematech_FI_VerificaModoOperacao');
    @Bematech_FI_VerificaEpromConectada :=
      GetProcAddress(hDLL, 'Bematech_FI_VerificaEpromConectada');
    @Bematech_FI_FlagsFiscais :=
      GetProcAddress(hDLL, 'Bematech_FI_FlagsFiscais');
    @Bematech_FI_ValorPagoUltimoCupom :=
      GetProcAddress(hDLL, 'Bematech_FI_ValorPagoUltimoCupom');
    @Bematech_FI_DataHoraImpressora :=
      GetProcAddress(hDLL, 'Bematech_FI_DataHoraImpressora');
    @Bematech_FI_ContadoresTotalizadoresNaoFiscais :=
      GetProcAddress(hDLL, 'Bematech_FI_ContadoresTotalizadoresNaoFiscais');
    @Bematech_FI_VerificaTotalizadoresNaoFiscais :=
      GetProcAddress(hDLL, 'Bematech_FI_VerificaTotalizadoresNaoFiscais');
    @Bematech_FI_DataHoraReducao :=
      GetProcAddress(hDLL, 'Bematech_FI_DataHoraReducao');
    @Bematech_FI_DataMovimento :=
      GetProcAddress(hDLL, 'Bematech_FI_DataMovimento');
    @Bematech_FI_VerificaTruncamento :=
      GetProcAddress(hDLL, 'Bematech_FI_VerificaTruncamento');
    @Bematech_FI_Acrescimos :=
      GetProcAddress(hDLL, 'Bematech_FI_Acrescimos');
    @Bematech_FI_ContadorBilhetePassagem :=
      GetProcAddress(hDLL, 'Bematech_FI_ContadorBilhetePassagem');
    @Bematech_FI_VerificaAliquotasIss :=
      GetProcAddress(hDLL, 'Bematech_FI_VerificaAliquotasIss');
    @Bematech_FI_VerificaFormasPagamento :=
      GetProcAddress(hDLL, 'Bematech_FI_VerificaFormasPagamento');
    @Bematech_FI_VerificaRecebimentoNaoFiscal :=
      GetProcAddress(hDLL, 'Bematech_FI_VerificaRecebimentoNaoFiscal');
    @Bematech_FI_VerificaDepartamentos :=
      GetProcAddress(hDLL, 'Bematech_FI_VerificaDepartamentos');
    @Bematech_FI_VerificaTipoImpressora :=
      GetProcAddress(hDLL, 'Bematech_FI_VerificaTipoImpressora');
    @Bematech_FI_VerificaTotalizadoresParciais :=
      GetProcAddress(hDLL, 'Bematech_FI_VerificaTotalizadoresParciais');
    @Bematech_FI_RetornoAliquotas :=
      GetProcAddress(hDLL, 'Bematech_FI_RetornoAliquotas');
    @Bematech_FI_VerificaEstadoImpressora :=
      GetProcAddress(hDLL, 'Bematech_FI_VerificaEstadoImpressora');
    @Bematech_FI_DadosUltimaReducao :=
      GetProcAddress(hDLL, 'Bematech_FI_DadosUltimaReducao');
    @Bematech_FI_MonitoramentoPapel :=
      GetProcAddress(hDLL, 'Bematech_FI_MonitoramentoPapel');
    @Bematech_FI_VerificaIndiceAliquotasIss :=
      GetProcAddress(hDLL, 'Bematech_FI_VerificaIndiceAliquotasIss');
    @Bematech_FI_ValorFormaPagamento :=
      GetProcAddress(hDLL, 'Bematech_FI_ValorFormaPagamento');
    @Bematech_FI_ValorTotalizadorNaoFiscal :=
      GetProcAddress(hDLL, 'Bematech_FI_ValorTotalizadorNaoFiscal');
    @Bematech_FI_Autenticacao :=
      GetProcAddress(hDLL, 'Bematech_FI_Autenticacao');
    @Bematech_FI_ProgramaCaracterAutenticacao :=
      GetProcAddress(hDLL, 'Bematech_FI_ProgramaCaracterAutenticacao');
    @Bematech_FI_ProgramaArredondamento :=
      GetProcAddress(hDLL, 'Bematech_FI_ProgramaArredondamento');
    @Bematech_FI_ProgramaTruncamento :=
      GetProcAddress(hDLL, 'Bematech_FI_ProgramaTruncamento');
    @Bematech_FI_AcionaGaveta :=
      GetProcAddress(hDLL, 'Bematech_FI_AcionaGaveta');
    @Bematech_FI_VerificaEstadoGaveta :=
      GetProcAddress(hDLL, 'Bematech_FI_VerificaEstadoGaveta');
    @Bematech_FI_AbrePortaSerial :=
      GetProcAddress(hDLL, 'Bematech_FI_AbrePortaSerial');
    @Bematech_FI_RetornoImpressora :=
      GetProcAddress(hDLL, 'Bematech_FI_RetornoImpressora');
    @Bematech_FI_FechaPortaSerial :=
      GetProcAddress(hDLL, 'Bematech_FI_FechaPortaSerial');
    @Bematech_FI_MapaResumo :=
      GetProcAddress(hDLL, 'Bematech_FI_MapaResumo');
    @Bematech_FI_AberturaDoDia :=
      GetProcAddress(hDLL, 'Bematech_FI_AberturaDoDia');
    @Bematech_FI_FechamentoDoDia :=
      GetProcAddress(hDLL, 'Bematech_FI_FechamentoDoDia');
    @Bematech_FI_ImprimeConfiguracoesImpressora :=
      GetProcAddress(hDLL, 'Bematech_FI_ImprimeConfiguracoesImpressora');
    @Bematech_FI_ImprimeDepartamentos :=
      GetProcAddress(hDLL, 'Bematech_FI_ImprimeDepartamentos');
    @Bematech_FI_RelatorioTipo60Analitico :=
      GetProcAddress(hDLL, 'Bematech_FI_RelatorioTipo60Analitico');
    @Bematech_FI_RelatorioTipo60Mestre :=
      GetProcAddress(hDLL, 'Bematech_FI_RelatorioTipo60Mestre');
    @Bematech_FI_VerificaImpressoraLigada :=
      GetProcAddress(hDLL, 'Bematech_FI_VerificaImpressoraLigada');
    @Bematech_FI_ImpressaoCarne :=
      GetProcAddress(hDLL, 'Bematech_FI_ImpressaoCarne');
    @Bematech_FI_InfoBalanca :=
      GetProcAddress(hDLL, 'Bematech_FI_InfoBalanca');
    Result := 1;
  end
  else
  begin
    Result := 0;
    raise Exception.Create(Format(SLIBNOTFOUND, [BEMATECHLIB]));
  end;

end;

procedure Unload_Bemafi32;
begin
  if hDLL > 0 then
  begin
    if freeLibrary(hDLL) then
      hdll := 0;
  end;
end;

procedure ErroDll_Bemafi32;
begin
  raise Exception.Create(Format('Erro ao carregar %s', [BEMATECHLIB]));
end;

function Bematech_FechaPortaSerial:integer;
begin
  if hDLL > 0 then
    Result:=Bematech_FI_FechaPortaSerial;
end;

initialization

finalization
  Unload_Bemafi32;
end.
