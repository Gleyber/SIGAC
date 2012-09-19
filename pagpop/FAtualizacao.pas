unit FAtualizacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls;

type
  TFrmAtualizacao = class(TForm)
    pnlTop: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    rgTipoAtua: TRadioGroup;
    txtMsg: TStaticText;
    pnlBotoes: TPanel;
    btnSalvarLog: TBitBtn;
    btnOk: TBitBtn;
    pnlAnimacao: TPanel;
    pbBarra: TProgressBar;
    pnlLog: TPanel;
    Label3: TLabel;
    mmoLog: TMemo;
    dlgSave1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure rgTipoAtuaClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnSalvarLogClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtivaConexao;
    procedure AtivaConexaoLocal;
    procedure MensUsuario(sMensagem : String);
    procedure Log(sMensagem : String);
    function MontaInsertLocal : string;
    function MontaInsertWeb(iTipo:Integer):String;
    procedure Barra(iPosicao:Integer);
    function CopiaWebSiteParaSigac : Boolean;
    function CopiaSigacParaWebSite : Boolean;
    function AtualizaDadosNoWebSite: Boolean;
  public
    { Public declarations }
  end;

var
  FrmAtualizacao: TFrmAtualizacao;

implementation

uses  udm, funcoes, umanu,uimp, uConnect, Math, MaskUtils, StrUtils;

{$R *.dfm}

procedure TFrmAtualizacao.AtivaConexao;
begin
  // Testa conexão e inicializa variaveis
  TestCryptoIni;

  fdm.conectnet.Disconnect;
  ipnet       :=  sWebHost;
  databasenet :=  sWebDb;
  Usernet     :=  sWebUser;
  Passwordnet :=  sWebPwd;
end;

procedure TFrmAtualizacao.AtivaConexaoLocal;
begin
  // Testa conexão e inicializa variaveis
  TestCryptoIni;

  fdm.conector.Disconnect;
  ip          :=  sLocalHost;
  databasename:=  sLocalDb;
  User        :=  sLocalUser;
  Password    :=  sLocalPwd;
end;

procedure TFrmAtualizacao.Barra(iPosicao: Integer);
begin
  pbBarra.Position := iPosicao;
  Update;
end;

function TFrmAtualizacao.CopiaWebSiteParaSigac: Boolean;
Var
  iTotalRec : Integer;
  sSql      : string;
begin
  Result := True;
  iTotalRec := 0;
  Log('Início da operação');

  AtivaConexao;

  // Verifica conexão à base de dados do web site
  try
    Log('Conexão à base de dados do web site');
    MensUsuario('Conectando à base de dados do web site... aguarde.');
    fdm.conectnet.Connect;
  except
    Application.MessageBox('Não foi possível conectar ao banco de dados do site, verifique se a internet está OK.',
                           'Atenção', 0 + MB_ICONWARNING);
    Result := False;
    ativanet('','','','');
    MensUsuario('Operacao cancelada por erro');
    Log('Erro na conexão - operação cancelada');
    Exit;
  end;

  // Carrega dados dos clientes
  Try
    MensUsuario('Abrindo dados do cliente do web site.');
    Log('Carregando dados dos clientes do web site');

    fdm.cdsWeb.open;
  Except
    Application.MessageBox('Erro na consulta a base de dados do web site.',
                           'Atenção', 0 + MB_ICONWARNING);
    Result := False;
    ativanet('','','','');
    MensUsuario('Operacao cancelada por erro');
    Log('Erro na consulta à base do web site - operação cancelada');
    Exit;
  end;

  // Elimina dados já existentes no SIGAC
  MensUsuario('Procurando por novos clientes na base web');
  Log('Procurando por novos clientes na base web');

  fdm.cdsweb.first;
  while not fdm.cdsWeb.eof do
  begin
    // Executa o 1º teste na tabela de dados original
    selecione('select count(*) as total from tbcliente WHERE codigo = '+
                      QuotedStr(fdm.cdsWeb.FieldByName('cod_user').AsString));

    if sqlpub.FieldByName('total').AsInteger = 0 then
	// Se o primeiro teste não localizar então efetua o 2º teste na tabela de dados duplicados
	begin
  	  selecione('select count(*) as total from arq_tbcliente WHERE codigo = '+
                           QuotedStr(fdm.cdsWeb.FieldByName('cod_user').AsString));
	end;

    if sqlpub.FieldByName('total').AsInteger = 1 then
      fdm.cdsWeb.Delete
    else
    begin
      Inc(iTotalRec);
      fdm.cdsWeb.Next;
    end;
	Barra(fdm.cdsWeb.RecNo);
  end;

  MensUsuario('Total de registros apurados para esta operação: '+IntToStr(iTotalRec));
  Log('Total de registros para serem atualizados: '+IntToStr(iTotalRec));

  if not msg('Confirma a inserção de '+IntToStr(iTotalRec)+' novos clientes no SIGAC ?',2) then
  begin
    MensUsuario('Operação cancelada por iniciativa do operador');
    Log('Operação cancelada por iniciativa do operador');
    Result := False;
    Exit;
  end;

  pbBarra.Max := iTotalRec;

  fdm.cdsWeb.First;

  while not fdm.cdsWeb.Eof do
  begin
    try
      selecione(MontaInsertLocal);
    except
      on E: Exception do
      begin
        Log('Erro ao inserir usuário '+fdm.cdsWeb.FieldByName('usuario').AsString+' - '+E.Message);
        Result := False;
      end;
    end;
    Barra(fdm.cdsWeb.RecNo);
    fdm.cdsWeb.Next;
  end;
  MensUsuario('Fim do processo de copiar novos clientes do web site para o SIGAC');
  Log('Fim do processo de copiar novos clientes do web site para o SIGAC');
end;

function TFrmAtualizacao.CopiaSigacParaWebSite: Boolean;
Var
  iTotalRec : Integer;
  sSql      : string;
begin
  Result := True;
  iTotalRec := 0;
  Log('Início da operação');

  AtivaConexaoLocal;

  // Verifica conexão à base de dados do SIGAC
  try
    Log('Conexão à base de dados do SIGAC');
    MensUsuario('Conectando à base de dados do SIGAC... aguarde.');
    fdm.conector.Connect;
  except
    Application.MessageBox('Não foi possível conectar ao banco de dados do SIGAC.',
                           'Atenção', 0 + MB_ICONWARNING);
    Result := False;
    MensUsuario('Operacao cancelada por erro');
    Log('Erro na conexão - operação cancelada');
    Exit;
  end;

  // Carrega dados dos clientes
  Try
    MensUsuario('Abrindo dados do cliente do SIGAC.');
    Log('Carregando dados dos clientes do SIGAC');

    fdm.cdsLocal.open;
  Except
    Application.MessageBox('Erro na consulta a base de dados do SIGAC.',
                           'Atenção', 0 + MB_ICONWARNING);
    Result := False;
    ativanet('','','','');
    MensUsuario('Operacao cancelada por erro');
    Log('Erro na consulta à base do SIGAC - operação cancelada');
    Exit;
  end;

  // Elimina dados já existentes no SIGAC
  MensUsuario('Procurando por novos clientes no SIGAC');
  Log('Procurando por novos clientes no SIGAC');

  AtivaConexao;

  pbBarra.Max := fdm.cdsLocal.RecordCount;

  fdm.cdsLocal.first;
  while not fdm.cdsLocal.eof do
  begin
    // Executa o 1º teste na tabela de dados original
	selecioneNet('select count(*) as total from tab_clientes WHERE cod_user = '+
                      QuotedStr(fdm.cdsLocal.FieldByName('codigo').AsString));

    if sqlpub.FieldByName('total').AsInteger = 0 then
	// Se o primeiro teste não localizar então efetua o 2º teste na tabela de dados duplicados
	begin
  	  selecioneNet('select count(*) as total from arq_clientes WHERE cod_user = '+
                        QuotedStr(fdm.cdsLocal.FieldByName('codigo').AsString));
	end;
	
    if sqlpub.FieldByName('total').AsInteger = 1 then
      fdm.cdsLocal.Delete
	else
    begin
      Inc(iTotalRec);
      fdm.cdsLocal.Next;
    end;
	Barra(fdm.cdsLocal.RecNo);
  end;

  MensUsuario('Total de registros apurados para esta operação: '+IntToStr(iTotalRec));
  Log('Total de registros para serem atualizados: '+IntToStr(iTotalRec));

  if not msg('Confirma a inserção de '+IntToStr(iTotalRec)+' novos clientes no WEB SITE ?',2) then
  begin
    MensUsuario('Operação cancelada por iniciativa do operador');
    Log('Operação cancelada por iniciativa do operador');
    Result := False;
    Exit;
  end;

  pbBarra.Max := iTotalRec;

  fdm.cdsLocal.First;

  while not fdm.cdsLocal.Eof do
  begin
    try
      // insere primeiro o registro em tab_clientes
      sSql := MontaInsertWeb(1);
      selecioneNet(sSql);

      // se for necessário, insere na tab_bancos
      sSql := MontaInsertWeb(2);
      if sSql <> '' then
        selecioneNet(sSql);
    except
      on E: Exception do
      begin
        Log('Erro ao inserir usuário '+fdm.cdsLocal.FieldByName('transportadora').AsString+' - '+E.Message);
        Result := False;
      end;
    end;
    Barra(fdm.cdsLocal.RecNo);
    fdm.cdsLocal.Next;
  end;
  MensUsuario('Fim do processo de copiar novos clientes do SIGAC para o WEB SITE');
  Log('Fim do processo de copiar novos clientes do SIGAC para o WEB SITE');
end;

function TFrmAtualizacao.AtualizaDadosNoWebSite: Boolean;
Var
  iTotalRec : Integer;
  sSql      : string;
begin
  Result := True;
  iTotalRec := 0;
  Log('Início da operação');

  AtivaConexaoLocal;

  // Verifica conexão à base de dados do SIGAC
  try
    Log('Conexão à base de dados do SIGAC');
    MensUsuario('Conectando à base de dados do SIGAC... aguarde.');
    fdm.conector.Connect;
  except
    Application.MessageBox('Não foi possível conectar ao banco de dados do SIGAC.',
                           'Atenção', 0 + MB_ICONWARNING);
    Result := False;
    MensUsuario('Operacao cancelada por erro');
    Log('Erro na conexão - operação cancelada');
    Exit;
  end;

  // Carrega dados dos clientes
  Try
    MensUsuario('Carregando dados do cliente do SIGAC para serem atualizados.');
    Log('Carregando dados do cliente do SIGAC para serem atualizados');

    fdm.qryAtualiza.open;
  Except
    Application.MessageBox('Erro na consulta a base de dados do SIGAC.',
                           'Atenção', 0 + MB_ICONWARNING);
    Result := False;
    ativanet('','','','');
    MensUsuario('Operacao cancelada por erro');
    Log('Erro na consulta à base do SIGAC - operação cancelada');
    Exit;
  end;

  iTotalRec := fdm.qryAtualiza.RecordCount;

  MensUsuario('Total de registros apurados para esta operação: '+IntToStr(iTotalRec));
  Log('Total de registros para serem atualizados: '+IntToStr(iTotalRec));

  if not msg('Confirma a atualização de '+IntToStr(iTotalRec)+' clientes no WEB SITE ?',2) then
  begin
    MensUsuario('Operação cancelada por iniciativa do operador');
    Log('Operação cancelada por iniciativa do operador');
    Result := False;
    Exit;
  end;

  pbBarra.Max := iTotalRec;

  fdm.qryAtualiza.First;

  AtivaConexao;

  while not fdm.qryAtualiza.Eof do
  begin
    try
      // insere primeiro o registro em tab_clientes
      sSql := 'UPDATE tab_clientes SET '+
              'tipo = '+QuotedStr(fdm.qryAtualiza.FieldByname('fisjur').AsString)+', '+
              'nome = '+QuotedStr(fdm.qryAtualiza.FieldByname('nome').AsString)+', '+
              'codigogrupo = '+QuotedStr(fdm.qryAtualiza.FieldByname('codigogp').AsString)+', '+
              'cpf = '+QuotedStr(fdm.qryAtualiza.FieldByname('cnpj').AsString)+', '+
              'rg = '+QuotedStr(fdm.qryAtualiza.FieldByname('ie').AsString)+', '+
              'crea = '+QuotedStr(fdm.qryAtualiza.FieldByname('statu').AsString)+', '+
              'numero_crea = '+QuotedStr(fdm.qryAtualiza.FieldByname('CRO').AsString)+', '+
              'razao = '+QuotedStr(fdm.qryAtualiza.FieldByname('nomecurto').AsString)+', '+
              'cnpj = '+QuotedStr('')+', '+
              'endereco = '+QuotedStr(fdm.qryAtualiza.FieldByname('endereco').AsString)+', '+
              'complemento = '+QuotedStr(fdm.qryAtualiza.FieldByname('complemento').AsString)+', '+
              'bairro = '+QuotedStr(fdm.qryAtualiza.FieldByname('bairro').AsString)+', '+
              'cidade = '+QuotedStr(fdm.qryAtualiza.FieldByname('municipio').AsString)+', '+
              'estado = '+QuotedStr(fdm.qryAtualiza.FieldByname('uf').AsString)+', '+
              'cep = '+QuotedStr(fdm.qryAtualiza.FieldByname('cep').AsString)+', '+
              'telefone1 = '+QuotedStr(fdm.qryAtualiza.FieldByname('fone').AsString)+', '+
              'telefone2 = '+QuotedStr(fdm.qryAtualiza.FieldByname('fone2').AsString)+', '+
              'celular = '+QuotedStr(fdm.qryAtualiza.FieldByname('fone3').AsString)+', '+
              'email = '+QuotedStr(fdm.qryAtualiza.FieldByname('email').AsString)+', '+
              'tipo_user = '+QuotedStr(fdm.qryAtualiza.FieldByname('vinculo').AsString)+', '+
              'cod_user = '+QuotedStr(fdm.qryAtualiza.FieldByname('codigo').AsString)+', '+
              'titular = '+QuotedStr(fdm.qryAtualiza.FieldByname('Titular').AsString)+', '+
              'cpfcnpj_conta = '+QuotedStr(fdm.qryAtualiza.FieldByname('cnpjconta').AsString)+', '+
              'tipo_conta = '+QuotedStr(fdm.qryAtualiza.FieldByname('tpconta').AsString)+', '+
              'numero_banco = '+QuotedStr(fdm.qryAtualiza.FieldByname('nbanco').AsString)+', '+
              'agencia = '+QuotedStr(fdm.qryAtualiza.FieldByname('agencia').AsString)+', '+
              'conta = '+QuotedStr(fdm.qryAtualiza.FieldByname('conta').AsString)+', '+
              'profissao = '+QuotedStr(fdm.qryAtualiza.FieldByname('tipocliente').AsString)+' '+
              'WHERE cod_user = '+QuotedStr(fdm.qryAtualiza.FieldByname('codigo').AsString);

      selecioneNet(sSql);

      sSql := 'update tbcliente set flagsite = 0 '+
              'where transportadora = '+QuotedStr(fdm.qryAtualiza.FieldByname('transportadora').AsString)+
              '  and codigo = '+QuotedStr(fdm.qryAtualiza.FieldByname('codigo').AsString);

      selecione(sSql);
    except
      on E: Exception do
      begin
        Log('Erro ao atualizar usuário '+fdm.qryAtualiza.FieldByName('transportadora').AsString+' - '+E.Message);
        Result := False;
      end;
    end;
    Barra(fdm.qryAtualiza.RecNo);
    fdm.qryAtualiza.Next;
  end;
  MensUsuario('Fim do processo de copiar novos clientes do SIGAC para o WEB SITE');
  Log('Fim do processo de copiar novos clientes do SIGAC para o WEB SITE');
end;

procedure TFrmAtualizacao.FormCreate(Sender: TObject);
begin
  // Limpar dados para apresentação inicial
  rgTipoAtua.ItemIndex := -1;
  txtMsg.Caption       := '';
  mmoLog.Lines.Text    := '';
end;

procedure TFrmAtualizacao.Log(sMensagem: String);
var
  sHora : string;
begin
  sHora := FormatDateTime('hh:mm:ss - ', Now);
  mmoLog.Lines.Add(sHora+sMensagem);
end;

procedure TFrmAtualizacao.MensUsuario(sMensagem: String);
begin
  txtMsg.Caption    := sMensagem;
  Update;
end;

function TFrmAtualizacao.MontaInsertLocal : string;
var
  sSql,
  sTermo : string;

  function FormataData(data:TDateTime):string;
  begin
    Result := QuotedStr(Formatdatetime('yyyy-mm-dd',data));
  end;
begin
  sTermo := 'INSERT INTO TBCLIENTE('+
            'transportadora, '+
            'filial, '+
            'np, '+
            'pontos, '+
            'fisjur, '+
            'nome, '+
            'codigogp, '+
            'gp, '+
            'cnpj, '+
            'ie, '+
            'nascimento, '+
            'data, '+
            'dtvenda, '+
            'statu, '+
            'CRO, '+
            'nomecurto, '+
            'endereco, '+
            'complemento, '+
            'bairro, '+
            'municipio, '+
            'uf, '+
            'cep, '+
            'fone, '+
            'fone2, '+
            'fone3, '+
            'email, '+
            'vendedor, '+
            'vinculo, '+
            'codigo, '+
            'titular, '+
            'cnpjconta, '+
            'tpconta, '+
            'nbanco, '+
            'banco, '+
            'agencia, '+
            'conta, '+
            'tipocliente '+
            ') VALUES (';

  sSql := sTermo;

  with fdm.cdsWeb do
  begin
    sSql := sSql + QuotedStr(FieldByName('usuario').AsString)+',';         // transportadora
    sSql := sSql + QuotedStr(FieldByName('senha').AsString)+',';         // filial
    sSql := sSql + QuotedStr('I')+',';                                   // np
    sSql := sSql + '1'+',';                                              // pontos
    sSql := sSql + QuotedStr(FieldByName('tipo').AsString)+',';          // fisjur
    sSql := sSql + QuotedStr(FieldByName('nome').AsString)+',';          // nome
    sSql := sSql + QuotedStr(FieldByName('codigogrupo').AsString)+',';   // codigogp
    sSql := sSql + QuotedStr(FieldByName('descricao').AsString)+',';     // gp
    sSql := sSql + QuotedStr(FieldByName('cpf').AsString)+',';           // cnpj
    sSql := sSql + QuotedStr(FieldByName('rg').AsString)+',';            // ie
    sSql := sSql + FormataData(FieldByName('nascimento').AsDateTime)+',';// nascimento
    sSql := sSql + FormataData(FieldByName('data').AsDateTime)+',';      // data
    sSql := sSql + FormataData(FieldByName('datavenda').AsDateTime)+','; // dtvenda
    sSql := sSql + QuotedStr(FieldByName('crea').AsString)+',';          // statu
    sSql := sSql + QuotedStr(FieldByName('numero_crea').AsString)+',';   // CRO
    sSql := sSql + QuotedStr(FieldByName('razao').AsString)+',';         // nomecurto
    sSql := sSql + QuotedStr(FieldByName('endereco').AsString)+',';      // endereco
    sSql := sSql + QuotedStr(FieldByName('complemento').AsString)+',';   // complemento
    sSql := sSql + QuotedStr(FieldByName('bairro').AsString)+',';        // bairro
    sSql := sSql + QuotedStr(FieldByName('cidade').AsString)+',';        // municipio
    sSql := sSql + QuotedStr(FieldByName('estado').AsString)+',';        // uf
    sSql := sSql + QuotedStr(FieldByName('cep').AsString)+',';           // cep
    sSql := sSql + QuotedStr(FieldByName('telefone1').AsString)+',';     // fone
    sSql := sSql + QuotedStr(FieldByName('telefone2').AsString)+',';     // fone2
    sSql := sSql + QuotedStr(FieldByName('celular').AsString)+',';       // fone3
    sSql := sSql + QuotedStr(FieldByName('email').AsString)+',';         // email
    sSql := sSql + QuotedStr('SITE') + ',';                              // vendedor
    sSql := sSql + QuotedStr(FieldByName('tipo_user').AsString)+',';     // vinculo
    sSql := sSql + QuotedStr(FieldByName('cod_user').AsString)+',';      // codigo
    sSql := sSql + QuotedStr(FieldByName('titular').AsString)+',';       // titular
    sSql := sSql + QuotedStr(FieldByName('cpfcnpj_conta').AsString)+','; // cnpjconta
    sSql := sSql + QuotedStr(FieldByName('tipo_conta').AsString)+',';    // tpconta
    sSql := sSql + QuotedStr(FieldByName('numero_banco').AsString)+',';  // nbanco
    sSql := sSql + QuotedStr(FieldByName('nome').AsString)+',';          // banco
    sSql := sSql + QuotedStr(FieldByName('agencia').AsString)+',';       // agencia
    sSql := sSql + QuotedStr(FieldByName('conta').AsString)+',';         // conta
    sSql := sSql + QuotedStr(FieldByName('profissao').AsString)+')';     // tipocliente
  end;

  Result := sSql;
end;

function TFrmAtualizacao.MontaInsertWeb(iTipo: Integer): String;
var
  sSql,
  sTermo    : string;
  iSeqBanco : Integer;

  function FormataData(data:TDateTime):string;
  begin
    Result := QuotedStr(Formatdatetime('yyyy-mm-dd',data));
  end;
begin
  // Tipo 1 é tab_clientes
  // Tipo 2 é tab_bancos
  if iTipo = 1 then
  begin
    sTermo := 'insert into tab_clientes('+
              'usuario, '+
              'senha, '+
              'tipo, '+
              'nome, '+
              'codigogrupo, '+
              'cpf, '+
              'rg, '+
              'data_nascimento, '+
              'data_insercao, '+
              'data_alteracao, '+
              'crea, '+
              'numero_crea, '+
              'razao, '+
              'endereco, '+
              'complemento, '+
              'bairro, '+
              'cidade, '+
              'estado, '+
              'cep, '+
              'telefone1, '+
              'telefone2, '+
              'celular, '+
              'email, '+
              'tipo_user, '+
              'cod_user, '+
              'titular, '+
              'cpfcnpj_conta, '+
              'tipo_conta, '+
              'numero_banco, '+
              'agencia, '+
              'conta, '+
              'profissao '+
              ') VALUES (';

    sSql := sTermo;

    with fdm.cdsLocal do
    begin
      sSql := sSql + QuotedStr(FieldByName('transportadora').AsString)+',';  // usuario
      sSql := sSql + QuotedStr(FieldByName('filial').AsString)+',';          // senha
      sSql := sSql + QuotedStr(FieldByName('fisjur').AsString)+',';          // tipo
      sSql := sSql + QuotedStr(FieldByName('nome').AsString)+',';            // nome
      sSql := sSql + QuotedStr(FieldByName('codigogp').AsString)+',';        // codigogrupo
      sSql := sSql + QuotedStr(FieldByName('cnpj').AsString)+',';            // cpf
      sSql := sSql + QuotedStr(FieldByName('ie').AsString)+',';              // rg
      sSql := sSql + FormataData(FieldByName('nascimento').AsDateTime)+',';  // data_nascimento
      sSql := sSql + FormataData(FieldByName('data').AsDateTime)+',';        // data_insercao
      sSql := sSql + FormataData(FieldByName('dtvenda').AsDateTime)+',';     // data_alteracao
      sSql := sSql + QuotedStr(FieldByName('statu').AsString)+',';           // crea
      sSql := sSql + QuotedStr(FieldByName('CRO').AsString)+',';             // numero_crea
      sSql := sSql + QuotedStr(FieldByName('nomecurto').AsString)+',';       // razao
      sSql := sSql + QuotedStr(FieldByName('endereco').AsString)+',';        // endereco
      sSql := sSql + QuotedStr(FieldByName('complemento').AsString)+',';     // complemento
      sSql := sSql + QuotedStr(FieldByName('bairro').AsString)+',';          // bairro
      sSql := sSql + QuotedStr(FieldByName('municipio').AsString)+',';       // cidade
      sSql := sSql + QuotedStr(FieldByName('uf').AsString)+',';              // estado
      sSql := sSql + QuotedStr(FieldByName('cep').AsString)+',';             // cep
      sSql := sSql + QuotedStr(FieldByName('fone').AsString)+',';            // telefone1
      sSql := sSql + QuotedStr(FieldByName('fone2').AsString)+',';           // telefone2
      sSql := sSql + QuotedStr(FieldByName('fone3').AsString)+',';           // celular
      sSql := sSql + QuotedStr(FieldByName('email').AsString)+',';           // email
      sSql := sSql + QuotedStr(FieldByName('vinculo').AsString)+',';         // tipo_user
      sSql := sSql + QuotedStr(FieldByName('codigo').AsString)+',';          // cod_user
      sSql := sSql + QuotedStr(FieldByName('titular').AsString)+',';         // titular
      sSql := sSql + QuotedStr(FieldByName('cnpjconta').AsString)+',';       // cpfcnpj_conta
      sSql := sSql + QuotedStr(FieldByName('tpconta').AsString)+',';         // tipo_conta
      sSql := sSql + QuotedStr(FieldByName('nbanco').AsString)+',';          // numero_banco
      sSql := sSql + QuotedStr(FieldByName('agencia').AsString)+',';         // agencia
      sSql := sSql + QuotedStr(FieldByName('conta').AsString)+',';           // conta
      sSql := sSql + QuotedStr(FieldByName('tipocliente').AsString)+')';     // profissao
    end;
    Result := sSql
  end;

  if iTipo = 2 then
  begin
    selecioneNet('select 1 from tab_bancos where numero = '+QuotedStr(fdm.cdsLocal.FieldByName('nbanco').AsString));

    if sqlpub.IsEmpty then
      Result := ''
    else
    begin
       selecioneNet('select max(cod)+1 as sequencia from tab_bancos');
       iSeqBanco := sqlpub.FieldByName('sequencia').AsInteger;

       sSql := 'insert into tab_bancos (cod, numero, nome) values ('+
               IntToStr(iSeqBanco)+', '+
               QuotedStr(fdm.cdsLocal.FieldByName('nbanco').AsString)+','+
               QuotedStr(fdm.cdsLocal.FieldByName('banco').AsString)+')';
       Result := sSql;
    end;
  end;
end;

procedure TFrmAtualizacao.rgTipoAtuaClick(Sender: TObject);
begin
  case rgTipoAtua.ItemIndex of
    0 : begin    // Copiar novos clientes do web site para o SIGAC
          if msg('Deseja iniciar a operação de cópia de novos clientes para o SIGAC ?',2) then
          begin
            if CopiaWebSiteParaSigac then
              ShowMessage('Operação finalizada. Observe o log da operação!')
            else
              ShowMessage('Operação finalizada com erros. Observe o log da operação e salve os dados!');
          end;
        end;
    1 : begin    // Copiar novos clientes do SIGAC para o web site
          if msg('Deseja iniciar a operação de cópia de novos clientes para o WEB SITE ?',2) then
          begin
            if CopiaSigacParaWebSite then
              ShowMessage('Operação finalizada. Observe o log da operação!')
            else
              ShowMessage('Operação finalizada com erros. Observe o log da operação e salve os dados!');
          end;
        end;
    2 : begin    // Atualizar dados de clientes do SIGAC para o web site
          if msg('Deseja iniciar a operação para atualizar dados de clientes do SIGAC para o WEB SITE ?',2) then
          begin
            if AtualizaDadosNoWebSite then
              ShowMessage('Operação finalizada. Observe o log da operação!')
            else
              ShowMessage('Operação finalizada com erros. Observe o log da operação e salve os dados!');
          end;
        end;

  end;
end;

procedure TFrmAtualizacao.btnOkClick(Sender: TObject);
begin
  if MessageDlg('Tem certeza que quer fechar o Painel de Atualizações?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Close;
end;

procedure TFrmAtualizacao.btnSalvarLogClick(Sender: TObject);
var
  sNomeArq : string;
begin
  if dlgSave1.Execute then
  begin
    sNomeArq := dlgSave1.FileName;
    mmoLog.Lines.SaveToFile(sNomeArq);
  end;
end;

end.
