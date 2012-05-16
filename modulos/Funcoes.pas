

unit Funcoes;

interface

uses
                  
  StdCtrls,types,inifiles, DBTables, Controls, Dialogs, SysUtils, Windows, printers,
  Messages, Forms, Winsock, spin, mask,  DBCtrls, dbgrids, Classes, Math,ZDataset,
  db,  ExtCtrls, ComCtrls, variants, RLReport,DBClient,Grids, Graphics,shellapi,
  rltypes, ZAbstractRODataset, DCPmd5,

  uimp, ufiltrocad,ufiltrocad2, ucad, ulocaliza, urelatorio, ulista, uperiodo2, udm, uagenda,
  udlg, umanu, usistema,usistema2,uconfigimp, mapimail,RLBoleto, uetprod,uimpressora,ueditor;

          
  Const
                                      
  Cadcliente  : String ='Select Chave,  Codigo , Nomecurto , Nome , Tipocliente , Endereco , Numero,  '+
                 ' Complemento , Bairro , Municipio, Municipion , Cep , Uf , Regiao , Nascimento , Cnpj , Ie , Ddd , Fone , Fone2,  '+
                 ' Fone3 , Fax , Ramal  , Email , Site , Msn , Skype,  Contato , Cargo , Transportadora , CodigoVendedor, Vendedor , '+
                 ' Enderecoentrega,  Numeroentrega , Complementoentrega , Bairroentrega , Municipioentrega , Cepentrega , Ufentrega,  '+
                 ' Enderecocobranca,  Numerocobranca , Complementocobranca , Bairrocobranca , Municipiocobranca , Cepcobranca , Ufcobranca,  '+
                 ' Trabalho , Conjuge , Referencia , Vinculo , Foneconjuge , Estadocivil,  '+
                 ' Limitecredito , Laprazo , Lavulsa , Lcheque , Vendaaprazo , Vendacheque , Vendacartao , Fidelidade,  '+
                 ' Credito,  Debito,  Saldo,avulsa,  Ultimacompra, Valor, Fisjur, Statu ,  Data , CurvaQtd,CurvaValor,IniCurva,FinCurva,FlagSite, ctp, ICM, Obs, obs1  From Tbcliente ';

  //Vitalcred
  Cadclientev : String = 'Select Chave, Nome , Ddd , Fone , Fone2 , Fone3 , Fax , Vendedor , Municipio , Bairro , Endereco  , Numero,  '+
                 ' Complemento , Cep , Uf , Cnpj , Ie , Nomecurto , Enderecocobranca , Numerocobranca,  '+
                 ' Complementocobranca , Cepcobranca , Bairrocobranca , Municipiocobranca , Ufcobranca,  '+
                 ' Email , Site , Msn , Skype , Vinculo, Socio , Promocao , Np , Fisjur , Conjuge , Referencia,  '+
                 ' Sexo , Tipocliente , Statu , Cro , Data , Dtvenda , Limitecredito , Titular , Banco , Nbanco,  '+
                 ' Agencia , Conta , Cnpjconta , Tpconta , Ieconta , Diamensalidade , Vrmensalidade , Diarecbto , Transportadora,  '+
                 ' Filial , Ramal , Codigo, Anoformatura , Nascimento , Laprazo , Lavulsa , Lcheque , Vendaaprazo,  '+
                 ' Vendacheque , Vendacartao, Credito,  Debito,  Saldo,  Ultimacompra,  Regiao,  Ctp,  Flagsite,  Obs From Tbcliente ';

  Cadfornecedor : String =  'Select Chave, Codigo, Nomecurto, Nome, Endereco, Numero, Complemento, Bairro, Municipio, Municipion, Cep, '+
                            ' Uf, Cnpj, Ie, Ddd, Fone, Fax, Ramal, Email, Site, Msn, Skype, Condpgto, Ultimacompra, Doc, Valor, '+
                            ' Transportadora, Saldo, Credito, Empresa, Atacadista, Tipofrete, Aceitatroca, Tipocobranca, Prazoentrega, '+
                            ' Classificacao, Descontopgto, Nomediretor, Fonediretor, Celulardiretor, Nomegerente, Fonegerente, Celulargerente, '+
                            ' Nomevendedor, Fonevendedor, Celularvendedor, Categoria, Data, CurvaQtd,CurvaValor,IniCurva,FinCurva,ctp,codconta,codconta2,codconta3, Obs From Tbfornecedor';

  Cadfuncionario : String = 'Select  Chave,  Data,  Codigo, Nomecurto, Nome, Funcao, Nascimento, Cep, Endereco, Bairro, Municipio,Municipion, Uf, Cnpj, Ie, '+
                            ' CT, Pis, Titulo, Ddd, Fone, Fone2, Celular, Email, Msn, Admissao, Demissao, Entrada, Saida, Salario, Horas_Mes, '+
                            ' Transporte, Conjuge, Nascimentoconjuge, Filho, Classe, Senha, Usuario, Usu, Tipocomissao, Modocalcula,  Vr1, '+
                            ' Comissao, Vr2, Comissao2, Vr3, Comissao3,Vr4, Comissao4, Vr5, Comissao5, Comissaoservico, Obs From Tbfuncionario ';

 cpempresa:string ='select chave, codigo, nome, fantasia, tipo,emp,cep,endereco,numero, complemento, contato,bairro,municipio,municipion,uf,'+
                   ' cnpj,im,rjcomercial,ie,ddd,fone1,fone2,fax,email,site,DirNfe,PIS,COFINS,IR,CSLL,IRRF, Lembrete,Legenda, flag from tbempresa ';

  var
  codloc:WideString;

  fantasisaempresa,porta, mensagem1, valorconfig, mensagem2, mensagem3, mensagem4, linha, ufempresa, conf_local,  databasename,
  portaimpressao,usuario,modulo,NCAIXA,cod,ipext,rodapecliente,vendedor,limit, cadcli,chts,servpath,iprede,emp_: string;

  qtdlinha, numcoluna,ii,jj,usuariolink,tp,ncol,resolucao,emp: integer;

  vrpub,vrpub2,vradesivo:double;

  impecf,canctb, modelo, movprod, bloquear, bl, vf , cnpjie,estacionamento, ecf,mprima, planocontas,
  calccusto, contprod,ipext_,tef,entsimp,cupomtef,formatar,atacado,atacado2,cht,lst,chofab,gradepreco,tmgrade : boolean;

  memo1:trichedit;
  fmemo:tform;
  imagem: TRLImage;
  sqlpub,sqlpub2,sqlacesso:tzquery;
  tbsel:tclientdataset;
  livro,dtpgto:tdate;
  lista:tstringlist;

procedure ag(tipo: string);
procedure editor(chave,nummodulo:integer;qtd,valor,total:double;descricao,condpgto,prazo:string);
procedure criaestoquee;
procedure cadplanocontas;
procedure margemvenda(tb,chave:string);
procedure alimentaconta(debito,credito,historico,modulo,doc:string;data:tdate;valor:double);
procedure atualizacontas;
procedure insererecpg(rctb:string;sq:tzquery;modulo:string;plano:boolean);
procedure filtro2(tabela:tclientdataset;tz:tzquery);
procedure atualizagrade(tabela:tclientdataset;tz:tzquery; ntb:string);
procedure analitico;
procedure vfcaixa(caixa:integer);
procedure PrintForm(frm: TForm);
procedure formatacptabela(tabela:tclientdataset;tz:tzquery;ncasas:integer);
procedure imptxt(tb1,tb2,tb3,tb4,tb5:tzquery;modulo:integer);
procedure reldata(tp:integer);
procedure geraetiqueta(tb:tzquery;campo:string);
procedure versimples(cst:string);
procedure geraboleto(tabela:tzquery;i:integer;ntbg:string;imp:boolean);
procedure preencheboleto(n:integer;tabela:tzquery);
procedure cancelavenda(chave,n:integer);
procedure exportar(form:tform;rep:TRLReport; nome, email:string);
procedure uteisferi(fl:integer);
procedure dupcodigo(modulo:integer);
procedure cxdiario;
procedure desbloquear;
procedure regprimeiro;
procedure fluxocaixa;
procedure inscx(tipo,motivo: string; valor:double);
procedure abrecx;
procedure configimp(tabela:tclientdataset; tz:tzquery;page_:integer;visualiza:boolean);
procedure estoquenfe(tbitem:tzquery;sinal:string);
procedure cepibge(num,insAlt:integer);
procedure mostrarnome(tb:tclientdataset; tz:tzquery; ntb,      cp1,  cp2,  cploc, cpdest:string);
procedure contarecpg(codigo,tipo,nconta,linkvenda :integer;total,comissao :double; codvendedor:integer; dataini :tdate;doc,modulo:string);
procedure criatabela(ntb0, ntbD:string);
procedure updatecliente(ntb,codigo:string);
procedure periodo2(page,controle,controle2,controle3,controle4,controle5 :string;altura,largura,frm:integer);
procedure veritem(cap,tb,tb2,tb3,chave,MP:string);
procedure lancaconta(debito,credito:integer;valor:double);
procedure comecaecf(tipocupom,posicao,cupom:integer);
procedure verecf;
procedure gravabanco(dc,documento,historico, modulo:string;valor:double;linkvenda:integer);
procedure gravabancovr(chaveconta:integer;dc, documento, historico, modulo, tipo :string;valor:double;linkvenda:integer);

procedure relatorio(acesso,data,indcampo,script,from,criterio,gpby,
                       soma1_, soma2_, soma3_,soma4_,soma5_,soma6_,soma7_,soma8_,soma9_,
                       soma10_,soma11_,soma12_,soma13_,soma14_,soma15_,soma16_,soma17_,soma18_,
                       nrel,cap,nometb:string; com1, com2:integer);
                       
procedure listagem(ind,val,criterio:string;modulo,vr:integer);
procedure fechatg;
procedure debugStr(const query:tzquery);
procedure cpcli(codcli,cliente,codprod,prod:string);

procedure buscacep (ntb:tclientdataset;tbz:tzquery; str,cp:string);
procedure buscadicade(ntb:tclientdataset;tbz:tzquery; str,cp:string);
procedure titgrade(grade:tdbgrid;tabela:tclientdataset;tz:tzquery);
procedure livrofiscal(dtval:tdate);
procedure criacoluna(grade:tdbgrid; nome,cap:string;tm:integer);
procedure imptb(ntb:tclientdataset;ds:tdatasource; tb,tit:string; visualiza:boolean);
procedure selecione (script:string);
procedure selecione2 (script:string);
procedure reltb(tabela:tclientdataset;titulo,ecabeca,
                soma1,soma2, soma3,soma4, soma5, soma6, soma7, soma8, soma9, soma10, soma11, soma12, soma13 :string);
procedure tbp(scr:string;MSource:tdatasource;MFields,indice:string);
procedure tbg(scr,indice:string);
procedure estoquefilial(codigo:string);
procedure loccampo (tabela:tclientdataset;tz:tzquery; campo,campo2,campo3,campo4:string);
procedure noduplica(campo,nome,tabela,valor,chave:string;sn:boolean);
procedure cadp (tab,sq,cap,campo1,campo2,
                ncb1_,cb1tb_,cb1_ ,ncb2_,cb2tb_,cb2_, ncb3_,cb3tb_,cb3_,
                cpn1_, cpn2_,nnul_,memo_:string;i,link:integer);
procedure baixaconta;
procedure impficha(form:tform;tb,tb2:tclientdataset;tz:tzquery;ds,ds2:tdatasource;grade:tdbgrid;titulo:string;branco,itens:boolean);
procedure imprecibo(vr:real;referente:string;flocal:tform);
procedure impcupom(titulo,numero,adicionais,rodape,colitem,cp1,cp2,cp3,cp4,cp5,
                   s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,obs :string;
                   ntabela,ntabelaitem,ntbdev,ntbserv,tbpp,tblocacao:tzquery; nome:boolean;formu:tform);
procedure cabecaimpressao(form:tform;tit:boolean);
procedure rodapeimpressao(linhas,condensado:boolean);
procedure impgrade(tabela:tclientdataset;tz:tzquery;ds:tdatasource;grade:tdbgrid;tit,cap,rodape:string;visualiza:boolean);
procedure valcnpj(ecn:tdbedit;tabnome:tclientdataset;tz:tzquery;campo:string);
procedure criaMCh(nomecampo,cap,ntb,campo:string;topo:integer);
procedure criaMa(nomecampo,cap:string;topo,qtd:integer);
procedure criaRa(nomecampo,c1,c2,c3,c4,c5,c6,c7:string;topo:integer);
procedure criaDbl(nomecampo,cap:string;topo:integer);
procedure sitconta;
procedure criacheck(nomecampo,cap:string;lf,tg,pos:integer;g,s,s3,s4,o,t:boolean);
procedure abortaacao(tb1:tclientdataset;tb2:tzquery;campo1,campo2,campo3,campo4,campo5:string;flag:integer);
procedure loctabela(tabela:tclientdataset;tz:tzquery;elocalizar:tedit);
procedure filtrar (grade:TDbGrid;tabela:tclientdataset;tz:tzquery;campo:string);
procedure indexar(Column: TColumn; tabela:tclientdataset; tz:tzquery; edit:tedit; lab:tlabel);
procedure deletaconta(link,modulo,codigo,antigo:string);
procedure tmpapel(rep: trlreport);
procedure saldocliente(codigo: string);
procedure saldofornecedor(codigo: string);
procedure saldoavulsa(codigo: string);
procedure GALTERA (modulo, numero, alteracao: string);
procedure acesso1 (modulo: string);
procedure permissao(perm,nivel,modulo: string);
procedure gravaconfig(campo, valor: string);
procedure abreconfig(campo, tabela: string);
procedure inadiplente(codigo, MODULO: string);
procedure verificacredito(codigo, tipo: string; venda: double);

procedure imagepanel(nomeimage: string; alinhar: talign; const panel: tpanel;caminho: PChar;im:timage);
procedure imagetab(nomeimage: string; alinhar: talign; const tab: TTabSheet; caminho: PChar);
procedure imageform(nomeimage: string; alinhar: talign; const form: TForm;  caminho: PChar; im:timage);

procedure tracalinha(tamanho: integer; valor: string);
procedure senhagerencial(modulo, msg, motivo: string);
procedure alimentaestoque(codigo:string; qtd: double; tipoloja: string; chavegrade:integer);
procedure cadastroG(tb, filtro: string);
procedure impmatricial;
procedure desativar(const form: TForm);
procedure ativar(const form: TForm);
procedure abortar(const edit: tdbedit);
procedure Altera(Table: TDataset; tablez: tzquery;dbtable: string);
procedure Grava(Table: TDataset; Tablez: tzquery; dbtable: string);
procedure Alterafilial(Table: TDataset; dbtable, campo: string);
procedure Gravafilial(Table: TDataset; dbtable: string);
procedure alimentacaixa(dc:string);


function senhai(senha:integer):boolean;
function selplanocontas(script_:string):string;
function contanaoconfig:boolean;
function sqlempresa(flag,cp:integer;tb:string):string;
function verempresa:string;
function qtvdcomp(codigo,criterio:string;cpvd:integer):double;
function combotb(controle,controle2,controle3,controle4,controle5: string): string;
function combotb2(controle,controle2,controle3,controle4: string): string;
function ativanet(ipnet_,databasenet_,usernet_,Passwordnet_:string):boolean;
function achacp(cp,str: string): string;
function dadosempresa: string;
function md5(str: string): string;
function EnumeradoToStr(const t: variant; const AString: array of string; const AEnumerados: array of variant): variant;
function capcp(const mn: string): string;
function capmodulo(const mn: string): string;
function captb(const mn: string): string;
function aliquf(ufo,ufd:string):double;
function Cript(texto:string):string;
function Dias_Uteis(DataI,DataF:TDateTime):Integer;
function indtz(Ent: string): string;
function tiraespaco(Ent: string): string;
function substitui(ent,at,sai: string): string;
function posicol(ini,str_in: string; str_length,rig_lef: integer): string;
function dataval(datab:tdate):string;
function contatocliente(chave,nome:string):string;
function str(bruto:string;tm,al:integer): string;
function SumaMes(fecha: TDateTime): TDateTime;
function DiaSemana(Data: TDateTime): String;
function diasuteis(dataini:tdatetime; dias_uteis:integer):tDateTime;
function tiraacento(Ent: string): string;
function encodepreco(const Value: double): string;
function precoformatdata(const Value: double): string;
function Explode(strseparator, src: string): TStrings;
function formatacpf_cnpj(const StrIn: string): string;
function compstr(str_in, field: string): string;
function direita(str_in, field: string; colunas: integer): string;
function centstr(str_in: string): string;
function centralizar(str_in: string; tamanho: integer): string;
function StrIsFloat(const S: string): boolean;
function StrIsInteger(const I: string): boolean;
function StrIsDate(const DT: string): boolean;
function SerialHD(Drive: string): string;

function vercpf(snrcpf: string): boolean;
function VerCGC(snrcgc: string): boolean;
function GetIP: string;
function GetHstName(strIPAddress: string): string;
function UltimodoMes(wMes, wAno: word): word;
function realdblstr(Ent: extended): string;
function ExtNum(Str_Valor: string): string;
function Extenso(Valor: double; Singular, Plural: string): string;
function getSitTributaria(const aliq: string): string;
function Gettempdir: string;
function Getsysdir: string;
function Getwindir: string;
function ParamExists(Par: string): boolean;
function RTrim(Texto:String):String;
function LTrim(Texto:String):String;
function GetIcmsUF(const UF:string):double;
function IsSTrib(const CST: string): boolean;
function getCFOPItem(const cfop, cst: string): string;
function StrIsNum(const strin:string):boolean;
function FormatNumeric(const strin: string): string;
function Formatstr(const strin: string;v:string): string;
function msg(msg:string;tpdlg:integer): boolean;
function msgi(msg:string;tpdlg:integer): string;
function BlockInput (fBlockInput: boolean): dword; stdcall; external 'user32.dll';
function strcomplete(str_in, char_compl: string; str_length, DirEsq: integer): string;
function nomelink(cporig, cpdest, cpnome,tb,ncp:string):string;
function liberarmes:string;

implementation


function senhai(senha:integer):boolean;
var dd, mm, yy, hh :double;
i:integer;
sqld:tzquery;
begin

        result := false;

        sqld :=  tzquery.Create(application);
        with sqld do begin
             Connection := fdm.conector;
             sql.Clear;
             sql.Add('select senha from tbsenha where senha = '+inttostr(senha));
             open;
             if sqld['senha']<> null then msg('#Senha já usada',0);
             destroy;
        end;


        dd := strtofloat(formatdatetime('dd', date));
        mm := strtofloat(formatdatetime('mm', date));
        yy := strtofloat(formatdatetime('yyyy', date));
        hh := strtofloat(formatdatetime('hh', time));

        if result then result := false else
        for i := 0 to 100 do
            if ((dd + mm + hh) * i * 3) = senha then result := true;

        if result then valorconfig := inttostr(senha);

            //showmessage(floattostr((dd + mm * yy + hh) * i * 3 + 4));
                                       
end;


procedure ag(tipo: string);
begin
        acesso1('Agenda Pessoal');
        application.CreateForm(tfagenda, fagenda);
        fagenda.tipo := tipo;
        fagenda.showmodal;
end;


procedure editor(chave,nummodulo:integer;qtd,valor,total:double;descricao,condpgto,prazo:string);
begin
      feditor:=tfeditor.Create(application,chave,nummodulo,qtd,valor,total,descricao,condpgto,prazo);
      feditor.ShowModal;
end;



procedure criaestoquee;
var estoques:string;
multempresa:boolean;
begin

          selecione2('select multempresa from tbconfig');
          multempresa := sqlpub2['multempresa'] = 'S';

          if multempresa then begin
              //cria estoque para as empresas
              selecione2('select chave from tbempresa where (flag  <> "D" or flag is null) order by chave');


              if sqlpub2.RecordCount >=2 then begin
                 while not sqlpub2.Eof do begin

                     try    selecione('select estoque'+sqlpub2.fieldbyname('chave').AsString +' from tbproduto where chave = -1');
                     except selecione('alter table tbproduto add estoque'+sqlpub2.fieldbyname('chave').AsString +' double');
                            selecione('alter table tbprodutomp add estoque'+sqlpub2.fieldbyname('chave').AsString +' double');
                     end;

                    sqlpub2.Next;

                 end;

                 if sqlpub2 <> nil then sqlpub2 := nil;

              end else sqlpub2 := nil;
           end;
end;






procedure cadplanocontas;
var st:string;
begin

        if planocontas then  periodo2('cadconta','','','','','',500,500,2)

        else begin
             codloc :='1';
             st := msgi('Digite uma opção:'+#13+#13+
                        '1 = Cadastrar conta '+#13+
                        '2 = Cadastrar grupo '+#13+
                        '3 = Configurar conta',2);
             if not (strtoint(st) in[1..3]) then msg('#Opção inválida.',0);

             if (strtoint(st) in[1]) then
                cadp ('tbconta', 'select chave, descricao,codigo, tp,pgrec ,contacontabil, contaanalitica from tbconta ', 'Plano de Contas',
                      'codigo','descricao',
                      'contacontabil','tbdespesa','descricao',
                      'tp','','1=Cartão,2=Cheque,3=A Prazo',
                      'pgrec','','PG,REC,AMBOS',
                      'codigo', '', '', '', 1,0)
             else if (strtoint(st) in[2]) then

                cadp ('tbdespesa', 'select chave, descricao from tbdespesa ', 'Plano de Contas - Grupo',
                      'descricao','',
                      '','','',
                      '','',',,',
                      '','','',
                      'descricao', '', '', '', 3,0)

             else
                cadp ('tbconta', 'select chave, descricao, codigo, agencia,conta,taxa,recebimento from tbconta ', 'Config Conta',
                      'descricao','',
                      '','','',
                      '','',',,',
                      '','','',
                      'descricao', '', '', '', 2,0)  ;

        end;

end;

function selplanocontas(script_:string):string;
var
nivel1d,nivel1c, nivel2d, nivel2c, nivel3d, nivel3c,nivel4d, nivel4c,nivel5d, nivel5c, cad, cac,usu,modulo_,niveis :WideString;


        function nomelinkc(cporig, cpdest, cpnome,tb,ncp:string):string;
        var
        sc,parenteses,nivel:WideString;
        begin


                    selecione('select ' + cpdest + ' as chave,' + cpnome + ' as nome from '+tb + ' where ' + cpdest + ' is not null order by '+cpdest);

                    while not sqlpub.EOF do begin
                             sc := sc + 'if ('+cporig+' = '+sqlpub.fieldbyname('chave').AsString+
                                          ','+

                                            ' if(LEFT('+quotedstr(sqlpub.fieldbyname('nome').AsString)+',1) = 1,"ATIVO",'+
                                            '  if(LEFT('+quotedstr(sqlpub.fieldbyname('nome').AsString)+',1) = 2,"PASSIVO",'+
                                            '   if(LEFT('+quotedstr(sqlpub.fieldbyname('nome').AsString)+',1) = 3,"DESPESAS",'+
                                            '    if(LEFT('+quotedstr(sqlpub.fieldbyname('nome').AsString)+',1) = 4,"RECEITA",'+
                                            '     if(LEFT('+quotedstr(sqlpub.fieldbyname('nome').AsString)+',1) = 5,"CONTAS DE COMPENSACAO","DESCONHECIDO")))))'+

                                          ', ';
                             parenteses := parenteses +')';
                          sqlpub.Next;
                    end;

                    result := sc +  cporig + parenteses+ ' as '+ncp;
        end;



        function nomelink_2tb(cporig, tb,ncp, link,nomecp:string):string;
        var
        sc,parenteses:string;
        begin
                   selecione('select c.chave as chave, d.descricao as nome from tbconta c, '+tb+
                             ' d where d.chave = c.' + link +' order by c.'+link);

                   //debugstr(sqlpub);
                    while not sqlpub.EOF do begin
                             sc := sc + 'if ('+cporig+' = '+sqlpub.fieldbyname('chave').AsString+
                                          ','+quotedstr(sqlpub.fieldbyname('nome').AsString)+', ';
                             parenteses := parenteses +')';
                          sqlpub.Next;
                    end;

                    result := sc +  cporig + parenteses+ ' as '+nomecp;
        end;






begin


        modulo_ := 'if(modulo = "2", "VENDA",'+
                    'if(modulo = "28", "ACERTOVENDA",'+
                     'if(modulo = "9", "CONT RECEBER",'+
                      'if(modulo = "10", "CONT PAGAR", '+
                       'if(modulo = "8", "COMPRA",'+
                        'if(modulo = "34", "CAIXA",modulo))))))';



        nivel1d := nomelinkc('debito','chave', 'contaanalitica','tbconta','grau_d');
        nivel1c := nomelinkc('credito','chave', 'contaanalitica','tbconta','grau_c');

        nivel2d := nomelink_2tb('debito','tbnivel2','codnivel2c','codnivel2','estrutura_d');
        nivel2c := nomelink_2tb('credito','tbnivel2','codnivel2d','codnivel2','estrutura_c');

        nivel3d := nomelink_2tb('debito','tbnivel3','codnivel3c','codnivel3','grupo_d');
        nivel3c := nomelink_2tb('credito','tbnivel3','codnivel3d','codnivel3','grupo_c');

        nivel4d := nomelink_2tb('debito','tbdespesa','codnivel4c','codnivel4','subgrupo_d');
        nivel4c := nomelink_2tb('credito','tbdespesa','codnivel4d','codnivel4','subgrupo_c');

        nivel5d := nomelink('debito','chave', 'descricao','tbconta','Conta_D');
        nivel5c := nomelink('credito','chave', 'descricao','tbconta','Conta_C');

        cad     := nomelink('debito','chave', 'contaanalitica','tbconta','cont_anal_d');
        cac     := nomelink('credito','chave', 'contaanalitica','tbconta','cont_anal_c');

        usu   := nomelink('usu','chave', 'nome','tbusuario','Usuario');

        niveis :='';
        if cad<> '' then niveis := niveis + ','+ cad;
        if nivel5d<> '' then niveis := niveis + ','+ nivel5d;
        if nivel5c<> '' then niveis := niveis + ','+ nivel5c;

        if nivel4d<> '' then niveis := niveis + ','+ nivel4d;
        if nivel3d<> '' then niveis := niveis + ','+ nivel3d;
        if nivel2d<> '' then niveis := niveis + ','+ nivel2d;
        if nivel1d<> '' then niveis := niveis + ','+ nivel1d;

        if cac<> '' then niveis := niveis + ','+ cac;
        if nivel5c<> '' then niveis := niveis + ','+ nivel5c;
        if nivel4c<> '' then niveis := niveis + ','+ nivel4c;
        if nivel3c<> '' then niveis := niveis + ','+ nivel3c;
        if nivel2c<> '' then niveis := niveis + ','+ nivel2c;
        if nivel1c<> '' then niveis := niveis + ','+nivel1c ;


        if script_ = '' then script_ := 'debito, credito, valor, ' ;



        result :='select chave, chave as numero, data, dia,'+script_+' complemento '+
                 niveis+
                 ',usu as coduser,'+usu+ ', if (modulo is null,"MANUAL",'+modulo_+') as ModoInsercao,'+
                 ' if (linkvenda is null, chave,linkvenda) as doc'+
                 ' from tblancacontabil ';
end;



procedure margemvenda(tb,chave:string);
var
venda:tzquery;
begin

        venda :=  tzquery.Create(application);
        venda.Connection := fdm.conector ;
        with venda do begin
             sql.Add('select numero, nome, custo, totalpeca, descontoreal, acrescimo from '+tb+ ' where chave = '+quotedstr(chave));
             open;
        end;


        with fdm.query1 do begin
             close;
             sql.clear;
             sql.add('select v.chave, v.Codigo, p.Descricao, v.custo*v.qtd as VrCompra, v.total as VrVenda, '+
                     ' (v.custo*v.qtd)- v.total as Diferenca, v.total * 100 / (v.custo*v.qtd) - 100 as Margem '+
                     ' from '+tb+'item as v, tbproduto as p where v.codigo=p.codigo and v.link = '+ quotedstr(chave));

             fdm.tbquery1.close;
             fdm.tbquery1.open;

             fdm.tbquery1.Insert;
             fdm.tbquery1['chave'] := 100000;
             fdm.tbquery1.Post;                              

             fdm.tbquery1.Insert;
             fdm.tbquery1['chave'] := 100001;
             fdm.tbquery1['descricao'] :='TOTAIS:';
             fdm.tbquery1['VrCompra'] := venda.fieldbyname('custo').asfloat;
             fdm.tbquery1['VrVenda'] := venda.fieldbyname('totalpeca').asfloat -
                                        venda.fieldbyname('descontoreal').asfloat +
                                        venda.fieldbyname('acrescimo').asfloat ;

             fdm.tbquery1['Diferenca'] := fdm.tbquery1.fieldbyname('VrVenda').asfloat-
                                          fdm.tbquery1.fieldbyname('VrCompra').asfloat;

             if  (fdm.tbquery1.fieldbyname('VrVenda').asfloat>0) and
                 (fdm.tbquery1.fieldbyname('VrCompra').asfloat>0) then
             fdm.tbquery1['Margem'] := fdm.tbquery1.fieldbyname('VrVenda').asfloat * 100 /
                                       fdm.tbquery1.fieldbyname('VrCompra').asfloat-100
             else fdm.tbquery1['Margem'] :=0;
              
             fdm.tbquery1.Post;

            fdm.tbquery1.FieldByName('descricao').DisplayWidth :=50;

             fdm.tbquery1.IndexFieldNames :='chave';
             reltb(fdm.tbquery1,'MARGEM SOBRE VENDA  -  VENDA Nº' + venda.fieldbyname('numero').AsString+
                  '  ' + venda.fieldbyname('nome').AsString,'','','','','','','','','','','','','','');
             fdm.tbquery1.close;
             fdm.tbquery1.IndexFieldNames :='';
             venda.Destroy;
         end;
end;





function  contanaoconfig:boolean;
var
sqld:tzquery;
st:string;
begin
            sqld :=  tzquery.Create(application);
            sqld.Connection := fdm.conector ;

            with sqld do begin
                 sql.Clear;
                 sql.add('select conta, contacheque, contacartao,contachequep, contacartaop from tbconfig');
                 open;
            end;

           if (sqld['conta'] = null) or
              (sqld['contacheque'] = null) or (sqld['contacartao'] = null)  then  begin

                 st :=' update tbconfig set chave = chave ';
                 if sqld['conta'] = null then  st := st + ', conta = '+realdblstr(1);
                 if sqld['contacheque'] = null then  st := st + ',contacheque  = '+realdblstr(1);
                 if sqld['contacartao'] = null then  st := st + ',contacartao  = '+realdblstr(1);



                 with sqld do begin
                      sql.Clear;
                      sql.Add(st);
                      execsql;

                      sql.Clear;
                      sql.Add('select chave from tbnivel2');
                      open;
                      if sqld['chave'] = null then begin
                         sql.Clear;
                         sql.Add('insert into tbnivel2 (descricao) values("NIVEL2")');
                         execsql;
                      end;

                      sql.Clear;
                      sql.Add('select chave from tbnivel3');
                      open;

                      if sqld['chave'] = null then begin
                         sql.Clear;
                         sql.Add('insert into tbnivel3 (descricao,link) values("NIVEL3",'+realdblstr(1)+')');
                         execsql;
                      end;

                      sql.Clear;
                      sql.Add('select chave from tbdespesa');
                      open;
                      if sqld['chave'] = null then begin
                         sql.Clear;
                         sql.Add('insert into tbdespesa (descricao,link) values("NIVEL4",'+realdblstr(1)+')');
                         execsql;
                      end;

                      sql.Clear;
                      sql.Add('select codnivel4 from tbconta');
                      open;
                      if sqld['codnivel4'] = null then begin

                         sql.clear;
                         sql.Add('update tbconta c, tbdespesa d set c.codnivel4 = d.chave where c.contacontabil = d.descricao and c.contacontabil is not null');
                         execsql;

                         sql.clear;
                         sql.Add('update tbconta set codnivel5 ='+realdblstr(1)+',codnivel4 ='+realdblstr(1)+
                                 ',codnivel3 ='+realdblstr(1)+',codnivel2 ='+realdblstr(1)+ ' where codnivel4 is null');
                         execsql;

                      end;

                      end;

                 result := true;
                 sqld.destroy;
              end;

end;


procedure alimentaconta(debito,credito,historico,modulo,doc:string;data:tdate;valor:double);
var
sq2,sqld:tzquery;
credito_, historico_ :string;


begin


       historico_ :=  historico;

      if valor >0 then begin

            if modulo = '34' then begin

               //debito  := combotb2(debito,credito);
               //credito_:= codloc;
               //codloc :='';
               credito_ := credito;
            end else if credito <> '' then begin
               credito_    := credito;
               historico_ :=  historico;
            end else begin
               credito_ := combotb('tbconta','descricao','chave','Creditar nesta conta:','');
               codloc := historico;
               historico_ := uppercase(msgi('Confirme o histórico:',0));
            end;


            //if credito_ = '' then abort;
            while debito =  credito_ do begin
                  msg('A conta crédito não pode ser igual a conta débito',0);
                  credito_ := combotb('tbconta','descricao','chave','Creditar nesta conta:','');
            end;


            //se debito e credito vierem vazios
            if (debito = '') or (credito = '') then begin
               debito := combotb2(debito,credito,'','');

               while (debito = '') or (credito ='') do
                     debito := combotb2(debito,credito,'','');

               credito_ := codloc;
               codloc :='';
            end;



            sqld :=  tzquery.Create(application);
            sqld.Connection := fdm.conector ;

            with sqld do begin
                 sql.Clear;
                 sql.add('select chave, debito,credito, complemento,data, dia, valor,usu,emp,modulo,linkvenda '+
                         ' from tblancacontabil where chave <0');
                 open;

                 sqld.edit;
                 sqld['debito']      := debito;
                 sqld['credito']     := credito_;
                 sqld['complemento'] := historico_;
                 sqld['data']        := data;
                 sqld['dia']         := formatdatetime('dd',data);
                 sqld['valor']       := valor;
                 sqld['usu']         := usuariolink;
                 sqld['emp']         := emp;
                 if modulo <> '' then sqld['modulo']:= modulo;
                 if doc  <> ''   then sqld['linkvenda'] := doc;

                 grava(nil,sqld,'tblancacontabil');
                 destroy;
            end;
         end;
end;

procedure insererecpg(rctb:string;sq:tzquery;modulo:string;plano:boolean);
var
chave,contad,contac,campod,campoc:string;
sqld:tzquery;
datad:tdate;
dinheiro:double;
begin


      case strtoint(modulo) of
           8,27 : campod := '';
           34   : begin
                  campod  := 'conta';
                  campoc := 'conta';
                  end;
      end;


      sqld :=  tzquery.Create(application);
      sqld.Connection := fdm.conector ;

      
      with sqld do begin

           if campod <> '' then begin
              sql.Clear;
              sql.add('select '+campod+' as conta from tbconfig');
              open;
              contad := inttostr(fieldbyname('conta').AsInteger);
           end;

           if modulo = '34' then begin
              sql.Clear;
              sql.add('select '+campoc+' as conta from tbconfig');
              open;
              contac := inttostr(fieldbyname('conta').AsInteger);
           end;
      end;
                       


      if (planocontas) and(strtoint(modulo) in [8,27]) then begin

         with sqld do begin
              sql.Clear;
              sql.add('select codconta, codconta2 from tbfornecedor where codigo = ' + sq.fieldbyname('codigo').AsString);
              open;
              contad  := fieldbyname('codconta').AsString;
              contac  := fieldbyname('codconta2').AsString;
              close;
         end;

         contad := combotb2(contad,contac,'','');

          while contad = '' do
                contad := combotb2(contad,contac,'','');

          contac := codloc;
          codloc :='';
      end;


      try
         datad := sq.FieldByName('data').AsDateTime;
      except
         datad := sq.FieldByName('dtfechamento').AsDateTime;
      end;

      if datad > strtodate('01/01/1900') then else datad := date;

      try
         dinheiro :=  sq.fieldbyname('dinheiro').AsFloat -  sq.fieldbyname('troco').AsFloat;
      except dinheiro :=  sq.fieldbyname('dinheiro').AsFloat;
      end;
                   

      with sqld do begin

           sql.Clear;
           sql.add('select chave from tbconta where codigo = ' + quotedstr(contad));
           open;
           chave := fieldbyname('chave').AsString;

           sql.Clear;
           sql.add('Insert into '+rctb+'('+
                   ' tpconta, codconta,  documento, codigo,nome, '+
                   ' dtemissao, dtvencimento, dtpagamento, vrtitulo, vrdocumento, recebido, '+
                   '  total, caixa, usuario, linkvenda, modulo,linkvendam, emp) '+
                   ' values( '+
                   ''+quotedstr(contad)+
                   ','+ quotedstr(chave)  +
                   ', '+quotedstr(sq.fieldbyname('numero').AsString)+
                   ', '+quotedstr(sq.fieldbyname('codigo').AsString)+
                   ', '+quotedstr(sq.fieldbyname('nome').AsString)+
                   ', '+quotedstr(formatdatetime('yyyy-mm-dd',date))+
                   ', '+quotedstr(formatdatetime('yyyy-mm-dd',date))+
                   ', '+quotedstr(formatdatetime('yyyy-mm-dd',date))+
                   ', '+realdblstr(dinheiro)+
                   //', '+realdblstr(dinheiro)+
                   ', '+realdblstr(dinheiro)+
                   ', '+realdblstr(dinheiro)+
                   ', '+realdblstr(dinheiro)+
                   ', '+quotedstr(sq.fieldbyname('caixa').asstring)+
                   ', '+quotedstr(sq.fieldbyname('usuario').asstring)+
                   ', '+quotedstr(sq.fieldbyname('chave').asstring)+
                   ', '+quotedstr(modulo)+
                   ',1'+
                   ', '+quotedstr(sq.fieldbyname('emp').asstring)+')');
           execsql;
           destroy;
      end;


      if (planocontas) and (plano) then//alimenta o plano de contas
         alimentaconta(contad, contac, '', modulo, sq.fieldbyname('chave').AsString, date, dinheiro);


end;



procedure atualizacontas;
var
   sq, sqM:tzquery;
   codconta:string;
   dt:tdate;
   totalV, totalC:double;
begin
         //esta rotina é para atualizar as contas a pagar e receber,  gravar as vendas e compras a vista nestas contas


         sqM :=  tzquery.Create(application);
         sqM.Connection := fdm.conector ;


         sq :=  tzquery.Create(application);
         with sq do begin
              Connection := fdm.conector ;
              sql.Add('select chave from tbconta where codigo = 0');
              open;
         end;


         if sq.fieldbyname('chave').AsInteger <=0 then begin
              //grava a conta do sistema
              sq.close;
              sq.sql.Clear;
              sq.sql.Add('INSERT INTO `tbconta` (codigo, descricao,  tp,  pgrec) VALUES( 0, "A VISTA", "3", "AMBOS")');
              sq.execsql;

              codconta :='0';

              sq.sql.Clear;
              sq.sql.Add('select min(dtemissao) as data from tbreceber');
              sq.open;
              if sq['data'] <> null then dt := sq.fieldbyname('data').AsDateTime
                                  else dt := date;

             ////totais das vendas
             sq.sql.Clear;
             sq.sql.Add('select sum(if(troco is not null,if (dinheiro is not null, dinheiro,0)-troco,dinheiro)) as Dinheiro '+
                        ' from tbpedido where dinheiro >0 or troco >0');
             sq.open;
             totalV := sq.fieldbyname('dinheiro').AsFloat;

             sq.sql.Clear;
             sq.sql.Add('select if(troco is not null,if (dinheiro is not null, dinheiro,0)-troco,dinheiro) as Dinheiro '+
                        ' from tbacertovenda where dinheiro >0 or troco >0');
             sq.open;
             totalV := totalV + sq.fieldbyname('dinheiro').AsFloat;



             ////totais das compras
             sq.sql.Clear;
             sq.sql.Add('select sum(dinheiro) as Dinheiro  from tbentrada where dinheiro >0');
             sq.open;
             totalC := sq.fieldbyname('dinheiro').AsFloat;

             sq.sql.Clear;
             sq.sql.Add('select if(troco is not null,if (dinheiro is not null, dinheiro,0)-troco,dinheiro) as Dinheiro '+
                     ' from tbacertocompra where dinheiro >0 or troco >0');
             sq.open;
             totalC := totalC + sq.fieldbyname('dinheiro').AsFloat;
             

               //inserir o total das vendas
               with sqM do begin
                    sql.clear;
                    sql.Add('select 0 as numero, 0 as codigo,"ACERTO" as nome, data, 0 as caixa, 0 as usuario, 0 as chave, emp, null as modulo, '+realdblstr(totalV)+
                            ' as dinheiro from tbpedido limit 1,1');
                    open;
               end;
               insererecpg('tbreceber', sqM,'',false);


               //inserir o total das compras
               with sqM do begin
                    sql.clear;
                    sql.Add('select 0 as numero, 1 as codigo,"CREDOR" as nome, now() as data, '+
                            inttostr(fdm.tbcaixagrupo.fieldbyname('caixa').AsInteger)+' as caixa,'+
                            inttostr(usuariolink)+' as usuario, 0 as chave, emp, "10" as modulo, '+
                            realdblstr(totalC)+
                            ' as dinheiro from tbentrada limit 1,1');
                    open;
               end;
               insererecpg('tbpagar', sqM,'',false);
         end;

         sqM.Destroy;
         sq.Destroy;

end;


function verempresa:string;
var
   sq:tzquery;
   nomes,ST:string;
   multempresa:boolean;
begin
         sq :=  tzquery.Create(application);
         with sq do begin
              Connection := fdm.conector ;

              sql.add('select multempresa from tbconfig');
              open;
              multempresa := sq['multempresa'] = 'S';
              close;

              if multempresa then begin

                  sql.Clear;
                  sql.add('select chave,nome,cnpj from tbempresa where (flag <> "D" or flag is null) order by chave');
                  open;

                  if RecordCount > 1 then begin

                      nomes :='';
                      while not EOF do begin
                        nomes := nomes + #13 + copy(FieldByName('chave').AsString +
                                       '        =  ' + FieldByName('nome').AsString,1,40) +#13+
                                       'CNPJ =  '+ FieldByName('CNPJ').AsString+#13;

                        Next;
                      end;

                      first;
                      st := fieldbyname('chave').AsString;
                      inputquery('DIGITE O CÓDIGO DA EMPRESA:','Qual empresa deseja conectar?'+#13+'(DIGITE O NÚMERO CORRESPONDENTE)'+#13+#13+ nomes, st);
                      sq.Locate('chave',st,[]);
                      emp_ := fieldbyname('chave').AsString;
                  end;

                  result := sq.FieldByName('nome').AsString;
                  emp := fieldbyname('chave').asinteger;
                  destroy;

              end else emp :=0;
         end;
end;



function sqlempresa(flag,cp:integer;tb:string):string;
var campo,ntb:string;
begin

   if tb<>'' then ntb := tb+'.';

   if cp=0 then campo := ntb+'chave'
           else campo := ntb+'emp';

   if emp_ <> '' then
      if flag = 0 then result := ' where '+campo+' = '+quotedstr(emp_)+' '
                  else result := ' and '+campo+' = '+quotedstr(emp_)+' ';
end;


procedure filtro2(tabela:tclientdataset;tz:tzquery);
begin
      if tabela <> nil then ffiltrocad2:=tffiltrocad2.Create(application,tabela,nil)
      else                  ffiltrocad2:=tffiltrocad2.Create(application,nil,tz);
      ffiltrocad2.ShowModal;

end;

procedure atualizagrade(tabela:tclientdataset;tz:tzquery; ntb:string);
var
   sq:tzquery;
   chavegrade:integer;
begin

         if tabela <> nil then chavegrade := tabela.fieldbyname('link').AsInteger
                          else chavegrade := tz.fieldbyname('link').AsInteger;

         sq :=  tzquery.Create(application);
         with sq do begin
              Connection := fdm.conector ;
               sql.add('select g.* from '+ntb+' v, tbprodgrade g where v.chavegrade = g.chave and v.link = '+ inttostr(chavegrade));
               //debugstr(sq);
               open;

               if tabela <> nil then begin
                  tabela.First;

                  while not tabela.Eof do begin
                      if sq.Locate('chave',tabela.fieldbyname('chavegrade').AsString,[]) then begin
                         tabela.Edit;
                         tabela['descricao'] := tabela.fieldbyname('descricao').AsString + ' '+ sq.fieldbyname('descricao').AsString;
                         tabela.Post;
                      end;

                     tabela.Next;
                  end;

               end; //fim tabela

              // showmessage(sq.fieldbyname('chave').AsString+'--'+tz.fieldbyname('chavegrade').AsString);

               if tz <> nil then begin
                  tz.First;

                  while not tz.Eof do begin
                      if sq.Locate('chave',tz.fieldbyname('chavegrade').AsString,[]) then begin
                         tz.Edit;
                         tz['descricao'] := tz.fieldbyname('descricao').AsString + ' '+ sq.fieldbyname('descricao').AsString;
//                         tz.Cancel;
                      end;

                     tz.Next;
                  end;

               end; //fim tz



           end;
end;


procedure analitico;

var
DataIni,DataFin,dtini,dtfin,imp,Tipoconta :string;
venda,compra,pgto,recbto:double;
chave:integer;


      procedure gtb(txt:string;vr:double);
      begin

            fdm.tbquery1.Insert;
            fdm.tbquery1['descricao']          := txt;
            if vr>0 then fdm.tbquery1['valor'] := vr;
            fdm.tbquery1['chave']              := chave;
            fdm.tbquery1.Post;
            inc(chave);

      end;


begin


          imp := msgi('Entre com o período:',3);

          chave :=1;
          DataIni := copy(imp,1,10);
          DataFin := copy(imp,11,10);

          dtini := quotedstr(formatdatetime('yyyy/mm/dd', strtodate(DataIni)));
          dtfin := quotedstr(formatdatetime('yyyy/mm/dd', strtodate(DataFin)));

          with fdm.Query1 do begin
               sql.Clear;
               sql.Add('select chave,descricao,vrvenda as valor from tbproduto limit -10,0');
               fdm.tbquery1.Close;
               fdm.tbquery1.Open;
          end;

          Tipoconta    := nomelink('codconta','chave', 'descricao','tbconta','Tipoconta');

             with fdm.query1 do begin
                  //contas  pagas
                  close;
             sql.clear;
             sql.add( 'select '+Tipoconta  +
                                 ' ,sum(recebido)as recebido '+
                                 ' from tbpagar where '+
                                 ' recebido > 0 '+ sqlempresa(1,1,'')+
                                 ' and dtpagamento  between '+
                                 dtini + ' and ' +  dtfin +' group by codconta ');
                  open;

                  pgto:=0;

                  if not isempty then begin
                     gtb('PAGA(S) NO PERÍODO',0);
                     gtb('',0);
                  end;


                  first;
                  while not eof do begin
                      gtb(fieldbyname('tipoconta').AsString, fieldbyname('recebido').Asfloat);
                      pgto := pgto + fieldbyname('recebido').Asfloat;
                      next;
                  end;


                  //compras

                  
                  close;
                  sql.clear;
                  sql.add( 'select sum(dinheiro)as total from tbentrada where '+
                          ' data between '+ dtini + ' and ' +  dtfin + sqlempresa(1,1,''));
                  open;

                  compra :=  fieldbyname('total').asfloat ;
                  pgto := pgto + compra;

                  if compra >0 then gtb('PGTO COMPRA', compra);

                  if pgto >0 then begin
                     gtb('',0);
                     gtb('>>TOTAL<<',pgto);
                     gtb('',0);
                  end;




                     gtb(' ',0);
                     gtb(' ',0);
                     gtb(' ',0);
                     gtb(' ',0);
                     

                  //contas  recebidas
                  close;
                  sql.clear;
                  sql.add( 'select ' + tipoconta +', sum(recebido)as recebido '+
                                '  from tbreceber where '+
                                '  recebido > 0 '+ sqlempresa(1,1,'')+
                                ' and dtpagamento  between '+
                                 dtini + ' and ' +  dtfin +' group by codconta ');
                  open;

                  recbto:=0;

                  if not isempty then begin
                     gtb('RECEBIMENTOS(S) NO PERÍODO',0);
                     gtb('',0);
                  end;


                  first;
                  while not eof do begin
                      gtb(fieldbyname('tipoconta').AsString, fieldbyname('recebido').Asfloat);
                      recbto := recbto + fieldbyname('recebido').Asfloat;
                      next;
                  end;



                  //vendas  pedido
                  close;
                  sql.clear;
                  sql.add( 'select sum(dinheiro) as total '+
                                 ' from tbpedido where  data between '+
                                 dtini + ' and ' +  dtfin +sqlempresa(1,1,''));
                  open;

                  venda := fieldbyname('total').asfloat ;
                  recbto := recbto + fieldbyname('total').asfloat ;


                  if venda > 0 then  gtb('VENDAS À VISTA', venda);
                  if (recbto >0) then gtb('>>TOTAL<<',recbto);


                  gtb('',0);
                  gtb('',0);
                  gtb('',0);
                  gtb('>>RECBTO - PGTO<<  =', recbto-pgto);













          ////////////////////////////////
          gtb('',0);
          gtb('',0);
          gtb('',0);
          gtb('',0);

          gtb('INFORMAÇÕES ADICIONAIS:',0);
          gtb('',0);
          gtb('',0);



                  //vendas  pedido
                  close;
                  sql.clear;
                  sql.add( 'select sum(total) as total '+
                           ' from tbpedido where  data between '+
                           dtini + ' and ' +  dtfin+sqlempresa(1,1,'') );
                  open;

                  if  fieldbyname('total').asfloat > 0 then  gtb('VENDAS DO PERÍODO =', fieldbyname('total').asfloat);




          close;
          sql.clear;
          sql.add( 'select '+tipoconta+', sum(diferenca)as total '+
                                '  from tbreceber where '+
                                '  diferenca > 0 and dtvencimento  between '+
                                 dtini + ' and ' +  dtfin + sqlempresa(1,1,'')+
                                 ' group by CODCONTA ');
                  open;

                  first;
                  recbto :=0;

                  if not isempty then begin
                     gtb('',0);
                     gtb('',0);
                     gtb('',0);
                     gtb('A RECEBER DO PERÍODO',0);
                     gtb('',0);
                  end;

                  while not eof do begin
                      gtb(fieldbyname('tipoconta').AsString,  fieldbyname('total').Asfloat);
                      recbto :=  recbto  +  fieldbyname('total').Asfloat;
                      next;
                  end;

                  if recbto >0 then gtb('>>TOTAL<<',recbto);





                  close;
                  sql.clear;
                  sql.add( 'select sum(total)as total from tbentrada where '+
                          ' data between '+ dtini + ' and ' +  dtfin+sqlempresa(1,1,'') );
                  open;

                  if fieldbyname('total').asfloat >0 then begin
                     gtb('',0);
                     gtb('',0);
                     gtb('COMPRAS DO PERÍODO', fieldbyname('total').asfloat);
                  end;




                  close;
                  sql.clear;
                  sql.add( 'select '+Tipoconta  +
                                 ' ,sum(diferenca)as total '+
                                 ' from TBPAGAR where '+
                                '  diferenca > 0 and dtvencimento  between '+
                                 dtini + ' and ' +  dtfin + sqlempresa(1,1,'')+
                                 ' group by codconta ');
                  open;

                  first;
                  recbto :=0;

                  if not isempty then begin
                     gtb('',0);
                     gtb('',0);
                     gtb('A PAGAR DO PERÍODO',0);
                  end;


                  while not eof do begin
                      gtb(fieldbyname('tipoconta').AsString,
                                                            fieldbyname('total').Asfloat);
                      recbto :=  recbto  +  fieldbyname('total').Asfloat;
                      next;
                  end;



                  if recbto >0 then gtb('>>TOTAL<<',recbto);
                     gtb('',0);
                  end;


                  fdm.tbquery1.IndexFieldNames := 'chave';
                  reltb(fdm.tbquery1,'RELATÓRIO ANALÍTICO DE '+ DataIni + ' A '+DataFin,'','','','','','','','','','','','','','');
                  fdm.tbquery1.IndexFieldNames := '';
                  fdm.tbquery1.close;


end;





function qtvdcomp(codigo,criterio:string;cpvd:integer):double;
var
DataIni,  DataFin,imp:string;
venda,compra:double;
i:integer;
begin

            if criterio ='' then begin
               imp := msgi('Entre com o período:',3);

               DataIni := copy(imp,1,10);
               DataFin := copy(imp,11,10);

               criterio       := ' and data between '+ quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataIni)))+
                              ' and ' + quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataFin)));
            end;


            if cpvd =0 then begin//venda
               selecione('select sum(qtd)as qtd from vendaitem where (modo="P" or modo="T") and codigo = '+quotedstr(codigo) + criterio+sqlempresa(1,1,''));
               venda := sqlpub.fieldbyname('qtd').asfloat;
               selecione('select sum(qtd)as qtd from vendadevolucao where codigo = '+quotedstr(codigo) + criterio+sqlempresa(1,1,''));
               venda := venda - sqlpub.fieldbyname('qtd').asfloat;
               selecione('select sum(qtd)as qtd from tbpedidoitem where codigo = '+quotedstr(codigo) + criterio+sqlempresa(1,1,''));
               venda := venda + sqlpub.fieldbyname('qtd').asfloat;
               result := venda;

           end else begin
               selecione('select sum(qtd)as qtd from tbeitem where codigo = '+quotedstr(codigo)+ criterio+sqlempresa(1,1,''));
               compra := sqlpub.fieldbyname('qtd').asfloat;
               selecione('select sum(qtd)as qtd from tbentradaitem where codigo = '+quotedstr(codigo)+ criterio+sqlempresa(1,1,''));
               compra := sqlpub.fieldbyname('qtd').asfloat;

               selecione('select sum(qtd)as qtd from tbeitemdf where codigo = '+quotedstr(codigo)+ criterio+sqlempresa(1,1,''));
               compra := compra - sqlpub.fieldbyname('qtd').asfloat;
               selecione('select sum(qtd)as qtd from tbentradaitemdf where codigo = '+quotedstr(codigo)+ criterio+sqlempresa(1,1,''));
               compra := compra - sqlpub.fieldbyname('qtd').asfloat;
               result := compra;
           end;

end;








procedure alimentacaixa(dc:string);
var
vr,motivo,saient:string;
begin


        Acesso1('Caixa');
        permissao(sqlacesso.FieldByName('inserir').AsString, 'PN', 'Caixa');

        cxdiario;

        if  dc = 'D' then saient := 'Saída'
                     else saient := 'Entrada';

        fdm.tbcaixagrupo.close;
        fdm.tbcaixagrupo.Open;

        if (fdm.tbcaixagrupo['modo'] = NULL) or ((fdm.tbcaixagrupo['modo'] <>'A')and
           (fdm.tbcaixagrupo['modo'] <> 'ABERTO')) then  msg('#O caixa não está aberto!',0);

        vr     := msgi('Digite o valor da '+saient,2);
        motivo := msgi('Digite o motivo',0);

        inscx(dc,uppercase(motivo), strtofloat(vr));

        MSG('Lançado!!!',0);
end;




procedure vfcaixa(caixa:integer);
var
cx,chave,usu,mult,criterio,imp, DataIni, DataFin, dtanterior,CX_INI  :string;
saldoanterior,saldo:double;


    procedure limpazero;
    begin
               if (fdm.tbquery1.fieldbyname('entrada').asfloat >0) or
                  (fdm.tbquery1.fieldbyname('saida').asfloat>0) then
                  fdm.tbquery1['Saldo_Din']   := fdm.tbquery1.fieldbyname('entrada').asfloat-
                                                 fdm.tbquery1.fieldbyname('saida').asfloat
               else fdm.tbquery1['Saldo_Din'] := null;

               if fdm.tbquery1.fieldbyname('cheque').asfloat = 0 then
                  fdm.tbquery1['cheque']   := null;

               if fdm.tbquery1.fieldbyname('Cart_Cred').asfloat = 0 then
                  fdm.tbquery1['Cart_Cred']:= null;

               if fdm.tbquery1.fieldbyname('Cart_Deb').asfloat = 0 then
                  fdm.tbquery1['Cart_Deb'] := null;

               if fdm.tbquery1.fieldbyname('A_Prazo').asfloat = 0 then
                  fdm.tbquery1['A_Prazo']  := null;
     end;

begin                      

        //caixa: 0 = caixa aberto, >0 = caixa encerrado, -1= fluxo de caixa
                      
        try         
        Acesso1('Caixa');
        permissao(sqlacesso.FieldByName('inserir').AsString, 'PN', 'Caixa');
        except end;
        usu := nomelink('usuario','chave', 'nome','tbusuario','Usuario');

        //para nao somar o caixa inicial ao fluxo de caixa
        if caixa <>  -1 then CX_INI := ' or tipo = "CX_INI" ';

        //caixa aberto
        if caixa = 0 then begin
           mult := ' where (modo = "A" or modo = "ABERTO")';

           fdm.tbcaixagrupo.close;
           fdm.tbcaixagrupo.Open;
           if (fdm.tbcaixagrupo['modo'] <> 'A') and ((fdm.tbcaixagrupo['modo'] <> 'ABERTO')) then
               msg('#O caixa não está aberto!',0);


            selecione('select fechamentocaixa from tbconfig');
            if sqlpub['fechamentocaixa']= 'MULTIPLO'  then
               mult := mult + ' where (modo = "A" or modo = "ABERTO")  and (usuario = ' + quotedstr(inttostr(usuariolink))+
                       ' or usuario = ' + quotedstr(usuario)+')';


        //outros caixas encerrados
        end else if caixa >0 then mult :=  ' where chave = '+quotedstr(inttostr(caixa))


        //fluxo caixa
        else if caixa <0 then begin

            imp := msgi('Entre com o período:',3);

            DataIni := copy(imp,1,10);
            DataFin := copy(imp,11,10);

            criterio       := ' and data between '+ quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataIni)))+
                              ' and ' + quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataFin)));

            dtanterior     := ' where data < '+ quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataIni)));
        end;


                        

         with fdm.query1 do begin

              // para caixas individuais
              if caixa >=0 then begin
                 sql.Clear;
                 if caixa >0 then //cx anteriores
                    SQL.Add('select * from  tbcaixagrupo where chave = ' + quotedstr(inttostr(caixa))+sqlempresa(1,1,''))
                 else
                    SQL.Add('select * from  tbcaixagrupo  '+ mult + ' and chave = ' + quotedstr(fdm.tbcaixagrupo.fieldbyname('chave').asstring)+sqlempresa(1,1,''));
                 open;
                 chave := fieldbyname('chave').AsString;
                 criterio := ' and link = ' + quotedstr(chave);
              end;


              sql.Clear;
              sql.Add('select chave, data, '+
                      ' if (tipo = "D","SAIDA", if(tipo="C","ENTRADA",tipo)) as Descricao,'+
                      ' documento, '+
                      ' link as caixa,'+
                      ' if ((tipo = "C"  or tipo = "RECEB" or tipo = "CX_INI"), dinheiro,0) as Entrada, '+
                      ' if ((tipo = "D" or tipo = "SAIDA"), dinheiro,0) as Saida, '+
                      ' dinheiro - dinheiro as Saldo_Din, '+
                      ' if (cheque is null,0,cheque) + if (chequepre is null,0,chequepre) as cheque, '+
                      ' cartao as Cart_Cred, '+
                      ' cartaod as Cart_Deb, '+
                      ' fiado as A_Prazo, '+
                      ' dinheiro - dinheiro as Saldo_Cx, '+
                      ' dinheiro - dinheiro as acumulo, '+
                      ' hora, '+
                      ' descricao as Motivo,'+
                      usu +
                      ' from tbentradacaixa where '+
                      ' (tipo = "C" or tipo = "D" or tipo = "SAIDA" or tipo = "RECEB" '+CX_INI+' ) '+ sqlempresa(1,1,'')+ criterio );

              fdm.tbquery1.Close;
              fdm.tbquery1.open;


              if caixa >=0 then criterio := ' and caixa = ' + quotedstr(chave);


              //saldo anterior
              if caixa <0 then begin
                 sql.Clear;
                 sql.Add('select sum(if ((tipo = "C"  or tipo = "RECEB" '+CX_INI+'), dinheiro,0)) as Entrada, '+
                         ' sum(if ((tipo = "D" or tipo = "SAIDA"), dinheiro,0)) as Saida from tbentradacaixa '+ dtanterior+sqlempresa(1,1,''));
                 open;
                 saldoanterior := fieldbyname('Entrada').AsFloat - fieldbyname('Saida').AsFloat;


                 // caixas anteriores
                 sql.Clear;
                 SQL.Add('select max(chave) as chave from  tbcaixagrupo ' +
                         ' where datainicial < '+ quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataIni)))+sqlempresa(1,1,''));
                 open;
                 dtanterior     := ' where caixa <= '+ quotedstr(fieldbyname('chave').AsString);


                 //caixas do periodo
                 sql.Clear;
                 SQL.Add('select chave from  tbcaixagrupo where datainicial between '+ quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataIni)))+
                         ' and ' + quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataFin)))+sqlempresa(1,1,''));
                 open;


                 criterio :='';
                 First;
                 while not Eof do begin
                    if criterio = '' then
                         criterio:= ' and (caixa = ' + quotedstr(fieldbyname('chave').AsString)
                    else criterio:=  criterio + ' or caixa = ' + quotedstr(fieldbyname('chave').AsString);
                    next;
                 end;

                 if criterio <>'' then criterio := criterio + ')'
                                  else criterio :=' and caixa <0 ';
              end;



              //saldo anterior venda
              if caixa <0 then begin
                  sql.Clear;
                  sql.Add('select sum(if(troco>0,dinheiro-troco,dinheiro)) as dinheiro, sum(cheque) as cheque, '+
                          'sum(chequepre) as chequepre, sum(cartao) as cartao, sum(cartaod) as cartaod,  sum(fiado) as fiado from tbpedido '+dtanterior+sqlempresa(1,1,''));
                  open;

                  saldoanterior :=  saldoanterior + fieldbyname('dinheiro').AsFloat+
                                                    fieldbyname('cheque').AsFloat+
                                                    fieldbyname('chequepre').AsFloat+
                                                    fieldbyname('cartao').AsFloat+
                                                    fieldbyname('cartaod').AsFloat+
                                                    fieldbyname('fiado').AsFloat;
               end;

              //venda
              sql.Clear;
              sql.Add('select caixa, numero, dtfechamento, if(troco>0,dinheiro-troco,dinheiro) as dinheiro, cheque, '+
                      'chequepre, cartao, cartaod,  fiado ,'+usu+' from tbpedido  where chave >0 '+ criterio+
                      ' and (dinheiro >0 or cheque >0 or chequepre >0 or cartao >0 or cartaod or fiado >0 ) '+sqlempresa(1,1,''));

              open;

              first;
              while not eof do begin
                    fdm.tbquery1.insert;

                    fdm.tbquery1['documento'] := fieldbyname('numero').AsInteger;
                    fdm.tbquery1['caixa'] := fieldbyname('caixa').AsInteger;

                    if fieldbyname('dinheiro').AsFloat >0 then
                       fdm.tbquery1['entrada'] := fieldbyname('dinheiro').AsFloat;

                    if (fieldbyname('cheque').AsFloat >0) or (fieldbyname('chequepre').AsFloat >0) then
                       fdm.tbquery1['cheque'] := fieldbyname('cheque').AsFloat + fieldbyname('chequepre').AsFloat;

                    if fieldbyname('cartao').AsFloat >0 then
                       fdm.tbquery1['Cart_Cred'] := fieldbyname('cartao').AsFloat;

                    if fieldbyname('cartaod').AsFloat >0 then
                       fdm.tbquery1['Cart_Deb'] := fieldbyname('cartaod').AsFloat;

                    if fieldbyname('fiado').AsFloat >0 then
                       fdm.tbquery1['A_Prazo'] := fieldbyname('fiado').AsFloat;

                   // if fieldbyname('VrCouvert').AsFloat >0 then
                     //  fdm.tbquery1['VrCouvert'] := fieldbyname('VrCouvert').AsFloat;

                    fdm.tbquery1['Descricao'] := 'VENDAS';
                    fdm.tbquery1['usuario']    := fieldbyname('usuario').AsString;
                    fdm.tbquery1['data']       := fieldbyname('dtfechamento').AsDateTime;

                    fdm.tbquery1.post;
                    next;

              end;
              close;





              //fatura venda anterior
              if caixa <0 then begin
                  sql.Clear;
                  sql.Add('select sum(if(troco>0,dinheiro-troco,dinheiro)) as dinheiro, '+
                          ' sum(cheque) as cheque, sum(chequepre) as chequepre, sum(cartao) as cartao, sum(cartaod) as cartaod,  sum(fiado) as fiado from tbacertovenda  '+ dtanterior+sqlempresa(1,1,''));
                  open;

                  saldoanterior :=  saldoanterior + fieldbyname('dinheiro').AsFloat+
                                                    fieldbyname('cheque').AsFloat+
                                                    fieldbyname('chequepre').AsFloat+
                                                    fieldbyname('cartao').AsFloat+
                                                    fieldbyname('cartaod').AsFloat+
                                                    fieldbyname('fiado').AsFloat;
              end;



              //fatura venda
              sql.Clear;
              sql.Add('select caixa, numero, data as dtfechamento, if(troco>0,dinheiro-troco,dinheiro) as dinheiro, '+
                      ' cheque, chequepre, cartao, cartaod,  fiado ,'+usu+' from tbacertovenda where chave >0 '+ criterio+sqlempresa(1,1,''));
              open;

              first;
              while not eof do begin
                    fdm.tbquery1.insert;

                    fdm.tbquery1['documento'] := fieldbyname('numero').AsInteger;
                    fdm.tbquery1['caixa'] := fieldbyname('caixa').AsInteger;

                    if fieldbyname('dinheiro').AsFloat >0 then
                       fdm.tbquery1['entrada'] := fieldbyname('dinheiro').AsFloat;

                    if (fieldbyname('cheque').AsFloat >0) or (fieldbyname('chequepre').AsFloat >0) then
                       fdm.tbquery1['cheque'] := fieldbyname('cheque').AsFloat + fieldbyname('chequepre').AsFloat;

                    if fieldbyname('cartao').AsFloat >0 then
                       fdm.tbquery1['Cart_Cred'] := fieldbyname('cartao').AsFloat;

                    if fieldbyname('cartaod').AsFloat >0 then
                       fdm.tbquery1['Cart_Deb'] := fieldbyname('cartaod').AsFloat;

                    if fieldbyname('fiado').AsFloat >0 then
                       fdm.tbquery1['A_Prazo'] := fieldbyname('fiado').AsFloat;


                    fdm.tbquery1['Descricao'] := 'ACERTO VENDA';
                    fdm.tbquery1['usuario']    := fieldbyname('usuario').AsString;
                    fdm.tbquery1['data']       := fieldbyname('dtfechamento').AsDateTime;

                    fdm.tbquery1.post;
                    next;

              end;
              close;





              if caixa <0 then begin
                  sql.Clear;
                  sql.Add('select sum(dinheiro) as dinheiro from tbmov  '+  dtanterior+' and datasaida is not null ');
                  open;
                  saldoanterior := saldoanterior + fieldbyname('dinheiro').AsFloat;
              end;


              usu := nomelink('usufin','chave', 'nome','tbusuario','Usuario');
              sql.Clear;
              sql.Add('select chave as numero, caixa, dataentrada,tipo, dinheiro, '+usu+' from tbmov where datasaida is not null '+criterio);
              open;

              first;
              while not eof do begin
                    fdm.tbquery1.insert;

                    case fieldbyname('tipo').AsInteger of
                         0: fdm.tbquery1['Descricao'] := 'HORISTA';
                         1: fdm.tbquery1['Descricao'] := 'DIARISTA';
                         2: fdm.tbquery1['Descricao'] := 'MENSALISTA';
                         3: fdm.tbquery1['Descricao'] := 'CONVENIADO';
                    end;

                    fdm.tbquery1['documento'] := fieldbyname('numero').AsInteger;
                    fdm.tbquery1['caixa'] := fieldbyname('caixa').AsInteger;
                    fdm.tbquery1['entrada'] := fieldbyname('dinheiro').AsFloat;
                    fdm.tbquery1['data']       := fieldbyname('dataentrada').AsDateTime;
                    fdm.tbquery1['usuario']    := fieldbyname('usuario').AsString;
                    fdm.tbquery1.post;
                    next;

              end;
              close;
           end;


         if caixa = -1 then begin
            saldo := saldoanterior;
            fdm.tbquery1.Insert;
            fdm.tbquery1['chave']     := '0';
            fdm.tbquery1['Descricao'] := 'SALDO ANTERIOR';
            fdm.tbquery1['Saldo_Cx']  := saldoanterior;
            fdm.tbquery1.post;
         end;


         fdm.tbquery1.IndexFieldNames := 'data;caixa';
         fdm.tbquery1.First;

         while not fdm.tbquery1.Eof do begin

               fdm.tbquery1.edit;

               limpazero;
               fdm.tbquery1['Saldo_Cx']   := fdm.tbquery1.fieldbyname('A_Prazo').asfloat +
                                             fdm.tbquery1.fieldbyname('Cart_Deb').asfloat +
                                             fdm.tbquery1.fieldbyname('Cart_Cred').asfloat +
                                             fdm.tbquery1.fieldbyname('cheque').asfloat +
                                             fdm.tbquery1.fieldbyname('entrada').asfloat -
                                             fdm.tbquery1.fieldbyname('saida').asfloat;
               saldoanterior := saldoanterior +  fdm.tbquery1.fieldbyname('Saldo_Cx').AsFloat;
               fdm.tbquery1['acumulo'] :=  saldoanterior;

               fdm.tbquery1['chave'] := fdm.tbquery1.RecNo;
               fdm.tbquery1.post;
               fdm.tbquery1.Next;
         end;



         selecione('drop table if exists temp');
         selecione('create table temp( '+
                      'chave int auto_increment primary key, '+
                      'Data date, '+
                      'Cx_Num integer,  '+
                      'Descricao varchar(30),'+
                      'Entrada double, '+
                      'Saida double, '+
                      'Saldo_Din  double, '+
                      'cheque double,  '+
                      'Cart_Cred double, '+
                      'Cart_Deb double, '+
                      'A_Prazo  double, '+
                      'Saldo_Cx double, '+
                      'Acumulo double)');


         fdm.tbquery1.First;
         while not fdm.tbquery1.Eof do begin
               selecione(' insert into temp (Cx_Num,Data,descricao,Entrada,saida,Saldo_Din, cheque,Cart_Cred,Cart_Deb,A_Prazo,Saldo_Cx) values('+
                         quotedstr(fdm.tbquery1.fieldbyname('caixa').AsString)+
                     ','+quotedstr(formatdatetime('yyyy-mm-dd', fdm.tbquery1.fieldbyname('Data').AsDateTime))+
                     ','+quotedstr(fdm.tbquery1.fieldbyname('descricao').AsString)+
                     ','+realdblstr(fdm.tbquery1.fieldbyname('Entrada').AsFloat)+
                     ','+realdblstr(fdm.tbquery1.fieldbyname('saida').AsFloat)+
                     ','+realdblstr(fdm.tbquery1.fieldbyname('Saldo_Din').AsFloat)+
                     ','+realdblstr(fdm.tbquery1.fieldbyname('cheque').AsFloat)+
                     ','+realdblstr(fdm.tbquery1.fieldbyname('Cart_Cred').AsFloat)+
                     ','+realdblstr(fdm.tbquery1.fieldbyname('Cart_Deb').AsFloat)+
                     ','+realdblstr(fdm.tbquery1.fieldbyname('A_Prazo').AsFloat)+
                     ','+realdblstr(fdm.tbquery1.fieldbyname('Saldo_Cx').AsFloat)+ ')');
               fdm.tbquery1.Next;
         end;


         if caixa = -1 then
            with fdm.Query1 do begin
                 sql.Clear;
                 sql.Add('select chave, Data ,Cx_Num , Descricao ,'+
                      'sum(Entrada) as Entrada , '+
                      'sum(Saida) as Saida, '+
                      'sum(Saldo_Din) as Saldo_Din, '+
                      'sum(cheque) as cheque, '+
                      'sum(Cart_Cred) as Cart_Cred, '+
                      'sum(Cart_Deb) as Cart_Deb, '+
                      'sum(A_Prazo) as A_Prazo, '+
                      'sum(Saldo_Cx) as Saldo_Cx, '+
                      'Acumulo from temp group by data, Cx_Num,descricao');

                 fdm.tbquery1.close;
                 fdm.tbquery1.IndexFieldNames := 'data;Cx_Num';
                 fdm.tbquery1.open;

                 while not fdm.tbquery1.Eof do begin
                      saldo := saldo +  fdm.tbquery1.fieldbyname('Saldo_Cx').AsFloat;
                      fdm.tbquery1.edit;
                      fdm.tbquery1['acumulo'] :=  saldo;
                      limpazero;
                      fdm.tbquery1.Post;
                      fdm.tbquery1.Next;
                 end;

           end;

         fdm.tbquery1.First;
         if caixa <>0 then cx := '#Caixa'  // isso para nao pedir para fechar o caixa ja fechado
                      else cx := 'Caixa';

         if      caixa=0 then imp := cx+' - '+usuario
         else if caixa>0 then imp := cx+' - '+inttostr(caixa)
         else if caixa=-1 then imp := cx+' -  Fluxo de '+DataIni+' a '+DataFin;

         reltb(fdm.tbquery1,imp,'','Saldo_Cx','Saldo_Din','Saida','Entrada','Cheque','Cart_Cred','Cart_Deb','A_Prazo','','','','','');
         fdm.tbquery1.close;
         fdm.tbquery1.IndexFieldNames := '';
         fdm.tbcaixagrupo.Cancel;
         selecione('drop table if exists temp');
end;






function combotb(controle,controle2,controle3,controle4 ,controle5: string): string;
begin   //controle=tabela  controle2=campo visualizar  controle3 = valor a retornar
        result :='';
        codloc :='';
        periodo2('combo',controle,controle2,controle3,controle4 ,controle5,136,288,0);
        if codloc <> '' then result := codloc;
        codloc :='';
end;

function combotb2(controle,controle2,controle3,controle4: string): string;
var st1,st2,st3:string;


procedure separar(Bruto: string);
var
  cont,i: integer;
begin

  i:=1;


  for cont := 0 to length(Bruto) do begin
      if copy(bruto,cont,1) = '#' then
         if i = 1 then i:=2 else
         if i = 2 then i:=3;


      if i = 1 then
         if copy(bruto,cont+1,1) <> '#' then
            st1 := st1 + copy(bruto,cont+1,1);

      if i = 2 then
         st2 := st2 + copy(bruto,cont+1,1);

      if i = 3 then
         st3 := st3 + copy(bruto,cont+1,1);

  end;

end;

begin   //controle1=campo debito  controle2 = credito
        result :='';
        codloc :='';
        valorconfig :='';
        periodo2('combo',controle,controle2,controle3,controle4, '',171,295,2);

        if codloc <> '' then begin
           separar(codloc);
           result      := st1;
           codloc      := formatnumeric(st2);
           valorconfig := st3;
        end;
end;


procedure PrintForm(frm: TForm);
var
  bmp: TBitMap;
  x, y, WDPI, HDPI: Integer;
  OldColor: TColor;
begin
  Screen.Cursor := crHourGlass;
  OldColor := frm.Color;
  frm.Color := clWhite;
  frm.Update;
  bmp := frm.GetFormImage;

  with Printer do
  begin
//  Orientation := poLandscape;
  BeginDoc;
  HDPI := PageHeight div 8;
  WDPI := PageWidth div 8;
  x := PageWidth - Round(WDPI * 0.4); {0.4" margem direita}
  y := PageHeight - Round(HDPI * 0.5); {0.5" Altura do rodapé}
  Canvas.StretchDraw(Rect(0, 0, x, y), bmp);
  EndDoc;

  end;
  bmp.Free;
  frm.Color := OldColor;
  Screen.Cursor := crDefault;
end;



function ativanet(ipnet_,databasenet_,usernet_,Passwordnet_:string):boolean;

  procedure disconectdanet;
  begin
           ipnet := 'localhost';
           databasenet := 'sigac';
           if Application.Title = 'Empresarial_Net' then databasenet := 'empresarialnet';
           usernet := 'root';
           Passwordnet :='';
           fdm.conectnet.Connected := false;
           fdm.snet.close;
  end;

begin
        fdm.conectnet.Disconnect;

        if ipnet_ ='' then disconectdanet
        else begin

           ipnet :=ipnet_;

           if databasenet_ <> '' then databasenet := databasenet_
           else if Application.Title = 'Empresarial_Net' then databasenet := 'empresarialnet'           
                                else databasenet := 'sigac';

           if usernet_ <> '' then  usernet := usernet_
                             else usernet := 'root';

           if Passwordnet_ <> '' then Passwordnet := Passwordnet_
                                   else Passwordnet := '';
           try
              fdm.conectnet.Connect;
           //se nao conectar
           except
                disconectdanet;
           end;

        end;

        result :=  fdm.conectnet.Connected = true;
end;





procedure formatacptabela(tabela:tclientdataset;tz:tzquery;ncasas:integer);
var
i,j:integer;
casas:string;
begin

      //numero de casas decimais
      for j := 1 to ncasas do casas := casas + '0';

      //formatar
       if tabela <> nil then begin

         for i:=0 to tabela.FieldCount-1 do begin

            if (tabela.fieldbyname(tabela.Fields[i].FieldName).ClassName = 'TFloatField') then
                (tabela.fieldbyname(tabela.Fields[i].FieldName)  as tfloatfield).displayformat := '###,##0.'+casas

            else if (tabela.fieldbyname(tabela.Fields[i].FieldName).ClassName = 'TIntegerField') then
                (tabela.fieldbyname(tabela.Fields[i].FieldName)  as TIntegerField).displayformat := '000000'

            else if (tabela.fieldbyname(tabela.Fields[i].FieldName).ClassName = 'TDateField') then
               tabela.fieldbyname(tabela.Fields[i].FieldName).EditMask := '99/99/9999';
         end;

       end;



       if tz <> nil then begin

         for i:=0 to tz.FieldCount-1 do begin

            if (tz.fieldbyname(tz.Fields[i].FieldName).ClassName = 'TFloatField') then
                (tz.fieldbyname(tz.Fields[i].FieldName)  as tfloatfield).displayformat := '###,##0.'+casas

            else if (tz.fieldbyname(tz.Fields[i].FieldName).ClassName = 'TIntegerField') then
                (tz.fieldbyname(tz.Fields[i].FieldName)  as TIntegerField).displayformat := '000000'

            else if (tz.fieldbyname(tz.Fields[i].FieldName).ClassName = 'TDateField') then
               tz.fieldbyname(tz.Fields[i].FieldName).EditMask := '99/99/9999';
         end;

       end;
end;




procedure imptxt(tb1,tb2,tb3,tb4,tb5:tzquery;modulo:integer);
begin
        fimpressora:=tfimpressora.Create(application,tb1,tb2,tb3,tb4,tb5,modulo);
        fimpressora.ShowModal;
end;







function liberarmes:string;
var
  libera,conect:boolean;
  datacalc,st,cnpj,resp,dup: string;
  dtlocal,dt,libate:tdate;
  data,hora,syskey : string;
  System: array [0..144] of char;
begin

        result :='';
        selecione('select cnpj from tbempresa where (emp <> "2" or emp is null)');
        cnpj := sqlpub.FieldByName('cnpj').asstring ;

        selecione('select decode(data,"999")as data from tbconfig');

        try
           if sqlpub.fieldbyname('data').AsString <>'' then
              dtlocal:=strtodate(copy(sqlpub.fieldbyname('data').AsString,7,2) +'/'+
                                 copy(sqlpub.fieldbyname('data').AsString,5,2)+'/'+
                                 copy(sqlpub.fieldbyname('data').AsString,1,4))
           else dtlocal:= date;
        except end;


        libera := false;
        conect := ativanet('mysql.vitalcred.com.br','odontocred1','odontoc_soft','soft1423');

        if not conect then ativanet('','','','');


        if conect then begin

              with fdm.snet do begin
                   close;
                   sql.Clear;
                   sql.Add('select liberar, libate, dup from conf where ct = 0 and (liberar is not null and liberar ="S") and '+
                           ' cnpj = '+ quotedstr(cnpj));
                   open;
                   libera := fieldbyname('liberar').AsString = 'S';
                   //libera := true;
                   libate := fieldbyname('libate').AsDateTime;
                   dup :=    fieldbyname('dup').AsString;
                   close;

                   if libate =0 then libera := false;

                   if dtlocal >= libate then libera := false;

              end;

        end else result := '0';


        if libera then begin

            GetSystemDirectory(System, 144);
            selecione('select decode(data,"999")as data,decode(hora,"999")as hora ,'+
                           'decode(syskey,"999")as syskey from tbconfig');

                with sqlpub do begin

                     data:= fieldbyname('data').AsString;
                     hora:= fieldbyname('hora').AsString;
                     syskey:= fieldbyname('syskey').AsString;

                     data := formatdatetime('yyyymmdd',libate);

                     dt:=strtodate(copy(data,7,2) +'/'+
                           copy(data,5,2)+'/'+
                           copy(data,1,4));


                    if (dup = 's') or (dup='S') then dup :='' else dup :=' liberar = "N", ';

                    with fdm.snet do begin
                         sql.Clear;
                         sql.Add('update conf set '+ dup +
                                 ' lib = '+ quotedstr(datetostr(dt))+
                                 ' where cnpj = '+ quotedstr(cnpj));
                        execsql;

                        ativanet('','','','');
                    end;


                     datacalc := formatdatetime('yyyy',dt)+
                                 formatdatetime('mm',dt)+
                                 formatdatetime('dd',dt);

            st:=inttostr((strtoint64(datacalc)-2000) * strtoint64(hora));

            selecione('update tbconfig set '+
                      'data = encode('+ formatdatetime('yyyy',dt) +
                                      formatdatetime('mm',dt)+
                                      formatdatetime('dd',dt) + ',"999"),'+
                    'modo = "L",'+
                    'syskey = encode('+uppercase(st)+ ',"999")');


            selecione('select decode(data,"999")as data from tbconfig');

            data:= fieldbyname('data').AsString;
            result := data;

            if strtodate(copy(data,7,2) +'/'+ copy(data,5,2)+'/'+ copy(data,1,4)) >= date then
               BLOQUEAR:=false;

            sqlpub := nil;
           end;

           
        end else result :='1';


        ativanet('','','','');
end;


procedure reldata(tp:integer);
var
  DataIni, DataFin, imp, dt, cp,cpd, gp:string;
begin
        //TP: 1=DIA, 2=MES, 3=ANO

        imp := msgi('Entre com o período.',3);
        DataIni := copy(imp,1,10);
        DataFin := copy(imp,11,10);

        dt := ' where dtfechamento between '+
               quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataIni)))+
               ' and ' + quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataFin)));

        if tp = 1 then gp := 'group by extract(day from dtfechamento),  extract(month from dtfechamento),  extract(year from dtfechamento)' else
        if tp = 2 then gp := 'group by  extract(month from dtfechamento),  extract(year from dtfechamento)' else
        if tp = 3 then gp := 'group by  extract(year from dtfechamento)';

        selecione('select '+
                  ' extract(day from dtfechamento) as Dia, '+
                  ' extract(month from dtfechamento) as Mes, '+
                  ' extract(year from dtfechamento) as Ano,'+
                  ' sum(total)as Total from tbpedido '+dt+
                  ' and total >0 '+sqlempresa(1,1,'') +gp);

        if tp = 1 then cp := ' codigo as Dia, nome as  Diasemana, codigo as Mes,nome as Nomemes, ' else
        if tp = 2 then cp := ' codigo as Mes,nome as Nomemes, ';

        with fdm.Query1 do begin
             sql.Clear;
             sql.Add('select chave, '+ cp + ' codigo as Ano, total from tbpedido where chave <0'+sqlempresa(1,1,''));

             fdm.tbquery1.Close;
             fdm.tbquery1.open;

             sqlpub.first;
             while not sqlpub.Eof do begin
                   fdm.tbquery1.insert;
                   fdm.tbquery1['chave'] := fdm.tbquery1.RecNo;

                   if tp = 1 then begin
                      fdm.tbquery1['dia'] := strtoint(sqlpub.fieldbyname('dia').AsString);
                      fdm.tbquery1['diasemana'] := formatdatetime('dddd',strtodate(sqlpub.fieldbyname('dia').asstring+'/'+
                                                   sqlpub.fieldbyname('mes').asstring+'/'+sqlpub.fieldbyname('ano').asstring));
                   end;

                   fdm.tbquery1['ano'] := strtoint(sqlpub.fieldbyname('ano').AsString);

                   if (tp = 1) or(tp = 2) then begin
                      fdm.tbquery1['mes'] := strtoint(sqlpub.fieldbyname('mes').AsString);
                      fdm.tbquery1['nomemes'] := formatdatetime('mmmm/yyyy',strtodate('01/'+sqlpub.fieldbyname('mes').asstring+'/'+fdm.tbquery1.fieldbyname('ano').AsString));
                   end;


                   fdm.tbquery1['total'] := sqlpub.fieldbyname('total').AsFloat ;
                   fdm.tbquery1.Post;
                   sqlpub.Next;
             end;
          end;


         sqlpub := nil;

         if tp=1 then begin
            fdm.tbquery1.IndexFieldNames := 'dia';
            cp := 'dia';
            cpd := ' de ' +dataini+' a '+datafin;
         end else if tp=2 then begin
            fdm.tbquery1.IndexFieldNames := 'mes';
            cp := 'mes';
            cpd := ' de ' + formatdatetime('mm/yyyy', strtodate(DataIni))+ ' a '+ formatdatetime('mm/yyyy', strtodate(Datafin));
         end else if tp=3 then begin
            fdm.tbquery1.IndexFieldNames := 'ano';
            cp := 'ano';
            cpd := ' de ' + formatdatetime('yyyy', strtodate(DataIni))+ ' a '+ formatdatetime('yyyy', strtodate(Datafin));
         end;

         reltb(fdm.tbquery1,'Vendas por '+cp +cpd ,'','','','','','','','','','','','','','');
         fdm.tbquery1.open;
         fdm.tbquery1.IndexFieldNames := '';
end;


procedure geraetiqueta(tb:tzquery;campo:string);
begin
       application.CreateForm(tfetqprod, fetqprod);
       fetqprod.tabela.Close;
       fetqprod.tabela.CreateDataSet;
       fetqprod.tabela.open;


      if tb<>nil then begin

          tb.First;
          while not tb.EOF do
          begin
              fetqprod.preenche(nil,tb,tb.fieldbyname(campo).AsInteger);
              tb.Next;
          end;
          
      end;

      fetqprod.ShowModal;
end;



procedure versimples(cst:string);
begin
         if (not (strtoint(cst) in[101,102,103,201,202,203])) and
            (cst <> '300') and
            (cst <> '400') and
            (cst <> '500') and
            (cst <> '900') then  msg('#CSOSN "'+cst+'" não é válido!'+#13+'Use: 101, 102, 103, 201, 202, 203, 300, 400, 500 ou 900',0);
end;




      
procedure geraboleto(tabela:tzquery;i:integer;ntbg:string;imp:boolean);

//num:integer: se 0(zero), imprimir, se <> zero exportar para c:
var
   n,J:integer;
   tot:double;
   spc,em,loc : string;
   list : tstringlist;

   procedure santaderH;
   var
   lote :integer;
   tpcnpjs:string;

   begin
    lote :=  fdm.sg.FieldByName('lote').AsInteger + 1;
    selecione('update tbcedente set lote = ' + inttostr(lote) + ' where chave = '+quotedstr(fdm.sg.FieldByName('chave').AsString));

    if length(formatnumeric(fdm.sg.FieldByName('cnpj').AsString))=14 then tpcnpjs := '2'
                                                                     else tpcnpjs := '1';


        //   1a3
    lista.Add('033'+
             formatfloat('0000',0)+ // 4a7
             '0'+ // 8a8
             strcomplete(' ',' ',8,1)+ //9a16
             tpcnpjs + //  17a17
             formatfloat('000000000000000',strtofloat(formatnumeric(fdm.sg.FieldByName('cnpj').AsString)))+
             formatfloat('0000',strtofloat(fdm.sg.FieldByName('CodAg').AsString))+ //33
             formatfloat('00000000000',strtofloat(fdm.sg.FieldByName('codcedente').AsString))+ //47
             strcomplete(' ',' ',25,1)+ //48a72
             strcomplete(copy(fdm.sg.FieldByName('NomeCliente').AsString,1,30),' ',30,1)+//  73a102
             strcomplete(copy('BANCO SANTANDER',1,30),' ',30,1)+//  103a132
             strcomplete(' ',' ',10,1)+ //133a142
             '1'+//143a143
             formatdatetime('ddmmyyyy',date)+//144a151
             strcomplete(' ',' ',6,1)+ //152a157
             formatfloat('000000',lote)+ // 158a163
             '040'+ //164a166
             strcomplete(' ',' ',74,1)); //167a240



        
    lista.Add('033'+  //   1a3
             formatfloat('0000',1)+ // 4a7
             '1'+ // 8a8
             'R'+ // 9a9
             '01'+ // 10a11
             strcomplete(' ',' ',2,1)+ //12a13
            '030'+ // 14a16
            ' '+//17a17
             tpcnpjs + //  18a18
             formatfloat('000000000000000',strtofloat(formatnumeric(fdm.sg.FieldByName('cnpj').AsString)))+ //19a33
             strcomplete(' ',' ',20,1)+ //34a53
             formatfloat('0000',strtofloat(fdm.sg.FieldByName('CodAg').AsString))+ //54
             formatfloat('00000000000',strtofloat(fdm.sg.FieldByName('codcedente').AsString))+ //68
             strcomplete(' ',' ',5,1)+ //69a73
             strcomplete(copy(fdm.sg.FieldByName('NomeCliente').AsString,1,30),' ',30,1)+//  74a103
             strcomplete(copy(' ',1,40),' ',40,1)+//  104a143
             strcomplete(copy(' ',1,40),' ',40,1)+//  144a183
             formatfloat('00000000',lote)+ // 184a191
             formatdatetime('ddmmyyyy',date)+//192a199
             strcomplete(' ',' ',41,1)); //200a240


   end;



   procedure santaderM;
   var
     codcarteira,especie,instrucao,tpcnpjs,tpcnpj :string;
     juro:double;
     sq:tzquery;
   begin
         sq :=  tzquery.Create(application);
         with sq do begin
              Connection := fdm.conector ;
              sql.Add('select juro from tbconfig');
              open;
              juro := fieldbyname('juro').AsFloat;
              destroy;
         end;



         if fdm.RLBTitulo1.EmissaoBoleto = ebClienteEmite  then codcarteira := '2' else
         if fdm.RLBTitulo1.EmissaoBoleto = ebBancoEmite    then codcarteira := '2'   else
         if fdm.RLBTitulo1.EmissaoBoleto = ebBancoReemite  then codcarteira := '3' else
         if fdm.RLBTitulo1.EmissaoBoleto = ebBancoNaoReemite  then codcarteira := '5';

         if fdm.RLBTitulo1.EspecieDocumento = edDuplicataServico   then especie := '04' else
         if fdm.RLBTitulo1.EspecieDocumento = edDuplicataMercantil then especie := '02' else especie := '02';

         if fdm.RLBTitulo1.Cedente.TipoInscricao =  tiPessoaJuridica then      tpcnpj := '02'
                                                                     else      tpcnpj := '01';

         if length(formatnumeric(tabela.FieldByName('cnpj').AsString))=14 then tpcnpjs := '2'
                                                                          else tpcnpjs := '1';



        //   1a3   arquivo P
    lista.Add('033'+
             formatfloat('0000',1)+ // 4a7
             '3'+ // 8a8
             formatfloat('00000',J)+//  9a13
             'P'+ // 14a14
             ' '+ // 15a15
             '01'+//16a17
             formatfloat('0000',strtofloat(fdm.sg.FieldByName('CodAg').AsString))+ //18a21
             formatfloat('0',strtofloat(fdm.sg.FieldByName('DigAg').AsString))+ //22a22
             formatfloat('000000000',strtofloat(fdm.sg.FieldByName('Conta').AsString))+ // 23a31
             formatfloat('0',strtofloat(fdm.sg.FieldByName('DigConta').AsString))+ // 32a32
             formatfloat('000000000',strtofloat(fdm.sg.FieldByName('Conta').AsString))+ // 33a41
             formatfloat('0',strtofloat(fdm.sg.FieldByName('DigConta').AsString))+ // 42a42
             '  '+ // 43a44
             formatfloat('0000000000000',strtofloat(fdm.RLBTitulo1.NossoNumero + fdm.RLBTitulo1.DigitoNossoNumero))+ //45a57
             codcarteira+
             '1'+//59
             '2'+//60
             '  '+//31a62
             strcomplete(tabela.FieldByName('chave').AsString,' ',15,1)+//63a77
             formatdatetime('ddmmyyyy',tabela.FieldByName('dtvencimento').AsDateTime)+//78a85
             formatfloat('000000000000000',tabela.FieldByName('vrdocumento').AsFloat*100)+//86a100
             formatfloat('0000',strtofloat(fdm.sg.FieldByName('CodAg').AsString))+ //101a104
             formatfloat('0',strtofloat(fdm.sg.FieldByName('DigAg').AsString))+ //105
             ' '+//106
             especie+//107a107
             'N'+//108
             formatdatetime('ddmmyyyy',tabela.FieldByName('dtemissao').AsDateTime)+//110a117
             '3'+//118
             formatdatetime('ddmmyyyy',tabela.FieldByName('dtvencimento').AsDateTime)+//119a126
             formatfloat('000000000000000',0*100)+//127a141
             //formatfloat('000000000000000',juro*100)+//127a141
             '0'+//142
             formatdatetime('ddmmyyyy',tabela.FieldByName('dtvencimento').AsDateTime)+//143a150
             formatfloat('000000000000000',0*100)+//151a165
             formatfloat('000000000000000',0*100)+//166a180
             formatfloat('000000000000000',0*100)+//181a195
             strcomplete(' ',' ',25,1)+ //196a220
             copy('0',1,1)+//
             //copy(fdm.sg.FieldByName('protestar').AsString,1,1)+//
             formatfloat('00',0 )+ //222a223
//             formatfloat('00',fdm.sg.FieldByName('n_dia_protestar').AsFloat )+ //222a223
             '2'+//224
             '0'+//225
             '00'+//226a227
             '00'+//228a229
             strcomplete(' ',' ',11,1)); //230a240
             inc(J);


        //   1a3  arquivo Q
    lista.Add('033'+
             formatfloat('0000',2)+ // 4a7
             '3'+ // 8a8
             formatfloat('00000',J)+//  9a13
             'Q'+ // 14a14
             ' '+ // 15a15
             '01'+// 16a17
             tpcnpjs+//18
             formatfloat('000000000000000',strtofloat(formatnumeric(tabela.FieldByName('cnpj').AsString)))+ //19a33
             strcomplete(copy(tabela.FieldByName('nome').AsString,1,40),' ',40,1)+//  30a73
             strcomplete(copy(tabela.FieldByName('endereco').AsString +' ' +
                              tabela.FieldByName('numero').AsString +'  '+
                              tabela.FieldByName('complemento').AsString,1,40) ,' ',40,1)+//  74a113
             strcomplete(copy(tabela.FieldByName('bairro').AsString,1,15)  ,' ',15,1)+//  114a128
             strcomplete(copy(formatnumeric(tabela.FieldByName('cep').AsString),1,8)  ,' ',8,1)+//  129a136
             strcomplete(copy(tabela.FieldByName('municipio').AsString,1,15)  ,' ',15,1)+//  137a 151
             strcomplete(copy(tabela.FieldByName('uf').AsString,1,2)  ,' ',2,1)+//  352a153
             '0'+'000000000000000'+//154a169
             strcomplete(copy(fdm.RLBTitulo1.Sacado.SacadorAvalista,1,40)  ,' ',40,1)+//  170a209
             '000'+// 210
             '000'+//
             '000'+//
             '000'+// 221
             strcomplete(' ',' ',19,1)); //222a240
             inc(J);





        //   1a3  arquivo R
    lista.Add('033'+
             formatfloat('0000',2)+ // 4a7
             '3'+ // 8a8
             formatfloat('00000',j)+//  9a13
             'R'+ // 14a14
             ' '+ // 15a15
             '01'+// 16a17
             '0'+//18
             formatfloat('00000000',0)+//19a26
             formatfloat('000000000000000',0*100)+//24a41
             strcomplete(' ',' ',24,1)+ //42a65
             '2'+// 66
             formatfloat('00000000',0)+//75a89
             formatfloat('000000000000000',0*100)+//75a89
             strcomplete(' ',' ',10,1)+ //90a99
             strcomplete(' ',' ',80,1)+ //100a179
             strcomplete(' ',' ',61,1)); //180a240
             inc(j);

        //   1a3  arquivo S
    lista.Add('033'+
             formatfloat('0000',2)+ // 4a7
             '3'+ // 8a8
             formatfloat('00000',j)+//  9a13
             'S'+ // 14a14
             ' '+ // 15a15
             '01'+// 16a17
             '2'+//18
             strcomplete(copy(fdm.sg.FieldByName('instrucoes').AsString,1,40),' ',40,1)+//  19
             strcomplete(copy(fdm.sg.FieldByName('instrucoes2').AsString,1,40),' ',40,1)+
             strcomplete(' ',' ',40,1)+
             strcomplete(' ',' ',40,1)+
             strcomplete(' ',' ',40,1)+ //118
             strcomplete(' ',' ',22,1));//219a240
   end;


   procedure santaderT;
   begin
    lista.Add('033'+
             formatfloat('0000',1)+ // 4a7
             '5'+ // 8a8
             strcomplete(' ',' ',9,1)+//9a17
             formatfloat('000000',2+tabela.RecordCount*4)+//  18a23
             strcomplete(' ',' ',217,1));//24a240


    lista.Add('033'+
             '9999'+ // 4a7
             '9'+ // 8a8
             strcomplete(' ',' ',9,1)+//9a17
             '000001'+ //18a23
             formatfloat('000000',2+tabela.RecordCount*4+2)+//  24a29
             strcomplete(' ',' ',211,1));//30a240

  end;

begin
        //0=impressao,1=remessa,2=retorno




        with fdm.sg do begin
             sql.Clear;
             sql.Add('select * from tbcedente');
             open;
        end;
                                      
        if fdm.sg.RecordCount <>1 then listagem('Banco','','',31,0);

        if fdm.sg.Active = false then abort;
        j :=1;

        //cabeca retorno
        if (i =1) and (Copy(fdm.sg.FieldByName('Banco').AsString,1,3) = '033') and (fdm.sg['formato'] = 'CNAB240') then begin //santader
              lista := tstringlist.Create;
              santaderH;
        end;


        em := fdm.sg.FieldByName('emissaoboleto').AsString;

       if fdm.sg['formato'] = 'CNAB240' then fdm.RLBRemessa1.LayoutArquivo := laCNAB240
                                        else fdm.RLBRemessa1.LayoutArquivo := laCNAB400;


        if em ='CLIENTEEMITE' then    fdm.RLBTitulo1.EmissaoBoleto :=  ebClienteEmite else
        if em ='BANCOEMITE' then      fdm.RLBTitulo1.EmissaoBoleto :=  ebBancoEmite else
        if em ='BANCOREEMITE' then    fdm.RLBTitulo1.EmissaoBoleto :=  ebBancoReemite else
        if em ='BANCONAOREEMITE' then fdm.RLBTitulo1.EmissaoBoleto :=  ebBancoNaoReemite;

        fdm.RLBTitulo1.TipoOcorrencia := toRemessaRegistrar;

//        if fdm.sg.FieldByName('Layout').AsString  = 'blCarne' then  fdm.RLBTitulo1.BoletoLayout := blCarne else

        fdm.RLBTitulo1.BoletoLayout := blPadrao;

        spc := fdm.sg.FieldByName('especie').AsString;

        if   spc = 'EDALUGUEL' then fdm.RLBTitulo1.EspecieDocumento :=  edAluguel
        else if spc = 'EDAPOLICESEGURO' then fdm.RLBTitulo1.EspecieDocumento := edApoliceSeguro
        else if spc = 'EDCHEQUE' then fdm.RLBTitulo1.EspecieDocumento := edCheque
        else if spc = 'EDCONTRATO' then fdm.RLBTitulo1.EspecieDocumento := edContrato
        else if spc = 'EDCONTRIBUICAOCONFEDERATIVA' then fdm.RLBTitulo1.EspecieDocumento := edContribuicaoConfederativa
        else if spc = 'EDCOSSEGUROS' then fdm.RLBTitulo1.EspecieDocumento := edCosseguros
        else if spc = 'EDDIVIDAATIVAESTADO' then fdm.RLBTitulo1.EspecieDocumento := edDividaAtivaEstado
        else if spc = 'EDDIVIDAATIVAMUNICIPIO' then fdm.RLBTitulo1.EspecieDocumento :=edDividaAtivaMunicipio
        else if spc = 'EDDIVIDAATIVAUNIAO' then fdm.RLBTitulo1.EspecieDocumento := edDividaAtivaUniao
        else if spc = 'EDDUPLICATAMERCANTIALINDICACAO' then fdm.RLBTitulo1.EspecieDocumento := edDuplicataMercantialIndicacao
        else if spc = 'EDDUPLICATAMERCANTIL' then fdm.RLBTitulo1.EspecieDocumento :=edDuplicataMercantil
        else if spc = 'EDDUPLICATARURAL' then fdm.RLBTitulo1.EspecieDocumento :=edDuplicataRural
        else if spc = 'EDDUPLICATASERVICO' then fdm.RLBTitulo1.EspecieDocumento :=edDuplicataServico
        else if spc = 'EDDUPLICATASERVICOINDICACAO' then fdm.RLBTitulo1.EspecieDocumento :=edDuplicataServicoIndicacao
        else if spc = 'EDFATURA' then fdm.RLBTitulo1.EspecieDocumento := edFatura
        else if spc = 'EDLETRACAMBIO' then fdm.RLBTitulo1.EspecieDocumento :=edLetraCambio
        else if spc = 'EDMENSALIDADEESCOLAR' then fdm.RLBTitulo1.EspecieDocumento :=edMensalidadeEscolar
        else if spc = 'EDNOTACREDITOCOMERCIAL' then fdm.RLBTitulo1.EspecieDocumento := edNotaCreditoComercial
        else if spc = 'EDNOTACREDITOEXPORTACAO' then fdm.RLBTitulo1.EspecieDocumento :=edNotaCreditoExportacao
        else if spc = 'EDNOTACREDITOINDUSTRIAL' then fdm.RLBTitulo1.EspecieDocumento :=edNotaCreditoIndustrial
        else if spc = 'EDNOTACREDITORURAL' then fdm.RLBTitulo1.EspecieDocumento := edNotaCreditoRural
        else if spc = 'EDNOTADEBITO' then fdm.RLBTitulo1.EspecieDocumento := edNotaDebito
        else if spc = 'EDNOTAPROMISSORIA' then fdm.RLBTitulo1.EspecieDocumento := edNotaPromissoria
        else if spc = 'EDNOTAPROMISSORIARURAL' then fdm.RLBTitulo1.EspecieDocumento := edNotaPromissoriaRural
        else if spc = 'EDNOTASEGURO' then fdm.RLBTitulo1.EspecieDocumento := edNotaSeguro
        else if spc = 'EDOUTROS' then fdm.RLBTitulo1.EspecieDocumento :=edOutros
        else if spc = 'EDPARCELACONSORCIO' then fdm.RLBTitulo1.EspecieDocumento :=edParcelaConsorcio
        else if spc = 'EDRECIBO' then fdm.RLBTitulo1.EspecieDocumento := edRecibo
        else if spc = 'EDTRIPLICATAMERCANTIL' then fdm.RLBTitulo1.EspecieDocumento := edTriplicataMercantil
        else if spc = 'EDTRIPLICATASERVICO' then fdm.RLBTitulo1.EspecieDocumento := edTriplicataServico
        else if spc = 'EDWARRANT' then fdm.RLBTitulo1.EspecieDocumento := edWarrant;

//        if fdm.sg['formato'] = 'CNAB400' then fdm.RLBRemessa1.LayoutArquivo :=  laCNAB400     else
  //                                       fdm.RLBRemessa1.LayoutArquivo :=  laCNAB240;



        codloc :='';
        if (imp) and (responsavel <> 'VITALCRED') then
        codloc := msgi('Sacador/Avalista & CPF/CNPJ:'+#13+#13+'Digite o nome do Sacador/Avalista e o CFP/ou CNPJ',0);


        tot:=0;
        fdm.RLBTitulo1.ClearRecords;
        tabela.First;
        while not tabela.Eof do begin

                  if tabela['nboleto'] = null then begin
                     selecione('select nboleto from tbconfig');
                     n:= sqlpub.fieldbyname('nboleto').AsInteger+1;
                  end else n:= tabela.fieldbyname('nboleto').AsInteger;

                  preencheboleto(n,tabela);


                  fdm.RLBTitulo1.InsertRecord;

                  //nao mudao a numeracao se ja tiver
                  if tabela['nboleto'] = null then begin
                     selecione('update '+ntbg+' set nboleto = '+ realdblstr(n)+
                               ' where chave = '+ quotedstr(tabela.fieldbyname('chave').AsString));
                     selecione('update tbconfig  set nboleto = '+ realdblstr(n));
                     //inc(n);
                  end;

                  //showmessage(fdm.RLBTitulo1.DigitoNossoNumero);
                  if i = 1 then begin

                     if (Copy(fdm.sg.FieldByName('Banco').AsString,1,3) = '033') and (fdm.sg['formato'] = 'CNAB240') then
                      santaderM;
                     fdm.RLBRemessa1.Titulos.Add(fdm.RLBTitulo1);
                     tot := tot + fdm.RLBTitulo1.ValorDocumento;

                  end;


                  tabela.Next;
           end;

     if (i = 1) and (Copy(fdm.sg.FieldByName('Banco').AsString,1,3) = '033')  and (fdm.sg['formato'] = 'CNAB240') then
      santaderT;

     //RLBTitulo1.Visualizar;
     if i = 0 then begin

        if imp = false then fdm.RLBTitulo1.PreviewModal(tabela.fieldbyname('chave').AsInteger)
                       else fdm.RLBTitulo1.PreviewModal(0);

        loc := tabela.fieldbyname('chave').AsString;
        tabela.Refresh;
        tabela.Locate('chave',loc,[]);
     end;
     fechatg;



end;



procedure preencheboleto(n:integer;tabela:tzquery);
var
tpcnpj:string;
begin

        with fdm.RLBTitulo1 do  begin

            //Dados do Cedente
            DataProcessamento := Date;
            Cedente.ContaBancaria.Banco.Codigo := Trim(Copy(fdm.sg.FieldByName('Banco').AsString,1,3));
            Cedente.ContaBancaria.CodigoAgencia := Trim(fdm.sg.FieldByName('CodAg').AsString);
            Cedente.ContaBancaria.DigitoAgencia := Trim(fdm.sg.FieldByName('DigAg').AsString);
            Cedente.ContaBancaria.NumeroConta := Trim(fdm.sg.FieldByName('Conta').AsString);
            Cedente.ContaBancaria.DigitoConta := Trim(fdm.sg.FieldByName('DigConta').AsString);
            Cedente.CodigoCedente := Trim(fdm.sg.FieldByName('CodCedente').AsString);
            Cedente.DigitoCodigoCedente := Trim(fdm.sg.FieldByName('DigCedente').AsString);
            Carteira := Trim(fdm.sg.FieldByName('Carteira').AsString);
            Cedente.ContaBancaria.Convenio := Trim(fdm.sg.FieldByName('Convenio').AsString);
            Cedente.ContaBancaria.NomeCliente := Trim(fdm.sg.FieldByName('NomeCliente').AsString);

            if length(formatnumeric(fdm.sg.FieldByName('cnpj').AsString))=14 then begin
               Cedente.TipoInscricao := tiPessoaJuridica;
               tpcnpj := '02';
            end else begin
               Cedente.TipoInscricao := tiPessoaFisica;
               tpcnpj := '01';
            end;

             Cedente.NumeroCPFCGC := formatnumeric(fdm.sg.FieldByName('cnpj').AsString);
             Cedente.Nome := fdm.sg.FieldByName('NomeCliente').AsString;
             Cedente.Endereco.Rua := fdm.sg.FieldByName('endereco').AsString+' '+
                                     fdm.sg.FieldByName('complemento').AsString;
             Cedente.Endereco.Numero := fdm.sg.FieldByName('numero').AsString;
             Cedente.Endereco.Bairro := fdm.sg.FieldByName('bairro').AsString;
             Cedente.Endereco.Cidade := fdm.sg.FieldByName('municipio').AsString;
             Cedente.Endereco.Estado := fdm.sg.FieldByName('uf').AsString;
             Cedente.Endereco.CEP := formatnumeric(fdm.sg.FieldByName('CEP').AsString);

             //dados do sacado
             Sacado.SacadorAvalista :=codloc;
             Sacado.Nome := tabela.FieldByName('nome').AsString;

             if length(formatnumeric(tabela.FieldByName('cnpj').AsString))=14 then
                Sacado.TipoInscricao := tiPessoaJuridica
             else
                Sacado.TipoInscricao := tiPessoaFisica;

             Sacado.NumeroCPFCGC := formatnumeric(tabela.FieldByName('cnpj').AsString);
             Sacado.Endereco.Rua := tabela.FieldByName('endereco').AsString +' ' +
                                    tabela.FieldByName('numero').AsString +'  '+
                                    tabela.FieldByName('complemento').AsString;
             Sacado.Endereco.Bairro := tabela.FieldByName('bairro').AsString;
             Sacado.Endereco.Cidade := tabela.FieldByName('municipio').AsString;
             Sacado.Endereco.Estado := tabela.FieldByName('uf').AsString;
             Sacado.Endereco.CEP := formatnumeric(tabela.FieldByName('cep').AsString);

            //dados da cobranca

            NossoNumero := Trim(inttostr(n));
            //showmessage(NossoNumero+ '..'+DigitoNossoNumero);

            ValorDocumento := tabela.FieldByName('vrdocumento').AsFloat;
            DataDocumento := Date;
            DataVencimento := tabela.FieldByName('dtvencimento').AsDateTime;
            NumeroDocumento := Trim(tabela.FieldByName('chave').AsString);
            SeuNumero       := Trim(tabela.FieldByName('chave').AsString);
            Instrucoes.Clear;
            Instrucoes.Add(fdm.sg.FieldByName('Instrucoes').AsString);
            Instrucoes.Add(fdm.sg.FieldByName('Instrucoes2').AsString);


         end;
end;



procedure cancelavenda(chave,n:integer);
var
st,tbG,tbI,tbD,tbS,tbPP,tipoestoque,nome,chavepedido,modo,tipovenda,td:string;
codigo,numero:integer;
begin

           if n = 0 then begin
              tbG := 'venda';
              tbI := 'vendaitem';
              tbD := 'vendadevolucao';
              tbS := 'vendaservico';
              tbPP := 'vendapp';
              chavepedido := ', chavepedido';
           end else begin
              tbG := 'tbpedido';
              tbI := 'tbpedidoitem';
              tbD := 'tbpedidoitem';
              tbS := 'tbpedidoservico';
              tbPP := 'tbpecapendente';
              
           end;

           if n = 1 then begin//venda encerrada
               st := msgi('QUAL É O MOTIVO?',0);
               if st='' then abort;

               codloc := st;
               senhagerencial('VENDA',#13+#13+'DIGITE SENHA PARA CANCELAR A VENDA:', codloc);
           end;

           selecione('select td, modo, codigo, numero, tipoestoque,tipovenda, nome '+chavepedido+' from '+tbG+' where chave = '+  inttostr(chave));
           codigo:= sqlpub.fieldbyname('codigo').asinteger;
           numero:= sqlpub.fieldbyname('numero').asinteger;
           tipoestoque := sqlpub.fieldbyname('tipoestoque').AsString;
           tipovenda   := sqlpub.fieldbyname('tipovenda').AsString;
           nome := sqlpub.fieldbyname('nome').AsString;
           modo := sqlpub.fieldbyname('modo').AsString;
           td := sqlpub.fieldbyname('td').AsString;

           if n = 0 then chavepedido := sqlpub.fieldbyname('chavepedido').AsString
                    else chavepedido := inttostr(chave);

           deletaconta(chavepedido,'pedido',inttostr(codigo),'');

           selecione('select codigo, qtd, chavegrade from '+tbI+' where link = '+  inttostr(chave));
           while not sqlpub.eof do begin
                   alimentaestoque(sqlpub.fieldbyname('codigo').AsString,
                                   sqlpub.fieldbyname('qtd').asfloat, tipoestoque,
                                   sqlpub.FieldByName('chavegrade').AsInteger);
                sqlpub.next;
           end;


           if n=0 then begin//se for venda aberta tem devolucao para voltar para o estoque
               selecione('select codigo, qtd, chavegrade from '+tbD+' where link = '+  inttostr(chave));
               while not sqlpub.eof do begin
                    alimentaestoque(sqlpub.fieldbyname('codigo').AsString,
                                    sqlpub.fieldbyname('qtd').asfloat*(-1),tipoestoque,
                                    sqlpub.FieldByName('chavegrade').AsInteger);

                    sqlpub.next;
               end;
            end;

        selecione( 'delete from '+ tbI +' where link = '+ inttostr(chave));
        selecione( 'delete from '+ tbD +' where link = '+ inttostr(chave));
        selecione( 'delete from '+ tbPP+' where link = '+ inttostr(chave));
        selecione( 'delete from '+ tbS +' where link = '+ inttostr(chave));

        if n = 0 then
           selecione( 'delete from '+ tbG +' where chave = '+  inttostr(chave));

        selecione('update tbpedido set '+
                   '   status="C" '+
                   ',  modo='+ quotedstr(modo)+
                   ',  dtfechamento=now() '+
                   ',  data = if(data is null, now(),data) '+
                   ',  totalservico = null '+
                   ',  totalpeca = null '+
                   ',  descontoreal = null '+
                   ',  acrescimo = null '+
                   ',  dinheiro = null '+
                   ',  troco = null '+
                   ',  credito = null '+
                   ',  cheque = null '+
                   ',  chequepre = null '+
                   ',  cartao = null '+
                   ',  cartaod = null '+
                   ',  fiado = null '+
                   ',  campo1 = null '+
                   ',  campo2 = null '+
                   ',  campo3 = null '+
                   ',  campo4 = null '+
                   ',  campo5 = null '+
                   ',  campo6 = null '+
                   ',  campo7 = null '+
                   ',  campo8 = null '+
                   ',  campo9 = null '+
                   ',  servico = null '+
                   ',  obs = null '+
                   ',  obs1 = null '+
                   ',  tipo = null '+
                   ',  tipodesconto = null '+
                   ',  tipoestoque = '+ quotedstr(tipoestoque)+
                   ',  tipovenda = '+   quotedstr(tipovenda)+
                   ',  avulso = null '+
                   ',  codigo = '+inttostr(codigo)+
                   ',  nome = '+quotedstr('CANC - '+nome)+
                   ',  orcamento = null '+
                   ',  vendedor = null '+
                   ',  totalparcial = null '+
                   ',  total = null '+
                   ',  usuario = '+quotedstr(inttostr(usuariolink))+
                   ' where chave = '+  quotedstr(chavepedido));

        sqlpub := nil;

        saldocliente(inttostr(codigo));
        GALTERA('2', inttostr(numero), 'd');
        codloc:='';
end;


procedure exportar(form:tform;rep:TRLReport; nome, email:string);

Procedure substitui (const Enc, subs: String; Var Texto:TRichEdit);
Var
i, Posicao: Integer;
Linha: string;
Begin
For i:= 0 to Texto.Lines.count - 1 do
    begin
    Linha := Texto. Lines[i];
    Repeat
    Posicao:=Pos(Enc,Linha);
    If Posicao > 0 then
       Begin
       Delete(Linha,Posicao,Length(Enc));
       Insert(Subs,Linha,Posicao);
       Texto.Lines[i]:=Linha;
       end;
    until Posicao = 0;
    end;
end;



//var
//m:TRichEdit;
//cam:string;
begin
         nome := Formatstr(nome,'_');

//         if not DirectoryExists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\ped_orc\')) then
  //          ForceDirectories(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\ped_orc\'));

         if FileExists('c:\Orc.pdf') then deletefile('c:\Orc.pdf');


         rep.NewPage;
         rep.SaveToFile('c:\Orc.pdf');
         {fdm.tbconfig.Open;
         cam := fdm.tbconfig.fieldbyname('caminhologo').AsString;
         fdm.tbconfig.close;

         m := TRichEdit.Create(application);
         with m do begin
              parent := form;
              visible := false;
              PlainText := true;
              lines.LoadFromFile('c:\i1.pdf');
              substitui('i1-img1.bmp', cam, m);

              if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\ped_orc\' + nome +'.pdf') then
                 deletefile(pchar(ExtractFilePath(ParamStr(0)) + 'imagem\ped_orc\' + nome +'.pdf'));

              lines.savetofile(ExtractFilePath(ParamStr(0)) + 'imagem\ped_orc\' + nome +'.pdf');
              destroy;
         end;}

         sendMail(nome,
                  email,
                  nome,
                  email,
                  'ORÇAMENTO '+ fantasiaempresa,
                  'Digite aqui o assunto',
                  'c:\Orc.pdf',true);
end;


procedure uteisferi(fl:integer);
 var
    mes, ano,nao: string;

        function ultdia:integer;

        begin
           codloc := formatdatetime('mm',date);
           mes  := msgi('Digite o mês (número):', 2);
           codloc := formatdatetime('yyyy',date);
           ano := msgi('Digite o ano:', 2);
           result := UltimodoMes(StrToInt(mes), StrToInt(ano));

           with fdm.Query2 do begin
                 sql.Clear;
                 sql.Add('select dia, mes, nome from tbdatacomemorativa where mes = ' + quotedstr(mes));
                 open;
            end;
        end;


        procedure dutil;
             var
             i:integer;
             dt:string;
        begin

            with fdm.Query1 do begin
                 sql.Clear;
                 sql.Add('select chave, codigo as dia, descricao as DiaSemana from tbconta limit -1,-1');
                 fdm.tbquery1.close;
                 fdm.tbquery1.Open;
            end;

            for i := 1 to ultdia do begin

                dt := formatfloat('00',i)+'/' + mes + '/' +ano;
                //dias uteis
                if (fl=0) and (uppercase(formatdatetime('dddd', strtodate(dt))) <> 'DOMINGO') and
                   (not fdm.Query2.Locate('dia',inttostr(i),[])) then begin
                   fdm.tbquery1.Insert;
                   fdm.tbquery1['chave'] := fdm.tbquery1.RecNo;
                   fdm.tbquery1['dia'] := i;
                   fdm.tbquery1['DiaSemana'] := uppercase(tiraacento(formatdatetime('dddd', strtodate(dt))));
                   fdm.tbquery1.Post;
                end;

                //dias nao uteis
                if (fl=1) and ((uppercase(formatdatetime('dddd', strtodate(dt))) = 'DOMINGO') or
                   (fdm.Query2.Locate('dia',inttostr(i),[]))) then begin
                   fdm.tbquery1.Insert;
                   fdm.tbquery1['chave'] := fdm.tbquery1.RecNo;
                   fdm.tbquery1['dia'] := i;
                   fdm.tbquery1['DiaSemana'] := uppercase(tiraacento(formatdatetime('dddd', strtodate(dt))));

                   if fdm.tbquery1['DiaSemana']  <> 'DOMINGO' then
                      fdm.tbquery1['DiaSemana'] := fdm.Query2.fieldbyname('nome').AsString;

                   fdm.tbquery1.Post;
                end;


            end;
         end;

begin

            dutil;
            if fl = 1 then nao := 'não';
            fdm.tbquery1.IndexFieldNames := 'dia';
            reltb(fdm.tbquery1,inttostr(fdm.tbquery1.RecordCount) + ' Dias '+nao+' úteis do mês/ano ' + mes+'/'+ano,'','','','','','','','','','','','','','');
            fdm.tbquery1.close;
            fdm.query2.close;
            fdm.tbquery1.IndexFieldNames := '';

end;



procedure dupcodigo(modulo:integer);
var
chave,tb:string;
codigo,i:integer;
begin
        //4            5          6               7
        //'tbcliente','tbproduto','tbfuncionario','tbfornecedor'
        tb := captb(inttostr(modulo));

        for i :=1 to 5 do begin

              with fdm.Query1 do begin
                   close;
                   sql.Clear;
                   sql.Add('select max(codigo)as codigo from '+tb);
                   open;
                   try
                     codigo := fieldbyname('codigo').AsInteger + 1;
                   except codigo := 1; end;

                   close;
                   sql.Clear;
                   sql.Add('select codigo, count(codigo)as qtd from '+tb+' where codigo >0 group by codigo order by qtd desc');
                   open;


                   while not eof do begin
                         if fieldbyname('qtd').AsFloat >1 then begin

                            selecione('select max(chave) as chave from '+tb+' where codigo = ' + quotedstr(fieldbyname('codigo').AsString));
                            chave := sqlpub.fieldbyname('chave').AsString;

                            selecione('update '+tb+ ' set codigo = ' + quotedstr(inttostr(codigo))+
                                      ' where chave = '+ quotedstr(chave));
                            inc(codigo);

                         end;
                         next;
                   end;
                end;
          end;

          if modulo = 5 then begin
             selecione('update tbreceber, tbcliente set tbreceber.codigo = tbcliente.codigo where tbreceber.nome = tbcliente.nome');
             selecione('update tbpedido, tbcliente set tbpedido.codigo = tbcliente.codigo where tbpedido.nome = tbcliente.nome');
             selecione('update venda, tbcliente set venda.codigo = tbcliente.codigo where venda.nome = tbcliente.nome');
           end;

end;



procedure regprimeiro;
var
  dt1,DT:tdate;
  res,modo, data, hora, syskey,email,sen:string;
  i:integer;

  sqld: tzquery;
begin


          sqld :=  tzquery.Create(application);
          sqld.Connection := fdm.conector ;


          with sqld do begin
             sql.clear;
             sql.add( 'select * from tbusuario');
               open;
               //showmessage(inttostr(fieldcount));

               if fieldcount = 3 then begin
                  close;
                  sql.clear;
                  sql.add('alter table tbusuario add varejo char(1),add atacado char(1),add custo char(1)');
                  execsql;
               end;



               close;
               sql.clear;
               sql.add('select modo,decode(dt,"999")as dt, decode(data,"999")as data,decode(hora,"999")as hora ,decode(syskey,"999")as syskey from tbconfig');
               open;

               data:= fieldbyname('data').AsString;
               hora:= fieldbyname('hora').AsString;
               syskey:= fieldbyname('syskey').AsString;
               modo:= fieldbyname('modo').AsString;

               if (sqld['dt'] <> null) and (StrIsDate(fieldbyname('dt').Asstring)= false) then
                  bloquear := true;

               if sqld['dt'] <> null then begin
                  dt1 := strtodate(fieldbyname('dt').Asstring);

                  if dt1 > date then begin

                      while sen <> floattostr((strtofloat(formatdatetime('dd', date)) +
                            strtofloat(formatdatetime('mm', date)) *
                            strtofloat(formatdatetime('yyyy', date)) +
                            strtofloat(formatdatetime('hh', time)) +
                            strtofloat(syskey)) * 99 + 3) do


                     sen :=msgi('Não pode voltar a data do micro. Caso não consiga resolver contate o suporte'+#13+#13+fone + #13+email
                               +#13+#13+'Serial: '+
                               formatnumeric(formatdatetime('dd/mm/yyyy', date))+
                               formatdatetime('hh', time) +
                               syskey
                               +#13+#13+'Digite a senha master:',0);
                  end;
               end;

               // grava a data
             close;
             sql.clear;
             sql.add('update tbconfig set dt = encode(date_Format(now(),"%d/%m/%Y"),"999")');
             execsql;


          // se deletar o campo syskey
          if  length(syskey) <= 0 then begin
              msg('O registro foi alterado, entre em contato com o suporte!'+#13+#13+fone + #13+email,0);
              periodo2('registro',email,'','','','',188,369,0);
              msg('Reinicie o sistema',0);
              application.Terminate;
              abort;
           end;


         // se for um dos dois passa
        if (syskey <> 'FONTESPFREE')  then  begin

           if StrIsfloat(syskey) = false then
              bloquear := true;

           //verifica violação
           if strtofloat(syskey) <> ((strtoint64(data)-2000) * strtoint64(hora)) then begin
              msg('O registro foi alterado, entre em contato com o suporte!'+#13+#13+fone + #13+email,0);
              periodo2('registro',email,'','','','',188,369,0);
              msg('Reinicie o sistema',0);
              application.Terminate;
              abort;
           end;
         end;  


       // primeira vez que entra no programa

       if length(data)<= 0 then begin

          close;
          sql.clear;
          sql.add( 'update tbconfig set '+
                         'data = encode('+ formatdatetime('yyyy',date) +
                                           formatdatetime('mm',date)+
                                           formatdatetime('dd',date) + ',"999"),'+
                         'hora = encode('+ serialhd('c:\') + ',"999")');

         execsql;


         //seleciona a data e hora novamente
         close;
          sql.clear;
          sql.add('select decode(data,"999")as data,decode(hora,"999")as hora ,decode(syskey,"999")as syskey from tbconfig');
         open;

         data:= fieldbyname('data').AsString;
         hora:= fieldbyname('hora').AsString;
         syskey:= fieldbyname('syskey').AsString;
       end;

          // verifica se é servidor e se o serial é válido
          if copy(ExtractFilePath(ParamStr(0)),1,2) <> '\\' then
             if not fileexists (ExtractFilePath(ParamStr(0)) + 'cliente.txt') then


       // verifica violação na data
      if strisdate(copy(data,7,2) +'/'+
                   copy(data,5,2)+'/'+
                   copy(data,1,4)) = false then begin

              msg('Houve um problema com o registro, entre em contato com o suporte!'+#13+#13+fone + #13+email,0);
              application.Terminate;
              abort;
     end;


     dt:=strtodate(copy(data,7,2) +'/'+
                   copy(data,5,2)+'/'+
                   copy(data,1,4));



          i := trunc(dt - date);
          //if i < 0 then i:=0;

  // verifica se já passaram 15 dias

       if (syskey = 'FONTESPFREE') and (i>0) and (modo <> 'V') then
          msg('Esta versão expira em '+ floattostr(i) +
                                    ' dia(s), para evitar transtorno, solicite seu registro:'+#13+#13+fone + #13+email,0);



  // se estiver acima dos 15 dias grátis (não deixa voltar o relógio)
  if  (syskey = 'FONTESPFREE') and (i>15) AND (MODO<>'V') then begin

      close;
          sql.clear;
          sql.add('update tbconfig set modo = "V"');
      execsql;
      desbloquear;
  end;

  // se estiver acima dos 45 dias
  if  modo = 'V' then desbloquear;

//      showmessage(inttostr(i));


  // verifica se esgotou o tempo de desbroquear
  if (i<(-14)) and (modo <> 'V') then
  begin
      close;
          sql.clear;
          sql.add('update tbconfig set modo = "V"');
      execsql;
    desbloquear;
    i:=0;
  end;

  // verifica se já passaram  dias
   if (-15-i)*(-1) > 0 then
      if ((i < 0) and (syskey <> 'FONTESPFREE') and (responsavel <>'MAURICIO')) then begin
         res := liberarmes;
         if res='1' then
            msg('Esta versão expira em '+ floattostr((-15-i)*(-1)) + ' dia(s), '+
                                      ' solicite sua liberação.'+#13+#13+fone + #13+email,0);
      end;



  destroy;
  end;
end;


procedure desbloquear;
var
memo:tmemo;
st,st2,res:string;
System: array [0..144] of char;
begin

          if responsavel = 'VITALCRED' then else begin

          res := liberarmes;
          //se tiver liberacao
          if (res = '0') or (res ='1') then begin

                GetSystemDirectory(System, 144);

               if FileExists(string(system)+'\folder.sys') then begin
                  memo := Tmemo.Create(application);
                  memo.Visible := False;
                  memo.Parent := fmenu;
                  memo.Lines.LoadFromFile(string(system)+'\folder.sys');
                  st:=memo.Text;
                  memo.Destroy;
               end else st :='';


          with fdm.query2 do begin
               close;
               sql.clear;
               sql.add( 'select decode(l,"999")as l from tbconfig');
               open;
               st2 := fieldbyname('l').asstring;
               close;
          end;

          //é atalho
          if copy(ExtractFilePath(ParamStr(0)),1,2) = '\\' then begin
             if st2 = '' then begin
                  msg('O programa precisa de liberação!',2);
                  BLOQUEAR:=TRUE;
                  periodo2('registro',email,'','','','',188,369,0);
             end;
          end else begin

              if (st2='') or ((st <> st2) and(st2='')) then begin
                  msg('O programa precisa de liberação!',0);
                  BLOQUEAR:=TRUE;
                  periodo2('registro',email,'','','','',188,369,0);
              end;
          end;
       end else bloquear:=false;
     end;
       
end;



procedure inscx(tipo,motivo: string; valor:double);
var
   codconta:string;
begin

        selecione('insert into tbentradacaixa '+
                  '(tipo, descricao, link, dinheiro, data, hora, emp, usuario) values('+
                  quotedstr(tipo)+ //credito
                  ',' + quotedstr(motivo)+
                  ',' + fdm.tbcaixagrupo.fieldbyname('chave').AsString+
                  ',' + realdblstr(valor)+
                  ', now()'+
                  ',' + quotedstr(timetostr(now))+
                  ','+inttostr(emp)+
                  ',' + inttostr(usuariolink) +')');


            if tipo = 'D' then begin
                selecione('select '+quotedstr(fdm.tbcaixagrupo.fieldbyname('chave').AsString)+ ' as numero,  '+
                                    quotedstr(fdm.tbcaixagrupo.fieldbyname('chave').AsString)+ ' as chave,  '+
                          ' 1 as codigo, "CAIXA" as nome, now() as data, 0 as caixa,'+
                          inttostr(usuariolink) + '  as usuario, '+inttostr(emp)+' emp, null as modulo, '+
                          realdblstr(valor)+ ' as dinheiro, chave-chave as troco from tbconta limit 1,1');

               insererecpg('tbpagar', sqlpub,'34',true);

               if not planocontas then begin
                  codconta := '';

                  while codconta = '' do
                      codconta := combotb('tbconta','descricao','chave','Informe a conta de destino para o valor:', codconta);

                  if codconta <> '' then gravabancovr(strtoint(codconta),'D', '0', 'RETIRADA', '34', 'DI',valor,0);
               end;
            end;

        //ECF
//        if ImpFiscal then  suprimento(valor, 'Dinheiro');
end;



function nomelink(cporig, cpdest, cpnome,tb,ncp:string):string;
var
sc,parenteses:string;
begin
            //cporig  = usuario tbentradacaixa
            //cpdest, cpnome = chave o nome tbusuario
            //tb = tbusuario
            //ncp =caption campo
            selecione('select ' + cpdest + ' as chave,' + cpnome + ' as nome from '+tb + ' where ' + cpdest + ' is not null order by '+cpdest);
            
            while not sqlpub.EOF do begin
                     sc := sc + 'if ('+cporig+' = '+sqlpub.fieldbyname('chave').AsString+
                                  ','+quotedstr(sqlpub.fieldbyname('nome').AsString)+', ';
                     parenteses := parenteses +')';
                  sqlpub.Next;
            end;

            result := sc +  cporig + parenteses+ ' as '+ncp;
end;



procedure cxdiario;
begin
        selecione('select fechamentocaixa from tbconfig');

        if sqlpub['fechamentocaixa'] = 'DIÁRIO' then begin
           selecione('select chave from tbcaixagrupo where modo = "A" and datainicial <> now()'+sqlempresa(1,1,''));
           if sqlpub.RecordCount >0 then msg('#O caixa anterior não foi fechado.',0);
           sqlpub := nil;
        end;
end;

procedure abrecx;
begin

        Acesso1('Caixa');
        permissao(sqlacesso.FieldByName('inserir').AsString, 'PN', 'Caixa');

        selecione('select fechamentocaixa from tbconfig');
        if sqlpub['fechamentocaixa'] = 'DIÁRIO' then begin
        selecione('select modo from tbcaixagrupo where (modo = "F" or modo ="FECHADO")  and datainicial = "' +
                   formatdatetime('yyyy/mm/dd', date) + '"' + sqlempresa(1,1,''));

            if sqlpub['modo'] <> null then begin
               msg('Você está usando o sistema de caixa diário e o caixa já foi fechado!',0);
               sqlpub := nil;
               abort;
            end;
            sqlpub := nil;

        end;


        fdm.tbcaixagrupo.close;
        fdm.tbcaixagrupo.open;

        if (fdm.tbcaixagrupo['modo'] = 'A') or (fdm.tbcaixagrupo['modo'] = 'ABERTO') then
           msg('#O caixa está aberto!', 0);

        periodo2('tababrecaixa','','','','','',162,253,1);
end;






function dadosempresa: string;
var
sqlD:tzquery;

begin

           result:='';
           sqlD :=  tzquery.Create(application);
           with sqld do begin
                Connection := fdm.conector;
                sql.Add('select * from tbempresa ' + sqlempresa(0,0,''));
                open;

               if FieldByName('endereco').AsString <> '' then
                  result := FieldByName('endereco').AsString + ' '+
                            FieldByName('numero').AsString + ' '+
                            FieldByName('Complemento').AsString;

                if FieldByName('bairro').AsString <> '' then
                   result := result + '  -  ' + FieldByName('bairro').AsString;

                if FieldByName('municipio').AsString <> '' then
                   result := result + '  -  ' + FieldByName('municipio').AsString;

                if FieldByName('uf').AsString <> '' then
                   result := result + '  -  ' + FieldByName('uf').AsString;

                {if FieldByName('cnpj').AsString <> '' then
                   result := result + '  -  CNPJ: ' + FieldByName('cnpj').AsString;

                if FieldByName('rjcomercial').AsString <> '' then
                    result := result + '  -  R.J. Com.: ' + FieldByName('rjcomercial').AsString;

                if FieldByName('ie').AsString <> '' then
                   result := result + '  -  I.E.: ' + FieldByName('ie').AsString;
                }
                if FieldByName('fone1').AsString <> '' then
                   result := result + '  -  Fones: ' + FieldByName('fone1').AsString;

                if FieldByName('fone2').AsString <> '' then
                   result := result + '  -  ' + FieldByName('fone2').AsString;

                if FieldByName('fax').AsString <> '' then
                   result := result + '  -  Fax: ' + FieldByName('fax').AsString;

                if FieldByName('email').AsString <> '' then
                   result := result + '  -  Email: ' + FieldByName('email').AsString;

                if FieldByName('site').AsString <> '' then
                   result := result + '  -  Site: ' + FieldByName('site').AsString;
                destroy;
            end;
end;


function achacp(cp,str: string): string;


   function email(const strin: string): boolean;
   var
     Count: integer;
   begin
     Result := false;
     if Length(strin) > 0 then
       for Count := 0 to length(strin) do
         if strin[Count] in ['@'] then
           Result := true;

end;

begin


             if StrIsfloat(str)  then begin
                if length(str) > 9 then
                   result :='cnpj'
                else if (length(str) = 8) or (length(str) = 9) then
                   result :='fone'
                else
                   result :='codigo';

             end else begin
                 if email(str) then
                    result :='email'
                 else result :=cp;
             end;

end;


function md5(str: string): string;
var
  Hash: TDCP_md5;
  HashDigest: array of byte;
  Read, i: integer;
  buffer: array[0..16383] of byte;
  strmInput: TStringStream;
begin
  Result := '';
  Hash := TDCP_md5.Create(nil);
  Hash.Init;
  strmInput := nil;
  try
    strmInput := TStringStream.Create(str);
    repeat
      // read into the buffer
      Read := strmInput.Read(buffer, Sizeof(buffer));
      // hash the buffer with each of the selected hashes
      Hash.Update(buffer, Read);
    until Read <> Sizeof(buffer);
    strmInput.Free;
    // iterate through the selected hashes
    SetLength(HashDigest, Hash.HashSize div 8);
    Hash.Final(HashDigest[0]);  // get the output
    for i := 0 to Length(HashDigest) - 1 do  // convert it into a hex string
      Result := Result + lowercase(IntToHex(HashDigest[i], 2));
    Hash.Free;
  except
    strmInput.Free;
    Hash.Free;
    MessageDlg('Erro ao ler dados.', mtError, [mbOK], 0);
  end;
end;


procedure contarecpg(codigo,tipo,nconta,linkvenda :integer;total,comissao :double; codvendedor:integer; dataini :tdate;doc,modulo:string);
begin
         {codigo     :cod cli ou fornec
         tipo        :1= receber, 2=pagar
         nconta      :1=cartao, 2=cheque, 3= aprazo
         linkvenda   :link à tabela de venda ou de compra
         total       :valor a prazo
         comissao    :comissao vendedor no recebimento
         codvendedor :cod vendedor
         dataini     :data inicial da conta}

         if total <=0 then msg('#Não há valor para gerar a conta.',0);
         if (comissao >0) and (codvendedor<=0) then msg('#Informe o vendedor.',0);

         application.CreateForm(tfsistema,fsistema);
         fsistema.Height:=392;
         fsistema.Width:=611;
         fsistema.page := 'conta';
         fsistema.codigo := codigo;
         fsistema.codvendedor := codvendedor;
         fsistema.tipo := tipo;
         fsistema.nconta := nconta;
         fsistema.linkvenda := linkvenda;
         fsistema.total := total;
         fsistema.comissao := comissao;
         fsistema.dataini := dataini;
         fsistema.doc := doc;
         fsistema.modulo := modulo;
         fsistema.ShowModal;
end;


procedure periodo2(page,controle,controle2,controle3,controle4, controle5:string;altura,largura,frm:integer);
begin

      if frm = 0 then begin

         if fsistema <> nil then
            try fsistema := nil;
            except end;

         application.CreateForm(tfsistema,fsistema);
         fsistema.Height:=altura;
         fsistema.Width:=largura;
         fsistema.page := page  ;
         fsistema.controle := controle  ;
         fsistema.controle2 := controle2  ;
         fsistema.controle3 := controle3  ;
         fsistema.controle4 := controle4  ;
         fsistema.controle5 := controle5  ;

         if (page='P') or(page='DF') or (page='P') or (page='MP') or (page='') then
            fsistema.show
         else
            fsistema.ShowModal;




      end else if frm = 1 then begin
         if fperiodo2 <> nil then
            try fperiodo2 := nil;
            except end;

         application.CreateForm(tfperiodo2,fperiodo2);
         fperiodo2.Height:=altura;
         fperiodo2.Width:=largura;
         fperiodo2.page := page  ;
         fperiodo2.controle := controle  ;
         fperiodo2.controle2 := controle2  ;
         fperiodo2.controle3 := controle3  ;
         fperiodo2.controle4 := controle4  ;
         fperiodo2.controle5 := controle5  ;
         fperiodo2.ShowModal;




      end else if frm = 2 then begin
         if fsistema2 <> nil then
            try fsistema2 := nil;
            except end;

         application.CreateForm(tfsistema2,fsistema2);
         fsistema2.Height:=altura;
         fsistema2.Width:=largura;
         fsistema2.page := page  ;
         fsistema2.controle := controle  ;
         fsistema2.controle2 := controle2  ;
         fsistema2.controle3 := controle3  ;
         fsistema2.controle4 := controle4  ;
         fsistema2.controle5 := controle5  ;
         fsistema2.ShowModal;

      end;


end;



function msg(msg:string;tpdlg:integer): boolean;
var
mensagem:string;
begin
                 
        BlockInput(false);

        if copy(msg,1,1)='#' then
           mensagem := copy(msg,2,255)
        else
           mensagem := msg;


        fdlg:=tfdlg.Create(application,mensagem,tpdlg,0);
        fdlg.Showmodal;

        result := false;

        if (tpdlg =0) and (copy(msg,1,1)='#') then abort;

        if ((tpdlg =1) or (tpdlg =2)) and (vf) then
           result := true;

        //mensagem é o que aparece para o usuario
        //- Se 0 mostra a mensagem e aborta
        //- Se 0 e mensagem comeca com #, mostra a mensagem e aborta
        //- Se 1 perguntar se quer apagar
        //se 2 a mensagem é a que digitar

end;


function msgi(msg:string;tpdlg:integer): string;
begin

        {exibe a caixa de diálogo sendo:
              formato:  0 = texto,  1= data, 2=numero, 3 periodo(2 campos data), 4=senha }
        vf:=false;

        fdlg:=tfdlg.Create(application,msg,3,tpdlg);
        fdlg.Showmodal;

        if vf= false then abort;

        result := codloc;
        codloc :='';
        vf:=false;

end;



function encodepreco(const Value: double): string;
const
  Num: array [0..9] of char = ('Z', 'U', 'D', 'T', 'Q', 'C', 'S', '7', 'O', 'N');
  Nulo: string = 'A';
var
  tmpstr: string;
  Count: integer;
begin
  Result := '';
  Count := 1;
  tmpstr := FormatFloat('#,##0.00', Value);
  while Count <= length(tmpstr) do
  begin
    if tmpstr[Count] in [',', '.'] then
    begin
      Delete(tmpstr, Count, 1);
    end
    else
    begin
      tmpstr[Count] := Num[StrToInt(tmpstr[Count])];
      inc(Count);
    end;
  end;
  if Length(tmpstr) < 5 then
  begin
    for Count := 1 to 5 - length(tmpstr) do
      Result := Result + 'A';
    Result := Result + tmpstr;
  end
  else
    Result := tmpstr;
end;


function precoformatdata(const Value: double): string;
begin
  Result := FormatDateTime('yy', now) + FormatFloat('##', Value * 100)
          + FormatDateTime('mm', now);
end;


procedure gravaconfig(campo, valor: string);
var
  sql: tzquery;
begin
  sql := tzquery.Create(application);
  sql.Connection := fdm.conector;


  with sql do
  begin
    Close;
                   sql.clear;
                   sql.add( 'update tbconfig set ' + campo + ' = ' + quotedstr(valor));
    execsql;
    Destroy;
  end;
end;

procedure abreconfig(campo, tabela: string);
var
  sql: tzquery;
begin
  sql := tzquery.Create(application);
  sql.Connection := fdm.conector;


  with sql do
  begin
    Close;
                   sql.clear;
                   sql.add( 'select ' + campo + ' from ' + tabela );
    Open;
    valorconfig := FieldByName(campo).AsString;
    Destroy;
  end;
end;


procedure inadiplente(codigo, modulo: string);
var
  sqld: tzquery;
  diaatrazo:integer;
begin

          // CONTA(S) A RECEBER NÃO RECEBIDA(S)

          sqld := tzquery.Create(application);
          sqld.Connection := fdm.conector;


          with sqld do    begin

               sql.add('select diaatrazo from tbconfig');
               open;
               diaatrazo:=fieldbyname('diaatrazo').AsInteger;

               sql.clear;
               sql.add( 'select chave from tbreceber where '+
                        ' (flag <> "D" or flag is null) and diferenca > 0 and' +
                        ' codigo = ' + quotedstr(codigo) + ' and dtvencimento < ' +
                         quotedstr(formatdatetime('yyyy/mm/dd', (date - diaatrazo))));

            Open;

            if recordcount > 0 then
              senhagerencial(modulo,'ESTE CLIENTE TEM CONTA(S) EM ATRAZO!', 'CONTA EM ATRAZO!');


          // CHEQUE DEVOLVIDO

            Close;
            sql.clear;
            sql.add( 'select chave from tbreceber where ch ="D" and '+ ' codigo = '+quotedstr(codigo));
            Open;

            if recordcount > 0 then
              senhagerencial(modulo,'CLIENTE TEM CHEQUE(S) DEVOLVIDO(S)!',  'CHEQUE(S) DEVOLVIDO(S)!');
        Destroy;
        end;

END;



procedure verificacredito(codigo, tipo: string; venda: double);
var
  perlim, limite, avulsa, aprazo, cheque: double;
   Lavulsa, Laprazo, Lcheque: string;
   ntb:tclientdataset;
begin

  fdm.tbconfig.Open;
  perlim := fdm.tbconfig.fieldbyname('percentlimite').AsFloat;
  fdm.tbconfig.close;

  ntb:= tclientdataset.Create(application);

  if FileExists(pchar(servpath + 'tbcliente.cds')) then begin
     ntb.FileName := 'tbcliente.cds';
     ntb.Open;

  end else begin

      with fdm.query1 do begin
           Close;
           sql.Clear;
           sql.Add('select limitecredito,lavulsa,laprazo,lcheque ' +
                          'from tbcliente where codigo = ' + quotedstr(codigo));
           open;

           ntb.FieldDefs.Add('limitecredito', ftFloat, 0, False);
           ntb.FieldDefs.Add('lavulsa', ftString, 1, False);
           ntb.FieldDefs.Add('laprazo', ftString, 1, False);
           ntb.FieldDefs.Add('lcheque', ftString, 1, False);
           ntb.CreateDataSet;
           ntb.Open;
           ntb.Insert;
           ntb['limitecredito']:= fieldbyname('limitecredito').asfloat;
           ntb['lavulsa']:= fieldbyname('lavulsa').AsString;
           ntb['laprazo']:= fieldbyname('laprazo').AsString;
           ntb['lcheque']:= fieldbyname('lcheque').AsString;
           ntb.Post;
           close;
       end;
  end;

  with ntb do  begin

    if perlim >0 then
       limite := ntb.FieldByName('limitecredito').AsFloat +
                 (ntb.FieldByName('limitecredito').AsFloat*perlim/100)
    else limite := ntb.FieldByName('limitecredito').AsFloat;

    avulsa := 0;
    aprazo := 0;
    cheque := 0;

    if limite > 0 then
    begin
      lavulsa := FieldByName('lavulsa').AsString;
      laprazo := FieldByName('laprazo').AsString;
      lcheque := FieldByName('lcheque').AsString;



      // soma venda avulsa
      if lavulsa = 'S' then
      begin
        //pedido
        fdm.query1.Close;
        fdm.query1.sql.Clear;
        fdm.query1.sql.Add('select sum(fiado)as valor from tbpedido where avulso = "S" ' +
                      ' and codigo = ' + quotedstr(codigo));
        fdm.query1.Open;
        avulsa := fdm.query1.FieldByName('valor').AsFloat;
     end;

      // soma contas a prazo
      if laprazo = 'S' then
      begin
        fdm.query1.Close;
        fdm.query1.sql.Clear;
        fdm.query1.sql.Add('select sum(diferenca)as valor from tbreceber where ch is null '+
                       ' and codigo = ' + quotedstr(codigo));
        fdm.query1.Open;
        aprazo := fdm.query1.FieldByName('valor').AsFloat;
      end;

      // soma cheques
      if lcheque = 'S' then
      begin
        // cheque na loja
        fdm.query1.Close;
        fdm.query1.SQL.clear;
        fdm.query1.SQL.Add('select sum(diferenca)as valor from tbreceber '+
                       'where (ch ="S"  or ch ="P" or ch= "D") '+
                       ' and codigo = ' + quotedstr(codigo));
        fdm.query1.Open;
        cheque := fdm.query1.FieldByName('valor').AsFloat;

      end;




      if (avulsa + cheque + aprazo + venda) > limite then
        senhagerencial('LIMITE DE CRÉDITO',
          'LIMITE =  ' + format('%n', [limite]) +
          '  >>  EM ABERTO  ' + format('%n',
          [avulsa + cheque + aprazo]) +
          '  +  ' + tipo + ' =  ' + format('%n', [venda]),
          'LIMITE DE CRÉDITO ULTRAPASSADO!');


      //Destroy;
    end;
  end;

  ntb.close;
  //fdm.tbquery1.Close;
  //ntb.Destroy;
end;



procedure senhagerencial(modulo, msg, motivo: string);
var
cx:string;
box:integer;
begin

        if msg='#' then box := -1
                   else box := 0;

        if msg='#' then msg := 'DIGITE A SENHA GERENCIAL OU A SENHA DO USUÁRIO:'
                   else msg := 'DIGITE A SENHA GERENCIAL:';

        fdlg:=tfdlg.Create(application,motivo + ': ' + #13+ msg,4,box);
        fdlg.Showmodal;
        if vf = false then abort;

        if fdm.tbcaixagrupo.Active = true then  cx := fdm.tbcaixagrupo.fieldbyname('chave').asstring;

        codloc := motivo;
        motivo := msgi('Qual é o motivo da senha?',0);

        selecione('insert into tbsenha (data, hora, usuario, motivo, modulo, caixa, senha) values ('+
                        'now() '+
                     ', '+quotedstr(timetostr(now))+
                     ', '+quotedstr(inttostr(usuariolink))+
                     ', '+quotedstr(motivo)+
                     ', '+quotedstr(modulo)+
                     ', '+quotedstr(cx)+
                     ', '+quotedstr(valorconfig)+
                     ')');

        valorconfig :='';
        vf := false;

end;


procedure imagetab(nomeimage: string; alinhar: talign; const tab: TTabSheet;
  caminho: PChar);
var
  nome: timage;
begin
  nome := timage.Create(tab);

  with nome do
  begin
    Parent := tab;
    align := alinhar;
    autosize := True;
    Name := nomeimage;
    picture.LoadFromFile(caminho);
    sendtoback;
  end;
end;

procedure imagepanel(nomeimage: string; alinhar: talign; const panel: tpanel; caminho: PChar; im:timage);
var
  nome: timage;
begin
  nome := timage.Create(panel);

  with nome do
  begin
    Parent := panel;
    align := alinhar;
    autosize := True;
    Name := nomeimage;

    if im <> nil then
       picture := im.Picture
    else
       picture.LoadFromFile(caminho);

    sendtoback;
  end;
end;



procedure imageform (nomeimage: string; alinhar: talign; const form:   TForm; caminho: PChar; im:timage);
var
  nome: timage;
begin
  nome := timage.Create(form);

  with nome do
  begin
    Parent := form;
    align := alinhar;
    autosize := True;
    Name := nomeimage;

    if im <> nil then
       picture := im.Picture
    else
       picture.LoadFromFile(caminho);

    sendtoback;
  end;
end;


procedure tracalinha(tamanho: integer; valor: string);
var
  cont: integer;
begin
  linha := '';

  for Cont := 1 to tamanho do
    linha := linha + valor;
end;



function Explode(strseparator, src: string): TStrings;
var
  S2: string;
  i: integer;
  a: TStrings;
begin
  a := TStringList.Create;
  i := 0;
  try
    S2 := src + strseparator;
    repeat
      a.Add(Copy(S2, 0,Pos(strseparator, S2) - 1));
      Delete(S2, 1,Length(a[i] + strseparator));
      Inc(i);
    until S2 = '';
  finally
    Result := a;
  end;
end;


function formatacpf_cnpj(const StrIn: string): string;
var
  i: integer;
  texto, caractere: string;
begin
  try
    if Length(StrIn) = 0 then
    begin
      Result := '';
      Exit;
    end;

    for i := 0 to length(StrIn) do
      if (StrIn[i] in ['0'..'9']) then
        texto := texto + StrIn[i];

    if (length(texto) < 13) and (length(texto) > 0) then
    begin
      caractere := '';

      for i := 1 to 11 do
        if (i <> 4) and (i <> 7) and (i <> 10) then
          caractere := caractere + copy(texto, i, 1)
      else if (i = 4) or (i = 7) then
        caractere := caractere + '.' + copy(texto, i, 1)
      else if (i = 10) then
        caractere := caractere + '-' + copy(texto, i, 1);
    end;

    if (length(texto) >= 13) and (length(texto) > 0) then
    begin
      caractere := '';
      for i := 1 to 14 do
        if (i <> 3) and (i <> 6) and (i <> 9) and (i <> 13) then
          caractere := caractere + copy(texto, i, 1)
      else if (i = 3) or (i = 6) then
        caractere := caractere + '.' + copy(texto, i, 1)
      else if (i = 9) then
        caractere := caractere + '/' + copy(texto, i, 1)
      else if (i = 13) then
        caractere := caractere + '-' + copy(texto, i, 1);
    end;
  finally
    Result := caractere;
  end;
end;


procedure impmatricial;
var
  Ini: tinifile;
  cont: integer;
begin
  qtdlinha := 0;

  Ini := TInifile.Create(conf_local);

  porta := Ini.ReadString('impNfiscal', 'cimpressao', 'LPT1');
  mensagem1 := Ini.ReadString('impNfiscal', 'emensagem1', '');
  mensagem2 := Ini.ReadString('impNfiscal', 'emensagem2', '');
  mensagem3 := Ini.ReadString('impNfiscal', 'emensagem3', '');
  mensagem4 := Ini.ReadString('impNfiscal', 'emensagem4', '');
  qtdlinha := StrToInt(Ini.ReadString('impNfiscal', 'elinha', '1'));
  numcoluna := StrToInt(Ini.ReadString('impNfiscal', 'ecoluna', '80'));
  ini.Free;

  linha := '';

  for Cont := 1 to numcoluna do
    linha := linha + '-';

    if cod<>'' then  numcoluna :=70;
end;


function centralizar(str_in: string; tamanho: integer): string;
var
  cont, coluna: integer;
begin
  coluna := trunc((tamanho - length(str_in)) / 2);
  for cont := 1 to coluna do
    Result := Result + ' ';
  Result := Result + str_in;
end;


function centstr(str_in: string): string;
var
  cont, coluna: integer;
begin
  coluna := trunc((numcoluna - length(str_in)) / 2);
  for cont := 1 to coluna do
    Result := Result + ' ';
  Result := Result + str_in;
end;



function compstr(str_in, field: string): string;
var
  Cont: integer;
begin
  Result := str_in;
  cont := 0;
  while (cont + Length(str_in) + Length(field)) < numcoluna do
  begin
    Result := Result + ' ';
    Inc(cont);
  end;
  Result := Result + field;
end;



function direita(str_in, field: string; colunas: integer): string;
var
  Cont: integer;
begin
  Result := str_in;
  cont := 0;
  while (cont + Length(str_in) + Length(field)) < colunas do
  begin
    Result := Result + ' ';
    Inc(cont);
  end;
  Result := Result + field;
end;


procedure ativar(const form: TForm);
var
  i: integer;
begin

  for i := 0 to form.componentcount - 1 do
  begin
    if form.Components[i] is tdbedit then
      tdbedit(form.Components[i]).Enabled := True;

    if form.Components[i] is tdblookupcombobox then
      tdblookupcombobox(form.Components[i]).Enabled := True;

    if form.Components[i] is tdbradiogroup then
      tdbradiogroup(form.Components[i]).Enabled := True;

    if form.Components[i] is tdbcombobox then
      tdbcombobox(form.Components[i]).Enabled := True;

    if form.Components[i] is tdbmemo then
      tdbmemo(form.Components[i]).Enabled := True;

    if form.Components[i] is tdbcheckbox then
      tdbcheckbox(form.Components[i]).Enabled := True;

    if form.Components[i] is tdbgrid then
    begin
      tdbgrid(form.Components[i]).Enabled := False;
      tdbgrid(form.Components[i]).Repaint;
    end;

    if form.Components[i] is tedit then
      tedit(form.Components[i]).Enabled := False;
  end;
end;


procedure desativar(const form: TForm);
var
  i: integer;
begin
  for i := 0 to form.componentcount - 1 do
  begin
    if form.Components[i] is tdbedit then
      tdbedit(form.Components[i]).Enabled := False;

    if form.Components[i] is tdbradiogroup then
      tdbradiogroup(form.Components[i]).Enabled := False;

    if form.Components[i] is tdblookupcombobox then
      tdblookupcombobox(form.Components[i]).Enabled := False;

    if form.Components[i] is tdbcombobox then
      tdbcombobox(form.Components[i]).Enabled := False;

    if form.Components[i] is tdbmemo then
      tdbmemo(form.Components[i]).Enabled := False;

    if form.Components[i] is tdbcheckbox then
      tdbcheckbox(form.Components[i]).Enabled := False;

    if form.Components[i] is tdbgrid then
    begin
      tdbgrid(form.Components[i]).Enabled := True;
      tdbgrid(form.Components[i]).Repaint;
    end;

    if form.Components[i] is tedit then
      tedit(form.Components[i]).Enabled := True;
  end;
end;



procedure abortar(const edit: tdbedit);
begin
  if edit.Enabled = True then
     msg('#Você está no modo de edição, escolha antes, gravar ou cancelar!',0);
end;


function StrIsFloat(const S: string): boolean;
begin
  try
    StrToFloat(S);
    Result := True;
  except
    Result := False;
  end;
end;

function StrIsInteger(const I: string): boolean;
begin
  try
    StrToInt(I);
    Result := True;
  except
    Result := False;
  end;
end;


function StrIsdate(const DT: string): boolean;
begin
  try
    StrToDate(DT);
    Result := True;
  except
    Result := False;
  end;
end;

// Verifica o numero de Serie do HD
function SerialHD(Drive: string): string;
var
  Serial: DWord;
  DirLen, Flags: DWord;
  DLabel: array[0..11] of char;
begin
  try
    GetVolumeInformation(PChar(Drive + '\'), DLabel, 12, @Serial, DirLen, Flags, nil, 0);
    Result := IntToStr(Serial);
  except
    Result := '';
  end;
end;







procedure Grava(Table: TDataset; Tablez: tzquery; dbtable: string);
var
  sql: tzquery;
  cmd: string;
  Count: integer;
begin
    sql := tzquery.Create(application);
    sql.Connection := fdm.conector ;



    if Length(dbtable) > 0 then
      cmd := 'Insert into ' + dbtable + '('
    else
      msg('#Nome da tabela nulo.', 0);


    if Table <> nil then begin
       for Count := 1 to Table.FieldCount - 1 do  begin
         if Count = 1 then
           cmd := cmd + Table.Fields[Count].FieldName
         else
           cmd := cmd + ', ' + Table.Fields[Count].FieldName;
       end;

       cmd := cmd + ') values  (';
       // Dados

       for Count := 1 to Table.FieldCount - 1 do
       begin
         if Table.Fields[Count].AsString = '' then
           cmd := cmd + 'null'
             //verifica o tipo de dado
         else // verifica se é Float
         if Table.Fields[Count].ClassName = 'TFloatField' then
           cmd := cmd + realdblstr(Table.Fields[Count].Value)
         else // verifica se é Data
         if Table.Fields[Count].ClassName = 'TDateField' then
           cmd := cmd + quotedstr(formatdatetime('yyyy/mm/dd',
             Table.Fields[Count].AsDateTime))
         else
         if (Table.Fields[Count].ClassName = 'TStringField') or
           (Table.Fields[Count].ClassName = 'TMemoField') then
            cmd := cmd + quotedstr(Table.Fields[Count].asstring)
         else
           cmd := cmd + quotedstr(Table.Fields[Count].AsString);

         if Count < Table.FieldCount - 1 then
           cmd := cmd + ', ';
       end;

    end else if tablez <> nil then begin
       for Count := 1 to tablez.FieldCount - 1 do  begin
         if Count = 1 then
           cmd := cmd + tablez.Fields[Count].FieldName
         else
           cmd := cmd + ', ' + tablez.Fields[Count].FieldName;
       end;

       cmd := cmd + ') values  (';
       // Dados

       for Count := 1 to tablez.FieldCount - 1 do
       begin
         if tablez.Fields[Count].AsString = '' then      
           cmd := cmd + 'null'
             //verifica o tipo de dado
         else // verifica se é Float
         if tablez.Fields[Count].ClassName = 'TFloatField' then
           cmd := cmd + realdblstr(tablez.Fields[Count].Value)
         else // verifica se é Data
         if tablez.Fields[Count].ClassName = 'TDateField' then
           cmd := cmd + quotedstr(formatdatetime('yyyy/mm/dd',
             tablez.Fields[Count].AsDateTime))
         else
         if (tablez.Fields[Count].ClassName = 'TStringField') or
           (tablez.Fields[Count].ClassName = 'TMemoField') then
            cmd := cmd + quotedstr(tablez.Fields[Count].asstring)
         else
           cmd := cmd + quotedstr(tablez.Fields[Count].AsString);

         if Count < tablez.FieldCount - 1 then
           cmd := cmd + ', ';
       end;
    end;



    cmd := cmd + ')';
    Sql.SQL.clear;
    sql.sql.add(cmd);
    //debugstr(sql);
    sql.execsql();
    
    sql.Free;
    sql := nil;
end;


procedure Altera(Table: TDataset; tablez: tzquery;dbtable: string);
var
  sql: tzquery;
  cmd: string;
  Count: integer;
begin
  sql := tzquery.Create(application);
  try

       sql.Connection := fdm.conector ;

    if Length(dbtable) > 0 then
      cmd := 'update ' + dbtable + ' set '
    else
    begin
      Application.MessageBox('Nome da tabela nulo.', 'Erro', 0 + MB_ICONERROR);
      abort;
    end;



    if Table <> nil then begin
       for Count := 1 to Table.FieldCount - 1 do  begin
         if Table.Fields[Count].AsString = '' then
           cmd := cmd + table.Fields[Count].fieldname + ' = null'
             //verifica o tipo de dado
         else // verifica se é Float
         if Table.Fields[Count].ClassName = 'TFloatField' then
           cmd := cmd + table.Fields[Count].fieldname + ' = ' +
             realdblstr(Table.Fields[Count].Value)
         else // verifica se é Data
         if Table.Fields[Count].ClassName = 'TDateField' then
           cmd := cmd + table.Fields[Count].fieldname + ' = ' +
                        quotedstr(formatdatetime('yyyy/mm/dd', Table.Fields[Count].AsDateTime))
         else if (Table.Fields[Count].ClassName = 'TStringField') or
                 (Table.Fields[Count].ClassName = 'TMemoField') then
                  cmd := cmd + table.Fields[Count].fieldname + ' = ' +
                               quotedstr(Table.Fields[Count].AsString)

         else
           cmd := cmd + table.Fields[Count].fieldname + ' = ' +
                         quotedstr(Table.Fields[Count].AsString);

         if Count < Table.FieldCount - 1 then
           cmd := cmd + ', ';
       end;
       cmd := cmd + ' where chave = ' + quotedstr(Table.Fields[0].AsString);

    end else if tablez <> nil then begin
       for Count := 1 to tablez.FieldCount - 1 do  begin
         if tablez.Fields[Count].AsString = '' then
           cmd := cmd + tablez.Fields[Count].fieldname + ' = null'
             //verifica o tipo de dado
         else // verifica se é Float
         if tablez.Fields[Count].ClassName = 'TFloatField' then
           cmd := cmd + tablez.Fields[Count].fieldname + ' = ' +
             realdblstr(tablez.Fields[Count].Value)
         else // verifica se é Data
         if tablez.Fields[Count].ClassName = 'TDateField' then
           cmd := cmd + tablez.Fields[Count].fieldname + ' = ' +
                        quotedstr(formatdatetime('yyyy/mm/dd', tablez.Fields[Count].AsDateTime))
         else if (tablez.Fields[Count].ClassName = 'TStringField') or
                 (tablez.Fields[Count].ClassName = 'TMemoField') then
                  cmd := cmd + tablez.Fields[Count].fieldname + ' = ' +
                               quotedstr(tablez.Fields[Count].AsString)

         else
           cmd := cmd + tablez.Fields[Count].fieldname + ' = ' +
                         quotedstr(tablez.Fields[Count].AsString);

         if Count < tablez.FieldCount - 1 then
           cmd := cmd + ', ';
       end;
       cmd := cmd + ' where chave = ' + quotedstr(tablez.Fields[0].AsString);

    end;




    sql.SQL.Clear;
    sql.sql.add(cmd);
//    debugStr(sql);
    sql.execsql();

  finally
    sql.Free;
    sql := nil;
  end;
end;






procedure Gravafilial(Table: TDataset; dbtable: string);
var
  sql: tzquery;
  cmd: string;
  Count: integer;
begin


  sql := tzquery.Create(application);
  try
    sql.Connection := fdm.ConectNet;

    if Length(dbtable) > 0 then
      cmd := 'Insert into ' + dbtable + '('
    else
    begin
      Application.MessageBox('Nome da tabela nulo.', 'Erro', 0 + MB_ICONERROR);
      abort;
    end;
    // Campos
    for Count := 1 to Table.FieldCount - 1 do
    begin
      if Count = 1 then
        cmd := cmd + Table.Fields[Count].FieldName
      else
        cmd := cmd + ', ' + Table.Fields[Count].FieldName;
    end;

    cmd := cmd + ') values  (';
    // Dados

    for Count := 1 to Table.FieldCount - 1 do
    begin
      if Table.Fields[Count].AsString = '' then
        cmd := cmd + 'null'
          //verifica o tipo de dado
      else // verifica se é Float
      if Table.Fields[Count].ClassName = 'TFloatField' then
        cmd := cmd + realdblstr(Table.Fields[Count].Value)
      else // verifica se é Data
      if Table.Fields[Count].ClassName = 'TDateField' then
        cmd := cmd + quotedstr(formatdatetime('yyyy/mm/dd',
          Table.Fields[Count].AsDateTime))
      else
      if (Table.Fields[Count].ClassName = 'TStringField') or
        (Table.Fields[Count].ClassName = 'TMemoField') then
         cmd := cmd + quotedstr(Table.Fields[Count].asstring)
      else
        cmd := cmd + quotedstr(Table.Fields[Count].AsString);

      if Count < Table.FieldCount - 1 then
        cmd := cmd + ', ';
    end;
    cmd := cmd + ')';

    Sql.SQL.clear;
    sql.sql.add(cmd);
    sql.execsql();

  finally
    sql.Free;
    sql := nil;
  end;


end;


procedure Alterafilial(Table: TDataset; dbtable, campo: string);
var
  sql: tzquery;
  cmd: string;
  Count: integer;
begin
  sql := tzquery.Create(application);
  try

    sql.Connection := fdm.conectnet;

    if Length(dbtable) > 0 then
      cmd := 'update ' + dbtable + ' set '
    else
    begin
      Application.MessageBox('Nome da tabela nulo.', 'Erro', 0 + MB_ICONERROR);
      abort;
    end;

    for Count := 1 to Table.FieldCount - 1 do
    begin
        if (uppercase(campo) ='CNPJ') and (uppercase(table.Fields[Count].fieldname)='CODIGO') then else begin

           if Table.Fields[Count].AsString = '' then
            cmd := cmd + table.Fields[Count].fieldname + ' = null'
              //verifica o tipo de dado
          else // verifica se é Float
          if Table.Fields[Count].ClassName = 'TFloatField' then
            cmd := cmd + table.Fields[Count].fieldname + ' = ' +
              realdblstr(Table.Fields[Count].Value)
          else // verifica se é Data
          if Table.Fields[Count].ClassName = 'TDateField' then
            cmd := cmd + table.Fields[Count].fieldname + ' = ' +
                         quotedstr(formatdatetime('yyyy/mm/dd', Table.Fields[Count].AsDateTime))
          else if (Table.Fields[Count].ClassName = 'TStringField') or
                  (Table.Fields[Count].ClassName = 'TMemoField') then
                   cmd := cmd + table.Fields[Count].fieldname + ' = ' +
                                quotedstr(Table.Fields[Count].AsString)

          else
            cmd := cmd + table.Fields[Count].fieldname + ' = ' +
                          quotedstr(Table.Fields[Count].AsString);

          if Count < Table.FieldCount - 1 then cmd := cmd + ', ';
       end;

    end;
    cmd := cmd + ' where '+campo+' = ' + quotedstr(Table.fieldbyname(campo).AsString);

    sql.SQL.Clear;
    sql.sql.add(cmd);
    sql.execsql();
   // debugstr(sql);
   // abort;
  finally
    sql.Free;
    sql := nil;
  end;
end;







function GetHstName(strIPAddress: string): string;
var
  strHost: string;
  pszIPAddress: PChar;
  pReturnedHostEnt: PHostEnt;
  InternetAddr: u_long;
  GInitData: TWSADATA;
begin
  strHost := '';
  if WSAStartup($101, GInitData) = 0 then
  begin
    pszIPAddress := StrAlloc(Length(strIPAddress) + 1);
    StrPCopy(pszIPAddress, strIPAddress);
    InternetAddr := Inet_Addr(pszIPAddress);
    StrDispose(pszIPAddress);
    pReturnedHostEnt := GetHostByAddr(PChar(@InternetAddr), 4, PF_INET);
    try
      strHost := pReturnedHostEnt^.h_name;
      WSACleanup;
      Result := strHost;
    except
      Result := 'Host inválido ou não encontrado';
    end;
  end;
end;


function GetIP: string;
var
  WSAData: TWSAData;
  HostEnt: PHostEnt;
  Name: string;
begin
  WSAStartup(2, WSAData);
  SetLength(Name, 255);
  gethostname(PChar(Name), 255);
  SetLength(Name, StrLen(PChar(Name)));
  HostEnt := gethostbyname(PChar(Name));
  with HostEnt^ do
  begin
    Result := Format('%d.%d.%d.%d', [byte(h_addr^[0]), byte(h_addr^[1]),
      byte(h_addr^[2]), byte(h_addr^[3])]);
  end;
  WSACleanup;
end;


function vercpf(snrcpf: string): boolean;
var
  WCPFCALC: string;
  WSOMACPF: integer;
  WSX1: shortint;
  WCPFDIGT: integer;
  digit: string;
begin
  Result := False;
  digit := formatnumeric(snrcpf);
  if length(digit) <> 11 then
  begin
    application.messagebox('CPF Inválido !', 'Atenção!', mb_iconstop + mb_ok);
    vercpf := False;
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
      application.messagebox('CPF Inválido !', 'Atenção!', mb_iconstop + mb_ok);
      // vercpf := False;
      Result := False;
    end
    else
      Result := True;
  end;
end;

function VerCGC(snrcgc: string): boolean;
var
  WCGCCALC: string;
  WSOMACGC: integer;
  WSX1: shortint;
  WCGCDIGT: integer;
  digit: string;
begin
  Result := False;
  digit := formatnumeric(snrcgc);

  if length(digit) <> 14 then
  begin
    application.messagebox('CNPJ Inválido !', 'Atenção!', mb_iconstop + mb_ok);
    VerCGC := False;
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
      application.messagebox('CNPJ Inválido !', 'Atenção!', mb_iconstop + mb_ok);
      Result := False;
    end
    else
      //VerCGC := True;
      Result := True;
  end
end;

function UltimodoMes(wMes, wAno: word): word;
var
  UltMes: TDateTime;
begin
  if wMes > 12 then
    raise ERangeError.Create('Mês inválido');
  // mês seguinte
  Inc(wMes);
  // se mês > 12 incrementa o ano e volta mês a 1
  if wMes > 12 then
  begin
    wMes := 1;
    Inc(wAno);
  end;
  // pega data do último do mês
  UltMes := EncodeDate(wAno, wMes, 1) - 1;
  // decodifica para pegar o último dia do mês
  DecodeDate(UltMes, wAno, wMes, Result);
end;

function realdblstr(Ent: extended): string;
var
  Bruto: string;
  cont: integer;
begin
  Bruto := floatToStr(Ent);

  for cont := 0 to length(Bruto) do
    if Bruto[cont] = ',' then
      Bruto[cont] := '.';

  Result := Bruto;
end;


// ------ Valor por extenso de um número ------------------------
function Extenso(Valor: double; Singular, Plural: string): string;
var
  Ind: integer;
  Num: integer;
  Code: integer;
  Ve: array[0..11] of string;
  Str_Valor: string;
  Aux: string;
begin
  Result := '';

  if Valor > 0.0 then 
  begin
    Ve[00] := 'Trilhão';                // Inicializa Vetor
    Ve[01] := 'Trilhões';
    Ve[02] := 'Bilhão';
    Ve[03] := 'Bilhões';
    Ve[04] := 'Milhão';
    Ve[05] := 'Milhões';
    Ve[06] := 'Mil';
    Ve[07] := 'Mil';
    Ve[08] := Singular;
    Ve[09] := Plural;
    Ve[10] := 'Centavo';
    Ve[11] := 'Centavos';

    Str_Valor := Format('%18.2f', [Valor]);
    Str_Valor[16] := '0';               // Tira ponto decimal;

    for Ind := 0 to 5 do 
    begin             // Trata grupo de 3 dígitos (Trih.., Bilh.., Milh..)
      Aux := Copy(Str_Valor, Ind * 3 + 1, 3);
      Val(Aux, Num, code);

      if Num > 0 then 
      begin
        Aux := ExtNum(Aux);
        if (Ind = 5) and (Valor > 1) then                    // Trata Centavos
          Aux := 'e ' + Aux;
        if Num = 1 then
          Result := Result + Aux + ' ' + Ve[Ind * 2] + ' '     // Singular ( ...lhão)
        else
          Result := Result + Aux + ' ' + Ve[Ind * 2 + 1] + ' ';
        // Plural   ( ...lhões)
      end;

      if Valor > 1000 then 
      begin
        if (Num = 0) and (Ind = 3) then       // Bilhões, Milhões de ....
          Result := Result + 'de ';

        if (Num = 0) and (Ind = 4) then       // Mil <Plural Moeda> ....
          Result := Result + Plural + ' ';
      end;
    end; // for
  end;
end;

// ------ Valor por extenso de 1 ate 999 ( sem unidade )---------

function ExtNum(Str_Valor: string): string;
const
  Vu: array [1..19] of string = ('Hum', 'Dois', 'Três', 'Quatro', 'Cinco',
    'Seis', 'Sete', 'Oito',
    'Nove', 'Dez', 'Onze', 'Doze', 'Treze',
    'Quatorze', 'Quinze',
    'Dezeseis', 'Dezesete', 'Dezoito', 'Dezenove');
  Vd: array [2..10] of string = ('Vinte', 'Trinta', 'Quarenta', 'Cinquenta', 'Sessenta',
    'Setenta', 'Oitenta', 'Noventa', 'Cem');
  Vc: array [1..9] of string = ('Cento', 'Duzentos', 'Trezentos',
    'Quatrocentos', 'Quinhentos',
    'Seiscentos', 'Setecentos', 'Oitocentos', 'Novecentos');
var
  Num: integer;
  Code: integer;
  Cent: integer;
  Dez: integer;
  Unid: integer;
  CnUn: integer;
begin
  Result := '';
  Val(Str_Valor, Num, Code);                   // Converte String para Número

  if Num > 0 then 
  begin
    Str_Valor := Format('%03d', [Num]);
    // Ajusta string do valor com zeros à esquerda
    Val(Copy(Str_Valor, 2,2), CnUn, Code);     // Copia Centena e Unidade
    Val(Copy(Str_Valor, 3,1), Unid, Code);     // Copia Unidade
    Val(Copy(Str_Valor, 2,1), Dez, Code);     // Copia Dezena
    Val(Copy(Str_Valor, 1,1), Cent, Code);     // Copia Centena

    if Num = 100 then
      Result := Vd[10]                       // Trata: 'Cem'
    else 
    begin
      if Cent > 0 then 
      begin                    // Trata: 'Cento e', 'Duzentos e', ...
        Result := Vc[Cent];
        if CnUn > 0 then
          Result := Result + ' e ';
      end;

      if Dez > 1 then 
      begin                    // Trata: 'Vinte', 'Trinta', ...
        Result := Result + Vd[Dez];
        if Unid > 0 then
          Result := Result + ' e '         // Trata: 'Vinte e ', 'Trinta e ', ...
      end;

      if (CnUn >= 1) and (CnUn <= 19) then   // Trata: 'Hum' a ' 'Dezenove'
        Result := Result + Vu[CnUn];

      if (Dez > 1) and (Unid >= 1) then           // Trata: .... ' Hum', ' Dois', ...
        Result := Result + Vu[Unid];
    end;
  end;
end;


function getSitTributaria(const aliq: string): string;
var
  Qr: TzQuery;
begin
  Qr := TzQuery.Create(Application);
  Result := '';
  try
    with Qr do
    begin
      Connection := fdm.conector;
      Sql.Clear;
      Sql.Add('SELECT SitTributaria from tbicms where imposto=' + QuotedStr(aliq));
//      sql.savetofile('c:\getST.sql');
      Open;

      {if Qr['SitTributaria']=null then begin
         showmessage('Esta alíquota não consta no cadastro de ICMS.');
         abort;
      end;}

    end;
  finally
    if Qr['SitTributaria'] <> 'X' then
      Result := Qr.FieldByName('SitTributaria').AsString
    else
      if Length(aliq) > 0 then
        Result := FormatFloat('0000', strtofloat(aliq) * 100);
    Qr.Free;
  end;
end;


function Gettempdir: string;
var
  buffer: array [0..144] of char;
begin
  GetTempPath(144, buffer);
  Result := strpas(buffer);
end;

function Getsysdir: string;
var
  buffer: array [0..144] of char;
begin
  GetSystemDirectory(buffer, 144);
  Result := strpas(buffer);
end;

function Getwindir: string;
var
  buffer: array [0..144] of char;
begin
  GetWindowsDirectory(buffer, 144);
  Result := strpas(buffer);
end;

function ParamExists(Par: string): boolean;
var
  Count: integer;
begin
  Result := False;
  for Count := 0 to ParamCount do
    if ParamStr(Count) = Par then
    begin
      Result := True;
      break;
    end;
end;


procedure cadastroG(tb, filtro: string);
begin
end;



function SumaMes(fecha: TDateTime): TDateTime;
var
  Dia, mes, ano: word;
  Dia2, mes2, ano2: word;
begin
  DecodeDate(fecha, ano, mes, dia);
  Mes := Mes + 2;
  if mes > 12 then
    mes := mes - 12;

  Fecha := Fecha + 32; {Restem per canviar de mes segur}
  DecodeDate(fecha, ano2, mes2, dia2);

  while not ((dia2 = dia) or (mes2 = mes)) do
  begin
    Fecha := Fecha - 1;
    DecodeDate(fecha, ano2, mes2, dia2);
  end;

  while mes2 = mes do
  begin
    Fecha := Fecha - 1;
    DecodeDate(fecha, ano2, mes2, dia2);
  end;

  Result := Fecha;
end;


procedure alimentaestoque(codigo:string; qtd: double; tipoloja: string; chavegrade:integer);
var
  estoque,ultmov,tpmp,mp,vrmp,estm: string;
  tbqtd:double;
  sqld: tzquery;
begin

          //tipo de estoque
          if (tipoloja = '1') or (tipoloja = '2') or (tipoloja = '3') then
            estoque := 'estoque'
          else
            estoque := tipoloja;


          if tipoloja ='3' then begin
             tpmp := ' and mp is not null ';
             mp:='mp';
             vrmp := ',1';
          end else begin
            tpmp := ' and mp is null ';
             vrmp := ',null ';
          end;


          sqld := tzquery.Create(application);

          with sqld do begin

              if ipext <> '' then
                 Connection:= fdm.sqext
              else
                 Connection := fdm.conector ;

         if qtd>0 then
            ultmov := ', ultimacompra = now() '
         else
           ultmov := ', ultimavenda = now() ';

         if emp_ <> '' then
            estm := ', estoque'+emp_+
                    ' =  if (estoque'+emp_+ ' is not null, estoque'+ emp_ + ' + ' + realdblstr(qtd) +
                    ',' + realdblstr(qtd) + ')';


         Close;
         sql.Clear;
         sql.Add( 'update tbproduto'+mp + ' set ' +
                        ' flag = null, '+
                        estoque + '= ' + ' if (' + estoque +
                        ' is not null,' + estoque + ' + ' +
                        realdblstr(qtd) + ',' +
                        realdblstr(qtd) + ')' +
                        estm+
                        ultmov+
                        ' where codigo = ' + quotedstr(codigo));
         //if contprod = false then
//         debugstr(sqld);
            execsql;


         if gradepreco then begin
             sql.Clear;
             sql.Add( 'update tbprodgrade set estoque = if (estoque is not null, estoque + ' + realdblstr(qtd) + ',' +
                      realdblstr(qtd) + ')' +
                      ' where chave = ' + quotedstr(inttostr(chavegrade)));
             execsql;
         end;

        Destroy;
  end;

end;


{function CompressStream(const InStream: TStream; OutStream: TStream): boolean;
var
CS: TZCompressionStream;
begin
  if InStream = OutStream then
    raise Exception.Create('Input and Output must be different.');

  CS := TZCompressionStream.Create(OutStream, zcMax);
  try

    CS.CopyFrom(InStream, InStream.Size);
    Result := True;
  finally
    CS.Free;
  end;
end;
}

{function DeCompressStream(const InStream: TStream; OutStream: TStream): boolean;
const
  BuffSize = 65535;
var
  DS: TZDeCompressionStream;
  Buff: PChar;
  ReadSize: integer;
begin
  if InStream = OutStream then
    raise Exception.Create('Input and Output must be different.');

  InStream.Position := 0;
  OutStream.Position := 0;

  DS := TZDeCompressionStream.Create(InStream);
  try
    GetMem(Buff, BuffSize);
    try
      repeat
        ReadSize := DS.Read(Buff^, BuffSize);
        if ReadSize <> 0 then
          OutStream.Write(Buff^, ReadSize);
      until ReadSize < BuffSize;

      Result := True;
    finally
      FreeMem(Buff)
    end;
  finally
    DS.Free;
  end;
end;

}



procedure saldocliente(codigo: string);
var
  sql: tzquery;
  saldo: double;
begin
  if codigo = '' then
    codigo := '0';

  // atualiza saldo
  sql := tzquery.Create(application);
  sql.Connection := fdm.conector;


  with sql do
  begin
      sql.clear;
      sql.add( 'select sum(diferenca)as saldo from tbreceber ' +
               ' where (ch <> "C" or ch is null) and (flag <> "D" or flag is null) and codigo = ' + quotedstr(codigo));
    Open;

    saldo := FieldByName('saldo').AsFloat;

    Close;
        sql.clear;
        sql.add( 'update tbreceber set saldo = ' +
              realdblstr(saldo) + ' where codigo = ' + quotedstr(codigo));
        execsql;

        sql.clear;
        sql.add( 'update tbcliente set saldo = ' +
                      realdblstr(saldo) + ' where codigo = ' + quotedstr(codigo));
    execsql;
    Destroy;
  end;
end;




procedure saldoavulsa(codigo: string);
var
  sql: tzquery;
  saldo: double;
begin
  if codigo = '' then
    codigo := '0';

  // atualiza saldo
  sql := tzquery.Create(application);

  with sql do
  begin
    Connection := fdm.conector;
    sql.clear;
    sql.add( 'select sum(fiado)as saldo from tbpedido ' +
             'where avulso = "S" and codigo = ' + quotedstr(codigo));
    Open;

    saldo := FieldByName('saldo').AsFloat;

    close;
    sql.clear;
    sql.add( 'update tbcliente set avulsa =  ' + realdblstr(saldo) + ' where codigo = ' + quotedstr(codigo));
    execsql;

    close;
    sql.clear;
    sql.add( 'update tbreceber set avulsa =  ' + realdblstr(saldo) + ' where codigo = ' + quotedstr(codigo));
    execsql;
    Destroy;
  end;

end;


procedure saldofornecedor(codigo: string);
var
  sql: tzquery;
  saldo: double;
begin
  if codigo = '' then
    codigo := '0';
  // atualiza saldo
  sql := tzquery.Create(application);

  with sql do
  begin
    Connection := fdm.conector;
    sql.clear;
    sql.add( 'select sum(diferenca)as saldo from tbpagar ' +
              'where (ch <> "C" or ch is null) and (flag <> "D" or flag is null) and codigo = ' + quotedstr(codigo));
    Open;

    saldo := FieldByName('saldo').AsFloat;

    Close;
    sql.clear;
    sql.add( 'update tbpagar set saldo = ' + realdblstr(saldo)
              + ' where diferenca > 0 and codigo = ' + quotedstr(codigo));
    execsql;

    sql.clear;
    sql.add( 'update tbfornecedor set saldo = ' +
              realdblstr(saldo) + ' where codigo = ' + quotedstr(codigo));
    execsql;
    Destroy;
  end;
end;

procedure tmpapel(rep: trlreport);
begin
  fdm.tbconfig.Open;
  rep.PageSetup.PaperWidth := fdm.tbconfig.FieldByName('Lreport').AsInteger;
  rep.PageSetup.PaperHeight := fdm.tbconfig.FieldByName('Areport').AsInteger;
  rep.Margins.TopMargin := fdm.tbconfig.FieldByName('MSreport').AsInteger;
  rep.Margins.BottomMargin := fdm.tbconfig.FieldByName('MIreport').AsInteger;
  rep.Margins.RightMargin := fdm.tbconfig.FieldByName('MDreport').AsInteger;
  rep.Margins.LeftMargin := fdm.tbconfig.FieldByName('MEreport').AsInteger;

  fdm.tbconfig.Close;
end;



procedure GALTERA (modulo, numero, alteracao: string);
var
tipo:string;
sql:tzquery;

begin



        if (alteracao = 'I') or (alteracao = 'i') then
           tipo := '1'
        else if (alteracao = 'A') or (alteracao = 'a') then
           tipo := '2'
        else if (alteracao = 'D') or (alteracao = 'd') then
           tipo := '3'
        else if (alteracao = 'C') or (alteracao = 'c') then
           tipo := '4'
        else if (alteracao = 'E') or (alteracao = 'e') then
           tipo := '5'
        else if (alteracao = 'S') or (alteracao = 's') then
           tipo := '6';



          sql := tzquery.Create(application);
          sql.Connection := fdm.conector ;


          with sql do
          begin
            Close;
            sql.clear;
            sql.add( 'insert into tbusuarioalteracoes '+
                           '(data,horaacesso,modulo,numero,alteracoes,link)'+
                           ' values('+
                           ' now()'+
                           ',' + quotedstr(timetostr(now))+
                           ',' + quotedstr(uppercase(modulo))+
                           ',' + quotedstr(uppercase(numero))+
                           ',' + quotedstr(tipo)+
                           ',' + quotedstr(inttostr(usuariolink))+')');
            
            execsql;
            Destroy;
          end;
//          debugstr(sql);
end;



procedure acesso1 (modulo:string);
begin

          if FileExists(pchar(servpath + 'tbpermissao.cds')) then begin
             fdm.tb.FileName:= 'tbpermissao.cds';
             fdm.tb.Open;
             fdm.tb.Filter:= 'usuario = '+ quotedstr(usuario) +
                             ' and modulo = ' + quotedstr(modulo);
             fdm.tb.Filtered:=true;

          if (fdm.tb['inserir'] <> 'S') and
             (fdm.tb['alterar'] <> 'S') and
             (fdm.tb['consultar'] <> 'S') and
             (fdm.tb['apagar'] <> 'S') then begin

             fdm.tb.Filter:= '';
             fdm.tb.Filtered:=false;

              senhagerencial('PERMISSÃO ACESSO: ' + uppercase(modulo) ,
                             'DIGITE A SENHA GERENCIAL PARA LIBERAR:', 'ACESSO ' +uppercase(modulo));
          end;

             fdm.tb.Filter:= '';
             fdm.tb.Filtered:=false;


          end else begin

          sqlacesso := tzquery.Create(application);
          sqlacesso.Connection := fdm.conector;

          with sqlacesso do
          begin
            Close;
            sql.clear;
            sql.Add( 'select * from tbpermissao where usuario = ' +
                           quotedstr(usuario) + ' and modulo = ' + quotedstr(modulo));
//            debugstr(sqlacesso) ;
            Open;


       if (modulo = 'Usuários/Permissões') and (usuario = 'SUPERVISOR') then
       else

          if (sqlacesso['inserir'] <> 'S') and
            (sqlacesso['alterar'] <> 'S') and
            (sqlacesso['consultar'] <> 'S') and
            (sqlacesso['apagar'] <> 'S') then

                 if modulo <> 'Usuários/Permissões' then
                    senhagerencial('PERMISSÃO ACESSO: ' + uppercase(modulo) ,
                                   'DIGITE A SENHA GERENCIAL PARA LIBERAR:', 'ACESSO ' +uppercase(modulo));
     end;
  end;

end;


procedure permissao(perm,nivel,modulo: string);
var
tipo:string;
begin

        if nivel = 'PN' then
           tipo := 'novo'
        else if nivel = 'PA' then
           tipo := 'alterar'
        else if nivel = 'PD' then
           tipo := 'deletar'
        else if nivel = 'PC' then
           tipo := 'consultar';

       if (tipo = 'novo') and (bloquear=true) then begin
          msg('O Programa precisa de liberação para executar todas as funções!', 0);
          periodo2('registro',email,'','','','',188,369,0);
          abort;

       end else

       if (modulo = 'Usuários/Permissões') and (usuario = 'SUPERVISOR') then else
                if perm <> 'S' then
                   senhagerencial('PERMISSÃO MÓDULO: ' + uppercase(modulo) ,
                                  'DIGITE A SENHA GERENCIAL PARA LIBERAR:', uppercase(tipo));

end;

function RTrim(Texto:String):String;
  {Remove os Espaços em branco à esquerda da string}
var
  I : Integer;
begin
  I := length(Texto)+1;
  while True do
  begin
  Dec(I);
  if I <= 0 then
  break;
  if Texto[I] <> #32 then
  break;
  end;
  Result := Copy(Texto,1,I);
end;

function LTrim(Texto:String):String;
{Remove os Espaços em branco à direita da string}
var
  I : Integer;
begin
  I := 0;
  while True do
  begin
  inc(I);
  if I > length(Texto) then
  break;
  if Texto[I] <> #32 then
  break;
  end;
  Result := Copy(Texto,I,length(Texto));
end;






procedure deletaconta(link,modulo,codigo,antigo:string);
var
  sqld:tzquery;
  conta,doc,letra,dc,documento:string;
  valor:double;
  receber:boolean;
begin
            // acerto entradas avulsas
            if modulo = 'acertocompra' then
               letra := ' and ((modulo = "C") or (modulo="27")) '
            //pgto entrada
            else if (modulo = 'entrada') or(modulo = 'entrada1') then
               letra := ' and ((modulo = "E") or (modulo="8")) '
            //acerto venda avulsa
            else if modulo = 'acertovenda' then
               letra := ' and ((modulo = "V") or (modulo="28")) '
            // devolucao e vendapedido
            else if (modulo = 'devolver') or (modulo='pedido') then
               letra := ' and ((modulo = "P") or (modulo="2")) '
             // venda balcao
             else if modulo = 'balcao' then
               letra := ' and ((modulo = "B") or (modulo="2")) '
             // recebimento
             else if modulo = 'acertoreceber' then
               letra := ' and ((modulo = "R") or (modulo="9")) '
             //cheque recebido
             else if modulo = 'acertochequeR' then
               letra := ' and modulo = "H" '
             //contas a pagar
             else if modulo = 'acertopagar' then
                letra := ' and ((modulo = "G") or (modulo="10")) ';


            //contas pgto
            if (modulo = 'acertocompra') or
               (modulo = 'acertopagar') or
               (modulo = 'entrada1') or
               (modulo = 'entrada') then begin
                dc := 'C';
                receber:=false;
            end
            else if (modulo = 'acertovenda') or
                    (modulo = 'devolver') or
                    (modulo='pedido') or
                    (modulo='acertochequeR') or
                    (modulo='acertoreceber') or
                    (modulo = 'balcao') then begin
                    dc := 'D';
                    receber:=true;
            end;

           doc :=' where (linkvenda = '+quotedstr(link)+letra+ ')';

           sqld :=  tzquery.Create(application);
           sqld.Connection := fdm.conector;

          with sqld do begin

              sql.clear;
              sql.Add('delete from  tbentradacaixa '+ doc);
              execsql;


              // deleta plano de contas
              sql.clear;
              sql.Add( 'delete from tbbancomovimento ' + doc);
              execsql;

              // deleta plano de contas
              sql.clear;
              sql.Add( 'delete from tblancacontabil ' + doc);
              execsql;

              //apaga a pagar: pode ser que venda gera a pagar,(taxa cartao)
              sql.clear;
              sql.Add( 'delete from tbpagar ' + doc);
              execsql;

            if receber = false then
                saldofornecedor(codigo)

            else if receber = true then begin

                sql.clear;
                sql.Add( 'delete from tbreceber ' + doc);
                //debugstr(sqld);
                execsql;

               saldocliente(codigo);
            end;

            destroy;
    end;

end;




function tiraacento(Ent: string): string;
var
  bruto:string;
  cont: integer;
begin

 if ent <> '' then begin
  bruto := ent;

  for cont := 0 to length(bruto) do
    if (bruto[cont] = 'á') or
       (bruto[cont] = 'â') or
       (bruto[cont] = 'ä') or
       (bruto[cont] = 'ã')  then
        bruto[cont] := 'a';

  for cont := 0 to length(bruto) do
    if (bruto[cont] = 'é') or
       (bruto[cont] = 'ê')  then
        bruto[cont] := 'e';

  for cont := 0 to length(bruto) do
    if (bruto[cont] = 'í')  then
        bruto[cont] := 'i';

  for cont := 0 to length(bruto) do
    if (bruto[cont] = 'ó') or
       (bruto[cont] = 'ô') or
       (bruto[cont] = 'õ') then
        bruto[cont] := 'o';

  for cont := 0 to length(bruto) do
    if (bruto[cont] = 'ú') or
       (bruto[cont] = 'ü') then
        bruto[cont] := 'u';

  for cont := 0 to length(bruto) do
    if (bruto[cont] = 'ç')  then
        bruto[cont] := 'c';


  for cont := 0 to length(bruto) do
    if (bruto[cont] = 'Á') or
       (bruto[cont] = 'Â') or
       (bruto[cont] = 'Ä') or
       (bruto[cont] = 'Ã')  then
        bruto[cont] := 'A';

  for cont := 0 to length(bruto) do
    if (bruto[cont] = 'É') or
       (bruto[cont] = 'Ê')  then
        bruto[cont] := 'E';

  for cont := 0 to length(bruto) do
    if (bruto[cont] = 'Í')  then
        bruto[cont] := 'I';

  for cont := 0 to length(bruto) do
    if (bruto[cont] = 'Ó') or
       (bruto[cont] = 'Ô') or
       (bruto[cont] = 'Õ') then
        bruto[cont] := 'O';

  for cont := 0 to length(bruto) do
    if (bruto[cont] = 'Ú') or
       (bruto[cont] = 'Ü') then
        bruto[cont] := 'U';

  for cont := 0 to length(bruto) do
    if (bruto[cont] = 'Ç')  then
        bruto[cont] := 'C';

 { for cont := 0 to length(bruto) do
    if (bruto[cont] = '\') or (bruto[cont] = '/') or (bruto[cont] = '+') or (bruto[cont] = '-') or (bruto[cont] = '*') or
       (bruto[cont] = '%') or(bruto[cont] = '"')  then
        bruto[cont] := '_';}

    if (copy(bruto,1,1) = ' ')  then
        bruto := copy(bruto,2,255);


  Result :=bruto;
  end;
end;




function tiraespaco(Ent: string): string;
var
  bruto,liq:string;
  cont,i: integer;
begin

        if ent <> '' then begin
           bruto := ent;
           liq:='';

           for i:=1 to length(bruto) do
               if (copy(bruto,i,1) <> ' ') and
                  (copy(bruto,i,1) <> '@') and
                  (copy(bruto,i,1) <> '#') and
                  (copy(bruto,i,1) <> '$') and
                  (copy(bruto,i,1) <> '%') and
                  (copy(bruto,i,1) <> '&') then
                  liq:=liq + copy(bruto,i,1);

           Result :=liq;
        end;
end;

function substitui(ent,at,sai: string): string;
var
  bruto,liq:string;
  cont,i: integer;
begin

        if ent <> '' then begin
           bruto := ent;
           liq:='';

           for i:=1 to length(bruto) do
               if (copy(bruto,i,1) = at) then
                  liq:=liq + sai
               else
                  liq:=liq + copy(bruto,i,1);

           Result :=liq;
        end;
end;

function DiaSemana(Data: TDateTime): String;
{Retorna o dia da semana em Extenso de uma determinada data}
const
  Dias : Array[1..7] of String[07] =
         ('DOMINGO', 'SEGUNDA', 'TERCA','QUARTA','QUINTA', 'SEXTA','SABADO');
begin
  Result := Dias[DayOfWeek(Data)];
end;


function diasuteis(dataini:tdatetime; dias_uteis:integer):tDateTime;
var dw:integer;
begin
dw := DayOfWeek(dataini) - 1;
result := dataini + dias_uteis + ((dias_uteis-1 + dw) div 5) *2;
end;


procedure indexar(Column: TColumn; tabela:tclientdataset; tz:tzquery; edit:tedit; lab:tlabel);
var
inde:string;
begin



  if edit <> nil then begin
     edit.Clear;
     try
        if (edit.Visible) and (edit.Enabled) then
            edit.SetFocus;
     except end;
  end;

  if tabela <> nil then begin
     if tabela.IndexFieldNames = column.FieldName then begin
        tabela.AddIndex(column.FieldName, column.FieldName, [ixDescending]);
        tabela.Indexname:= column.FieldName;
        if lab <> nil then
           lab.Caption := 'Localizar por ' + column.Title.Caption + ' (Z~A)';
     end else begin
        tabela.IndexFieldNames := column.FieldName;
        if lab <> nil then
           lab.Caption := 'Localizar por ' + column.Title.Caption + ' (A~Z)';
     end;
  end;


     if tz <> nil then begin
        inde := indtz(tz.IndexFieldNames);
//           showmessage(inde);
  //         showmessage(column.FieldName);

        if lowercase(inde) = lowercase(column.FieldName) then begin

           if tz.SortType = stAscending then begin
              tz.IndexFieldNames:= column.FieldName;
              tz.SortType := stDescending;

              if lab <> nil then
                 lab.Caption := 'Localizar por ' + column.Title.Caption + ' (Z~A)';

           end else begin
              tz.IndexFieldNames:= column.FieldName;
              tz.SortType := stAscending;
              lab.Caption := 'Localizar por ' + column.Title.Caption + ' (A~Z)';

           end;

        end else begin
              tz.IndexFieldNames:= column.FieldName;
              tz.SortType := stAscending;
              lab.Caption := 'Localizar por ' + column.Title.Caption + ' (A~Z)';
        end;

     end;

end;




function GetIcmsUF(const UF:string):double;
var
  sql:tzquery;
begin
  sql := tzquery.Create(application);
  sql.Connection := fdm.conector;
  Result:=0;
  try

    with sql do
    begin
      Close;
      sql.clear;
      sql.add('select icms from tbuficms where uf='+QuotedStr(UF));
      Open;
      if not FieldByName('icms').IsNull then
        Result:= FieldByName('icms').AsFloat;
    end;
  finally
    sql.Free;
  end;
end;

function IsSTrib(const CST: string): boolean;
var
  st: string;

begin
    //  showmessage(CST);
  Result := False;
  if Length(CST) = 3 then
  begin
    st := copy(CST, 2,2);
    if (st = '10') or (st = '60') or (st = '70') or (st = '01') or (st = '02') or(st = '00') then
      Result := True;
  end
  else
    raise Exception.Create('O CST deve ter três caracteres numéricos."' +CST+'"' );

end;


function getCFOPItem(const cfop, cst: string): string;
const
  CFOP_TB: array [0..11, 0..1] of string = (
    {Normal   - Subst}
    ('5.102', '5.405'),
    ('6.102', '6.405'),
    ('5.152', '5.409'),
    ('6.152', '6.409'),
    ('5.202', '5.411'),
    ('6.202', '6.411'),
    ('1.102', '1.403'),
    ('2.102', '2.403'),
    ('1.152', '1.409'),
    ('2.152', '2.409'),
    ('1.202', '1.411'),
    ('2.202', '2.411'));
var
  idx: integer;

  function getIndexCFOP: integer;
  var
    Count: integer;
  begin
    //retorna -1 por padrão.
    Result := -1;
    for Count := 0 to length(CFOP_TB) do
      if (FormatNumeric(CFOP_TB[Count][0]) = FormatNumeric(CFOP)) or
        (FormatNumeric(CFOP_TB[Count][1]) = FormatNumeric(CFOP)) then
      begin
        Result := Count;
        break;
      end;
    //
  end;
begin
  Result := cfop;

  idx := getIndexCFOP;
  
  if idx <> -1 then
  begin
    if IsSTrib(cst) then Result := CFOP_TB[idx][1]
    else 
      Result := CFOP_TB[idx][0];
  end;
end;



procedure debugStr(const query:tzquery);
begin
      query.SQL.SaveToFile('c:\debug.txt');
      ShellExecute(0, 'open', 'c:\debug.txt', nil, '', Sw_Show);
end;




function StrIsNum(const strIn:string):boolean;
var
   count:integer;
begin
  Result:=False;
  for count:=0 to Length(strIn)-1 do
  begin
    if strIn[count] in ['0'..'9'] then
      Result:=True
    else
      Result:=False;
  end;
end;

function FormatNumeric(const strin: string): string;
  //remove caracteres não numéricos de uma string
var
  Count: integer;
begin
  Result := '';
  if Length(strin) > 0 then
    for Count := 0 to length(strin) do
      if strin[Count] in ['0'..'9'] then
        Result := Result + strin[Count];


end;


procedure abortaacao(tb1:tclientdataset;tb2:tzquery;campo1,campo2,campo3,campo4,campo5:string;flag:integer);
var
st:string;

begin

        if flag = 0 then  //0 (zero) quando para avisar que a tabela esta vazia
           st := 'Não há registro selecionado!'
        else begin
             if campo1 <>'' then
                st:= campo1;

             if campo2 <>'' then
                st:=st +', '+campo2;

             if campo3 <>'' then
                st:=st +', '+campo3;

             if campo4 <>'' then
                st:=st +', '+campo4;

             if campo5 <>'' then
                st:=st  +', '+campo5;

             st :=st + ' devem ser preenchido(s)!!!';
             st :=uppercase(st);
         end;

        if tb1<>nil then
        if ((campo1<>'') and ((tb1[campo1]=null)or(tb1.fieldbyname(campo1).AsString=''))) or
           ((campo2<>'') and ((tb1[campo2]=null)or(tb1.fieldbyname(campo2).AsString=''))) or
           ((campo3<>'') and ((tb1[campo3]=null)or(tb1.fieldbyname(campo3).AsString=''))) or
           ((campo4<>'') and ((tb1[campo4]=null)or(tb1.fieldbyname(campo4).AsString=''))) or
           ((campo5<>'') and ((tb1[campo5]=null)or(tb1.fieldbyname(campo5).AsString=''))) then
           msg('#'+st, 0);


        if tb2<>nil then
        if ((campo1<>'') and ((tb2[campo1]=null)or(tb2.fieldbyname(campo1).AsString=''))) or
           ((campo2<>'') and ((tb2[campo2]=null)or(tb2.fieldbyname(campo2).AsString=''))) or
           ((campo3<>'') and ((tb2[campo3]=null)or(tb2.fieldbyname(campo3).AsString=''))) or
           ((campo4<>'') and ((tb2[campo4]=null)or(tb2.fieldbyname(campo4).AsString=''))) or
           ((campo5<>'') and ((tb2[campo5]=null)or(tb2.fieldbyname(campo5).AsString=''))) then
           msg('#'+st, 0);
end;


procedure filtrar (grade:TDbGrid;tabela:tclientdataset;tz:tzquery;campo:string);
var
filtro:string;
i:integer;
begin

             with grade do  begin
               for i := 0 to Pred(SelectedRows.Count) do    begin
                  DataSource.DataSet.Bookmark := SelectedRows[i];

                  if tabela <> nil then begin
                     if filtro = '' then
                        filtro := campo+' = ' + quotedstr(tabela.fieldbyname(campo).AsString)
                     else filtro := filtro + ' or '+campo+' = ' + quotedstr(tabela.fieldbyname(campo).AsString);
                  end;

                  if tz <> nil then begin
                     if filtro = '' then
                        filtro := campo+' = ' + quotedstr(tz.fieldbyname(campo).AsString)
                     else filtro := filtro + ' or '+campo+' = ' + quotedstr(tz.fieldbyname(campo).AsString);
                  end;
             end;
            end;

            if tabela <> nil then begin
               tabela.Filter := filtro;
               tabela.Filtered := true;
            end;

            if tz <> nil then begin
               tz.Filter := filtro;
               tz.Filtered := true;
            end;


end;




procedure loctabela(tabela:tclientdataset;tz:tzquery;elocalizar:tedit);
var
indice:string;
begin

       if tabela<> nil then begin
          if (tabela.IndexFieldNames='') and (tabela.indexname ='') then
              tabela.IndexFieldNames:='chave';

          if tabela.IndexFieldNames <> '' then
             indice := tabela.IndexFieldNames
          else
             indice := tabela.indexname;

          if tabela.Active = True then begin

             if (tabela.fieldbyname(indice).ClassName = 'TDateField')and
                (length(elocalizar.text) < 10) then tabela.CancelRange

             else if ((tabela.fieldbyname(indice).ClassName = 'TDateField')and
                     (length(elocalizar.text) = 10) and (StrIsDate(elocalizar.text))) or
                     (tabela.fieldbyname(indice).ClassName <> 'TDateField') then


             if tabela.IndexFieldNames <> '' then begin
                if length(elocalizar.Text) > 0 then
                   tabela.SetRange([elocalizar.Text], [nil])
                else
                   tabela.CancelRange;

            end else begin
               tabela.CancelRange;
               tabela.FindNearest([elocalizar.Text]);
            end;
        end;
      end;

        if tz<> nil then begin

           indice := indtz(tz.IndexFieldNames);
           if tz.Active = True then begin
              IF INDICE = '' then indice := 'nome';
          if ((tz.fieldbyname(indice).ClassName = 'TDateField')and
             (length(elocalizar.text) = 10) and (StrIsDate(elocalizar.text))) or
             (tz.fieldbyname(indice).ClassName <> 'TDateField') then
             tz.Locate(indice,elocalizar.Text,[lopartialkey]);
          end;
        end;

end;



procedure criacheck(nomecampo,cap:string;lf,tg,pos:integer;g,s,s3,s4,o,t:boolean);
var
  nome,nm: TCheckBox;

begin

  try

  if (tp =0) or (tp > 170)  then tp:=22;

  if g then
     fimp.grupog.Items.Add(cap);

  if s then
     fimp.gsrupog.Items.Add(cap);

  if s3 then
     fimp.gsrupog3.Items.Add(cap);

  if s4 then
     fimp.gsrupog4.Items.Add(cap);

  if o then
     fimp.gindex.Items.Add(cap);

  nome := TCheckBox.Create(application);
  with nome do begin
    jj:=jj+1;
//    showmessage(nomecampo);
    name:=nomecampo;
    Caption := cap;
    Left := lf;
    Top := tp;
    Parent := fimp.TabSheet1;
    Width := 100;
    font.Color := clwhite;
    Color := $008A736A;
    height:=11;

    onclick:=fimp.fontepagExecute;
    fimp.tb.Insert;
    fimp.tb['nome']:= nomecampo;
    fimp.tb['cap']:= cap;
    fimp.tb['tm']:= tg;
    fimp.tb['pos']:= pos;
    fimp.tb['index']:= ii;
    fimp.tb.Post;

    if fimp.tbini.Active then begin
       fimp.tbini.Locate('nome',nomecampo,[]);

       if fimp.tbini['x']='X' then
          nome.Checked:= true;

    end;
  end;

  //soma
  if t then begin

  nm := TCheckBox.Create(application);
  with nm do begin
    ii:=ii+1;
    name:='s'+nomecampo;
    Caption :='Soma: '+ cap;
    Left := 6;
    Top := 274+qtdlinha;
    Parent := fimp;
    Width := 214;
    font.Color := clwhite;
    Color := $008A736A;
    height:=11;
    onclick:=fimp.somaExecute;

    fimp.tbsoma.Insert;
    fimp.tbsoma['nome']:= nomecampo;
    fimp.tbsoma['cap']:= cap;
    fimp.tbsoma['index']:= jj;
    fimp.tbsoma.Post;

    if fimp.tbinisoma.Active then begin
       fimp.tbinisoma.Locate('nome',nomecampo,[]);

       if fimp.tbinisoma['x']='X' then
          nm.Checked:= true;
    end;

    qtdlinha := qtdlinha + 12;
  end;
 end;
     tp := tp  + 12;

 except end;
end;


procedure sitconta;

var
  imp,dt,cp,DataIni, DataFin,apag:string;
  pgant, rcant:double;


        function fscrdt(cpdt:string):string;
        begin
                result := ' where '+cpdt+' between '+
                           quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataIni)))+
                          ' and ' + quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataFin)));
        end;


        function fscrdta(cpdt:string):string;
        begin
                result := ' where '+cpdt+' < '+ quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataIni)));
        end;



begin

        imp := msgi('Entre com o período.',3);

        DataIni := copy(imp,1,10);
        DataFin := copy(imp,11,10);
        apag :=' and (flag <> "D" or flag is null)';

       codloc:='1';
       imp:=msgi('Exibir por data de:' + #13 + #13 +
                 '1 = Vencimento'+#13+
                 '2 = Emissão. . . .'+#13+
                 '3 = Pagamento .',2);

       if      imp='2' then dt :='DtEmissao'
       else if imp='3' then dt :='DtPagamento'
       else                 dt :='DtVencimento';


       codloc:='1';
       imp:=msgi('Exibir por valor:' + #13 + #13 +
                 '1 = Total...............  '+#13+
                 '2 = Recebido/Pg.. '+#13+
                 '3 = A Receber/Pg ',2);

       if      imp='2' then cp :='recebido'
       else if imp='3' then cp :='diferenca'
       else                 cp :='total';


       //saldo anterior pagar
       selecione('select sum('+cp+') as total from tbpagar '+ fscrdta(dt) + apag+sqlempresa(1,1,''));
       vrpub := sqlpub.fieldbyname('total').AsFloat;

       selecione('select sum(dinheiro) as total from tbentrada '+ fscrdta('data')+sqlempresa(1,1,''));
       vrpub := vrpub + sqlpub.fieldbyname('total').AsFloat;

       selecione('select sum(dinheiro) as total from tbentradamp '+ fscrdta('data')+sqlempresa(1,1,''));
       vrpub := vrpub + sqlpub.fieldbyname('total').AsFloat;



      //saldo ant receber
       selecione('select sum('+cp+') as total from tbreceber '+ fscrdta(dt)+ apag+sqlempresa(1,1,''));
       vrpub2 := sqlpub.fieldbyname('total').AsFloat;

       selecione('select sum(dinheiro) as total from tbpedido '+ fscrdta('data')+sqlempresa(1,1,''));
       vrpub2 := vrpub2 + sqlpub.fieldbyname('total').AsFloat;

       sqlpub:=nil;



       //contareceber
       with fdm.Query1 do begin
            close;
            sql.Clear;
            sql.Add('select chave, '+
                    ' tipoconta as Conta, '+
                    dt+
                    ', sum('+cp+') as Receber '+
                    ', recebido-recebido as Pagar '+
                    ', recebido-recebido as Saldo '+
                    ', recebido-recebido as Acumulo '+
                    ' from tbreceber '+ fscrdt(dt) + apag+
                    '  group by tipoconta, '+dt+sqlempresa(1,1,'')+
                    '  order by tipoconta, '+dt );

            fdm.tbquery1.close;
            fdm.tbquery1.Open;



            //saldo ant
            fdm.tbquery1.insert;
            fdm.tbquery1['chave']   := 0;
            fdm.tbquery1[dt]        := strtodate(DataIni)-1;
            fdm.tbquery1['conta']   := 'SALDO ANTERIOR';
            fdm.tbquery1['pagar']   :=vrpub;
            fdm.tbquery1['receber'] := vrpub2;
            fdm.tbquery1.Post;
            vrpub  :=0;
            vrpub2 :=0;




            //vendas
            close;
            sql.Clear;
            sql.Add('select data, sum(dinheiro) as receber from tbpedido '+ fscrdt('data')+
                    ' and dinheiro > 0 '+sqlempresa(1,1,'')+' group by data order by data');
            open;

            while not eof do begin
                 fdm.tbquery1.insert;
                 fdm.tbquery1['chave'] := fdm.tbquery1.RecNo + 1;
                 fdm.tbquery1[dt] := fdm.Query1.fieldbyname('data').AsDateTime;
                 fdm.tbquery1['conta'] := 'Venda Dinheiro';
                 fdm.tbquery1['pagar'] :=0;
                 fdm.tbquery1['receber'] := fdm.Query1.fieldbyname('receber').AsFloat;
                 fdm.tbquery1.Post;
                 next;
            end;




            //compra
            close;
            sql.Clear;
            sql.Add('select data, sum(dinheiro) as pagar from tbentrada '+ fscrdt('data') +
                    ' and dinheiro > 0 '+sqlempresa(1,1,'')+' group by data order by data');
            open;

            while not eof do begin
                 fdm.tbquery1.insert;
                 fdm.tbquery1['chave'] := fdm.tbquery1.RecNo + 1;
                 fdm.tbquery1[dt] := fdm.Query1.fieldbyname('data').AsDateTime;
                 fdm.tbquery1['conta'] := 'Compra Dinheiro';
                 fdm.tbquery1['receber'] :=0;
                 fdm.tbquery1['pagar'] := fdm.Query1.fieldbyname('pagar').AsFloat;
                 fdm.tbquery1.Post;
                 next;
            end;


            //compra mat prima
            close;
            sql.Clear;
            sql.Add('select data, sum(dinheiro) as pagar from tbentradamp '+ fscrdt('data') +
                    ' and dinheiro > 0 '+sqlempresa(1,1,'')+' group by data order by data');
            open;

            while not eof do begin
                 fdm.tbquery1.insert;
                 fdm.tbquery1['chave'] := fdm.tbquery1.RecNo + 1;
                 fdm.tbquery1[dt] := fdm.Query1.fieldbyname('data').AsDateTime;
                 fdm.tbquery1['conta'] := 'M Prima Dinheiro';
                 fdm.tbquery1['receber'] :=0;
                 fdm.tbquery1['pagar'] := fdm.Query1.fieldbyname('pagar').AsFloat;
                 fdm.tbquery1.Post;
                 next;
            end;


            //ct apaagar
            close;
            sql.Clear;
            sql.Add('select chave, '+
                    ' tipoconta as Conta, '+
                    dt+
                    ', sum('+cp+') as Pagar '+
                    ' from tbpagar '+ fscrdt(dt) + apag+
                    '  group by tipoconta, '+dt+sqlempresa(1,1,'')+
                    '  order by tipoconta, '+dt );

            open;

            while not eof do begin
                  if fdm.tbquery1.Locate(dt+';conta',
                     VarArrayOf([fdm.Query1.fieldbyname(dt).AsString,
                                 fdm.Query1.fieldbyname('conta').AsString]),[]) then begin
                     fdm.tbquery1.Edit;
                     fdm.tbquery1['pagar'] := fdm.Query1.fieldbyname('pagar').AsFloat;

                  end else begin
                     fdm.tbquery1.insert;
                     fdm.tbquery1['chave'] := fdm.tbquery1.RecNo + 1;
                     fdm.tbquery1[dt] := fdm.Query1.fieldbyname(dt).AsDateTime;
                     fdm.tbquery1['conta'] := fdm.Query1.fieldbyname('conta').AsString;
                     fdm.tbquery1['receber'] :=0;
                     fdm.tbquery1['pagar'] := fdm.Query1.fieldbyname('pagar').AsFloat;
                  end;

                  fdm.tbquery1.Post;
                  next;
              end;
              fdm.Query1.close;

       end;



      fdm.tbquery1.IndexFieldNames := dt+';chave';
      fdm.tbquery1.First;
      while not fdm.tbquery1.Eof do begin
            fdm.tbquery1.Edit;
            fdm.tbquery1['saldo']:= fdm.tbquery1.fieldbyname('receber').AsFloat-
                                    fdm.tbquery1.fieldbyname('Pagar').AsFloat;
            vrpub                 := vrpub + fdm.tbquery1.fieldbyname('saldo').AsFloat;
            fdm.tbquery1['acumulo']:= vrpub;
            if fdm.tbquery1['pagar'] = null then fdm.tbquery1['pagar'] :=0;
            fdm.tbquery1.Post;
            fdm.tbquery1.next;
      end;

      fdm.tbquery1.First;
      vrpub:=0;


      (fdm.tbquery1.FieldByName('receber')  as tfloatfield).displayformat := '###,##0.00';
      (fdm.tbquery1.FieldByName('pagar')  as tfloatfield).displayformat := '###,##0.00';
      (fdm.tbquery1.FieldByName('saldo')  as tfloatfield).displayformat := '###,##0.00';
      (fdm.tbquery1.FieldByName('acumulo')  as tfloatfield).displayformat := '###,##0.00';
      fdm.tbquery1.FieldByName('conta').DisplayWidth :=30;

      reltb(fdm.tbquery1,'Situação das Contas de: '+ DataIni + ' a '+DataFin,'','Saldo','Pagar','Receber','','','','','','','','','','');
      fdm.tbquery1.IndexFieldNames := '';
      fdm.tbquery1.close;


end;








procedure criaRa(nomecampo,c1,c2,c3,c4,c5,c6,c7:string;topo:integer);
var
  rg:TRadioGroup;
  col:integer;
begin
           with rg do begin
           rg:= TRadioGroup.Create(application);
           name := nomecampo;
           Width := 308;
           top:=topo;
           caption :='';
           Parent := ffiltrocad.TabSheet1;
           onclick:=ffiltrocad.RaExecute;
           Items.Add('Todos');
           col:=1;

           if c1 <> '' then begin
              Items.Add(c1);
              col:=col + 1;
           end;

           if c2 <> '' then begin
              Items.Add(c2);
              col:=col + 1;
           end;

           if c3 <> '' then begin
              Items.Add(c3);
              col:=col + 1;
           end;

           if c4 <> '' then begin
              Items.Add(c4);
              col:=col + 1;
           end;

           if c5 <> '' then begin
              Items.Add(c5);
              col:=col + 1;
           end;

           if c6 <> '' then begin
              Items.Add(c6);
              col:=col + 1;
           end;

           if c7 <> '' then begin
              Items.Add(c7);
              col:=col + 1;
           end;

           if col <=4 then begin
              Height := 28;
              Columns := col;
           end else begin
              Columns := 4;
              Height := 50;
           end;

           itemindex :=0;

           ffiltrocad.tbcampo.Insert;
           ffiltrocad.tbcampo['nome']:= nomecampo;
           ffiltrocad.tbcampo.Post;
       end;
end;


procedure criaMa(nomecampo,cap:string;topo,qtd:integer);
var
  mask:TMaskEdit;

  lb:tlabel;
begin

           with mask do begin
           mask:= TMaskEdit.Create(application);
           name := nomecampo;
           Width := 79;
           Height := 19;
           left:=130;
           top:=topo;
           BevelInner := bvLowered;
           BevelKind := bkSoft;
           BiDiMode := bdRightToLeft;
           BorderStyle := bsNone;
           EditMask := '99/99/9999';
           text := '  /  /    ';
           Parent := ffiltrocad.TabSheet1;
           onexit:=ffiltrocad.maExecute;
           onenter:=ffiltrocad.maenterExecute;
           ffiltrocad.tbcampo.Insert;
           ffiltrocad.tbcampo['nome']:= nomecampo;
           ffiltrocad.tbcampo.Post;
       end;

       if qtd = 2 then
           with mask do begin
           mask:= TMaskEdit.Create(application);
           name := '_'+nomecampo;
           Width := 79;
           Height := 19;
           left:=220;
           top:=topo;
           BevelInner := bvLowered;
           BevelKind := bkSoft;
           BiDiMode := bdRightToLeft;
           BorderStyle := bsNone;
           EditMask := '99/99/9999';
           text := '  /  /    ';
           Parent := ffiltrocad.TabSheet1;
           onexit:=ffiltrocad.maExecute;
           onenter:=ffiltrocad.maenterExecute;
       end;


          lb := tlabel.Create(application);
          with lb do begin
            Parent := ffiltrocad.TabSheet1;
            caption := cap;
            autosize := false;
            width:=125;
            top := topo+2;
            color:=$00B68C76;
            font.Color := clwhite;
            height:=17;

           end;
end;



procedure criaDbl(nomecampo,cap:string;topo:integer);
var
  edt:TEdit;
  lb:tlabel;
begin
       with edt do begin
           edt:= TEdit.Create(application);
           name := nomecampo;
           Width := 79;
           Height := 19;
           left:=130;
           top:=topo;
           BevelInner := bvLowered;
           BevelKind := bkSoft;
           BiDiMode := bdRightToLeft;
           BorderStyle := bsNone;
           Parent := ffiltrocad.TabSheet1;
           text :='';
           onexit:=ffiltrocad.dblExecute;
           onenter:=ffiltrocad.dblenterExecute;
           ffiltrocad.tbcampo.Insert;
           ffiltrocad.tbcampo['nome']:= nomecampo;
           ffiltrocad.tbcampo.Post;
       end;


      with edt do begin
           edt:= TEdit.Create(application);
           name := '_'+nomecampo;
           Width := 79;
           Height := 19;
           left:=220;
           top:=topo;
           BevelInner := bvLowered;
           BevelKind := bkSoft;
           BiDiMode := bdRightToLeft;
           BorderStyle := bsNone;
           Parent := ffiltrocad.TabSheet1;
           text :='';           
           onexit:=ffiltrocad.dblExecute;
           onenter:=ffiltrocad.dblenterExecute;
       end;


          lb := tlabel.Create(application);
          with lb do begin
            Parent := ffiltrocad.TabSheet1;
            caption := cap;
            autosize := false;
            width:=125;
            top := topo+2;
            color:=$00B68C76;
            font.Color := clwhite;
            height:=17;
           end;

end;


procedure criaMCh(nomecampo,cap,ntb,campo:string;topo:integer);
var
  combo:TComboBox;
  lb:tlabel;
  sq:tzquery;
  cp:string;
begin


           if campo <> '' then begin

           with combo do begin
           combo:= TComboBox.Create(application);
           name := nomecampo;
           Width := 182;
           Height := 21;
           left:=130;
           top:=topo;
           BevelKind := bkFlat;
           Ctl3D := True;
           DropDownCount := 30;
           ItemHeight := 13;
           Parent := ffiltrocad.TabSheet1;
           text:='';

           onexit:=ffiltrocad.ChExecute;
           onenter:=ffiltrocad.ChenterExecute;

           ffiltrocad.tbcampo.Insert;
           ffiltrocad.tbcampo['nome']:= nomecampo;
           ffiltrocad.tbcampo.Post;

           //lista

           if lowercase(nomecampo) = 'nascimento' then begin
              items.add('JANEIRO');
              items.add('FEVEREIRO');
              items.add('MARÇO');
              items.add('ABRIL');
              items.add('MAIO');
              items.add('JUNHO');
              items.add('JULHO');
              items.add('AGOSTO');
              items.add('SETEMBRO');
              items.add('OUTUBRO');
              items.add('NOVEMBRO');
              items.add('DEZEMBRO');
         end else

           if lowercase(nomecampo) = 'dnascimento' then begin
              items.add('1');
              items.add('2');
              items.add('3');
              items.add('4');
              items.add('5');
              items.add('6');
              items.add('7');
              items.add('8');
              items.add('9');
              items.add('10');
              items.add('11');
              items.add('12');
              items.add('13');
              items.add('14');
              items.add('15');
              items.add('16');
              items.add('17');
              items.add('18');
              items.add('19');
              items.add('20');
              items.add('21');
              items.add('22');
              items.add('23');
              items.add('24');
              items.add('25');
              items.add('26');
              items.add('27');
              items.add('28');
              items.add('29');
              items.add('30');
              items.add('31');

         end else

            sq :=  tzquery.Create(application);
            with sq do begin
                Connection := fdm.conector ;
                sql.Clear;
                sql.add( 'select distinct '+campo+' from '+ntb+' order by '+campo);

                open;


                items.Add(' ');

                while not eof do begin
                     if (sq[campo]<> null) and (sq[campo]<>'') then
                        cp := fieldbyname(campo).AsString
                     else cp :='';

                     if cp <> '' then items.Add(cp);
                     next;
                end;

                destroy;
           end;
       end;


          lb := tlabel.Create(application);
          with lb do begin
            Parent := ffiltrocad.TabSheet1;
            caption := cap;
            autosize := false;
            width:=125;
            top := topo+2;
            color:=$00B68C76;
            font.Color := clwhite;
            height:=17;
           end;
           end;

end;










procedure valcnpj(ecn:tdbedit;tabnome:tclientdataset;tz:tzquery;campo:string);
begin


    if length(ecn.Text) > 0 then
    begin

      if tabnome  <> nil then begin
         tabnome.edit;
         tabnome[campo]:=formatacpf_cnpj(FormatNumeric(ecn.Text));
      end;

      if tz  <> nil then begin
         tz.edit;
         tz[campo]:=formatacpf_cnpj(FormatNumeric(ecn.Text));
      end;


      if (length(formatnumeric(ecn.Text)) >= 14) then begin
        if VerCGC(ecn.Text) = False then begin
           if ecn.Enabled = True then
              ecn.SetFocus;
           abort;
        end;

      end else if (length(formatnumeric(ecn.Text)) < 14) then begin
        if VerCPF(ecn.Text) = False then begin
            if ecn.Enabled = True then
               ecn.SetFocus;
            abort;
        end;
      end;


   end;

     if (length(ecn.Text) = 0) and (sintegra) then begin
        Application.MessageBox('O programa está configurado para gerar SINTEGRA, o CNPJ ou CPF não pode ser nulo!',
                               'Erro', 0 + MB_ICONerror);
          if ecn.Enabled = True then
            ecn.SetFocus;
        abort;
     end;
end;





procedure impgrade(tabela:tclientdataset;tz:tzquery;ds:tdatasource;grade:tdbgrid;tit,cap,rodape:string;visualiza:boolean);
var
ind,loc:string;
esq,top,alinha,i:integer;
grupo,soma:boolean;
begin


    if tabela<> nil then begin
       abortaacao(tabela,nil,'chave','','','','',0);
       loc:= tabela.fieldbyname('chave').AsString;
    end;

    if tz<> nil then begin
       abortaacao(nil,tz,'chave','','','','',0);
       loc:= tz.fieldbyname('chave').AsString;
    end;


    esq:=0;


    fimp:=tfimp.Create(application,ds,tabela,tz,tit,cap,rodape);
        top:=22;
        //nomecampo,titulo,esq,top,tm,alinha,grupo,subgrupo,ordenar,soma
    for i:=0 to grade.Columns.Count-1 do begin

      if (lowercase(grade.Columns[i].FieldName) <> 'chave') and
         (grade.Columns[i].Visible = true) then begin

       if tabela<> nil then begin
          if (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TFloatField') then begin
             alinha:=1;
             soma:=true;
          end else begin
            alinha:=0;
             soma:=false;
          end;
       end;

       if tz <> nil then begin
          if tz.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TFloatField' then begin
             alinha:=1;
             soma:=true;
          end else begin
            alinha:=0;
             soma:=false;
          end;
       end;

       grupo:= false;

          if (tabela <> nil) and
             ((tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TDateField')or
             (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TDatetimeField')) then
             grupo := true;

          if (tz <> nil) and
             ((tz.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TDateField')or
             (tz.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TDatetimeField')) then
             grupo := true;
                                                          

          if (lowercase(grade.Columns[i].FieldName)= 'cep') or
             (lowercase(grade.Columns[i].FieldName)= 'uf') or
             (lowercase(grade.Columns[i].FieldName)= 'mecanico') or
             (lowercase(grade.Columns[i].FieldName)= 'campo1') or
             (lowercase(grade.Columns[i].FieldName)= 'vendedor') or
             (lowercase(grade.Columns[i].FieldName)= 'codigovendedor') or
             (lowercase(grade.Columns[i].FieldName)= 'nome') or
             (lowercase(grade.Columns[i].FieldName)= 'nomeempresa') or
             (lowercase(grade.Columns[i].FieldName)= 'cliente') or
             (lowercase(grade.Columns[i].FieldName)= 'arquiteto') or
             (lowercase(grade.Columns[i].FieldName)= 'codigo') or
             (lowercase(grade.Columns[i].FieldName)= 'descricao') or
             (lowercase(grade.Columns[i].FieldName)= 'fornecedor') or
             (lowercase(grade.Columns[i].FieldName)= 'fabricante') or

             (lowercase(grade.Columns[i].FieldName)= 'departamento') or
             (lowercase(grade.Columns[i].FieldName)= 'secao') or
             (lowercase(grade.Columns[i].FieldName)= 'familia') or
             (lowercase(grade.Columns[i].FieldName)= 'grupo') or
             (lowercase(grade.Columns[i].FieldName)= 'subgrupo') or

             (lowercase(grade.Columns[i].FieldName)= 'conta') or
             (lowercase(grade.Columns[i].FieldName)= 'agencia') or
             (lowercase(grade.Columns[i].FieldName)= 'titular') or
             (lowercase(grade.Columns[i].FieldName)= 'dc') or
             (lowercase(grade.Columns[i].FieldName)= 'cidade') or
             (lowercase(grade.Columns[i].FieldName)= 'municipio') or
             (lowercase(grade.Columns[i].FieldName)= 'bairro') or
             (lowercase(grade.Columns[i].FieldName)= 'curvaqtd') or
             (lowercase(grade.Columns[i].FieldName)= 'curvavalor') or
             (lowercase(grade.Columns[i].FieldName)= 'ecf') or
             (lowercase(grade.Columns[i].FieldName)= 'posicaoconta') or
             (lowercase(grade.Columns[i].FieldName)= 'tipoconta') or
             (lowercase(grade.Columns[i].FieldName)= 'contacontabil') or
             (lowercase(grade.Columns[i].FieldName)= 'tipocontac') or
             (lowercase(grade.Columns[i].FieldName)= 'contacontabilc') or
             (lowercase(grade.Columns[i].FieldName)= 'tipocontab') or
             (lowercase(grade.Columns[i].FieldName)= 'contacontabilb') or

             (lowercase(grade.Columns[i].FieldName)= 'dia') or
             (lowercase(grade.Columns[i].FieldName)= 'cx') or
             (lowercase(grade.Columns[i].FieldName)= 'cfop') or
             (lowercase(grade.Columns[i].FieldName)= 'cst') or             
             (lowercase(grade.Columns[i].FieldName)= 'numero') or
             (lowercase(grade.Columns[i].FieldName)= 'status') or
             (lowercase(grade.Columns[i].FieldName)= 'usu') or
             (lowercase(grade.Columns[i].FieldName)= 'responsavel') or
             (lowercase(grade.Columns[i].FieldName)= 'setor') or
             (lowercase(grade.Columns[i].FieldName)= 'regiao') or
             (lowercase(grade.Columns[i].FieldName)= 'tp') or
             (lowercase(grade.Columns[i].FieldName)= 'caixa') or
             (lowercase(grade.Columns[i].FieldName)= 'modalidade') or
             (lowercase(grade.Columns[i].FieldName)= 'codvendedor') or
             (lowercase(grade.Columns[i].FieldName)= 'cx_num') or
             (lowercase(grade.Columns[i].FieldName)= 'modalidades') or
             (lowercase(grade.Columns[i].FieldName)= 'produto') or


             (lowercase(grade.Columns[i].FieldName)= 'grau') or
             (lowercase(grade.Columns[i].FieldName)= 'estrutura') or

             (lowercase(grade.Columns[i].FieldName)= 'grau_d') or
             (lowercase(grade.Columns[i].FieldName)= 'estrutura_d') or
             (lowercase(grade.Columns[i].FieldName)= 'grupo_d') or
             (lowercase(grade.Columns[i].FieldName)= 'subgrupo_d') or
             (lowercase(grade.Columns[i].FieldName)= 'conta_d') or
             (lowercase(grade.Columns[i].FieldName)= 'grau_c') or
             (lowercase(grade.Columns[i].FieldName)= 'estrutura_c') or
             (lowercase(grade.Columns[i].FieldName)= 'grupo_c') or
             (lowercase(grade.Columns[i].FieldName)= 'subgrupo_c') or
             (lowercase(grade.Columns[i].FieldName)= 'conta_c') or

             (lowercase(grade.Columns[i].FieldName)= 'cod_grau') or
             (lowercase(grade.Columns[i].FieldName)= 'cod_estrutura') or
             (lowercase(grade.Columns[i].FieldName)= 'cod_grupo') or
             (lowercase(grade.Columns[i].FieldName)= 'cod_subgrupo') or
             (lowercase(grade.Columns[i].FieldName)= 'cod_grau_d') or
             (lowercase(grade.Columns[i].FieldName)= 'cod_estrutura_d') or
             (lowercase(grade.Columns[i].FieldName)= 'cod_grupo_d') or
             (lowercase(grade.Columns[i].FieldName)= 'cod_subgrupo_d') or
             (lowercase(grade.Columns[i].FieldName)= 'cod_conta_d') or
             (lowercase(grade.Columns[i].FieldName)= 'cod_grau_c') or
             (lowercase(grade.Columns[i].FieldName)= 'cod_estrutura_c') or
             (lowercase(grade.Columns[i].FieldName)= 'cod_grupo_c') or
             (lowercase(grade.Columns[i].FieldName)= 'cod_subgrupo_c') or
             (lowercase(grade.Columns[i].FieldName)= 'cod_conta_c') or

             (lowercase(grade.Columns[i].FieldName)= 'cont_anal_d') or
             (lowercase(grade.Columns[i].FieldName)= 'cont_anal_c') or
             (lowercase(grade.Columns[i].FieldName)= 'cont_anal') or


             (lowercase(grade.Columns[i].FieldName)= 'tipocliente')  then
             grupo:=true;


          criacheck(grade.Columns[i].FieldName,
                    grade.Columns[i].Title.Caption,
                    esq,trunc(grade.Columns[i].Width/7),
                    alinha,grupo,grupo,grupo,grupo,true,soma);

          top:=top+12;

          if  top = 178 then begin
              esq := esq + 100;
              top:=22;
          end;

      end;
    end;

    if tabela<> nil then
       ind:= tabela.IndexFieldNames;

    if tz<> nil then
       ind:= indtz(tz.IndexFieldNames);

    fimp.grupog.Columns :=2;
    fimp.gsrupog.Columns :=fimp.grupog.Columns;
    fimp.gsrupog3.Columns :=fimp.grupog.Columns;
    fimp.gsrupog4.Columns :=fimp.grupog.Columns;



    if visualiza then
       fimp.showmodal
    else
       fimp.btnimprimirClick(application);

    qtdlinha:=0;

    if ind <> '' then begin
       if tabela<> nil then
          tabela.IndexFieldNames := ind  ;

       if tz<> nil then
          tz.IndexFieldNames := ind  ;
    end;

    if tabela<> nil then begin
       tabela.filtered := false;
       tabela.Locate('chave',loc,[]);
       tabela.EnableControls;
    end;

    if tz<> nil then begin
       tz.filtered := false;
       tz.Locate('chave',loc,[]);
       tz.EnableControls;
    end;

end;









procedure cabecaimpressao(form:tform;tit:boolean);
begin
  fmemo:=form;
  memo1 := Trichedit.Create(application);
  memo1.Width := 500;
  memo1.Visible := False;
  memo1.Parent := fmemo;
  memo1.PlainText := False;
  memo1.PlainText := True;
  impmatricial;



  if tit then begin

  if fdm.tbempresa.Active = false then  fdm.tbempresa.Open;

  if fdm.tbempresa['nome'] <> null then
    memo1.Lines.Add(centstr(copy(fdm.tbempresa.FieldByName('nome').AsString, 1,numcoluna)));


  if (fdm.tbempresa['endereco'] <> null) or (fdm.tbempresa['bairro'] <> null) then
    memo1.Lines.Add(centstr(copy(fdm.tbempresa.FieldByName('endereco').AsString +
      ' - ' +
      fdm.tbempresa.FieldByName('bairro').AsString, 1,numcoluna)));

  if (fdm.tbempresa['municipio'] <> null) or (fdm.tbempresa['cep'] <> null) then

    memo1.Lines.Add(centstr(copy(fdm.tbempresa.FieldByName('municipio').AsString +
      ' - ' +
      fdm.tbempresa.FieldByName('uf').AsString + ' - Cep:' +
      fdm.tbempresa.FieldByName('cep').AsString, 1,numcoluna)));

  if (fdm.tbempresa['fone1'] <> null) or (fdm.tbempresa['fone2'] <> null) then
    memo1.Lines.Add(centstr(copy('Fone(s): (' +
      fdm.tbempresa.FieldByName('ddd').AsString + ') ' +
      fdm.tbempresa.FieldByName('fone1').AsString + '  ' +
      fdm.tbempresa.FieldByName('fone2').AsString, 1,numcoluna)));

        if cnpjie then
           if fdm.tbempresa['CNPJ'] <> null then
              memo1.Lines.Add(centstr(copy('CNPJ ' + fdm.tbempresa.FieldByName('cnpj').AsString +
                                           ' IE ' +  fdm.tbempresa.FieldByName('IE').AsString, 1,numcoluna)));

  if fdm.tbempresa['email'] <> null then
    memo1.Lines.Add(centstr(copy('E-Mail:' + fdm.tbempresa.FieldByName('email').AsString,
      1,numcoluna)));

  if fdm.tbempresa['site'] <> null then
    memo1.Lines.Add(centstr(copy('Site:' + fdm.tbempresa.FieldByName('Site').AsString,
      1,numcoluna)));

  if application.Title <> ' S.I.G.A.C.' then  fdm.tbempresa.Close;

  end;
end;


procedure rodapeimpressao(linhas,condensado:boolean);
var
  PrintFile: TextFile;
   j: integer;
  linhafinal,imp: string;
  ini: tinifile;
  embranco: tmemo;
begin           

  Ini := TInifile.Create(conf_local);
  linhafinal := Ini.ReadString('impNfiscal', 'elinha', '10');
  imp := Ini.ReadString('impNfiscal', 'evia', '1');
  ini.Free;

  embranco := Tmemo.Create(application);
  embranco.Visible := False;
  embranco.Parent := fmemo;

  if linhas then begin
          memo1.Lines.Add('');

          if mensagem1 <> '' then
            memo1.Lines.Add(copy(mensagem1, 1,numcoluna));

          if mensagem2 <> '' then
            memo1.Lines.Add(copy(mensagem2, 1,numcoluna));

          if mensagem3 <> '' then
            memo1.Lines.Add(copy(mensagem3, 1,numcoluna));

          if mensagem4 <> '' then
            memo1.Lines.Add(copy(mensagem4, 1,numcoluna));

          memo1.Lines.Add('');
   end;


  valorconfig := '';



  for j := 1 to StrToInt(linhafinal) do  embranco.Lines.Add('   ');


  // impressao 1
  if porta = 'IMPRESSORA PADRAO DO WINDOWS' then
     AssignPrn (PrintFile)
  else
    AssignFile(PrintFile,Porta);

  Rewrite(PrintFile);   // #0#27#64+
  try
    //define a fonte do formulário, e a saída de cada elemento
    Printer.Canvas.Font.Name := 'Courier New';
    Printer.Canvas.Font.Size := 10;

    {if condensado then  Writeln(PrintFile,  #27#15#8+memo1.Text + embranco.text+#0#27#64)
    else                Writeln(PrintFile,  #0#27#64+memo1.Text + embranco.text);}

    if condensado then  Writeln(PrintFile,  #27#15#8+memo1.Text + embranco.text+#0#27#64)
    else                Writeln(PrintFile,  memo1.Text + embranco.text);

  finally
    //fecha o processo de impressão

  System.CloseFile(PrintFile);
  end;


              

  /////////impressao 2

 if (imp='2') or (imp='3') then begin

  if porta = 'IMPRESSORA PADRAO DO WINDOWS' then
     AssignPrn (PrintFile)
  else
    AssignFile(PrintFile,Porta);

  Rewrite(PrintFile);
  try
    //define a fonte do formulário, e a saída de cada elemento
    Printer.Canvas.Font.Name := 'Courier New';
    Printer.Canvas.Font.Size := 10;

    if condensado then  Writeln(PrintFile,  #27#15#8+memo1.Text + embranco.text+#0#27#64)
    else                Writeln(PrintFile,  #0#27#64+memo1.Text + embranco.text);



  finally
    //fecha o processo de impressão

  System.CloseFile(PrintFile);
  end;
  end;


  /////////impressao 2

 if imp='3' then begin

  if porta = 'IMPRESSORA PADRAO DO WINDOWS' then
     AssignPrn (PrintFile)
  else
    AssignFile(PrintFile,Porta);

  Rewrite(PrintFile);
  try
    //define a fonte do formulário, e a saída de cada elemento
    Printer.Canvas.Font.Name := 'Courier New';
    Printer.Canvas.Font.Size := 10;

    if condensado then  Writeln(PrintFile,  #27#15#8+memo1.Text + embranco.text+#0#27#64)
    else                Writeln(PrintFile,  #0#27#64+memo1.Text + embranco.text);


  finally
    //fecha o processo de impressão

  System.CloseFile(PrintFile);
  end;

  end;


  // memo1.Lines.SaveToFile('c:/re.txt');
  memo1.Destroy;
  fmemo:=nil;
end;




procedure impcupom(titulo,numero,adicionais,rodape,colitem,cp1,cp2,cp3,cp4,cp5,
                   s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,obs :string;
                   ntabela,ntabelaitem,ntbdev,ntbserv,tbpp,tblocacao:tzquery; nome:boolean;formu:tform);
var
  tamanho,  i,y, tmcampo, ocupado: integer;
  valores, espaco, valor,cnpj,un,dvenda,usu: string;
begin

  abortaacao(nil,ntabela,'chave','','','','',0);
  cabecaimpressao(formu,true);
  memo1.Lines.Add(linha);
  try
      usu := ntabela.FieldByName('vendedor').AsString
  except
       usu := usuario;
  end;
  memo1.Lines.Add(compstr(Datetimetostr(now), 'ATEND.:' + usu));
  memo1.Lines.Add(uppercase(titulo) + ' N. ' + numero);
  memo1.Lines.Add(linha);
  //dados do cliente

        selecione('select decimaisvenda from tbconfig');
        for y := 1 to sqlpub.FieldByName('decimaisvenda').AsInteger do
            Dvenda := Dvenda + '0';
        sqlpub := nil;


  if nome then begin

  memo1.Lines.Add(copy('Nome: ' + ntabela.FieldByName('codigo').AsString +
                  ' ' +  ntabela.FieldByName('nome').AsString, 1,numcoluna));

  valores:= ntabela.FieldByName('endereco').Text;
  try

  //  valores:= valores + ntabela.FieldByName('numero').Text + ' ';
  except
  end;

  try
//    valores:= valores + ntabela.FieldByName('complemento').Text;
  except
  end;

  memo1.Lines.Add(copy('Endereco: ' + valores, 1,numcoluna));
  valores :='';

  memo1.Lines.Add(COMPSTR('Bairro: ' + ntabela.FieldByName('bairro').Text
                        , 'Cep: ' + ntabela.FieldByName('cep').Text));

  try
     memo1.Lines.Add(COMPSTR('Cidade: ' + ntabela.FieldByName('municipio').Text
                           , 'UF: ' + ntabela.FieldByName('uf').Text));
  except
  end;


  memo1.Lines.Add('Fone: ' +ntabela.FieldByName('fone').Text);

  {try
    valores:= 'CNPJ: ' + ntabela.FieldByName('cnpj').Text;
  except
  end;

  try
    valores:= valores + '  IE: ' + ntabela.FieldByName('ie').Text;
  except
  end;}

  if valores <> '' then
      memo1.Lines.Add(valores);

  memo1.Lines.Add(linha);

  end else begin
      try
      memo1.Lines.Add(copy('Nome: ' + ntabela.FieldByName('nome').AsString, 1,numcoluna));
      memo1.Lines.Add(linha);
      except
     end;
  end;

  //dados extras
  if adicionais <> '' then begin
     memo1.Lines.Add(adicionais);
     memo1.Lines.Add(linha);
  end;

      if  (ntabelaitem <> nil) and
          (ntabelaitem.Active) and
          (ntabelaitem.RecordCount>0) then begin

              memo1.Lines.Add('');
              if lowercase(cp2) = 'descricao' then
                 memo1.Lines.Add('CODIGO/DESCRICAO');

              memo1.Lines.Add(colitem);
              memo1.Lines.Add(linha);

              ntabelaitem.DisableControls;
              ntabelaitem.First;

              while not ntabelaitem.EOF do
              begin
                
                tamanho := numcoluna;
                //1campo a ser impresso
                if lowercase(ntabelaitem.Name) = 'vendaitem' then
                   un:=   copy(ntabelaitem.FieldByName('un').AsString,1,2)+' ';

                if cp2<>'' then
                   memo1.Lines.Add(copy(ntabelaitem.FieldByName(cp1).AsString +
                                   ' ' + ntabelaitem.FieldByName(cp2).AsString, 1,tamanho))
                else
                   memo1.lines.Add(copy(ntabelaitem.FieldByName(cp1).AsString , 1,tamanho));

                valor := un;
                tamanho := 15 ;

                if cp3<>'' then begin
                   tmcampo := length(formatfloat('###,##0.'+Dvenda,ntabelaitem.FieldByName(cp3).AsFloat));
                   ocupado := tamanho - length(valor) + (6 - tmcampo);

                   espaco := '';
                   for i := 1 to ocupado do
                       espaco := espaco + ' ';

                   if cp3<>'qtd' then
                      valor := valor + espaco + ' ' + formatfloat('###,##0.'+Dvenda,ntabelaitem.FieldByName(cp3).AsFloat)
                   else valor := valor + espaco + ' ' + ntabelaitem.FieldByName(cp3).AsString;

                 end;

                if (cp4<>'') and (cp5<>'') then begin
                   tmcampo := length(formatfloat('###,##0.'+Dvenda, ntabelaitem.FieldByName(cp4).AsFloat));

                   ocupado := 8 - tmcampo;

                   espaco := '';
                           for i := 1 to ocupado do
                       espaco := espaco + ' ';

                        valor := valor + espaco + ' ' + formatfloat('###,##0.'+Dvenda,
                                 ntabelaitem.FieldByName(cp4).AsFloat);

                 end else if (cp4<>'') and (cp5='') then
                   memo1.Lines.Add(compstr(valor, formatfloat('###,##0.'+Dvenda,
                                   ntabelaitem.FieldByName(cp4).AsFloat)));

                if cp5<>'' then
                   memo1.Lines.Add(compstr(valor, formatfloat('###,##0.'+Dvenda,
                                   ntabelaitem.FieldByName(cp5).AsFloat)));
                
                ntabelaitem.Next;
                end;

              ntabelaitem.EnableControls;
          end;


      if  (ntbserv <> nil) and
          (ntbserv.Active) and
          (ntbserv.RecordCount>0) then begin

              memo1.Lines.Add('');
              memo1.Lines.Add('');
              memo1.Lines.Add(compstr('COD./SERVICO', 'QTD VR. UNIT   TOTAL'));
              memo1.Lines.Add(linha);
              ntbserv.DisableControls;
              ntbserv.First;

              while not ntbserv.EOF do  begin
                tamanho := numcoluna - 24;

                valor := copy(ntbserv.FieldByName('codigo').AsString +
                              ' ' + ntbserv.FieldByName('descricao').AsString, 1,tamanho);

                tmcampo := length(formatfloat('###,##0.00',
                  ntbserv.FieldByName('qtd').AsFloat));

                ocupado := tamanho - length(valor) + (6 - tmcampo);

                espaco := '';
                for i := 1 to ocupado do
                  espaco := espaco + ' ';

                valor := valor + espaco + ' ' + formatfloat('###,##0.00',
                  ntbserv.FieldByName('qtd').AsFloat);

                tmcampo := length(formatfloat('###,##0.00',
                  ntbserv.FieldByName('vrunit').AsFloat));

                ocupado := 8 - tmcampo;

                espaco := '';
                for i := 1 to ocupado do
                  espaco := espaco + ' ';

                valor := valor + espaco + ' ' + formatfloat('###,##0.00',
                  ntbserv.FieldByName('vrunit').AsFloat);

                memo1.Lines.Add(compstr(valor,
                  formatfloat('###,##0.00',
                  ntbserv.FieldByName('total').AsFloat)));

                ntbserv.Next;
              end;

              ntbserv.EnableControls;
            end;


      if  (ntbdev <> nil) and
          (ntbdev.Active) and
          (ntbdev.RecordCount>0) then begin

              memo1.Lines.Add('');
              memo1.Lines.Add('');
              memo1.Lines.Add(compstr('COD./ITEM DEVOL.', 'QTD VR. UNIT   TOTAL'));

              memo1.Lines.Add(linha);

              ntbdev.DisableControls;
              ntbdev.First;

              while not ntbdev.EOF do
              begin
                tamanho := numcoluna - 24;

                valor := copy(ntbdev.FieldByName('codigo').AsString +
                  ' ' + ntbdev.FieldByName('descricao').AsString, 1,tamanho);

                tmcampo := length(formatfloat('###,##0.00',
                  ntbdev.FieldByName('qtd').AsFloat));

                ocupado := tamanho - length(valor) + (6 - tmcampo);

                espaco := '';
                for i := 1 to ocupado do
                  espaco := espaco + ' ';

                valor := valor + espaco + ' ' + formatfloat('###,##0.00',
                  ntbdev.FieldByName('qtd').AsFloat);

                tmcampo := length(formatfloat('###,##0.00',
                  ntbdev.FieldByName('vrunit').AsFloat));

                ocupado := 8 - tmcampo;

                espaco := '';
                for i := 1 to ocupado do
                  espaco := espaco + ' ';

                valor := valor + espaco + ' ' + formatfloat('###,##0.00',
                  ntbdev.FieldByName('vrunit').AsFloat);

                memo1.Lines.Add(compstr(valor,
                  formatfloat('###,##0.00',
                  ntbdev.FieldByName('total').AsFloat)));

                ntbdev.Next;
              end;

              ntbdev.EnableControls;
           end;




      if  (tblocacao <> nil) and
          (tblocacao.Active) and
          (tblocacao.RecordCount>0) then begin

              memo1.Lines.Add('');
              memo1.Lines.Add('');
              memo1.Lines.Add(compstr('COD./ITEM', 'DEVOL'));
              memo1.Lines.Add(compstr('QTD VR. UNIT',   'TOTAL'));

              memo1.Lines.Add(linha);

              tblocacao.DisableControls;
              tblocacao.First;

              while not tblocacao.EOF do
              begin


                valor := copy(tblocacao.FieldByName('codigo').AsString +
                              ' ' + tblocacao.FieldByName('descricao').AsString, 1,37);

                memo1.Lines.Add(compstr(valor, tblocacao.FieldByName('datadevolucao').AsString));

                valor := formatfloat('###,##0.00', tblocacao.FieldByName('qtd').AsFloat);

                tmcampo := length(formatfloat('###,##0.00', tblocacao.FieldByName('vrunit').AsFloat));

                ocupado := 8 - tmcampo;

                espaco := '';
                for i := 1 to ocupado do
                  espaco := espaco + ' ';

                valor := valor + espaco + ' ' + formatfloat('###,##0.00', tblocacao.FieldByName('vrunit').AsFloat);

                memo1.Lines.Add(compstr(valor, formatfloat('###,##0.00',  tblocacao.FieldByName('total').AsFloat)));
                memo1.Lines.Add(' ');

                tblocacao.Next;
              end;

              tblocacao.EnableControls;
           end;



  if s1 <> '' then  begin
     memo1.Lines.Add(linha);
     memo1.Lines.Add(compstr('SOMA', formatfloat('###,##0.00', ntabela.FieldByName(s1).AsFloat)));
  end;

  if s2<>'' then
     if ntabela.FieldByName(s2).AsFloat > 0 then
        memo1.Lines.Add(Compstr(uppercase(s2),
                        formatfloat('###,##0.00',ntabela.FieldByName(s2).AsFloat)));

  if s3<>'' then
     if ntabela.FieldByName(s3).AsFloat > 0 then
        memo1.Lines.Add(CompStr(uppercase(s3), formatfloat('###,##0.00',
                        ntabela.FieldByName(s3).AsFloat)));

  if s4<>'' then
     if ntabela.FieldByName(s4).AsFloat > 0 then
      memo1.Lines.Add(CompStr(uppercase(s4), formatfloat('###,##0.00',
                      ntabela.FieldByName(s4).AsFloat)));

  if s5<>'' then
     if ntabela.FieldByName(s5).AsFloat > 0 then
      memo1.Lines.Add(CompStr(uppercase(s5), formatfloat('###,##0.00',
                      ntabela.FieldByName(s5).AsFloat)));


  if s16<>'' then  //couvert
     if ntabela.FieldByName(s16).AsFloat > 0 then
      memo1.Lines.Add(CompStr(uppercase(s16), formatfloat('###,##0.00',
                      ntabela.FieldByName(s16).AsFloat)));


  if s6<>'' then begin
     memo1.Lines.Add(linha);
     if ntabela.FieldByName(s6).AsFloat > 0 then
      memo1.Lines.Add(CompStr(uppercase(s6), formatfloat('###,##0.00',
                      ntabela.FieldByName(s6).AsFloat)));
  end;



  if s7<>'' then
     if ntabela.FieldByName(s7).AsFloat > 0 then
      memo1.Lines.Add(CompStr(uppercase(s7), formatfloat('###,##0.00',
                      ntabela.FieldByName(s7).AsFloat)));

  if s8<>'' then
     if ntabela.FieldByName(s8).AsFloat > 0 then
      memo1.Lines.Add(CompStr(uppercase(s8), formatfloat('###,##0.00',
                      ntabela.FieldByName(s8).AsFloat)));
  if s9<>'' then
     if ntabela.FieldByName(s9).AsFloat > 0 then
      memo1.Lines.Add(CompStr(uppercase(s9), formatfloat('###,##0.00',
                      ntabela.FieldByName(s9).AsFloat)));
  if s10<>'' then
     if ntabela.FieldByName(s10).AsFloat > 0 then
      memo1.Lines.Add(CompStr(uppercase(s10), formatfloat('###,##0.00',
                      ntabela.FieldByName(s10).AsFloat)));
  if s11<>'' then
     if ntabela.FieldByName(s11).AsFloat > 0 then
      memo1.Lines.Add(CompStr(uppercase(s11), formatfloat('###,##0.00',
                      ntabela.FieldByName(s11).AsFloat)));
  if s12<>'' then
     if ntabela.FieldByName(s12).AsFloat > 0 then
      memo1.Lines.Add(CompStr(uppercase(s12), formatfloat('###,##0.00',
                      ntabela.FieldByName(s12).AsFloat)));
  if s13<>'' then
     if ntabela.FieldByName(s13).AsFloat > 0 then
      memo1.Lines.Add(CompStr(uppercase(s13), formatfloat('###,##0.00',
                      ntabela.FieldByName(s13).AsFloat)));
  if s14<>'' then
     if ntabela.FieldByName(s14).AsFloat > 0 then
      memo1.Lines.Add(CompStr(uppercase(s14), formatfloat('###,##0.00',
                      ntabela.FieldByName(s14).AsFloat)));
  if s15<>'' then
     if ntabela.FieldByName(s15).AsFloat > 0 then
      memo1.Lines.Add(CompStr(uppercase(s15), formatfloat('###,##0.00',
                      ntabela.FieldByName(s15).AsFloat)));




      if  (tbpp <> nil) and
          (tbpp.Active) and
          (tbpp.RecordCount>0) then begin

              memo1.Lines.Add('');
              memo1.Lines.Add('');
              memo1.Lines.Add('');
              memo1.Lines.Add(compstr('PECA PENDENTE', 'QTD VR. UNIT   TOTAL'));

              memo1.Lines.Add(linha);

              tbpp.DisableControls;
              tbpp.First;

              while not tbpp.EOF do
              begin
                tamanho := numcoluna - 24;

                valor := copy(tbpp.FieldByName('codigo').AsString +
                  ' ' + tbpp.FieldByName('descricao').AsString, 1,tamanho);

                tmcampo := length(formatfloat('###,##0.00',
                  tbpp.FieldByName('qtd').AsFloat));

                ocupado := tamanho - length(valor) + (6 - tmcampo);

                espaco := '';
                for i := 1 to ocupado do
                  espaco := espaco + ' ';

                valor := valor + espaco + ' ' + formatfloat('###,##0.00',
                  tbpp.FieldByName('qtd').AsFloat);

                tmcampo := length(formatfloat('###,##0.00',
                  tbpp.FieldByName('vrunit').AsFloat));

                ocupado := 8 - tmcampo;

                espaco := '';
                for i := 1 to ocupado do
                  espaco := espaco + ' ';

                valor := valor + espaco + ' ' + formatfloat('###,##0.00',
                  tbpp.FieldByName('vrunit').AsFloat);

                memo1.Lines.Add(compstr(valor,
                  formatfloat('###,##0.00',
                  tbpp.FieldByName('total').AsFloat)));

                tbpp.Next;
              end;

              tbpp.EnableControls;
          end;


  try
  if ntabela.fieldbyname('obs').AsString <> '' then begin
     memo1.Lines.Add(' ');
     memo1.Lines.Add(linha);
     memo1.Lines.Add('Obs: '+ntabela.fieldbyname('obs').AsString);
     memo1.Lines.Add(linha);
  end;
  except end;

  if rodape <> '' then begin
     memo1.Lines.Add(linha);
     memo1.Lines.Add(rodape);
     memo1.Lines.Add(linha);
  end;

  rodapeimpressao(true,false);
end;


procedure imprecibo(vr:real;referente:string;flocal:tform);
var
numero:integer;
ext,endereco:string;

codigo,st,campo:string;
begin

              codigo := '';
              if inputquery('Localiza Cliente','Digite o código, ou o CNPJ/CPF(só números), ou as iniciais do nome do cliente:',st) then else abort;

              campo :='nome';

              if StrIsfloat(st)  then
                 if length(st) > 9 then begin
                    campo :='cnpj';
                    st :=  formatacpf_cnpj(st);
                 end else
                    campo :='codigo';


     listagem(campo,st,cod,1,0);

     if fdm.sg.Active then
        with fdm.query1 do begin

             fdm.tbempresa.Open;

             endereco := fdm.tbempresa.fieldbyname('Endereco').AsString + ' - '+
                                 fdm.tbempresa.fieldbyname('bairro').AsString + ' - '+
                                 fdm.tbempresa.fieldbyname('numero').AsString + '   '+
                                 fdm.tbempresa.fieldbyname('Complemento').AsString + ' - '+
                                 fdm.tbempresa.fieldbyname('municipio').AsString;

             ext :='***** ' + extenso(vr,'Real','Reais')+'******';

             close;
             sql.clear;
             sql.add('select max(numero) as numero from tbrecibo ');
             open;
             numero :=fieldbyname('numero').AsInteger + 1;
             close;

             sql.clear;
             sql.add( 'insert into tbrecibo(numero,data, nome, endereco, '+
                           ' extenso, referente, valor,emitente,cnpj,'+
                           ' enderecoemitente) values ('+
                           quotedstr(inttostr(numero))+
                           ', now() ,'+
                           quotedstr(fdm.sg.fieldbyname('nome').AsString)+', '+
                           quotedstr(fdm.sg.fieldbyname('endereco').AsString+ ' '+
                                     fdm.sg.fieldbyname('numero').AsString+ ' '+
                                     fdm.sg.fieldbyname('complemento').AsString+ ' '+
                                     fdm.sg.fieldbyname('bairro').AsString+ ' '+
                                     fdm.sg.fieldbyname('municipio').AsString+ ' '+
                                     fdm.sg.fieldbyname('cep').AsString+ ' '+
                                     fdm.sg.fieldbyname('uf').AsString+ ' '+
                                     fdm.sg.fieldbyname('fone').AsString+ ' '+
                                     fdm.sg.fieldbyname('cnpj').AsString+ ' '+
                                     fdm.sg.fieldbyname('ie').AsString)+','+
                           quotedstr('A importância de: '+ ext)+', '+
                           quotedstr(referente)+', '+
                           realdblstr(vr)+', '+
                           quotedstr(fdm.tbempresa.fieldbyname('nome').AsString)+', '+
                           quotedstr(fdm.tbempresa.fieldbyname('cnpj').AsString)+', '+
                           quotedstr(endereco)+ ')');
               execsql;

               cabecaimpressao(flocal,true);

               memo1.Lines.Add('=====================================================================');
               memo1.Lines.Add(#27#14+'RECIBO N. '+ formatfloat('000000',numero)+ ' >>   R$ '+
                                        formatfloat('###,##0.00',vr));
               memo1.Lines.Add(#27#18);
               memo1.Lines.Add('=====================================================================');

               memo1.Lines.Add('Recebi(emos) de '+fdm.sg.fieldbyname('nome').AsString);
               memo1.Lines.Add('CNPJ/CPF: '+ fdm.sg.fieldbyname('cnpj').AsString +
                               '  IE/RG: '+ fdm.sg.fieldbyname('ie').AsString);

               memo1.Lines.Add('---------------------------------------------------------------------');
               memo1.Lines.Add('Endereço: '+ fdm.sg.fieldbyname('endereco').AsString+ ' '+
                                     fdm.sg.fieldbyname('numero').AsString+ ' '+
                                     fdm.sg.fieldbyname('complemento').AsString);
               memo1.Lines.Add('Bairro: '+fdm.sg.fieldbyname('bairro').AsString+ '  '+
                               fdm.sg.fieldbyname('municipio').AsString +
                               '  Cep: '+ fdm.sg.fieldbyname('cep').AsString+' '+
                               fdm.sg.fieldbyname('uf').AsString);

               memo1.Lines.Add('Fone: '+fdm.sg.fieldbyname('fone').AsString+ '  CNPJ/CPF: '+
                               fdm.sg.fieldbyname('cnpj').AsString +
                               '  IE/RG: '+ fdm.sg.fieldbyname('ie').AsString);

               memo1.Lines.Add('---------------------------------------------------------------------');
               memo1.Lines.Add('A importancia de: '+ ext);
               memo1.Lines.Add('---------------------------------------------------------------------');
               memo1.Lines.Add('Referente: '+referente);
               memo1.Lines.Add(' ');
               memo1.Lines.Add(' ');
               memo1.Lines.Add(' ');


               fdm.tbempresa.open;
               memo1.Lines.Add(fdm.tbempresa.fieldbyname('municipio').AsString+
                           ', ' + formatdatetime('dd',date) +
                                      ' DE ' + formatdatetime('mmmm',date)+
                                      ' DE ' + formatdatetime('yyyy',date));
               memo1.Lines.Add('---------------------------------------------------------------------');
               memo1.Lines.Add('Emitente: '+ fantasiaempresa + '  CNPJ: '+
                               fdm.tbempresa.fieldbyname('CNPJ').asstring);
               memo1.Lines.Add('---------------------------------------------------------------------');
               memo1.Lines.Add('Endereco: '+endereco);
               memo1.Lines.Add('---------------------------------------------------------------------');
               memo1.Lines.Add(' ');
               memo1.Lines.Add('Ass:');
               memo1.Lines.Add('----------------------------------');

               fdm.tbempresa.close;
               rodapeimpressao(false,false);
               fechatg;
      end;
end;



procedure impficha(form:tform;tb,tb2:tclientdataset;tz:tzquery;ds,ds2:tdatasource;grade:tdbgrid;titulo:string;branco,itens:boolean);
var         
        qimpressao: TRLReport;
        tit,banda,bd2,bd3,bd4,bd5: TRLBand;
        ldatahora: TRLSystemInfo;
        LTITULO: TRLAngleLabel;
        exp,loc:string;
        i,j,topo,qtdcampo,campoad,ctcampo,topobranco:integer;
        lb,lb2:trllabel;
        ldb:TRLDBMEMO;
        m1 : TRLDBMEMO;
        mm : TRLMEMO;
        bmaquina: TRLSubDetail;
        cpficha:boolean;

begin

        if branco then begin

           if tb<> nil then begin
              loc := tb.fieldbyname('chave').AsString ;
              tb.Filter:='chave = '+ quotedstr(tb.fieldbyname('chave').AsString);
              tb.Filtered := true;
           end;

           if tz<> nil then begin
              loc := tz.fieldbyname('chave').AsString ;
              tz.Filter:='chave = '+ quotedstr(tz.fieldbyname('chave').AsString);
              tz.Filtered := true;
           end;

           topobranco:=8;
        end;

        qimpressao:= TRLReport.Create(application);
        with qimpressao do begin;
          Top := -2000;
          left := -300;
          parent:= form;
          Width := 794;
          Height := 1123;
          DefaultFilter := fdm.filtro;
          PageSetup.PaperSize := fpCustom;
          qimpressao.DataSource :=ds;

          fdm.tbconfig.Open;
          PageSetup.PaperHeight:= fdm.tbconfig.fieldbyname('Lreport').AsInteger;
          PageSetup.PaperWidth := fdm.tbconfig.fieldbyname('Areport').AsInteger;
          fdm.tbconfig.close;

        end;

        tit:= TRLBand.Create(application);
        with tit do begin
             parent:=qimpressao;
             Height := 133;
             AutoSize := True;
             BandType := btHeader;
        end;

      //titulo
      LTITULO := TRLAngleLabel.Create(application);
      with LTITULO do begin
                    parent:=tit;
                    Left := 0;
                    Top := 77;
                    Width := 718;
                    Height := 16;
                    Align := faTop;
                    Alignment := taCenter;
                    Borders.Sides := sdCustom;
                    Borders.DrawBottom := True;
                    Font.Charset := DEFAULT_CHARSET;
                    Font.Color := clBlack;
                    Font.Height := -16;
                    Font.Name := 'Arial';
                    Font.Style := [fsBold];
                    caption :=titulo;
      end;

      if branco = false then begin
         //numpagina
         ldatahora:= TRLSystemInfo.Create(application);
         with ldatahora do begin
               parent:=tit;
               Height := 10;
               Align := faTop;
               Alignment := taRightJustify;
               Font.Height := -8;
               Font.Name := 'Small Fonts';
               Font.Style:=[fsunderline];
               Info := itPagePreview;
               Text := uppercase(formatdatetime('dddd',date) + ', '+
                                 formatdatetime('dd/mm/yy',date) +' '+
                                 timetostr(now) +'  Pag.: # de #');
         end;
      end;


        banda:= TRLBand.Create(application);
        with banda do begin
             parent:=qimpressao;
             AutoSize := True;
             BandType := btDetail;
             if branco = false then
                Borders.DrawBottom := true;

             BeforePrint := fdm.imBeforePrint;
        end;


        imagem:= TRLImage.Create(application);
        with imagem do begin
             parent:=banda;
             Width := 97;
             Height := 89;
             Stretch := True;
        end;


        //para dar um espaco
        bd2:= TRLBand.Create(application);
        with bd2 do begin
             parent:=qimpressao;
             AutoSize := false;
             BandType := btDetail;
             Height:=15;
        end;


        ctcampo:=0;
        qtdcampo:= trunc(grade.Columns.Count/2);
        campoad:= grade.Columns.Count mod 2;

        for i:=0 to grade.Columns.Count-1 do
            if grade.Columns[i].Width  > j then
               j:= grade.Columns[i].Width;

       topo:=0;

       // cria os campos;
     for i:=0 to grade.Columns.Count-1 do begin

         cpficha := false;

         if (branco) and((lowercase(grade.Columns[i].FieldName) = 'foneconjuge') or
           (lowercase(grade.Columns[i].FieldName) = 'referencia') or
           (lowercase(grade.Columns[i].FieldName) = 'conjuge') or
           (lowercase(grade.Columns[i].FieldName) = 'trabalho') or
           (lowercase(grade.Columns[i].FieldName) = 'skype') or
           (lowercase(grade.Columns[i].FieldName) = 'msn') or
           (lowercase(grade.Columns[i].FieldName) = 'site') or
           (lowercase(grade.Columns[i].FieldName) = 'email') or
           (lowercase(grade.Columns[i].FieldName) = 'ufcobranca') or
           (lowercase(grade.Columns[i].FieldName) = 'cepcobranca') or
           (lowercase(grade.Columns[i].FieldName) = 'municipiocobranca') or
           (lowercase(grade.Columns[i].FieldName) = 'bairrocobranca') or
           (lowercase(grade.Columns[i].FieldName) = 'complementocobranca') or
           (lowercase(grade.Columns[i].FieldName) = 'numerocobranca') or
           (lowercase(grade.Columns[i].FieldName) = 'enderecocobranca') or
           (lowercase(grade.Columns[i].FieldName) = 'transportadora') or
           (lowercase(grade.Columns[i].FieldName) = 'cargo') or
           (lowercase(grade.Columns[i].FieldName) = 'contato') or
           (lowercase(grade.Columns[i].FieldName) = 'fax') or
           (lowercase(grade.Columns[i].FieldName) = 'data') or
           (lowercase(grade.Columns[i].FieldName) = 'nome') or
           (lowercase(grade.Columns[i].FieldName) = 'cep') or
           (lowercase(grade.Columns[i].FieldName) = 'endereco') or
           (lowercase(grade.Columns[i].FieldName) = 'numero') or
           (lowercase(grade.Columns[i].FieldName) = 'complemento') or
           (lowercase(grade.Columns[i].FieldName) = 'bairro') or
           (lowercase(grade.Columns[i].FieldName) = 'municipio') or
           (lowercase(grade.Columns[i].FieldName) = 'uf') or
           (lowercase(grade.Columns[i].FieldName) = 'nascimento') or
           (lowercase(grade.Columns[i].FieldName) = 'cnpj') or
           (lowercase(grade.Columns[i].FieldName) = 'ie') or
           (lowercase(grade.Columns[i].FieldName) = 'ddd') or
           (lowercase(grade.Columns[i].FieldName) = 'fone') or
           (lowercase(grade.Columns[i].FieldName) = 'fone2') or
           (lowercase(grade.Columns[i].FieldName) = 'filho') or
           (lowercase(grade.Columns[i].FieldName) = 'ct') or
           (lowercase(grade.Columns[i].FieldName) = 'pis') or
           (lowercase(grade.Columns[i].FieldName) = 'celular') or
           (lowercase(grade.Columns[i].FieldName) = 'funcao') or
           (lowercase(grade.Columns[i].FieldName) = 'fone3')) then cpficha := true;

         if (not branco) and (lowercase(grade.Columns[i].FieldName) <> 'chave') then
            cpficha := true;

       //if ctcampo =0 then ctcampo :=-1;
       if cpficha then begin

       if (ctcampo-campoad) = qtdcampo then topo :=0;

       lb := trllabel.Create(application);
       with lb do begin
            alignment:=taRightJustify;
            Height := 16;
            width :=100;
            autosize := false;
            Parent := banda;
            Font.Name := 'Arial Narrow';
            Font.Style := [fsbold];
            Font.Size :=10;
            caption:= grade.Columns[i].Title.Caption + ': ';
            transparent := true;
            top := topo;

            //if i <=8 then
              // left :=100

           // else
            if (ctcampo-campoad) < qtdcampo then
               left :=0
            else left := 480;

        end;



       if branco = false then begin
          ldb := TRLDBMEMO.Create(application);
          with ldb do begin
               Height := 16;
               autosize := false;
               Parent := banda;
               width := 320;
               DataField := grade.Columns[i].FieldName;
               DataSource := ds;
               Font.Name := 'Arial Narrow';
               Font.Size :=10;
               transparent := true;
               top := topo;

             //  if i <=8 then
               //   left :=205

             //  else
               if (ctcampo-campoad) < qtdcampo then
                  left :=105
               else left := 480+105;
           end;
          end;

       //para preencher. Ficha em branco
     if branco then begin
       lb2 := trllabel.Create(application);
       with lb2 do begin
               Height := 16;
               autosize := false;
               Parent := banda;
               width := 300;
               Font.Name := 'Arial Narrow';
               Font.Size :=10;
               transparent := true;
               top := topo;
               borders.DrawBottom:=true;

               if (ctcampo-campoad) < qtdcampo then
                  left :=105
               else left := 480+105;
        end;


          end;

          topo:=topo+12+topobranco;
          ctcampo:=ctcampo+1;
        end;
      end;

       topo := topo+4;
      //////// se tiver observacao adicional

          mm := TRLMEMO.Create(application);
          with mm do begin
               Parent := banda;
               width := 320;
               font.Style :=[fsbold];
               Font.Size :=10;
               transparent := true;
               top := topo+14;
               left :=0;
               lines.Add('Outros dados:');
               if rodapecliente  <> '' then begin
                  lines.Add('');
                  lines.Add(rodapecliente);
               end;
          end;

                                         {

       lb2 := trllabel.Create(application);
       with lb2 do begin
               Parent := banda;
               top := topo+14;
               left :=0;
               caption := 'Outros dados:   ' +rodapecliente;
               font.Style :=[fsbold];
        end;

       fdm.tbconfig.Open;
                            }
       {if branco = false then begin
          m1 := TRLDBMEMO.Create(application);
          with m1 do begin
               Parent := banda;
               width := 320;
               DataField := 'obs1';
               DataSource := ds;
               Font.Name := 'Lucida Console';
               Font.Size :=10;
               transparent := true;
               top := topo+28;
               left :=0;
          end;
       end;  }

       //imprime itens vinculado
       if itens then begin

          bmaquina := TRLSubDetail.Create(application);
          with bmaquina do begin
               Height := 60;
               Borders.Sides := sdCustom;
               DataSource := ds2;
               parent :=qimpressao;
          end;

        bd3:= TRLBand.Create(application);
        with bd3 do begin
             parent:=bmaquina;
             BandType := btColumnHeader;
             Height:=25;
        end;

       lb2 := trllabel.Create(application);
       with lb2 do begin
               Parent := bd3;
               left :=0;
               Caption := 'Aparelho   Marca     Modelo    Série      >> Obs:  __/__/_____  ,  __/__/_____';
               font.Style :=[fsbold];
               font.Name := 'Lucida Console';
               top :=10;
        end;


        bd4:= TRLBand.Create(application);
        with bd4 do begin
             parent:=bmaquina;
             BandType := btDetail;
             Height := 14;
             borders.DrawBottom:=true;
       end;


          ldb := TRLDBMEMO.Create(application);
          with ldb do begin
               Height := 16;
               autosize := false;
               Parent := bd4;
               width := 90;
               DataField := 'aparelho';
               DataSource := ds2;
               Font.Name := 'Arial Narrow';
               Font.Size :=8;
               transparent := true;
           end;

          ldb := TRLDBMEMO.Create(application);
          with ldb do begin
               Height := 16;
               autosize := false;
               Parent := bd4;
               width := 90;
               DataField := 'marca';
               DataSource := ds2;
               Font.Name := 'Arial Narrow';
               Font.Size :=8;
               transparent := true;
               left:=99;
           end;

          ldb := TRLDBMEMO.Create(application);
          with ldb do begin
               Height := 16;
               autosize := false;
               Parent := bd4;
               width := 90;
               DataField := 'modelo';
               DataSource := ds2;
               Font.Name := 'Arial Narrow';
               Font.Size :=8;
               transparent := true;
               left:= 191;
           end;


          ldb := TRLDBMEMO.Create(application);
          with ldb do begin
               Height := 16;
               autosize := false;
               Parent := bd4;
               width := 90;
               DataField := 'serie';
               DataSource := ds2;
               Font.Name := 'Arial Narrow';
               Font.Size :=8;
               transparent := true;
               left:= 283;
           end;

        bd5:= TRLBand.Create(application);
        with bd5 do begin
             parent:=bmaquina;
             BandType := btSummary;
             Height:=13;
       end;

    end;


          exp := '1';
          inputquery('Impressão', 'Digite uma opção:' + #13 + #13 +
                    '1 = Imprimir' + #13 +
                    '2 = Exportar...' + #13 , exp) ;

           if exp = '2' then
              exportarRL(qimpressao,'digite o nome','email@email.com')
           else
              qimpressao.Previewmodal;

        qimpressao.Free;

        if branco then begin

           if tb <> nil then begin
              tb.Filtered := false;
              tb.Locate('chave',loc,[]);
           end;

           if tz <> nil then begin
              tz.Filtered := false;
              tz.Locate('chave',loc,[]);
           end;

        end;


end;


procedure baixaconta;
var
total :real;
crit,codconta,contacheque,contacartao,baixarconta,baixarcontac, modalidade,modulo:string;
sq2,sq:tzquery;



                      
      procedure bx(fl:integer);
      var tb,movimento,dc,contabanco:string;
      begin
         with sq do begin
              sql.clear;
              sql.add('select planocontas,contacheque,contacartao,contachequep,contacartaop, '+
                      ' baixarconta, baixarcontaC, baixarcontap, baixarcontaCp from tbconfig');
              open;

              if fl = 1 then begin//pagar
                 tb        := 'tbpagar';
                 modulo    := '10';
                 dc        := 'D';
                 movimento := 'movimentopagar';

                 if  fieldbyname('contachequep').asstring <> '' then contacheque := fieldbyname('contachequep').asstring;
                 if  fieldbyname('contacartaop').asstring <> '' then contacartao := fieldbyname('contacartaop').asstring;
                 if  fieldbyname('baixarcontap').asstring <> '' then baixarconta := fieldbyname('baixarcontap').asstring;
                 if  fieldbyname('baixarcontaCp').asstring <> '' then baixarcontac := fieldbyname('baixarcontaCp').asstring;

              end else begin
                 tb := 'tbreceber';
                 modulo    := '9';
                 movimento := 'movimentoreceber';
                 dc        := 'C';

                 if  fieldbyname('contacheque').asstring <> '' then contacheque := fieldbyname('contacheque').asstring;
                 if  fieldbyname('contacartao').asstring <> '' then contacartao := fieldbyname('contacartao').asstring;
                 if  fieldbyname('baixarconta').asstring <> '' then baixarconta := fieldbyname('baixarconta').asstring;
                 if  fieldbyname('baixarcontaC').asstring <> '' then baixarcontac := fieldbyname('baixarcontaC').asstring;

             end;
         end;


        crit :='';
        if (baixarconta = 'S') and (baixarcontac = 'S') then crit := '  and (ch = "S" or ch = "P" or ch = "C")' else
        if baixarconta = 'S' then                            crit := '  and (ch = "S" or ch = "P")' else
        if baixarcontac = 'S' then                           crit := '  and ch = "C"';

        //se for para baixar
        if crit <> '' then begin
           crit :=  ' where diferenca > 0 and dtvencimento < now() ' + crit + sqlempresa(1,1,'');

           with sq do begin
                sql.Clear;
                sql.Add('select ch, codconta, codconta2, codconta3, sum(diferenca)as valor from '+tb+' '+ crit + ' group by codconta3 order by codconta3');
                open;
           end;

           while not sq.Eof do begin

                 abreconfig(movimento,'tbconfig');
                 if valorconfig = '' then valorconfig :='0';

                 sq.edit;
                 if sq['ch'] = 'C' then begin
                    if sq['codconta2'] = null then sq['codconta2'] := contacartao;
                    if sq['codconta3'] = null then sq['codconta3'] := contacartao;

                 end else begin
                    if sq['codconta2'] = null then sq['codconta2'] := contacheque;
                    if sq['codconta3'] = null then sq['codconta3'] := contacheque;
                 end;

                 if planocontas then begin
                    //plano de contas
                    alimentaconta(sq.fieldbyname('codconta2').AsString,
                                  sq.fieldbyname('codconta3').AsString, '',
                                  modulo,
                                  inttostr((strtoint(valorconfig) +1)), date,
                                  sq.fieldbyname('valor').AsFloat);
                    sq.cancel;

                 end else begin //banco
                     if sq['ch'] = 'C' then begin
                        modalidade := 'CA';
                        contabanco := contacartao;
                     end else begin
                        modalidade := 'CH';
                        contabanco := contacheque;
                     end;

                     gravabancovr(sq.fieldbyname('codconta3').AsInteger ,dc,
                                 inttostr(strtoint(valorconfig) + 1),
                                 'BAIXA AUTO', '10', modalidade,
                                 sq.fieldbyname('valor').AsFloat,
                                 strtoint(valorconfig) + 1);
                 end;

                 gravaconfig(movimento,inttostr((strtoint(valorconfig) +1)));
                 selecione( 'update '+tb+' set movimentopagar = ' + inttostr((strtoint(valorconfig) +1))+ crit );

                 sq.next;
           end;


       with sq do begin
            sql.Clear;
            sql.Add('select codigo from '+ tb + crit);
            open;
       end;


      //baixa a conta pagar cartao
       selecione( 'update '+tb+' set ' +
                    ' dtpagamento = dtvencimento ' +
                    ' ,recebido = vrdocumento ' +
                    ' ,diferenca = 0 ' + crit);

       while not sq.Eof do begin
             if fl = 1 then saldofornecedor(sq.fieldbyname('codigo').AsString)
                       else saldocliente(sq.fieldbyname('codigo').AsString);
             sq.next;
       end;
       sq.Close;

        end;
      end;

var dt:string;

begin
        //limpa as senhas velhas
        dt := formatdatetime('yyyy-mm-dd',date-30);
        selecione('delete from tbsenha where data < '+quotedstr(dt));

        dt := formatdatetime('yyyy-mm-dd',date-90);
        selecione('delete from tbusuarioalteracoes where data < '+quotedstr(dt));


         sq:= tzquery.Create(application);
         sq.Connection := fdm.conector;
         sq2:= tzquery.Create(application);
         sq2.Connection := fdm.conector;

         bx(1);//pagar
         bx(2);//receber
         sq.Destroy;
         sq2.Destroy;

end;


function str(bruto:string;tm,al:integer): string;
var
  i: integer;
  vr,espaco:string;
begin

      for i := 1 to tm-length(bruto) do
           espaco := espaco + ' ';

      if al = 0 then
         vr:= bruto + espaco
      else
         vr:= espaco+bruto;

       Result :=vr;
end;

procedure cadp (tab,sq,cap,campo1,campo2,
                ncb1_,cb1tb_,cb1_ ,ncb2_,cb2tb_,cb2_, ncb3_,cb3tb_,cb3_,
                cpn1_, cpn2_,nnul_,memo_:string;i,link:integer);
begin


          Acesso1('Cadastro');
          fcad := tfcad.Create(application, tab,sq,cap,          //tabela que vai usar ou cod sql na 2ª + titulo
                                            campo1,campo2,       //campos que nao devem duplicar
                                            ncb1_,cb1tb_,cb1_,    //combo1(campo,tabela,nomecampotabela)
                                            ncb2_,cb2tb_,cb2_,  //combo2(campo,tabela,nomecampotabela)
                                            ncb3_,cb3tb_,cb3_,  //combo2(campo,tabela,nomecampotabela)
                                            cpn1_,cpn2_,         //campos auto incremento
                                            nnul_,               //campo que nao ser nulo
                                            memo_,               //campo memo
                                            i,                   //onde vai comecar a criar os campos
                                            link);               //link
          fcad.showmodal;
end;




procedure loccampo (tabela:tclientdataset;tz:tzquery; campo,campo2,campo3,campo4:string);
begin
          flocaliza := tflocaliza.Create(application, tabela, tz, campo,campo2,campo3,campo4);
          flocaliza.showmodal;
end;


procedure noduplica(campo,nome,tabela,valor,chave:string;sn:boolean);
var
sqlD:tzquery;
criterio:string;
begin

           sqlD :=  tzquery.Create(application);
           with sqld do begin
                Connection := fdm.conector;

                if valor <> '' then begin

                   if chave <> '' then
                      criterio := ' and chave <> ' + quotedstr(chave);

                   close;
                   sql.clear;
                   sql.add( 'select '+campo+', '+nome+' as nome from '+tabela+
                                 ' where '+campo+' = ' + quotedstr(valor) + criterio );
                   open;

                // se já existir e nao for obrigatorio
                if (not IsEmpty) and (not sn) then begin
                   if not msg('('+fieldbyname('nome').AsString + ') Já está cadastrado com este '+campo+'. Deseja cadastrar mesmo assim?',2) then begin
                      destroy;
                      abort;
                   end;
                end;

                // se já existir e nao for obrigatorio
                if (not IsEmpty) and (sn) then begin
                    msg(pchar('('+fieldbyname('nome').AsString + ') Já está cadastrado com este '+campo+'.'),0);
                    destroy;
                    abort;
                end;


             end;
             destroy;
          end;

end;




procedure estoquefilial(codigo:string);
var
codprod,msgnet,resultado,descricao,st,campo:string;
begin

            vf:=false;
            codloc :='';
            periodo2('atuafiliais','','_','','','',307,449,0);
            if (fdm.tg.Active = false) or (fdm.tg.RecordCount = 0) or (vf=false) then abort;
            vf:=false;

              codloc := codigo;
              st :=msgi('Localizar o produto: '+#13+'Digite o código ou as iniciais da descrição:',0);

              if StrIsfloat(st)  then
                 campo :='codigo'
              else
                 campo :='descricao';

              listagem(campo,st,'',5,0);
              //fechatg;

              if fdm.sg['chave']=null then abort;

            msgnet:='';
            resultado:='';
            descricao := fdm.sg.fieldbyname('codigo').AsString + ' - '+
                         fdm.sg.fieldbyname('descricao').AsString;
            codprod := fdm.sg.fieldbyname('codigo').AsString;
            fechatg;


            with fdm.tg do begin

                 while not eof do begin

                      if ativanet(fdm.tg.fieldbyname('endereco').AsString,fdm.tg.fieldbyname('banco').AsString,
                                  fdm.tg.fieldbyname('usuario').AsString,fdm.tg.fieldbyname('senha').AsString) then begin

                          with fdm.snet do begin
                               fdm.snet.Connection := fdm.conectnet;
                               close;
                               sql.Clear;
                               sql.Add('select codigo, estoque from tbproduto where codigo = '+ quotedstr(codprod));
                               //debugstr(fdm.snet);
                               open;

                               if fdm.snet['codigo'] <> null then
                                  resultado:= resultado +#13+
                                              floattostr(fdm.snet.fieldbyname('estoque').AsFloat)+  ' = '+ fdm.tg.fieldbyname('nome').AsString
                               else resultado:= resultado +#13+'O código '+cod+
                                                          ' não está cadastrado em '+ fdm.tg.fieldbyname('nome').AsString;

                               close;
                           end;

                       end else msgnet:= msgnet + #13+ 'Não foi possível conectar a '+  fieldbyname('nome').AsString;

                       Next;
                 end;

                 close;
            end;

            fdm.snet.close;
            cod:='';
            msg('Estoque: '+ descricao + #13+#13+
                              'Qtd/Nome Loja'+#13+ resultado+#13+msgnet,0);
           codloc := '';
           ativanet('','','','');

end;



function contatocliente(chave,nome:string):string;
var
sqld:tzquery;
sen,codigo,cnpj:string;
begin

       if responsavel = 'VITALCRED' then begin
           sqld := tzquery.create(application);

            with sqld do begin
                 sqld.Connection := fdm.conector;
                 sql.add( 'select cnpj from from tbcliente chave = '+quotedstr(chave));
                 open;
                 cnpj := fieldbyname('cnpj').AsString;

                 close;

                 sql.clear;
                 sql.add( 'select cnpj from from tbcliente chave = '+quotedstr(chave));

                 if (sqld['cnpj']=null) or
                    (sqld.FieldByName('cnpj').AsString = '') or
                    (sqld.FieldByName('cnpj').AsString = '000.000.000-00') or
                    (sqld.FieldByName('cnpj').AsString = '00.000.000/0000-00') then msg('#CNPJ/CPF deste contato não é válido.',0);


                 sql.clear;
                 sql.add( 'select chave from tbcliente where codigo > 0 and (flag <> "D" or flag is null) and cnpj = '+
                          quotedstr(cnpj));
                 open;

                 if fieldbyname('chave').AsInteger >0 then msg('#Este CNPJ já está cadastrado.',0);


                 sql.clear;
                 sql.add( 'select max(codigo)as codigo from tbcliente '+
                          ' where ctp is null ');
                 Open;
                 codigo := inttostr(fieldbyname('codigo').AsInteger+1);


                 //inputquery('Código do cliente','Digite o código para este cliente',st);


                 close;
                 sql.clear;
                 sql.add('select chave from tbcliente where ctp is null and codigo = '+quotedstr(codigo));
                 open;

                 if sqld['chave']<> null then begin
                    showmessage('Favor repetir a operação.');
                    close;
                    destroy;
                    abort;
                 end;

                close;
                sql.clear;

                sen := ', transportadora ='+ quotedstr(tiraacento(copy(tiraespaco(nome),1,6)+codigo)) ;
                sen := sen + ', filial = ' +  quotedstr(floattostr((strtoint(codigo)* trunc(date))));


                sql.add('update tbcliente set ctp = null, '+
                               ' codigo = '+quotedstr(codigo)+ sen+
                               ' where chave = '+ quotedstr(chave));
                 execsql;
                 destroy;
            end;

            result := codigo;
       end;
end;




procedure tbg(scr,indice:string);
begin
          fdm.sg.sql.Clear;
          fdm.sg.SQL.Add(scr);
          fdm.tg.IndexName := indice;

          fdm.tg.close;
          fdm.tg.Open;
end;

procedure tbp(scr:string;MSource:tdatasource;MFields,indice:string);
begin
          fdm.sp.sql.Clear;
          fdm.sp.SQL.Add(scr);
          fdm.tp.MasterSource := MSource;
          fdm.tp.MasterFields := MFields ;
          fdm.tp.IndexName := indice;

          fdm.tp.close;
          fdm.tp.Open;
end;


procedure reltb(tabela:tclientdataset;titulo,ecabeca,
                soma1,soma2, soma3,soma4, soma5, soma6, soma7, soma8, soma9, soma10, soma11, soma12, soma13 :string);


   function indduplo(const strin: string): boolean;
   var
     Count: integer;
   begin
     Result := false;
     if Length(strin) > 0 then
       for Count := 0 to length(strin) do
         if strin[Count] in [';'] then
           Result := true;
   end;



var i :integer;
begin                     
        application.CreateForm(tfrelatorio,frelatorio);
        frelatorio.ds.DataSet := tabela;
        frelatorio.titulo := titulo ;
        frelatorio.tbrel := tclientdataset.Create(application);
        frelatorio.tbrel := tabela;

        frelatorio.Label17.Hide;
        frelatorio.md1.Hide;
        frelatorio.md2.Hide;

        if indduplo(tabela.IndexFieldNames) then begin
           frelatorio.llocalizar.Hide;
           frelatorio.elocalizar.Hide;
           frelatorio.Panel1.Height :=90;
        end;

        frelatorio.lqtd.Hide;
//        frelatorio.btnfiltro.Hide;

        if soma1 = '' then begin
           frelatorio.prodape1.Hide;
           frelatorio.prodape2.Hide;
        end;   

        frelatorio.soma1 := soma1;
        frelatorio.soma2 := soma2;
        frelatorio.soma3 := soma3;
        frelatorio.soma4 := soma4;
        frelatorio.soma5 := soma5;
        frelatorio.soma6 := soma6;
        frelatorio.soma7 := soma7;
        frelatorio.soma8 := soma8;
        frelatorio.soma9 := soma9;
        frelatorio.soma10 := soma10;
        frelatorio.soma11 := soma11;
        frelatorio.soma12 := soma12;
        frelatorio.soma13 := soma13;

        frelatorio.grade.Columns[0].visible := false;
        if frelatorio.grade.Columns[1].FieldName = 'link' then  frelatorio.grade.Columns[1].visible := false;
        if frelatorio.grade.Columns[2].FieldName = 'chavegrade' then  frelatorio.grade.Columns[2].visible := false;

        frelatorio.Caption := titulo;

        if ecabeca <> '' then
           frelatorio.Panel1.Caption := ecabeca;


        frelatorio.Inserirchequesselecionados1.visible:=  titulo ='Listagem de cheques';
        titgrade(frelatorio.grade,frelatorio.tbrel,nil);
        frelatorio.Fecharocaixa1.Visible := (copy(titulo,1,8)= 'Caixa - ');
        frelatorio.showmodal;
end;

function dataval(datab:tdate):string;
var
sqld:tzquery;
begin
          sqld:=tzquery.Create(application);
          sqld.Connection := fdm.conector;

          repeat

           if (DiaSemana (datab) = 'SABADO') or
              (DiaSemana (datab)= 'DOMINGO') then
               datab := datab + 1;

               with sqld do begin
                    close;
                    sql.clear;
                    sql.add( 'select chave from tbdatacomemorativa '+
                            ' where data = '+quotedstr(formatdatetime('dd/mm',datab)));
                    open;

                    if sqld['chave'] <> null then
                       datab := datab + 1
                    else close;
               end;

//           showmessage(DiaSemana (datab));

          until (DiaSemana (datab) <> 'SABADO') and
                (DiaSemana (datab) <> 'DOMINGO') and
                (sqld.Active = false);

         sqld.Destroy;

         result := datetostr(datab);
end;

                                       //=1 empresa2, outro = empresa1


procedure selecione (script:string);
begin
        if  sqlpub <> nil then sqlpub:=nil;
        sqlpub:= tzquery.Create(application);

        with sqlpub do begin
             Connection := fdm.conector;
             SQL.Clear;
             SQL.Add(script);
            //debugstr(sqlpub);
            if (lowercase(copy(script,1,6)) = 'select') or
               (lowercase(copy(script,1,4)) = 'show') then
               sqlpub.open
            else begin
               sqlpub.execsql;
              sqlpub:=nil;
            end;

        end;
end;


procedure selecione2(script:string);
begin
        if  sqlpub2 <> nil then sqlpub2:=nil;
        sqlpub2:= tzquery.Create(application);

        with sqlpub2 do begin
             Connection := fdm.conector;
             SQL.Clear;
             SQL.Add(script);
//            debugstr(sqlpub2);
            if (lowercase(copy(script,1,6)) = 'select') or
               (lowercase(copy(script,1,4)) = 'show') then
               sqlpub2.open
            else begin
               sqlpub2.execsql;
              sqlpub2:=nil;
            end;

        end;
end;


Function Dias_Uteis(DataI,DataF:TDateTime):Integer;
     var contador:Integer;
     mi,di,mf,df,ano:string;
begin

    mi := formatdatetime('mm', DataI);
    di := formatdatetime('dd', DataI);
    mf := formatdatetime('mm', DataF);
    df := formatdatetime('dd', DataF);
    ano := '/'+formatdatetime('yyyy', date);

    selecione('select dt,data from tbdatacomemorativa where '+
              ' extract(month from  dt) >= ' +  quotedstr(mi)+
              ' and extract(day from  dt) >= ' +  quotedstr(di)+
              ' and extract(month from  dt) <= ' +  quotedstr(mf)+
              ' and extract(day from  dt) <= ' +  quotedstr(df));

    Contador:=0;
    sqlpub.First;
    while not sqlpub.Eof do begin
          if (formatdatetime('dddd', strtodate(sqlpub.fieldbyname('data').Asstring+ano) )<> 'SABADO') and
             (formatdatetime('dddd', strtodate(sqlpub.fieldbyname('data').Asstring+ano) )<> 'DOMINGO') then
               Contador := Contador -1;
          sqlpub.Next;
    end;
    sqlpub:=nil;
   // showmessage(inttostr(Contador));

    if DataI > DataF then begin
       result := 0;
       exit;
     end;

    while (DataI <= DataF) do begin

      if ((DayOfWeek(DataI) <> 1) and (DayOfWeek(DataI) <> 7)) then
         Inc(Contador);
         DataI := DataI + 1
      end;

    result := Contador;

end;




Function Cript(texto:string):string;
 const chave='8395642189500127';
 var vCript:string;
 i,x:integer;
begin

  vCript := '';
  For i := 1 To Length(texto) do
    begin
      If (vCript = '') Or (i > Length(chave)) Then x := 1 Else x:= x + 1;
      vCript := vCript + Chr(255 - ord(texto[i]) + strtoint(chave[x]));
      end;
  result:= vCript;
End;



procedure imptb(ntb:tclientdataset;ds:tdatasource; tb,tit:string;visualiza:boolean);
var
count,tam, j,i,l:integer;
campo,ind:string;
soma:boolean;
begin
               fimp:=tfimp.Create(application,ds,ntb,nil,tb, tit,'');
               ind:= ntb.IndexFieldNames;

               i:=1;
               j:=22;

               for Count := 1 to ntb.FieldCount - 1 do begin

                      campo :=  uppercase(copy(ntb.Fields[Count].FieldName,1,1))+
                                             copy(ntb.Fields[Count].FieldName,2,20);

                      if ((ntb.Fields[Count].ClassName = 'TStringField') or
                          (ntb.Fields[Count].ClassName = 'TMemoField')) then begin
                         l:=0;

                         if (lowercase(ntb.Fields[Count].FieldName) ='descricao') or
                            (lowercase(ntb.Fields[Count].FieldName) ='nome') then
                            tam := 40

                         else if ntb.Fields[Count].ClassName = 'TMemoField' then
                             tam := 80
                         else
                            tam := 20;
                      end else begin
                         l:=1;
                         tam :=10;
                      end;


                     if (lowercase(ntb.Fields[Count].FieldName) <> 'chave') and
                         (i <=9) then begin

                        soma := ntb.Fields[Count].ClassName = 'TFloatField';
                        criacheck(campo,campo,0,tam,l,true,true,true,true,true,soma);
                        j:=j+12;
                     end;

                     i:=i+1;
               end;

                if visualiza then
                   fimp.showmodal
                else
                   fimp.btnimprimirClick(application);

               qtdlinha:=0;

               ntb.IndexFieldNames := ind;
end;


procedure criacoluna(grade:tdbgrid; nome,cap:string;tm:integer);
begin

           grade.Columns.Add;
           grade.Columns[ncol].FieldName := nome;
           grade.Columns[ncol].Title.caption := cap;
           grade.Columns[ncol].Width := tm;
           inc(ncol);

end;



function posicol(ini,str_in: string; str_length,rig_lef: integer): string;
var
i:integer;
begin
      for i := 1 to str_length -length(ini) do
          Result := Result + ' ';

      if rig_lef =1 then
         Result := str_in + Result
      else
         Result :=  Result + str_in;

      Result :=ini + Result ;
end;


procedure livrofiscal(dtval:tdate);
begin
         if (dtval <= livro) and (sintegra) then
            senhagerencial('NF COM LIVRO IMPRESSO','AUTORIZAÇÃO!', 'LIVRO FISCAL IMPRESSO!');
end;









procedure buscacep (ntb:tclientdataset;tbz:tzquery; str,cp:string);
begin
          //ntb=tabela,     tbz=tabelazeus    str=cep    cp=campo cep(=''), ou outro

           fechatg;
           fdm.dbcep.Disconnect;
           fdm.sg.Connection :=fdm.dbcep;
           with fdm.sg do begin
                close;
                sql.Clear;
                sql.Add('select * from cadcep where cep = '+ quotedstr(formatnumeric(str)));
                open;

                if fdm.sg.RecordCount <> 1 then
                   listagem('cep',formatnumeric(str)+'%','',24,0);

                if (fdm.sg.Active) and (fdm.sg['cep'] <> null) then begin

                   if ntb <> nil then begin
                      ntb.edit;
                      ntb['cep'+cp] := fieldbyname('cep').asstring;
                      ntb['endereco'+cp] := uppercase(tiraacento(fieldbyname('rua').asstring));
                      ntb['bairro'+cp] := uppercase(tiraacento(fieldbyname('bairro').asstring));
                      ntb['municipio'+cp] := uppercase(tiraacento(fieldbyname('cidade').asstring));
                      ntb['uf'+cp] := fieldbyname('uf').asstring;

                      //num do municipio
                      if cp='' then
                         try
                          if fieldbyname('municipion').asinteger >0 then
                             ntb['municipion'] := fieldbyname('municipion').asinteger;
                        except
                            fdm.dbcep.Disconnect;
                            fdm.sg.Connection := fdm.conector;
                        end;

                   end else begin
                      tbz.edit;
                      tbz['cep'+cp] := fieldbyname('cep').asstring;
                      tbz['endereco'+cp] := uppercase(tiraacento(fieldbyname('rua').asstring));
                      tbz['bairro'+cp] := uppercase(tiraacento(fieldbyname('bairro').asstring));
                      tbz['municipio'+cp] := uppercase(tiraacento(fieldbyname('cidade').asstring));
                      tbz['uf'+cp] := fieldbyname('uf').asstring;

                      if cp='' then
                         try
                          if fieldbyname('municipion').asinteger >0 then
                             tbz['municipion'] := fieldbyname('municipion').asinteger;
                        except
                          fdm.dbcep.Disconnect;
                          fdm.sg.Connection := fdm.conector;
                        end;
                   end;
                end;
           end;

           fdm.dbcep.Disconnect;
           fdm.sg.Connection := fdm.conector;
           fechatg;

end;


procedure buscadicade(ntb:tclientdataset;tbz:tzquery; str,cp:string);
var
almun:boolean;
begin
           fechatg;
           fdm.dbcep.Disconnect;
           fdm.sg.Connection := fdm.dbcep;

           with fdm.sg do begin
                close;
                sql.Clear;
                sql.Add('select * from tbcidade where municipio = '+ quotedstr(str));
                open;

                if fdm.sg.RecordCount <= 0 then begin
                   almun:=true;
                   listagem('municipio',copy(str,1,10),'',23,0);
                end;

                if fdm.sg['municipion'] <> null then begin

                   //atualiza o nome da cidade do cad cep
                   if almun then begin
                      fdm.cep.SQL.Clear;
                      fdm.cep.SQL.Add('update cadcep set cidade = ' +
                                      quotedstr(fdm.sg.fieldbyname('municipio').asstring)+
                                      ' where cidade = '+ quotedstr(str));
                      fdm.cep.ExecSQL;
                   end;

                   if ntb <> nil then begin
                      ntb.edit;
                      ntb['municipion'+cp] := fdm.sg.fieldbyname('municipion').asstring;
                      ntb['municipio'+cp] := fdm.sg.fieldbyname('municipio').asstring;

                   end else begin
                      tbz.edit;
                      tbz['municipion'+cp] := fdm.sg.fieldbyname('municipion').asstring;
                      tbz['municipio'+cp] := fdm.sg.fieldbyname('municipio').asstring;
                   end;

                end;
             end;

            fechatg;
            fdm.dbcep.Disconnect;
            fdm.sg.Connection := fdm.conector;
 
end;


function indtz(Ent: string): string;
var
  ind:string;
  i: integer;
  para:boolean;
begin

           para:=false;

           for i:=1 to length(Ent) do begin
               if copy(ent,i,1) = ' ' then
                  para:=true;

               if not para  then
                  ind:=ind + copy(ent,i,1);
          end;

          Result :=lowercase(ind);
end;






procedure cpcli(codcli,cliente,codprod,prod:string);
var
tz:tzquery;
qtd:double;
st,Dvenda:string;
i:integer;
begin
      Dvenda := '';
      fdm.tbconfig.Open;
      for i := 1 to fdm.tbconfig.FieldByName('decimaisvenda').AsInteger do  Dvenda := Dvenda + '0';
      fdm.tbconfig.close;

         tz:= tzquery.Create(application);
          with tz do begin
               Connection := fdm.conector;

               sql.Clear;
               sql.add('select sum(qtd) as qtd from tbpedidoitem  '+
                       ' where codigocliente = '+quotedstr(codcli)+
                       ' and codigo = '+quotedstr(codprod));

               open;
               qtd := fieldbyname('qtd').AsFloat;
               close;


               if qtd >0 then begin
                  close;
                  sql.Clear;
                  sql.add('select qtd, vrunit, descontoreal, data from tbpedidoitem  '+
                          ' where codigocliente = '+quotedstr(codcli)+
                          ' and codigo = '+quotedstr(codprod)+
                          ' order by chave desc limit 0,3 ');
                  open;

                  st := 'INFORMAÇÕES:'+#13+#13;
                  st :=st+ 'CLIENTE:' + cliente+#13;
                  st := st+'PRODUTO:' + prod+#13+#13;

                  while not tz.Eof do begin
                      st := st +#13+'ÚLTIMA  COMPRA: ' + fieldbyname('data').AsString;
                      st := st +#13+'QTD. COMPRADO: ' + floattostr(fieldbyname('qtd').Asfloat);
                      st := st +#13+'VALOR  UNIT PAG: ' +formatfloat('###,##0.'+dvenda,FieldByName('vrunit').Asfloat-fieldbyname('descontoreal').Asfloat);
                      st := st+#13+#13;
                      tz.Next;
                  end;


                      st := st+#13+#13+'Obs: '+floattostr(qtd) +' unidade(s) vendida(s) para este cliente.';
            end else
                  st := 'Não houve venda deste produto a este cliente.';
                  destroy;
        end;

        application.MessageBox(pchar(st),'Venda Produto',mb_ok);
 end;



procedure fechatg;
begin
              fdm.dbcep.Disconnect;
              fdm.sg.Connection := fdm.conector;
              fdm.sg.Filtered := false;
              fdm.sg.close;
              fdm.sg.IndexFieldNames :='';
              fdm.sg.SQL.Clear;
end;





procedure listagem(ind,val,criterio:string;modulo,vr:integer);
begin
          //ind = campo.                    ex: nome
          //val = valor do campo.           ex: 'SANTOS'
          //criterio = criterio de procura  ex:
          if responsavel = '12.347.804/0001-40' then val := '%'+val+'%';
          if flista = nil then begin
             flista := tflista.Create(application,ind,val,criterio,modulo,vr);
             flista.showmodal;
          end;
end;



function Formatstr(const strin: string;v:string): string;
var
  Count: integer;
begin
  Result := '';
  if Length(strin) > 0 then
    for Count := 0 to length(strin) do
      if strin[Count] in ['a'..'z','A'..'Z','@','&','_','0'..'9',' '] then
        Result := Result + strin[Count]
      else
        Result := Result + v;

end;


procedure relatorio(acesso,data,indcampo,script,from,criterio,gpby,
                       soma1_, soma2_, soma3_,soma4_,soma5_,soma6_,soma7_,soma8_,soma9_,
                       soma10_,soma11_,soma12_,soma13_,soma14_,soma15_,soma16_,soma17_,soma18_,
                       nrel,cap,nometb:string; com1, com2:integer);
begin

        //ultimo com2 usado = 21

        if acesso <> '' then begin
           acesso1(acesso);
           permissao(sqlacesso.FieldByName('consultar').AsString, 'PC', acesso);
           sqlacesso.Destroy;
        end;

                         
        frelatorio:=tfrelatorio.Create(application,data,indcampo,script,From,criterio,gpby,
                       soma1_, soma2_, soma3_,soma4_,soma5_,soma6_,soma7_,soma8_,soma9_,
                       soma10_,soma11_,soma12_,soma13_,soma14_,soma15_,soma16_,soma17_,soma18_,
                       nrel,cap,nometb,com1, com2);

        //////com 1 e com2   // 8 esta disponivel,
        frelatorio.com1 := com1;
        frelatorio.com2 := com2;
        frelatorio.MostrarVendedor1.Visible := nrel = 'tbcomissao___' ;
        frelatorio.Mostrarvendedor2.Visible := nometb='tbpedido' ;

//        frelatorio.btnfiltro.Visible := com1 <> 0;

        frelatorio.Baixar1.Visible := (com2 = 1) or ((cap='Comissões Vendas') and(nometb='tbpedido'));
        frelatorio.Servios1.Visible := com2 = 1;
        frelatorio.Usurio1.Visible := com2 = 2;
        frelatorio.Preenchecliente1.Visible := com2 = 4; //RIBERCRYL
        frelatorio.NoRecebido1.Visible := com2 = 5;
        frelatorio.Filtrar01.Visible := com2 = 6;
        
        frelatorio.Pagar1.Visible := com2 = 9;
        frelatorio.AbriraEntrada1.Visible := com2 = 10;
        frelatorio.Itensdaentrada1.Visible := (com2 = 10) or (com2 = 11) or (com2 = 12) or (com2 = 14) or (com2 = 15) or (com2 = 16)or (com2 = 17);// entrada, venda e nota
        frelatorio.Margemdavenda1.Visible := frelatorio.Itensdaentrada1.Visible;
        frelatorio.Alterarondanota1.Visible := com2 = 12;
        frelatorio.Abriranota1.Visible := com2 = 12;
        frelatorio.AbrirVenda1.Visible := (com2 = 11) or (com2 = 15)or (com2 = 14)or (com2 = 19);
        frelatorio.Replicaravenda1.Visible := (com2 = 11) and (nometb='tbpedido');
        frelatorio.Excluiravenda1.Visible := (com2 = 11) and (nometb='tbpedido');
        frelatorio.GerarNotaFiscal1.Visible := (com2 = 11) or (com2 = 14);
        frelatorio.Alterarondanota1.Visible := com2 = 11;
        frelatorio.Abriranota1.Visible := com2 = 12; //nota
        frelatorio.Inseriritensselecionados1.Visible := com2 = 13; //estoquenfe
        frelatorio.MostrarFornecedor1.Visible := (com2 = 16) and (copy(nometb,1,13)='tbentradaitem'); //rel entradaitem
        frelatorio.ContasGeradas1.Visible := (nometb='tbentrada') or (nometb='tbentradamp') or (nometb='tbpedido');
        frelatorio.mvdcli.Visible := com2 = 18;//vendaitem
        frelatorio.Fecharocaixa1.Visible := (copy(cap,1,8)= 'Caixa - ');
        


        //jessiane
        frelatorio.linsumo.Visible := (cap='Listagem de notas impressas') and (responsavel = '04.605.305/0001-88');

        case com2 of
             3:begin
                    frelatorio.btnimprimir.OnClick := frelatorio.impfinance;
                    frelatorio.btnimprimir.caption :='&Imp/Baixa';
               end;
        end;

//        frelatorio.btntodo.Visible := (frelatorio.btnfiltro.Visible) or (com2 = 18);
//        frelatorio.btnfiltro.Hide;
        frelatorio.Showmodal;

        {permissao: permissao para o relatorio
        data: o periodo que vai selecionar
        indcampo: o campo que vai indexar
        script: seleciona os campos da(s) tabela(s)
        from: este so sera usado se for tabelas vinculadas
        criterio: ex: and tb1.codigo = tb2.codigo
        soma1,soma2, soma3: campos que deve(em) somar
        s1,s2,s3: caption ds campos a somar
        nrel: serve para criar a tabela cds da impressao
        cap: titulo do relatorio
        nometb:nome da tabela principal
        com1: 0 = btnfiltro.hide = 1 btnfiltro.show
        com2: chama os menus popup de cada modulo }

end;

procedure gravabanco(dc,documento,historico, modulo:string;valor:double;linkvenda:integer);
begin
      vf:=false;
      application.CreateForm(tfperiodo2,fperiodo2);
      fperiodo2.Height:=188;
      fperiodo2.Width:=360;
      fperiodo2.page := 'tabbanco'  ;
      codloc:= modulo ;
      fperiodo2.controle := inttostr(linkvenda);

      if uppercase(dc)='C' then
         fperiodo2.dc := 'CRÉDITO'
      else
         fperiodo2.dc := 'DÉBITO';

      fperiodo2.documento := documento ;
      fperiodo2.valor :=valor;
      fperiodo2.historico := historico ;
      fperiodo2.ShowModal;
end;

procedure gravabancovr(chaveconta:integer;dc, documento, historico, modulo, tipo :string;valor:double;linkvenda:integer);
var
sqld:tzquery;
numero : integer;
begin
            sqld :=  tzquery.Create(application);
            sqld.Connection := fdm.conector ;

            with sqld do begin

                 sql.add('select max(numero) as numero from tbbancomovimento');
                 open;

                 numero := fieldbyname('numero').asinteger + 1;

                 sql.Clear;
                 sql.add('Insert into tbbancomovimento(data,dtcompensacao,  hora,numero,  conta, dc, '+
                         'documento, historico, modulo, tipo, valor, linkvenda,  usu ) values  ('+
                         ' now() '+
                         ', now() '+
                         ', '+quotedstr(timetostr(now))+
                         ', '+inttostr(numero)+
                         ', '+inttostr(chaveconta)+
                         ', '+quotedstr(dc)+         //debito ou credito D ou C
                         ', '+quotedstr(documento)+  // N venda, compra, pagar ou receber etc
                         ', '+quotedstr(historico)+
                         ', '+quotedstr(modulo)+
                         ', '+quotedstr(tipo)+      // dinheiro, cheque, cartao
                         ', '+realdblstr(valor)+
                         ', '+inttostr(linkvenda)+
                         ', '+inttostr(usuariolink)+')');
                 execsql;
                 destroy;
            end;

end;




procedure verecf;
begin
        if fdm.tbtef.active = false then begin
           if fileexists (servpath + '\tef.cds') then begin
                 fdm.tbtef.FileName :=servpath + '\tef.cds';
                 fdm.tbtef.open;
              end
              else begin

                 fdm.tbtef.CreateDataSet;
                 fdm.tbtef.open;
           end;
        end;

        if fdm.tbteftxt.active = false then begin
           if fileexists (servpath + '\teftxt.cds') then begin
                 fdm.tbteftxt.FileName :=servpath + '\teftxt.cds';
                 fdm.tbteftxt.open;
              end
              else begin

                 fdm.tbteftxt.CreateDataSet;
                 fdm.tbteftxt.open;
           end;
        end;

end;




procedure comecaecf(tipocupom,posicao,cupom:integer);
begin

        {tipocupom: 1 = cucumitante, 2=vinculado,  3 = nao cucumitante,
         4 = gerencial, 5-cancelamento

        posição para cucumitante:
                 0 = cupom fiscal aberto
                 1 = vendendo item
                 2 = inicia fechamento cupom (desc/acres)
                 3=cheque, 4=cartao 5=cartaod 6=aprazo 7=tickts 8=vltransp 9=dinheiro
                 10=fechando_cupom  11=desc/acrec  12=grava desc_acres
                -1=terminou processo

        posição para vinculado:
                 0 = aberto
                 1 = usando
                 2 = fechando

         }



        if fdm.tbtef.Active = false then
           verecf;

        fdm.tbtef.edit;

        if posicao= -2 then
           fdm.tbtef['recebido'] :='S'
        else begin
           fdm.tbtef['tipocupom'] := tipocupom;
           fdm.tbtef['posicao'] := posicao;

           if cupom >0 then
              fdm.tbtef['cupom'] := cupom;
        end;

        fdm.tbtef.Post;


        if (fdm.tbtef['posicao'] = '-1') or (posicao= -3 ) then begin
           fdm.tbtef.Close;
           fdm.tbtef.CreateDataSet;
           fdm.tbtef.open;
           fdm.tbteftxt.Close;
           fdm.tbteftxt.CreateDataSet;
           fdm.tbteftxt.open;
           fdm.tbteftxt.SaveToFile(servpath + '\teftxt.cds');
        end;

        fdm.tbtef.SaveToFile(servpath + '\tef.cds');
end;



procedure lancaconta(debito,credito:integer;valor:double);
begin
        selecione('insert into tblancacontabil (data,dia,debito,credito,valor) values('+
                  'now()'+
                  ','+quotedstr(formatdatetime('mm',date))+
                  ','+realdblstr(debito)+
                  ','+realdblstr(credito)+
                  ','+realdblstr(valor)+')');
end;

procedure veritem(cap,tb,tb2,tb3,chave,MP:string);
var
i:integer;
serv, servico:string;
tit:string;
begin

          if cap = '' then tit := 'Itens elacionados'
          else             tit := cap;

          tb := lowercase(tb);

          fdm.tbconfig.Open;
          if (copy(tb,1,5)<>'tbent') and(tb2<>'') and (fdm.tbconfig['os']='S') then begin
             servico:='TotalServico';
             serv := ', '+tb+'.Vrunit -' + tb+'.Vrunit as TotalServico ';
          end;

          fdm.tbconfig.close;

          with fdm.Query1 do begin
               sql.Clear;
               sql.add('select '+
                        tb+'.chave'+
                        ','+tb+'.link'+
                        ','+tb+'.chavegrade'+
                        ', tbproduto'+mp+'.Codigo '+
                        ', tbproduto'+mp+'.Descricao  '+
                        ','+ tb+'.Qtd '+
                        ', '+tb+'.VrUnit '+
                        ', '+tb+'.DescontoReal '+
                        ', if('+tb+'.descontoreal is not null,(('+tb+'.vrunit -  '+tb+
                        '.descontoReal) * '+tb+'.qtd),'+tb+'.vrunit  * '+tb+'.qtd)as Total '+
                        serv+
                        ' from tbproduto'+mp+', '+tb+'  where '+
                        ' tbproduto'+mp+'.codigo = '+tb+'.codigo'+
                        ' and '+tb+'.link = '+ quotedstr(chave));
            // debugstr(fdm.query1);
             fdm.tbquery1.Open;

             //if tb<>'vendaitem' then
             atualizagrade(fdm.tbquery1, nil, tb);

             (fdm.tbquery1.fieldbyname('descricao')  as tstringfield).DisplayWidth := 55;
             (fdm.tbquery1.fieldbyname('vrunit')  as tfloatfield).displayformat := '###,##0.00';
             (fdm.tbquery1.fieldbyname('descontoreal')  as tfloatfield).displayformat := '###,##0.00';
             (fdm.tbquery1.fieldbyname('total')  as tfloatfield).displayformat := '###,##0.00';


             if tb3 <> '' then begin

               sql.Clear;
               sql.add('select i.chave, i.codigo, p.descricao,i.qtd,i.vrunit,i.total from '+tb3 +
                      ' i, tbproduto p  where i.codigo=p.codigo and  i.link = '+quotedstr(chave));
               open;

               {if fieldbyname('codigo').asstring <>'' then begin
                     fdm.tbquery1.insert;
                     fdm.tbquery1['chave'] := 10000;
                     fdm.tbquery1.post;
                     fdm.tbquery1.insert;
                     fdm.tbquery1['chave'] := 100001;
                     fdm.tbquery1['descricao'] := '               LOCAÇÃO';
                     fdm.tbquery1.post;
               end;}


               //i:=1;
               while not eof do begin
                     fdm.tbquery1.insert;
                     fdm.tbquery1['chave'] := fieldbyname('chave').AsInteger;
                     fdm.tbquery1['codigo'] := fieldbyname('codigo').asstring;
                     fdm.tbquery1['descricao'] := fieldbyname('descricao').asstring;
                     fdm.tbquery1['qtd'] := fieldbyname('qtd').AsFloat;
                     fdm.tbquery1['vrunit'] := fieldbyname('vrunit').AsFloat;
                     fdm.tbquery1['total'] := fieldbyname('total').AsFloat;
                     fdm.tbquery1.Post;
                     //inc(i);
                     next;
               end;

             end;



             if servico <> '' then begin
             (fdm.tbquery1.fieldbyname('TotalServico')  as tfloatfield).displayformat := '###,##0.00';

               sql.Clear;
               sql.add('select codigo, descricao,qtd,vrunit,total from '+tb2 +
                       ' where link = '+quotedstr(chave));
               open;

               if fieldbyname('codigo').asstring <>'' then begin
                     fdm.tbquery1.insert;
                     fdm.tbquery1['chave'] := 10000;
                     fdm.tbquery1.post;
                     fdm.tbquery1.insert;
                     fdm.tbquery1['chave'] := 100001;
                     fdm.tbquery1['descricao'] := '               SERVIÇOS';
                     fdm.tbquery1.post;
               end;


               i:=1;
               while not eof do begin
                     fdm.tbquery1.insert;
                     fdm.tbquery1['chave'] := 100001 + i;
                     fdm.tbquery1['codigo'] := fieldbyname('codigo').asstring;
                     fdm.tbquery1['descricao'] := fieldbyname('descricao').asstring;
                     fdm.tbquery1['qtd'] := fieldbyname('qtd').AsFloat;
                     fdm.tbquery1['vrunit'] := fieldbyname('vrunit').AsFloat;
                     fdm.tbquery1['totalservico'] := fieldbyname('qtd').AsFloat * fieldbyname('vrunit').AsFloat;
                     fdm.tbquery1.Post;
                     inc(i);
                     next;
               end;

             end;



            close;
          end;


          fdm.tbquery1.IndexFieldNames := 'chave';
          reltb(fdm.tbquery1,tit,'', servico,'Total','','','','','','','','','','','');

          fdm.tbquery1.Close;
end;


function strcomplete(str_in, char_compl: string; str_length, DirEsq: integer): string;
var
  Count: integer;
begin

  Result :='';
  for Count := Length(str_in) + 1 to str_length do
    Result := Result + char_compl;

  if DirEsq = 0 then Result := Result + str_in
  else Result := str_in + Result;

end;





procedure updatecliente(ntb,codigo:string);
begin
           selecione('update '+ntb+', tbcliente set '+
                     ntb+'.endereco = concat(if (tbcliente.endereco is not null, tbcliente.endereco," ")'+
                         ' ," ",if(tbcliente.numero is not null,tbcliente.numero," ")'+
                         '," ",if(tbcliente.complemento is not null,tbcliente.complemento," ")),'+
                 ntb+'.bairro = tbcliente.bairro,'+
                 ntb+'.cep = tbcliente.cep,'+
                 ntb+'.uf = tbcliente.uf,'+
                 ntb+'.fone = tbcliente.fone,'+
                 ntb+'.municipio = tbcliente.municipio, '+
                 ntb+'.nome = tbcliente.nome,'+
                 ntb+'.cnpj = tbcliente.cnpj,'+
                 ntb+'.ie = tbcliente.ie '+
                 ' where '+ntb+'.codigo = tbcliente.codigo '+
                 ' and '+ntb+'.codigo = '+quotedstr(codigo));
end;







function aliquf(ufo,ufd:string):double;
var
sq:tzquery;
begin
      sq :=tzquery.Create(application);

      if (ufo<>'') and (ufd <> '') then
      with sq do begin
           Connection := fdm.conector;
           sql.clear;
           sql.add('select ' +ufo+ ' as uf from tbaliquf where uf = '+ quotedstr(ufd));
           open;
           result := fieldbyname('uf').AsFloat;
           destroy;
       end;

end;


function EnumeradoToStr(const t: variant; const AString:
  array of string; const AEnumerados: array of variant): variant;
var
  i: integer;
begin
  result := '';
  for i := Low(AEnumerados) to High(AEnumerados) do
    if t = AEnumerados[i] then
      result := AString[i];
end;


procedure criatabela(ntb0, ntbD:string);
var
sq:tzquery;
script,tipo:string;
begin

      sq :=tzquery.Create(application);
      with sq do begin
           Connection := fdm.conector;
           sql.Add('show fields from '+ntb0);
           open;

           script := 'CREATE TABLE '+ntbD+'( chave integer auto_increment primary key ';
           sq.First;
           while not sq.Eof do begin

                 if lowercase(fieldbyname('field').AsString) <> 'chave' then begin

                    if copy(fieldbyname('Type').AsString,1,3)='dat' then
                       tipo := ' date'

                    else if copy(fieldbyname('Type').AsString,1,3)='tim' then
                       tipo := ' time'

                    else if copy(fieldbyname('Type').AsString,1,3)='int' then
                       tipo := ' integer'

                    else if copy(fieldbyname('Type').AsString,1,3)='dou' then
                       tipo := ' double'

                    else if copy(fieldbyname('Type').AsString,1,3)='tex' then
                       tipo := ' text'

                    else
                         tipo := ' varchar('+formatnumeric(fieldbyname('Type').AsString)+')';


                    script := script +  ', '+ fieldbyname('field').AsString + tipo;
                    

                 end;

                 sq.next;
           end;

           Close;
           SQL.Clear;
           SQL.Add(script+ ')');
           //sql.SaveToFile('c:\criatabela.sql');
           try
           execsql;
           except end;
           destroy;
      end;


end;










procedure titgrade(grade:tdbgrid;tabela:tclientdataset;tz:tzquery);
var
i:integer;
sq:tzquery;
Dvenda, Dcompra:string;
begin
             Dvenda := '';
             Dcompra := '';

             sq :=  tzquery.Create(application);
             with sq do begin
                  Connection := fdm.conector ;
                  sql.Add('select decimaisvenda,decimaiscompra from tbconfig');
                  open;

                  for i := 1 to FieldByName('decimaisvenda').AsInteger do Dvenda := Dvenda + '0';
                  for i := 1 to FieldByName('decimaiscompra').AsInteger do Dcompra := Dcompra + '0';

                  destroy;
             end;



             for i:=0 to grade.Columns.Count-1 do begin

             if (lowercase(grade.Columns[i].FieldName) = 'linkvenda') or
                    (lowercase(grade.Columns[i].FieldName) = 'tipoestoque') or
                    (lowercase(grade.Columns[i].FieldName) = 'chavepedido')or
                    (lowercase(grade.Columns[i].FieldName) = 'chavepedido_1')or
                    (lowercase(grade.Columns[i].FieldName) = 'chave1')or
                    (lowercase(grade.Columns[i].FieldName) = 'chave')or
                    (lowercase(grade.Columns[i].FieldName) = 'link')or
                    (lowercase(grade.Columns[i].FieldName) = 'chavegrade')or
                    (lowercase(grade.Columns[i].FieldName) = 'estoquedepois')or
                    (lowercase(grade.Columns[i].FieldName) = 'estoqueantes')or
                    (lowercase(grade.Columns[i].FieldName) = 'divergencia')or
                    (lowercase(grade.Columns[i].FieldName) = 'contado')or
                    (lowercase(grade.Columns[i].FieldName) = 'obs1') then
                    grade.Columns[i].visible := false;


                    grade.Columns[i].Title.Caption := capcp(grade.Columns[i].FieldName);


                 if (tabela <> nil) and (formatar = false ) then begin
                    //tm campo
                     if (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TMemoField') then
                        grade.Columns[i].Width:=0

                     else if (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TIntegerField') or
                             (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TLargeintField') or
                             (tabela.Fields[i].FieldName = 'documento') then
                       grade.Columns[i].Width:=50


                     else if (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TFloatField') or
                             (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TDateField') then
                             grade.Columns[i].Width:=70

                     else if (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TTimeField') then
                             grade.Columns[i].Width:=45

                     else if (tabela.fieldbyname(grade.Columns[i].FieldName).Size <= 3) then
                        grade.Columns[i].Width:=20

                     else if (tabela.fieldbyname(grade.Columns[i].FieldName).Size > 3) and
                             (tabela.fieldbyname(grade.Columns[i].FieldName).Size <=10) then
                        grade.Columns[i].Width:=65

                     else if (tabela.fieldbyname(grade.Columns[i].FieldName).Size > 10) and
                             (tabela.fieldbyname(grade.Columns[i].FieldName).Size <=20) then
                        grade.Columns[i].Width:=80

                     else if (tabela.fieldbyname(grade.Columns[i].FieldName).Size > 20) and
                             (tabela.fieldbyname(grade.Columns[i].FieldName).Size <=40) then
                        grade.Columns[i].Width:=150

                     else grade.Columns[i].Width:=200;

                    //formatar
                    if (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TFloatField') then begin

                       if (lowercase(tabela.Fields[i].FieldName)  = 'vrcompra') or
                          (lowercase(tabela.Fields[i].FieldName)  = 'custo') then
                          (tabela.fieldbyname(grade.Columns[i].FieldName)  as tfloatfield).displayformat :='###,##0.' + Dcompra else

                       if (lowercase(tabela.Fields[i].FieldName)  = 'vrvenda') or
                          (lowercase(tabela.Fields[i].FieldName)  = 'vrunit') then
                          (tabela.fieldbyname(grade.Columns[i].FieldName)  as tfloatfield).displayformat :='###,##0.' + Dvenda else

                          (tabela.fieldbyname(grade.Columns[i].FieldName)  as tfloatfield).displayformat :='###,##0.00';
                    end;


                    if (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TIntegerField') then
                       (tabela.fieldbyname(grade.Columns[i].FieldName)  as TIntegerField).displayformat := '000000';

                    if (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TDateField') then
                       tabela.fieldbyname(grade.Columns[i].FieldName).EditMask := '99/99/9999';

                 end;




                                 

                 if (tz <> nil) and (formatar = false ) then begin
                     try
                    //tm campo
                     if (tz.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TMemoField') then
                        grade.Columns[i].Width:=0

                     else if (tz.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TIntegerField') then
                       grade.Columns[i].Width:=50

                     else if (tz.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TFloatField') or
                             (tz.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TDateField') then
                       grade.Columns[i].Width:=70

                     else if (lowercase(grade.Columns[i].FieldName) = 'descricao') then
                          grade.Columns[i].Width:=300

                     else if (tz.fieldbyname(grade.Columns[i].FieldName).Size <= 3) then
                        grade.Columns[i].Width:=28

                     else if (tz.fieldbyname(grade.Columns[i].FieldName).Size > 3) and
                             (tz.fieldbyname(grade.Columns[i].FieldName).Size <=10) then
                        grade.Columns[i].Width:=73

                     else if (tz.fieldbyname(grade.Columns[i].FieldName).Size > 10) and
                             (tz.fieldbyname(grade.Columns[i].FieldName).Size <=20) then
                        grade.Columns[i].Width:=80

                     else if (tz.fieldbyname(grade.Columns[i].FieldName).Size > 20) and
                             (tz.fieldbyname(grade.Columns[i].FieldName).Size <=40) then
                        grade.Columns[i].Width:=150

                     else grade.Columns[i].Width:=200;


                    //formatar
                    if (tz.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TFloatField') then begin

                       if (lowercase(tz.Fields[i].FieldName)  = 'vrcompra') or
                          (lowercase(tz.Fields[i].FieldName)  = 'custo') then
                          (tz.fieldbyname(grade.Columns[i].FieldName)  as tfloatfield).displayformat :='###,##0.' + Dcompra else

                       if (lowercase(tz.Fields[i].FieldName)  = 'vrvenda') or
                          (lowercase(tz.Fields[i].FieldName)  = 'vrunit') then
                          (tz.fieldbyname(grade.Columns[i].FieldName)  as tfloatfield).displayformat :='###,##0.' + Dvenda else

                          (tz.fieldbyname(grade.Columns[i].FieldName)  as tfloatfield).displayformat :='###,##0.00';
                    end;


                    if (tz.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TIntegerField') then
                       (tz.fieldbyname(grade.Columns[i].FieldName)  as tintegerfield).displayformat := '000000';

                    if (tz.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TDateField') then
                       tz.fieldbyname(grade.Columns[i].FieldName).EditMask := '99/99/9999';

                    except end;   
                  //  if (tz.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TStringField') and
                    //   (lowercase(grade.Columns[i].FieldName) = 'fone') and(responsavel <>'07.542.365/0001-97') then
                      // (tz.fieldbyname(grade.Columns[i].FieldName)  as TStringField).EditMask := '9999-9999;0';

                 end;

             end;


{
             if (lowercase(grade.Columns[0].FieldName) ='chave')  then
                grade.Columns[0].Visible:=false;}


            // formatar := true;

end;







procedure mostrarnome(tb:tclientdataset; tz:tzquery; ntb,cp1,cp2,cploc,cpdest:string);
begin

        {ex: mostrarnome(tabela,nil,'tbfornecedor','codigo','codfor','nome','fornecedor');
         na tabela fornecedor, localizar codigo e nome pelo campo CodigoVendedor da tbrelatorio ,
          preencher (tbrelatorio) campo fornecedor com o campo nome}

        selecione('select '+cploc+' as nome, '+cp1+' from '+ntb);


        if tb <> nil then begin
              tb.First;
              while not tb.Eof do begin
                    tb.Edit;
                    if sqlpub.Locate(cp1,tb.fieldbyname(cp2).AsString ,[]) then
                       tb[cpdest] := sqlpub.fieldbyname('nome').AsString;
                    tb.Post;
                    tb.Next;
              end;
        end;

        if tz <> nil then begin
              tz.First;
              while not tz.Eof do begin
                    tz.Edit;
                    if sqlpub.Locate(cp1,tz.fieldbyname(cp2).AsString ,[]) then
                       tz[cpdest] := sqlpub.fieldbyname('nome').AsString;
                    tz.Next;
              end;
        end;


        sqlpub:=nil;

end;



procedure cepibge(num,insAlt:integer);
var
imp, alt,cepcid, ind, incalt:string;
begin

        //insAlt = 1 aceita incluir e alterar, se nao so altera

        imp :='1';

        if insalt = 1 then
        imp:=msgi('Digite uma opção:' + #13 + #13 +
              '1 = Inclui'+#13+
              ' 2 = Altera ', 0);

        if (imp <> '1') and (imp<>'2') then abort;


         if num =23 then begin
            cepcid := ' a cidade ';
            ind := 'municipio';

         end else begin
            cepcid := ' o cep ';
            ind := 'cep';
         end;


        if imp='2' then begin

           alt := msgi('Qual'+cepcid+'que quer alterar', 0);

           listagem(ind,alt+'%','',num,0);

           if fdm.sg.Active = false then begin
              fechatg;
              abort;
           end;
        end;

        periodo2(ind,imp,'','','','',155,372,0);

        if imp = '2' then fechatg;

end;





procedure estoquenfe(tbitem:tzquery;sinal:string);
var
qtd:string;
begin

        //sinal = +, soma ao estoque, -= subtrai

        tbitem.First;
        while not tbitem.Eof do begin

              if sinal = '+' then
                 qtd := realdblstr(tbitem.fieldbyname('qtd').AsFloat)
              else
                 qtd := realdblstr(tbitem.fieldbyname('qtd').AsFloat*(-1));

              selecione('update tbproduto set nfe =  ' +
                        ' if(nfe is null,' + qtd + ',nfe+' + qtd + ') ' +
                        ' where codigo = '+quotedstr(tbitem.fieldbyname('codigo').AsString));

              tbitem.Next;
        end;
end;






procedure configimp(tabela:tclientdataset; tz:tzquery;page_:integer;visualiza:boolean);
begin
        fconfigimp:=Tfconfigimp.Create(application,tabela,tz,page_,visualiza);

        if visualiza then fconfigimp.showmodal;

        fconfigimp.Release;
        fconfigimp  := nil;

end;










procedure fluxocaixa;

var
 imp,  DataIni, DataFin,dt, scrdt, scrdta, where2, entsai:string;
entrada, saida, cheque, Cart_Cred,  Cart_Deb,  A_Prazo:string;
                 

        procedure gtb(chave : integer; tipo:string;vr:double);
        begin
             fdm.tbquery1.Insert;
             fdm.tbquery1['chave'] := chave;
             fdm.tbquery1['tipo'] := tipo;
             fdm.tbquery1['valor'] := vr;
             fdm.tbquery1['saldo'] := vr;
             fdm.tbquery1.Post;
        end;

        procedure inscp(cp:string;vr:double);
        begin

           selecione('insert into temp (Cx_Num, Data, Tipo, Valor) values('+
                           inttostr(fdm.Query1.fieldbyname('Cx_Num').asinteger)+
                      ','+ quotedstr(formatdatetime('yyyy-mm-dd',fdm.Query1.fieldbyname('data').AsDateTime))+
                      ','+ quotedstr(cp)+
                      ','+ realdblstr(vr)+')');

        end;

        procedure estacionamento;
        begin
         //  if (tipo=0,"HORISTA",if (tipo=1,"DIARISTA",if(tipo=2,"MENSALISTA","CONVENIO")))as descricao, '+

              selecione(' insert into temp (Cx_Num,Data,Entrada,cheque,Cart_Cred,Cart_Deb,A_Prazo) '+
                        '(select caixa, datasaida ,  sum(dinheiro), '+
                        ' sum(if (cheque is not null,cheque,0) + if (chequepre is not null, chequepre,0)),'+
                        ' sum(cartao), sum(cartaod), sum(fiado)  from tbmov ' +
                        ' where datasaida between '+
                           quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataIni)))+
                        ' and '+   quotedstr(formatdatetime('yyyy-mm-dd', strtodate(Datafin)))+
                        ' group by caixa )');

        end;

        procedure vendas;
        begin
                 
              selecione(' insert into temp (Cx_Num,Data,Entrada,cheque,Cart_Cred,Cart_Deb,A_Prazo) '+

                        '(select caixa, data ,  sum(if(troco>0,dinheiro-troco,dinheiro)), '+
                        ' sum(if (cheque is not null,cheque,0) + if (chequepre is not null, chequepre,0)) ,'+
                        ' sum(cartao), sum(cartaod), sum(fiado)  from tbpedido as c ' +  scrdt +
                        ' group by caixa)');

        end;


var
saldo:double;

begin


        imp := msgi('Entre com o período.',3);

        DataIni := copy(imp,1,10);
        DataFin := copy(imp,11,10);


        dt := 'c.data';
        where2     := ' and (c.tipo = "C" or c.tipo = "D" or c.tipo = "SAIDA" or c.tipo = "RECEB" or c.tipo = "CX_INI" ) ';

        scrdt      := ' where '+dt+' between '+
                           quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataIni)))+
                      ' and ' + quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataFin)));

        scrdta     := ' where '+dt+' < '+ quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataIni)));


        entsai     := ' sum(if ((c.tipo = "C"  or c.tipo = "RECEB" or c.tipo = "CX_INI"), c.dinheiro,0)) as Entrada, '+
                      ' sum(if ((c.tipo = "D" or c.tipo = "SAIDA"), c.dinheiro,0)) as Saida, ';




         with fdm.query1 do begin
              sql.Clear;
              sql.Add('drop table if exists temp');
              execsql;

              sql.Clear;
              sql.Add('create table temp( '+
                      'chave int auto_increment primary key, '+
                      //'Descricao varchar(30),'+
                      'Cx_Num integer,  '+
                      'Data date, '+
                      'Entrada double, '+
                      'Saida double, '+
                      'cheque double,  '+
                      'Cart_Cred double, '+
                      'Cart_Deb double, '+
                      'A_Prazo double)');
              execsql;


              sql.Clear;
              sql.Add('insert into temp '+
                      '(select c.chave, g.numerocaixa as Cx_Num, g.datainicial as Data, '+
                      entsai +
                      ' c.dinheiro - c.dinheiro as cheque, '+
                      ' c.dinheiro - c.dinheiro as Cart_Cred, '+
                      ' c.dinheiro - c.dinheiro as Cart_Deb, '+
                      ' c.dinheiro - c.dinheiro as A_Prazo '+
                      ' from tbentradacaixa as c, tbcaixagrupo as g '+
                      scrdt +  where2 + ' and c.link = g.chave '+ sqlempresa(1,1,'g')+
                      ' group by g.chave )' );
               execsql;

               estacionamento;
               vendas;



               // insere os dados, de vaolta, separando por tipo
               sql.Clear;
               sql.Add('select Cx_Num, Data, sum(Entrada) as Entrada, sum(Saida) as Saida, '+
                      ' sum(cheque) as cheque, sum(Cart_Cred) as Cart_Cred, sum(Cart_Deb) as Cart_Deb, '+
                      ' sum(A_Prazo) as A_Prazo from temp group by Cx_Num, data order by Cx_Num, data');

               open;

               selecione('drop table if exists temp');
               selecione('create table temp(chave int auto_increment primary key, '+
                      'Cx_Num integer, Data date, Tipo varchar(30), Valor double)');


               while not eof do begin
                     if fieldbyname('Entrada').AsFloat >0 then   inscp('Entrada',fieldbyname('Entrada').AsFloat );
                     if fieldbyname('Saida').AsFloat >0 then     inscp('Saida',fieldbyname('Saida').AsFloat*(-1));
                     if fieldbyname('Cheque').AsFloat >0 then    inscp('Cheque',fieldbyname('Cheque').AsFloat);
                     if fieldbyname('Cart_Cred').AsFloat >0 then inscp('Cart_Cred',fieldbyname('Cart_Cred').AsFloat);
                     if fieldbyname('Cart_Deb').AsFloat >0 then  inscp('Cart_Deb',fieldbyname('Cart_Deb').AsFloat);
                     if fieldbyname('A_Prazo').AsFloat >0 then   inscp('A_Prazo',fieldbyname('A_Prazo').AsFloat);

                     next;
               end;



               // insere os dados, de vaolta, separando por tipo
               sql.Clear;
               sql.Add('select chave, Cx_Num, Data, Tipo, Valor, valor-valor as Saldo from temp group by Cx_Num, data, tipo order by Cx_Num, data, tipo');
               fdm.tbquery1.Open;







              //saldo anterior caixa
              sql.Clear;
              sql.Add('select '+  entsai + ' count(chave) from tbentradacaixa as c '+   scrdta  +  where2);
              open;

              entrada := floattostr(fieldbyname('entrada').asfloat);
              saida   := floattostr(fieldbyname('saida').asfloat);


              //saldo anterior estacionamento
              sql.Clear;
              sql.Add('(select sum(dinheiro) as entrada, '+
                        ' sum(if (cheque is not null,cheque,0) + if (chequepre is not null, chequepre,0)) as cheque,'+
                        ' sum(cartao)as Cart_Cred, sum(cartaod)as Cart_Deb , sum(fiado)as A_Prazo  from tbmov ' +
                        ' where datasaida < '+ quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataIni)))+
                        ' group by caixa )');
              open;

              entrada := floattostr(strtofloat(entrada) + fieldbyname('entrada').asfloat);
              cheque := floattostr(fieldbyname('cheque').asfloat);
              Cart_Cred := floattostr(fieldbyname('Cart_Cred').asfloat);
              Cart_Deb := floattostr(fieldbyname('Cart_Deb').asfloat);
              A_Prazo := floattostr(fieldbyname('A_Prazo').asfloat);



              //saldo anterior venda
              sql.Clear;
              sql.Add('(select sum(dinheiro) as entrada, '+
                        ' sum(if (cheque is not null,cheque,0) + if (chequepre is not null, chequepre,0)) as cheque,'+
                        ' sum(cartao)as Cart_Cred, sum(cartaod)as Cart_Deb , sum(fiado)as A_Prazo  from tbmov ' +
                        ' where datasaida < '+ quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataIni)))+
                        ' group by caixa )');
              open;

              entrada   := floattostr(strtofloat(entrada)  + fieldbyname('entrada').asfloat);
              cheque    := floattostr(strtofloat(cheque)   + fieldbyname('cheque').asfloat);
              Cart_Cred := floattostr(strtofloat(Cart_Cred)+ fieldbyname('Cart_Cred').asfloat);
              Cart_Deb  := floattostr(strtofloat(Cart_Deb) + fieldbyname('Cart_Deb').asfloat);
              A_Prazo   := floattostr(strtofloat(A_Prazo)  + fieldbyname('A_Prazo').asfloat);
              close;
         end;

         {if strtofloat(saida) >0 then     gtb(-1,'Saídas Ant.',strtofloat(saida) *(-1));
         if strtofloat(entrada) >0 then   gtb(-2,'Antradas Ant.',strtofloat(entrada));
         if strtofloat(cheque) >0 then    gtb(-3,'Cheques Ant.',strtofloat(cheque));
         if strtofloat(Cart_Cred) >0 then gtb(-4,'Cart_Cred Ant.',strtofloat(Cart_Cred));
         if strtofloat(Cart_Deb) >0 then  gtb(-5,'Cart_Deb Ant.',strtofloat(Cart_Deb));
         if strtofloat(A_Prazo) >0 then   gtb(-6,'A_Prazo Ant.',strtofloat(A_Prazo));}
         gtb(-7,'Saldo Ant.', strtofloat(A_Prazo)+strtofloat(Cart_Deb)+strtofloat(Cart_Cred)+
                                         strtofloat(cheque)+strtofloat(entrada) - strtofloat(saida));

         fdm.tbquery1.IndexFieldNames := 'Cx_Num; Data; Tipo';
         saldo := 0;

         fdm.tbquery1.First;
         while not fdm.tbquery1.Eof do begin
               
               saldo := saldo  +  fdm.tbquery1.fieldbyname('valor').AsFloat;
               fdm.tbquery1.Edit;
               fdm.tbquery1['Saldo'] := saldo;
               fdm.tbquery1.post;

               fdm.tbquery1.next;
         end;

         reltb(fdm.tbquery1,'Caixa - '+usuario,'','','','','','','','','','','','','','');
         fdm.tbquery1.close;
         fdm.query1.close;
         fdm.tbquery1.IndexFieldNames := '';

end;


function capcp(const mn: string): string;
var
lb,tpcliente:string;
begin
        if responsavel = 'SINDICATO' then tpcliente := 'TpSócio'
                                     else tpcliente := 'TpCliente';
                         
  result :='';
  result := EnumeradoToStr(lowercase(mn),

        ['Código','CódOrig','CódVendedor',  'ÚltComp.','Débito','Tp_Empresa','Atac.','Frete','Troca','Tp_Cobr.',
        'Praz_Entrega','Desc_Pgto','Fantasia/Apelido','Gerente','Vendedor','Diretor','Técnico',
        'Máquina','Endereço','End.Cobrança','End.Entrega','Núm','Núm','Núm','N.Fisc','Compl',
        'Compl','Compl','Bairro','Bairro','Cidade','Cidade','Cidade','N. IBGE','Cep','UF',
        'UF','UF','UltVenda','CNPJ_CPF','IE_RG','DDD','FoneGerente','Cel.Gerente','FoneVend.',
        'CelularVend.','CelularDir.','FoneDir.','E-Mail','ST','MSN',tpcliente,'Status','DC',
        'Histórico','Doc','Usuário','Descrição','VrUnit','Diferença','CódCli','Praça','Dt.Compra',
        'Cont.Analítica','Cont.Contábil','Tipo','Pg.Rec.','Cônjuje','Referência','Vínculo',
        'Crédito','FoneConj.','Lim.Crédito','F_J','Função','CFOP','Natureza','Ram','Cep', 'Dt Nasc',
        'Orçamento','DtEntrega','Despesa','Qtd/Un','Dia','Acréscimo','CódForProd','rjcomercial','desctotal',
        'C. Médio','Despesa','Valor','Atacado1','Fornecedor','Seção','ICM','VrSubst', 'B. Subst',

        'Mensal', 'Confed', 'Assist',  'Convmed', 'Odonto', //sindicato

        'Sál Bruto','Adicional1','Adicional2','INSS %','INSS R$','FGTS %','FGTS R$','13º Sal %',
        '13º Sal R$','Férias %','Férias R$','1/3 Férias %','1/3 Férias R$','Outros1 %','Outros1 R$',
        'Outros2 %','Outros2 R$','Sal Líq','Custo func','TotFuncionários','NI','Qtd']


       ,
       // se o caption for esse abaixo trocar por o caption acima
       ['codigo','codigooriginal','codvendedor','ultimacompra','debito','empresa','atacadista','tipofrete',
        'aceitatroca','tipocobranca','prazoentrega','descontopgto','nomecurto','nomegerente',
        'nomevendedor','nomediretor','mecanico','campo1','endereco','enderecocobranca','enderecoentrega',
        'numero','numeroentrega','numerocobranca','nf','complemento','complementoentrega',
        'complementocobranca','bairrocobranca','bairroentrega','municipio','municipiocobranca',
        'municipioentrega','municipion','cepentrega','uf','ufcobranca','ufentrega','ultimavenda',
        'cnpj','ie','ddd','fonegerente','celulargerente','fonevendedor','celularvendedor',
        'celulardiretor','fonediretor','email','flagsite','msn','tipocliente','statu',
        'dc','historico','documento','usuario','descricao','vrunit','diferenca','codigocliente',
        'praca','datacompra','contaanalitica','contacontabil','tp','pgrec','conjuje','referencia',
        'vinculo','credito','foneconjuge','limitecredito','fisjur','funcao','cfop','natoperacao','ramal','cepcobranca', 'nascimento',
        'orcamento','dtentrega','despesaacessoria','fracao','dia','acrescimo','codigofornecedor','Insc. Mun.','Desconto',
        'cmedio','nomedadespesa','valordadespesa','valor3','fornecedor','familia', 'imposto','valoricmsubstituicao','baseicmsubstituicao',

        'mensalidade', 'confederativo', 'assistencial',  'convmedico', 'odontologico', //sindicato

        'salariobruto','adicionalinsalubridade','adicionalpericulosidade',
        'aliquotainss','inssfuncionario','percentagemfgts','fgtsfuncionario','percentagem13o',
        'funcionario13o','percentagemferias','feriasfuncionario','percentagemtercoferias',
        'tercoferiasfuncionario','percentagemoutros1','outros1funcionario','percentagemoutros2','outros2funcionario',
        'salarioliquido','totalgeralfuncionario','totalsalenc','nacimp','a']);

  //se nao estiver na lista, transformar a 1º em maiúscula
  if result = '' then  begin
     lb := uppercase(copy(mn,1,1))+ copy(mn,2,20);
     result := lb;
  end;

end;

                         
                                  
function capmodulo(const mn: string): string;
begin
       result :='';
       result := EnumeradoToStr(lowercase(mn),
       
       //''       0         1         2       4         5         6             7            8       9                   10                11
       ['manual','cadastro','filiais','venda','cliente','produto','funcionario','fornecedor','compra','contas a receber','contas a pagar','recibo',
       //18                 19       20        22         23       24     25                26   100almax  27             28            29    33            34      35       36               37        38         101       102       103    104
        'cadastro serviço','animais','produto','maquina','cidades','cep','cedente','nf','vendas','acerto compra','acertovenda','nota fiscal','funcionario','caixa','agenda','plano de contas','contas','produto','produto','produto','socio','cliente'],
       ['','0','1','2','4','5','6','7','8','9','10','11','18','19','20','22','23','24','25','26','100','27','28','29','33','34','35','36','37','38','101','102','103','104']);

       if result = '' then result := 'Cadastro';

end;

function captb(const mn: string): string;
begin
       result :='';
       result := EnumeradoToStr(lowercase(mn),
       //0           1           2          4            5          6               7               9           10        11,       12             18
       ['tbempresa','tbfiliais','tbpedido','tbcliente','tbproduto','tbfuncionario','tbfornecedor','tbreceber','tbpagar','tbrecibo','tbcontador','tbcadastroservico',
       //19       20             22          23        24         25        30      31                32    33               34            35         36                37         38         100       101         jessiane 102  103         104=paciente
       'tbanimal','tbprodutomp','tbmaquina','tbcidade','cadcep','tbnbanco','tbpais','tbcedente','tbdespfix','tbfuncionario','tbcaixagrupo','tbagenda','tblancacontabil','tbconta','tbproduto','tbalmax','tbproduto','tbprodutomp','tbcliente','tbcliente'],
       ['0','1','2','4','5','6','7','9','10','11','12','18','19','20','22','23','24','25','30','31','32','33','34','35','36','37','38','100','101','102','103','104']);

end;
end.

{        emp :=(dbtable ='venda') or
              (dbtable ='vendaitem') or
              (dbtable ='vendadevolucao') or
              (dbtable ='vendapp') or
              (dbtable ='vendaservico') or
              (dbtable ='tbpedido') or
              (dbtable ='tbpedidoitem') or
              (dbtable ='tbpedidoservico') or
              (dbtable ='tbnota') or
              (dbtable ='tbnotaitem') or
              (dbtable ='tbnotaservico') or
              (dbtable ='tbreceber') or
              (dbtable ='tbpagar') or
              (dbtable ='tbentrada') or
              (dbtable ='tbentradamp') or
              (dbtable ='tbentradadf') or
              (dbtable ='tbentradap') or
              (dbtable ='tbentradaitem') or
              (dbtable ='tbentradaitemmp') or
              (dbtable ='tbentradaitemdf') or
              (dbtable ='tbentradaitemp') or
              (dbtable ='tbempresa');

}

//tirar o fdialogo






{procedure transf (flag:integer;cnpj,email, nome:string); //1=cliente, 2=funcionario, 3=fornecedor
var
st,imp,tbo,tbd:string;
begin

           if flag = 1 then begin
              st := '2= Transformar em funcionário'+#13+
                    '3= Transformar em fornecedor';
              tbo := 'tbcliente';

           end else if flag = 2 then begin
              st := '1= Transformar em cliente'+#13+
                    '3= Transformar em fornecedor';
              tbo := 'tbfuncionario';

           end else if flag = 3 then begin
              st := '1= Transformar em cliente'+#13+
                    '2= Transformar em funcionário';
              tbo := 'tbfornecedor';
          end;

          //imp := '1';
          if inputquery('Exportar', 'Digite uma opção:' + #13 + #13 +
                        st+ #13+
                        'Esc = Cancela ', imp) then  else abort;

          if ((flag = 1)  and ((imp <>'2') and (imp <>'3'))) or
             ((flag = 2)  and ((imp <>'1') and (imp <>'3'))) or
             ((flag = 3)  and ((imp <>'1') and (imp <>'2'))) then begin
             Application.MessageBox('Digite uma opção válida!','Atenção', 0 + MB_ICONwarning);
             abort;
          end;

          if imp = '1' then
             tbd := 'tbcliente'

          else if imp = '2' then
             tbd := 'tbfuncionario'

          else if imp = '3' then
             tbd := 'tbfornecedor';

          if length(cnpj) >10 then
             selecione('select nome, cnpj as cp from '+tbd+' where cnpj ='+quotedstr(cnpj))
          else if length(email) >2 then
            selecione('select nome, email as cp from '+tbd+' where email ='+quotedstr(email))
          else
            selecione('select nome from '+tbd+' where email ='+quotedstr(nome));

          if sqlpub['cp'] <> null then
               if Application.MessageBox(pchar(sqlpub.fieldbyname('nome').AsString +
                                        ' está cadastrado com este CNPJ/CPF ou Email. Deseja continuar? '),
                                         'Confirme', mb_yesno + MB_ICONQUESTION) = idno then abort;

         selecione('select max(codigo)as codigo from '+tbd);
         st := inttostr(sqlpub.fieldbyname('codigo').Asinteger + 1);

         selecione('select now(),codigo,nome,nomecurto,endereco,numero,complemento,'+
                   ' bairro,municipio,cep,uf,cnpj,ie,ddd, fone,email from '+tbo +
                   ' where cnpj = ' + quotedstr(cnpj));

         try
           grava(nil,sqlpub,tbd);
         except
             Application.MessageBox('Não foi possível exportar - duplicidade!','Atenção', 0 + MB_ICONwarning);
             sqlpub := nil;
             abort;
         end;

             Application.MessageBox('Exportado com sucesso!','Atenção', 0 + MB_ICONwarning);
         sqlpub := nil;

end;}
