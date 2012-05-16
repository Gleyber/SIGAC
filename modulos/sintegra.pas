unit sintegra;

interface

uses
  Messages, SysUtils, Controls, StdCtrls, Dialogs, dateUtils, Variants,
  Classes, Funcoes;

type
  TRegistro90 = record
    Reg: string;
    Qtd: integer;
  end;

  TDadosSintegra = record

  end;

  ErroSintegra = class(Exception);
var
  Reg_90: array of TRegistro90;
  CNPJ_emissor, IE_emissor: string;
  lista75: string;


            

  //Fun��es auxiliares
procedure AddRegistro(regt: string);
procedure IniciaSintegra(CNPJEm, IEEm: string);
function Checknumeric(str_in: string): boolean;
function Lista_Itens75:string;
function VerCGC_silent(snrcgc: string): boolean;
function VerCPF_silent(snrcpf: string): boolean;
procedure CheckCNPJ_CPF_IE(var CNPJ, IE: string);

  //Fun�oes Sintegra
function Registro10(CGC_MF, Insc_Est, Nome_Contribuinte, Municipio, UF,
  Fax, Data_Inicial, Data_Final, Cod_Convenio, Cod_Operacao,
  Cod_Finalidade: ShortString): ShortString;

function Registro11(Logradouro, Nro, Complemento, Bairro, CEP,
  Nome_Contato, Telefone: ShortString): ShortString;

function Registro50(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
  Nro, CFOP, Emitente, Valor_Total, Base_ICMS, Valor_ICMS,
  Isenta, Outras,
  Aliquota, Situacao: ShortString): ShortString;

function Registro51(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Serie,
  Nro, CFOP, Valor_Total, Valor_IPI, Isenta_IPI, Outras_IPI,
  Brancos, Situacao: ShortString): ShortString;

function Registro53(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
  Nro, CFOP, Emitente, Base_ICMS, ICMS_Retido, Despesas_Acessorias,
  Situacao: ShortString): ShortString;

function Registro54(CNPJ, Modelo, Serie, Nro, CFOP, CST, Nro_Item,
  Cod_Produto_Servico, Quantidade, Valor_Produto, Valor_Desconto,
  Base_ICMS, Base_ICMS_S_Trib, Valor_IPI,
  Aliquota_ICMS: ShortString): ShortString;

  function Registro55(CNPJ, Insc_Est, Data_GNRE, UF_Substituto, UF_Favorecida, Banco_GNRE,
  Agencia_GNRE, Nro_GNRE, Valor_GNRE, Data_Vencimento_ICMS,
  Mes_Ano_Ref,
  Nro_Convenio: ShortString): ShortString;

function Registro60Mestre(Data_Emissao, Nro_Serie_Eqp, Nro_Ordem_Eqp, Modelo_Doc,
  Nro_Contador_Inicio, Nro_Contador_Fim, Nro_Contador_Z,
  Contador_Reinicio, Valor_Venda_Bruta,
  Valor_Total_Geral: ShortString): ShortString;

function Registro60Analitico(Data_Emissao, Nro_Serie_Eqp, S_Trib_Aliquota,
  Valor_TParcial: ShortString): ShortString;

function Registro60ResumoDiario(Data_Emissao, Nro_Serie_Eqp, Cod_Produto, Quantidade,
  Valor_Produto, Base_ICMS, S_Trib_Aliquota,
  Valor_ICMS: ShortString): ShortString;

function Registro60Item(Data_Emissao, Nro_Serie_Eqp, Modelo_Doc, COO,
  Nro_Item, Cod_Produto,
  Quantidade, Valor_Produto, Base_ICMS,
  S_Trib_Aliquota, Valor_ICMS: ShortString): ShortString;

function Registro60ResumoMensal(Mes_Ano_Emissao, Cod_Produto_Servico, Quantidade,
  Valor_Produto, Base_ICMS,
  S_Trib_Aliquota: ShortString): ShortString;

function Registro61M(Data_Emissao, Modelo, Serie, SubSerie,
  Nro_Ordem_Inicio, Nro_Ordem_Fim, Valor_Total, Base_ICMS, Valor_ICMS,
  Isenta, Outras, Aliquota: ShortString): ShortString;

function Registro61R(Mes_ano_Emissao, Codigo_produto, Quantidade, VrBrutoProd,
  Base_ICMS, Aliquota: ShortString): ShortString;


function Registro70(const CNPJ, Insc_Est, Data_Emissao_Utilizacao, UF, Modelo, Serie, SubSerie,
  Nro, CFOP, Valor_Total, Base_ICMS, Valor_ICMS, Isenta, Outras,
  CIF_FOB, Situacao: ShortString): ShortString;

function Registro71(const CNPJ, Insc_Est_Tomador, Data_Emissao_Conhecimento, UF_Tomador,
  Modelo_Conhecimento, Serie, SubSerie, Nro_Conhecimento,
  UF_Remetente_Destinatario, CNPJ_Remetente_Destinatario,
  Insc_Est_Remetente_Destinatario, Data_Emissao_NF,
  Modelo_NF, Serie_NF,
  Nro_NF, Valor_Total_NF, Brancos: ShortString): ShortString;

  function Registro74(Data_Inventario, Cod_Produto, Quantidade, Valor_Produto,
  Cod_Posse, CNPJ_Possuidor, Insc_Est_Possuidor,
  UF_Possuidor: ShortString): ShortString;

  function Registro75(Data_Inicial, Data_Final, Cod_Produto_Servico, Cod_NCM, Descricao,
  UND_Medida, Aliquota_IPI, Aliquota_ICMS, Reducao_Base_ICMS,
  Base_ICMS: ShortString): ShortString;

function Registro90: TStrings;

implementation

procedure IniciaSintegra(CNPJEm, IEEm: string);
begin
  CNPJ_emissor := formatnumeric(CNPJEm);
  IE_emissor :=strcomplete(formatnumeric(IEEm), ' ', 14,1);
  SetLength(Reg_90, 0);
  lista75:='';
end;

procedure AddRegistro(regt: string);
var
  Count: integer;

  function recordexists(rec: string): integer;
  var
    Ct: integer;
  begin
    Result := -1; //Retorna -1, quando n�o houver o registro
    for Ct := 0 to Length(Reg_90) - 1 do
      if (Reg_90[ct].Reg = rec) then
      begin
        Result := ct;
        break;
      end;
  end;
  //
begin
  Count := recordexists(regt);
  if Count <> -1 then
    Inc(Reg_90[Count].Qtd)
  else
  begin
    Count := Length(reg_90);
    SetLength(Reg_90, Count + 1);
    Reg_90[Count].Qtd := 1;
    Reg_90[Count].Reg := regt;
  end;
end;



function checknumeric(str_in: string): boolean;
var
  Count: integer;
begin
  Result := False;
  for Count := 1 to length(str_in) do
    if not (str_in[Count] in ['0'..'9', ',', '.']) then
      Result := False
  else
    Result := True;
end;

function lista_itens75:string;
begin
  Result:=lista75;
end;

procedure Additem75(cod:string);
begin
  if (Length(cod)>0) and (cod<> ' ') then
  begin
    if Length(lista75)=0 then
      lista75:=QuotedStr(cod)
    else
      lista75:=lista75+','+QuotedStr(cod);
  end;
end;

function VerCPF_silent(snrcpf: string): boolean;
var
  WCPFCALC: string;
  WSOMACPF: integer;
  WSX1: shortint;
  WCPFDIGT: integer;
  digit: string;
  s: string;
begin
  s := snrcpf;
  Result := False;
  digit := Copy(snrcpf, 14, 1);
  while Pos('.', s) > 0 do
    s[Pos('.', s)] := ' ';
  while Pos('-', s) > 0 do
    s[Pos('-', s)] := ' ';
  s := TRIM(s);
  if s = '' then
    Result := True
  else if length(s) < 11 then
  begin
    Result := False;
  end
  else
  begin
    snrcpf := Copy(snrcpf, 1, 3) + Copy(snrcpf, 5, 3) + Copy(snrcpf,
      9, 3) + Copy(snrcpf, 13, 2);
    WCPFCALC := Copy(snrcpf, 1, 9);
    WSOMACPF := 0;
    for WSX1 := 1 to 9 do
      WSOMACPF := WSOMACPF + StrToInt(Copy(WCPFCALC, WSX1, 1)) * (11 - WSX1);
    WCPFDIGT := 11 - WSOMACPF mod 11;
    if WCPFDIGT in [10, 11] then
    begin
      WCPFCALC := WCPFCALC + '0';
    end
    else
    begin
      WCPFCALC := WCPFCALC + IntToStr(WCPFDIGT);
    end;
    WSOMACPF := 0;
    for WSX1 := 1 to 10 do
      WSOMACPF := WSOMACPF + StrToInt(Copy(WCPFCALC, WSX1, 1)) * (12 - WSX1);
    WCPFDIGT := 11 - WSOMACPF mod 11;
    if WCPFDIGT in [10, 11] then
    begin
      WCPFCALC := WCPFCALC + '0';
    end
    else
    begin
      WCPFCALC := WCPFCALC + IntToStr(WCPFDIGT);
    end;
    if snrcpf <> WCPFCALC then
    begin
      Result := False;
    end
    else
      Result := True;
  end;
end;

function VerCGC_silent(snrcgc: string): boolean;
var
  WCGCCALC: string;
  WSOMACGC: integer;
  WSX1: shortint;
  WCGCDIGT: integer;
  s: string;
begin

  try

  Result := False;
  s := snrcgc;
  while Pos('.', s) > 0 do
    s[Pos('.', s)] := ' ';
  while Pos('/', s) > 0 do
    s[Pos('/', s)] := ' ';
  while Pos('-', s) > 0 do
    s[Pos('-', s)] := ' ';
  s := TRIM(s);

  if s = '' then
    Result := True
  else if length(s) < 18 then
  begin
    Result := False;
  end
  else
  begin
    snrcgc := Copy(snrcgc, 1, 2) + Copy(snrcgc, 4, 3) + Copy(snrcgc,
      8, 3) + Copy(snrcgc, 12, 4) + Copy(snrcgc, 17, 2);
    WCGCCALC := Copy(snrcgc, 1, 12);
    WSOMACGC := 0;
    for WSX1 := 1 to 4 do
      WSOMACGC := WSOMACGC + StrToInt(Copy(WCGCCALC, WSX1, 1)) * (6 - WSX1);
    for WSX1 := 1 to 8 do
      WSOMACGC := WSOMACGC + StrToInt(Copy(WCGCCALC, WSX1 + 4, 1)) * (10 - WSX1);
    WCGCDIGT := 11 - WSOMACGC mod 11;
    if WCGCDIGT in [10, 11] then
    begin
      WCGCCALC := WCGCCALC + '0';
    end
    else
    begin
      WCGCCALC := WCGCCALC + IntToStr(WCGCDIGT);
    end;
    WSOMACGC := 0;
    for WSX1 := 1 to 5 do
      WSOMACGC := WSOMACGC + StrToInt(Copy(WCGCCALC, WSX1, 1)) * (7 - WSX1);
    for WSX1 := 1 to 8 do
      WSOMACGC := WSOMACGC + StrToInt(Copy(WCGCCALC, WSX1 + 5, 1)) * (10 - WSX1);
    WCGCDIGT := 11 - WSOMACGC mod 11;
    if WCGCDIGT in [10, 11] then
    begin
      WCGCCALC := WCGCCALC + '0';
    end
    else
    begin
      WCGCCALC := WCGCCALC + IntToStr(WCGCDIGT);
    end;
    if snrcgc <> WCGCCALC then
    begin
      Result := False;
    end
    else
      //VerCGC := True;
      Result := True;
  end;

  except
  showmessage('N�o foi poss�vel validar: ' + snrcgc);

  end;

end;

procedure CheckCNPJ_CPF_IE(var CNPJ, IE: string);
var
  _CNPJ, _IE: string;
begin
  try
    if Length(Formatnumeric(CNPJ))=14 then
    begin

      if not VerCGC_silent(CNPJ) then
      begin
        _CNPJ:=CNPJ;
        _IE:=IE;
      end
      else
        _CNPJ:='0';
    end
    else
    begin
      if VerCPF_silent(CNPJ) then
        _CNPJ:=CNPJ
      else
        _CNPJ:='0';

      _IE:='ISENTO';
    end;

    if (_IE<> 'ISENTO') and (Length(Formatnumeric(_CNPJ)) < 14) then
      _IE:='ISENTO';
      
  finally
    CNPJ:= _CNPJ;
    IE:= _IE;
  end;
end;

//Fun��es Sintegra

function Registro10(CGC_MF, Insc_Est, Nome_Contribuinte, Municipio, UF,
  Fax, Data_Inicial, Data_Final, Cod_Convenio, Cod_Operacao,
  Cod_Finalidade: ShortString): ShortString;
begin
  Result := '10';

  //CGC - remove os caracteres '.' e '/' do CNPJ

  Result := Result + formatnumeric(CGC_MF);

  //IE - remove os caracteres da IE (formatnumeric())
  //Completa o tamanho da IE, 14 digitos
  Result := Result + strcomplete(formatnumeric(Insc_Est), ' ', 14,1);

  //Nome do contribuinte (35 caracteres)
  if Length(Nome_Contribuinte) > 35 then
    Result := Result + Copy(Nome_Contribuinte, 1, 35)
  else
    Result := Result + strcomplete(Nome_Contribuinte, ' ', 35,1);

  //Municipio (30 caracteres)
  if Length(Municipio) > 30 then
    Result := Result + Copy(Municipio, 1, 30)
  else
    Result := Result + strcomplete(Municipio, ' ', 30,1);

  //UF
  if length(UF) <> 2 then
    raise ErroSintegra.Create('Erro registro10' + #13 +
      'O campo UF da empresa emissora est� incorreto.')
  else
    Result := Result + UF;

  //Fax - Remove caracteres da string
  if Length(formatnumeric(Fax)) > 0 then
    Result := Result + FormatFloat('0000000000', StrToFloat(formatnumeric(Fax)))
  else
    Result := Result + FormatFloat('0000000000', 0);
  //Datas
  Result := Result + FormatDateTime('yyyymmdd', StrToDate(Data_Inicial));
  Result := Result + FormatDateTime('yyyymmdd', StrToDate(Data_Final));

  //C�d. Identifica��o Conv�nio.
  {-----------------------------------------------------------------------------------------------
  C�digo     Descri��o do c�digo de identifica��o da estrutura do arquivo
  ------------------------------------------------------------------------------------------------
  1	        Estrutura conforme Conv�nio ICMS 57/95 na vers�o do Conv�nio ICMS 31/99
  2	        Estrutura conforme Conv�nio ICMS 57/95 na vers�o do Conv�nio ICMS 142/02
  3             Estrutura conforme Conv�nio ICMS 57/95 na vers�o do Conv�nio ICMS 76/03
  ------------------------------------------------------------------------------------------------}
  if Length(Cod_Convenio) <> 1 then
    raise ErroSintegra.Create('Erro registro10' + #13 +
      'C�digo de Identifica��o do Conv�nio.')
  else
    Result := Result + Cod_Convenio;

  //C�d. Identifica��o Natureza das Opera��es
  {-----------------------------------------------------------------------------------------------
  C�digo	Descri��o do c�digo da natureza das opera��es
  ------------------------------------------------------------------------------------------------
  1	        Interestaduais somente opera��es sujeitas ao regime de Substitui��o Tribut�ria
  2	        Interestaduais - opera��es com ou sem Substitui��o Tribut�ria
  3	        Totalidade das opera��es do informante
  ------------------------------------------------------------------------------------------------}
  if Length(Cod_Operacao) <> 1 then
    raise ErroSintegra.Create('Erro registro10' + #13 +
      'C�digo de Identifica��o da Natureza das Opera��es.')
  else
    Result := Result + Cod_Operacao;

  //C�d. Finalidade do arquivo
  {-----------------------------------------------------------------------------------------------
  C�digo	Descri��o da finalidade
  ------------------------------------------------------------------------------------------------
  1.............Normal
  2.............Retifica��o total de arquivo: substitui��o total de informa��es prestadas pelo contribuinte referentes a este per�odo
  3.............Retifica��o aditiva de arquivo: acr�scimo de informa��o n�o inclu�da em arquivos j� apresentados
  5.............Desfazimento: arquivo de informa��o referente a opera��es/presta��es n�o efetivadas .
                Neste caso, o arquivo dever� conter, al�m dos registros tipo 10 e tipo 90, apenas os registros
                Referentes as opera��es/presta��es n�o efetivadas
  ------------------------------------------------------------------------------------------------}
  if Length(Cod_Finalidade) <> 1 then
    raise ErroSintegra.Create('Erro registro10' + #13 +
      'C�digo da finalidade do arquivo.')
  else
    Result := Result + Cod_Finalidade;

  addRegistro('10');

  //Fim do Registro 10
end;

function Registro11(Logradouro, Nro, Complemento, Bairro, CEP,
  Nome_Contato, Telefone: ShortString): ShortString;
begin
  Result := '11';

  //Logradouro (34 caracteres)
  if Length(Logradouro) > 34 then
    Result := Result + Copy(Logradouro, 1, 34)
  else
    Result := Result + strcomplete(Logradouro, ' ', 34,1);

  //Numero
  if Length(Nro) > 5 then
    //Se for maoir que 5 d�gitos.
    raise ErroSintegra.Create('Erro registro11' + #13 + 'N�mero do endere�o.' + #13 +
      'Este deve ter no m�ximo 5 caracteres.')
  else
  begin
    //Verifica integridade do n�mero
    if Checknumeric(Nro) then
      Result := Result + FormatFloat('00000', StrToFloat(Nro))
    else
      raise ErroSintegra.Create('Erro registro11' + #13 +
        'O n�mero de endere�o deve ter apenas caracteres num�ricos');
  end;

  //Complemento (22 caracteres)
  if Length(Complemento) > 22 then
    Result := Result + Copy(Complemento, 1, 22)
  else
    Result := Result + strcomplete(Complemento, ' ', 22,1);

  //Bairro 15 caracteres
  if Length(Bairro) > 15 then
    Result := Result + Copy(Bairro, 1, 15)
  else
    Result := Result + strcomplete(Bairro, ' ', 15,1);

  //CEP - Remove caracteres n�o num�ricos
  if Length(formatnumeric(CEP)) <> 8 then
    raise ErroSintegra.Create('Erro registro11' + #13 +
      'O CEP do emissor deve ter 8 caracteres num�ricos.')
  else
    Result := Result + FormatFloat('00000000', StrToFloat(formatnumeric(CEP)));

  //Nome contato (28 caracteres)
  if Length(Nome_Contato) > 28 then
    Result := Result + Copy(Nome_Contato, 1, 28)
  else
    Result := Result + strcomplete(Nome_Contato, ' ', 28,1);

  //Telefone - Remove os caracteres n�o num�ricos (12 digitos)
  if Length(formatnumeric(Telefone)) > 12 then
    raise ErroSintegra.Create('Erro registro11' + #13 +
      'O telefone do emissor deve ter no m�ximo 12 d�gitos num�ricos.')
  else
    Result := Result + FormatFloat('000000000000', StrToFloat(formatnumeric(Telefone)));

  addRegistro('11');
  //Fim do registro 11
end;

function Registro50(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
  Nro, CFOP, Emitente, Valor_Total, Base_ICMS, Valor_ICMS,
  Isenta, Outras,
  Aliquota, Situacao: ShortString): ShortString;

  var
  cnpj1,ie:string;

begin
//showmessage(cfop);
  Result := '50';
//  Situacao :='1';
  cnpj1:= CNPJ;
  ie:= Insc_Est;

  CheckCNPJ_CPF_IE(CNPJ1, ie);

  //CNPJ do remetente nas entradas e do destinat�rio nas sa�das	- 14 d�gitos num�ricos
  if Length(CNPJ) = 0 then
    Result := Result + FormatFloat('00000000000000', 0)
  else
    Result := Result + FormatFloat('00000000000000', StrToFloat(formatnumeric(CNPJ)));

  //Inscri��o Estadual do remetente nas entradas e do destinat�rio nas sa�das - 14 d�gitos alfanum�ricos
  if UpperCase(Insc_Est) = 'ISENTO' then
    Result := Result + strcomplete('ISENTO', ' ', 14,1)
  else
  begin
    if Length(formatnumeric(Insc_Est)) = 0 then
      Result := Result + strcomplete('ISENTO', ' ', 14,1)
    else
      Result := Result + Strcomplete(Formatnumeric(Insc_Est), ' ', 14,1);
  end;

  //Data de emiss�o na sa�da ou de recebimento na entrada - 8 d�gitos num�ricos
  Result := Result + FormatDateTime('yyyymmdd', StrToDate(Data_Emissao_Recebimento));

  //Sigla da unidade da Federa��o do remetente nas entradas e do destinat�rio nas sa�das - 2 d�gitos alfanum�ricos
  if length(UF) <> 2 then
  begin
    if Length(UF)=0 then
      Result:=Result+'  '
    else
      raise ErroSintegra.Create('Erro registro50:' + #13 +
        'O campo UF est� incorreto.');
  end
  else
    Result := Result + UF;

  //C�digo do modelo da nota fiscal - 2 d�gitos num�ricos
  {-----------------------------------------------------------------------------
  C�DIGO	MODELO
  ------------------------------------------------------------------------------
  24	        Autoriza��o de Carregamento e Transporte, modelo 24
  14	        Bilhete de Passagem Aquavi�rio, modelo 14
  15	        Bilhete de Passagem e Nota de Bagagem, modelo 15
  16	        Bilhete de Passagem Ferrovi�rio, modelo 16
  13	        Bilhete de Passagem Rodovi�rio, modelo 13
  10	        Conhecimento A�reo, modelo 10
  11	        Conhecimento de Transporte Ferrovi�rio de Cargas, modelo 11
  09	        Conhecimento de Transporte Aquavi�rio de Cargas, modelo 9
  08	        Conhecimento de Transporte Rodovi�rio de Cargas, modelo 8
  17	        Despacho de Transporte, modelo 17
  25	        Manifesto de Carga, modelo 25
  01	        Nota Fiscal, modelo 1
  06	        Nota Fiscal/Conta de Energia El�trica, modelo 6
  03	        Nota Fiscal de Entrada, modelo 3
  21	        Nota Fiscal de Servi�o de Comunica��o, modelo 21
  04	        Nota Fiscal de Produtor, modelo 4
  22	        Nota Fiscal de Servi�o de Telecomunica��es, modelo 22
  07	        Nota Fiscal de Servi�o de Transporte, modelo 7
  02	        Nota Fiscal de Venda a Consumidor, modelo 02
  20	        Ordem de Coleta de Carga, modelo 20
  18	        Resumo Movimento Di�rio, modelo 18
  ------------------------------------------------------------------------------}
  if modelo ='' then modelo :='1';
  if (Length(Modelo) > 2) or (Length(Modelo) = 0) or (Length(formatnumeric(Modelo)) = 0) then
    raise ErroSintegra.Create('Erro registro50: O campo modelo NF est� incorreto.')
  else
    Result := Result + FormatFloat('00', StrToFloat(formatnumeric(Modelo)));

  //S�rie da nota fiscal - 3 d�gitos alfanum�ricos
  if Length(Serie) = 0 then
     Result := Result + strcomplete(Serie, ' ', 3,1)
    //raise ErroSintegra.Create('Erro registro50:' + #13 + 'O campo serie NF est� nulo.')
  else
    Result := Result + strcomplete(Serie, ' ', 3,1);

  //N�mero da nota fiscal - 6 d�gitos num�ricos
  if Checknumeric(Nro) then
    Result := Result + FormatFloat('000000', StrToFloat(Nro))
  else
    raise ErroSintegra.Create('Erro registro50:' + #13 +
      'O n�mero da NF deve ter apenas caracteres num�ricos');

     // showmessage(formatnumeric(CFOP)) ;

  //C�digo Fiscal de Opera��o e Presta��o - 4 d�gitos num�ricos
  if (Length(formatnumeric(CFOP)) = 0) or  (Length(formatnumeric(CFOP)) > 4)then
    raise ErroSintegra.Create('Erro registro50:' + #13 + 'CFOP incorreto.')
  else
    Result := Result + FormatFloat('0000', StrToFloat(formatnumeric(CFOP)));

  //Emitente da Nota Fiscal (P-pr�prio/T-terceiros) - 1 d�gito alfanum�rico
  if Length(Emitente) = 0 then
    raise ErroSintegra.Create('Erro registro50:' + #13 + 'Emitente nulo.')
  else
  begin
    if (UpperCase(Emitente) = 'P') or (UpperCase(Emitente) = 'T') then
      Result := Result + Emitente
    else
      raise ErroSintegra.Create('Erro registro50: O campo emitente deve ser P-pr�prio/T-terceiros.');
  end;

  //Valor total da nota fiscal (com 2 decimais) - 13 d�gitos num�ricos
  if Length(Valor_Total) = 0 then
    Result := Result + FormatFloat('0000000000000', 0)
  else
    Result := Result + FormatFloat('0000000000000', StrToFloat(Valor_Total) * 100);

  //Base de C�lculo do ICMS (com 2 decimais) - 13 d�gitos num�ricos
  if Length(Base_ICMS) = 0 then
    Result := Result + FormatFloat('0000000000000', 0)
  else
    Result := Result + FormatFloat('0000000000000', StrToFloat(Base_ICMS) * 100);

  //Montante do imposto (com 2 decimais) - 13 d�gitos num�ricos
  if Length(Valor_ICMS) = 0 then
    Result := Result + FormatFloat('0000000000000', 0)
  else
    Result := Result + FormatFloat('0000000000000', StrToFloat(Valor_ICMS) * 100);

  //Valor amparado por isen��o ou n�o incid�ncia (com 2 decimais) - 13 d�gitos num�ricos
  if Length(Isenta) = 0 then
    Result := Result + FormatFloat('0000000000000', 0)
  else
    Result := Result + FormatFloat('0000000000000', StrToFloat(Isenta) * 100);

  //Valor que n�o confira d�bito ou cr�dito do ICMS (com 2 decimais) - 13 d�gitos num�ricos
  if Length(Outras) = 0 then
    Result := Result + FormatFloat('0000000000000', 0)
  else
    Result := Result + FormatFloat('0000000000000', StrToFloat(Outras) * 100);

  //Al�quota do ICMS (com 2 decimais) - 4 d�gitos num�ricos
  if Length(Aliquota) = 0 then
    Result := Result + FormatFloat('0000', 0)
  else
    Result := Result + FormatFloat('0000', StrToFloat(Aliquota) * 100);

  //Situa��o da Nota Fiscal - 1 d�gito alfanum�rico
  {-----------------------------------------------------------------------------
        Situa��o	                        Conte�do do Campo
  ------------------------------------------------------------------------------
        Documento Fiscal Normal	                                N
        Documento Fiscal Cancelado	                        S
        Lan�amento Extempor�neo de Documento Fiscal Normal	E
        Lan�amento Extempor�neo de Documento Fiscal Cancelado	X
  ------------------------------------------------------------------------------}
  if Length(Situacao) <> 1 then
    raise ErroSintegra.Create('Erro registro50' + #13 +
                              'Situa��o da NF incorreto.')
  else
    Result := Result + Situacao;

  AddRegistro('50');
end;

function Registro51(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Serie,
  Nro, CFOP, Valor_Total, Valor_IPI, Isenta_IPI, Outras_IPI,
  Brancos, Situacao: ShortString): ShortString;
begin
  Result := '51';

  if Length(CNPJ) = 0 then
    Result := Result + FormatFloat('00000000000000', 0)
  else
    Result := Result + FormatFloat('00000000000000', StrToFloat(formatnumeric(CNPJ)));

  //Inscri��o Estadual do remetente nas entradas e do destinat�rio nas sa�das - 14 d�gitos alfanum�ricos
  if UpperCase(Insc_Est) = 'ISENTO' then
    Result := Result + strcomplete('ISENTO', ' ', 14,1)
  else
  begin
    if Length(formatnumeric(Insc_Est)) = 0 then
      Result := Result + strcomplete('ISENTO', ' ', 14,1)
    else
      Result := Result + Strcomplete(Formatnumeric(Insc_Est), ' ', 14,1);
  end;

  Result := Result + FormatDateTime('yyyymmdd', StrToDate(Data_Emissao_Recebimento));

  //Sigla da unidade da Federa��o do remetente nas entradas e do destinat�rio nas sa�das - 2 d�gitos alfanum�ricos
  if length(UF) <> 2 then
  begin
    if Length(UF)=0 then
      Result:=Result+'  '
    else
      raise ErroSintegra.Create('Erro registro51:' + #13 +
                                'O campo UF est� incorreto.');
  end
  else
    Result := Result + UF;

   //S�rie da nota fiscal - 3 d�gitos alfanum�ricos
  if Length(Serie) = 0 then
     Result := Result + strcomplete(' ', ' ', 3,1)
  else
    Result := Result + strcomplete(Serie, ' ', 3,1);

  //N�mero da nota fiscal - 6 d�gitos num�ricos
  if Checknumeric(Nro) then
    Result := Result + FormatFloat('000000', StrToFloat(Nro))
  else
    raise ErroSintegra.Create('Erro registro50:' + #13 +
                              'O n�mero da NF deve ter apenas caracteres num�ricos');


  if (Length(formatnumeric(CFOP)) = 0) or  (Length(formatnumeric(CFOP)) > 4)then
    raise ErroSintegra.Create('Erro registro50:' + #13 + 'CFOP incorreto.')
  else
    Result := Result + FormatFloat('0000', StrToFloat(formatnumeric(CFOP)));


  //Valor total da nota fiscal (com 2 decimais) - 13 d�gitos num�ricos
  if Length(Valor_Total) = 0 then
    Result := Result + FormatFloat('0000000000000', 0)
  else
    Result := Result + FormatFloat('0000000000000', StrToFloat(Valor_Total) * 100);

  //Valor IPI - 13 d�g. numericos
  if (Length(Valor_IPI) > 0) and (Length(Valor_IPI) <= 13) then
  begin
    if not checknumeric(Valor_IPI) then
      raise ErroSintegra.Create(
        'Erro registro 51: Valor do IPI deve ter somente caracteres num�ricos')
    else
      Result := Result + FormatFloat('0000000000000', StrToFloat(Valor_IPI) * 100);
  end
  else
    raise ErroSintegra.Create('Erro registro 51: Valor do IPI inv�lido');

  //Valor amparado por isen��o ou n�o incid�ncia (com 2 decimais) - 13 d�gitos num�ricos
  if Length(Isenta_IPI) = 0 then
    Result := Result + FormatFloat('0000000000000', 0)
  else
    Result := Result + FormatFloat('0000000000000', StrToFloat(Isenta_IPI) * 100);

  //outras
    Result := Result + strcomplete('0', '0', 13,1);

  //brancos
    Result := Result + strcomplete(' ', ' ', 20,1);

  if Length(Situacao) <> 1 then
    raise ErroSintegra.Create('Erro registro50' + #13 +
                              'Situa��o da NF incorreto.')
  else
    Result := Result + Situacao;

  AddRegistro('51');

end;


function Registro53(CNPJ, Insc_Est, Data_Emissao_Recebimento, UF, Modelo, Serie,
  Nro, CFOP, Emitente, Base_ICMS, ICMS_Retido, Despesas_Acessorias,
  Situacao: ShortString): ShortString;
var
  CNPJ1, IE:String;
begin
  result:='53';

  CNPJ1:= CNPJ;
  IE:= Insc_Est;

  CheckCNPJ_CPF_IE(CNPJ1, IE);

  {if Length(Formatnumeric(CNPJ))=14 then
  begin
    if VerCGC_silent(CNPJ) then
    begin
      _CNPJ:=CNPJ;
      _IE:=Insc_Est;
    end
    else
      _CNPJ:='0';
  end
  else
  begin
    if VerCPF_silent(Formatnumeric(CNPJ)) then
      _CNPJ:=CNPJ
    else
      _CNPJ:='0';

    _IE:='ISENTO';
  end;

  if (_IE<> 'ISENTO') and (Length(Formatnumeric(_CNPJ)) < 14) then
    _IE:='ISENTO';}


  //Substitui��o Tribut�ria

  {
  exceto para as mercadorias/produtos que ser refiram aos seguintes
  C�digos Fiscais de Opera��es ou Presta��es - CFOP:
  para fatos geradores que ocorrerem a partir de 01/01/03:
  1.406,  2.406,  1.407,  2.407,  1.551,  2.551,  3.551,  1.552,  2.552,  1.553,
  2.553,  3.553,  1.554,  2.554,  1.555,  2.555,  1.556,  2.556,  3.556,  1.557,
  2.557,  5.551,  6.551,  7.551,  5.552,  6.552,  5.553,  6.553,  7.553,  5.554,
  6.554,  5.555,  6.555,  5.556,  6.556,  7.556,  5.557  e  6.557;}

  //CNPJ do remetente nas entradas e do destinat�rio nas sa�das	- 14 d�gitos num�ricos
  if Length(CNPJ) = 0 then
    Result := Result + FormatFloat('00000000000000', 0)
  else
  begin
    if Length(Formatnumeric(CNPJ)) > 14 then
      raise ErroSintegra.Create('Erro registro53:Campo CNPJ est� incorreto.')
    else
      Result := Result + FormatFloat('00000000000000', StrToFloat(formatnumeric(CNPJ)));
  end;

  //Inscri��o Estadual do remetente nas entradas e do destinat�rio nas sa�das - 14 d�gitos alfanum�ricos
  if UpperCase(Insc_Est) = 'ISENTO' then
    Result := Result + strcomplete('ISENTO', ' ', 14,1)
  else
  begin
    if Length(formatnumeric(Insc_Est)) = 0 then
      Result := Result + strcomplete('ISENTO', ' ', 14,1)
    else
      Result := Result + Strcomplete(Formatnumeric(Insc_Est), ' ', 14,1);
  end;

  //Data de emiss�o na sa�da ou de recebimento na entrada - 8 d�gitos num�ricos
  Result := Result + FormatDateTime('yyyymmdd', StrToDate(Data_Emissao_Recebimento));

  //Sigla da unidade da Federa��o do remetente nas entradas e do destinat�rio nas sa�das - 2 d�gitos alfanum�ricos
  if length(UF) <> 2 then
  begin
    if Length(UF)=0 then
      Result:=Result+'  '
    else
      raise ErroSintegra.Create('Erro registro53:' + #13 +
        'O campo UF da empresa emaissora est� incorreto.');
  end
  else
    Result := Result + UF;

  //C�digo do modelo da nota fiscal - 2 d�gitos num�ricos
  {-----------------------------------------------------------------------------
  C�DIGO	MODELO
  ------------------------------------------------------------------------------
  24	        Autoriza��o de Carregamento e Transporte, modelo 24
  14	        Bilhete de Passagem Aquavi�rio, modelo 14
  15	        Bilhete de Passagem e Nota de Bagagem, modelo 15
  16	        Bilhete de Passagem Ferrovi�rio, modelo 16
  13	        Bilhete de Passagem Rodovi�rio, modelo 13
  10	        Conhecimento A�reo, modelo 10
  11	        Conhecimento de Transporte Ferrovi�rio de Cargas, modelo 11
  09	        Conhecimento de Transporte Aquavi�rio de Cargas, modelo 9
  08	        Conhecimento de Transporte Rodovi�rio de Cargas, modelo 8
  17	        Despacho de Transporte, modelo 17
  25	        Manifesto de Carga, modelo 25
  01	        Nota Fiscal, modelo 1
  06	        Nota Fiscal/Conta de Energia El�trica, modelo 6
  03	        Nota Fiscal de Entrada, modelo 3
  21	        Nota Fiscal de Servi�o de Comunica��o, modelo 21
  04	        Nota Fiscal de Produtor, modelo 4
  22	        Nota Fiscal de Servi�o de Telecomunica��es, modelo 22
  07	        Nota Fiscal de Servi�o de Transporte, modelo 7
  02	        Nota Fiscal de Venda a Consumidor, modelo 02
  20	        Ordem de Coleta de Carga, modelo 20
  18	        Resumo Movimento Di�rio, modelo 18
  ------------------------------------------------------------------------------}

  if (Length(Modelo) > 2) or (Length(Modelo) = 0) or (Length(formatnumeric(Modelo)) = 0) then
    raise ErroSintegra.Create('Erro registro53:' + #13 +
      'O campo modelo NF est� incorreto.')
  else
    Result := Result + FormatFloat('00', StrToFloat(formatnumeric(Modelo)));

  //S�rie da nota fiscal - 3 d�gitos alfanum�ricos
  if Length(Serie) = 0 then
    Result := Result + strcomplete(Serie, ' ', 3,1)
    //raise ErroSintegra.Create('Erro registro53:' + #13 + 'O campo serie NF est� nulo.')
  else
    Result := Result + strcomplete(Serie, ' ', 3,1);

  //N�mero da nota fiscal - 6 d�gitos num�ricos
  if Checknumeric(Nro) then
    Result := Result + FormatFloat('000000', StrToFloat(Nro))
  else
    raise ErroSintegra.Create('Erro registro53:' + #13 +
      'O n�mero da NF deve ter apenas caracteres num�ricos');

//      showmessage(formatnumeric(CFOP));

  //C�digo Fiscal de Opera��o e Presta��o - 4 d�gitos num�ricos
  if (Length(formatnumeric(CFOP)) = 0) or (Length(formatnumeric(CFOP)) > 4)  then
  begin
  //  showMessage(getCFOPItem(CFOP,'F'));
    raise ErroSintegra.Create('Erro registro53:' + #13 + 'CFOP incorreto.');
  end
  else
    Result := Result + FormatFloat('0000', StrToFloat(formatnumeric(CFOP)));

  //Emitente da Nota Fiscal (P-pr�prio/T-terceiros) - 1 d�gito alfanum�rico
  if Length(Emitente) = 0 then
    raise ErroSintegra.Create('Erro registro53:' + #13 + 'Emitente nulo.')
  else
  begin
    if (UpperCase(Emitente) = 'P') or (UpperCase(Emitente) = 'T') then
      Result := Result + Emitente
    else
      raise ErroSintegra.Create('Erro registro53: O campo emitente deve ser P-pr�prio/T-terceiros.');
  end;

  //Base de C�lculo do ICMS (com 2 decimais) - 13 d�gitos num�ricos
  if Length(Base_ICMS) = 0 then
    Result := Result + FormatFloat('0000000000000', 0)
  else
    Result := Result + FormatFloat('0000000000000', StrToFloat(Base_ICMS) * 100);
//    Result := Result + FormatFloat('0000000000000', StrToFloat(formatnumeric(Base_ICMS)));

  //imposto Retido(com 2 decimais) - 13 d�gitos num�ricos
  if Length(ICMS_Retido) = 0 then
    Result := Result + FormatFloat('0000000000000', 0)
  else
    Result := Result + FormatFloat('0000000000000', StrToFloat(ICMS_Retido) * 100);
//    Result := Result + FormatFloat('0000000000000', StrToFloat(formatnumeric(ICMS_Retido)));

  //Desp. Acessorias (com 2 decimais) - 13 d�gitos num�ricos
  if Length(Despesas_Acessorias) = 0 then
    Result := Result + '0'
  else
    Result := Result + FormatFloat('0000000000000', StrToFloat(Despesas_Acessorias) * 100);
  //    Result := Result + FormatFloat('0000000000000', StrToFloat(formatnumeric(Despesas_Acessorias)));

  //Situa��o NF - 1 digito alfanumerico
  {
  Situa��o	                Conte�do do Campo
  --------------------------------------------------
  Documento Fiscal Normal	N
  Documento Fiscal Cancelado	S
  Lan�amento Extempor�neo de Documento Fiscal Normal	E
  Lan�amento Extempor�neo de Documento Fiscal Cancelado	X
   }
  if Length(Situacao) = 0 then
    raise ErroSintegra.Create('Registro 53: Situa��o da NF nulo.')
  else
  begin
    if (Situacao <> 'N') and
       (Situacao <> 'S') and
       (Situacao <> 'E') and
       (Situacao <> 'X') then
      raise ErroSintegra.Create('Registro 53: Situa��o da NF inv�lida. N, S, E ou X.')
    else
      Result := Result + Situacao;
  end;

  //Brancos
  Result := Result + strcomplete('', ' ', 30,1);
  AddRegistro('53');
end;


function Registro54(CNPJ, Modelo, Serie, Nro, CFOP, CST, Nro_Item,
  Cod_Produto_Servico, Quantidade, Valor_Produto, Valor_Desconto,
  Base_ICMS, Base_ICMS_S_Trib, Valor_IPI,
  Aliquota_ICMS: ShortString): ShortString;
var
  CNPJ1, IE: String;
begin


  Result:= '54';

  {if Length(Formatnumeric(CNPJ))=14 then
  begin
    if VerCGC_silent(Formatnumeric(CNPJ)) then
    begin
      _CNPJ:=CNPJ;
    end
    else
      _CNPJ:='0';
  end
  else
  begin
    if VerCPF_silent(Formatnumeric(CNPJ)) then
      _CNPJ:=CNPJ
    else
      _CNPJ:='0';
  end;}

  CNPJ1:= CNPJ;
  IE:= 'ISENTO';

  CheckCNPJ_CPF_IE(CNPJ1, IE);



  //CNPJ 14 dig. Numericos.
  if Length(CNPJ) = 0 then
    Result := Result + FormatFloat('00000000000000', 0)
  else
    Result := Result + FormatFloat('00000000000000', StrToFloat(formatnumeric(CNPJ)));

  //Modelo 2 dig. Numericos
  if Length(Modelo)=0 then
    ErroSintegra.Create('Registro 54: Modelo Inv�lido ou nulo')
  else
    Result:= Result+ FormatFloat('00', StrToFloat(Modelo));

  //Serie 3 dig. Alfanumericos
  if (Length(Serie)=0) or (Length(Serie) > 3) then
    Result:= Result + Strcomplete(Serie, ' ', 3,1)
    //ErroSintegra.Create('Registro 54: S�rie inv�lida ou nula')
  else
    Result:= Result + Strcomplete(Serie, ' ', 3,1);

  //Numero doc. 6 dig. Numericos
  if Length(Nro)=0 then
    ErroSintegra.Create('Registro 54: N�mero documento inv�lido')
  else
    Result:= Result + FormatFloat('000000', StrToFloat(Nro));

   //C�digo Fiscal de Opera��o e Presta��o - 4 d�gitos num�ricos
  if Length(formatnumeric(CFOP)) = 0 then
    raise ErroSintegra.Create('Erro registro54: CFOP incorreto.')
  else
    Result := Result + FormatFloat('0000', StrToFloat(formatnumeric(CFOP)));

  //CST 3 digitos numericos.
  {O primeiro d�gito da situa��o tribut�ria ser�:
  0, 1 ou 2, conforme tabela
  A - Origem da Mercadoria do Anexo ao Conv�nio SINIEF s/n�, de 15.12.70;
  o segundo d�gito ser� de 0 a 9, exceto 8,
  e o terceiro d�gito ser�  zero ou um, ambos conforme
  tabela B - Tributa��o pelo ICMS, do mesmo anexo;

  Tabela A - Origem da Mercadoria

  0 - Nacional
  1 - Estrangeira - Importa��o direta
  2 - Estrangeira - Adquirida no mercado interno

  Tabela B - Tributa��o pelo ICMS

  00 - Tributada integralmente
  10 - Tributada e com cobran�a do ICMS por substitui��o tribut�ria
  20 - Com redu��o de base de c�lculo
  30 - Isenta ou n�o tributada e com cobran�a do ICMS por substitui��o tribut�ria
  40 - Isenta
  41 - N�o tributada
  50 - Suspens�o
  51 - Diferimento
  60 - ICMS cobrado anteriormente por substitui��o tribut�ria
  70 - Com redu��o de base de c�lculo e cobran�a do ICMS por substitui��o tribut�ria
  90 � Outras
  }

  if Length(CST)=0 then
    ErroSintegra.Create('Registro 54: CST Nulo.')
  else
  begin
    if StrToFloat(Nro_Item)>990 then
      result:= Result + Strcomplete('', ' ', 3,1)
    else
      Result:= Result+ FormatFloat('000', StrToFloat(CST));
  end;

  //Num do �tem - 3 dig Numericos
  {
  14.1.5.1 - 001 a 990 - n�mero seq�encial do produto ou servi�o;
  14.1.5.2 - 991 - identifica o registro do frete;
  14.1.5.3 - 992 - identifica o registro do seguro;
  14.1.5.4 - 993 - PIS/COFINS;
  14.1.5.8 - 997 - complemento de valor de Nota Fiscal e/ou ICMS;
  14.1.5.9 - 998 - servi�os n�o tributados;
  14.1.5.10 - 999 - identifica o registro de outras despesas acess�rias.
  }
  if Length(Nro_Item)=0 then
    ErroSintegra.Create('Registro 54: Numero do �tem nulo.')
  else
    Result:= Result+ FormatFloat('000', StrToFloat(Nro_Item));

  //Codigo - 14 digitos Alfanumericos
  if (Length(Cod_Produto_Servico) = 0) and (Length(Cod_Produto_Servico) > 14) then
    raise ErroSintegra.Create('Erro registro 54: C�digo Produto/Servi�o inv�lido.')
  else
  begin
    Additem75(Cod_Produto_Servico);
    Result := Result + strcomplete(Cod_Produto_Servico, ' ', 14,1);
  end;

  //Qtd - 11 dig. NUmericos
  if (Length(Quantidade) > 0) and (Length(Quantidade) <= 11) then
  begin
    if not checknumeric(Quantidade) then
      raise ErroSintegra.Create(
        'Erro registro 54: O �tem Quantidade deve ter somente caracteres num�ricos')
    else
      Result := Result + FormatFloat('00000000000', StrToFloat(formatnumeric(Quantidade))*1000);
  end
  else
    raise ErroSintegra.Create('Erro registro 54: Quantidade inv�lida');


  //Valor do Produto - (Bruto) - 12 dig. Numericos
  if (Length(Valor_Produto) > 0) and (Length(Valor_Produto) <= 12) then
  begin
    if not checknumeric(Valor_Produto) then
      raise ErroSintegra.Create(
        'Erro registro 54: O �tem Valor do Produto ou Servi�o deve ter somente caracteres num�ricos')
    else
    Result := Result + FormatFloat('000000000000', StrToFloat(Valor_Produto) * 100);
  end
  else
    raise ErroSintegra.Create('Erro registro 54: O Valor do Produto ou Servi�o inv�lido');

  //Desconto - 12 dig. Numericos
  if (Length(Valor_Desconto) > 0) and (Length(Valor_Desconto) <= 12) then
  begin
    if not checknumeric(Valor_Desconto) then
      raise ErroSintegra.Create(
        'Erro registro 54: O �tem Valor do Desconto deve ter somente caracteres num�ricos')
    else
    Result := Result + FormatFloat('000000000000', StrToFloat(Valor_Desconto) * 100);
  end
  else
    raise ErroSintegra.Create('Erro registro 54: Valor do Desconto inv�lido');

  //Base Calc. ICMS - 12 dig. num�ricos
  if (Length(Base_ICMS) > 0) and (Length(Base_ICMS) <= 12) then
  begin
    if not checknumeric(Base_ICMS) then
      raise ErroSintegra.Create(
        'Erro registro 54: Base C�lculo ICMS deve ter somente caracteres num�ricos')
    else
    Result := Result + FormatFloat('000000000000', StrToFloat(Base_ICMS) * 100);
  end
  else
    raise ErroSintegra.Create('Erro registro 54: Base C�lculo ICMS inv�lido');


  //Base Calc. ICMS Subst. - 12 dig. num�ricos
  if (Length(Base_ICMS_S_Trib) > 0) and (Length(Base_ICMS_S_Trib) <= 12) then
  begin
    if not checknumeric(Base_ICMS_S_Trib) then
      raise ErroSintegra.Create(
        'Erro registro 54: Base C�lculo ICMS Substitui��o deve ter somente caracteres num�ricos')
    else
    Result := Result + FormatFloat('000000000000', StrToFloat(Base_ICMS_S_Trib) * 100);
  end
  else
    raise ErroSintegra.Create('Erro registro 54: Base C�lculo ICMS Substitui��o inv�lido');


  //Valor IPI - 12 d�g. numericos
  if (Length(Valor_IPI) > 0) and (Length(Valor_IPI) <= 12) then
  begin
    if not checknumeric(Valor_IPI) then
      raise ErroSintegra.Create(
        'Erro registro 54: Valor do IPI deve ter somente caracteres num�ricos')
    else
    Result := Result + FormatFloat('000000000000', StrToFloat(Valor_IPI) * 100);
  end
  else
    raise ErroSintegra.Create('Erro registro 54: Valor do IPI inv�lido');

  //Al�quota do ICMS (com 2 decimais) - 4 d�gitos num�ricos
  if Length(Aliquota_ICMS) = 0 then
    Result := Result + '0000'
  else
    Result := Result + FormatFloat('0000', StrToFloat(Aliquota_ICMS)*100);

  AddRegistro('54');

end;

function Registro55(CNPJ, Insc_Est, Data_GNRE, UF_Substituto, UF_Favorecida, Banco_GNRE,
  Agencia_GNRE, Nro_GNRE, Valor_GNRE, Data_Vencimento_ICMS,
  Mes_Ano_Ref,
  Nro_Convenio: ShortString): ShortString;
begin
  Result:='55';
  //CNPJ - 14 dig. Numericos
  if Length(CNPJ) = 0 then
    Result := Result + FormatFloat('00000000000000', 0)
  else
    Result := Result + FormatFloat('00000000000000', StrToFloat(formatnumeric(CNPJ)));

  //Inscri��o Estadual - 14 d�gitos alfanum�ricos
  if UpperCase(Insc_Est) = 'INEXISTENTE' then
    Result := Result + strcomplete('INEXISTENTE', ' ', 14,1)
  else
  begin
    if Length(formatnumeric(Insc_Est)) = 0 then
      Result := Result + strcomplete('INEXISTENTE', ' ', 14,1)
    else
      Result := Result + Formatnumeric(Insc_Est);
  end;

  //Data da GNRE - 8 dig. Numericos
  if length(Data_GNRE)>0 then
  begin
    if not Checknumeric(Data_GNRE) then
      ErroSintegra.Create('Registro 55: Data do GNRE inv�lida')
    else
      Result:= Result + FormatDateTime('yyyymmdd', StrToDate(Data_GNRE));
  end
  else
    ErroSintegra.Create('Registro 55: Data do GNRE Nula');

  //Unidade da Federa��o do Substituto - 2 dig. alfanumericos
  if Length(UF_Substituto) = 2 then
    Result:= Result+ UF_Substituto
  else
    ErroSintegra.Create('Registro 55: UF do Substituto inv�lida');

  //Unidade da Federa��o Favorecida - 2 dig. alfanumericos
  if Length(UF_Favorecida) = 2 then
    Result:= Result+ UF_Favorecida
  else
    ErroSintegra.Create('Registro 55: UF Favorecida inv�lida');

  //Banco GNRE - 3 d�g. numericos
  //C�digo do Banco onde foi Efetuado o recolhimento
  if Length(Banco_GNRE)> 0 then
  begin
    if not Checknumeric(Banco_GNRE) or (StrToInt(Banco_GNRE)=0) then
      ErroSintegra.Create('Registro 55: Num. do Banco GNRE Inv�lido')
    else
      Result:= Result + FormatFloat('000', strtofloat(Banco_GNRE));
  end
  else
    ErroSintegra.Create('Registro 55: Num. do Banco GNRE nulo');

  //Ag�ncia GNRE - 4 d�g. num�ricos
  //onde foi efetuado o recolhimento
  if Length(Agencia_GNRE)> 0 then
  begin
    if not Checknumeric(Agencia_GNRE) or (StrToInt(Agencia_GNRE)=0) then
      ErroSintegra.Create('Registro 55: Num. do Banco GNRE Inv�lido')
    else
      Result:= Result + FormatFloat('0000', strtofloat(Banco_GNRE));
  end
  else
    ErroSintegra.Create('Registro 55: Num. do Banco GNRE nulo');

  // N�mero GNRE - 20 dig. alfanumericos.
  //N�mero de autentica��o Banc�ria do documento de Arrecada��o
  if Length(Nro_GNRE)>0 then
  begin
    if not Checknumeric(Nro_GNRE) then
      ErroSintegra.Create('Registro 55: Num. GNRE inv�lido')
    else
      Result:= Result+ FormatFloat('00000000000000000000', strtofloat(Nro_GNRE));
  end
  else
    ErroSintegra.Create('Registro 55: Num. GNRE nulo');

  //Valor GNRE - 13 d�g. numericos
  if Length(Valor_GNRE)>0 then
  begin
    if not Checknumeric(Valor_GNRE) then
      ErroSintegra.Create('Registro 55: Valor do GNRE inv�lido')
    else
      Result:= Result+ formatFloat('0000000000000', strToFloat(Valor_GNRE));
  end
  else
    ErroSintegra.Create('Registro 55: Valor do GNRE nulo');

  //Data Vencimento - 8 d�g. numericos
  if Length(Data_Vencimento_ICMS)>0 then
  begin
    if not Checknumeric(Data_Vencimento_ICMS) then
      ErroSintegra.Create('Registro 55: Data Vencimento Inv�lida')
    else
      Result:= Result + FormatDateTime('yyyymmdd', StrToDate(Data_Vencimento_ICMS));
  end
  else
    ErroSintegra.Create('Registro 55: Data Vencimento nula');

  //M�s e ano de Refer�ncia - 6 d�g. numericos. (MMAAAA)
  if Length(Mes_Ano_Ref)>0 then
  begin
    if not Checknumeric(Mes_Ano_Ref) then
      ErroSintegra.Create('Registro 55: M�s /Ano refer�ncia Inv�lido')
    else
      Result:= Result + FormatDateTime('yyyymm', StrToDate(Mes_Ano_Ref));
  end
  else
    ErroSintegra.Create('Registro 55: M�s /Ano refer�ncia nulo');


  //N�mero do Conv�nio ou Protocolo /Mercadoria - 30 d�g. alfanumericos.
  if Length(Nro_Convenio)>0 then
    Result:= Result + Strcomplete(Nro_Convenio, ' ', 30,1)
  else
    ErroSintegra.Create('Registro 55: Numero do Conv�nio nulo');

  AddRegistro('55');
end;

function Registro60Mestre(Data_Emissao, Nro_Serie_Eqp, Nro_Ordem_Eqp, Modelo_Doc,
  Nro_Contador_Inicio, Nro_Contador_Fim, Nro_Contador_Z,
  Contador_Reinicio, Valor_Venda_Bruta,
  Valor_Total_Geral: ShortString): ShortString;
begin
  Result := '60M';

  //Data de Emiss�o
  if Length(Data_Emissao) > 0 then
    Result := Result + FormatDateTime('yyyymmdd', StrToDate(Data_Emissao))
  else
    raise ErroSintegra.Create('Erro registro 60M: Data emiss�o inv�lida');

  //N�mero de s�rie de fabrica��o do equipamento
  if Length(Nro_Serie_Eqp) > 0 then
    Result := Result + strcomplete(Nro_Serie_Eqp, ' ', 20,1)
  else
    raise ErroSintegra.Create('Erro registro 60M: N�mero de s�rie da impressora fiscal inv�lido');

  //N�mero de ordem seq�encial do equipamento
  if Length(Nro_Ordem_Eqp) > 0 then
  begin
    if not checknumeric(Nro_Ordem_Eqp) then
      raise ErroSintegra.Create(
        'Erro registro 60M: O n�mero de ordem do equipamento deve ter somente caracteres num�ricos')
    else
      Result := Result + FormatFloat('000', StrToFloat(Nro_Ordem_Eqp));
  end
  else
    raise ErroSintegra.Create('Erro registro 60M: N�mero de ordem do equipamento inv�lido');

  //Modelo do documento fiscal
  {
  Preencher com "2B", quando se tratar de Cupom Fiscal emitido por m�quina registradora (n�o ECF),
  com "2C", quando se tratar de Cupom Fiscal PDV,
  ou "2D", quando se tratar de Cupom Fiscal (emitido por ECF).
  J� para os demais Documentos Fiscais deve ser preenchido conforme c�digos da tabela de modelos, do subitem 3.3.1 do conv 76/03
  }
  if Length(Modelo_Doc) > 0 then
    Result := Result + strcomplete(Modelo_Doc, ' ', 2,1)
  else
    raise ErroSintegra.Create('Erro registro 60M: Modelo do documento fiscal inv�lido');

  //N�mero Inicio do Contador de Ordem de Opera��o no in�cio do dia
  {caso o equipamento n�o tenha o respectivo totalizador preencher com o valor da venda bruta do dia.}
  if (Length(Nro_Contador_Inicio) > 0) and (Length(Nro_Contador_Inicio) <= 6) then
  begin
    if not checknumeric(Nro_Contador_Inicio) then
      raise ErroSintegra.Create(
        'Erro registro 60M: O n�mero do contador inicial deve ter somente caracteres num�ricos')
    else
      Result := Result + FormatFloat('000000', StrToFloat(Nro_Contador_Inicio));
  end
  else
    raise ErroSintegra.Create('Erro registro 60M: O n�mero do contador inicial inv�lido');

  //N�mero do Contador de Ordem de Opera��o no final do dia
  if (Length(Nro_Contador_Fim) > 0) and (Length(Nro_Contador_Inicio) <= 6) then
  begin
    if not checknumeric(Nro_Contador_Fim) then
      raise ErroSintegra.Create(
        'Erro registro 60M: O n�mero do contador final deve ter somente caracteres num�ricos')
    else
      Result := Result + FormatFloat('000000', StrToFloat(Nro_Contador_Fim));
  end
  else
    raise ErroSintegra.Create('Erro registro 60M: O n�mero do contador final inv�lido');

  //N�mero do Contador de Redu��o Z
  if (Length(Nro_Contador_Z) > 0) and (Length(Nro_Contador_Inicio) <= 6) then
  begin
    if not checknumeric(Nro_Contador_Z) then
      raise ErroSintegra.Create(
        'Erro registro 60M: O n�mero do contador redu��o Z deve ter somente caracteres num�ricos')
    else
      Result := Result + FormatFloat('000000', StrToFloat(Nro_Contador_Z));
  end
  else
    raise ErroSintegra.Create('Erro registro 60M: O n�mero do contador redu��o Z inv�lido');

  //Contador de Rein�cio de Opera��o
  if (Length(Contador_Reinicio) > 0) and (Length(Contador_Reinicio) <= 6) then
  begin
    if not checknumeric(Contador_Reinicio) then
      raise ErroSintegra.Create(
        'Erro registro 60M: O n�mero do contador rein�cio de Opera��o deve ter somente caracteres num�ricos')
    else
      Result := Result + FormatFloat('000', StrToFloat(Contador_Reinicio));
  end
  else
    raise ErroSintegra.Create('Erro registro 60M: O n�mero do contador rein�cio de Opera��o inv�lido');

  // Valor da Venda Bruta
  if (Length(Valor_Venda_Bruta) > 0) and (Length(Valor_Venda_Bruta) <= 16) then
  begin
    if not checknumeric(Valor_Venda_Bruta) then
      raise ErroSintegra.Create(
        'Erro registro 60M: O valor de venda bruta deve ter somente caracteres num�ricos')
    else
      Result := Result + FormatFloat('0000000000000000',
        StrToFloat(Valor_Venda_Bruta) * 100);
  end
  else
    raise ErroSintegra.Create('Erro registro 60M: Valor de venda bruta inv�lido.');


  // Valor do Totalizador Geral do equipamento

  if (Length(Valor_Total_Geral) > 0) and (Length(Valor_Total_Geral) <= 16) then
  begin
    if not checknumeric(Valor_Total_Geral) then
      raise ErroSintegra.Create(
        'Erro registro 60M: O valor de venda bruta deve ter somente caracteres num�ricos')
    else
      Result := Result + FormatFloat('0000000000000000',
        StrToFloat(formatnumeric(Valor_Total_Geral)));
  end
  else
    raise ErroSintegra.Create('Erro registro 60M: Valor do Total Geral inv�lido.');
    
  //Brancos
  Result := Result + strcomplete('', ' ', 37,1);
  AddRegistro('60');
end;

function Registro60Analitico(Data_Emissao, Nro_Serie_Eqp, S_Trib_Aliquota,
                             Valor_TParcial: ShortString): ShortString;
begin
  Result := '60A';

  // Data de emiss�o
  if Length(Data_Emissao) > 0 then
    Result := Result + FormatDateTime('yyyymmdd', StrToDate(Data_Emissao))
  else
    raise ErroSintegra.Create('Erro registro 60A: Data emiss�o inv�lida');

  //N�mero de s�rie de fabrica��o do equipamento
  if (Length(Nro_Serie_Eqp) > 0) and (Length(Nro_Serie_Eqp) <= 20) then
    Result := Result + strcomplete(Nro_Serie_Eqp, ' ', 20,1)
  else
    raise ErroSintegra.Create('Erro registro 60A: N�mero de s�rie da impressora fiscal inv�lido');

  //Situa��o Tribut�ria/ Al�quota
  {
  Quando o totalizador parcial se referir a outra situa��o tribut�ria,
  informar conforme tabela abaixo:
  Situa��o Tribut�ria	        Conte�do do Campo
  Substitui��o Tribut�ria.........F
  Isento..........................I
  N�o incid�ncia..................N
  Cancelamentos...................CANC
  Descontos.......................DESC
  ISSQN...........................ISS
  }


  if (Length(S_Trib_Aliquota) > 0) and (Length(S_Trib_Aliquota) <= 4) then
  begin
    if checknumeric(S_Trib_Aliquota) then
    begin
      if StrToFloat(S_Trib_Aliquota) > 100 then
        Result := Result + FormatFloat('0000', StrToFloat(S_Trib_Aliquota))
      else
        Result := Result + FormatFloat('0000', StrToFloat(S_Trib_Aliquota) * 100);
    end
    else
    begin
      if UpperCase(S_Trib_Aliquota) = 'F' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'I' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'N' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'CANC' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'DESC' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'ISS' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else
        raise ErroSintegra.Create('Erro registro 60A: Situa��o Tribut�ria/ Al�quota.' +
          #13 +
          'Este �tem deve obedecer a sistem�tica abaixo, quando n�o for num�rico:' +
          #13#13 +
          'Situa��o Tribut�ria            Conte�do do Campo' + #13 +
          '------------------------------------------------' + #13 +
          'Substitui��o Tribut�ria.........F' + #13 +
          'Isento............................I' + #13 +
          'N�o incid�ncia...................N' + #13 +
          'Cancelamentos.................CANC' + #13 +
          'Descontos.......................DESC' + #13 +
          'ISSQN............................ISS' + #13);
    end;
  end
  else
    raise ErroSintegra.Create('Erro registro 60A: Situa��o Tribut�ria/ Al�quota inv�lida.');

  //Valor Acumulado no totalizador parcial
  if (Length(Valor_TParcial) > 0) and (Length(Valor_TParcial) <= 12) then
  begin
    if not checknumeric(Valor_TParcial) then
      raise ErroSintegra.Create(
        'Erro registro 60A: O Valor Acumulado no totalizador parcial deve ter somente caracteres num�ricos')
    else
      Result := Result + FormatFloat('000000000000', StrToFloat(Valor_TParcial) * 100);
  end;

  //Brancos
  Result := Result + strcomplete('', ' ', 79,1);
  AddRegistro('60');
end;

function Registro60ResumoDiario(Data_Emissao, Nro_Serie_Eqp, Cod_Produto, Quantidade,
  Valor_Produto, Base_ICMS, S_Trib_Aliquota,
  Valor_ICMS: ShortString): ShortString;
begin
  Result := '60D';

  //Data Emiss�o
  if Length(Data_Emissao) > 0 then
    Result := Result + FormatDateTime('yyyymmdd', StrToDate(Data_Emissao))
  else
    raise ErroSintegra.Create('Erro registro 60D: Data emiss�o inv�lida');

  // N�mero de s�rie do equipamento
  if (Length(Nro_Serie_Eqp) > 0) and (Length(Nro_Serie_Eqp) <= 20) then
    Result := Result + strcomplete(Nro_Serie_Eqp, ' ', 20,1)
  else
    raise ErroSintegra.Create('Erro registro 60D: N�mero de s�rie da impressora fiscal inv�lido');

  //C�digo do Produto ou Servi�o
  if (Length(Cod_Produto) > 0) and (Length(Cod_Produto) <= 14) then
  begin
    Additem75(Cod_Produto);
    Result := Result + strcomplete(Cod_Produto, ' ', 14,1);
  end
  else
    raise ErroSintegra.Create('Erro registro 60D: Codigo Produto inv�lido');

  //Quantidade
  if (Length(Quantidade) > 0) and (Length(Quantidade) <= 13) then
  begin
    if not checknumeric(Quantidade) then
      raise ErroSintegra.Create(
        'Erro registro 60D: O �tem Quantidade deve ter somente caracteres num�ricos')
    else
      Result := Result + FormatFloat('0000000000000',
        StrToFloat(formatnumeric(Quantidade)));
  end
  else
    raise ErroSintegra.Create('Erro registro 60D: Quantidade inv�lido');

  //Valor do Produto ou Servi�o
  if (Length(Valor_Produto) > 0) and (Length(Valor_Produto) <= 16) then
  begin
    if not checknumeric(Valor_Produto) then
      raise ErroSintegra.Create(
        'Erro registro 60D: O �tem Valor do Produto ou Servi�o deve ter somente caracteres num�ricos')
    else
      Result := Result + FormatFloat('0000000000000000',
        StrToFloat(formatnumeric(Valor_Produto)));
  end
  else
    raise ErroSintegra.Create('Erro registro 60D: O Valor do Produto ou Servi�o inv�lido');


  //Base de C�lculo do ICMS
  if (Length(Base_ICMS) > 0) and (Length(Base_ICMS) <= 16) then
  begin
    if not checknumeric(Base_ICMS) then
      raise ErroSintegra.Create(
        'Erro registro 60D: O �tem Base C�lculo ICMS deve ter somente caracteres num�ricos')
    else
      Result := Result + FormatFloat('0000000000000000',
        StrToFloat(formatnumeric(Base_ICMS)));
  end
  else
    raise ErroSintegra.Create('Erro registro 60D: O �tem Base C�lculo ICMS inv�lido');

  //Situa��o Tribut�ria/ Al�quota do Produto ou Servi�o

  if (Length(S_Trib_Aliquota) > 0) and (Length(S_Trib_Aliquota) <= 4) then
  begin
    if checknumeric(S_Trib_Aliquota) then
    begin
      if strtofloat(S_Trib_Aliquota) > 100 then
        Result := Result + FormatFloat('0000', StrToFloat(S_Trib_Aliquota))
      else
        Result := Result + FormatFloat('0000', (strToFloat(S_Trib_Aliquota) * 100));
    end
    else
    begin
      if UpperCase(S_Trib_Aliquota) = 'F' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'I' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'N' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'CANC' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'DESC' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'ISS' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else
        raise ErroSintegra.Create('Erro registro 60D: Situa��o Tribut�ria/ Al�quota.' +
          #13 +
          'Este �tem deve obedecer a sistem�tica abaixo, quando n�o for num�rico:' +
          #13#13 +
          'Situa��o Tribut�ria            Conte�do do Campo' + #13 +
          '------------------------------------------------' + #13 +
          'Substitui��o Tribut�ria.........F' + #13 +
          'Isento............................I' + #13 +
          'N�o incid�ncia...................N' + #13 +
          'Cancelamentos.................CANC' + #13 +
          'Descontos.......................DESC' +
          #13 +
          'ISSQN............................ISS' + #13);
    end;
  end
  else
    raise ErroSintegra.Create('Erro registro 60D: Situa��o Tribut�ria/ Al�quota inv�lida.');

  //Valor do ICMS
  //OBS: Preencher com zeros no caso de Situa��o Tribut�ria igual a F, N ou I.

  if (Length(Valor_ICMS) > 0) and (Length(Valor_ICMS) <= 13) then
  begin
    if not checknumeric(Valor_ICMS) then
      raise ErroSintegra.Create(
        'Erro registro 60D: O �tem Valor do ICMS deve ter somente caracteres num�ricos')
    else
      Result := Result + FormatFloat('0000000000000',
        StrToFloat(formatnumeric(Valor_ICMS)) * 100);
  end
  else
    raise ErroSintegra.Create('Erro registro 60D: Situa��o Valor do ICMS inv�lido');

  //Brancos
  Result := Result + strcomplete('', ' ', 19,1);
  AddRegistro('60');
end;

function Registro60Item(Data_Emissao, Nro_Serie_Eqp, Modelo_Doc, COO,
  Nro_Item, Cod_Produto,
  Quantidade, Valor_Produto, Base_ICMS,
  S_Trib_Aliquota, Valor_ICMS: ShortString): ShortString;
begin
  Result := '60I';

  //Data Emiss�o - 8 d�gitos num�ricos
  if Length(Data_Emissao) > 0 then
    Result := Result + FormatDateTime('yyyymmdd', StrToDate(Data_Emissao))
  else
    raise ErroSintegra.Create('Erro registro 60I: Data emiss�o inv�lida');

  //N�mero de s�rie de fabrica��o - 20 d�gitos alfanum�ricos
  if (Length(Nro_Serie_Eqp) > 0) and (Length(Nro_Serie_Eqp) <= 20) then
    Result := Result + strcomplete(Nro_Serie_Eqp, ' ', 20,1)
  else
    raise ErroSintegra.Create('Erro registro 60I: N�mero de s�rie da impressora fiscal inv�lido');

  //Modelo do documento fiscal - 2 d�gitos alfanum�ricos

  if (Length(Modelo_Doc) > 0) and (Length(Modelo_Doc) = 2) then
    Result := Result + Modelo_Doc
  else
    raise ErroSintegra.Create('Erro registro 60I: Modelo do documento fiscal inv�lido');

  //N� de ordem do documento fiscal - 6 d�gitos num�ricos

  if (Length(COO) > 0) and (Length(COO) <= 6) then
  begin
    if checknumeric(COO) then
      Result := Result + FormatFloat('000000', StrToFloat(COO))
    else
      raise ErroSintegra.Create(
        'Erro registro 60I: N� de ordem do documento fiscal dever� ter somente caracteres num�ricos');
  end
  else
    raise ErroSintegra.Create('Erro registro 60I: N� de ordem do documento fiscal inv�lido');

  //N�mero do item - 3 d�gitos num�ricos
  if (Length(Nro_Item) > 0) and (Length(Nro_Item) <= 3) then
  begin
    if checknumeric(Nro_Item) then
      Result := Result + FormatFloat('000', StrToFloat(Nro_Item))
    else
      raise ErroSintegra.Create(
        'Erro registro 60I: N� de ordem do item dever� ter somente caracteres num�ricos');
  end
  else
    raise ErroSintegra.Create('Erro registro 60I: N� de ordem do item inv�lido');

  //C�digo do Produto ou Servi�o - 14 d�gitos alfanum�ricos
  if (Length(Cod_Produto) > 0) and (Length(Cod_Produto) <= 14) then
  begin
    Result := Result + strcomplete(Cod_Produto, ' ', 14,1);
    Additem75(Cod_Produto);
  end
  else
    raise ErroSintegra.Create('Erro registro 60I: C�digo Produto/Servi�o inv�lido');

  //Quantidade do Produto   (com 3 decimais) - 13 d�gitos num�ricos
  if (Length(Quantidade) > 0) and (Length(Quantidade) <= 13) then
  begin
    if checknumeric(Quantidade) then
      Result := Result + FormatFloat('0000000000000', StrToFloat(Quantidade) * 1000)
    else
      raise ErroSintegra.Create('Erro registro 60I: A Quantidade dever� ter somente caracteres num�ricos');
  end
  else
    raise ErroSintegra.Create('Erro registro 60I: Quantidade inv�lido');

  //Valor Unit�rio do produto (com 3 decimais) - 13 d�gitos num�ricos
  if (Length(Valor_Produto) > 0) and (Length(Valor_Produto) <= 13) then
  begin
    if checknumeric(Valor_Produto) then
      Result := Result + FormatFloat('0000000000000', StrToFloat(Valor_Produto) * 1000)
    else
      raise ErroSintegra.Create('Erro registro 60I: A Quantidade dever� ter somente caracteres num�ricos');
  end
  else
    raise ErroSintegra.Create('Erro registro 60I: Quantidade inv�lido');

  //Base de C�lculo do ICMS do Item (com 2 decimais) - 12 d�gitos num�ricos

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// modificado aqui

  if (Length(Base_ICMS) > 0) and (Length(Base_ICMS) <= 12) then
  begin
    if checknumeric(Base_ICMS) then
     if (UpperCase(S_Trib_Aliquota) = 'F') or (UpperCase(S_Trib_Aliquota) = 'I') then
      Result := Result + '000000000000'
      else
      Result := Result + FormatFloat('000000000000', StrToFloat(Base_ICMS) * 100)

// fim da modifica��o
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    else
      raise ErroSintegra.Create(
        'Erro registro 60I: A Base de C�lculo do ICMS dever� ter somente caracteres num�ricos');
  end
  else
    raise ErroSintegra.Create('Erro registro 60I: A Base de C�lculo do ICMS inv�lido');

  //Identificador da Situa��o Tribut�ria / Al�quota do ICMS (com 2 decimais) - 4 d�gitos alfanum�ricos
  {
  Quando o totalizador parcial se referir a outra situa��o tribut�ria,
  informar conforme tabela abaixo:
  Situa��o Tribut�ria	        Conte�do do Campo
  Substitui��o Tribut�ria.........F
  Isento..........................I
  N�o incid�ncia..................N
  Cancelamentos...................CANC
  Descontos.......................DESC
  ISSQN...........................ISS
  }

  if (Length(S_Trib_Aliquota) > 0) and (Length(S_Trib_Aliquota) <= 4) then
  begin
    {if checknumeric(S_Trib_Aliquota) then
      Result := Result + FormatFloat('0000', (StrToFloat(S_Trib_Aliquota) * 100))}
    if checknumeric(S_Trib_Aliquota) then
    begin
      if StrToFloat(S_Trib_Aliquota) > 100 then
        Result := Result + FormatFloat('0000', StrToFloat(S_Trib_Aliquota))
      else
        Result := Result + FormatFloat('0000', StrToFloat(S_Trib_Aliquota) * 100);
    end
    else
    begin
      if UpperCase(S_Trib_Aliquota) = 'F' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'I' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'N' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'CANC' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'DESC' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'ISS' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else
        raise ErroSintegra.Create('Erro registro 60I: Situa��o Tribut�ria/ Al�quota.' +
          #13 +
          'Este �tem deve obedecer a sistem�tica abaixo, quando n�o for num�rico:' +
          #13#13 +
          'Situa��o Tribut�ria            Conte�do do Campo' + #13 +
          '------------------------------------------------' + #13 +
          'Substitui��o Tribut�ria.........F' + #13 +
          'Isento............................I' + #13 +
          'N�o incid�ncia...................N' + #13 +
          'Cancelamentos.................CANC' + #13 +
          'Descontos.......................DESC' +
          #13 +
          'ISSQN............................ISS' + #13);
    end;
  end
  else
    raise ErroSintegra.Create('Erro registro 60I: Situa��o Tribut�ria/ Al�quota inv�lida.');

  //Valor do ICMS - 12 d�gitos num�ricos
  {OBS: Preencher com zeros no caso de Situa��o Tribut�ria igual a F, N ou I.}

  if (Length(Valor_ICMS) > 0) and (Length(Valor_ICMS) <= 12) then
    Result := Result + FormatFloat('000000000000',
      StrToFloat(formatnumeric(Valor_ICMS)) * 100)
  else
    raise ErroSintegra.Create('Erro registro 60I: Valor ICMS inv�lido.');

  //Brancos 16 d�gitos
  Result := Result + strcomplete('', ' ', 16,1);
  AddRegistro('60');
end;

function Registro60ResumoMensal(Mes_Ano_Emissao, Cod_Produto_Servico, Quantidade,
  Valor_Produto, Base_ICMS,
  S_Trib_Aliquota: ShortString): ShortString;
begin
  Result := '60R';
  //M�s e Ano de emiss�o - 6 d�gitos num�ricos
  if (Length(formatnumeric(Mes_Ano_Emissao)) > 0) and
    (Length(formatnumeric(Mes_Ano_Emissao)) <= 6) then
    Result := Result + formatnumeric(Mes_Ano_Emissao)
  else
    raise ErroSintegra.Create('Erro registro 60R: M�s ano emiss�o inv�lido.');

  //C�digo do Produto ou Servi�o - 14 d�gitos alfanum�ricos
  if (Length(Cod_Produto_Servico) > 0) and (Length(Cod_Produto_Servico) <= 14) then
  begin
    Result := Result + strcomplete(Cod_Produto_Servico, ' ', 14,1);
    Additem75(Cod_Produto_Servico);
  end
  else
    raise ErroSintegra.Create('Erro registro 60R: C�digo Produto/Servi�o inv�lido.');

  //Quantidade do produto no m�s (com 3 decimais) - 13 d�gitos num�ricos
  if (Length(Quantidade) > 0) and (Length(Quantidade) <= 13) then
  begin
    if checknumeric(Quantidade) then
      Result := Result + FormatFloat('0000000000000', StrToFloat(Quantidade) * 1000)
    else
      raise ErroSintegra.Create('Erro registro 60R: Quantidade dever� ter somente caracteres num�ricos');
  end
  else
    raise ErroSintegra.Create('Erro registro 60R: Quantidade Produto/Servi�o inv�lido.');

  //Valor bruto do produto - valor acumulado do produto no m�s (com 2 decimais) - 16 d�gitos num�ricos
  if (Length(Valor_Produto) > 0) and (Length(Valor_Produto) <= 16) then
  begin
    if checknumeric(Valor_Produto) then
      Result := Result + FormatFloat('0000000000000000', StrToFloat(Valor_Produto) * 100)
    else
      raise ErroSintegra.Create(
        'Erro registro 60R: Valor Produto/Servi�o dever� ter somente caracteres num�ricos');
  end
  else
    raise ErroSintegra.Create('Erro registro 60R: Valor Produto/Servi�o inv�lido.');

  //Base de c�lculo do ICMS - valor acumulado no m�s (com 2 decimais) - 16 d�gitos

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// modificado aqui

  if (Length(Base_ICMS) > 0) and (Length(Base_ICMS) <= 16) then
  begin
    if checknumeric(Base_ICMS) then
     if (UpperCase(S_Trib_Aliquota) = 'F') or (UpperCase(S_Trib_Aliquota) = 'I') then
      Result := Result + '0000000000000000'
      else
      Result := Result + FormatFloat('0000000000000000', StrToFloat(Base_ICMS) * 100)

// fim da modifica��o
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    else
      raise ErroSintegra.Create(
        'Erro registro 60R: Valor Produto/Servi�o dever� ter somente caracteres num�ricos');
  end
  else
    raise ErroSintegra.Create('Erro registro 60R: Valor Produto/Servi�o inv�lido.');

  //Identificador da Situa��o Tribut�ria / Al�quota do ICMS (com 2 decimais) - 4 d�gitos alfanum�ricos
  {
  Quando o totalizador parcial se referir a outra situa��o tribut�ria,
  informar conforme tabela abaixo:
  Situa��o Tribut�ria	        Conte�do do Campo
  Substitui��o Tribut�ria.........F
  Isento..........................I
  N�o incid�ncia..................N
  Cancelamentos...................CANC
  Descontos.......................DESC
  ISSQN...........................ISS
  }

  if (Length(S_Trib_Aliquota) > 0) and (Length(S_Trib_Aliquota) <= 4) then
  begin
    if checknumeric(S_Trib_Aliquota) then
    begin
      {Result := Result + FormatFloat('0000', (StrToFloat(S_Trib_Aliquota) * 100))}
      if StrToFloat(S_Trib_Aliquota) > 100 then
        Result := Result + FormatFloat('0000', StrToFloat(S_Trib_Aliquota))
      else
        Result := Result + FormatFloat('0000', StrToFloat(S_Trib_Aliquota) * 100);
    end
    else
    begin
      if UpperCase(S_Trib_Aliquota) = 'F' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'I' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'N' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'CANC' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'DESC' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else if UpperCase(S_Trib_Aliquota) = 'ISS' then
        Result := Result + strcomplete(UpperCase(S_Trib_Aliquota), ' ', 4,1)
      else
        raise ErroSintegra.Create('Erro registro 60R: Situa��o Tribut�ria/ Al�quota.' +
          #13 +
          'Este �tem deve obedecer a sistem�tica abaixo, quando n�o for num�rico:' +
          #13#13 +
          'Situa��o Tribut�ria            Conte�do do Campo' + #13 +
          '------------------------------------------------' + #13 +
          'Substitui��o Tribut�ria.........F' + #13 +
          'Isento............................I' + #13 +
          'N�o incid�ncia...................N' + #13 +
          'Cancelamentos.................CANC' + #13 +
          'Descontos.......................DESC' +
          #13 +
          'ISSQN............................ISS' + #13);
    end;
  end
  else begin
    //showmessage(S_Trib_Aliquota);

    raise ErroSintegra.Create(pchar('"'+S_Trib_Aliquota+'": Erro registro 60R: Situa��o Tribut�ria/ Al�quota inv�lida.'));

  end;

  //Brancos - 54 d�gitos
  Result := Result + strcomplete('', ' ', 54,1);
  AddRegistro('60');
end;

function Registro61M(Data_Emissao, Modelo, Serie, SubSerie,
  Nro_Ordem_Inicio, Nro_Ordem_Fim, Valor_Total, Base_ICMS, Valor_ICMS,
  Isenta, Outras, Aliquota: ShortString): ShortString;
begin
  Result:= '61';
  //Brancos - 14 dig alfa
  Result:= Result + Strcomplete('', ' ', 14,1);
  Result:= Result + Strcomplete('', ' ', 14,1);

  //Data de Emiss�o - 8 dig. numericos (yyyymmdd)
  if Length(Data_Emissao)> 8 then
    Result := Result + FormatDateTime('yyyymmdd', StrToDate(Data_Emissao))
  else
    raise ErroSintegra.Create('Registro 61M: Data de Emiss�o nula');

  //Modelo - 2 dig. numerico
  //Modelo do(s) documento(s) fiscal(is)
  if Length(Modelo) > 0 then
    Result:= Result + Strcomplete(modelo, ' ', 2,1)

  else
    raise ErroSintegra.Create('Registro 61M: Modelo Nulo');

  //s�rie - 3 dig. alfanumericos
  if Length(Serie) > 0 then
    Result:= Result + Strcomplete(Serie, ' ', 3,1)
  else
    raise ErroSintegra.Create('Registro 61M: Serie Nula');


  //subs�rie - 2 dig. alfanumericos
  if Length(SubSerie) > 0 then
    Result:= Result + Strcomplete(SubSerie, ' ', 2,1)
  else
    raise ErroSintegra.Create('Registro 61M: SubSerie Nula');


  //N�mero inicial de ordem - 6 dig. numericos
  if Length(Nro_Ordem_Inicio)> 0 then
  begin
    if Checknumeric(Nro_Ordem_Inicio) then
      Result:= Result + FormatFloat('000000', StrToFloat(Nro_Ordem_Inicio))
    else
      raise ErroSintegra.Create('Registro 61M: N�mero de Ordem Inicio Inv�lido');
  end
  else
    raise ErroSintegra.Create('Registro 61M: Numero de Ordem Inicio Nulo');

  //Numero final da ordem - 6 d�g. numericos
  if Length(Nro_Ordem_Fim)> 0 then
  begin
    if Checknumeric(Nro_Ordem_Fim) then
      Result:= Result + FormatFloat('000000', StrToFloat(Nro_Ordem_Fim))
    else
      raise ErroSintegra.Create('Registro 61M: N�mero de Ordem Inicio Inv�lido');
  end
  else
    raise ErroSintegra.Create('Registro 61M: Numero de Ordem Inicio Nulo');

  //Valor  Total - 13 dig. numericos - 2 decimais
  if Length(Valor_Total)> 0 then
  begin
    if Checknumeric(Valor_Total) then
      Result:= Result + FormatFloat('0000000000000', StrToFloat(Valor_Total) * 100)
    else
      raise ErroSintegra.Create('Registro 61M: Valor Total Inv�lido');
  end
  else
    raise ErroSintegra.Create('Registro 61M: Valor Total Nulo');

  //Base de C�lculo ICMS - 13 dig. num�ricos  - 2 decimais
  if Length(Base_ICMS)> 0 then
  begin
    if Checknumeric(Base_ICMS) then
      Result:= Result + FormatFloat('0000000000000', StrToFloat(Base_ICMS) * 100)
    else
      raise ErroSintegra.Create('Registro 61M: Base ICMS Inv�lido');
  end
  else
    raise ErroSintegra.Create('Registro 61M: Base ICMS Nulo');

  //Valor do ICMS - 12 dig. numericos - 2 decimais
  if Length(Valor_ICMS)> 0 then
  begin
    if Checknumeric(Valor_ICMS) then
      Result:= Result + FormatFloat('000000000000', StrTofloat(Valor_ICMS)* 100)
    else
      raise ErroSintegra.Create('Registro 61M: Valor ICMS Inv�lido');
  end
  else
    raise ErroSintegra.Create('Registro 61M: Valor ICMS Nulo');

  //Isenta ou N�o-Tributadas - 13 dig. numericos - 2 decimais
  if Length(Isenta)> 0 then
  begin
    if Checknumeric(Isenta) then
      Result:= Result + FormatFloat('0000000000000', StrToFloat(Isenta) * 100)
    else
      raise ErroSintegra.Create('Registro 61M: Isenta Inv�lida');
  end
  else
    raise ErroSintegra.Create('Registro 61M: Isenta Nula');

  //Outras - 13 digitos numericos - 2 decimais
  if Length(Outras) > 0 then
  begin
    if Checknumeric(Outras) then
      Result:= Result + FormatFloat('0000000000000', StrToFloat(Outras) * 100)
    else
      raise ErroSintegra.Create('Registro 61M: Outras Inv�lida');
  end
  else
    raise ErroSintegra.Create('Registro 61M: Outras Nula');

  //Aliquota - 4 dig. numericos - 2 decimais
  if Length(Aliquota) > 0 then
  begin
    if Checknumeric(Aliquota) then
      Result:= Result + FormatFloat('0000', StrToFloat(Aliquota)* 100)
    else
      raise ErroSintegra.Create('Registro 61M: Al�quota Inv�lida');
  end
  else
    raise ErroSintegra.Create('Registro 61M: Al�quota Nula');

  //Branco
  Result:= Result + Strcomplete('', ' ', 1,1);

  AddRegistro('61');


end;



function Registro61R(Mes_ano_Emissao, Codigo_produto, Quantidade, VrBrutoProd,
  Base_ICMS, Aliquota: ShortString): ShortString;
begin

  Result:= '61R';

  // m�s ano da emiss�o - 6 d�g. numericos
  if (Length(formatnumeric(Mes_Ano_Emissao)) > 0) and
    (Length(formatnumeric(Mes_Ano_Emissao)) <= 6) then
    Result := Result + formatnumeric(Mes_Ano_Emissao)
  else
    raise ErroSintegra.Create('Erro registro 61R: M�s ano emiss�o inv�lido.');

  // C�digo - 14 d�g. alfanumericos
  if (Length(Codigo_produto)>0) and (Length(Codigo_produto)<=14) then begin
    Additem75(Codigo_produto);
    Result:= Result + Strcomplete(Codigo_produto, ' ', 14,1);
  end else
    raise ErroSintegra.Create('Registro 61R: Codigo Produto inv�lido');

  // quatidade - 13 d�g. numericos  (3 decimais)
  if (Length(Quantidade)>0) and (Length(Formatnumeric(Quantidade))<=13) then
    Result:= Result + FormatFloat('0000000000000', strtofloat(Quantidade) * 1000)
  else
    raise ErroSintegra.Create('Registro 61R: Quantidade Inv�lida');

  // Vr Bruto - 16 d�g. numericos (2 decimais)
  if (Length(VrBrutoProd)>0) and (Length(Formatnumeric(VrBrutoProd))<=16) then
    Result:= Result + FormatFloat('0000000000000000', strtofloat(VrBrutoProd) * 100)
  else
    raise ErroSintegra.Create('Registro 61R: Valor Bruto Inv�lido');

  // Base Calc. ICMS - 16 d�g. numericos (2 decimais)
  if (Length(Base_ICMS)>0) and (Length(Formatnumeric(Base_ICMS))<=16) then
    Result:= Result + FormatFloat('0000000000000000', strtofloat(Base_ICMS) * 100)
  else
    raise ErroSintegra.Create('Registro 61R: Base ICMS Inv�lido');

  // Aliq. Produto - 04 d�g. numericos (2 decimais)
  if (Length(Aliquota)>0) and (Length(Formatnumeric(Aliquota))<=4) then
    Result:= Result + FormatFloat('0000', strtofloat(Aliquota) * 100)
  else
    raise ErroSintegra.Create('Registro 61R: Aliquota Inv�lida');

  Result:= Result+ Strcomplete('', ' ', 54,1); //Brancos - 54

  AddRegistro('61');

end;



function Registro70(const CNPJ, Insc_Est, Data_Emissao_Utilizacao, UF, Modelo, Serie, SubSerie,
  Nro, CFOP, Valor_Total, Base_ICMS, Valor_ICMS, Isenta, Outras,
  CIF_FOB, Situacao: ShortString): ShortString;
begin

  Result:= '70';

  //CNPJ do remetente nas entradas e do destinat�rio nas sa�das	- 14 d�gitos num�ricos
  if Length(CNPJ) = 0 then
    Result := Result + FormatFloat('00000000000000', 0)
  else
    Result := Result + FormatFloat('00000000000000', StrToFloat(formatnumeric(CNPJ)));

  //Inscri��o Estadual do remetente nas entradas e do destinat�rio nas sa�das - 14 d�gitos alfanum�ricos
  if UpperCase(Insc_Est) = 'ISENTO' then
    Result := Result + strcomplete('ISENTO', ' ', 14,1)
  else
  begin
    if Length(formatnumeric(Insc_Est)) = 0 then
      Result := Result + strcomplete('ISENTO', ' ', 14,1)
    else
      Result := Result + strcomplete(formatnumeric(Insc_Est), ' ', 14,1)
  end;

  // Data de emiss�o / utiliza��o  8 dig numericos
  if Length(Data_Emissao_Utilizacao) > 0 then
    Result := Result + FormatDateTime('yyyymmdd', StrToDate(Data_Emissao_Utilizacao))
  else
    raise ErroSintegra.Create('Registro 70: Data emiss�o inv�lida');

  // UF	2 dig. alfanumericos
  if (Length(UF)>0) and (Length(UF)<=2) then
    Result:= Result + UF
  else
  begin
    if Length(UF)=0 then
      Result:=Result+'  '
  end;

  // Modelo	C�digo do modelo do documento fiscal	2  dig. numericos
  {**********************************************************************
  Tabela de Modelos de Documentos Fiscais
  C�DIGO	MODELO
  24	Autoriza��o de Carregamento e Transporte, modelo 24
  14	Bilhete de Passagem Aquavi�rio, modelo 14
  15	Bilhete de Passagem e Nota de Bagagem, modelo 15
  16	Bilhete de Passagem Ferrovi�rio, modelo 16
  13	Bilhete de Passagem Rodovi�rio, modelo 13
  10	Conhecimento A�reo, modelo 10
  11	Conhecimento de Transporte Ferrovi�rio de Cargas, modelo 11
  09	Conhecimento de Transporte Aquavi�rio de Cargas, modelo 9
  08	Conhecimento de Transporte Rodovi�rio de Cargas, modelo 8
  17	Despacho de Transporte, modelo 17
  25	Manifesto de Carga, modelo 25
  01	Nota Fiscal, modelo 1
  06	Nota Fiscal/Conta de Energia El�trica, modelo 6
  21	Nota Fiscal de Servi�o de Comunica��o, modelo 21
  04	Nota Fiscal de Produtor, modelo 4
  22	Nota Fiscal de Servi�o de Telecomunica��es, modelo 22
  07	Nota Fiscal de Servi�o de Transporte, modelo 7
  02	Nota Fiscal de Venda a Consumidor, modelo 02
  20	Ordem de Coleta de Carga, modelo 20
  18	Resumo Movimento Di�rio, modelo 18
  99	Outros
  ***********************************************************************}

  if (Length(Modelo)>0) and (Length(Modelo)<=2) then
  begin
    if Checknumeric(Modelo) then
      Result:= Result + FormatFloat('00', StrToFloat(Modelo))
    else
      raise ErroSintegra.Create('Registro 70: Modelo Inv�lido');
  end
  else
    raise ErroSintegra.Create('Registro 70: Modelo Nulo');

  // S�rie - 1 dig. alfanumerico
  if Length(Serie)=1 then
    Result:= Result + Serie
  else
    raise ErroSintegra.Create('Registro 70: Serie Inv�lido');

  //subs�rie - 2 dig. alfanumericos
  if Length(SubSerie) > 0 then
    Result:= Result + Strcomplete(SubSerie, ' ', 2,1)
  else
    raise ErroSintegra.Create('Registro 70: SubSerie Nula');

  // N�mero  - 6 dig. numerico
  if (Length(Nro)> 0) and (Length(Nro)<=6) then
  begin
    if Checknumeric(Nro) then
      Result:= Result + FormatFloat('000000', StrToFloat(Nro))
    else
      raise ErroSintegra.Create('Registro 70: N�mero Documento');
  end
  else
    raise ErroSintegra.Create('Registro 70: N�mero Documento');

  // CFOP    4 d�g. numericos
  if Length(Formatnumeric(CFOP))=4 then
    Result:= Result + Formatnumeric(CFOP)
  else
    raise ErroSintegra.Create('Registro 70: CFOP Iv�lido');

  // Valor total do documento 13 dig. numericos (2 decimais)
  if Length(Valor_Total)> 0 then
  begin
    if Checknumeric(Valor_Total) then
      Result:= Result + FormatFloat('0000000000000', StrToFloat(Valor_Total) * 100)
    else
      raise ErroSintegra.Create('Registro 70: Valor Total Inv�lido');
  end
  else
    raise ErroSintegra.Create('Registro 70: Valor Total Nulo');

  // Base de C�lculo do ICMS	 14 dig. nuemricos (2 decimais)
  if Length(Base_ICMS)> 0 then
  begin
    if Checknumeric(Base_ICMS) then
      Result:= Result + FormatFloat('00000000000000', StrToFloat(Base_ICMS) * 100)
    else
      raise ErroSintegra.Create('Registro 70: Base ICMS Inv�lido');
  end
  else
    raise ErroSintegra.Create('Registro 70: Base ICMS Nulo');

  // Valor do ICMS            14 dig. numericos (2 decimais)
  if Length(Valor_ICMS)> 0 then
  begin
    if Checknumeric(Valor_ICMS) then
      Result:= Result + FormatFloat('00000000000000', StrTofloat(Valor_ICMS)* 100)
    else
      raise ErroSintegra.Create('Registro 70: Valor ICMS Inv�lido');
  end
  else
    raise ErroSintegra.Create('Registro 70: Valor ICMS Nulo');

  // Isenta ou n�o-tributada	 14 dig. numericos (2 decimais)
  if Length(Isenta)> 0 then
  begin
    if Checknumeric(Isenta) then
      Result:= Result + FormatFloat('00000000000000', StrToFloat(Isenta) * 100)
    else
      raise ErroSintegra.Create('Registro 70: Isenta Inv�lida');
  end
  else
    raise ErroSintegra.Create('Registro 70: Isenta Nula');

  // Outras	Valor que n�o confira d�bito ou cr�dito do ICMS 14 dig. (2 decimais)
  if Length(Outras) > 0 then
  begin
    if Checknumeric(Outras) then
      Result:= Result + FormatFloat('00000000000000', StrToFloat(Outras) * 100)
    else
      raise ErroSintegra.Create('Registro 70: Outras Inv�lida');
  end
  else
    raise ErroSintegra.Create('Registro 70: Outras Nula');

  // CIF/FOB	Modalidade do frete �1� = CIF ou �2� = FOB - 1 dig numerico
  if Length(CIF_FOB)>0 then
  begin
    if Length(CIF_FOB)>1 then
    begin
      if CIF_FOB = 'CIF' then
        Result:= Result + '1'
      else
      begin
        if CIF_FOB = 'FOB' then
          Result:= Result + '2'
        else
          raise ErroSintegra.Create('Registro 70 CIF/FOB inv�lido');
      end;
    end
    else
      if Checknumeric(CIF_FOB) then
        Result:= Result+ CIF_FOB
      else
        raise ErroSintegra.Create('Registro 70 CIF/FOB inv�lido');
  end
  else
    raise ErroSintegra.Create('Registro 70: CIF/FOB nulo');

  // Situa��o    1 dig. alfanumerico
  {*******************************************************
  Documento Fiscal Normal	N
  Documento Fiscal Cancelado	S
  Lan�amento Extempor�neo de Documento Fiscal Normal	E
  Lan�amento Extempor�neo de Documento Fiscal Cancelado	X
  ********************************************************}

  if Length(Situacao)=1 then
    Result:= Result + Situacao
  else
    raise ErroSintegra.Create('Registro 70: Situa��o inv�lida');

  AddRegistro('70');
end;

function Registro71(const CNPJ, Insc_Est_Tomador, Data_Emissao_Conhecimento, UF_Tomador,
  Modelo_Conhecimento, Serie, SubSerie, Nro_Conhecimento,
  UF_Remetente_Destinatario, CNPJ_Remetente_Destinatario,
  Insc_Est_Remetente_Destinatario, Data_Emissao_NF,
  Modelo_NF, Serie_NF,
  Nro_NF, Valor_Total_NF, Brancos: ShortString): ShortString;
begin
end;

function Registro74(Data_Inventario, Cod_Produto, Quantidade, Valor_Produto,
  Cod_Posse, CNPJ_Possuidor, Insc_Est_Possuidor,
  UF_Possuidor: ShortString): ShortString;
begin
  Result := '74';
  //Data do Invent�rio no formato AAAAMMDD - 8 d�gitos num�ricos
  if (Length(formatnumeric(Data_Inventario)) > 0) and
    (Length(formatnumeric(Data_Inventario)) <= 8) then
    Result := Result + FormatDateTime('yyyymmdd', StrToDate(Data_Inventario))
  else
    raise ErroSintegra.Create('Erro registro 74 : Data Invent�rio inv�lida.');

  //C�digo do produto do informante - 14 d�gitos alfanum�ricos

  if (Length(Cod_Produto) > 0) and (Length(Cod_Produto) <= 14) then
  begin
    Result := Result + strcomplete(Cod_Produto, ' ', 14,1);
    Additem75(Cod_Produto);
  end
  else
    raise ErroSintegra.Create('Erro registro 74 : C�digo Produto inv�lido.');

  //Quantidade do produto (com 3 decimais) - 13 d�gitos num�ricos

  if (Length(Quantidade) > 0) and (Length(formatnumeric(Quantidade)) <= 13) then
  begin
    if checknumeric(Quantidade) then
      Result := Result + FormatFloat('0000000000000', StrToFloat(Quantidade) * 1000)
    else
      raise ErroSintegra.Create('Erro registro 74: A Quantidade dever� ter somente caracteres num�ricos.');
  end
  else
    raise ErroSintegra.Create('Erro registro 74: Quantidade inv�lido.');

  //Valor bruto do produto (valor unit�rio multiplicado por quantidade) - com 2 decimais - 13 d�gitos num�ricos
  if (Length(Valor_Produto) > 0) and (Length(formatnumeric(Valor_Produto)) <= 13) then
  begin
    if checknumeric(Valor_Produto) then
      Result := Result + FormatFloat('0000000000000', StrToFloat(Valor_Produto) * 100)
    else
      raise ErroSintegra.Create(
        'Erro registro 74: O Valor do produto dever� ter somente caracteres num�ricos.');
  end
  else
    raise ErroSintegra.Create('Erro registro 74: Valor do Produto inv�lido.');


  //C�digo de Posse das Mercadorias Inventariadas, conforme tabela abaixo - 1 d�gito alfanum�rico
       {------------------------------------------------------------------------
        C�digo	Descri��o da posse das mercadorias inventariadas
        ------------------------------------------------------------------------
        1	Mercadorias de propriedade do Informante e em seu poder
        2	Mercadorias de propriedade do Informante em poder de terceiros
        3	Mercadorias de propriedade de terceiros em poder do Informante
        ------------------------------------------------------------------------}
  if Length(Cod_Posse) = 1 then
  begin
    if (Cod_Posse = '1') or (Cod_Posse = '2') or (Cod_Posse = '3') then
      Result := Result + Cod_Posse
    else
      raise ErroSintegra.Create('Erro registro 74: O C�digo de posse das mercadorias deve seguir a sistem�tica abaixo:'
        + #13#13 +
        '------------------------------------------------------------------------' +
        #13 +
        'C�digo	Descri��o da posse das mercadorias inventariadas' +
        #13 +
        '------------------------------------------------------------------------' +
        #13 +
        '1	Mercadorias de propriedade do Informante e em seu poder' +
        #13 +
        '2	Mercadorias de propriedade do Informante em poder de terceiros' +
        #13 +
        '3	Mercadorias de propriedade de terceiros em poder do Informante');
  end
  else
    raise ErroSintegra.Create('Erro registro 74: C�digo de posse inv�lido inv�lido.');

  //CNPJ do Possuidor da Mercadoria de propriedade do Informante,
  //ou do propriet�rio da Mercadoria em poder do Informante - 14 d�gitos num�ricos
  if (Length(formatnumeric(CNPJ_Possuidor)) > 0) and
    (Length(formatnumeric(CNPJ_Possuidor)) <= 14) then
    Result := Result + formatnumeric(CNPJ_Possuidor)
  else
    raise ErroSintegra.Create('Erro registro 74: CNPJ do Possuidor inv�lido.');

  //Inscri��o Estadual do Possuidor da Mercadoria de propriedade do Informante,
  // ou do propriet�rio da Mercadoria em poder do Informante - 14 d�gitos alfanum�ricos
  if Length(formatnumeric(Insc_Est_Possuidor)) <= 14 then
  begin
    if (UpperCase(Insc_Est_Possuidor) = 'ISENTO') or (Length(Insc_Est_Possuidor) = 0) then
      Result := Result + strcomplete(UpperCase(Insc_Est_Possuidor), ' ', 14,1)
    else
      Result := Result + strcomplete(formatnumeric(Insc_Est_Possuidor), ' ', 14,1);
  end
  else
    raise ErroSintegra.Create('Erro registro 74: Inscri��o Estadual do Possuidor inv�lido.');

  //Unidade da Federa��o do Possuidor da Mercadoria de propriedade do Informante,
  //ou do propriet�rio da Mercadoria em poder do Informante - 2 d�gitos alfanum�ricos
  if Length(UF_Possuidor) = 2 then
    Result := Result + UF_Possuidor
  else
    raise ErroSintegra.Create('Erro registro 74: UF do Possuidor inv�lido.');

  //Brancos 45 d�gitos

  Result := Result + strcomplete(' ', ' ', 45,1);
  AddRegistro('74');
end;

function Registro75(Data_Inicial, Data_Final, Cod_Produto_Servico, Cod_NCM, Descricao,
  UND_Medida, Aliquota_IPI, Aliquota_ICMS, Reducao_Base_ICMS,
  Base_ICMS: ShortString): ShortString;
begin
  Result := '75';
  //Data  inicial do per�odo de validade das informa��es - 8 d�gitos num�ricos
  if (Length(FormatDateTime('yyyymmdd', StrToDate(Data_Inicial))) > 0) and
    (Length(FormatDateTime('yyyymmdd', StrToDate(Data_Inicial))) <= 8) then
    Result := Result + FormatDateTime('yyyymmdd', StrToDate(Data_Inicial))
  else
    raise ErroSintegra.Create('Registro 75: Data Inicial inv�lida.');

  //Data final do per�odo de validade das informa��es - 8 d�gitos num�ricos
  if (Length(FormatDateTime('yyyymmdd', StrToDate(Data_Final))) > 0) and
    (Length(FormatDateTime('yyyymmdd', StrToDate(Data_Final))) <= 8) then
    Result := Result + FormatDateTime('yyyymmdd', StrToDate(Data_Final))
  else
    raise ErroSintegra.Create('Registro 75: Data Final inv�lida.');

  //C�digo do produto ou servi�o utilizado pelo contribuinte - 13 d�gitos Alfanum�ricos
  if (Length(Cod_Produto_Servico) > 0) and (Length(Cod_Produto_Servico) <= 14) then
    Result := Result + Strcomplete(Cod_Produto_Servico, ' ', 14,1)
  else
    raise ErroSintegra.Create('Registro 75: C�digo Produto/Servi�o inv�lido.');


  //Codifica��o da Nomenclatura Comum do Mercosul - 8 d�gitos Alfanum�ricos
  if (Length(Cod_NCM) > 0) and (Length(Cod_NCM) <= 8) then
    Result := Result + Strcomplete(Cod_NCM, ' ', 8,1)
  else
    raise ErroSintegra.Create('Registro 75: Codifica��o da Nomenclatura Comum do Mercosul inv�lido.');

  descricao := copy(descricao,1,53);

  //Descri��o do produto ou servi�o  - 53 d�gitos Alfanum�ricos
  if (Length(Descricao) > 0) and (Length(Descricao) <= 53) then
    Result := Result + Strcomplete(Descricao, ' ', 53,1)
  else if Length(Descricao) > 53 then
    Result := Result + Copy(Descricao, 1, 53)
  else
    raise ErroSintegra.Create('Registro 75: Descri��o do Produto inv�lida.');

  //Unidade de medida de comercializa��o do produto ( un, kg, mt, m3, sc, frd, kWh, etc..) - 6 d�gitos Alfanum�ricos
  if (Length(UND_Medida) <= 6) then
  begin
    if (Length(UND_Medida) = 0)  then
      Result := Result + Strcomplete('UN', ' ', 6,1)
    else
      Result := Result + Strcomplete(UND_Medida, ' ', 6,1);
  end
  else
    raise ErroSintegra.Create('Registro 75: Unidade de medida inv�lida.');

  //Al�quota do IPI do produto (com    2 decimais) - 5 d�gitos num�ricos
  if (Length(Formatnumeric(Aliquota_IPI)) > 0) and
    (Length(Formatnumeric(Aliquota_IPI)) <= 5) then
    Result := Result + FormatFloat('00000', StrToFloat(Formatnumeric(Aliquota_IPI))* 100)
  else
    raise ErroSintegra.Create('Registro 75: Al�quota do IPI inv�lida. >>' + Aliquota_IPI);
//    showmessage(Aliquota_IPI);


  if (Length(Formatnumeric(Aliquota_ICMS)) > 0) and
    (Length(Formatnumeric(Aliquota_ICMS)) <= 4) then begin

    if strtofloat(Aliquota_ICMS)>100 then
       Result := Result + FormatFloat('0000', StrToFloat(Aliquota_ICMS))
    else
       Result := Result + FormatFloat('0000', StrToFloat(Aliquota_ICMS)* 100);

  end else
    raise ErroSintegra.Create('Registro 75: Al�quota do ICMS inv�lida.');

  //% de Redu��o na base de c�lculo do ICMS, nas opera��es internas (com 2 decimais) - 5 d�gitos num�ricos
  if (Length(Formatnumeric(Reducao_Base_ICMS)) > 0) and
    (Length(Formatnumeric(Reducao_Base_ICMS)) <= 5) then
  begin
    if StrToFloat(Reducao_Base_ICMS) > 100 then
      Result := Result + FormatFloat('00000', StrToFloat(Reducao_Base_ICMS))
    else
      Result := Result + FormatFloat('00000', StrToFloat(Reducao_Base_ICMS) * 100);
  end
  else
    raise ErroSintegra.Create('Registro 75: Redu��o da Base de C�lculo do ICMS inv�lido.');

  //Base de C�lculo do ICMS de substitui��o tribut�ria (com 2 decimais) - 13 d�gitos num�rico
  if (Length(Formatnumeric(Base_ICMS)) > 0) and (Length(Formatnumeric(Base_ICMS)) <= 13) then
    Result := Result + FormatFloat('0000000000000', StrToFloat(Base_ICMS) * 100)
  else
    raise ErroSintegra.Create('Registro 75: Base de C�lculo do ICMS inv�lido.');

  addRegistro('75');
end;

function Registro90: TStrings;
var
  Tempstr: string;
  Count, count_90, rec: integer;
  Reg_temp: TStrings;
begin
  Reg_temp := TStringList.Create;
  try
    rec := 0;                    
    TempStr := '90';
    TempStr := TempStr + CNPJ_emissor + IE_emissor;
    // if Length(Reg_90) > 8 then
    for Count := 0 to Length(Reg_90) - 1 do
    begin
      if (Reg_90[Count].Reg <> '10') and (Reg_90[Count].Reg <> '11') then
        // Tempstr:= Tempstr +  Reg_90[count].Reg + FormatFloat('00000000', Reg_90[count].Qtd);
        Reg_temp.Add(Tempstr + Reg_90[Count].Reg + FormatFloat('00000000',
          Reg_90[Count].Qtd));
      rec := rec + Reg_90[Count].Qtd;
    end;
    count_90 := Reg_Temp.Count + 1;
    Reg_temp.Add(Tempstr + '99' + FormatFloat('00000000', rec + count_90));

    for Count := 0 to Reg_temp.Count - 1 do
    begin
      Reg_temp[Count] := Strcomplete(Reg_temp[Count], ' ', 125,1);
      Reg_temp[Count] := Reg_temp[Count] + IntToStr(count_90);
    end;

  finally
    Result := Reg_temp;
    //Reg_temp.Free;
  end;
end;

end.
