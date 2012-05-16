unit impmat;
{
Componente para impressão em matriciais.
}

interface

uses

  inifiles, Windows, Classes, Printers, SysUtils, DB, funcoes;

type
  PString = ^string;
  EErroImpressao = class(Exception);
  TTipoImp = (tiBobina, tiPasstrough);
  TStrArray = array[#0..#255] of string;
  TAcentuacao = (acNenhum, acANSI);
  TImpMat = class(TComponent)
  private
    // Linhas e colunas variam a partir de 1
    FLinhas: word;
    FColunas: word;
    // Buffer que conterá os caracteres
    PrnBuffer: PChar;
    FTipoImp: TTipoImp;
    // Caracteres de fim de linha, normalmente CR+LF
    FFimDeLinha: string;
    // Nome do arquivo de destino
    FArqDestino: string;
    // Calcula onde no buffer de caracteres está uma determinada coordenada
    // L e C variam a partir de 1
    // Dize se tem que fazer controle de servico de impressao
    FControleServico: boolean;
    // Imprime linhas em branco no final
    FImprimeLinhasFinais: boolean;
    // Imprime colunas em branco no final
    FImprimeEspDireita: boolean;
    // Acentuação
    FAcentos: TStrArray;
    //
    FAcentuacao: TAcentuacao;

    function CalcOfs(L, C: word): integer;
    // tamanho do buffer em bytes
    function TamBuffer: integer;
    // Offset máximo (baseado em 0). Usado para impedir estouro do buffer
    function MaxOfs: integer;
    // Aloca buffer de carcteres
    procedure AlocaBuffer;
    // desaloca Buffer de caracteres
    procedure DesalocaBuffer;
    function UltimaLinhaValida(S: TStringList): integer;
    // Rotinas que imprimem o buffer, dado o tipo da impressora
    procedure ImpBobina;
    procedure ImpPasstrough;
    // Monta um buffer de impressão, com espaços e fim de linha
    function MontaBufferImp: string;
    // Rotinas que imprimem uma string
    procedure ImpBobinaStr(const S: string);
    procedure ImpPasstroughStr(const S: string);
    // Ajusta valores das propriedades
    procedure SetLinhas(const Val: word);
    procedure SetColunas(const Val: word);
    procedure SetAcentos(I: char; S: string);
    function GetAcentos(I: char): string;
    procedure SetAcentuacao(Val: TAcentuacao);
  protected
  public

    constructor Create(Dono: TComponent); override;
    destructor Destroy; override;
    // Coloca uma string no buffer em determinada posição
    procedure PoeStr(const L, C: word; const S: string); virtual;
    // Imprime uma string
    procedure PoeStrDireita(const L, C: word; const S: string); virtual;
    // Imprime alinhado à direita
    procedure ImprimeStr(const S: string);
    // Imprime o buffer
    procedure ImprimeJob;
    // Pede nova página
    procedure NovaPagina;
    // Limpa o buffer com espaços
    procedure LimpaBuffer;
    property FimDeLinha: string read FFimDeLinha write FFimDeLinha;
    property Acentos[I: char]: string read GetAcentos write SetAcentos;
  published
    property Linhas: word read FLinhas write SetLinhas;
    property Colunas: word read FColunas write SetColunas;
    property TipoImp: TTipoImp read FTipoImp write FTipoImp;
    property ControleServico: boolean read FControleServico write FControleServico;
    property ArqDestino: string read FArqDestino write FArqDestino;
    property ImprimeLinhasFinais: boolean read FImprimeLinhasFinais   
      write FImprimeLinhasFinais;
    property ImprimeEspDireita: boolean read FImprimeEspDireita write FImprimeEspDireita;
    property Acentuacao: TAcentuacao read FAcentuacao write SetAcentuacao;
  end;


procedure Register;

implementation

uses udm;


const
  // Número de coordenada cpor coluna da impressora genérica
  cPosPorColuna = 12;
  // Fim de linha começa com return + linefeed
  cFimDeLinha = #13#10;
  cLinhas = 66;
  cColunas = 80;

  //============== ROTINAS DE BAIXO NÍVEL PARA USO DE ESCAPE

const
  cMax = 32768;

type
  TBuffer = record
    comp: word;
    Buffer: array[0..cMax] of char;
  end;


  // Verifica se a impressão deu erro
procedure VerificaErro(Erro: DWORD);
var
  Msg: string;
begin
  Msg := '';
  case Erro of
    SP_ERROR: Msg := 'Erro geral';
    SP_OUTOFDISK: Msg := 'Falta de espaço em disco';
    SP_OUTOFMEMORY: Msg := 'Falta de memória';
    SP_USERABORT: Msg := 'Usuário interrompeu o serviço';
  end;
  if Msg <> '' then
    raise EErroImpressao.Create(Msg);
end;

// Rotina genérica para imprimir qualquer coisa na impressora.
procedure ImprimePass(const S: string);
var
  B: TBuffer;
  RetCode: integer;
begin
  // Pega o comprimento
  B.comp := length(S);
  // Vê se não estourou o tamanho do buffer
  if B.comp > cMax then
    B.comp := CMax;
  // Copia para estrutura de impressão
  System.Move(PChar(S)^, B.Buffer, B.comp);
  // Manda para a imperssora }
  RetCode := Escape(Printer.Handle, PASSTHROUGH, B.comp + sizeof(B.comp), PChar(@B), nil);
  VerificaErro(RetCode);
end;

// Verfica se a impressora suporta Escape(PASSTROUGH)
function SuportaPasstrough: boolean;
var
  iEsc: integer;
begin
  // Pergunta se o escape é suportado
  iEsc := PASSTHROUGH;
  SuportaPasstrough := Escape(Printer.Handle, QUERYESCSUPPORT,
    sizeof(integer), @iEsc, nil) <> 0;
end;

//============== ROTINAS UTILITÁRIAS

function LinhaComDados(const S: string): boolean;
var
  i: integer;
begin
  Result := False;
  for i := 1 to length(S) do
    if S[i] <> ' ' then
      Result := True;
end;

function UltimaLinhaComDados(S: TStringList): integer;
begin
  Result := S.Count;
  while not (LinhaComDados(S[Result - 1]) or (Result <= 1)) do
    dec(Result);
end;

function TrimR(const S: string): string;
var
  i: integer;
  Fim: boolean;
begin
  i := length(S);
  Fim := False;
  while (not Fim) and (i > 0) do
  begin
    if S[i] <> ' ' then
      Fim := True
    else
      dec(i);
  end;
  Result := copy(S, 1, i);
end;

//============== COMPONENTE

function TImpMat.UltimaLinhaValida(S: TStringList): integer;
begin
  if FImprimeLinhasFinais then
    Result := FLinhas
  else
    Result := UltimaLinhaComDados(S);
end;

procedure TImpMat.SetAcentuacao(Val: TAcentuacao);
  procedure InitANSI;
  begin
    FAcentos['á'] := 'a' + #8 + '''';
    FAcentos['é'] := 'e' + #8 + '''';
    FAcentos['í'] := 'i' + #8 + '''';
    FAcentos['ó'] := 'o' + #8 + '''';
    FAcentos['ú'] := 'u' + #8 + '''';
    FAcentos['Á'] := 'A' + #8 + '''';
    FAcentos['É'] := 'E' + #8 + '''';
    FAcentos['Í'] := 'I' + #8 + '''';
    FAcentos['Ó'] := 'O' + #8 + '''';
    FAcentos['Ú'] := 'U' + #8 + '''';
    FAcentos['à'] := 'a' + #8 + '`';
    FAcentos['À'] := 'A' + #8 + '`';
    FAcentos['ã'] := 'a' + #8 + '~';
    FAcentos['õ'] := 'o' + #8 + '~';
    FAcentos['Ã'] := 'A' + #8 + '~';
    FAcentos['Õ'] := 'o' + #8 + '~';
    FAcentos['â'] := 'a' + #8 + '^';
    FAcentos['ê'] := 'e' + #8 + '^';
    FAcentos['ô'] := 'o' + #8 + '^';
    FAcentos['Â'] := 'A' + #8 + '^';
    FAcentos['Ê'] := 'E' + #8 + '^';
    FAcentos['Ô'] := 'O' + #8 + '^';
    FAcentos['ü'] := 'u' + #8 + '"';
    FAcentos['Ü'] := 'U' + #8 + '"';
    FAcentos['ç'] := 'c' + #8 + ',';
    FAcentos['Ç'] := 'C' + #8 + ',';
  end;
var
  i: char;
begin
  for i := #0 to #255 do
    FAcentos[i] := i;
  case Val of
    acANSI: InitANSI;
  end;
  FAcentuacao := Val;
end;

constructor TImpMat.Create(Dono: TComponent);
var
  Ini: tinifile;
  porta: string;
begin
  Ini := TInifile.Create(conf_local);
  if portaimpressao = 'nota' then
    porta := Ini.ReadString('impNfiscal', 'cimpressaoN', 'LPT1')
  else if portaimpressao = 'boleto' then
    porta := Ini.ReadString('impNfiscal', 'cimpressaoB', 'LPT1')
  else if portaimpressao = 'todos' then
    porta := Ini.ReadString('impNfiscal', 'cimpressaoG', 'LPT1')
  else
    porta := Ini.ReadString('impNfiscal', 'cimpressao', 'LPT1');
  ini.Free;



  inherited;
  FLinhas := cLinhas;
  FColunas := cColunas;
  AlocaBuffer;
  FFimDeLinha := cFimDeLinha;
  FArqDestino := porta;
  FControleServico := False;
  FImprimeLinhasFinais := True;
  FAcentuacao := acNenhum;
end;

destructor TImpMat.Destroy;
begin
  DesalocaBuffer;
  inherited;
end;

procedure TImpMat.SetLinhas(const Val: word);
begin
  if Val <> FLinhas then
  begin
    DesalocaBuffer;
    FLinhas := Val;
    AlocaBuffer;
  end;
end;

procedure TImpMat.SetColunas(const Val: word);
begin
  if Val <> FColunas then
  begin
    DesalocaBuffer;
    FColunas := Val;
    AlocaBuffer;
  end;
end;

procedure TImpMat.SetAcentos(I: char; S: string);
begin
  FAcentos[I] := S;
end;

function TImpMat.GetAcentos(I: char): string;
begin
  Result := FAcentos[I];
end;

procedure TImpMat.LimpaBuffer;
begin
  fillchar(PrnBuffer^, TamBuffer, ' ');
end;

function TImpMat.TamBuffer: integer;
begin
  Result := Linhas * Colunas;
end;

procedure TImpMat.AlocaBuffer;
begin
  if TamBuffer <> 0 then
  begin
    getmem(PrnBuffer, TamBuffer);
    LimpaBuffer;
  end;
end;

procedure TImpMat.DesalocaBuffer;
begin
  if TamBuffer <> 0 then
    freemem(PrnBuffer);
end;

function TImpMat.CalcOfs(L, C: word): integer;
begin
  Result := (L - 1) * FColunas + (C - 1);
end;

function TImpMat.MaxOfs: integer;
begin
  MaxOfs := TamBuffer - 1;
end;

procedure TImpMat.PoeStr(const L, C: word; const S: string);
var
  i, O: integer;
begin
  for i := 1 to length(S) do
  begin
    O := CalcOfs(L, C + I - 1);
    if O <= MaxOfs then
      PrnBuffer[O] := S[i];

  end;
end;

procedure TImpMat.PoeStrDireita(const L, C: word; const S: string);
begin
  PoeStr(L, C - length(S), S);
end;

function TImpMat.MontaBufferImp: string;
var
  i, j: integer;
  Linha: string;
  Linhas: TStringList;
begin
  Result := '';
  Linhas := TStringList.Create;
  try
    begin
      for i := 0 to FLinhas - 1 do
      begin
        Linha := '';
        for j := 0 to FColunas - 1 do
          Linha := Linha + FAcentos[PrnBuffer[CalcOfs(i + 1, j + 1)]];
        if not FImprimeEspDireita then
          Linha := TrimR(Linha);
        Linhas.Add(Linha);
      end;
    end;
    for i := 0 to UltimaLinhaValida(Linhas) - 1 do
      Result := Result + Linhas[i] + FFimDeLinha;
  finally
    Linhas.Free;
  end;
end;

procedure TImpMat.ImpBobinaStr(const S: string);


const
IPula = #13; //Pula 1 linha
IEspac1 = #27#48; //Define espaçamento entre linhas de 1/8"
IEspac2 = #27#49; //Define espaçamento entre linhas de 7/72"
IEspac3 = #27#50; //Define espaçamento entre linhas de 1/6"
IEject = #12; //Ejeta página
I80car = #27#80#18; //Imprime com 80 colunas
I96car = #27#77#18; //Imprime com 96 colunas
I137car = #27#80#15; //Imprime com 137 colunas
I160car = #27#77#15; //Imprime com 160 colunas
IDuploG = #27#14#18; //Imprime em caracter grande largura dupla
IDuploP = #27#14#15; //Imprime em caracter pequeno largura dupla
IDuploC = #27#20; //Cancela largura dupla
INegAti = #27#71; //Imprime em negrito
INegDes = #27#72; //Cancela modo negrito
IItaAti = #27#52; //Imprime em Itálico
IItaDes = #27#53; //Cancela modo Itálico
//Print #1," ";tab(10); tabela.campo1 'imprime na posição 10 o registro x
//Condensado chr$(27)&chr(15) chr(8)
//Expandido chr$(27)&chr(14) chr$(20)

var
  F: TextFile;
  porta: string;
  ini: tinifile;
//  list : tstringlist;
begin
  Ini := TInifile.Create(conf_local);

  if portaimpressao = 'nota' then
    porta := Ini.ReadString('impNfiscal', 'cimpressaoN', 'LPT1')
  else if portaimpressao = 'boleto' then
    porta := Ini.ReadString('impNfiscal', 'cimpressaoB', 'LPT1')
  else if portaimpressao = 'todos' then
    porta := Ini.ReadString('impNfiscal', 'cimpressaoG', 'LPT1')
  else
    porta := Ini.ReadString('impNfiscal', 'cimpressao', 'LPT1');
  ini.Free;

  if porta = 'IMPRESSORA PADRAO DO WINDOWS' then begin
     //Printer.Canvas.Font.Name := 'Courier New';
     Printer.Canvas.Font.Size := 10;
     AssignPrn(F)
  end else
    AssignFile(F, FArqDestino);
    Rewrite(F);
    Write(F, #0#27#64+S);
   //renival

        try
           WriteLn(F, IDuploC+IPula); //Pula uma linha
           Write(F, IEject); //Ejeta folha
           system.Close(F);
           //Caso não consiga imprimir, envia mensagem de erro
        except begin
           system.Close(F);
           msg('Erro! Impressora não está configurada!',0);
        end;
        end;

end;

procedure TImpMat.ImpBobina;
var
  Work: string;
begin
  Work := MontaBufferImp;
  ImpBobinaStr(Work);
end;

procedure TImpMat.ImpPasstroughStr(const S: string);
begin
  if SuportaPasstrough then
    ImprimePass(S)
  else 
    raise EErroImpressao.Create('Impressora não suporta PASSTROUGH');
end;

procedure TImpMat.ImpPasstrough;
var
  Work: string;
begin
  if FControleServico then    Printer.BeginDoc;
  try
    if SuportaPasstrough then
    begin
      Work := MontaBufferImp;
      ImpPasstroughStr(Work);
    end
    else
      raise EErroImpressao.Create('Impressora não suporta PASSTROUGH');
  finally
    if FControleServico then  Printer.EndDoc;
  end;
end;

procedure TImpMat.ImprimeJob;
begin
  case FTipoImp of
    tiBobina: ImpBobina;
    tiPasstrough: ImpPasstrough;
  end;
end;

procedure TImpMat.NovaPagina;
begin
  LimpaBuffer;
  case FTipoImp of
    tiBobina: ImpBobinaStr(#12);
    tiPasstrough: Printer.NewPage;
  end;
end;

procedure TImpMat.ImprimeStr(const S: string);
begin
  case FTipoImp of
    tiBobina: ImpBobinaStr(S);
    tiPasstrough: ImpPasstroughStr(S);
  end;
end;

procedure Register;
begin
  RegisterComponents('Mauro', [TImpMat]);
end;

end.
