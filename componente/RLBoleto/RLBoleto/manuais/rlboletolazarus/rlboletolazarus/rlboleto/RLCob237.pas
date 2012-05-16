unit RLCob237;

{$mode objfpc}{$H+}

interface

{$HINTS OFF}

uses
   classes, SysUtils, RLBoleto
      , MaskUtils, contnrs
   {{$ELSE}}
      {$IFDEF VER130}
         , Mask, contnrs
      {{$ELSE}
         , Mask}
      {$ENDIF}
   ;

const
   CodigoBanco = '237';
   NomeBanco = 'BRADESCO';
   Imagem = 6;

type
   TRLBanco237 = class(TPersistent)
{$IFNDEF VER120}
   private
      function VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
      function VerificaMotivoRejeicaoComando(sMotivoRejeicaoComando: String): String;
      function GerarRemessaCNAB400(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
      function LerRetornoCNAB400(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
{$ENDIF}
   published
      function  GetNomeBanco: string; {Retorna o nome do banco}
      function  GetImagem   : byte; {Retorna o codigo para imagem do banco}
      function  GetCampoLivreCodigoBarra(ATitulo: TRLBTitulo) : string; {Retorna o conteúdo da parte variável do código de barras}
      function  CalcularDigitoNossoNumero(ATitulo: TRLBTitulo) : string; {Calcula o dígito do NossoNumero, conforme critérios definidos por cada banco}
      procedure FormatarBoleto(ATitulo: TRLBTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string); {Define o formato como alguns valores serão apresentados no boleto }
{$IFNDEF VER120}
      function  LerRetorno(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean; {Lê o arquivo retorno recebido do banco}
      function  GerarRemessa(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean; {Gerar arquivo remessa para enviar ao banco}
{$ENDIF}
   end;

implementation

function TRLBanco237.GetNomeBanco: string;
begin
  Result := NomeBanco;
end;

function TRLBanco237.GetImagem : Byte;
begin
   Result := Imagem;
end;

function TRLBanco237.CalcularDigitoNossoNumero(ATitulo: TRLBTitulo) : string;
var
  ACarteira,
  ANossoNumero,
  ADigitoNossoNumero : string;
begin
  Result := '0';
  with ATitulo do
  begin
    ACarteira := Formatar(Carteira,2,false,'0');
    ANossoNumero := Formatar(NossoNumero,11,false,'0');
    ADigitoNossoNumero := Modulo11(ACarteira + ANossoNumero,7,true);
  end;
  if StrToInt(ADigitoNossoNumero) = 1 then
     ADigitoNossoNumero := 'P'
  else if StrToInt(ADigitoNossoNumero) > 1 then
     ADigitoNossoNumero := IntToStr(11 - StrToInt(ADigitoNossoNumero));
  Result := ADigitoNossoNumero;
end;

function TRLBanco237.GetCampoLivreCodigoBarra(ATitulo: TRLBTitulo) : string;
var
  AAnoAtual,
  ACarteira,
  ANossoNumero,
  ACodigoAgencia,
  ANumeroConta: string;
begin
  with ATitulo do
  begin
    ACarteira := Formatar(Carteira,2,false,'0');
    AAnoAtual := FormatDateTime('yy',Now());
    ANossoNumero := Formatar(NossoNumero,11,false,'0');
    ACodigoAgencia := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0');
    ANumeroConta := Formatar(Cedente.ContaBancaria.NumeroConta,7,false,'0');
  end;
  Result := ACodigoAgencia + ACarteira + ANossoNumero + ANumeroConta + '0';
end;

procedure TRLBanco237.FormatarBoleto(ATitulo: TRLBTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
  with ATitulo do
  begin
    if ATitulo.LocalPagamento = 'PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO' then
      ATitulo.LocalPagamento := 'PAGAR PREFERENCIALMENTE EM QUALQUER AGÊNCIA BRADESCO.';
    AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia,4,false,'0') + '-' + Cedente.ContaBancaria.DigitoAgencia + '/' + Formatar(Cedente.ContaBancaria.NumeroConta,7,false,'0') + '-' + Cedente.ContaBancaria.DigitoConta;
    ANossoNumero := Formatar(Carteira,2,false,'0') + '/' + Formatar(NossoNumero,11,false,'0') + '-' + DigitoNossoNumero;
    ACarteira := Formatar(Carteira,3,false,'0');
    case EspecieDocumento of
       edApoliceSeguro                : AEspecieDocumento := 'AP';
       edCheque                       : AEspecieDocumento := 'CH';
       edDuplicataMercantil           : AEspecieDocumento := 'DM';
       edDuplicataMercantialIndicacao : AEspecieDocumento := 'DMI';
       edDuplicataRural               : AEspecieDocumento := 'DR';
       edDuplicataServico             : AEspecieDocumento := 'DS';
       edDuplicataServicoIndicacao    : AEspecieDocumento := 'DSI';
       edFatura                       : AEspecieDocumento := 'FAT';
       edLetraCambio                  : AEspecieDocumento := 'LC';
       edMensalidadeEscolar           : AEspecieDocumento := 'ME';
       edNotaCreditoComercial         : AEspecieDocumento := 'NCC';
       edNotaCreditoExportacao        : AEspecieDocumento := 'NCE';
       edNotaCreditoIndustrial        : AEspecieDocumento := 'NCI';
       edNotaCreditoRural             : AEspecieDocumento := 'NCR';
       edNotaDebito                   : AEspecieDocumento := 'ND';
       edNotaPromissoria              : AEspecieDocumento := 'NP';
       edNotaPromissoriaRural         : AEspecieDocumento := 'NPR';
       edNotaSeguro                   : AEspecieDocumento := 'NS';
       edParcelaConsorcio             : AEspecieDocumento := 'PC';
       edRecibo                       : AEspecieDocumento := 'RC';
       edTriplicataMercantil          : AEspecieDocumento := 'TM';
       edTriplicataServico            : AEspecieDocumento := 'TS'
    else
       AEspecieDocumento := '';
    end;
  end;
end;

{$IFNDEF VER120}

function TRLBanco237.GerarRemessaCNAB400(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
var
  ACedenteTipoInscricao, ASacadoTipoInscricao,
  Registro : string;
  NumeroRegistro : integer;
begin
  Result := FALSE;
  NumeroRegistro := 0;
  Remessa.Clear;
  with ACobranca do
  begin
    { GERAR REGISTRO-HEADER DA REMESSA }
    Remessa.Add('0'+ // IDENTIFICAÇÃO DO REGISTRO HEADER
                '1'+ // TIPO DE OPERAÇÃO - REMESSA
                'REMESSA'+ // IDENTIFICAÇÃO POR EXTENSO DO MOVIMENTO
                '01'+ // IDENTIFICAÇÃO DO TIPO DE SERVIÇO
                Formatar('COBRANCA',15)+ // IDENTIFICAÇÃO POR EXTENSO DO TIPO DE SERVIÇO
                Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,20,false,'0')+ // Código da Empresa
                Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' ')+ //  NOME POR EXTENSO DA "EMPRESA MÃE"
                Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0')+ // Nº DO BANCO NA CÂMARA DE COMPENSAÇÃO
                Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Nome,15,true,' ')+ // NOME POR EXTENSO DO BANCO COBRADOR
                FormatDateTime('ddmmyy',DataArquivo)+ // DATA DE GERAÇÃO DO ARQUIVO
                Formatar('',8)+ // 101 A 108 BRANCOS
                'MX' + // 109 a 110 - Identificação do Sistema, Micro a Micro obrigatório, preencher com a sigla MX
                Formatar(IntToStr(NumeroArquivo),7,false,'0') + // 111 a 117 - Número Seqüencial de Remessa
                Formatar('',277)+ // COMPLEMENTO DO REGISTRO
                '000001'); // NÚMERO SEQÜENCIAL DO REGISTRO NO ARQUIVO
    { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
    while NumeroRegistro <= (Titulos.Count - 1) do
    begin
      if Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') <> Formatar(CodigoBanco,3,false,'0') then
        Raise Exception.CreateFmt('Titulo não pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);
      case Titulos[NumeroRegistro].Cedente.TipoInscricao of
        tiPessoaFisica  : ACedenteTipoInscricao := '01';
        tiPessoaJuridica: ACedenteTipoInscricao := '02';
        tiOutro         : ACedenteTipoInscricao := '03';
      end;
      case Titulos[NumeroRegistro].Sacado.TipoInscricao of
        tiPessoaFisica  : ASacadoTipoInscricao := '01';
        tiPessoaJuridica: ASacadoTipoInscricao := '02';
        tiOutro         : ASacadoTipoInscricao := '03';
      end;
      Registro := '1';
      Registro := Registro + Formatar('',19,false,'0');
      Registro := Registro + '0'+Formatar(Titulos[NumeroRegistro].Carteira,3,false,'0');
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0');
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,7,false,'0');
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1);
      Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25,true,' '); //Posição 38
      Registro := Registro + '000'; //Posição 63 - Utilizada somente quando tiver débito automático preenchido com o código do banco
      Registro := Registro + '00000'; // Posição 66
      Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,11,false,'0'); //Posição 71
      Registro := Registro + Formatar(Titulos[NumeroRegistro].DigitoNossoNumero,1,false,'0'); //Posição 82
      Registro := Registro + Formatar('',10,false,'0');
      Registro := Registro + '2N'; // Posição 93-94
      Registro := Registro + Formatar('',11);
      Registro := Registro + '0';  // Posição 106 - Endereçamento para Aviso do Débito Automático em Conta Corrente
      Registro := Registro + Formatar('',2); // Posição 107-108
      // Identificação Ocorrência
      case Titulos[NumeroRegistro].TipoOcorrencia of // Posição 109-110
        toRemessaBaixar                    : Registro := Registro + '02'; {Pedido de Baixa}
        toRemessaConcederAbatimento        : Registro := Registro + '04'; {Concessão de Abatimento}
        toRemessaCancelarAbatimento        : Registro := Registro + '05'; {Cancelamento de Abatimento concedido}
        toRemessaAlterarVencimento         : Registro := Registro + '06'; {Alteração de vencimento}
        toRemessaAlterarNumeroControle     : Registro := Registro + '08'; {Alteração de seu número}
        toRemessaProtestar                 : Registro := Registro + '09'; {Pedido de protesto}
        toRemessaCancelarInstrucaoProtesto : Registro := Registro + '19'; {Sustar protesto e manter na carteira}
        toRemessaOutrasOcorrencias         : Registro := Registro + '31'; {Alteração de Outros Dados}
      else
        Registro := Registro + '01'; // Remessa
      end;
      //
      Registro := Registro + Formatar(Titulos[NumeroRegistro].NumeroDocumento,10);
      Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataVencimento);
      Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDocumento * 100);
      Registro := Registro + Formatar('',8,false,'0'); //Deverão ser preenchidos com Zeros, pois o sistema codificará através do CEP, que deverá ser informado na posição 327 a 334 do registro de transação.
      case Titulos[NumeroRegistro].EspecieDocumento of
        edDuplicataMercantil           : Registro := Registro + '01'; {DM  DUPLICATA MERCANTIL}
        edDuplicataServico             : Registro := Registro + '12'; {DS  DUPLICATA DE SERVIÇO}
        edLetraCambio                  : Registro := Registro + '10'; {LC  LETRA DE CÂMBIO}
        edNotaDebito                   : Registro := Registro + '11'; {ND  NOTA DE DÉBITO}
        edNotaPromissoria              : Registro := Registro + '02'; {NP  NOTA PROMISSÓRIA}
        edNotaSeguro                   : Registro := Registro + '03'; {NS  NOTA DE SEGURO}
        edRecibo                       : Registro := Registro + '05'; {RC  RECIBO}
      else
        Registro := Registro + '99'; // Outros
      end;
      Registro := Registro + 'N';
      Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDocumento);
      // Instruções protesto
      if (Titulos[NumeroRegistro].DataProtesto <> null) and (Titulos[NumeroRegistro].DataProtesto > Titulos[NumeroRegistro].DataVencimento) then  // Protesto
        Registro := Registro + '06' + Formatar(FloatToStr(Titulos[NumeroRegistro].DataProtesto - Titulos[NumeroRegistro].DataVencimento),2,false,'0')
      else if Titulos[NumeroRegistro].TipoOcorrencia = toRemessaOutrasOcorrencias then
        Registro := Registro + '9999'
      else
        Registro := Registro + '0000';
      //
      Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorMoraJuros * 100);
      Registro := Registro + Formatar(' ',6,false,'0');
      Registro := Registro + Formatar(' ',13,false,'0');
      Registro := Registro + Formatar(' ',13,false,'0');
      Registro := Registro + Formatar(' ',13,false,'0');
      Registro := Registro + Formatar(ASacadoTipoInscricao,2,false,'0');
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,14,false,'0');
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40);
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento+' '+Titulos[NumeroRegistro].Sacado.Endereco.Bairro+' '+Titulos[NumeroRegistro].Sacado.Endereco.Cidade+' '+Titulos[NumeroRegistro].Sacado.Endereco.Estado,40);
      Registro := Registro + Formatar('',12);
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0');
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Instrucoes.Text,60);
      Registro := Registro + Formatar(IntToStr(NumeroRegistro+2),6,false,'0');
      Remessa.Add(Registro);
      NumeroRegistro := NumeroRegistro + 1;
    end;
    { GERAR REGISTRO TRAILER DA REMESSA }
    Remessa.Add('9'+Formatar('',393,true,' ')+Formatar(IntToStr(NumeroRegistro+2),6,false,'0'));
  end;
  Result := TRUE;
end;

function TRLBanco237.GerarRemessa(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
begin
  case ACobranca.LayoutArquivo of
    laCNAB240 : Raise Exception.CreateFmt('A geração de arquivo de remessa para o %s não está está disponível para o layout laCNAB240',[NomeBanco]);
    laCNAB400 : Result := GerarRemessaCNAB400(ACobranca, Remessa)
  else
    begin
      Result := FALSE;
      Raise Exception.Create('Layout de arquivo inválido. Diferente de laCNAB400');
    end; {else}
  end; {case}
end;

function TRLBanco237.LerRetornoCNAB400(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
var
  ACodigoBanco,
  ANomeCedente,
  ATipoInscricao : string;
  NumeroRegistro : integer;
  ATitulo : TRLBTitulo;
begin
  NumeroRegistro := 0;
  ATitulo := TRLBTitulo.Create(nil);
  try
    with ACobranca do
    begin
      Titulos.Clear; {Zera o conjunto de títulos, antes de incluir os títulos do arquivo retorno}
      if Retorno.Count <= 0 then
        Raise Exception.Create('O retorno está vazio. Não há dados para processar');
      {Ver se o arquivo é mesmo RETORNO DE COBRANÇA}
      if Copy(Retorno.Strings[NumeroRegistro],1,19) <> '02RETORNO01COBRANCA' then
        Raise Exception.Create(NomeArquivo+' não é um arquivo de retorno de cobrança');
      { Lê registro HEADER}
      ACodigoBanco := Copy(Retorno.Strings[NumeroRegistro],77,3);
      if ACodigoBanco <> CodigoBanco then
        Raise Exception.CreateFmt('Este não é um retorno de cobrança do banco %s - %s',[CodigoBanco,NomeBanco]);
      ANomeCedente := Trim(Copy(Retorno.Strings[NumeroRegistro],47,30));
      if StrToInt(Copy(Retorno.Strings[NumeroRegistro],99,2)) <= 69 then
        DataArquivo := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],99,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)))
      else
        DataArquivo := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],99,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)));
      NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],109,5)));
      {Lê os registros DETALHE}
      {Processa até o penúltimo registro porque o último contém apenas o TRAILLER}
      for NumeroRegistro := 1 to (Retorno.Count - 2) do
      begin
        {Confirmar se o tipo do registro é 1}
        if Copy(Retorno.Strings[NumeroRegistro],1,1) <> '1' then
          Continue; {Não processa o registro atual}
        { Ler títulos do arquivo retorno}
        {Dados do titulo}
        with ATitulo do
        begin
          {Dados do cedente do título}
          with Cedente do
          begin
            ATipoInscricao := Copy(Retorno.Strings[NumeroRegistro],2,2);
            if ATipoInscricao = '01' then
              TipoInscricao := tiPessoaFisica
            else if ATipoInscricao = '02' then
              TipoInscricao := tiPessoaJuridica
            else
              TipoInscricao := tiOutro;
            NumeroCPFCGC := Copy(Retorno.Strings[NumeroRegistro],4,14);
            ContaBancaria.Banco.Codigo := ACodigoBanco;
            Nome := ANomeCedente;
          end; {with ACedente}
          SeuNumero       := Copy(Retorno.Strings[NumeroRegistro],38,25);
          NumeroDocumento := Copy(Retorno.Strings[NumeroRegistro],117,10);
          {Tipo de ocorrência}
          OcorrenciaOriginal := Copy(Retorno.Strings[NumeroRegistro],109,2);
          DescricaoOcorrenciaOriginal := VerificaOcorrenciaOriginal(OcorrenciaOriginal);
          case StrToInt(OcorrenciaOriginal) of
            02: TipoOcorrencia := toRetornoRegistroConfirmado;
            03: TipoOcorrencia := toRetornoRegistroRecusado;
            06: TipoOcorrencia := toRetornoLiquidado;
            09: TipoOcorrencia := toRetornoBaixado;
            10: TipoOcorrencia := toRetornoBaixado;
            11: TipoOcorrencia := toRetornoTituloEmSer;
            12: TipoOcorrencia := toRetornoAbatimentoConcedido;
            13: TipoOcorrencia := toRetornoAbatimentoCancelado;
            14: TipoOcorrencia := toRetornoVencimentoAlterado;
            15: TipoOcorrencia := toRetornoLiquidadoEmCartorio;
            16: TipoOcorrencia := toRetornoLiquidado;
            17: TipoOcorrencia := toRetornoLiquidadoSemRegistro;
            18: TipoOcorrencia := toRetornoAcertoDepositaria;
            19: TipoOcorrencia := toRetornoRecebimentoInstrucaoProtestar;
            20: TipoOcorrencia := toRetornoRecebimentoInstrucaoSustarProtesto;
            21: TipoOcorrencia := toRetornoDadosAlterados;
            22: TipoOcorrencia := toRetornoRecebimentoInstrucaoAlterarDados;
            23: TipoOcorrencia := toRetornoEncaminhadoACartorio;
            24: TipoOcorrencia := toRetornoRegistroRecusado;
            27: TipoOcorrencia := toRetornoComandoRecusado;
            28: TipoOcorrencia := toRetornoDebitoTarifas;
            30: TipoOcorrencia := toRetornoComandoRecusado;
            32: TipoOcorrencia := toRetornoComandoRecusado;
            33: TipoOcorrencia := toRetornoRecebimentoInstrucaoAlterarDados;
            34: TipoOcorrencia := toRetornoRetiradoDeCartorio;
            99: TipoOcorrencia := toRetornoRegistroRecusado;
          else
            TipoOcorrencia := toRetornoOutrasOcorrencias;
          end; {case StrToInt(ATipoOcorrencia)}
          DescricaoMotivoRejeicaoComando := '';
          if Copy(Retorno.Strings[NumeroRegistro],319,2) <> '00' then
          begin
            MotivoRejeicaoComando := Copy(Retorno.Strings[NumeroRegistro],319,2);
            case StrToInt(MotivoRejeicaoComando) of
              00 : DescricaoMotivoRejeicaoComando := '00-Ocorrencia aceita';
              04 : DescricaoMotivoRejeicaoComando := '04-Tarifa de protesto';
              08 : DescricaoMotivoRejeicaoComando := '08-Tarifa de protesto';
              14 : DescricaoMotivoRejeicaoComando := '14-Título protestado';
              15 : DescricaoMotivoRejeicaoComando := '15-Título pago com cheque';
              16 : DescricaoMotivoRejeicaoComando := '16-Título baixado pelo Banco por decurso Prazo';
              17 : DescricaoMotivoRejeicaoComando := '17-Data de vencimento anterior a data de emissão';
              20 : DescricaoMotivoRejeicaoComando := '20-Título baixado e transferido para desconto';
              21 : DescricaoMotivoRejeicaoComando := '21-Espécie do Título inválido';
              24 : DescricaoMotivoRejeicaoComando := '24-Data da emissão inválida';
              38 : DescricaoMotivoRejeicaoComando := '38-Prazo para protesto inválido';
              39 : DescricaoMotivoRejeicaoComando := '39-Pedido para protesto não permitido para título';
              43 : DescricaoMotivoRejeicaoComando := '43-Prazo para baixa e devolução inválido';
              45 : DescricaoMotivoRejeicaoComando := '45-Nome do Sacado inválido';
              46 : DescricaoMotivoRejeicaoComando := '46-Tipo/num. de inscrição do Sacado inválidos';
              47 : DescricaoMotivoRejeicaoComando := '47-Endereço do Sacado não informado';
              48 : DescricaoMotivoRejeicaoComando := '48-CEP irregular';
              50 : DescricaoMotivoRejeicaoComando := '50-CEP referente a Banco correspondente';
              53 : DescricaoMotivoRejeicaoComando := '53-Nº de inscrição do Sacador/avalista inválidos (CPF/CNPJ)';
              54 : DescricaoMotivoRejeicaoComando := '54-Sacador/avalista não informado';
              63 : DescricaoMotivoRejeicaoComando := '63-Titulo já cadastrado';
              67 : DescricaoMotivoRejeicaoComando := '67-Débito automático agendado';
              68 : DescricaoMotivoRejeicaoComando := '68-Débito não agendado - erro nos dados de remessa';
              69 : DescricaoMotivoRejeicaoComando := '69-Débito não agendado - Sacado não consta no cadastro de autorizante';
              70 : DescricaoMotivoRejeicaoComando := '70-Débito não agendado - Cedente não autorizado pelo Sacado';
              71 : DescricaoMotivoRejeicaoComando := '71-Débito não agendado - Cedente não participa da modalidade de débito automático';
              72 : DescricaoMotivoRejeicaoComando := '72-Débito não agendado - Código de moeda diferente de R$';
              73 : DescricaoMotivoRejeicaoComando := '73-Débito não agendado - Data de vencimento inválida';
              75 : DescricaoMotivoRejeicaoComando := '75-Débito não agendado - Tipo do número de inscrição do sacado debitado inválido';
              86 : DescricaoMotivoRejeicaoComando := '86-Seu número do documento inválido'
            else
              DescricaoMotivoRejeicaoComando := MotivoRejeicaoComando + '-Outros motivos'
            end; {case MotivoRejeicaoComando of}
          end; {if TipoOcorrencia...}
          if StrToInt(Copy(Retorno.Strings[NumeroRegistro],115,2)) <= 69 then
            DataOcorrencia := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],115,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)))
          else
            DataOcorrencia := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],115,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)));
          if Copy(Retorno.Strings[NumeroRegistro],147,6) = '000000' then
            DataVencimento := StrToDate('30/12/1899')
         else
            DataVencimento := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],151,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],149,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],147,2)));
          ValorDocumento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],153,13))/100;
          ValorIOF := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],215,13))/100;
          ValorAbatimento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],228,13))/100;
          ValorDesconto := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],241,13))/100;
          ValorMoraJuros := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],267,13))/100;
          ValorOutrosCreditos := StrToFloat(Trim(Copy(Retorno.Strings[NumeroRegistro],280,13)))/100;
          ValorRecebido := StrToFloat(Trim(Copy(Retorno.Strings[NumeroRegistro],254,13)))/100;
          {Dados que variam de acordo com o banco}
          {Nosso número SEM DÍGITO}
          NossoNumero := Copy(Retorno.Strings[NumeroRegistro],71,11);
          Carteira := Copy(Retorno.Strings[NumeroRegistro],22,3);
          Cedente.ContaBancaria.CodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],24,5);
          Cedente.ContaBancaria.NumeroConta := Copy(Retorno.Strings[NumeroRegistro],29,7);
          Cedente.ContaBancaria.DigitoConta := Copy(Retorno.Strings[NumeroRegistro],30,1);
          ValorDespesaCobranca := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],176,13))/100;
          ValorOutrasDespesas := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],189,13))/100;
          if Formatar(Copy(Retorno.Strings[NumeroRegistro],296,6),6,false,'0') <> '000000' then
            if StrToInt(Copy(Retorno.Strings[NumeroRegistro],300,2)) <= 69 then
              DataCredito := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],300,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],298,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],296,2)))
            else
              DataCredito := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],300,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],298,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],296,2)));
        end; {with ATitulo}
        {Insere o título}
        Titulos.Add(ATitulo);
      end;
    end;
    ATitulo.Free;
    Result := TRUE
  except
    ATitulo.Free;
    Result := FALSE;
    Raise; {Propaga o erro}
  end;
end;

function TRLBanco237.LerRetorno(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
var
  ACodigoBanco,
  ANomeCedente,
  ATipoInscricao : string;
  NumeroRegistro : integer;
  ATitulo : TRLBTitulo;
begin
  NumeroRegistro := 0;
  ATitulo := TRLBTitulo.Create(nil);
  try
    with ACobranca do
    begin
      Titulos.Clear; {Zera o conjunto de títulos, antes de incluir os títulos do arquivo retorno}
      if Retorno.Count <= 0 then
        Raise Exception.Create('O retorno está vazio. Não há dados para processar');
      case length(Retorno[0]) of
        240 :
            begin
              Raise Exception.CreateFmt('A leitura de arquivo de retorno para o %s não está está disponível para o layout laCNAB240',[NomeBanco]);
{
                  LayoutArquivo := laCNAB240;
                  Result := LerRetornoCNAB240(ACobranca, Retorno);
}           end;
        400 :
            begin
              LayoutArquivo := laCNAB400;
              Result := LerRetornoCNAB400(ACobranca, Retorno);
            end
      else
        begin
          LayoutArquivo := laOutro;
          Raise Exception.CreateFmt('Tamanho de registro inválido: %d',[length(Retorno[0])]);
        end;
      end;
    end;
    ATitulo.Free;
    Result := TRUE
  except
    ATitulo.Free;
    Result := FALSE;
    Raise; //Propaga o erro
  end;
end;

function TRLBanco237.VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
begin
  if sOcorrenciaOriginal = '  ' then
  begin
    Result:='';
    Exit;
  end;
  case StrToInt(sOcorrenciaOriginal) of
    02: Result:='02-Entrada Confirmada' ;
    03: Result:='03-Entrada Rejeitada' ;
    06: Result:='06-Liquidação normal' ;
    09: Result:='09-Baixado Automaticamente via Arquivo' ;
    10: Result:='10-Baixado conforme instruções da Agência' ;
    11: Result:='11-Em Ser - Arquivo de Títulos pendentes' ;
    12: Result:='12-Abatimento Concedido' ;
    13: Result:='13-Abatimento Cancelado' ;
    14: Result:='14-Vencimento Alterado' ;
    15: Result:='15-Liquidação em Cartório' ;
    17: Result:='17-Liquidação após baixa ou Título não registrado' ;
    18: Result:='18-Acerto de Depositária' ;
    19: Result:='19-Confirmação Recebimento Instrução de Protesto' ;
    20: Result:='20-Confirmação Recebimento Instrução Sustação de Protesto' ;
    21: Result:='21-Acerto do Controle do Participante' ;
    23: Result:='22-Entrada do Título em Cartório' ;
    24: Result:='23-Entrada rejeitada por CEP Irregular' ;
    27: Result:='27-Baixa Rejeitada' ;
    28: Result:='28-Débito de tarifas/custas' ;
    30: Result:='30-Alteração de Outros Dados Rejeitados' ;
    32: Result:='32-Instrução Rejeitada' ;
    33: Result:='33-Confirmação Pedido Alteração Outros Dados' ;
    34: Result:='34-Retirado de Cartório e Manutenção Carteira' ;
    35: Result:='35-Desagendamento do débito automático' ;
    68: Result:='68-Acerto dos dados do rateio de Crédito' ;
    69: Result:='69-Cancelamento dos dados do rateio' ;
  end;
end;

function TRLBanco237.VerificaMotivoRejeicaoComando(sMotivoRejeicaoComando: String): String;
begin
  if sMotivoRejeicaoComando = '  ' then
  begin
    Result:='';
    Exit;
  end;
  case StrToInt(sMotivoRejeicaoComando) of
    02: Result:='02-Código do registro detalhe inválido' ;
    03: Result:='03-Código da ocorrência inválida' ;
    04: Result:='04-Código de ocorrência não permitida para a carteira' ;
    05: Result:='05-Código de ocorrência não numérico' ;
    07: Result:='07-Agência/conta/Digito - Inválido' ;
    08: Result:='08-Nosso número inválido' ;
    09: Result:='09-Nosso número duplicado' ;
    10: Result:='10-Carteira inválida' ;
    16: Result:='16-Data de vencimento inválida' ;
    18: Result:='18-Vencimento fora do prazo de operação' ;
    20: Result:='19-Valor do Título inválido' ;
    21: Result:='21-Espécie do Título inválida' ;
    22: Result:='22-Espécie não permitida para a carteira' ;
    24: Result:='24-Data de emissão inválida' ;
    38: Result:='38-Prazo para protesto inválido' ;
    44: Result:='44-Agência Cedente não prevista' ;
    50: Result:='50-CEP irregular - Banco Correspondente' ;
    63: Result:='63-Entrada para Título já cadastrado' ;
    68: Result:='68-Débito não agendado - erro nos dados de remessa' ;
    69: Result:='69-Débito não agendado - Sacado não consta no cadastro de autorizante' ;
    70: Result:='70-Débito não agendado - Cedente não autorizado pelo Sacado' ;
    71: Result:='71-Débito não agendado - Cedente não participa da modalidade de débito automático' ;
    72: Result:='72-ébito não agendado - Código de moeda diferente de R$' ;
    73: Result:='73-Débito não agendado - Data de vencimento inválida' ;
    74: Result:='74-Débito não agendado - Conforme seu pedido, Título não registrado' ;
    75: Result:='75-Débito não agendado - Tipo de número de inscrição do debitado inválido' ;
  end;
end;

{$ENDIF}

initialization
  RegisterClass(TRLBanco237);

{$HINTS ON}

end.