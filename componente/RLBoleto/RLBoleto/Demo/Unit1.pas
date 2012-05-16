unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RLBoleto, ExtCtrls, ComCtrls, RLSaveDialog,
  RLFilters, RLPDFFilter, DateUtils, Math;

type
  TForm1 = class(TForm)
    RLBTitulo1: TRLBTitulo;
    Button2: TButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit9: TEdit;
    Label9: TLabel;
    MaskEdit1: TMaskEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label10: TLabel;
    Label8: TLabel;
    Edit10: TEdit;
    Memo1: TMemo;
    Label11: TLabel;
    Edit11: TEdit;
    Label12: TLabel;
    ComboBox2: TComboBox;
    Edit12: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Edit13: TEdit;
    Label15: TLabel;
    Edit14: TEdit;
    Edit15: TEdit;
    Label16: TLabel;
    Edit16: TEdit;
    Label17: TLabel;
    CheckBox1: TCheckBox;
    Bevel1: TBevel;
    Label19: TLabel;
    MaskEdit2: TMaskEdit;
    RLPDFFilter1: TRLPDFFilter;
    RLSaveDialogSetup1: TRLSaveDialogSetup;
    Button1: TButton;
    RLBRemessa1: TRLBRemessa;
    Label18: TLabel;
    ComboBox3: TComboBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    unibanco: TButton;
    Button12: TButton;
    Button13: TButton;
    BANCOOB: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure unibancoClick(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure BANCOOBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
var
  nQtdeBoletos: Integer; //simular a quantidade de registros
  nI: Integer;
begin
  nQtdeBoletos := StrToInt(Trim(MaskEdit2.Text));
  case ComboBox3.ItemIndex of
    0: RLBTitulo1.BoletoLayout := blPadrao;
    1: RLBTitulo1.BoletoLayout := blCarne;
  end;
  for nI := 1 to nQtdeBoletos do
  begin
    //Dados do Cedente
    RLBTitulo1.DataProcessamento := Date;
    RLBTitulo1.Cedente.ContaBancaria.Banco.Codigo := Trim(Copy(ComboBox1.Text,1,3));
    RLBTitulo1.Cedente.ContaBancaria.CodigoAgencia := Trim(Edit1.Text);
    RLBTitulo1.Cedente.ContaBancaria.DigitoAgencia := Trim(Edit2.Text);
    RLBTitulo1.Cedente.ContaBancaria.NumeroConta := Trim(Edit5.Text);
    RLBTitulo1.Cedente.ContaBancaria.DigitoConta := Trim(Edit6.Text);
    RLBTitulo1.Cedente.CodigoCedente := Trim(Edit5.Text);
    RLBTitulo1.Cedente.DigitoCodigoCedente := Trim(Edit6.Text);
    RLBTitulo1.Carteira := Trim(Edit7.Text);
    RLBTitulo1.Cedente.ContaBancaria.Convenio := Trim(Edit8.Text);
    RLBTitulo1.Cedente.ContaBancaria.NomeCliente := Trim(Edit9.Text);
    RLBTitulo1.Cedente.TipoInscricao := tiPessoaJuridica;
    RLBTitulo1.Cedente.NumeroCPFCGC := '01.001.001/0001-13';
    RLBTitulo1.Cedente.Nome := Trim(Edit9.Text);
    //dados do sacado
    RLBTitulo1.Sacado.Nome := Trim(Edit11.Text);
    case ComboBox2.ItemIndex of
      0: RLBTitulo1.Sacado.TipoInscricao := tiPessoaFisica;
      1: RLBTitulo1.Sacado.TipoInscricao := tiPessoaJuridica;
    end;
    RLBTitulo1.Sacado.NumeroCPFCGC := Trim(Edit12.Text);
    RLBTitulo1.Sacado.Endereco.Rua := Trim(Edit13.Text);
    RLBTitulo1.Sacado.Endereco.CEP := Trim(Edit14.Text);
    RLBTitulo1.Sacado.Endereco.Cidade := Trim(Edit15.Text);
    RLBTitulo1.Sacado.Endereco.Estado := Trim(Edit16.Text);
    //dados da cobranca
    RLBTitulo1.NossoNumero := Trim(Edit4.Text);
    RLBTitulo1.ValorDocumento := StrToCurr(Edit10.Text);
    RLBTitulo1.DataDocumento := Date;
    RLBTitulo1.DataVencimento := StrToDate(MaskEdit1.Text);
    RLBTitulo1.NumeroDocumento := Trim(Edit3.Text);
    RLBTitulo1.Instrucoes.Text := Memo1.Lines.Text;
    RLBTitulo1.InsertRecord;
    Edit4.Text     := IntToStr(StrToIntDef(Trim(Edit4.Text),0)+1); //Simulando o nosso numero
    MaskEdit1.Text := DateToStr(IncDay(StrToDate(MaskEdit1.Text)));
    Edit10.Text    := CurrToStr(StrToCurr(Edit10.Text) + 1.23);
  end;
//  RLBTitulo1.PreviewModal;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  MaskEdit1.Text := DateToStr(IncDay(Date,20)); //Vencimento
  Edit9.Text     := 'NOME DO CEDENTE LTDA.'; //Cedente
  Edit1.Text     := '1234'; //Ag�ncia
  Edit2.Text     := '56'; //Digito da ag�ncia n�o informado
  Edit5.Text     := '12345'; //C�digo Cedente
  Edit6.Text     := '6'; //Digito do c�digo do cedente
  Edit3.Text     := '1000'; //N�mero do documento do cedente
  Edit7.Text     := '1'; //Carteira
  Edit8.Text     := '123456'; //Conv�nio, utilizado apenas para o banco do brasil
  Edit4.Text     := '1'; //Nosso Numero, vamos passar na hora de imprimir
  Edit10.Text    := '123,45'; //Valor
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  nQtdeBoletos, nI: Integer;
begin
  //Para gerar a remessa temos que passar todos os boletos para o componente RLBRemessa1
  //Vamos colocar tudo em um for para facilitar
  nQtdeBoletos := StrToInt(Trim(MaskEdit2.Text));

  for nI := 1 to nQtdeBoletos do
  begin
    //Dados do Cedente
    RLBTitulo1.Cedente.ContaBancaria.Banco.Codigo := Trim(Copy(ComboBox1.Text,1,3));
    RLBTitulo1.Cedente.ContaBancaria.CodigoAgencia := Trim(Edit1.Text);
    RLBTitulo1.Cedente.ContaBancaria.DigitoAgencia := Trim(Edit2.Text);
    RLBTitulo1.Cedente.ContaBancaria.NumeroConta := Trim(Edit5.Text);
    RLBTitulo1.Cedente.ContaBancaria.DigitoConta := Trim(Edit6.Text);
    RLBTitulo1.Cedente.CodigoCedente := Trim(Edit5.Text);
    RLBTitulo1.Cedente.DigitoCodigoCedente := Trim(Edit6.Text); // Os dados do cedente foram repetidos com os dados da conta, mas em alguns bancos eles s�o diferentes, CUIDADO
    RLBTitulo1.Carteira := Trim(Edit7.Text);
    RLBTitulo1.Cedente.ContaBancaria.Convenio := Trim(Edit8.Text);
    RLBTitulo1.Cedente.ContaBancaria.NomeCliente := Trim(Edit9.Text);
    RLBTitulo1.Cedente.TipoInscricao := tiPessoaJuridica;
    RLBTitulo1.Cedente.NumeroCPFCGC := '01001001000113'; //CNPJ do Cedente � importante para a remessa
    RLBTitulo1.Cedente.Nome := Trim(Edit9.Text);
    //dados do sacado
    RLBTitulo1.Sacado.Nome := Trim(Edit11.Text);
    case ComboBox2.ItemIndex of
      0: RLBTitulo1.Sacado.TipoInscricao := tiPessoaFisica;
      1: RLBTitulo1.Sacado.TipoInscricao := tiPessoaJuridica;
    end;
    RLBTitulo1.Sacado.NumeroCPFCGC := Trim(Edit12.Text);
    RLBTitulo1.Sacado.Endereco.Rua := Trim(Edit13.Text);
    RLBTitulo1.Sacado.Endereco.CEP := Trim(Edit14.Text);
    RLBTitulo1.Sacado.Endereco.Cidade := Trim(Edit15.Text);
    RLBTitulo1.Sacado.Endereco.Estado := Trim(Edit16.Text);
    //dados da cobranca
    RLBTitulo1.TipoOcorrencia := toRemessaRegistrar;
    RLBTitulo1.EspecieDocumento := edDuplicataMercantil;
    Edit4.Text := IntToStr(StrToIntDef(Trim(Edit4.Text),0)+1); //Simulando o nosso numero
    RLBTitulo1.NossoNumero := Trim(Edit4.Text);
    RLBTitulo1.ValorDocumento := StrToCurr(Edit10.Text);
    RLBTitulo1.DataDocumento := Date;
    RLBTitulo1.DataVencimento := StrToDate(MaskEdit1.Text);
    RLBTitulo1.NumeroDocumento := Trim(Edit3.Text);
    RLBTitulo1.Instrucoes.Text := Memo1.Lines.Text;
    //Inserindo o boleto na remessa
    RLBRemessa1.Titulos.Add(RLBTitulo1);
  end;

  RLBRemessa1.DataArquivo := Date; //� a data que o arquivo est� sendo gerado
//  RLBRemessa1.LayoutArquivo := laCNAB400; { Layout do arquivo, � necess�rio ver com o banco qual � o indicado.
                                            //CNAB400 � o mais comum. }
  RLBRemessa1.NomeArquivo := FormatDateTime('yymmdd',Date)+'.REM'; { Apenas o nome do arquivo, alguns bancos
                                                                     estipulam regras e outros n�o }
  RLBRemessa1.NumeroArquivo := 1; { Sequencia n�merica de quandos arquivos j� foram gerados para este banco }
  RLBRemessa1.TipoMovimento := tmRemessa;

  RLBRemessa1.NomeArquivo := ExtractFileDir(Application.ExeName)+'\'+RLBRemessa1.NomeArquivo; // Apenas colocando um caminho para o arquivo

  if RLBRemessa1.GerarRemessa then
    MessageDlg('O arquivo foi gerado com sucesso.'#13+RLBRemessa1.NomeArquivo,mtInformation,[mbOK],0);
end;

procedure TForm1.Button3Click(Sender: TObject);

var list:tstringlist;

const
   CodigoBanco = '104';
   NomeBanco   = 'Caixa Econ. Federal';
   Imagem      = 4;


function GerarRemessaCNAB240(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao,
   Registro : string;
   NumeroRegistro, NumeroLote : integer;
begin
   Result := FALSE;
   NumeroRegistro := 0;
   NumeroLote := 1;
   Registro := '';
//  if  Remessa.Clear;

   if ACobranca.Titulos.Count < 1 then
      Exception.Create('N�o h� t�tulos para gerar remessa');

   with ACobranca do
   begin

      { GERAR REGISTRO-HEADER DO ARQUIVO }

      case Titulos[NumeroRegistro].Cedente.TipoInscricao of
         tiPessoaFisica  : ACedenteTipoInscricao := '1';
         tiPessoaJuridica: ACedenteTipoInscricao := '2';
         tiOutro         : ACedenteTipoInscricao := '3';
      end;

      if Formatar(CodigoBanco,3,false,'0') <> Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') then
         Raise Exception.CreateFmt('O t�tulo (Nosso N�mero: %s) n�o pertence ao banco %s (%s)',[Titulos[NumeroRegistro].NossoNumero,CodigoBanco,NomeBanco]);

      Registro := Formatar(CodigoBanco,3,false,'0'); {1 a 3 - C�digo do banco}
      Registro := Registro + '0000'; {4 a 7 - Lote de servi�o}
      Registro := Registro + '0'; {8 - Tipo de registro - Registro header de arquivo}
      Registro := Registro + Formatar('',9); {9 a 17 - Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + ACedenteTipoInscricao; {18 - Tipo de inscri��o do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,14,false,'0'); {19 a 32 - N�mero de inscri��o do cedente}

      {C�DIGO DO CONV�NIO = AG�NCIA + N�MERO CONV�NIO + DV}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,'0'); {33 a 36 - C�digo da ag�ncia}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,11,false,'0'); {37 a 47 - C�digo do conv�nio no banco}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.DigitoCodigoCedente,1,false,'0'); {48 - D�gito do c�digo do conv�nio no banco}

      Registro := Registro + Formatar('',4); {49 a 52 - Uso exclusivo CAIXA}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); {53 a 57 - C�digo da ag�ncia do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); {58 - D�gito do c�digo da ag�ncia do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); {59 a 70 - C�digo da conta corrente vinculada � cobran�a / n�o � o n�mero da conta corrente comum}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); {71 - D�gito da conta corrente vinculada � cobran�a}
      Registro := Registro + Modulo11(Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0')); {72 - D�gito verificador da ag�ncia / conta do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' '); {73 a 102 - Nome do cedente}
      Registro := Registro + Formatar('CAIXA ECONOMICA FEDERAL',30,true,' '); {103 a 132 - Nome do banco}
      Registro := Registro + Formatar('',10); {133 a 142 - Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + '1'; {143 - C�digo de Remessa (1) / Retorno (2)}
      Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); {144 a 151 - Data do de gera��o do arquivo}
      Registro := Registro + FormatDateTime('hhmmss',DataArquivo);  {152 a 157 - Hora de gera��o do arquivo}
      Registro := Registro + Formatar(IntToStr(NumeroArquivo),6,false,'0'); {158 a 163 N�mero seq�encial do arquivo}
      Registro := Registro + '030'; {164 a 166 - N�mero da vers�o do layout do arquivo}
      Registro := Registro + Formatar('',5,false,'0'); {167 a 171 - Densidade de grava��o do arquivo (BPI)}
      Registro := Registro + Formatar('',20); {172 a 191 - Uso reservado do banco}
      if TipoMovimento = tmRemessaTeste then
         Registro := Registro + Formatar('REMESSA-TESTE',20) {192 a 211 - Dever� conter a literal REMESSA-TESTE para fase de testes}
      else
         Registro := Registro + Formatar('',20); {192 a 211 - Dever� conter a literal REMESSA-TESTE para fase de testes}
      Registro := Registro + Formatar('',29); {212 a 240 - Uso exclusivo FEBRABAN/CNAB}

      Remessa.Add(Registro);
      Registro := '';

      {GERAR REGISTRO HEADER DO LOTE}
      Registro := Formatar(CodigoBanco,3,false,'0'); {1a 3 - C�digo do banco}
      Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {4 a 7 - N�mero do lote de servi�o}
      Registro := Registro + '1'; {8 - Tipo do registro - Registro header de lote}
      Registro := Registro + 'R'; {9 - Tipo de opera��o: R (Remessa) ou T (Retorno)}
      Registro := Registro + '01'; {10 a 11 - Tipo de servi�o: 01 (Cobran�a)}
      Registro := Registro + '00'; {12 a 13 - Forma de lan�amento: preencher com ZEROS no caso de cobran�a}
      Registro := Registro + '020'; {14 a 16 - N�mero da vers�o do layout do lote}
      Registro := Registro + ' '; {17 - Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + ACedenteTipoInscricao; {18 - Tipo de inscri��o do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,15,false,'0'); {19 a 33 - N�mero de inscri��o do cedente}

      {C�DIGO DO CONV�NIO = AG�NCIA + N�MERO CONV�NIO + DV}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,'0'); {34 a 37 - C�digo da ag�ncia}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,11,false,'0'); {38 a 48 - C�digo do conv�nio no banco}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.DigitoCodigoCedente,1,false,'0'); {49 - D�gito do c�digo do conv�nio no banco}

      Registro := Registro + Formatar('',4); {50 a 53 - Uso exclusivo CAIXA}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); {54 a 58 - C�digo da ag�ncia do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); {59 - D�gito da ag�ncia do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); {60 a 71 - N�mero da conta vinculada � cobran�a / n�o � o n�mero da conta corrente comum}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); {72 - D�gito do c�digo do cedente no banco}
      Registro := Registro + Modulo11(Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0')); {73 - D�gito verificador da ag�ncia / conta}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' '); {74 a 103 - Nome do cedente}
      Registro := Registro + Formatar('',40); {104 a 143 - Mensagem 1 para todos os boletos do lote}
      Registro := Registro + Formatar('',40); {144 a 183 - Mensagem 2 para todos os boletos do lote}
      Registro := Registro + Formatar(IntToStr(NumeroArquivo),8,false,'0'); {184 a 191 - N�mero do arquivo}
      Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); {192 a 199 - Data de gera��o do arquivo}
      Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); {200 a 207 - Data do cr�dito - Informar a mesma data da grava��o do arquivo}
      Registro := Registro + Formatar('',33); {208 a 240 - Uso exclusivo FEBRABAN/CNAB}

      Remessa.Add(Registro);
      Registro := '';

      { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
      while NumeroRegistro <= (Titulos.Count - 1) do
      begin

         if Formatar(CodigoBanco,3,false,'0') <> Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') then
            Raise Exception.CreateFmt('O t�tulo (Nosso N�mero: %s) n�o pertence ao banco %s (%s)',[Titulos[NumeroRegistro].NossoNumero,CodigoBanco,NomeBanco]);

         {SEGMENTO P}
         if Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') <> Formatar(CodigoBanco,3,false,'0') then
            Raise Exception.CreateFmt('Titulo n�o pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);

         case Titulos[NumeroRegistro].Cedente.TipoInscricao of
            tiPessoaFisica  : ACedenteTipoInscricao := '1';
            tiPessoaJuridica: ACedenteTipoInscricao := '2';
            tiOutro         : ACedenteTipoInscricao := '9';
         end;

         Registro := Formatar(CodigoBanco,3,false,'0'); {1 a 3 - C�digo do banco}
         Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {4 a 7 - N�mero do lote}
         Registro := Registro + '3'; {8 - Tipo do registro: Registro detalhe}
         Registro := Registro + Formatar(IntToStr(2*NumeroRegistro+1),5,false,'0'); {9 a 13 - N�mero seq�encial do registro no lote - Cada t�tulo tem 2 registros (P e Q)}
         Registro := Registro + 'P'; {14 - C�digo do segmento do registro detalhe}
         Registro := Registro + ' '; {15 - Uso exclusivo FEBRABAN/CNAB: Branco}
         case Titulos[NumeroRegistro].TipoOcorrencia of {16 a 17 - C�digo de movimento}
            toRemessaRegistrar                 : Registro := Registro + '01';
            toRemessaBaixar                    : Registro := Registro + '02';
            toRemessaConcederAbatimento        : Registro := Registro + '04';
            toRemessaCancelarAbatimento        : Registro := Registro + '05';
            toRemessaConcederDesconto          : Registro := Registro + '07';
            toRemessaCancelarDesconto          : Registro := Registro + '08';
            toRemessaAlterarVencimento         : Registro := Registro + '06';
            toRemessaProtestar                 : Registro := Registro + '09';
            toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
            toRemessaDispensarJuros            : Registro := Registro + '31';
            toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
         else
            Raise Exception.CreateFmt('Ocorr�ncia inv�lida em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end; {case Titulos[NumeroRegistro].TipoOcorrencia}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); {18 a 22 - Ag�ncia mantenedora da conta}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); {23 - D�gito verificador da ag�ncia}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); {24 a 35 - N�mero da conta vinculada � cobran�a / n�o � o n�mero da conta corrente comum}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); {36 - D�gito da conta vinculada � cobran�a}
         Registro := Registro + Modulo11(Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0')); {37 - D�gito verificador da ag�ncia / conta}
         Registro := Registro + Formatar('',9); {38 a 46 - Uso exclusivo CAIXA: Brancos}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,11,false,'0'); {47 a 57 - Nosso n�mero - identifica��o do t�tulo no banco}
         Registro := Registro + '1'; {58 - Cobran�a Simples}
         Registro := Registro + '1'; {59 - Forma de cadastramento do t�tulo no banco: com cadastramento}
         Registro := Registro + '2'; {60 - Tipo de documento: Escritural}
         case Titulos[NumeroRegistro].EmissaoBoleto of {61 a 62 - Quem emite e quem distribui o boleto?}
            ebBancoEmite      : Registro := Registro + '1' + '1';
            ebClienteEmite    : Registro := Registro + '2' + '2';
            ebBancoReemite    : Registro := Registro + '4' + '1';
            ebBancoNaoReemite : Registro := Registro + '5' + '2';
         else
            Raise Exception.CreateFmt('Identifica��o inv�lida de emiss�o de boleto em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end; {case Titulos[NumeroRegistro].EmissaoBoleto}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,11,false,'0'); {63 a 73 - N�mero que identifica o t�tulo na empresa}
         Registro := Registro + Formatar('',4); {74 a 77 - Uso exclusivo CAIXA: Brancos}
         Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataVencimento); {78 a 85 - Data de vencimento do t�tulo}
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorDocumento * 100); {86 a 100 - Valor nominal do t�tulo}
         Registro := Registro + '00000'; {101 a 105 - Ag�ncia cobradora. Deixar zerado. A Caixa determinar� automaticamente pelo CEP do sacado}
         Registro := Registro + '0'; {106 - D�gito da ag�ncia cobradora}
         case Titulos[NumeroRegistro].EspecieDocumento of {107 a 108 - Esp�cie do documento}
            edApoliceSeguro                : Registro := Registro + '20'; {AP  AP�LICE DE SEGURO}
            edCheque                       : Registro := Registro + '01'; {CH  CHEQUE}
            edDuplicataMercantil           : Registro := Registro + '02'; {DM  DUPLICATA MERCANTIL}
            edDuplicataMercantialIndicacao : Registro := Registro + '03'; {DMI DUPLICATA MERCANTIL P/ INDICA��O}
            edDuplicataRural               : Registro := Registro + '06'; {DR  DUPLICATA RURAL}
            edDuplicataServico             : Registro := Registro + '04'; {DS  DUPLICATA DE SERVI�O}
            edDuplicataServicoIndicacao    : Registro := Registro + '05'; {DSI DUPLICATA DE SERVI�O P/ INDICA��O}
            edFatura                       : Registro := Registro + '18'; {FAT FATURA}
            edLetraCambio                  : Registro := Registro + '07'; {LC  LETRA DE C�MBIO}
            edMensalidadeEscolar           : Registro := Registro + '21'; {ME  MENSALIDADE ESCOLAR}
            edNotaCreditoComercial         : Registro := Registro + '08'; {NCC NOTA DE CR�DITO COMERCIAL}
            edNotaCreditoExportacao        : Registro := Registro + '09'; {NCE NOTA DE CR�DITO A EXPORTA��O}
            edNotaCreditoIndustrial        : Registro := Registro + '10'; {NCI NOTA DE CR�DITO INDUSTRIAL}
            edNotaCreditoRural             : Registro := Registro + '11'; {NCR NOTA DE CR�DITO RURAL}
            edNotaDebito                   : Registro := Registro + '19'; {ND  NOTA DE D�BITO}
            edNotaPromissoria              : Registro := Registro + '12'; {NP  NOTA PROMISS�RIA}
            edNotaPromissoriaRural         : Registro := Registro + '13'; {NPR NOTA PROMISS�RIA RURAL}
            edNotaSeguro                   : Registro := Registro + '16'; {NS  NOTA DE SEGURO}
            edParcelaConsorcio             : Registro := Registro + '22'; {PC  PARCELA DE CONSORCIO}
            edRecibo                       : Registro := Registro + '17'; {RC  RECIBO}
            edTriplicataMercantil          : Registro := Registro + '14'; {TM  TRIPLICATA MERCANTIL}
            edTriplicataServico            : Registro := Registro + '15' {TS  TRIPLICATA DE SERVI�O}
         else
            Registro := Registro + '99'; {OUTROS}
         end; {case Titulos[NumeroRegistro].EspecieDocumento}
         case Titulos[NumeroRegistro].AceiteDocumento of {109 - Identifica��o de t�tulo Aceito / N�o aceito}
            adSim : Registro := Registro + 'A';
            adNao : Registro := Registro + 'N';
         end; {case Titulos[NumeroRegistro].AceiteDocumento}
         Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataDocumento); {110 a 117 - Data da emiss�o do documento}
         if Titulos[NumeroRegistro].ValorMoraJuros > 0 then
         begin
            Registro := Registro + '1'; {118 - C�digo de juros de mora: Valor por dia}
            if Titulos[NumeroRegistro].DataMoraJuros <> null then
               Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataMoraJuros) {119 a 126 - Data a partir da qual ser�o cobrados juros}
            else
               Registro := Registro + Formatar('',8,false,'0'); {119 a 126 - Data a partir da qual ser�o cobrados juros}
            Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorMoraJuros * 100); {127 a 141 - Valor de juros de mora por dia}
         end
         else
         begin
            Registro := Registro + '4'; {118 - C�digo de juros de mora: Acata cadastramento na CAIXA}
            Registro := Registro + Formatar('',8,false,'0'); {119 a 126 - Data a partir da qual ser�o cobrados juros}
            Registro := Registro + Formatar('',15,false,'0'); {127 a 141 - Valor de juros de mora por dia}
         end;
         if Titulos[NumeroRegistro].ValorDesconto > 0 then
         begin
            Registro := Registro + '1'; {142 - C�digo de desconto: Valor fixo at� a data informada}
            if Titulos[NumeroRegistro].DataDesconto <> null then
               Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataDesconto) {143 a 150 - Data do desconto}
            else
               Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataVencimento); {143 a 150 - se n�o houver desconto, deve ser informada a mesma data do vencimento}
            Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorDesconto * 100); {151 a 165 - Valor do desconto por dia}
         end
         else
         begin
            Registro := Registro + '0'; {142 - C�digo de desconto: Sem desconto}
            Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataVencimento); {143 a 150 - se n�o houver desconto, deve ser informada a mesma data do vencimento}
            Registro := Registro + Formatar('',15,false,'0'); {151 a 165 - Valor do desconto por dia}
         end;
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorIOF * 100); {166 a 180 - Valor do IOF a ser recolhido}
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorAbatimento * 100); {181 a 195 - Valor do abatimento}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25); {196 a 220 - Identifica��o do t�tulo na empresa}
         if (Titulos[NumeroRegistro].DataProtesto <> null) and (Titulos[NumeroRegistro].DataProtesto > Titulos[NumeroRegistro].DataVencimento) then
         begin
            Registro := Registro + '1'; {221 - C�digo de protesto: Protestar em XX dias corridos}
            Registro := Registro + Formatar(IntToStr(DaysBetween(Titulos[NumeroRegistro].DataProtesto, Titulos[NumeroRegistro].DataVencimento)),2,false,'0'); {222 a 223 - Prazo para protesto (em dias corridos)}
         end
         else
         begin
            Registro := Registro + '3'; {221 - C�digo de protesto: N�o protestar}
            Registro := Registro + Formatar('',2,false,'0'); {222 a 223 - Prazo para protesto (em dias corridos)}
         end;
         if (Titulos[NumeroRegistro].DataBaixa <> null) and (Titulos[NumeroRegistro].DataBaixa > Titulos[NumeroRegistro].DataVencimento) then
         begin
            Registro := Registro + '1'; {224 - C�digo para baixa/devolu��o: Baixar/devolver}
            Registro := Registro + Formatar(IntToStr(DaysBetween(Titulos[NumeroRegistro].DataBaixa,Titulos[NumeroRegistro].DataVencimento)),3,false,'0'); {225 a 227 - Prazo para baixa/devolu��o (em dias corridos)}
         end
         else
         begin
            Registro := Registro + '2'; {224 - C�digo para baixa/devolu��o: N�o baixar/n�o devolver}
            Registro := Registro + Formatar('',3,false,'0'); {Prazo para baixa/devolu��o (225 a 227 - em dias corridos)}
         end;
         Registro := Registro + '09'; {228 a 229 - C�digo da moeda: Real}
         Registro := Registro + Formatar('',10); {230 a 239 - Uso exclusivo FEBRABAN/CNAB}
         Registro := Registro + Formatar('',1); {240 - Uso exclusivo FEBRABAN/CNAB}

         Remessa.Add(Registro);
         Registro := '';

         {SEGMENTO Q}
         case Titulos[NumeroRegistro].Sacado.TipoInscricao of
            tiPessoaFisica  : ASacadoTipoInscricao := '1';
            tiPessoaJuridica: ASacadoTipoInscricao := '2';
            tiOutro         : ASacadoTipoInscricao := '9';
         end;

         Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
         Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {N�mero do lote}
         Registro := Registro + '3'; {Tipo do registro: Registro detalhe}
         Registro := Registro + Formatar(IntToStr(2*NumeroRegistro+2),5,false,'0'); {N�mero seq�encial do registro no lote - Cada t�tulo tem 2 registros (P e Q)}
         Registro := Registro + 'Q'; {C�digo do segmento do registro detalhe}
         Registro := Registro + ' '; {Uso exclusivo FEBRABAN/CNAB: Branco}
         case Titulos[NumeroRegistro].TipoOcorrencia of {C�digo de movimento}
            toRemessaRegistrar                 : Registro := Registro + '01';
            toRemessaBaixar                    : Registro := Registro + '02';
            toRemessaConcederAbatimento        : Registro := Registro + '04';
            toRemessaCancelarAbatimento        : Registro := Registro + '05';
            toRemessaConcederDesconto          : Registro := Registro + '07';
            toRemessaCancelarDesconto          : Registro := Registro + '08';
            toRemessaAlterarVencimento         : Registro := Registro + '06';
            toRemessaProtestar                 : Registro := Registro + '09';
            toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
            toRemessaDispensarJuros            : Registro := Registro + '31';
            toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
         else
            Raise Exception.CreateFmt('Ocorr�ncia inv�lida em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end; {case Titulos[NumeroRegistro].TipoOcorrencia}
         {Dados do sacado}
         Registro := Registro + Formatar(ASacadoTipoInscricao,1,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,15,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,15);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false);
         {Dados do sacador/avalista}
         Registro := Registro + '0'; {Tipo de inscri��o: N�o informado}
         Registro := Registro + Formatar('',15,false,'0'); {N�mero de inscri��o}
         Registro := Registro + Formatar('',40); {Nome do sacador/avalista}

         Registro := Registro + Formatar('',3); {Uso exclusivo FEBRABAN/CNAB}
         Registro := Registro + Formatar('',20); {Uso exclusivo FEBRABAN/CNAB}
         Registro := Registro + Formatar('',8); {Uso exclusivo FEBRABAN/CNAB}

         Remessa.Add(Registro);
         NumeroRegistro := NumeroRegistro + 1;
      end; {GERAR TODOS OS REGISTROS DETALHE DA REMESSA}

      {REGISTRO TRAILER DO LOTE}
      Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
      Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {N�mero do lote}
      Registro := Registro + '5'; {Tipo do registro: Registro trailer do lote}
      Registro := Registro + Formatar('',9); {Uso exclusivo FEBRABAN/CNAB}
      {Quantidade de registros do lote, incluindo header e trailer do lote.
       At� este momento Remessa cont�m:
       1 registro header de arquivo - � preciso exclu�-lo desta contagem
       1 registro header de lote
       Diversos registros detalhe
       Falta incluir 1 registro trailer de lote
       Ou seja Quantidade = Remessa.Count - 1 header de arquivo + 1 trailer de lote = Remessa.Count}
      Registro := Registro + Formatar(IntToStr(Remessa.Count),6,false,'0');
      {Totaliza��o da cobran�a simples - S� � usado no arquivo retorno}
      Registro := Registro + Formatar('',6,false,'0'); {Quantidade t�tulos em cobran�a}
      Registro := Registro + Formatar('',17,false,'0'); {Valor dos t�tulos em carteiras}
      {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',23); {Uso exclusivo FEBRABAN/CNAB}
      {Totaliza��o da cobran�a caucionada - S� � usado no arquivo retorno}
      Registro := Registro + Formatar('',6,false,'0'); {Quantidade t�tulos em cobran�a}
      Registro := Registro + Formatar('',17,false,'0'); {Valor dos t�tulos em carteiras}
      {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',31); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',117); {Uso exclusivo FEBRABAN/CNAB}

      Remessa.Add(Registro);
      Registro := '';

      {GERAR REGISTRO TRAILER DO ARQUIVO}
      Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
      Registro := Registro + '9999'; {Lote de servi�o}
      Registro := Registro + '9'; {Tipo do registro: Registro trailer do arquivo}
      Registro := Registro + Formatar('',9); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar(IntToStr(NumeroLote),6,false,'0'); {Quantidade de lotes do arquivo}
      Registro := Registro + Formatar(IntToStr(Remessa.Count + 1),6,false,'0'); {Quantidade de registros do arquivo, inclusive este registro que est� sendo criado agora}
      Registro := Registro + Formatar('',6); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',205); {Uso exclusivo FEBRABAN/CNAB}

      Remessa.Add(Registro);
   end;

   Result := TRUE;
end;



begin

  GerarRemessaCNAB240(RLBRemessa1, list);

  RLBRemessa1.NumeroArquivo := 1; { Sequencia n�merica de quandos arquivos j� foram gerados para este banco }
  RLBRemessa1.TipoMovimento := tmRemessa;
  RLBRemessa1.NomeArquivo := ExtractFileDir(Application.ExeName)+'\'+RLBRemessa1.NomeArquivo; // Apenas colocando um caminho para o arquivo


end;

procedure TForm1.Button4Click(Sender: TObject);

const
   CodigoBanco = '001';
   NomeBanco = 'BANCO DO BRASIL';
   Imagem = 0;


function GerarRemessaCNAB240(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao,
   Registro : string;
   NumeroRegistro, NumeroLote : integer;
begin
   Result := FALSE;
   NumeroRegistro := 0;
   NumeroLote := 1;
   Registro := '';
   Remessa.Clear;

   if ACobranca.Titulos.Count < 1 then
      Exception.Create('N�o h� t�tulos para gerar remessa');

   with ACobranca do
   begin

//      if LayoutArquivo <> laCNAB240 then
  //      Raise Exception.Create('CNAB240 � o �nico layout dispon�vel para o banco ' + CodigoBanco + ' - ' + NomeBanco);

      { GERAR REGISTRO-HEADER DO ARQUIVO }

      case Titulos[NumeroRegistro].Cedente.TipoInscricao of
         tiPessoaFisica  : ACedenteTipoInscricao := '1';
         tiPessoaJuridica: ACedenteTipoInscricao := '2';
         tiOutro         : ACedenteTipoInscricao := '3';
      end;

      if Formatar(CodigoBanco,3,false,'0') <> Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') then
         Raise Exception.CreateFmt('O t�tulo (Nosso N�mero: %s) n�o pertence ao banco %s (%s)',[Titulos[NumeroRegistro].NossoNumero,CodigoBanco,NomeBanco]);

      Registro := Formatar(CodigoBanco,3,false,'0'); //1 a 3 -C�digo do banco
      Registro := Registro + '0000'; //4 a 7 -Lote de servi�o
      Registro := Registro + '0'; //8 -Tipo de registro - Registro header de arquivo
      Registro := Registro + Formatar('',9); //9 a 17 Uso exclusivo FEBRABAN/CNAB
      Registro := Registro + ACedenteTipoInscricao; //18 - Tipo de inscri��o do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,14,false,'0'); //19 a 32 -N�mero de inscri��o do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,20,false,'0'); //33 a 52 - C�digo do conv�nio no banco
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); //53 a 57 - C�digo da ag�ncia do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); //58 - D�gito da ag�ncia do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); //59 a 70 - N�mero da conta do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); //71 - D�gito da conta do cedente
      Registro := Registro + ' ';//72 - D�gito verificador da ag�ncia / conta
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' '); //73 a 102 - Nome do cedente
      Registro := Registro + Formatar('BANCO DO BRASIL',30,true,' '); //103 a 132 - Nome do banco
      Registro := Registro + Formatar('',10); //133 a 142 - Uso exclusivo FEBRABAN/CNAB
      Registro := Registro + '1'; //143 - C�digo de Remessa (1) / Retorno (2)
      Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); //144 a 151 - Data do de gera��o do arquivo
      Registro := Registro + FormatDateTime('hhmmss',DataArquivo);  //152 a 157 - Hora de gera��o do arquivo
      Registro := Registro + Formatar(IntToStr(NumeroArquivo),6,false,'0'); //158 a 163 - N�mero seq�encial do arquivo
      Registro := Registro + '030'; //164 a 166 - N�mero da vers�o do layout do arquivo
      Registro := Registro + Formatar('',5,false,'0'); //167 a 171 - Densidade de grava��o do arquivo (BPI)
      Registro := Registro + Formatar('',20); // 172 a 191 - Uso reservado do banco
      Registro := Registro + Formatar('',20); // 192 a 211 - Uso reservado da empresa
      Registro := Registro + Formatar('',11); // 212 a 222 - 11 brancos
      Registro := Registro + 'CSP'; // 223 a 225 - 'CSP'
      Registro := Registro + Formatar('0',3); // 226 a 228 - Uso exclusivo de Vans
      Registro := Registro + Formatar('',2); // 229 a 230 - Tipo de servico
      Registro := Registro + Formatar('',10); //231 a 240 - titulo em carteira de cobranca
      Remessa.Add(Registro);
      Registro := '';

      //GERAR REGISTRO HEADER DO LOTE

      Registro := Formatar(CodigoBanco,3,false,'0'); //1 a 3 -C�digo do banco
      Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); //4 a 7 - N�mero do lote de servi�o
      Registro := Registro + '1'; //8 - Tipo do registro - Registro header de lote
      Registro := Registro + 'R'; //9 - Tipo de opera��o: R (Remessa) ou T (Retorno)
      Registro := Registro + '01'; //10 a 11 - Tipo de servi�o: 01 (Cobran�a)
      Registro := Registro + '00'; //12 a 13 - Forma de lan�amento: preencher com ZEROS no caso de cobran�a
      Registro := Registro + '020'; //14 a 16 - N�mero da vers�o do layout do lote
      Registro := Registro + ' '; //17 - Uso exclusivo FEBRABAN/CNAB
      Registro := Registro + ACedenteTipoInscricao; //18 - Tipo de inscri��o do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,15,false,'0'); //19 a 33 - N�mero de inscri��o do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,20,false,'0'); //34 a 53 - C�digo do conv�nio no banco
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); //54 a 58 - C�digo da ag�ncia do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); //59 - D�gito da ag�ncia do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); //60 a 71 - N�mero da conta do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); //72 - D�gito da conta do cedente
      Registro := Registro + ' '; //73 - D�gito verificador da ag�ncia / conta
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' '); //74 a 103 - Nome do cedente
      Registro := Registro + Formatar('',40); //104 a 143 - Mensagem 1 para todos os boletos do lote
      Registro := Registro + Formatar('',40); //144 a 183 - Mensagem 2 para todos os boletos do lote
      Registro := Registro + Formatar(IntToStr(NumeroArquivo),8,false,'0'); //184 a 191 - N�mero do arquivo
      Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); //192 a 199 - Data de gera��o do arquivo
      Registro := Registro + Formatar('0',8); //200 a 207 - Data do cr�dito - S� para arquivo retorno
      Registro := Registro + Formatar('',33); //208 a 240 - Uso exclusivo FEBRABAN/CNAB


      Remessa.Add(Registro);
      Registro := '';

      { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
       //*********************** SEGMENTO P ****************************
      while NumeroRegistro <= (Titulos.Count - 1) do
      begin

         if Formatar(CodigoBanco,3,false,'0') <> Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') then
            Raise Exception.CreateFmt('O t�tulo (Nosso N�mero: %s) n�o pertence ao banco %s (%s)',[Titulos[NumeroRegistro].NossoNumero,CodigoBanco,NomeBanco]);

         {SEGMENTO P}
         if Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') <> Formatar(CodigoBanco,3,false,'0') then
            Raise Exception.CreateFmt('Titulo n�o pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);

         case Titulos[NumeroRegistro].Cedente.TipoInscricao of
            tiPessoaFisica  : ACedenteTipoInscricao := '1';
            tiPessoaJuridica: ACedenteTipoInscricao := '2';
            tiOutro         : ACedenteTipoInscricao := '9';
         end;

         Registro := Formatar(CodigoBanco,3,false,'0'); //1 a 3 - C�digo do banco
         Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); //4 a 7 - N�mero do lote
         Registro := Registro + '3'; //8 - Tipo do registro: Registro detalhe
         Registro := Registro + Formatar(IntToStr(2*NumeroRegistro+1),5,false,'0'); //9 a 13 - N�mero seq�encial do registro no lote - Cada t�tulo tem 2 registros (P e Q)
         Registro := Registro + 'P'; //14 - C�digo do segmento do registro detalhe
         Registro := Registro + ' '; //15 - Uso exclusivo FEBRABAN/CNAB: Branco
         case Titulos[NumeroRegistro].TipoOcorrencia of //16 a 17 - C�digo de movimento
            toRemessaRegistrar                 : Registro := Registro + '01';
            toRemessaBaixar                    : Registro := Registro + '02';
            toRemessaConcederAbatimento        : Registro := Registro + '04';
            toRemessaCancelarAbatimento        : Registro := Registro + '05';
            toRemessaConcederDesconto          : Registro := Registro + '07';
            toRemessaCancelarDesconto          : Registro := Registro + '08';
            toRemessaAlterarVencimento         : Registro := Registro + '06';
            toRemessaProtestar                 : Registro := Registro + '09';
            toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
            toRemessaDispensarJuros            : Registro := Registro + '31';
            toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
         else
            Raise Exception.CreateFmt('Ocorr�ncia inv�lida em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end; //case Titulos[NumeroRegistro].TipoOcorrencia
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); //18 a 22 - Ag�ncia mantenedora da conta
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); //23 -D�gito verificador da ag�ncia
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); //24 a 35 - N�mero da conta corrente
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); //36 - D�gito verificador da conta
         Registro := Registro + ' '; //37 - D�gito verificador da ag�ncia / conta
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,20,True,'0'); //37 a 57 - Nosso n�mero - identifica��o do t�tulo no banco
         Registro := Registro + '1'; //58 - Cobran�a Simples
         Registro := Registro + '1'; //59 - Forma de cadastramento do t�tulo no banco: com cadastramento
         Registro := Registro + '1'; //60- Tipo de documento: Tradicional
         //*********** Emiss�o Boleto *****************************************
         case Titulos[NumeroRegistro].EmissaoBoleto of //61 a 62 - Quem emite e quem distribui o boleto?
            ebBancoEmite      : Registro := Registro + '1' + '1';
            ebClienteEmite    : Registro := Registro + '2' + '2';
            ebBancoReemite    : Registro := Registro + '4' + '1';
            ebBancoNaoReemite : Registro := Registro + '5' + '2';
         else
            Raise Exception.CreateFmt('Identifica��o inv�lida de emiss�o de boleto em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end; //case Titulos[NumeroRegistro].EmissaoBoleto
         //*********************************************************************

         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,15,false,'0'); //63 a 77 - N�mero que identifica o t�tulo na empresa
         Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataVencimento); //78 a 85 - Data de vencimento do t�tulo
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorDocumento * 100); //86 a 100 - Valor nominal do t�tulo
         Registro := Registro + Formatar('',5,false,'0'); //101 a 105 - Ag�ncia cobradora. Se ficar em branco, a caixa determina automaticamente pelo CEP do sacado
         Registro := Registro + ' '; //106 - D�gito da ag�ncia cobradora

         //*************** Especie do documento  *******************************
         case Titulos[NumeroRegistro].EspecieDocumento of //107 a 108 - Esp�cie do documento
            edApoliceSeguro                : Registro := Registro + '20'; {AP  AP�LICE DE SEGURO}
            edCheque                       : Registro := Registro + '01'; {CH  CHEQUE}
            edDuplicataMercantil           : Registro := Registro + '02'; {DM  DUPLICATA MERCANTIL}
            edDuplicataMercantialIndicacao : Registro := Registro + '03'; {DMI DUPLICATA MERCANTIL P/ INDICA��O}
            edDuplicataRural               : Registro := Registro + '06'; {DR  DUPLICATA RURAL}
            edDuplicataServico             : Registro := Registro + '04'; {DS  DUPLICATA DE SERVI�O}
            edDuplicataServicoIndicacao    : Registro := Registro + '05'; {DSI DUPLICATA DE SERVI�O P/ INDICA��O}
            edFatura                       : Registro := Registro + '18'; {FAT FATURA}
            edLetraCambio                  : Registro := Registro + '07'; {LC  LETRA DE C�MBIO}
            edMensalidadeEscolar           : Registro := Registro + '21'; {ME  MENSALIDADE ESCOLAR}
            edNotaCreditoComercial         : Registro := Registro + '08'; {NCC NOTA DE CR�DITO COMERCIAL}
            edNotaCreditoExportacao        : Registro := Registro + '09'; {NCE NOTA DE CR�DITO A EXPORTA��O}
            edNotaCreditoIndustrial        : Registro := Registro + '10'; {NCI NOTA DE CR�DITO INDUSTRIAL}
            edNotaCreditoRural             : Registro := Registro + '11'; {NCR NOTA DE CR�DITO RURAL}
            edNotaDebito                   : Registro := Registro + '19'; {ND  NOTA DE D�BITO}
            edNotaPromissoria              : Registro := Registro + '12'; {NP  NOTA PROMISS�RIA}
            edNotaPromissoriaRural         : Registro := Registro + '13'; {NPR NOTA PROMISS�RIA RURAL}
            edNotaSeguro                   : Registro := Registro + '16'; {NS  NOTA DE SEGURO}
            edParcelaConsorcio             : Registro := Registro + '22'; {PC  PARCELA DE CONSORCIO}
            edRecibo                       : Registro := Registro + '17'; {RC  RECIBO}
            edTriplicataMercantil          : Registro := Registro + '14'; {TM  TRIPLICATA MERCANTIL}
            edTriplicataServico            : Registro := Registro + '15' {TS  TRIPLICATA DE SERVI�O}
         else
            Registro := Registro + '99'; {OUTROS}
         end; //case Titulos[NumeroRegistro].EspecieDocumento
         //*********************************************************************

         //**************Aceite Documento **************************************
         case Titulos[NumeroRegistro].AceiteDocumento of //109 - Identifica��o de t�tulo Aceito / N�o aceito
            adSim : Registro := Registro + 'A';
            adNao : Registro := Registro + 'N';
         end; //case Titulos[NumeroRegistro].AceiteDocumento
         //*********************************************************************

         Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataDocumento); //110 a 117 - Data da emiss�o do documento

         //*************************  Mora Juros  ******************************
         if Titulos[NumeroRegistro].ValorMoraJuros > 0 then
         begin
            Registro := Registro + '1'; //118 - C�digo de juros de mora: Valor por dia
            if Titulos[NumeroRegistro].DataMoraJuros <> NULL then
               Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataMoraJuros) //119 a 126 - Data a partir da qual ser�o cobrados juros
            else
               Registro := Registro + Formatar('',8,false,'0'); //119 a 126 - Data a partir da qual ser�o cobrados juros
            Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorMoraJuros * 100); //127 a 141 - Valor de juros de mora por dia
         end
         else
         begin
            Registro := Registro + '0'; //118 - C�digo de juros de mora  (n�o h� juros)
            Registro := Registro + Formatar('',8,false,'0'); //119 a 126 - Data a partir da qual ser�o cobrados juros
            Registro := Registro + Formatar('',15,false,'0');//127 a 141 - Valor de juros de mora por dia
         end;
         //*******************  Descontos  *********************
         if Titulos[NumeroRegistro].ValorDesconto > 0 then
         begin
            Registro := Registro + '1'; //142 - C�digo de desconto: Valor fixo at� a data informada
            if Titulos[NumeroRegistro].DataDesconto <> NULL then
               Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataDesconto) //143 a 150 - Data do desconto
            else
               Registro := Registro + Formatar('',8,false,'0'); //143 a 150 - Data at� a qual ser� concedido desconto
            Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorDesconto * 100); //151 a 165 - Valor do desconto por dia
         end
         else
         begin
            Registro := Registro + '0'; //142 - C�digo de desconto: Sem desconto
            Registro := Registro + Formatar('',8,false,'0'); //143 a 150 - Data at� a qual ser� concedido desconto
            Registro := Registro + Formatar('',15,false,'0'); //151 a 165 - Valor do desconto por dia
         end;
         //*********************************************************************
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorIOF * 100); //166 a 180 - Valor do IOF a ser recolhido
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorAbatimento * 100); //181 a 195 - Valor do abatimento
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25); //196 a 220 - Identifica��o do t�tulo na empresa
         //**********************  Protesto  ***********************************
         if (Titulos[NumeroRegistro].DataProtesto <> null) and (Titulos[NumeroRegistro].DataProtesto > Titulos[NumeroRegistro].DataVencimento) then
         begin
            Registro := Registro + '1'; //221 - C�digo de protesto: Protestar em XX dias corridos
            Registro := Registro + Formatar(IntToStr(DaysBetween(Titulos[NumeroRegistro].DataProtesto, Titulos[NumeroRegistro].DataVencimento)),2,false,'0'); //221 - Prazo para protesto (em dias corridos)
         end
         else
         begin
            Registro := Registro + '3'; //221 - C�digo de protesto: N�o protestar
            Registro := Registro + Formatar('',2,false,'0'); //222 a 223 - Prazo para protesto (em dias corridos)
         end;
         //**********************  Codigo p/ Baixa/Devolucao  ******************
         if (Titulos[NumeroRegistro].DataBaixa <> null) and (Titulos[NumeroRegistro].DataBaixa > Titulos[NumeroRegistro].DataVencimento) then
         begin
            Registro := Registro + '1'; //224 - C�digo para baixa/devolu��o: Baixar/devolver}
            Registro := Registro + Formatar(IntToStr(DaysBetween(Titulos[NumeroRegistro].DataBaixa,Titulos[NumeroRegistro].DataVencimento)),3,false,'0'); //225 a 227 - Prazo para baixa/devolu��o (em dias corridos)
         end
         else
         begin
            Registro := Registro + '2'; //224 - C�digo para baixa/devolu��o: N�o baixar/n�o devolver
            Registro := Registro + Formatar('',3,false,'0'); //225 a 227 - Prazo para baixa/devolu��o (em dias corridos)
         end;
          //********************************************************************
         Registro := Registro + '09'; //228 a 229 - C�digo da moeda: Real
         Registro := Registro + Formatar('',10); //230 a 239 - Uso exclusivo FEBRABAN/CNAB
         Registro := Registro + Formatar('',1); //240 - Uso exclusivo FEBRABAN/CNAB

         Remessa.Add(Registro);
         Registro := '';

         {SEGMENTO Q}
         case Titulos[NumeroRegistro].Sacado.TipoInscricao of
            tiPessoaFisica  : ASacadoTipoInscricao := '1';
            tiPessoaJuridica: ASacadoTipoInscricao := '2';
            tiOutro         : ASacadoTipoInscricao := '9';
         end;

         Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
         Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {N�mero do lote}
         Registro := Registro + '3'; {Tipo do registro: Registro detalhe}
         Registro := Registro + Formatar(IntToStr(2*NumeroRegistro+2),5,false,'0'); {N�mero seq�encial do registro no lote - Cada t�tulo tem 2 registros (P e Q)}
         Registro := Registro + 'Q'; {C�digo do segmento do registro detalhe}
         Registro := Registro + ' '; {Uso exclusivo FEBRABAN/CNAB: Branco}
         case Titulos[NumeroRegistro].TipoOcorrencia of {C�digo de movimento}
            toRemessaRegistrar                 : Registro := Registro + '01';
            toRemessaBaixar                    : Registro := Registro + '02';
            toRemessaConcederAbatimento        : Registro := Registro + '04';
            toRemessaCancelarAbatimento        : Registro := Registro + '05';
            toRemessaConcederDesconto          : Registro := Registro + '07';
            toRemessaCancelarDesconto          : Registro := Registro + '08';
            toRemessaAlterarVencimento         : Registro := Registro + '06';
            toRemessaProtestar                 : Registro := Registro + '09';
            toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
            toRemessaDispensarJuros            : Registro := Registro + '31';
            toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
         else
            Raise Exception.CreateFmt('Ocorr�ncia inv�lida em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end; {case Titulos[NumeroRegistro].TipoOcorrencia}
         {Dados do sacado}
         Registro := Registro + Formatar(ASacadoTipoInscricao,1,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,15,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,15);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false);
         {Dados do sacador/avalista}
         Registro := Registro + '0'; {Tipo de inscri��o: N�o informado}
         Registro := Registro + Formatar('',15,false,'0'); {N�mero de inscri��o}
         Registro := Registro + Formatar('',40); {Nome do sacador/avalista}

         Registro := Registro + Formatar('',3); {Uso exclusivo FEBRABAN/CNAB}
         Registro := Registro + Formatar('',20); {Uso exclusivo FEBRABAN/CNAB}
         Registro := Registro + Formatar('',8); {Uso exclusivo FEBRABAN/CNAB}

         Remessa.Add(Registro);
         NumeroRegistro := NumeroRegistro + 1;
      end; {GERAR TODOS OS REGISTROS DETALHE DA REMESSA}

      {REGISTRO TRAILER DO LOTE}
      Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
      Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {N�mero do lote}
      Registro := Registro + '5'; {Tipo do registro: Registro trailer do lote}
      Registro := Registro + Formatar('',9); {Uso exclusivo FEBRABAN/CNAB}
      {Quantidade de registros do lote, incluindo header e trailer do lote.
       At� este momento Remessa cont�m:
       1 registro header de arquivo - � preciso exclu�-lo desta contagem
       1 registro header de lote
       Diversos registros detalhe
       Falta incluir 1 registro trailer de lote
       Ou seja Quantidade = Remessa.Count - 1 header de arquivo + 1 trailer de lote = Remessa.Count}
      Registro := Registro + Formatar(IntToStr(Remessa.Count),6,false,'0');
      {Totaliza��o da cobran�a simples - S� � usado no arquivo retorno}
      Registro := Registro + Formatar('',6,false,'0'); {Quantidade t�tulos em cobran�a}
      Registro := Registro + Formatar('',17,false,'0'); {Valor dos t�tulos em carteiras}
      {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',23); {Uso exclusivo FEBRABAN/CNAB}
      {Totaliza��o da cobran�a caucionada - S� � usado no arquivo retorno}
      Registro := Registro + Formatar('',6,false,'0'); {Quantidade t�tulos em cobran�a}
      Registro := Registro + Formatar('',17,false,'0'); {Valor dos t�tulos em carteiras}
      {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',31); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',117); {Uso exclusivo FEBRABAN/CNAB}

      Remessa.Add(Registro);
      Registro := '';

      {GERAR REGISTRO TRAILER DO ARQUIVO}
      Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
      Registro := Registro + '9999'; {Lote de servi�o}
      Registro := Registro + '9'; {Tipo do registro: Registro trailer do arquivo}
      Registro := Registro + Formatar('',9); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar(IntToStr(NumeroLote),6,false,'0'); {Quantidade de lotes do arquivo}
      Registro := Registro + Formatar(IntToStr(Remessa.Count + 1),6,false,'0'); {Quantidade de registros do arquivo, inclusive este registro que est� sendo criado agora}
      Registro := Registro + Formatar('',6); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',205); {Uso exclusivo FEBRABAN/CNAB}

      Remessa.Add(Registro);
   end;

   Result := TRUE;
end;



begin

end;

procedure TForm1.Button5Click(Sender: TObject);

const
  CodigoBanco = '033';
  NomeBanco = 'BANESPA'; {Banespa}
  Imagem = 12;

function GerarRemessaCNAB240(var ACobranca: TRLBRemessa;  var Remessa: TStringList): boolean;
var
  ACedenteTipoInscricao, ASacadoTipoInscricao,
  Registro : string;
  NumeroRegistro, NumeroLote : integer;
begin
  Result := FALSE;
  NumeroRegistro := 0;
  NumeroLote := 1;
  Registro := '';
  Remessa.Clear;

  if ACobranca.Titulos.Count < 1 then
    Exception.Create('N�o h� t�tulos para gerar remessa');

  with ACobranca do
  begin
//    if LayoutArquivo <> laCNAB240 then
  //    Raise Exception.Create('CNAB240 � o �nico layout dispon�vel para o banco ' + CodigoBanco + ' - ' + NomeBanco);

    { GERAR REGISTRO-HEADER DO ARQUIVO }
    case Titulos[NumeroRegistro].Cedente.TipoInscricao of
      tiPessoaFisica  : ACedenteTipoInscricao := '1';
      tiPessoaJuridica: ACedenteTipoInscricao := '2';
      tiOutro         : ACedenteTipoInscricao := '3';
    end;

    if Formatar(CodigoBanco,3,false,'0') <> Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') then
      Raise Exception.CreateFmt('O t�tulo (Nosso N�mero: %s) n�o pertence ao banco %s (%s)',[Titulos[NumeroRegistro].NossoNumero,CodigoBanco,NomeBanco]);

    Registro := Formatar(CodigoBanco,3,false,'0'); //1 a 3 -C�digo do banco
    Registro := Registro + '0000'; //4 a 7 -Lote de servi�o
    Registro := Registro + '0'; //8 -Tipo de registro - Registro header de arquivo
    Registro := Registro + Formatar('',8); //9 a 16 Uso exclusivo FEBRABAN/CNAB
    Registro := Registro + ACedenteTipoInscricao; //17 - Tipo de inscri��o do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,15,false,'0'); //18 a 32 -N�mero de inscri��o do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,'0'); //33 a 36 - C�digo da ag�ncia do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); //37 - D�gito da ag�ncia do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,9,false,'0'); //38 a 45 - Codigo do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.DigitoCodigoCedente,1,false,'0'); // 46 - Digito Codigo cedente
    Registro := Registro + Formatar('',25); // 48 a 72 Brancos
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' '); //73 a 102 - Nome do cedente
    Registro := Registro + Formatar('Banco Santander',30,True,' '); // 103-132 nome do banco
    Registro := Registro + Formatar('',10); // 133 a 142 brancos
    Registro := Registro + '1'; // 143 a 143 codigo remessa
    Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); //144 a 151 - Data do de gera��o do arquivo
    Registro := Registro + Formatar('',6);
    Registro := Registro + Formatar(IntToStr(NumeroArquivo),6,false,'0'); //158 a 163 - N�mero seq�encial do arquivo
    Registro := Registro + '040'; // 164 a 166 - Versao do layout
    Registro := Registro + Formatar('',74); // brancos
    Remessa.Add(Registro);
    Registro := '';

    { GERAR REGISTRO-HEADER DA REMESSA }
    Registro := Formatar(CodigoBanco,3,false,'0'); //1 a 3 -C�digo do banco
    Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); //4 a 7 - N�mero do lote de servi�o
    Registro := Registro + '1'; //8 - Tipo do registro - Registro header de lote
    Registro := Registro + 'R'; //9 - Tipo de opera��o: R (Remessa) ou T (Retorno)
    Registro := Registro + '01'; //10 a 11 - Tipo de servi�o: 01 (Cobran�a)
    Registro := Registro + Formatar('00',2); //12 a 13 - Uso exclusivo FEBRABAN/CNAB
    Registro := Registro + '030'; //14 a 16 - N�mero da vers�o do layout do lote

    Registro := Registro + ' '; //17 - Uso exclusivo FEBRABAN/CNAB
    Registro := Registro + ACedenteTipoInscricao; //18 - Tipo de inscri��o do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,15,false,'0'); //19 a 33 - N�mero de inscri��o do cedente
    Registro := Registro + Formatar('',20);; //34 a 53 - brancos
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,'0'); //54 a 57 - C�digo da ag�ncia do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); //58 - D�gito da ag�ncia do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,9,false,'0'); //59 a 67 - Codigo do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.DigitoCodigoCedente,1,false,'0'); // 68 - Digito codigo cedente
    Registro := Registro + Formatar('',5); // 69 a 73 - Brancos
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' '); //74 a 103 - Nome do cedente
    Registro := Registro + Formatar(Copy(Titulos[NumeroRegistro].Instrucoes.Text,1,40),40,true,' '); //104 a 143 - Mensagem 1 para todos os boletos do lote
    Registro := Registro + Formatar(Copy(Titulos[NumeroRegistro].Instrucoes.Text,41,80),40,true,' '); //144 a 183 - Mensagem 2 para todos os boletos do lote
    Registro := Registro + Formatar(IntToStr(NumeroArquivo),8,false,'0'); //184 a 191 - N�mero do arquivo
    Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); //192 a 199 - Data de gera��o do arquivo
    Registro := Registro + Formatar('',41); //200 a 240 - Uso exclusivo FEBRABAN/CNAB
    Remessa.Add(Registro);
    Registro := '';

    { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
       //*********************** SEGMENTO P ****************************
    while NumeroRegistro <= (Titulos.Count - 1) do
    begin
      if Formatar(CodigoBanco,3,false,'0') <> Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') then
         Raise Exception.CreateFmt('O t�tulo (Nosso N�mero: %s) n�o pertence ao banco %s (%s)',[Titulos[NumeroRegistro].NossoNumero,CodigoBanco,NomeBanco]);

      {SEGMENTO P}
      if Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') <> Formatar(CodigoBanco,3,false,'0') then
         Raise Exception.CreateFmt('Titulo n�o pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);

      case Titulos[NumeroRegistro].Cedente.TipoInscricao of
         tiPessoaFisica  : ACedenteTipoInscricao := '1';
         tiPessoaJuridica: ACedenteTipoInscricao := '2';
         tiOutro         : ACedenteTipoInscricao := '9';
      end;

      Registro := Formatar(CodigoBanco,3,false,'0'); //1 a 3 - C�digo do banco
      Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); //4 a 7 - N�mero do lote
      Registro := Registro + '3'; //8 - Tipo do registro: Registro detalhe
      Registro := Registro + Formatar(IntToStr(2*NumeroRegistro+1),5,false,'0'); //9 a 13 - N�mero seq�encial do registro no lote - Cada t�tulo tem 2 registros (P e Q)
      Registro := Registro + 'P'; //14 - C�digo do segmento do registro detalhe
      Registro := Registro + ' '; //15 - Uso exclusivo FEBRABAN/CNAB: Branco
      case Titulos[NumeroRegistro].TipoOcorrencia of //16 a 17 - C�digo de movimento
         toRemessaRegistrar                 : Registro := Registro + '01';
         toRemessaBaixar                    : Registro := Registro + '02';
         toRemessaConcederAbatimento        : Registro := Registro + '04';
         toRemessaCancelarAbatimento        : Registro := Registro + '05';
         toRemessaConcederDesconto          : Registro := Registro + '07';
         toRemessaCancelarDesconto          : Registro := Registro + '08';
         toRemessaAlterarVencimento         : Registro := Registro + '06';
         toRemessaProtestar                 : Registro := Registro + '09';
         toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
         toRemessaDispensarJuros            : Registro := Registro + '31';
         toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
      else
         Raise Exception.CreateFmt('Ocorr�ncia inv�lida em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
      end; //case Titulos[NumeroRegistro].TipoOcorrencia
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,'0'); //18 a 21 - Ag�ncia mantenedora da conta
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); //22 -D�gito verificador da ag�ncia
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,9,false,'0'); //23 a 31 - Codigo do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.DigitoCodigoCedente,1,false,'0'); //32 - digito Codigo do cedente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,9,false,'0'); //33 a 41 - N�mero da conta corrente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); //42 - D�gito verificador da conta
      Registro := Registro + '  '; // 43 a 44 - brancos
      Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,13,False,'0'); //45 a 57 - Nosso n�mero - identifica��o do t�tulo no banco
      Registro := Registro + '1'; //58 - C�digo da Carteira
      Registro := Registro + '1'; //59 - Forma de cadastramento do t�tulo no banco: com cadastramento
      Registro := Registro + '1'; //60- Tipo de documento: Tradicional
      Registro := Registro + '  '; // 61 a 62 brancos
      Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,15,True,' '); //63 a 77 - N�mero que identifica o t�tulo na empresa
      Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataVencimento); //78 a 85 - Data de vencimento do t�tulo
      Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorDocumento * 100); //86 a 100 - Valor nominal do t�tulo
      Registro := Registro + Formatar('',5,false,'0'); //101 a 105 - Ag�ncia cobradora. Se ficar em branco, a caixa determina automaticamente pelo CEP do sacado
      Registro := Registro + ' '; //106 - D�gito da ag�ncia cobradora

      //*************** Especie do documento  *******************************
      case Titulos[NumeroRegistro].EspecieDocumento of //107 a 108 - Esp�cie do documento
         edApoliceSeguro                : Registro := Registro + '20'; {AP  AP�LICE DE SEGURO}
         edCheque                       : Registro := Registro + '01'; {CH  CHEQUE}
         edDuplicataMercantil           : Registro := Registro + '02'; {DM  DUPLICATA MERCANTIL}
         edDuplicataMercantialIndicacao : Registro := Registro + '03'; {DMI DUPLICATA MERCANTIL P/ INDICA��O}
         edDuplicataRural               : Registro := Registro + '06'; {DR  DUPLICATA RURAL}
         edDuplicataServico             : Registro := Registro + '04'; {DS  DUPLICATA DE SERVI�O}
         edDuplicataServicoIndicacao    : Registro := Registro + '05'; {DSI DUPLICATA DE SERVI�O P/ INDICA��O}
         edFatura                       : Registro := Registro + '18'; {FAT FATURA}
         edLetraCambio                  : Registro := Registro + '07'; {LC  LETRA DE C�MBIO}
         edMensalidadeEscolar           : Registro := Registro + '21'; {ME  MENSALIDADE ESCOLAR}
         edNotaCreditoComercial         : Registro := Registro + '08'; {NCC NOTA DE CR�DITO COMERCIAL}
         edNotaCreditoExportacao        : Registro := Registro + '09'; {NCE NOTA DE CR�DITO A EXPORTA��O}
         edNotaCreditoIndustrial        : Registro := Registro + '10'; {NCI NOTA DE CR�DITO INDUSTRIAL}
         edNotaCreditoRural             : Registro := Registro + '11'; {NCR NOTA DE CR�DITO RURAL}
         edNotaDebito                   : Registro := Registro + '19'; {ND  NOTA DE D�BITO}
         edNotaPromissoria              : Registro := Registro + '12'; {NP  NOTA PROMISS�RIA}
         edNotaPromissoriaRural         : Registro := Registro + '13'; {NPR NOTA PROMISS�RIA RURAL}
         edNotaSeguro                   : Registro := Registro + '16'; {NS  NOTA DE SEGURO}
         edParcelaConsorcio             : Registro := Registro + '22'; {PC  PARCELA DE CONSORCIO}
         edRecibo                       : Registro := Registro + '17'; {RC  RECIBO}
         edTriplicataMercantil          : Registro := Registro + '14'; {TM  TRIPLICATA MERCANTIL}
         edTriplicataServico            : Registro := Registro + '15' {TS  TRIPLICATA DE SERVI�O}
      else
         Registro := Registro + '99'; {OUTROS}
      end; //case Titulos[NumeroRegistro].EspecieDocumento
      //*********************************************************************

      //**************Aceite Documento **************************************
      case Titulos[NumeroRegistro].AceiteDocumento of //109 - Identifica��o de t�tulo Aceito / N�o aceito
         adSim : Registro := Registro + 'A';
         adNao : Registro := Registro + 'N';
      end; //case Titulos[NumeroRegistro].AceiteDocumento
      //*********************************************************************

      Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataDocumento); //110 a 117 - Data da emiss�o do documento

      //*************************  Mora Juros  ******************************
      if Titulos[NumeroRegistro].ValorMoraJuros > 0 then
      begin
         Registro := Registro + '1'; //118 - C�digo de juros de mora: Valor por dia
         if Titulos[NumeroRegistro].DataMoraJuros <> NULL then
            Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataMoraJuros) //119 a 126 - Data a partir da qual ser�o cobrados juros
         else
            Registro := Registro + Formatar('',8,false,'0'); //119 a 126 - Data a partir da qual ser�o cobrados juros
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorMoraJuros * 100); //127 a 141 - Valor de juros de mora por dia
      end
      else
      begin
         Registro := Registro + '3'; //118 - C�digo de juros de mora  (n�o h� juros)
         Registro := Registro + Formatar('',8,false,'0'); //119 a 126 - Data a partir da qual ser�o cobrados juros
         Registro := Registro + Formatar('',15,false,'0');//127 a 141 - Valor de juros de mora por dia
      end;
      //*******************  Descontos  *********************
      if Titulos[NumeroRegistro].ValorDesconto > 0 then
      begin
         Registro := Registro + '1'; //142 - C�digo de desconto: Valor fixo at� a data informada
         if Titulos[NumeroRegistro].DataDesconto <> NULL then
            Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataDesconto) //143 a 150 - Data do desconto
         else
            Registro := Registro + Formatar('',8,false,'0'); //143 a 150 - Data at� a qual ser� concedido desconto
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorDesconto * 100); //151 a 165 - Valor do desconto por dia
      end
      else
      begin
         Registro := Registro + '0'; //142 - C�digo de desconto: Sem desconto
         Registro := Registro + Formatar('',8,false,'0'); //143 a 150 - Data at� a qual ser� concedido desconto
         Registro := Registro + Formatar('',15,false,'0'); //151 a 165 - Valor do desconto por dia
      end;
      //*********************************************************************
      Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorIOF * 100); //166 a 180 - Valor do IOF a ser recolhido
      Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorAbatimento * 100); //181 a 195 - Valor do abatimento
      Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25); //196 a 220 - Identifica��o do t�tulo na empresa
      //**********************  Protesto  ***********************************
      if (Titulos[NumeroRegistro].DataProtesto <> null) and (Titulos[NumeroRegistro].DataProtesto > Titulos[NumeroRegistro].DataVencimento) then
      begin
         Registro := Registro + '1'; //221 - C�digo de protesto: Protestar em XX dias corridos
         Registro := Registro + Formatar(IntToStr(DaysBetween(Titulos[NumeroRegistro].DataProtesto, Titulos[NumeroRegistro].DataVencimento)),2,false,'0'); //221 - Prazo para protesto (em dias corridos)
      end
      else
      begin
         Registro := Registro + '0'; //221 - C�digo de protesto: N�o protestar
         Registro := Registro + Formatar('',2,false,'0'); //222 a 223 - Prazo para protesto (em dias corridos)
      end;
      //**********************  Codigo p/ Baixa/Devolucao  ******************
      if (Titulos[NumeroRegistro].DataBaixa <> null) and (Titulos[NumeroRegistro].DataBaixa > Titulos[NumeroRegistro].DataVencimento) then
      begin
         Registro := Registro + '1'; //224 - C�digo para baixa/devolu��o: Baixar/devolver}
         Registro := Registro + Formatar(IntToStr(DaysBetween(Titulos[NumeroRegistro].DataBaixa,Titulos[NumeroRegistro].DataVencimento)),3,false,'0'); //225 a 227 - Prazo para baixa/devolu��o (em dias corridos)
      end
      else
      begin
         Registro := Registro + '2'; //224 - C�digo para baixa/devolu��o: N�o baixar/n�o devolver
         Registro := Registro + Formatar('',3,false,'0'); //225 a 227 - Prazo para baixa/devolu��o (em dias corridos)
      end;
       //********************************************************************
      Registro := Registro + '00'; //228 a 229 - C�digo da moeda: Real
      Registro := Registro + Formatar('',11); //230 a 240 - Uso exclusivo FEBRABAN/CNAB

      Remessa.Add(Registro);
      Registro := '';

      {SEGMENTO Q}
      case Titulos[NumeroRegistro].Sacado.TipoInscricao of
        tiPessoaFisica  : ASacadoTipoInscricao := '1';
        tiPessoaJuridica: ASacadoTipoInscricao := '2';
        tiOutro         : ASacadoTipoInscricao := '9';
      end;

      Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
      Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {N�mero do lote}
      Registro := Registro + '3'; {Tipo do registro: Registro detalhe}
      Registro := Registro + Formatar(IntToStr(2*NumeroRegistro+2),5,false,'0'); {N�mero seq�encial do registro no lote - Cada t�tulo tem 2 registros (P e Q)}
      Registro := Registro + 'Q'; {C�digo do segmento do registro detalhe}
      Registro := Registro + ' '; {Uso exclusivo FEBRABAN/CNAB: Branco}
      case Titulos[NumeroRegistro].TipoOcorrencia of {C�digo de movimento}
         toRemessaRegistrar                 : Registro := Registro + '01';
         toRemessaBaixar                    : Registro := Registro + '02';
         toRemessaConcederAbatimento        : Registro := Registro + '04';
         toRemessaCancelarAbatimento        : Registro := Registro + '05';
         toRemessaConcederDesconto          : Registro := Registro + '07';
         toRemessaCancelarDesconto          : Registro := Registro + '08';
         toRemessaAlterarVencimento         : Registro := Registro + '06';
         toRemessaProtestar                 : Registro := Registro + '09';
         toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
         toRemessaDispensarJuros            : Registro := Registro + '31';
         toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
      else
         Raise Exception.CreateFmt('Ocorr�ncia inv�lida em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
      end; {case Titulos[NumeroRegistro].TipoOcorrencia}
      {Dados do sacado}
      Registro := Registro + Formatar(ASacadoTipoInscricao,1,false,'0');
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,15,false,'0');
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40);
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,40);
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,15);
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0');
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true);
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false);
      {Dados do sacador/avalista}
      Registro := Registro + '0'; {Tipo de inscri��o: N�o informado}
      Registro := Registro + Formatar('',15,false,'0'); {N�mero de inscri��o}
      Registro := Registro + Formatar('',40); {Nome do sacador/avalista}

      Registro := Registro + Formatar('000',3); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('000',3); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('000',3); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('000',3); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',19); // brancos

      Remessa.Add(Registro);
      NumeroRegistro := NumeroRegistro + 1;
    end; {GERAR TODOS OS REGISTROS DETALHE DA REMESSA}

     {REGISTRO TRAILER DO LOTE}
    Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
    Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {N�mero do lote}
    Registro := Registro + '5'; {Tipo do registro: Registro trailer do lote}
    Registro := Registro + Formatar('',9); {Uso exclusivo FEBRABAN/CNAB}
    {Quantidade de registros do lote, incluindo header e trailer do lote.
     At� este momento Remessa cont�m:
     1 registro header de arquivo - � preciso exclu�-lo desta contagem
     1 registro header de lote
     Diversos registros detalhe
     Falta incluir 1 registro trailer de lote
     Ou seja Quantidade = Remessa.Count - 1 header de arquivo + 1 trailer de lote = Remessa.Count}
    Registro := Registro + Formatar(IntToStr(Remessa.Count),6,false,'0');
    {Uso exclusivo FEBRABAN/CNAB}
    Registro := Registro + Formatar('',217); {Uso exclusivo FEBRABAN/CNAB}

    Remessa.Add(Registro);
    Registro := '';

    {GERAR REGISTRO TRAILER DO ARQUIVO}
    Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
    Registro := Registro + '9999'; {Lote de servi�o}
    Registro := Registro + '9'; {Tipo do registro: Registro trailer do arquivo}
    Registro := Registro + Formatar('',9); {Uso exclusivo FEBRABAN/CNAB}
    Registro := Registro + Formatar(IntToStr(NumeroLote),6,false,'0'); {Quantidade de lotes do arquivo}
    Registro := Registro + Formatar(IntToStr(Remessa.Count + 1),6,false,'0'); {Quantidade de registros do arquivo, inclusive este registro que est� sendo criado agora}
    Registro := Registro + Formatar('',211); {Uso exclusivo FEBRABAN/CNAB}

    Remessa.Add(Registro);

    Result := TRUE;

  End;
end;

BEGIN
end;

procedure TForm1.Button6Click(Sender: TObject);


const
   CodigoBanco = '104';
   NomeBanco = 'Caixa Econ. Federal';
   Imagem = 4;


function GerarRemessaCNAB240(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
var
   ACedenteTipoInscricao, ASacadoTipoInscricao,
   Registro : string;
   NumeroRegistro, NumeroLote : integer;
begin
   Result := FALSE;
   NumeroRegistro := 0;
   NumeroLote := 1;
   Registro := '';
   Remessa.Clear;

   if ACobranca.Titulos.Count < 1 then
      Exception.Create('N�o h� t�tulos para gerar remessa');

   with ACobranca do
   begin
      { GERAR REGISTRO-HEADER DO ARQUIVO }
      case Titulos[NumeroRegistro].Cedente.TipoInscricao of
         tiPessoaFisica  : ACedenteTipoInscricao := '1';
         tiPessoaJuridica: ACedenteTipoInscricao := '2';
         tiOutro         : ACedenteTipoInscricao := '3';
      end;

      if Formatar(CodigoBanco,3,false,'0') <> Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') then
         Raise Exception.CreateFmt('O t�tulo (Nosso N�mero: %s) n�o pertence ao banco %s (%s)',[Titulos[NumeroRegistro].NossoNumero,CodigoBanco,NomeBanco]);

      Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
      Registro := Registro + '0000'; {Lote de servi�o}
      Registro := Registro + '0'; {Tipo de registro - Registro header de arquivo}
      Registro := Registro + Formatar('',9); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + ACedenteTipoInscricao; {Tipo de inscri��o do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,14,false,'0'); {N�mero de inscri��o do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,False,'0') + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,11,false,'0') + Formatar(Titulos[NumeroRegistro].Cedente.DigitoCodigoCedente,1,false,'0'); {C�digo do conv�nio no banco}
      Registro := Registro + Formatar('',4); {Uso exclusivo CAIXA}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); {C�digo da ag�ncia do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); {D�gito da ag�ncia do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); {N�mero da conta do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); {D�gito da conta do cedente}
      Registro := Registro + Modulo11(Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0')); {D�gito verificador da ag�ncia / conta do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' '); {Nome do cedente}
      Registro := Registro + Formatar('CAIXA ECONOMICA FEDERAL',30,true,' '); {Nome do banco}
      Registro := Registro + Formatar('',10); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + '1'; {C�digo de Remessa (1) / Retorno (2)}
      Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); {Data do de gera��o do arquivo}
      Registro := Registro + FormatDateTime('hhmmss',Now);  {Hora de gera��o do arquivo}
      Registro := Registro + Formatar(IntToStr(NumeroArquivo),6,false,'0'); {N�mero seq�encial do arquivo}
      Registro := Registro + '030'; {N�mero da vers�o do layout do arquivo}
      Registro := Registro + Formatar('',5,false,'0'); {Densidade de grava��o do arquivo (BPI)}
      Registro := Registro + Formatar('',20); {Uso reservado do banco}
      if TipoMovimento = tmRemessaTeste then
         Registro := Registro + Formatar('REMESSA-TESTE',20) {Dever� conter a literal REMESSA-TESTE para fase de testes}
      else
         Registro := Registro + Formatar('',20);
      Registro := Registro + Formatar('',29); {Uso exclusivo FEBRABAN/CNAB}

      Remessa.Add(Registro);
      Registro := '';

      {GERAR REGISTRO HEADER DO LOTE}
      Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
      Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {N�mero do lote de servi�o}
      Registro := Registro + '1'; {Tipo do registro - Registro header de lote}
      Registro := Registro + 'R'; {Tipo de opera��o: R (Remessa) ou T (Retorno)}
      Registro := Registro + '01'; {Tipo de servi�o: 01 (Cobran�a)}
      Registro := Registro + '00'; {Forma de lan�amento: preencher com ZEROS no caso de cobran�a}
      Registro := Registro + '020'; {N�mero da vers�o do layout do lote}
      Registro := Registro + ' '; {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + ACedenteTipoInscricao; {Tipo de inscri��o do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,15,false,'0'); {N�mero de inscri��o do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,False,'0') + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,11,false,'0') + Formatar(Titulos[NumeroRegistro].Cedente.DigitoCodigoCedente,1,false,'0'); {C�digo do conv�nio no banco}
      Registro := Registro + Formatar('',4); {Uso exclusivo CAIXA}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); {C�digo da ag�ncia do cedente}
      Registro := Registro + '0'; {D�gito da ag�ncia do cedente, zero conforme manual}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); {N�mero da conta do cedente}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); {D�gito da conta do cedente}
      Registro := Registro + Modulo11(Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0')); {D�gito verificador da ag�ncia / conta}
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' '); {Nome do cedente}
      Registro := Registro + Formatar('',40); {Mensagem 1 para todos os boletos do lote}
      Registro := Registro + Formatar('',40); {Mensagem 2 para todos os boletos do lote}
      Registro := Registro + Formatar(IntToStr(NumeroArquivo),8,false,'0'); {N�mero do arquivo}
      Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); {Data de gera��o do arquivo}
      Registro := Registro + Formatar('',8); {Data do cr�dito - S� para arquivo retorno}
      Registro := Registro + Formatar('',33); {Uso exclusivo FEBRABAN/CNAB}

      Remessa.Add(Registro);
      Registro := '';

      { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
      while NumeroRegistro <= (Titulos.Count - 1) do
      begin

         if Formatar(CodigoBanco,3,false,'0') <> Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') then
            Raise Exception.CreateFmt('O t�tulo (Nosso N�mero: %s) n�o pertence ao banco %s (%s)',[Titulos[NumeroRegistro].NossoNumero,CodigoBanco,NomeBanco]);

         {SEGMENTO P}
         if Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') <> Formatar(CodigoBanco,3,false,'0') then
            Raise Exception.CreateFmt('Titulo n�o pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);

         case Titulos[NumeroRegistro].Cedente.TipoInscricao of
            tiPessoaFisica  : ACedenteTipoInscricao := '1';
            tiPessoaJuridica: ACedenteTipoInscricao := '2';
            tiOutro         : ACedenteTipoInscricao := '9';
         end;

         Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
         Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {N�mero do lote}
         Registro := Registro + '3'; {Tipo do registro: Registro detalhe}
         if Trim(Titulos[NumeroRegistro].Instrucoes.Text) = '' then //verificando se existe o Segmento S
           Registro := Registro + Formatar(IntToStr(2*NumeroRegistro+1),5,false,'0') {N�mero seq�encial do registro no lote - Cada t�tulo tem 2 registros (P e Q)}
         else
           Registro := Registro + Formatar(IntToStr(3 * NumeroRegistro +1),5,false,'0');
         Registro := Registro + 'P'; {C�digo do segmento do registro detalhe}
         Registro := Registro + ' '; {Uso exclusivo FEBRABAN/CNAB: Branco}
         case Titulos[NumeroRegistro].TipoOcorrencia of {C�digo de movimento}
            toRemessaRegistrar                 : Registro := Registro + '01';
            toRemessaBaixar                    : Registro := Registro + '02';
            toRemessaConcederAbatimento        : Registro := Registro + '04';
            toRemessaCancelarAbatimento        : Registro := Registro + '05';
            toRemessaConcederDesconto          : Registro := Registro + '07';
            toRemessaCancelarDesconto          : Registro := Registro + '08';
            toRemessaAlterarVencimento         : Registro := Registro + '06';
            toRemessaProtestar                 : Registro := Registro + '09';
            toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
            toRemessaDispensarJuros            : Registro := Registro + '31';
            toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
         else
            Raise Exception.CreateFmt('Ocorr�ncia inv�lida em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end; {case Titulos[NumeroRegistro].TipoOcorrencia}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); {Ag�ncia mantenedora da conta}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); {D�gito verificador da ag�ncia}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); {N�mero da conta corrente}
         Registro := Registro + '0'; {D�gito verificador da conta, zero conforme manual}
         Registro := Registro + Modulo11(Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0')+Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0')); {D�gito verificador da ag�ncia / conta}
         Registro := Registro + Formatar('',9); {Uso exclusivo CAIXA: Brancos}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,11,false,'0'); {Nosso n�mero - identifica��o do t�tulo no banco}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Carteira,2,false,'0'); { carteira + forma de cadastramento do t�tulo no banco, segundo manual}
         Registro := Registro + '1'; {Tipo de documento: Tradicional}
         case Titulos[NumeroRegistro].EmissaoBoleto of {Quem emite e quem distribui o boleto?}
            ebBancoEmite      : Registro := Registro + '1' + '1';
            ebClienteEmite    : Registro := Registro + '2' + '2';
            ebBancoReemite    : Registro := Registro + '4' + '1';
            ebBancoNaoReemite : Registro := Registro + '5' + '2';
         else
            Raise Exception.CreateFmt('Identifica��o inv�lida de emiss�o de boleto em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end; {case Titulos[NumeroRegistro].EmissaoBoleto}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,11,false,'0'); {N�mero que identifica o t�tulo na empresa}
         Registro := Registro + Formatar('',4); {Uso exclusivo CAIXA: Brancos}
         Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataVencimento); {Data de vencimento do t�tulo}
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorDocumento * 100); {Valor nominal do t�tulo}
         Registro := Registro + Formatar('',5,false,'0'); {Ag�ncia cobradora. Se ficar em branco, a caixa determina automaticamente pelo CEP do sacado}
         Registro := Registro + ' '; {D�gito da ag�ncia cobradora}
         case Titulos[NumeroRegistro].EspecieDocumento of {Esp�cie do documento}
            edApoliceSeguro                : Registro := Registro + '20'; {AP  AP�LICE DE SEGURO}
            edCheque                       : Registro := Registro + '01'; {CH  CHEQUE}
            edDuplicataMercantil           : Registro := Registro + '02'; {DM  DUPLICATA MERCANTIL}
            edDuplicataMercantialIndicacao : Registro := Registro + '03'; {DMI DUPLICATA MERCANTIL P/ INDICA��O}
            edDuplicataRural               : Registro := Registro + '06'; {DR  DUPLICATA RURAL}
            edDuplicataServico             : Registro := Registro + '04'; {DS  DUPLICATA DE SERVI�O}
            edDuplicataServicoIndicacao    : Registro := Registro + '05'; {DSI DUPLICATA DE SERVI�O P/ INDICA��O}
            edFatura                       : Registro := Registro + '18'; {FAT FATURA}
            edLetraCambio                  : Registro := Registro + '07'; {LC  LETRA DE C�MBIO}
            edMensalidadeEscolar           : Registro := Registro + '21'; {ME  MENSALIDADE ESCOLAR}
            edNotaCreditoComercial         : Registro := Registro + '08'; {NCC NOTA DE CR�DITO COMERCIAL}
            edNotaCreditoExportacao        : Registro := Registro + '09'; {NCE NOTA DE CR�DITO A EXPORTA��O}
            edNotaCreditoIndustrial        : Registro := Registro + '10'; {NCI NOTA DE CR�DITO INDUSTRIAL}
            edNotaCreditoRural             : Registro := Registro + '11'; {NCR NOTA DE CR�DITO RURAL}
            edNotaDebito                   : Registro := Registro + '19'; {ND  NOTA DE D�BITO}
            edNotaPromissoria              : Registro := Registro + '12'; {NP  NOTA PROMISS�RIA}
            edNotaPromissoriaRural         : Registro := Registro + '13'; {NPR NOTA PROMISS�RIA RURAL}
            edNotaSeguro                   : Registro := Registro + '16'; {NS  NOTA DE SEGURO}
            edParcelaConsorcio             : Registro := Registro + '22'; {PC  PARCELA DE CONSORCIO}
            edRecibo                       : Registro := Registro + '17'; {RC  RECIBO}
            edTriplicataMercantil          : Registro := Registro + '14'; {TM  TRIPLICATA MERCANTIL}
            edTriplicataServico            : Registro := Registro + '15' {TS  TRIPLICATA DE SERVI�O}
         else
            Registro := Registro + '99'; {OUTROS}
         end; {case Titulos[NumeroRegistro].EspecieDocumento}
         case Titulos[NumeroRegistro].AceiteDocumento of {Identifica��o de t�tulo Aceito / N�o aceito}
            adSim : Registro := Registro + 'A';
            adNao : Registro := Registro + 'N';
         end; {case Titulos[NumeroRegistro].AceiteDocumento}
         Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataDocumento); {Data da emiss�o do documento}
         if Titulos[NumeroRegistro].ValorMoraJuros > 0 then
         begin
            Registro := Registro + '1'; {C�digo de juros de mora: Valor por dia}
            if Titulos[NumeroRegistro].DataMoraJuros <> null then
               Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataMoraJuros) {Data a partir da qual ser�o cobrados juros}
            else
               Registro := Registro + Formatar('',8,false,'0'); {Data a partir da qual ser�o cobrados juros}
            Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorMoraJuros * 100); {Valor de juros de mora por dia}
         end
         else
         begin
            Registro := Registro + '4'; {C�digo de juros de mora: Acata cadastramento na CAIXA}
            Registro := Registro + Formatar('',8,false,'0'); {Data a partir da qual ser�o cobrados juros}
            Registro := Registro + Formatar('',15,false,'0'); {Valor de juros de mora por dia}
         end;
         if Titulos[NumeroRegistro].ValorDesconto > 0 then
         begin
            Registro := Registro + '1'; {C�digo de desconto: Valor fixo at� a data informada}
            if Titulos[NumeroRegistro].DataDesconto <> null then
               Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataDesconto) {Data do desconto}
            else
               Registro := Registro + Formatar('',8,false,'0'); {Data at� a qual ser� concedido desconto}
            Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorDesconto * 100); {Valor do desconto por dia}
         end
         else
         begin
            Registro := Registro + '0'; {C�digo de desconto: Sem desconto}
            Registro := Registro + Formatar('',8,false,'0'); {Data at� a qual ser� concedido desconto}
            Registro := Registro + Formatar('',15,false,'0'); {Valor do desconto por dia}
         end;
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorIOF * 100); {Valor do IOF a ser recolhido}
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorAbatimento * 100); {Valor do abatimento}
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25); {Identifica��o do t�tulo na empresa}
         if (Titulos[NumeroRegistro].DataProtesto <> null) and (Titulos[NumeroRegistro].DataProtesto > Titulos[NumeroRegistro].DataVencimento) then
         begin
            Registro := Registro + '1'; {C�digo de protesto: Protestar em XX dias corridos}
            Registro := Registro + Formatar(IntToStr(DaysBetween(Titulos[NumeroRegistro].DataProtesto, Titulos[NumeroRegistro].DataVencimento)),2,false,'0'); {Prazo para protesto (em dias corridos)}
         end
         else
         begin
            Registro := Registro + '3'; {C�digo de protesto: N�o protestar}
            Registro := Registro + Formatar('',2,false,'0'); {Prazo para protesto (em dias corridos)}
         end;
         if (Titulos[NumeroRegistro].DataBaixa <> null) and (Titulos[NumeroRegistro].DataBaixa > Titulos[NumeroRegistro].DataVencimento) then
         begin
            Registro := Registro + '1'; {C�digo para baixa/devolu��o: Baixar/devolver}
            Registro := Registro + Formatar(IntToStr(DaysBetween(Titulos[NumeroRegistro].DataBaixa,Titulos[NumeroRegistro].DataVencimento)),3,false,'0'); {Prazo para baixa/devolu��o (em dias corridos)}
         end
         else
         begin
            Registro := Registro + '2'; {C�digo para baixa/devolu��o: N�o baixar/n�o devolver}
            Registro := Registro + Formatar('',3,false,'0'); {Prazo para baixa/devolu��o (em dias corridos)}
         end;
         Registro := Registro + '09'; {C�digo da moeda: Real}
         Registro := Registro + Formatar('',10); {Uso exclusivo FEBRABAN/CNAB}
         Registro := Registro + Formatar('',1); {Uso exclusivo FEBRABAN/CNAB}

         Remessa.Add(Registro);
         Registro := '';

         {SEGMENTO Q}
         case Titulos[NumeroRegistro].Sacado.TipoInscricao of
            tiPessoaFisica  : ASacadoTipoInscricao := '1';
            tiPessoaJuridica: ASacadoTipoInscricao := '2';
            tiOutro         : ASacadoTipoInscricao := '9';
         end;

         Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
         Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {N�mero do lote}
         Registro := Registro + '3'; {Tipo do registro: Registro detalhe}
         if Trim(Titulos[NumeroRegistro].Instrucoes.Text) = '' then //verificando se existe o Segmento S
           Registro := Registro + Formatar(IntToStr(2*NumeroRegistro+2),5,false,'0') {N�mero seq�encial do registro no lote - Cada t�tulo tem 2 registros (P e Q)}
         else
           Registro := Registro + Formatar(IntToStr(3 * NumeroRegistro +2),5,false,'0');
         Registro := Registro + 'Q'; {C�digo do segmento do registro detalhe}
         Registro := Registro + ' '; {Uso exclusivo FEBRABAN/CNAB: Branco}
         case Titulos[NumeroRegistro].TipoOcorrencia of {C�digo de movimento}
            toRemessaRegistrar                 : Registro := Registro + '01';
            toRemessaBaixar                    : Registro := Registro + '02';
            toRemessaConcederAbatimento        : Registro := Registro + '04';
            toRemessaCancelarAbatimento        : Registro := Registro + '05';
            toRemessaConcederDesconto          : Registro := Registro + '07';
            toRemessaCancelarDesconto          : Registro := Registro + '08';
            toRemessaAlterarVencimento         : Registro := Registro + '06';
            toRemessaProtestar                 : Registro := Registro + '09';
            toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
            toRemessaDispensarJuros            : Registro := Registro + '31';
            toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
         else
            Raise Exception.CreateFmt('Ocorr�ncia inv�lida em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
         end; {case Titulos[NumeroRegistro].TipoOcorrencia}
         {Dados do sacado}
         Registro := Registro + Formatar(ASacadoTipoInscricao,1,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,15,false,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,40);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,15);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0');
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true);
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false);
         {Dados do sacador/avalista}
         Registro := Registro + '0'; {Tipo de inscri��o: N�o informado}
         Registro := Registro + Formatar('',15,false,'0'); {N�mero de inscri��o}
         Registro := Registro + Formatar('',40); {Nome do sacador/avalista}

         Registro := Registro + Formatar('',3); {Uso exclusivo FEBRABAN/CNAB}
         Registro := Registro + Formatar('',20); {Uso exclusivo FEBRABAN/CNAB}
         Registro := Registro + Formatar('',8); {Uso exclusivo FEBRABAN/CNAB}

         Remessa.Add(Registro);

         {SEGMENTO S OPCIONAL}
         if Trim(Titulos[NumeroRegistro].Instrucoes.Text) <> '' then
         begin
           if Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') <> Formatar(CodigoBanco,3,false,'0') then
              Raise Exception.CreateFmt('Titulo n�o pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);

           Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
           Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {N�mero do lote}
           Registro := Registro + '3'; {Tipo do registro: Registro detalhe}
           Registro := Registro + Formatar(IntToStr(3 * NumeroRegistro +3), 5, false, '0'); {N�mero seq�encial do registro no lote - Cada t�tulo tem 2 registros (P, Q e S)}
           Registro := Registro + 'S'; {C�digo do segmento do registro detalhe}
           Registro := Registro + ' '; {Uso exclusivo FEBRABAN/CNAB: Branco}
           case Titulos[NumeroRegistro].TipoOcorrencia of {C�digo de movimento}
              toRemessaRegistrar                 : Registro := Registro + '01';
              toRemessaBaixar                    : Registro := Registro + '02';
              toRemessaConcederAbatimento        : Registro := Registro + '04';
              toRemessaCancelarAbatimento        : Registro := Registro + '05';
              toRemessaConcederDesconto          : Registro := Registro + '07';
              toRemessaCancelarDesconto          : Registro := Registro + '08';
              toRemessaAlterarVencimento         : Registro := Registro + '06';
              toRemessaProtestar                 : Registro := Registro + '09';
              toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
              toRemessaDispensarJuros            : Registro := Registro + '31';
              toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
           else
              Raise Exception.CreateFmt('Ocorr�ncia inv�lida em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
           end; {case Titulos[NumeroRegistro].TipoOcorrencia}
           Registro := Registro + '3'; {Identifica��o da Impress�o}
           case Titulos[NumeroRegistro].Instrucoes.Count of {Mensagem}
             1:begin
                 Registro := Registro + Formatar(Titulos[NumeroRegistro].Instrucoes[0],40);
                 Registro := Registro + Formatar(' ',40);
                 Registro := Registro + Formatar(' ',40);
                 Registro := Registro + Formatar(' ',40);
               end;
             2:begin
                 Registro := Registro + Formatar(Titulos[NumeroRegistro].Instrucoes[0],40);
                 Registro := Registro + Formatar(Titulos[NumeroRegistro].Instrucoes[1],40);
                 Registro := Registro + Formatar(' ',40);
                 Registro := Registro + Formatar(' ',40);
               end;
             3:begin
                 Registro := Registro + Formatar(Titulos[NumeroRegistro].Instrucoes[0],40);
                 Registro := Registro + Formatar(Titulos[NumeroRegistro].Instrucoes[1],40);
                 Registro := Registro + Formatar(Titulos[NumeroRegistro].Instrucoes[2],40);
                 Registro := Registro + Formatar(' ',40);
               end;
             4:begin
                 Registro := Registro + Formatar(Titulos[NumeroRegistro].Instrucoes[0],40);
                 Registro := Registro + Formatar(Titulos[NumeroRegistro].Instrucoes[1],40);
                 Registro := Registro + Formatar(Titulos[NumeroRegistro].Instrucoes[2],40);
                 Registro := Registro + Formatar(Titulos[NumeroRegistro].Instrucoes[3],40);
               end;
           end;
           Registro := Registro + Formatar(' ', 40); {Uso exclusivo FEBRABAN/CNAB}
           Registro := Registro + Formatar(' ', 22); {Uso exclusivo FEBRABAN/CNAB}           
           Remessa.Add(Registro);
         end;

         NumeroRegistro := NumeroRegistro + 1;
      end; {GERAR TODOS OS REGISTROS DETALHE DA REMESSA}

      {REGISTRO TRAILER DO LOTE}
      Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
      Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {N�mero do lote}
      Registro := Registro + '5'; {Tipo do registro: Registro trailer do lote}
      Registro := Registro + Formatar('',9); {Uso exclusivo FEBRABAN/CNAB}
      {Quantidade de registros do lote, incluindo header e trailer do lote.
       At� este momento Remessa cont�m:
       1 registro header de arquivo - � preciso exclu�-lo desta contagem
       1 registro header de lote
       Diversos registros detalhe
       Falta incluir 1 registro trailer de lote
       Ou seja Quantidade = Remessa.Count - 1 header de arquivo + 1 trailer de lote = Remessa.Count}
      Registro := Registro + Formatar(IntToStr(Remessa.Count),6,false,'0');
      {Totaliza��o da cobran�a simples - S� � usado no arquivo retorno}
      Registro := Registro + Formatar('',6,false,'0'); {Quantidade t�tulos em cobran�a}
      Registro := Registro + Formatar('',17,false,'0'); {Valor dos t�tulos em carteiras}
      {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',23); {Uso exclusivo FEBRABAN/CNAB}
      {Totaliza��o da cobran�a caucionada - S� � usado no arquivo retorno}
      Registro := Registro + Formatar('',6,false,'0'); {Quantidade t�tulos em cobran�a}
      Registro := Registro + Formatar('',17,false,'0'); {Valor dos t�tulos em carteiras}
      {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',31); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',117); {Uso exclusivo FEBRABAN/CNAB}

      Remessa.Add(Registro);
      Registro := '';

      {GERAR REGISTRO TRAILER DO ARQUIVO}
      Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
      Registro := Registro + '9999'; {Lote de servi�o}
      Registro := Registro + '9'; {Tipo do registro: Registro trailer do arquivo}
      Registro := Registro + Formatar('',9); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar(IntToStr(NumeroLote),6,false,'0'); {Quantidade de lotes do arquivo}
      Registro := Registro + Formatar(IntToStr(Remessa.Count + 1),6,false,'0'); {Quantidade de registros do arquivo, inclusive este registro que est� sendo criado agora}
      Registro := Registro + Formatar('',6); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',205); {Uso exclusivo FEBRABAN/CNAB}

      Remessa.Add(Registro);
   end;

   Result := TRUE;
end;
begin

end;

procedure TForm1.Button7Click(Sender: TObject);

const
   CodigoBanco = '237';
   NomeBanco = 'BRADESCO';
   Imagem = 6;

   

begin
//bradesco � so cnab400
end;

procedure TForm1.Button8Click(Sender: TObject);
const
   CodigoBanco = '275';
   NomeBanco = 'Banco Real S.A.';
   Imagem = 8;
begin
        //so cnab400
end;

procedure TForm1.Button9Click(Sender: TObject);
const
   CodigoBanco = '341';
   NomeBanco = 'Banco Itau S.A.';
   Imagem = 10;
begin
               //so cnab400
end;

procedure TForm1.Button10Click(Sender: TObject);
const
  CodigoBanco = '356';
  NomeBanco = 'Banco Real ABN AMRO';
  Imagem = 8;
begin
//so cnab400
end;

procedure TForm1.Button11Click(Sender: TObject);
const
 CodigoBanco = '399';
 NomeBanco = 'HSBC';
 Imagem = 14;
begin
             //so cnab400
end;

procedure TForm1.unibancoClick(Sender: TObject);
const
   CodigoBanco = '409';
   NomeBanco = 'UNIBANCO';
   Imagem = 15;
begin
               //so 400
end;

procedure TForm1.Button12Click(Sender: TObject);
const
   CodigoBanco = '479';
   NomeBanco = 'Bank Boston';
   Imagem = 17;

begin
// 400
end;

procedure TForm1.Button13Click(Sender: TObject);
const
   CodigoBanco = '748';
   NomeBanco = 'BANSICREDI';
   Imagem = 19;
begin
               //400
end;

procedure TForm1.BANCOOBClick(Sender: TObject);
const
  CodigoBanco = '756'; //Paran�
  NomeBanco = 'BANCOOB';
  Imagem = 18;

function GerarRemessaCNAB240(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
var
  ACedenteTipoInscricao, ASacadoTipoInscricao,
  Registro : string;
  NumeroRegistro, NumeroLote : integer;
begin
  Result := FALSE;
  NumeroRegistro := 0;
  NumeroLote := 1;
  Registro := '';
  Remessa.Clear;
  if ACobranca.Titulos.Count < 1 then
    Exception.Create('N�o h� t�tulos para gerar remessa');
  with ACobranca do
  begin
//    if LayoutArquivo <> laCNAB240 then
  //    Raise Exception.Create('CNAB240 � o �nico layout dispon�vel para o banco ' + CodigoBanco + ' - ' + NomeBanco);

    { GERAR REGISTRO-HEADER DO ARQUIVO }
    case Titulos[NumeroRegistro].Cedente.TipoInscricao of
      tiPessoaFisica  : ACedenteTipoInscricao := '1';
      tiPessoaJuridica: ACedenteTipoInscricao := '2';
      tiOutro         : ACedenteTipoInscricao := '3';
    end;

    if Formatar(CodigoBanco,3,false,'0') <> Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') then
      Raise Exception.CreateFmt('O t�tulo (Nosso N�mero: %s) n�o pertence ao banco %s (%s)',[Titulos[NumeroRegistro].NossoNumero,CodigoBanco,NomeBanco]);

    Registro := Formatar(CodigoBanco,3,false,'0'); //1 a 3 -C�digo do banco
    Registro := Registro + '0000'; //4 a 7 -Lote de servi�o
    Registro := Registro + '0'; //8 -Tipo de registro - Registro header de arquivo
    Registro := Registro + Formatar('',9); //9 a 17 Uso exclusivo FEBRABAN/CNAB
    Registro := Registro + ACedenteTipoInscricao; //18 - Tipo de inscri��o do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,14,false,'0'); //19 a 32 -N�mero de inscri��o do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,20,false,'0'); //33 a 52 - C�digo do conv�nio no banco
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); //53 a 57 - C�digo da ag�ncia do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); //58 - D�gito da ag�ncia do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); //59 a 70 - N�mero da conta do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); //71 - D�gito da conta do cedente
    Registro := Registro + ' ';//72 - D�gito verificador da ag�ncia / conta
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' '); //73 a 102 - Nome do cedente
    Registro := Registro + Formatar('BANCO DO BRASIL',30,true,' '); //103 a 132 - Nome do banco
    Registro := Registro + Formatar('',10); //133 a 142 - Uso exclusivo FEBRABAN/CNAB
    Registro := Registro + '1'; //143 - C�digo de Remessa (1) / Retorno (2)
    Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); //144 a 151 - Data do de gera��o do arquivo
    Registro := Registro + FormatDateTime('hhmmss',DataArquivo);  //152 a 157 - Hora de gera��o do arquivo
    Registro := Registro + Formatar(IntToStr(NumeroArquivo),6,false,'0'); //158 a 163 - N�mero seq�encial do arquivo
    Registro := Registro + '030'; //164 a 166 - N�mero da vers�o do layout do arquivo
    Registro := Registro + Formatar('',5,false,'0'); //167 a 171 - Densidade de grava��o do arquivo (BPI)
    Registro := Registro + Formatar('',20); // 172 a 191 - Uso reservado do banco
    Registro := Registro + Formatar('',20); // 192 a 211 - Uso reservado da empresa
    Registro := Registro + Formatar('',11); // 212 a 222 - 11 brancos
    Registro := Registro + 'CSP'; // 223 a 225 - 'CSP'
    Registro := Registro + Formatar('0',3); // 226 a 228 - Uso exclusivo de Vans
    Registro := Registro + Formatar('',2); // 229 a 230 - Tipo de servico
    Registro := Registro + Formatar('',10); //231 a 240 - titulo em carteira de cobranca
    Remessa.Add(Registro);
    Registro := '';

    //GERAR REGISTRO HEADER DO LOTE

    Registro := Formatar(CodigoBanco,3,false,'0'); //1 a 3 -C�digo do banco
    Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); //4 a 7 - N�mero do lote de servi�o
    Registro := Registro + '1'; //8 - Tipo do registro - Registro header de lote
    Registro := Registro + 'R'; //9 - Tipo de opera��o: R (Remessa) ou T (Retorno)
    Registro := Registro + '01'; //10 a 11 - Tipo de servi�o: 01 (Cobran�a)
    Registro := Registro + '00'; //12 a 13 - Forma de lan�amento: preencher com ZEROS no caso de cobran�a
    Registro := Registro + '020'; //14 a 16 - N�mero da vers�o do layout do lote
    Registro := Registro + ' '; //17 - Uso exclusivo FEBRABAN/CNAB
    Registro := Registro + ACedenteTipoInscricao; //18 - Tipo de inscri��o do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,15,false,'0'); //19 a 33 - N�mero de inscri��o do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.CodigoCedente,20,false,'0'); //34 a 53 - C�digo do conv�nio no banco
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); //54 a 58 - C�digo da ag�ncia do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); //59 - D�gito da ag�ncia do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); //60 a 71 - N�mero da conta do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); //72 - D�gito da conta do cedente
    Registro := Registro + ' '; //73 - D�gito verificador da ag�ncia / conta
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' '); //74 a 103 - Nome do cedente
    Registro := Registro + Formatar('',40); //104 a 143 - Mensagem 1 para todos os boletos do lote
    Registro := Registro + Formatar('',40); //144 a 183 - Mensagem 2 para todos os boletos do lote
    Registro := Registro + Formatar(IntToStr(NumeroArquivo),8,false,'0'); //184 a 191 - N�mero do arquivo
    Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); //192 a 199 - Data de gera��o do arquivo
    Registro := Registro + Formatar('0',8); //200 a 207 - Data do cr�dito - S� para arquivo retorno
    Registro := Registro + Formatar('',33); //208 a 240 - Uso exclusivo FEBRABAN/CNAB

    Remessa.Add(Registro);
    Registro := '';

    { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
    //*********************** SEGMENTO P ****************************
    while NumeroRegistro <= (Titulos.Count - 1) do
    begin
      if Formatar(CodigoBanco,3,false,'0') <> Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') then
        Raise Exception.CreateFmt('O t�tulo (Nosso N�mero: %s) n�o pertence ao banco %s (%s)',[Titulos[NumeroRegistro].NossoNumero,CodigoBanco,NomeBanco]);

      {SEGMENTO P}
      if Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') <> Formatar(CodigoBanco,3,false,'0') then
        Raise Exception.CreateFmt('Titulo n�o pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);

      case Titulos[NumeroRegistro].Cedente.TipoInscricao of
        tiPessoaFisica  : ACedenteTipoInscricao := '1';
        tiPessoaJuridica: ACedenteTipoInscricao := '2';
        tiOutro         : ACedenteTipoInscricao := '9';
      end;

      Registro := Formatar(CodigoBanco,3,false,'0'); //1 a 3 - C�digo do banco
      Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); //4 a 7 - N�mero do lote
      Registro := Registro + '3'; //8 - Tipo do registro: Registro detalhe
      Registro := Registro + Formatar(IntToStr(2*NumeroRegistro+1),5,false,'0'); //9 a 13 - N�mero seq�encial do registro no lote - Cada t�tulo tem 2 registros (P e Q)
      Registro := Registro + 'P'; //14 - C�digo do segmento do registro detalhe
      Registro := Registro + ' '; //15 - Uso exclusivo FEBRABAN/CNAB: Branco
      case Titulos[NumeroRegistro].TipoOcorrencia of //16 a 17 - C�digo de movimento
        toRemessaRegistrar                 : Registro := Registro + '01';
        toRemessaBaixar                    : Registro := Registro + '02';
        toRemessaConcederAbatimento        : Registro := Registro + '04';
        toRemessaCancelarAbatimento        : Registro := Registro + '05';
        toRemessaConcederDesconto          : Registro := Registro + '07';
        toRemessaCancelarDesconto          : Registro := Registro + '08';
        toRemessaAlterarVencimento         : Registro := Registro + '06';
        toRemessaProtestar                 : Registro := Registro + '09';
        toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
        toRemessaDispensarJuros            : Registro := Registro + '31';
        toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
      else
        Raise Exception.CreateFmt('Ocorr�ncia inv�lida em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
      end; //case Titulos[NumeroRegistro].TipoOcorrencia
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,5,false,'0'); //18 a 22 - Ag�ncia mantenedora da conta
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); //23 -D�gito verificador da ag�ncia
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,12,false,'0'); //24 a 35 - N�mero da conta corrente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); //36 - D�gito verificador da conta
      Registro := Registro + ' '; //37 - D�gito verificador da ag�ncia / conta
      Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,20,True,'0'); //37 a 57 - Nosso n�mero - identifica��o do t�tulo no banco
      Registro := Registro + '1'; //58 - Cobran�a Simples
      Registro := Registro + '1'; //59 - Forma de cadastramento do t�tulo no banco: com cadastramento
      Registro := Registro + '1'; //60- Tipo de documento: Tradicional
      //*********** Emiss�o Boleto *****************************************
      case Titulos[NumeroRegistro].EmissaoBoleto of //61 a 62 - Quem emite e quem distribui o boleto?
        ebBancoEmite      : Registro := Registro + '1' + '1';
        ebClienteEmite    : Registro := Registro + '2' + '2';
        ebBancoReemite    : Registro := Registro + '4' + '1';
        ebBancoNaoReemite : Registro := Registro + '5' + '2';
      else
        Raise Exception.CreateFmt('Identifica��o inv�lida de emiss�o de boleto em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
      end; //case Titulos[NumeroRegistro].EmissaoBoleto
      //*********************************************************************
      Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,15,false,'0'); //63 a 77 - N�mero que identifica o t�tulo na empresa
      Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataVencimento); //78 a 85 - Data de vencimento do t�tulo
      Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorDocumento * 100); //86 a 100 - Valor nominal do t�tulo
      Registro := Registro + Formatar('',5,false,'0'); //101 a 105 - Ag�ncia cobradora. Se ficar em branco, a caixa determina automaticamente pelo CEP do sacado
      Registro := Registro + ' '; //106 - D�gito da ag�ncia cobradora
      //*************** Especie do documento  *******************************
      case Titulos[NumeroRegistro].EspecieDocumento of //107 a 108 - Esp�cie do documento
        edApoliceSeguro                : Registro := Registro + '20'; {AP  AP�LICE DE SEGURO}
        edCheque                       : Registro := Registro + '01'; {CH  CHEQUE}
        edDuplicataMercantil           : Registro := Registro + '02'; {DM  DUPLICATA MERCANTIL}
        edDuplicataMercantialIndicacao : Registro := Registro + '03'; {DMI DUPLICATA MERCANTIL P/ INDICA��O}
        edDuplicataRural               : Registro := Registro + '06'; {DR  DUPLICATA RURAL}
        edDuplicataServico             : Registro := Registro + '04'; {DS  DUPLICATA DE SERVI�O}
        edDuplicataServicoIndicacao    : Registro := Registro + '05'; {DSI DUPLICATA DE SERVI�O P/ INDICA��O}
        edFatura                       : Registro := Registro + '18'; {FAT FATURA}
        edLetraCambio                  : Registro := Registro + '07'; {LC  LETRA DE C�MBIO}
        edMensalidadeEscolar           : Registro := Registro + '21'; {ME  MENSALIDADE ESCOLAR}
        edNotaCreditoComercial         : Registro := Registro + '08'; {NCC NOTA DE CR�DITO COMERCIAL}
        edNotaCreditoExportacao        : Registro := Registro + '09'; {NCE NOTA DE CR�DITO A EXPORTA��O}
        edNotaCreditoIndustrial        : Registro := Registro + '10'; {NCI NOTA DE CR�DITO INDUSTRIAL}
        edNotaCreditoRural             : Registro := Registro + '11'; {NCR NOTA DE CR�DITO RURAL}
        edNotaDebito                   : Registro := Registro + '19'; {ND  NOTA DE D�BITO}
        edNotaPromissoria              : Registro := Registro + '12'; {NP  NOTA PROMISS�RIA}
        edNotaPromissoriaRural         : Registro := Registro + '13'; {NPR NOTA PROMISS�RIA RURAL}
        edNotaSeguro                   : Registro := Registro + '16'; {NS  NOTA DE SEGURO}
        edParcelaConsorcio             : Registro := Registro + '22'; {PC  PARCELA DE CONSORCIO}
        edRecibo                       : Registro := Registro + '17'; {RC  RECIBO}
        edTriplicataMercantil          : Registro := Registro + '14'; {TM  TRIPLICATA MERCANTIL}
        edTriplicataServico            : Registro := Registro + '15' {TS  TRIPLICATA DE SERVI�O}
      else
        Registro := Registro + '99'; {OUTROS}
      end; //case Titulos[NumeroRegistro].EspecieDocumento

      //**************Aceite Documento **************************************
      case Titulos[NumeroRegistro].AceiteDocumento of //109 - Identifica��o de t�tulo Aceito / N�o aceito
        adSim : Registro := Registro + 'A';
        adNao : Registro := Registro + 'N';
      end; //case Titulos[NumeroRegistro].AceiteDocumento
      Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataDocumento); //110 a 117 - Data da emiss�o do documento
      //*************************  Mora Juros  ******************************
      if Titulos[NumeroRegistro].ValorMoraJuros > 0 then
      begin
        Registro := Registro + '1'; //118 - C�digo de juros de mora: Valor por dia
        if Titulos[NumeroRegistro].DataMoraJuros <> Null then
          Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataMoraJuros) //119 a 126 - Data a partir da qual ser�o cobrados juros
        else
          Registro := Registro + Formatar('',8,false,'0'); //119 a 126 - Data a partir da qual ser�o cobrados juros
        Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorMoraJuros * 100); //127 a 141 - Valor de juros de mora por dia
      end
      else
      begin
        Registro := Registro + '0'; //118 - C�digo de juros de mora  (n�o h� juros)
        Registro := Registro + Formatar('',8,false,'0'); //119 a 126 - Data a partir da qual ser�o cobrados juros
        Registro := Registro + Formatar('',15,false,'0');//127 a 141 - Valor de juros de mora por dia
      end;
      //*******************  Descontos  *********************
      if Titulos[NumeroRegistro].ValorDesconto > 0 then
      begin
        Registro := Registro + '1'; //142 - C�digo de desconto: Valor fixo at� a data informada
        if Titulos[NumeroRegistro].DataDesconto <> NULL then
          Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataDesconto) //143 a 150 - Data do desconto
        else
          Registro := Registro + Formatar('',8,false,'0'); //143 a 150 - Data at� a qual ser� concedido desconto
        Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorDesconto * 100); //151 a 165 - Valor do desconto por dia
      end
      else
      begin
        Registro := Registro + '0'; //142 - C�digo de desconto: Sem desconto
        Registro := Registro + Formatar('',8,false,'0'); //143 a 150 - Data at� a qual ser� concedido desconto
        Registro := Registro + Formatar('',15,false,'0'); //151 a 165 - Valor do desconto por dia
      end;

      Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorIOF * 100); //166 a 180 - Valor do IOF a ser recolhido
      Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorAbatimento * 100); //181 a 195 - Valor do abatimento
      Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25); //196 a 220 - Identifica��o do t�tulo na empresa

      //**********************  Protesto  ***********************************
      if (Titulos[NumeroRegistro].DataProtesto <> null) and (Titulos[NumeroRegistro].DataProtesto > Titulos[NumeroRegistro].DataVencimento) then
      begin
        Registro := Registro + '1'; //221 - C�digo de protesto: Protestar em XX dias corridos
        Registro := Registro + Formatar(IntToStr(DaysBetween(Titulos[NumeroRegistro].DataProtesto, Titulos[NumeroRegistro].DataVencimento)),2,false,'0'); //221 - Prazo para protesto (em dias corridos)
      end
      else
      begin
        Registro := Registro + '3'; //221 - C�digo de protesto: N�o protestar
        Registro := Registro + Formatar('',2,false,'0'); //222 a 223 - Prazo para protesto (em dias corridos)
      end;
      //**********************  Codigo p/ Baixa/Devolucao  ******************
      if (Titulos[NumeroRegistro].DataBaixa <> null) and (Titulos[NumeroRegistro].DataBaixa > Titulos[NumeroRegistro].DataVencimento) then
      begin
        Registro := Registro + '1'; //224 - C�digo para baixa/devolu��o: Baixar/devolver}
        Registro := Registro + Formatar(IntToStr(DaysBetween(Titulos[NumeroRegistro].DataBaixa,Titulos[NumeroRegistro].DataVencimento)),3,false,'0'); //225 a 227 - Prazo para baixa/devolu��o (em dias corridos)
      end
      else
      begin
        Registro := Registro + '2'; //224 - C�digo para baixa/devolu��o: N�o baixar/n�o devolver
        Registro := Registro + Formatar('',3,false,'0'); //225 a 227 - Prazo para baixa/devolu��o (em dias corridos)
      end;
      //********************************************************************
      Registro := Registro + '09'; //228 a 229 - C�digo da moeda: Real
      Registro := Registro + Formatar('',10); //230 a 239 - Uso exclusivo FEBRABAN/CNAB
      Registro := Registro + Formatar('',1); //240 - Uso exclusivo FEBRABAN/CNAB

      Remessa.Add(Registro);
      Registro := '';

      {SEGMENTO Q}
      case Titulos[NumeroRegistro].Sacado.TipoInscricao of
        tiPessoaFisica  : ASacadoTipoInscricao := '1';
        tiPessoaJuridica: ASacadoTipoInscricao := '2';
        tiOutro         : ASacadoTipoInscricao := '9';
      end;

      Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
      Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {N�mero do lote}
      Registro := Registro + '3'; {Tipo do registro: Registro detalhe}
      Registro := Registro + Formatar(IntToStr(2*NumeroRegistro+2),5,false,'0'); {N�mero seq�encial do registro no lote - Cada t�tulo tem 2 registros (P e Q)}
      Registro := Registro + 'Q'; {C�digo do segmento do registro detalhe}
      Registro := Registro + ' '; {Uso exclusivo FEBRABAN/CNAB: Branco}
      case Titulos[NumeroRegistro].TipoOcorrencia of {C�digo de movimento}
        toRemessaRegistrar                 : Registro := Registro + '01';
        toRemessaBaixar                    : Registro := Registro + '02';
        toRemessaConcederAbatimento        : Registro := Registro + '04';
        toRemessaCancelarAbatimento        : Registro := Registro + '05';
        toRemessaConcederDesconto          : Registro := Registro + '07';
        toRemessaCancelarDesconto          : Registro := Registro + '08';
        toRemessaAlterarVencimento         : Registro := Registro + '06';
        toRemessaProtestar                 : Registro := Registro + '09';
        toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
        toRemessaDispensarJuros            : Registro := Registro + '31';
        toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
      else
         Raise Exception.CreateFmt('Ocorr�ncia inv�lida em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
      end; {case Titulos[NumeroRegistro].TipoOcorrencia}
      {Dados do sacado}
      Registro := Registro + Formatar(ASacadoTipoInscricao,1,false,'0');
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,15,false,'0');
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40);
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,40);
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,15);
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0');
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true);
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false);
      {Dados do sacador/avalista}
      Registro := Registro + '0'; {Tipo de inscri��o: N�o informado}
      Registro := Registro + Formatar('',15,false,'0'); {N�mero de inscri��o}
      Registro := Registro + Formatar('',40); {Nome do sacador/avalista}

      Registro := Registro + Formatar('',3); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',20); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',8); {Uso exclusivo FEBRABAN/CNAB}

       Remessa.Add(Registro);
       NumeroRegistro := NumeroRegistro + 1;
    end; {GERAR TODOS OS REGISTROS DETALHE DA REMESSA}

    {REGISTRO TRAILER DO LOTE}
    Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
    Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {N�mero do lote}
    Registro := Registro + '5'; {Tipo do registro: Registro trailer do lote}
    Registro := Registro + Formatar('',9); {Uso exclusivo FEBRABAN/CNAB}
    {Quantidade de registros do lote, incluindo header e trailer do lote.
    At� este momento Remessa cont�m:
    1 registro header de arquivo - � preciso exclu�-lo desta contagem
    1 registro header de lote
    Diversos registros detalhe
    Falta incluir 1 registro trailer de lote
    Ou seja Quantidade = Remessa.Count - 1 header de arquivo + 1 trailer de lote = Remessa.Count}
    Registro := Registro + Formatar(IntToStr(Remessa.Count),6,false,'0');
    {Totaliza��o da cobran�a simples - S� � usado no arquivo retorno}
    Registro := Registro + Formatar('',6,false,'0'); {Quantidade t�tulos em cobran�a}
    Registro := Registro + Formatar('',17,false,'0'); {Valor dos t�tulos em carteiras}
    {Uso exclusivo FEBRABAN/CNAB}
    Registro := Registro + Formatar('',23); {Uso exclusivo FEBRABAN/CNAB}
    {Totaliza��o da cobran�a caucionada - S� � usado no arquivo retorno}
    Registro := Registro + Formatar('',6,false,'0'); {Quantidade t�tulos em cobran�a}
    Registro := Registro + Formatar('',17,false,'0'); {Valor dos t�tulos em carteiras}
    {Uso exclusivo FEBRABAN/CNAB}
    Registro := Registro + Formatar('',31); {Uso exclusivo FEBRABAN/CNAB}
    Registro := Registro + Formatar('',117); {Uso exclusivo FEBRABAN/CNAB}

    Remessa.Add(Registro);
    Registro := '';

    {GERAR REGISTRO TRAILER DO ARQUIVO}
    Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
    Registro := Registro + '9999'; {Lote de servi�o}
    Registro := Registro + '9'; {Tipo do registro: Registro trailer do arquivo}
    Registro := Registro + Formatar('',9); {Uso exclusivo FEBRABAN/CNAB}
    Registro := Registro + Formatar(IntToStr(NumeroLote),6,false,'0'); {Quantidade de lotes do arquivo}
    Registro := Registro + Formatar(IntToStr(Remessa.Count + 1),6,false,'0'); {Quantidade de registros do arquivo, inclusive este registro que est� sendo criado agora}
    Registro := Registro + Formatar('',6); {Uso exclusivo FEBRABAN/CNAB}
    Registro := Registro + Formatar('',205); {Uso exclusivo FEBRABAN/CNAB}

    Remessa.Add(Registro);
  end;

  Result := TRUE;
end;


  
begin

end;

end.
