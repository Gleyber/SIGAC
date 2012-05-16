//*************************************
// Layout Bank Boston
// Desenvolvimento: Fabricio F. Kammer
// fabricio@abcsinformatica.com.br
// Favor manter os cr�ditos
//************************************

unit RLCob479;

{$HINTS OFF}
{$WARNINGS OFF}

interface

uses
   classes, SysUtils, RLBoleto
  {$IFDEF VER150}
     , MaskUtils, contnrs
  {$ELSE}
   {$IFDEF VER140}
      , MaskUtils, contnrs
   {$ELSE}
      {$IFDEF VER130}
         , Mask, contnrs
      {$ELSE}
         , Mask
      {$ENDIF}
   {$ENDIF}
  {$ENDIF} 
   ;

const
   CodigoBanco = '479';
   NomeBanco = 'Bank Boston';
   Imagem = 17;

type

   TRLBanco479 = class(TPersistent)
{$IFNDEF VER120}
      function VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String; //@w
      function VerificaMotivoRejeicaoComando(sMotivoRejeicaoComando: String): String; //@w
      function GerarRemessaCNAB400(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
      function LerRetornoCNAB400(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
{$ENDIF}   
   published
      function  GetNomeBanco   : string; {Retorna o nome do banco}
      function  GetImagem      : byte; {Retorna o codigo para imagem do banco}
      function  GetCampoLivreCodigoBarra(ATitulo: TRLBTitulo) : string; {Retorna o conte�do da parte vari�vel do c�digo de barras}
      function  CalcularDigitoNossoNumero(ATitulo: TRLBTitulo) : string; {Calcula o d�gito do NossoNumero, conforme crit�rios definidos por cada banco}
      procedure FormatarBoleto(ATitulo: TRLBTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string); {Define o formato como alguns valores ser�o apresentados no boleto }
{$IFNDEF VER120}
      function  LerRetorno(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean; {L� o arquivo retorno recebido do banco}
      function  GerarRemessa(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean; {Gerar arquivo remessa para enviar ao banco}
{$ENDIF}
   end;


implementation

function TRLBanco479.GetImagem : Byte;
begin
   Result := Imagem;
end;

function TRLBanco479.GetNomeBanco : string;
begin
   Result := NomeBanco;
end;

function TRLBanco479.CalcularDigitoNossoNumero(ATitulo: TRLBTitulo) : string;
var
   ANossoNumero,
   ADigitoNossoNumero : string;
begin
   Result := '0';

   ANossoNumero := Formatar(ATitulo.NossoNumero,8,false,'0');

   ADigitoNossoNumero := Modulo11(ANossoNumero);

   Result := ADigitoNossoNumero;
end;

function TRLBanco479.GetCampoLivreCodigoBarra(ATitulo: TRLBTitulo) : string;
var
   AConvenio,
   ANossoNumero,
   ADigitoNossoNumero: string;
begin

   {
    A primeira parte do c�digo de barras ser� calculada automaticamente.
    Ela � composta por:
    C�digo do banco (3 posi��es)
    C�digo da moeda = 9 (1 posi��o)
    D�gito do c�digo de barras (1 posi��o) - Ser� calculado e inclu�do pelo componente
    Fator de vencimento (4 posi��es) - Obrigat�rio a partir de 03/07/2000
    Valor do documento (10 posi��es) - Sem v�rgula decimal e com ZEROS � esquerda

    A segunda parte do c�digo de barras � um campo livre, que varia de acordo
    com o banco. Esse campo livre ser� calculado por esta fun��o (que voc� dever�
    alterar de acordo com as informa��es fornecidas pelo banco).
   }

   {Segunda parte do c�digo de barras - Campo livre - Varia de acordo com o banco}

   //No caso do BankBoston fazer o c�lculo diferenciado para cada carteira

   with ATitulo do
   begin
      AConvenio          := Formatar( Cedente.ContaBancaria.Convenio,9,false,'0');
      ANossoNumero       := Formatar(NossoNumero,8,false,'0');
      ADigitoNossoNumero := CalcularDigitoNossoNumero(ATitulo);
   end;

   Result := AConvenio + '000000' + ANossoNumero + ADigitoNossoNumero + '8';
end;

procedure TRLBanco479.FormatarBoleto(ATitulo: TRLBTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
   with ATitulo do
   begin
      AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia+Cedente.ContaBancaria.DigitoAgencia,7,false,'0') + '/' + Formatar(Cedente.CodigoCedente,8,false,'0') + Cedente.DigitoCodigoCedente;
      ANossoNumero := Formatar(NossoNumero,8,false,'0') + DigitoNossoNumero;
      ACarteira := Formatar(Carteira,3,false,' ');
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

function TRLBanco479.GerarRemessaCNAB400(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
var
   ACedenteTipoInscricao,
   ASacadoTipoInscricao,
   ATipoOcorrencia,
   AEspecieDocumento,
   AAceite,
   aTipoCarteira,
   Registro : string;
   NumeroRegistro : integer;
begin
   Result := FALSE;
   NumeroRegistro := 0;
   Remessa.Clear;

   with ACobranca do
   begin

      if LayoutArquivo <> laCNAB400 then
        Raise Exception.Create('CNAB400 � o �nico layout de cobran�a dispon�vel para o banco ' + CodigoBanco + ' - ' + NomeBanco);

      { GERAR REGISTRO-HEADER DA REMESSA }
      Remessa.Add('0'+ // IDENTIFICA��O DO REGISTRO HEADER
                  '1'+ // TIPO DE OPERA��O 1 = REMESSA
                  'REMESSA'+ // IDENTIFICA��O POR EXTENSO DO MOVIMENTO
                  '01'+ // IDENTIFICA��O DO TIPO DE SERVI�O
                  Formatar('COBRANCA',15)+ // IDENTIFICA��O POR EXTENSO DO TIPO DE SERVI�O
                  '00'+ // COMPLEMENTO DE REGISTRO
                  '1'+// TIPO DE ARQUIVO 1 = PRODU��O 9 = TESTE
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Convenio,8,false,'0')+ // N�MERO DO CONVENIO
                  Formatar('',9)+ // FILLER - 9 POSICOES EM BRANCO
                  Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' ')+ //  NOME POR EXTENSO DA "EMPRESA M�E"
                  '479'+ // N� DO BANCO NA C�MARA DE COMPENSA��O
                  Formatar('BANKBOSTON',15,true,' ')+ // NOME POR EXTENSO DO BANCO COBRADOR
                  FormatDateTime('ddmmyy',DataArquivo)+ // DATA DE GERA��O DO ARQUIVO
                  '01600'+ // DENSIDADE DE GRAVA�AO DO ARQUIVO
                  'BPI'+ // UNIDADE DE DENSIDADE DE GRAVA�AO
                  Formatar('',91)+ // FILLER - 91 POSICOES EM BRANCO
                  Formatar('0',8,false,'0')+ // N�MERO DO CONTRATO DE CAU��O - N�MERO FORNECIDO PELO BANCO PARA COBRAN�AS CAUCIONADAS
                  Formatar('',187)+ // FILLER - 187 POSICOES EM BRANCO
                  '000001'); // N�MERO SEQ�ENCIAL DO REGISTRO NO ARQUIVO

      { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
      while NumeroRegistro <= (Titulos.Count - 1) do
      begin
         if Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') <> Formatar(CodigoBanco,3,false,'0') then
            Raise Exception.CreateFmt('Titulo n�o pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);

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

         case Titulos[NumeroRegistro].TipoOcorrencia of
            toRemessaRegistrar          : ATipoOcorrencia := '01';
            toRemessaBaixar             : ATipoOcorrencia := '02';
            toRemessaConcederAbatimento : ATipoOcorrencia := '04';
            toRemessaCancelarAbatimento : ATipoOcorrencia := '05';
            toRemessaAlterarVencimento  : ATipoOcorrencia := '06';
            toRemessaProtestar          : ATipoOcorrencia := '09';
         else
            Raise Exception.CreateFmt('Ocorr�ncia inv�lida em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end;

         case Titulos[NumeroRegistro].EspecieDocumento of
           edDuplicataMercantil : aEspecieDocumento := 'DM';
           edDuplicataServico   : aEspecieDocumento := 'DS';
           edNotaSeguro         : aEspecieDocumento := 'NS';
           edNotaDebito         : aEspecieDocumento := 'ND';
           edMensalidadeEscolar : aEspecieDocumento := 'RE';
         else
           aEspecieDocumento := 'OT';
        end;

        case Titulos[NumeroRegistro].AceiteDocumento of
          adNao: aAceite:='N';
          adSim: aAceite:='A';
        end;

        if Titulos[NumeroRegistro].Carteira = 'RAP' then
          aTipoCarteira := '2'
        else
          aTipoCarteira := Titulos[NumeroRegistro].Carteira;

         Registro := '1'; // IDENTIFICA��O DO REGISTRO TRANSA��O
         Registro := Registro + Formatar(ACedenteTipoInscricao,2,false,'0'); // TIPO DE INSCRI��O DO CEDENTE
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,14,false,'0'); // N� DE INSCRI��O DA EMPRESA (CPF/CGC)
         Registro := Registro + Formatar('',20); // FILLER - 20 POSICOES EM BRANCO
         Registro := Registro + Formatar('',25); // RESERVADO PARA USO EXCLUSIVO DA EMPRESA QUE SER� AGREGADO NO ARQUIVO RETORNO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero+Titulos[NumeroRegistro].DigitoNossoNumero,9,false,'0'); // NOSSO N�MERO COM D�GITO
         Registro := Registro + Formatar('0',11,false,'0'); //VALOR POR DIA DE ANTECIPA��O
         Registro := Registro + ' '; //FILLER - 1 POSI��O EM BRANCO
         Registro := Registro + 'R$  '; //C�DIGO DA MOEDA - "R$ " = REAL
         Registro := Registro + Formatar( '', 20 ); //RESERVADO PARA USO DO BANCO
         Registro := Registro + aTipoCarteira; //IDENTIFICA��O DO TIPO DE CARTEIRA - 1 - SIMPLES, 2 - DIRETA, 3 - ESCRITURAL, 4 - CAU��O
         Registro := Registro + aTipoOcorrencia; //IDENTIFICA��O DA OCORR�NCIA DE REMESSA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,10,false,' '); //SEU N�MERO
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataVencimento); // DATA DE VENCIMENTO DO T�TULO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDocumento * 100); // VALOR NOMINAL DO T�TULO
         Registro := Registro + '479'; // COD. DO BANCO NA C�MARA DE COMPENSA��O
         Registro := Registro + Formatar( '', 5 ); // FILLER - 5 POSI��ES EM BRANCO
         Registro := Registro + aEspecieDocumento; // C�D. DE IDENTIFICA��O DO T�TULO
         Registro := Registro + aAceite; // IDENTIFICA��O DO T�TULO A-ACEITO N-N�O ACEITO
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDocumento ); //DATA DE EMISS�O DO T�TULO
         Registro := Registro + '00'; // C�D. DA INSTRU��O  - 00 - S/ INSTR. N�VEL T�TULO, 01 - PROT. AP�S �DD� DIAS, 02 - N�O PROTESTAR, 03 - DEVOLVER AP�S �DD� DIAS
         Registro := Registro + '00'; // N�MERO DE DIAS P/INSTRU��O
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorMoraJuros*100); // VALOR DE MORA POR DIA DE ATRASO
         Registro := Registro + FormatDateTime( 'ddmmyy', Titulos[NumeroRegistro].DataDesconto ); // DATA DESCONTO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDesconto*100 ); // VALOR DESCONTO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorIOF*100 ); // IOF-SEGUROS
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorAbatimento*100 ); //VALOR ABATIMENTO
         Registro := Registro + Formatar(ASacadoTipoInscricao,2,false,'0'); // IDENTIFICA��O DO TIPO DE INSCRI��O/SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,14,false,'0'); // N� DE INSCRI��O DO SACADO  (CPF/CGC)
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40); // NOME DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,37); // RUA, N�MERO E COMPLEMENTO DO SACADO
         Registro := Registro + Formatar('',3); // FILLER - 3 POSI��ES
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,12); // BAIRRO DO SACADO
//verificar se poe em branco ou bairro???         Registro := Registro + Formatar('',12); // COMPLEMENTO DO N�MERO ATRIBU�DO AO T�TULO PELO CEDENTE - BRANCOS OU COMPLEMENTO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0'); // CEP DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true); // CIDADE DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false); // UF DO SACADO
         if Titulos[NumeroRegistro].Instrucoes.Count>1 then
           Registro := Registro + Formatar(Titulos[NumeroRegistro].Instrucoes.Strings[0],40); //MENSAGEM DO BLOQUETE
         Registro := Registro + Formatar('',3); //FILLER - 3 POSI��ES
         Registro := Registro + Formatar(IntToStr(NumeroRegistro+2),6,false,'0'); // N� SEQ�ENCIAL DO REGISTRO NO ARQUIVO
         Remessa.Add(Registro);
         NumeroRegistro := NumeroRegistro + 1;
      end;

      { GERAR REGISTRO TRAILER DA REMESSA }

      Remessa.Add('9'+ // IDENTIFICA��O DO REGISTRO TRAILLER
                  Formatar('',393,true,' ')+ //FILLER - 393 POSICOES
                  Formatar(IntToStr(NumeroRegistro+2),6,false,'0')); // N�MERO DE SEQU�NCIA DO REGISTRO
   end;

   Result := TRUE;
end;

function TRLBanco479.GerarRemessa(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
begin
   case ACobranca.LayoutArquivo of
//      laCNAB240 : Result := GerarRemessaCNAB240(ACobranca, Remessa);
      laCNAB400 : Result := GerarRemessaCNAB400(ACobranca, Remessa);
   end;
end;

function TRLBanco479.LerRetornoCNAB400(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
var
  ACodigoBanco,
  ANomeCedente,
  EspecieDocAux,
  ATipoInscricao : string;
  ATipoOcorrencia : string;
  NumeroRegistro : integer;
  ATitulo : TRLBTitulo;
begin
  NumeroRegistro := 0;
  ATitulo := TRLBTitulo.Create(nil);
  try
    with ACobranca do
    begin
      Titulos.Clear;

      if Retorno.Count <= 0 then
        raise Exception.Create('O retorno est� vazio. N�o h� dados para processar');

      if Copy(Retorno.Strings[NumeroRegistro],1,19) <> '02RETORNO01COBRANCA' then
        raise Exception.Create(NomeArquivo+' n�o � um arquivo de retorno de cobran�a');

      if length(Retorno[0]) <> 400 then
      begin
        LayoutArquivo := laOutro;
        raise Exception.CreateFmt('Tamanho de registro diferente de 400 bytes. Tamanho = %d bytes',[length(Retorno[0])]);
      end;

      LayoutArquivo := laCNAB400;

      { L� registro HEADER}
      ACodigoBanco := Copy(Retorno.Strings[NumeroRegistro],77,3);
      if ACodigoBanco <> CodigoBanco then
        raise Exception.CreateFmt('Este n�o � um retorno de cobran�a do banco %s - %s',[CodigoBanco,NomeBanco]);

//      ANomeCedente := Trim(Copy(Retorno.Strings[NumeroRegistro],47,30));
      if StrToInt(Copy(Retorno.Strings[NumeroRegistro],99,2)) <= 69 then
        DataArquivo := EncodeDate(StrToInt('20'+
                       Copy(Retorno.Strings[NumeroRegistro],99,2)),
                       StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),
                       StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)))
      else
        DataArquivo := EncodeDate(StrToInt('19'+
                       Copy(Retorno.Strings[NumeroRegistro],99,2)),
                       StrToInt(Copy(Retorno.Strings[NumeroRegistro],97,2)),
                       StrToInt(Copy(Retorno.Strings[NumeroRegistro],95,2)));

      NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],391,4)));

      {L� os registros DETALHE}
      for NumeroRegistro := 1 to (Retorno.Count - 2) do
      begin
        if Copy(Retorno.Strings[NumeroRegistro],1,1) <> '1' then
          Continue;
        {Dados do titulo}
        with ATitulo do
        begin
          {Dados do cedente do t�tulo}
           with Cedente do
           begin
             ATipoInscricao := Copy(Retorno.Strings[NumeroRegistro],2,2);
             if ATipoInscricao = '01' then
               TipoInscricao := tiPessoaFisica
             else if ATipoInscricao = '02' then
               TipoInscricao := tiPessoaJuridica
             else
               TipoInscricao := tiOutro;
              NumeroCPFCGC                := Copy(Retorno.Strings[NumeroRegistro],4,14);
              ContaBancaria.Banco.Codigo  := ACodigoBanco;
              ContaBancaria.CodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],169,5);
//              ContaBancaria.NumeroConta   := Copy(Retorno.Strings[NumeroRegistro],24,5);
//              ContaBancaria.DigitoConta   := Copy(Retorno.Strings[NumeroRegistro],29,1);
//              CodigoCedente               := Cedente.ContaBancaria.NumeroConta;
//              DigitoCodigoCedente         := Cedente.ContaBancaria.DigitoConta;
//              Nome := ANomeCedente;
           end; {with ACedente}

           SeuNumero   := Copy(Retorno.Strings[NumeroRegistro],38,25);
           {Nosso n�mero SEM D�GITO}
           NossoNumero := Copy(Retorno.Strings[NumeroRegistro],63,8);
           Carteira    := Copy(Retorno.Strings[NumeroRegistro],108,1);
           {Tipo de ocorr�ncia}
           ATipoOcorrencia             := Copy(Retorno.Strings[NumeroRegistro],109,2);
           OcorrenciaOriginal          := Copy(Retorno.Strings[NumeroRegistro],109,2); //@w
           DescricaoOcorrenciaOriginal := VerificaOcorrenciaOriginal(OcorrenciaOriginal); //@w
           case StrToInt(ATipoOcorrencia) of
             02: TipoOcorrencia := toRetornoRegistroConfirmado;
             03: TipoOcorrencia := toRetornoRegistroRecusado;
             06: TipoOcorrencia := toRetornoLiquidado;
             08: TipoOcorrencia := toRetornoLiquidado;
             09: TipoOcorrencia := toRetornoBaixado;
             11: TipoOcorrencia := toRetornoTituloEmSer;
             12: TipoOcorrencia := toRetornoAbatimentoConcedido;
             13: TipoOcorrencia := toRetornoAbatimentoCancelado;
             14: TipoOcorrencia := toRetornoVencimentoAlterado;
             16: TipoOcorrencia := toRetornoComandoRecusado;
             17: TipoOcorrencia := toRetornoComandoRecusado;
             19: TipoOcorrencia := toRetornoRecebimentoInstrucaoProtestar;
             20: TipoOcorrencia := toRetornoRecebimentoInstrucaoSustarProtesto;
             23: TipoOcorrencia := toRetornoEncaminhadoACartorio;
             26: TipoOcorrencia := toRetornoDebitoTarifas;
             27: TipoOcorrencia := toRetornoDebitoTarifas;
             28: TipoOcorrencia := toRetornoDebitoTarifas;
             29: TipoOcorrencia := toRetornoDebitoTarifas;
             30: TipoOcorrencia := toRetornoDebitoTarifas;
             32: TipoOcorrencia := toRetornoProtestado;
             33: TipoOcorrencia := toRetornoDebitoTarifas;
             34: TipoOcorrencia := toRetornoDespesasProtesto;
             35: TipoOcorrencia := toRetornoDespesasSustacaoProtesto;
             36: TipoOcorrencia := toRetornoDebitoTarifas;
             37: TipoOcorrencia := toRetornoDebitoTarifas;
             38: TipoOcorrencia := toRetornoDebitoTarifas;
             39: TipoOcorrencia := toRetornoDebitoTarifas;
             40: TipoOcorrencia := toRetornoDebitoTarifas;
             41: TipoOcorrencia := toRetornoDebitoTarifas;
             42: TipoOcorrencia := toRetornoDebitoTarifas;
             43: TipoOcorrencia := toRetornoDebitoTarifas;
             44: TipoOcorrencia := toRetornoDebitoTarifas;
             45: TipoOcorrencia := toRetornoDespesasProtesto;
             46: TipoOcorrencia := toRetornoDespesasSustacaoProtesto;
             48: TipoOcorrencia := toRetornoDebitoTarifas;
             51: TipoOcorrencia := toRetornoDebitoTarifas;
             52: TipoOcorrencia := toRetornoDebitoTarifas;
             53: TipoOcorrencia := toRetornoDebitoTarifas;
             54: TipoOcorrencia := toRetornoDebitoTarifas;
             55: TipoOcorrencia := toRetornoDebitoTarifas;
             56: TipoOcorrencia := toRetornoDebitoTarifas
           else
             TipoOcorrencia := toRetornoOutrasOcorrencias;
           end;

           MotivoRejeicaoComando := Copy(Retorno.Strings[NumeroRegistro],378,8);
           DescricaoMotivoRejeicaoComando:=VerificaMotivoRejeicaoComando(MotivoRejeicaoComando);

           if StrToInt(Copy(Retorno.Strings[NumeroRegistro],115,2)) <= 69 then
             DataOcorrencia := EncodeDate(StrToInt('20'+
                               Copy(Retorno.Strings[NumeroRegistro],115,2)),
                               StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                               StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)))
           else
             DataOcorrencia := EncodeDate(StrToInt('19'+
                               Copy(Retorno.Strings[NumeroRegistro],115,2)),
                               StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                               StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)));

           ValorDocumento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],153,13))/100;

           {Esp�cie do documento}
           if Trim(Copy(Retorno.Strings[NumeroRegistro],174,2)) = '' then
             EspecieDocumento := edOutros
           else
           begin
             EspecieDocAux := Trim( Copy(Retorno.Strings[NumeroRegistro],174,2) );
             if EspecieDocAux = 'DM' then
               EspecieDocumento := edDuplicataMercantil
             else if EspecieDocAux = 'DS' then
               EspecieDocumento := edDuplicataServico
             else if EspecieDocAux = 'NS' then
               EspecieDocumento := edNotaSeguro
             else if EspecieDocAux = 'RE' then
               EspecieDocumento := edMensalidadeEscolar
             else if EspecieDocAux = 'ND' then
               EspecieDocumento := edNotaDebito
             else
               EspecieDocumento := edOutros;
           end;

           ValorDespesaCobranca := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],176,13))/100;
           ValorIOF             := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],215,13))/100;
           ValorDesconto        := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],228,13))/100; //Valor do abatimento/desconto concedido
           ValorMoraJuros       := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],267,13))/100;
//           ValorPago            := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],254,13))/100;

           if Formatar(Copy(Retorno.Strings[NumeroRegistro],147,6),6,false,'0') <> '000000' then
             if StrToInt(Copy(Retorno.Strings[NumeroRegistro],151,2)) <= 69 then
               DataVencimento := EncodeDate(StrToInt('20'+Copy(Retorno.Strings[NumeroRegistro],151,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],149,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],147,2)))
             else
               DataVencimento := EncodeDate(StrToInt('19'+Copy(Retorno.Strings[NumeroRegistro],151,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],149,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],147,2)))
           else
              DataVencimento := 0;

           if Trim(Copy(Retorno.Strings[NumeroRegistro],286,6)) <> '' then
           begin
             if (StrToInt(Copy(Retorno.Strings[NumeroRegistro],290,2)) <= 69) then
               DataCredito := EncodeDate(StrToInt('20'+
                              Copy(Retorno.Strings[NumeroRegistro],290,2)),
                              StrToInt(Copy(Retorno.Strings[NumeroRegistro],288,2)),
                              StrToInt(Copy(Retorno.Strings[NumeroRegistro],286,2)))
             else
               DataCredito := EncodeDate(StrToInt('19'+
                              Copy(Retorno.Strings[NumeroRegistro],290,2)),
                              StrToInt(Copy(Retorno.Strings[NumeroRegistro],288,2)),
                              StrToInt(Copy(Retorno.Strings[NumeroRegistro],286,2)));
           end;
{           else  //alguns arquivos retorno estavam vindo com a data da baixa em branco
             DataCredito := EncodeDate(StrToInt('20'+
                            Copy(Retorno.Strings[NumeroRegistro],115,2)),
                              StrToInt(Copy(Retorno.Strings[NumeroRegistro],113,2)),
                              StrToInt(Copy(Retorno.Strings[NumeroRegistro],111,2)));}


//           Sacado.TipoInscricao := tiOutro;
//           Sacado.Nome := Copy(Retorno.Strings[NumeroRegistro],325,30);
        end; {with ATitulo}

         {Insere o t�tulo}
         Titulos.Add(ATitulo);
      end;
    end;

      ATitulo.Free;
      Result := TRUE
  except
    ATitulo.Free;
    Result := FALSE;
    raise; {Propaga o erro}
  end;
end;

function TRLBanco479.LerRetorno(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
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
      Titulos.Clear;
      if Retorno.Count <= 0 then
        raise Exception.Create('O retorno est� vazio. N�o h� dados para processar');
      case length(Retorno[0]) of
        240: begin
               LayoutArquivo := laCNAB240;
             end;
        400: begin
               LayoutArquivo := laCNAB400;
               Result := LerRetornoCNAB400(ACobranca, Retorno);
             end;
        else
        begin
          LayoutArquivo := laOutro;
          raise Exception.CreateFmt('Tamanho de registro inv�lido: %d',[length(Retorno[0])]);
        end;
      end;
    end;
    ATitulo.Free;
    Result := TRUE
  except
    ATitulo.Free;
    Result := FALSE;
    raise;
  end;
end;


function TRLBanco479.VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String): String;
begin
 if sOcorrenciaOriginal='  ' then begin
    Result:='';
    Exit;
 end;
 case StrToInt(sOcorrenciaOriginal) of
   02: Result:='02-ENTRADA CONFIRMADA' ;
   03: Result:='03-ENTRADA REJEITADA (NOTA 20 - TABELA 1)' ;
   04: Result:='04-ALTERA��O DE DADOS - NOVA ENTRADA' ;
   05: Result:='05-ALTERA��O DE DADOS - BAIXA' ;
   06: Result:='06-LIQUIDA��O NORMAL' ;
   08: Result:='08-LIQUIDA��O EM CART�RIO' ;
   09: Result:='09-BAIXA SIMPLES' ;
   10: Result:='10-BAIXA POR TER SIDO LIQUIDADO' ;
   11: Result:='11-EM SER (S� NO RETORNO MENSAL)' ;
   12: Result:='12-ABATIMENTO CONCEDIDO' ;
   13: Result:='13-ABATIMENTO CANCELADO' ;
   14: Result:='14-VENCIMENTO ALTERADO' ;
   15: Result:='15-BAIXAS REJEITADAS (NOTA 20 - TABELA 4)' ;
   16: Result:='16-INSTRU��ES REJEITADAS (NOTA 20 - TABELA 3)' ;
   17: Result:='17-ALTERA��O DE DADOS REJEITADOS (NOTA 20 - TABELA 2)' ;
   18: Result:='18-COBRAN�A CONTRATUAL - ABATIMENTO E BAIXA BLOQUEADOS(NOTA 20 - TABELA 5)' ;
   19: Result:='19-CONFIRMA RECEBIMENTO DE INSTRU��O DE PROTESTO' ;
   20: Result:='20-CONFIRMA RECEBIMENTO DE INSTRU��O DE SUSTA��O DE PROTESTO /TARIFA' ;
   21: Result:='21-CONFIRMA RECEBIMENTO DE INSTRU��O DE N�O PROTESTAR' ;
   23: Result:='23-PROTESTO ENVIADO A CART�RIO/TARIFA' ;
   24: Result:='24-INSTRU��O DE PROTESTO REJEITADA / SUSTADA / PENDENTE (NOTA 20 - TABELA 7)' ;
   25: Result:='25-ALEGA��ES DO SACADO (NOTA 20 - TABELA 6)' ;
   26: Result:='26-TARIFA DE AVISO DE COBRAN�A' ;
   27: Result:='27-TARIFA DE EXTRATO POSI��O (B40X)' ;
   28: Result:='28-TARIFA DE RELA��O DAS LIQUIDA��ES' ;
   29: Result:='29-TARIFA DE MANUTEN��O DE T�TULOS VENCIDOS' ;
   30: Result:='30-D�BITO MENSAL DE TARIFAS (PARA ENTRADAS E BAIXAS)' ;
   32: Result:='32-BAIXA POR TER SIDO PROTESTADO' ;
   33: Result:='33-CUSTAS DE PROTESTO' ;
   34: Result:='34-CUSTAS DE SUSTA��O' ;
   35: Result:='35-CUSTAS DE CART�RIO DISTRIBUIDOR' ;
   36: Result:='36-CUSTAS DE EDITAL' ;
   37: Result:='37-TARIFA DE EMISS�O DE BLOQUETO/TARIFA DE ENVIO DE DUPLICATA' ;
   38: Result:='38-TARIFA DE INSTRU��O' ;
   39: Result:='39-TARIFA DE OCORR�NCIAS' ;
   40: Result:='40-TARIFA MENSAL DE EMISS�O DE BLOQUETO/TARIFA MENSAL DE ENVIO DE DUPLICATA' ;
   41: Result:='41-D�BITO MENSAL DE TARIFAS - EXTRATO DE POSI��O (B4EP/B4OX)' ;
   42: Result:='42-D�BITO MENSAL DE TARIFAS - OUTRAS INSTRU��ES' ;
   43: Result:='43-D�BITO MENSAL DE TARIFAS - MANUTEN��O DE T�TULOS VENCIDOS' ;
   44: Result:='44-D�BITO MENSAL DE TARIFAS - OUTRAS OCORR�NCIAS' ;
   45: Result:='45-D�BITO MENSAL DE TARIFAS - PROTESTO' ;
   46: Result:='46-D�BITO MENSAL DE TARIFAS - SUSTA��O DE PROTESTO' ;
   47: Result:='47-BAIXA COM TRANSFER�NCIA PARA DESCONTO' ;
   48: Result:='48-CUSTAS DE SUSTA��O JUDICIAL' ;
   51: Result:='51-TARIFA MENSAL REF A ENTRADAS BANCOS CORRESPONDENTES NA CARTEIRA' ;
   52: Result:='52-TARIFA MENSAL BAIXAS NA CARTEIRA' ;
   53: Result:='53-TARIFA MENSAL BAIXAS EM BANCOS CORRESPONDENTES NA CARTEIRA' ;
   54: Result:='54-TARIFA MENSAL  DE LIQUIDA��ES NA CARTEIRA' ;
   55: Result:='55-TARIFA MENSAL DE LIQUIDA��ES EM BANCOS CORRESPONDENTES NA CARTEIRA' ;
   56: Result:='56-CUSTAS DE IRREGULARIDADE' ;
   57: Result:='57-INSTRU��O CANCELADA(NOTA 20 - TABELA 8)' ;
      
 end;
end;

function TRLBanco479.VerificaMotivoRejeicaoComando(sMotivoRejeicaoComando: String): String;
var
 i: Integer;
begin
 Result:='';
 if sMotivoRejeicaoComando=Formatar('',08) then begin
    Result:='';
    Exit;
 end;

 i:=1;
 while i<=08 do begin
  if Copy(sMotivoRejeicaoComando,i,2)<>'  ' then begin
     case StrToInt(Copy(sMotivoRejeicaoComando,i,2)) of
       03: Result:='AG. COBRADORA - N�O FOI POSS�VEL ATRIBUIR A AG�NCIA  PELO CEP OU CEP INV�LIDO' ;
       04: Result:='ESTADO - SIGLA DO ESTADO INV�LIDA' ;
       05: Result:='DATA VENCIMENTO - PRAZO DA OPERA��O MENOR QUE PRAZO M�NIMO OU MAIOR QUE O M�XIMO' ;
       07: Result:='VALOR DO T�TULO - VALOR DO T�TULO MAIOR QUE 10.000.000,00' ;
       08: Result:='NOME DO SACADO - N�O INFORMADO OU DESLOCADO' ;
       09: Result:='AG�NCIA/CONTA - AG�NCIA ENCERRADA' ;
       10: Result:='LOGRADOURO - N�O INFORMADO OU DESLOCADO' ;
       11: Result:='CEP	- CEP N�O NUM�RICO' ;
       12: Result:='SACADOR / AVALISTA - NOME N�O INFORMADO OU DESLOCADO (BANCOS CORRESPONDENTES)' ;
       13: Result:='ESTADO/CEP - CEP INCOMPAT�VEL COM A SIGLA DO ESTADO' ;
       14: Result:='NOSSO N�MERO - NOSSO N�MERO J� REGISTRADO NO CADASTRO DO BANCO OU FORA DA FAIXA' ;
       15: Result:='NOSSO N�MERO - NOSSO N�MERO EM DUPLICIDADE NO MESMO MOVIMENTO' ;
       18: Result:='DATA DE ENTRADA - DATA DE ENTRADA INV�LIDA PARA OPERAR COM ESTA CARTEIRA' ;
       19: Result:='OCORR�NCIA - OCORR�NCIA INV�LIDA' ;
       21: Result:='AG. COBRADORA - CARTEIRA N�O ACEITA DEPOSIT�RIA CORRESPONDENTE/'+
                   'ESTADO DA AG�NCIA DIFERENTE DO ESTADO DO SACADO/'+
                   'AG. COBRADORA N�O CONSTA NO CADASTRO OU  ENCERRANDO' ;
       22: Result:='CARTEIRA - CARTEIRA N�O PERMITIDA (NECESS�RIO CADASTRAR FAIXA LIVRE)' ;
       27: Result:='CGC INAPTO - CGC DO CEDENTE INAPTO' ;
       29: Result:='C�DIGO EMPRESA - CATEGORIA DA CONTA INV�LIDA' ;
       35: Result:='VALOR DO IOF - IOF MAIOR QUE 5%' ;
       36: Result:='QTDADE DE MOEDA - QUANTIDADE DE MOEDA INCOMPAT�VEL COM VALOR DO T�TULO' ;
       37: Result:='CGC/CPF DO SACADO - N�O NUM�RICO OU IGUAL A ZEROS' ;
       42: Result:='NOSSO N�MERO - NOSSO N�MERO FORA DE FAIXA' ;
       52: Result:='AG. COBRADORA - EMPRESA N�O ACEITA BANCO CORRESPONDENTE' ;
       53: Result:='AG. COBRADORA - EMPRESA N�O ACEITA BANCO CORRESPONDENTE  - COBRAN�A MENSAGEM' ;
       54: Result:='DATA DE VENCTO - BANCO CORRESPONDENTE - T�TULO COM VENCIMENTO INFERIOR A 15 DIAS' ;
       55: Result:='DEP/BCO CORRESP - CEP N�O PERTENCE A DEPOSIT�RIA INFORMADA' ;
       56: Result:='DT VENCTO/BCO CORRESP - VENCTO SUPERIOR A 180 DIAS DA DATA DE ENTRADA' ;
       57: Result:='DATA DE VENCTO - CEP S� DEPOSIT�RIA BCO DO BRASIL COM VENCTO INFERIOR A 8 DIAS' ;
       60: Result:='ABATIMENTO - VALOR DO ABATIMENTO INV�LIDO' ;
       61: Result:='JUROS DE MORA - JUROS DE MORA MAIOR QUE O PERMITIDO' ;
       62: Result:='DESCONTO - VALOR DO DESCONTO MAIOR QUE O VALOR DO T�TULO' ;
       63: Result:='IMPORT�NCIA POR DIA DE DESCONTO - N�O PERMITIDO' ;
       64: Result:='EMISS�O DO T�TULO - DATA DE EMISS�O DO T�TULO INV�LIDA (VENDOR)' ;
       65: Result:='TAXA FINANCTO - TAXA INV�LIDA (VENDOR)' ;
       66: Result:='DATA DE VENCTO - INVALIDA/FORA DE PRAZO DE OPERA��O (M�NIMO OU M�XIMO)' ;
       67: Result:='VALOR/QTIDADE - VALOR DO T�TULO/QUANTIDADE DE MOEDA INV�LIDO' ;
       68: Result:='CARTEIRA - CARTEIRA INV�LIDA' ;
       98: Result:='FLASH INV�LIDO - REGISTRO MENSAGEM SEM FLASH CADASTRADO OU FLASH INFORMADO DIFERENTE DO CADASTRADO' ;
       99: Result:='FLASH INV�LIDO - CONTA DE COBRAN�A COM FLASH CADASTRADO E SEM REGISTRO DE MENSAGEM CORRESPONDENTE' ;
    end;
  end;
  i:=i+2;  
 end;
end;


{$ENDIF}

initialization
RegisterClass(TRLBanco479);

{$HINTS ON}
{$WARNINGS ON}

end.
