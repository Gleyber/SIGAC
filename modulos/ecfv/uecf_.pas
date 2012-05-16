unit uecf_;

interface

uses
  windows, Dialogs, Classes, Inifiles, Sysutils, Forms, Controls, variants,
  ZDataset,shellapi;
                                    
type
  ErroImpressora = class(Exception);

  TMarcaEcf = (Bematech, Yanco, Daruma);

  TRecOfAliquota = record
    Aliq: extended;
    VrTotal: extended;
  end;

  TAliquota = array of TRecOfAliquota;

  TTotParciais = class(TObject)
    protected
      FAliquota: TAliquota;
      FIsentos: Extended;
      FCancelamentos: Extended;
      FNumCancelamentos: Integer;
      FDescontos: Extended;
      FNaoIncidencia: Extended;
      FSubstituicao: Extended;
      FTotNaoSujeitos: Extended;
      FSangria: Extended;
      FSuprimento: Extended;
      FGrandeTotal: Extended;
      function FVendaBruta: Extended;
    published
      property Aliquotas:TAliquota read FAliquota;
      property Isentos: Extended read FIsentos;
      property Cancelamentos: Extended read FCancelamentos;
      property NumCancelamentos: Integer read FNumCancelamentos;
      property Descontos: Extended read FDescontos;
      property NaoIncidencia: Extended read FNaoIncidencia;
      property Substituicao: Extended read FSubstituicao;
      property TotNaoSujeitos: Extended read FTotNaoSujeitos;
      property Sangria: Extended read FSangria;
      property Suprimento: Extended read FSuprimento;
      property VendaBruta: Extended read FVendaBruta;
      property GrandeTotal: extended read FGrandeTotal;
      procedure DecodeTotalizadoresParciais(const strin:string; const aliq:TStrings);
      procedure SetDescontos(const sDesc:string);
      procedure SetCancelamentos(const sCanc: string);
  end;

  //ECF
  TEcf = class(TObject)
  protected
    FTotParciais:TTotParciais;
    FMarca:TMarcaEcf;
    FPorta: string;
    FNumCupom: Integer;
    PaperWarning:Boolean;
    MFD:Boolean;

    function Retorno_Impressora: string;
    function Analisa_iRetorno: string;
    procedure Setmarca(Value: TMarcaEcf);
    procedure Verifica_Impressao;
    procedure ImpFiscalDesabilitada;
    procedure SetTotaisParciais;
    function GetTotalCancelamento: string;
    function GetTotalizaodresParciais :String;
    function GetTotalDescontos: string;

  public
    procedure fechaporta;
    function GetNumCaixa: string;
    function GetNumSerie: string;
    function GetCRO: string;
    function GetCRZ: string;
    function GetGrandeTotal: string;

    function GetFlagsFiscal: integer;
    function GetNumCancelamento: string;
    function GetDadosUltimaReducaoZ: string;
    function GetAliquotas:TStrings;
    function GetNumCupom: string;
    function GetDescFormasPgto: Tstrings;
    function GetDataReducaoZ: TDateTime;
    function GetCancelamentoUltimaRZ: String;
    function CheckCupomAberto:boolean;
    function Registradores:string;
    procedure AbreGaveta;
    procedure Sangria(const value:double);
    procedure Suprimento(const value:double; const descricao:string);
    procedure AbreCupom(cnpj: string);
    procedure Vendeitem(const cod, descricao, Aliq: string; const VrUnit,
      qtd, Desconto: double);
    procedure CancelaItem(const item: string);
    procedure IniciaFechamentoCupom(const AcrescimoDesconto,
      TipoAcrescimoDesconto: string; const VrAcrescimoDesconto: double);
    procedure EfetuaFormaPagamento (const FormaPagamento:string;
      const ValorFormaPagamento: double);
    procedure TerminaFechamentoCupom(const obs:Tstrings);
    procedure FechaVenda(const FormaPgto, AcrescimoDesconto,
      TipoAcrescimoDesconto, Obs: string; const VrAcrescimoDesconto, VrPago: double);
    function CancelaCupom(msg:boolean): string;
    procedure LeituraX;
    procedure ReducaoZ(const Data, Hora: string);
    procedure MemoriaFiscalData;
    procedure MemoriaFiscalDataSerial;
    function VerAliquotas(const aliquota: double): boolean;
    procedure ProgramaHorarioVerao;
    procedure ProgramaArredondamento;
    procedure ProgramaTruncamento;
    function VerificaTruncamento:boolean;
    procedure ProgramaFormaPgto(Forma:string);
    function DataHora:TDateTime;
    function GetDadosSintegra(dtinicial, dtfinal: TDateTime):TStrings;
    procedure UnloadLib;

    constructor Create(Marca_ECF:TMarcaEcf);
    destructor Destroy; override;
  published
    property Marca:TMarcaEcf read FMarca write SetMarca;
    property NumCupom: Integer read FNumCupom;
    property TotParciais: TTotParciais read FTotParciais;
  end;

  //*** Ecf - Interface - Fim ***//

implementation
{$I sigac.inc}

uses
  Funcoes, Umanu, Bemafi32, Daruma32, uecf_aux_, udm;

const
  status1: array [1..8] of string =
    ('Fim de papel.',
    'Pouco papel.',
    'Erro no relógio.',
    'Impressora em erro.',
    'Comando não iniciado com ESC.',
    'Comando Inexistente.',
    'Cupom Aberto.',
    'Número de Parâmetro(s) Inválido(s).');

  status2: array [1..8] of string = ('Tipo de Parâmetro de Comando Inválido.',
    'Memória Fiscal Lotada.',
    'Erro na Memória RAM.',
    'Alíquota não Programada.',
    'Capacidade de Alíquotas Lotada.',
    'Cancelamento não Permitido.',
    'CNPJ/IE do Proprietário Não Programado.',
    'Comando não Executado.');

  Retorno: array [0..18] of string = ('Erro de Comunicação com a Impressora Fiscal!',
    'Erro de Execução na Função. Verifique!',
    'Parâmetro Inválido !',
    'Alíquota não programada !',
    'Arquivo BemaFI32.INI não encontrado. Verifique!',
    'Erro ao Abrir a Porta de Comunicação.',
    'Impressora Desligada ou Desconectada.',
    'Banco Não Cadastrado no Arquivo BemaFI32.ini .',
    'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt .',
    'Não foi possível abrir arquivo INTPOS.001 !',
    'Parâmetro diferentes !',
    'Transação cancelada pelo Operador !',
    'A Transação não foi aprovada !',
    'Não foi possível terminar a Impressão !',
    'Não foi possível terminar a Operação !',
    'Forma de pagamento não programada.',
    'Totalizador não fiscal não programado.',
    'Transação já Efetuada !',
    'Não há Informações para serem Impressas !');

var
  iRetorno: integer;

//************ TTotParciais - Inicio ***************//

procedure TTotParciais.DecodeTotalizadoresParciais(const strin:string; const aliq:TStrings);
var
  count:integer;

  {$IFDEF DEBUG}
  st:TStrings;
  {$ENDIF}
begin
  {$IFDEF DEBUG}
  st:=TStringlist.Create;
  {$ENDIF}
  
  SetLength(FAliquota, 0);
  FIsentos:=0;
  FNaoIncidencia:=0;
  FSubstituicao:=0;
  FSangria:=0;
  FSuprimento:=0;
  FGrandeTotal:=0;

  try
    for count:=0 to 15 do
    begin
      if count = Aliq.Count then
        Break;

      SetLength(FAliquota, Length(FAliquota)+1);
      FAliquota[count].Aliq:= strToFloat(aliq[count])/100;
      FAliquota[count].VrTotal:=strtoFloat(copy(strin, (count*14)+1, 14))/100;

      {$IFDEF DEBUG}
      st.Add(aliq[count]+'-'+FloatToStr(FAliquota[count].VrTotal));
      {$ENDIF}
    end;


    FIsentos:=strToFloat(copy(strin, 226, 14))/100;
    FNaoIncidencia:=strToFloat(copy(strin, 241, 14))/100;
    FSubstituicao:=strToFloat(copy(strin, 256, 14))/100;
    FSangria:=strToFloat(copy(strin, 398, 14))/100;
    FSuprimento:=strToFloat(copy(strin, 413, 14))/100;
    FGrandeTotal:=strToFloat(copy(strin, 428, 18))/100;

  finally
    {$IFDEF DEBUG}
    st.add('Isentos='+FloatToStr(Isentos));
    st.add('Descontos='+FloatToStr(Descontos));
    st.add('Cancelamentos='+FloatToStr(Cancelamentos));
    st.add('NaoIncidencia='+FloatToStr(NaoIncidencia));
    st.add('Substituicao='+FloatToStr(Substituicao));
    st.add('Sangria='+FloatToStr(Sangria));
    st.add('Suprimento='+FloatToStr(Suprimento));
    st.add('Venda Bruta='+FloatToStr(VendaBruta));
    st.add('GrandeTotal='+FloatToStr(GrandeTotal));
    st.add(strin);
    st.SaveToFile('c:\totp.txt');
    st.Free;
    {$ENDIF}

  end;
end;

procedure TTotParciais.SetDescontos(const sDesc: string);
begin
  if Length(sDesc)<>0 then
    FDescontos:=StrToFloat(sDesc)/100
  else
    FDescontos:=0;

end;

procedure TTotParciais.SetCancelamentos(const sCanc: string);
begin
  if Length(sCanc)<>0 then
    FCancelamentos:= StrToFloat(sCanc)/100
  else
    FCancelamentos:=0;
end;

function TTotParciais.FVendaBruta:Extended;
var
  count:integer;
begin
  Result:=0;
  for count :=0 to length(ALiquotas)-1 do
    Result:= Result + Aliquotas[count].VrTotal;

  Result:=Result+Isentos;
  Result:=Result+Substituicao;
  Result:=Result+Cancelamentos;
  Result:=Result+Descontos;
  Result:=Result+NaoIncidencia;
end;



//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
//************ TTotParciais - Fim ***************//
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//

//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
//************ TEcf - Inicio ***************//
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//

constructor TEcf.Create(Marca_ECF: TMarcaEcf);
begin
  inherited Create;
  FTotParciais:=TTotParciais.Create;
  PaperWarning:=false;

  if Marca_ECF <> NULL then
    FMarca:= Marca_ECF;

  MFD:=CheckMFD;

  if ImpFiscal then
  begin
    case FMarca of
      Bematech, Yanco: if Load_Bemafi32=0 then ErroDll_Bemafi32;
      Daruma: if Load_Daruma32=0 then ErroDll_Daruma32;
    end;
    FNumCupom:=StrToInt(GetNumCupom);

    {$IFNDEF DEBUG}
    if (((Now() - DataHora) * 1440) > 15) or (((Now() - DataHora) *1440)<=-15) then
      raise Exception.Create(Pchar('A diferença entre a hora do computador e ECF deve ter, por lei, no máximo 15 min.'+#13+
                                   'Hora da ECF:'+ DateTimeToStr(DataHora)));
    {$ENDIF}

    SetTotaisParciais;
  end;
end;


destructor TEcf.Destroy;
begin
  inherited Destroy;
  if ImpFiscal then fechaporta;
end;


function TEcf.Analisa_iRetorno: string;
begin
  case iRetorno of
    0: Result := retorno[0]; -1: Result := retorno[1]; -2: Result := retorno[2];
    -3: Result := retorno[3]; -4: Result := retorno[4]; -5: Result := retorno[5];
    -6: Result := retorno[6]; -7: Result := retorno[7]; -8: Result := retorno[8];
    -18: Result := retorno[9]; -19: Result := retorno[10]; -20: Result := retorno[11];
    -21: Result := retorno[12]; -22: Result := retorno[13]; -23: Result := retorno[14];
    -24: Result := retorno[15]; -25: Result := retorno[16]; -26: Result := retorno[17];
    -28: Result := retorno[18];
  end;
end;

function TEcf.Retorno_Impressora: string;
var
  iACK, iST1, iST2, stat1, stat2: integer;
begin
  iACK := 0;
  iST1 := 0;
  iST2 := 0;
  stat1 := 0;
  stat2 := 0;

  case FMarca of
    Bematech, Yanco: iRetorno := Bematech_FI_RetornoImpressora(iACK, iST1, iST2);
    Daruma: iRetorno := Daruma_FI_RetornoImpressora(iACK, iST1, iST2);
  end;

  if iACK = 6 then
  begin
    // Verifica ST1

    if iST1 >= 128 then
    begin
      iST1 := iST1 - 128;
      stat1 := 1;
      Result := Result + status1[stat1] + #13;
    end;
    if iST1 >= 64 then
    begin
      iST1 := iST1 - 64;
      stat1 := 2;
      Result := Result + status1[stat1] + #13;
    end;
    if iST1 >= 32 then
    begin
      iST1 := iST1 - 32;
      stat1 := 3;
      Result := Result + status1[stat1] + #13;
    end;
    if iST1 >= 16 then
    begin
      iST1 := iST1 - 16;
      stat1 := 4;
      Result := Result + status1[stat1] + #13;
    end;
    if iST1 >= 8 then
    begin
      iST1 := iST1 - 8;
      stat1 := 5;
      Result := Result + status1[stat1] + #13;
    end;
    if iST1 >= 4 then
    begin
      iST1 := iST1 - 4;
      stat1 := 6;
      Result := Result + status1[stat1] + #13;
    end;
    if iST1 >= 2 then
    begin
      iST1 := iST1 - 2;
      stat1 := 7;
      Result := Result + status1[stat1] + #13;
    end;
    if iST1 >= 1 then
    begin
      iST1 := iST1 - 1;
      stat1 := 8;
      Result := Result + status1[stat1] + #13;
    end;

    // Verifica ST2

    if iST2 >= 128 then
    begin
      iST2 := iST2 - 128;
      stat2 := 1;
      Result := Result + status2[stat2] + #13;
    end;
    if iST2 >= 64 then
    begin
      iST2 := iST2 - 64;
      stat2 := 2;
      Result := Result + status2[stat2] + #13;
    end;
    if iST2 >= 32 then
    begin
      iST2 := iST2 - 32;
      stat2 := 3;
      Result := Result + status2[stat2] + #13;
    end;
    if iST2 >= 16 then
    begin
      iST2 := iST2 - 16;
      stat2 := 4;
      Result := Result + status2[stat2] + #13;
    end;
    if iST2 >= 8 then
    begin
      iST2 := iST2 - 8;
      stat2 := 5;
      Result := Result + status2[stat2] + #13;
    end;
    if iST2 >= 4 then
    begin
      iST2 := iST2 - 4;
      stat2 := 6;
      Result := Result + status2[stat2] + #13;
    end;
    if iST2 >= 2 then
    begin
      iST2 := iST2 - 2;
      stat2 := 7;
      Result := Result + status2[stat2] + #13;
    end;
    if iST2 >= 1 then
    begin
      iST2 := iST2 - 1;
      stat2 := 8;
      Result := Result + status2[stat2] + #13;
    end;
  end
  else if iACK = 21 then Result := 'Atenção!!!' + #13 + 'A Impressora retornou NAK.';
end;

procedure TEcf.Verifica_Impressao;
var
  msgiretorno, msgstr: string;
begin
  msgiretorno := Analisa_iRetorno;
  //Retorno_Imp:=Retorno_Impressora;

  if (iRetorno <> 1) or (Length(Retorno_Impressora) > 1) then
  begin
    msgstr:= Retorno_Impressora;
    if Length(StrPos(PChar(msgstr), PChar(status1[7]))) > 0 then
      Application.MessageBox(PChar(msgstr + #13 +
                              'Será utilizado este cupom.'), 'Cupom já Aberto.', 0 + 64)
    else
    begin
      msgstr:= Retorno_Impressora;
      if (Length(StrPos(PChar(msgstr), PChar(status1[2]))) > 0) then
      begin
        if not PaperWarning then
        begin
          Application.MessageBox(Pchar(msgstr), 'ECF - Atenção...', 0+48);
          PaperWarning:=True;
        end;
      end
      else
        raise ErroImpressora.Create(msgiretorno + #13 + Retorno_Impressora+#13+
          'Verifique a Impressora Fiscal.');
    end;
  end;
end;

procedure TEcf.ImpFiscalDesabilitada;
begin
  Application.MessageBox('Não está habilitado o uso de impressora fiscal no programa.',
    'Uso de Imp. Fiscal desabilitado', 0 + 64);
end;

procedure TEcf.SetTotaisParciais;
begin
  FTotParciais.SetDescontos(GetTotalDescontos);
  FTotParciais.SetCancelamentos(GetTotalCancelamento);
  FTotParciais.DecodeTotalizadoresParciais(GetTotalizaodresParciais, GetAliquotas);
end;

procedure TEcf.fechaporta;
begin
  case FMarca of
    Bematech, Yanco: iRetorno := Bematech_FechaPortaSerial;
    Daruma: iRetorno := Daruma_FechaPortaSerial;
  end;
  //Verifica_impressao;
end;

procedure TEcf.Setmarca(Value: TMarcaECF);
begin
  if Value <> FMarca then
    FMarca:= value;
end;

function TEcf.GetNumCaixa:string;
var
  num: string;
  Count: integer;
begin
  Result := '';
  for Count := 1 to 4 do
    num := num + ' ';
  try
    case FMarca of
      Bematech, Yanco: iRetorno := Bematech_FI_NumeroCaixa(num);
      Daruma : iRetorno := Daruma_FI_NumeroCaixa(num);
    end;
    Verifica_Impressao;
  finally
    Result := num;
  end;
end;

function TEcf.GetNumSerie: string;
var
  Count: integer;
  serie: string;
begin
  Result := '';
  for Count := 1 to 20 do
    serie := serie + ' ';
  try
    case FMarca of
      Bematech, Yanco:
      begin
        if MFD then
          iRetorno := Bematech_FI_NumeroSerieMFD(serie)
        else
          iRetorno := Bematech_FI_NumeroSerie(serie);
      end;
      
      Daruma : iRetorno := Daruma_FI_NumeroSerie(serie);
    end;
    
  Verifica_Impressao;
  finally
    Result := serie;
  end;
end;

function TEcf.getCRO: string;
var
  Count: integer;
  CRO: string;
begin
  Result := '';
  for Count := 1 to 4 do
    CRO := CRO + ' ';
  try
    case FMarca of
      Bematech, Yanco: iRetorno := Bematech_FI_NumeroIntervencoes(CRO);
      Daruma: iRetorno := Daruma_FI_NumeroIntervencoes(CRO);
    end;

    Verifica_Impressao;
  finally
    Result := CRO;
  end;
end;

function TEcf.GetCRZ: string;
var
  Count: integer;
  CRZ: string;
begin
  Result := '';
  for Count := 1 to 4 do
    CRZ := CRZ + ' ';
  try
    case FMarca of
      Bematech, Yanco: iRetorno := Bematech_FI_NumeroReducoes(CRZ);
      Daruma : iRetorno:= Daruma_FI_NumeroReducoes(CRZ);
    end;
      Verifica_Impressao;
  finally
    Result := CRZ;
  end;
end;

function TEcf.GetGrandeTotal: string;
var
  Count: integer;
  GrandeTotal: string;
begin
  Result := '';
  for Count := 1 to 18 do
    GrandeTotal := GrandeTotal + ' ';
  try
    case FMarca of
      Bematech, Yanco : iRetorno := Bematech_FI_GrandeTotal(GrandeTotal);
      Daruma: iRetorno := Daruma_FI_GrandeTotal(GrandeTotal);
    end;
    Verifica_Impressao;
  finally
    Result := GrandeTotal;
  end;
end;


function TEcf.GetTotalCancelamento: string;
var
  Count: integer;
  cancelamentos: string;
begin
  for Count := 1 to 14 do
    cancelamentos := cancelamentos + ' ';
  try
    case Fmarca of
      Bematech, Yanco: iRetorno := Bematech_FI_Cancelamentos(Cancelamentos);
      Daruma: iRetorno := Daruma_FI_Cancelamentos(cancelamentos);
    end;
    Verifica_Impressao;
  finally
    Result := cancelamentos;
  end;
end;

function TEcf.GetFlagsFiscal: integer;
var
  Flags: integer;
begin
  Flags := 0;
  try
    case FMarca of
      Bematech, Yanco: iRetorno := Bematech_FI_FlagsFiscais(Flags);
      Daruma: iRetorno := Daruma_FI_FlagsFiscais(Flags);
    end;
    Verifica_Impressao;
  finally
    Result := Flags;
  end;
end;

function TEcf.GetNumCancelamento: string;
var
  Count: integer;
  Cupons: string;
begin
  for Count := 1 to 4 do
    Cupons := Cupons + ' ';
  try
    case FMarca of
      Bematech, Yanco: iRetorno := Bematech_FI_NumeroCuponsCancelados(Cupons);
      Daruma: iRetorno := Daruma_FI_NumeroCuponsCancelados(Cupons);
    end;
      Verifica_Impressao;
  finally
    Result := Cupons;
  end;
end;

function TEcf.GetDadosUltimaReducaoZ: string;
var
  Count: integer;
  DadosReducao: string;
begin
  for Count := 1 to 631 do
    DadosReducao := DadosReducao + ' ';
  try
    case FMarca of
      Bematech, Yanco: iRetorno := Bematech_FI_DadosUltimaReducao(DadosReducao);
      Daruma: iRetorno := Daruma_FI_DadosUltimaReducao(DadosReducao);
    end;
    Verifica_Impressao;
  finally
    Result := DadosReducao;
  end;
end;

function TEcf.GetDataReducaoZ: TDateTime;
var
  Data, Hora:string;
begin
  SetLength(Data, 6);
  SetLength(Hora, 6);
  try
    case FMarca of
      Bematech, Yanco: iRetorno:= Bematech_FI_DataHoraReducao(Data, Hora);
      Daruma: iRetorno:= Daruma_FI_DataHoraReducao(Data, Hora);
    end;
    if iRetorno <> 1 then
      Verifica_Impressao;
  finally
    if Data<>'000000' then
      Result:= StrToDateTime(Copy(Data, 1,2)+'/'+
                             Copy(data, 3, 2)+'/'+
                             Copy(Data, 5, 2)+' '+
                             Copy(Hora, 1, 2)+':'+
                             Copy(Hora, 3, 2)+':'+
                             Copy(Hora, 5, 2))
    else
      Result:=0;

  end;
end;

function TEcf.GetCancelamentoUltimaRZ: String;
begin
  Result:=Copy(GetDadosUltimaReducaoZ,23,14);
end;

function TEcf.GetAliquotas:TStrings;
var
  cAliquotas: String;
  count, mark, caliq, iConta: Integer;
  Aliq:TStrings;
Begin
  mark:=0;
  caliq:=0;

  Aliq:=TStringList.Create;

  for iConta := 1 To 79 Do
    cAliquotas := cAliquotas + ' ';
  try
    case FMarca of
      Bematech, Yanco: iRetorno := Bematech_FI_RetornoAliquotas(cAliquotas);
      Daruma: iRetorno := Daruma_FI_RetornoAliquotas(cAliquotas);
    end;

    Verifica_Impressao;
    
    for count:=0 to Length(cAliquotas) -1 do
    begin
      if (count >0) and ((cAliquotas[count]=',') or (cAliquotas[count]=#0)) then
      begin
        Aliq.Add(Copy(cAliquotas,mark+1, count-mark-1));
        mark:=count;
        inc(caliq);
        if (cAliquotas[count]=#0) then break;
      end;
    end;

    if FMarca = Daruma then
      for count:=0 to Aliq.Count -1 do
        Aliq[count]:= FormatFloat('0000', StrToInt(Aliq[count])*100);  

  finally
    Result:=Aliq;
  end;
end;

function TEcf.GetNumCupom: string;
var
  Count: integer;
  cupom: string;
begin
  Result := '';
  for Count := 1 to 6 do
    cupom := cupom + ' ';
  try
    case FMarca of
      Bematech, Yanco: iRetorno := Bematech_FI_NumeroCupom(cupom);
      Daruma: iRetorno:= Daruma_FI_NumeroCupom(cupom);
    end;
    if iRetorno <> 1 then Verifica_Impressao;
  finally
    Result := cupom;
  end;
end;

function TEcf.GetDescFormasPgto: Tstrings;
const
  LENGTH_DARUMA=1027;
  LENGTH_BEMATECH=3016;
var
  Formas: string;
  count, tam: integer;
  Desc_Formas:TStrings;
begin
  Desc_Formas:=TStringList.Create;
  tam:=0;
  try
    case FMarca of
      Bematech, Yanco:
      begin
        setlength(Formas,LENGTH_BEMATECH);
        iRetorno:= Bematech_FI_VerificaFormasPagamento(Formas);
      end;

      Daruma:
      begin
        setlength( Formas,LENGTH_DARUMA);
        iRetorno:= Daruma_FI_VerificaFormasPagamentoEx(Formas);
      end;
    end;
    Verifica_Impressao;

    //Recupera as descrições das formas de pagamento
    //Daruma - Último caracter = ','
    //Bematech - Último caracter = #0

    for count:=0 to Length(Formas) do
      if (Formas[count] in [',', '.']) or (count = LENGTH_BEMATECH) then
      begin
        if tam=0 then
          tam:=count-1;
        if Length(TrimRight(Copy(Formas, count-tam, 16))) > 0 then
          Desc_Formas.Add(TrimRight(Copy(Formas, count-tam, 16)));
      end;

    //Remove as duas últimas(Recebido e Troco)
    for count := 1 to 2 do
      Desc_Formas.Delete(Desc_Formas.Count - 1);

  finally
    Result:=Desc_Formas;
  end;
end;

function TEcf.CheckCupomAberto:boolean;
var
  iRetorno: Integer;
  iACK, iST1, iST2:Integer;
begin
  Result:=False;
  case FMarca of
    Bematech, Yanco: iRetorno := Bematech_FI_VerificaEstadoImpressora(iACK, iST1, iST2);
    Daruma: iRetorno := Daruma_FI_VerificaEstadoImpressora(iACK, iST1, iST2);
  end;

  if iST1 = 2 then
    Result:=True;

end;

function TECF.Registradores:string;
var
   Ret:string;
   count: integer;
begin
  Result:='';
  for count:=1 to 400 do
    Ret:=Ret+' ';

  case FMarca of
    Bematech, Yanco: iRetorno:= Bematech_FI_RetornaRegistradoresFiscais(Ret);
    Daruma: iRetorno:= Daruma_FI_RetornaRegistradoresFiscais(Ret);
  end;
  if iRetorno <> 1 then
    Verifica_Impressao;
  Result:= Ret;
end;


procedure TEcf.AbreGaveta;
var
  estado:integer;
begin
  if ImpFiscal and Gaveta then
  begin
    try
      case FMarca of
        Bematech, Yanco: iRetorno:= Bematech_FI_VerificaEstadoGaveta(estado);
        Daruma: iRetorno:= Daruma_FI_VerificaEstadoGaveta(estado);
      end;
      Verifica_Impressao;
      if estado = 1 then
      begin
        case FMarca of
          Bematech, Yanco: iretorno:=Bematech_FI_AcionaGaveta;
          Daruma: iRetorno:= Daruma_FI_AcionaGaveta;
        end;
        Verifica_Impressao;
      end;
    except
      raise Exception.Create('Não foi possível abrir a gaveta!!!');
    end;
  end;
end;

procedure TEcf.sangria(const value:double);
begin
  if (value > 0) and (ImpFiscal) then
  begin
    try
      case FMarca of
        Bematech, Yanco:iRetorno := Bematech_FI_Sangria(Pchar(FormatFloat('##00.00', value)));
        Daruma: iRetorno := Daruma_FI_Sangria(Pchar(FormatFloat('##00.00', value)));
      end;
      Verifica_Impressao;
    except
      raise Exception.Create('Verifique a impresora Fiscal. Não foi possível registrar a sangria.');
    end;
  end;
end;

procedure TEcf.Suprimento(const value:double; const descricao:string);
begin
  if (value > 0) and (ImpFiscal) then
  begin
    try
      case Fmarca of
        Bematech, Yanco:iRetorno :=
          Bematech_FI_Suprimento(Pchar(FormatFloat('##00.00', value)), Pchar(descricao));
        Daruma: iRetorno:=
          Daruma_FI_Suprimento(Pchar(FormatFloat('##00.00', value)), Pchar(descricao));
      end;
      Verifica_Impressao;
    except
      raise Exception.Create('Verifique a impresora Fiscal. Não foi possível registrar o suprimento.');
    end;
  end;
end;

//Cupom Fiscal
procedure TEcf.AbreCupom(cnpj: string);
begin
  if ImpFiscal then
  begin
    case FMarca of
      Bematech, Yanco: iRetorno := Bematech_FI_AbreCupom(PChar(cnpj));
      Daruma: iRetorno:= Daruma_FI_AbreCupom(pchar(cnpj));
    end;
    Verifica_impressao;
    FNumCupom:=StrToInt(GetNumCupom);
  end;
end;

procedure TEcf.Vendeitem(const cod, descricao, Aliq: string;
  const VrUnit, qtd, Desconto: double);
var
  VrDesconto, _Desc, _VrUnit, _qtd, Tipo_qtd, Tipo_desconto, IndECF,AL: string;
begin

  selecione('select imposto,cficmE from tbproduto where codigo = '+quotedstr(cod));

    if ((calccusto) and (sqlpub['cficmE'] = 'F')) or
       (sqlpub['imposto'] = 'F') then
       al := '00'
    else

       al := sqlpub.fieldbyname('imposto').AsString;


  IndECF := ind_aliquota(al);
  sqlpub := nil;

  VrDesconto := FloatToStr(Desconto * 100);
  _qtd := FormatFloat('##00.000', qtd);
  _VrUnit := FormatFloat('##00.00', VrUnit);
  Tipo_qtd := 'F';
  Tipo_desconto := '$';
  _Desc := Copy(descricao, 1,29);
  if ImpFiscal then
  begin          //INDECF
    case FMarca of
      Bematech, Yanco: iRetorno := Bematech_FI_VendeItem(PChar(cod), PChar(_Desc),
        PChar(IndECF), PChar(Tipo_qtd), PChar(_qtd), 2, PChar(_VrUnit),
        PChar(Tipo_desconto), PChar(VrDesconto));
      Daruma: iRetorno := Daruma_FI_VendeItem(PChar(cod), PChar(_Desc),
        PChar(indecf), PChar(Tipo_qtd), PChar(_qtd), 2, PChar(_VrUnit),
        PChar(Tipo_desconto), PChar(VrDesconto));
    end;
    Verifica_Impressao;
  end;
end;

procedure TEcf.CancelaItem(const item: string);
begin
  if ImpFiscal then
  begin
    case FMarca of
      Bematech, Yanco: iRetorno := Bematech_FI_CancelaItemGenerico(PChar(item));
      Daruma: iRetorno := Daruma_FI_CancelaItemGenerico(PChar(item));
    end;
    Verifica_Impressao;
  end;
end;

procedure TEcf.IniciaFechamentoCupom(const AcrescimoDesconto,
  TipoAcrescimoDesconto: string; const VrAcrescimoDesconto: double);
var
  VrAcDesc:string;
begin
  VrAcDesc:= FormatFloat('##00.00', VrAcrescimoDesconto);
  if ImpFiscal then
  begin
    if Length(AcrescimoDesconto)=0 then
      raise
        Exception.Create(PChar('O parâmetro "AcrescimoDesconto" está nulo.'));

    if Length(TipoAcrescimoDesconto)=0 then
      raise
        Exception.Create(PChar('O parâmetro "TipoAcrescimoDesconto" está nulo.'));

    if (AcrescimoDesconto <> 'A') and (AcrescimoDesconto <> 'D') then
      raise
        Exception.Create(PChar('O parâmetro "AcrescimoDesconto" deve ser "A" ou "D".'));

    if (TipoAcrescimoDesconto <> '%') and (TipoAcrescimoDesconto <> '$') then
      raise
        Exception.Create(PChar('O parâmetro "AcrescimoDesconto" deve ser "%" ou "$".'));

    case FMarca of
      Bematech, Yanco:
        iRetorno := Bematech_FI_IniciaFechamentoCupom(pchar(AcrescimoDesconto),
          pchar(TipoAcrescimoDesconto),pchar(VrAcDesc));

      Daruma:
        iRetorno := Daruma_FI_IniciaFechamentoCupom(pchar(AcrescimoDesconto),
          pchar(TipoAcrescimoDesconto),pchar(VrAcDesc));
    end;
    Verifica_Impressao;
  end;
end;

procedure TEcf.EfetuaFormaPagamento(const FormaPagamento:string; const ValorFormaPagamento: double);
var
  VrFPgto:string;
begin
  VrFPgto:= FormatFloat('##00.00', ValorFormaPagamento);
  if ImpFiscal then
  begin
    if ValorFormaPagamento = 0 then
      raise
        Exception.Create(PChar('O parâmetro "ValorFormaPagamento" não deve ser zero.'));

    if Length(FormaPagamento) = 0 then
      raise
        Exception.Create(PChar('O parâmetro "FormaPagamento" deve ter pelo menos um caracter.'));

    case FMarca of
      Bematech, Yanco: iRetorno :=
        Bematech_FI_EfetuaFormaPagamento(pchar(FormaPagamento), pchar(VrFPgto));
      Daruma: iRetorno:=
        Daruma_FI_EfetuaFormaPagamento(pchar(FormaPagamento), pchar(VrFPgto));
    end;
    Verifica_Impressao;
  end;
end;

procedure TEcf.TerminaFechamentoCupom(const obs:Tstrings);
var
  Qr:tzquery;
  Lembrete:TStrings;
  count:Integer;
begin
  Lembrete:= TStringList.Create;
  if ImpFiscal then
  begin
    Qr:=tzquery.Create(nil);
    try
      with Qr do
      begin
        Connection:=fdm.conector;
        Sql.Clear;
        Sql.Add('Select Lembrete from tbconfig');
        Open;
        
        if Obs.Count > 0 then
          Lembrete:=Obs;

        Lembrete.Add(FieldByName('Lembrete').AsString);


      end;
      case FMarca of
        Bematech, Yanco: iRetorno:= Bematech_FI_TerminaFechamentoCupom(Pchar(Lembrete.Text));
        Daruma: iRetorno := Daruma_FI_TerminaFechamentoCupom(Pchar(Lembrete.Text));
      end;
      Verifica_Impressao;
    finally
      Qr.Free;
      Lembrete.Free;
      SetTotaisParciais;
    end;
  end;
end;

procedure TEcf.FechaVenda(const FormaPgto, AcrescimoDesconto,
  TipoAcrescimoDesconto, Obs: string; const VrAcrescimoDesconto, VrPago: double);
var
  VrAcDesc, VrPg: string;
  Lembrete:TStrings;
begin
  Lembrete:=TStringList.Create;
  VrAcDesc := FormatFloat('##00.00', VrAcrescimoDesconto);
  VrPg := FormatFloat('##00.00', VrPago);
  if ImpFiscal then
  begin
    with fdm.query1 do
    begin
      sql.clear;
      sql.add('Select Lembrete from tbconfig');
      Open;
    end;

    if Length(Obs) > 0 then
      Lembrete.Add(Obs);
      
    Lembrete.Add(fdm.Query1.FieldByName('Lembrete').AsString);

    fdm.query1.Close;

    case FMarca of
      Bematech, Yanco: iRetorno := Bematech_FI_FechaCupom(PChar(FormaPgto),
        PChar(AcrescimoDesconto), PChar(TipoAcrescimoDesconto),
        PChar(VrAcDesc), PChar(VrPg), PChar(Lembrete.Text));

      Daruma: iRetorno := Daruma_FI_FechaCupom(PChar(FormaPgto),
        PChar(AcrescimoDesconto), PChar(TipoAcrescimoDesconto),
        PChar(VrAcDesc), PChar(VrPg), PChar(Lembrete.Text));
    end;

    Verifica_Impressao;
  end;
  Lembrete.Free;
end;

function TEcf.CancelaCupom(msg:boolean): string;
begin
  if ImpFiscal then
  begin
    if msg then
      if Application.MessageBox('Deseja cancelar o último Cupom Fiscal?',
        'Cancelar Cupom Fiscal', 4 + 32) = idNo then
        Abort;

    case FMarca of
      Bematech, Yanco: iRetorno := Bematech_FI_CancelaCupom;
      Daruma: iRetorno:= Daruma_FI_CancelaCupom;
    end;
    Verifica_Impressao;
  end
  else
    ImpFiscalDesabilitada;
end;


procedure TEcf.LeituraX;
begin
  if ImpFiscal then
  begin
    case FMarca of
      Bematech, Yanco: iRetorno := Bematech_FI_LeituraX;
      Daruma: iRetorno:= Daruma_FI_LeituraX;
    end;
    Verifica_Impressao;
  end
  else
    ImpFiscalDesabilitada;
end;

procedure TEcf.ReducaoZ(const Data, Hora: string);
begin
  if ImpFiscal then
  begin
    case getflagsfiscal of
      1:
        begin
          Application.MessageBox('É necessário fechar o cupom antes de emitir a redução Z.',
            'Cupom Fiscal Aberto', 0 + 16);
          Abort;
        end;
      8:
        begin
          Application.MessageBox('Já foi emitido a redução Z do período.',
            'Redução Z já emitida', 0 + 16);
          Abort;
        end;
      else
        if Application.MessageBox(PChar('A redução Z impossibilitará o uso da impressora' +
          #13 +
          'para impressão de novos cupons fiscais, por um período.' +
          #13#13 +
          'Deseja mesmo continuar'), 'Relatório Redução Z',
          4 + 48 + 256) = idYes then
        begin
          if Application.MessageBox(Pchar('Para começar a emissão da Redução Z clique em OK.'),
                'Redução Z', 1 + 48 + 256 ) = idOK then
          begin
            case FMarca of
              Bematech, Yanco: iRetorno :=
                Bematech_FI_ReducaoZ(PChar(Data), PChar(hora));

              Daruma:  iRetorno :=
                Daruma_FI_ReducaoZ(PChar(Data), PChar(hora));
             end;
             Verifica_Impressao;
          end;
        end;
    end;
  end
  else
    ImpFiscalDesabilitada;
end;

procedure TEcf.MemoriaFiscalData;
var
  DataInicial, DataFinal: TDate;
  DataIni, DataFin,st: string;
begin
  if ImpFiscal then
  begin
        st := msgi('Entre com o período para leitura.',3);

        DataInicial :=  strtodate(copy(st,1,10));
        DataFinal :=  strtodate(copy(st,11,10));


      DataIni := DateToStr(DataInicial);
      DataFin := DateToStr(DataFinal);

      if DataIni <>'' then begin

      case FMarca of
        Bematech, Yanco: iRetorno :=
          Bematech_FI_LeituraMemoriaFiscalData(DataIni, DataFin);
        Daruma: iRetorno :=
          Daruma_FI_LeituraMemoriaFiscalData(DataIni, DataFin);
      end;
      Verifica_Impressao;
    end;
  end
  else
    ImpFiscalDesabilitada;
end;

procedure TEcf.MemoriaFiscalDataSerial;
var
  DataInicial, DataFinal: TDate;
  DataIni, DataFin,st: string;
begin
  if ImpFiscal then
  begin

        st := msgi('Entre com o período para leitura.',3);

        DataInicial :=  strtodate(copy(st,1,10));
        DataFinal :=  strtodate(copy(st,11,10));

      

      DataIni := DateToStr(DataInicial);
      DataFin := DateToStr(DataFinal);

      if DataIni <> '' then begin
      case FMarca of
        Bematech, Yanco: iRetorno :=
          Bematech_FI_LeituraMemoriaFiscalSerialData(DataIni, DataFin);
        Daruma: iRetorno :=
          Daruma_FI_LeituraMemoriaFiscalSerialData(DataIni, DataFin);
      end;
      Verifica_Impressao;
      ShellExecute(0, 'open', PChar('c:\RETORNO.TXT'), nil, '', SW_MAXIMIZE );
    end;
  end
  else
    ImpFiscalDesabilitada;
end;

function TEcf.VerAliquotas(const aliquota: double): boolean;
var
  Aliq, cAliquotas: string;
  Count: integer;
begin
  if Impfiscal then
  begin
    Aliq := FormatFloat('##0000', aliquota * 100);
    for Count := 1 to 79 do
      cAliquotas := cAliquotas + ' ';

    case FMarca of
      Bematech, Yanco: iRetorno := Bematech_FI_RetornoAliquotas(cAliquotas);
      Daruma: iRetorno := Daruma_FI_RetornoAliquotas(cAliquotas);
    end;
    Verifica_Impressao;

    if Length(StrPos(PChar(cAliquotas), PChar(Aliq))) > 0 then
      Result := True
    else
      Result := False;
  end
  else
    Result := True;
end;

procedure TEcf.ProgramaHorarioVerao;
begin
  if ImpFiscal then
  begin
    case FMarca of
      Bematech, Yanco: iRetorno:= Bematech_FI_ProgramaHorarioVerao;
      Daruma : iRetorno:= Daruma_FI_ProgramaHorarioVerao;
    end;
    Verifica_Impressao;
  end;
end;

procedure TEcf.ProgramaArredondamento;
begin
  if ImpFiscal then
  begin
    case FMarca of
      Bematech, Yanco: iRetorno:= Bematech_FI_ProgramaArredondamento;
      Daruma: iRetorno:= Daruma_FI_ProgramaArredondamento;
    end;
    Verifica_Impressao;
  end;
end;

procedure TEcf.ProgramaTruncamento;
begin
  if ImpFiscal then
  begin
    case FMarca of
      Bematech, Yanco: iRetorno:= Bematech_FI_ProgramaTruncamento;
      Daruma: iRetorno:= Daruma_FI_ProgramaTruncamento;
    end;
    Verifica_Impressao;
  end;
end;


function TEcf.VerificaTruncamento:boolean;
var
  Flag:string;
begin
  SetLength(Flag, 1);
  result:=true;

  if ImpFiscal then
  begin
    case Fmarca of
      Bematech, Yanco: iRetorno:= Bematech_FI_VerificaTruncamento(Flag);
      Daruma: iRetorno:= Daruma_FI_VerificaTruncamento(Flag);
    end;
    Verifica_Impressao;
    if (Flag='0') or (Flag='1') then
      case StrToInt(Flag) of
        0: Result:= False;
        1: Result:= True;
      end;
  end;

end;

procedure TEcf.ProgramaFormaPgto(Forma:string);
begin
  case FMarca of
    daruma: iRetorno := Daruma_FI_ProgramaFormasPagamento(pchar(Forma));
  end;
  if iRetorno <> 1 then
    Verifica_Impressao;
end;



Function TEcf.DataHora:TDateTime;
var
  Data, Hora: string;
  count: integer;
begin
  for count := 1 to 6 do Data := Data + ' ';
  for count := 1 to 6 do Hora := Hora + ' ';
  case fMarca of
    Bematech, Yanco: iRetorno := Bematech_FI_DataHoraImpressora( Data, Hora );
    Daruma: iRetorno := Daruma_FI_DataHoraImpressora( Data, Hora );
  end;
  Result:= StrToDateTime(Copy(Data, 1,2)+'/'+
                           Copy(data, 3, 2)+'/'+
                           Copy(Data, 5, 2)+' '+
                           Copy(Hora, 1, 2)+':'+
                           Copy(Hora, 3, 2)+':'+
                           Copy(Hora, 5, 2));

end;

function TEcf.GetdadosSintegra(dtinicial, dtfinal: TDateTime):TStrings;
var
tmp:TStrings;
begin
  tmp:= TStringlist.Create;
  //iRetorno := Bematech_FI_DadosSintegra( pchar( FormatDateTime('ddmmyy', dtinicial)), pchar(FormatDateTime('ddmmyy',dtfinal));
end;


function Tecf.GetTotalizaodresParciais:String;
var
  sTot:string;
  count:integer;
begin
  for count := 1 to 445 do sTot := sTot + ' ';

  case FMarca of
    Bematech, Yanco: iRetorno:= Bematech_FI_VerificaTotalizadoresParciais(sTot);
    Daruma: iRetorno:=Daruma_FI_VerificaTotalizadoresParciais(sTot);
  end;
  if iRetorno <> 1 then
    Verifica_Impressao;
  Result:= sTot;
end;

function TEcf.GetTotalDescontos: string;
var
  count: Integer;
  sDesc:String;
begin
  for count :=0 to 13 do
    sDesc:=sDesc+' ';

  case FMarca of
    Bematech, Yanco: iRetorno:=Bematech_FI_Descontos(sDesc);
    Daruma: iRetorno:= Daruma_FI_Descontos(sDesc);
  end;

  if iRetorno <> 1 then
    Verifica_Impressao;
    
  Result:= sDesc;

end;

procedure TEcf.UnloadLib;
begin
  case Fmarca of
    Bematech, Yanco: Unload_Bemafi32;
    Daruma: Unload_Daruma32;
  end;
end;
//**************** Tecf - Fim ********************//
end.
