unit udm;
       
interface

uses
  Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, inifiles,
  dialogs,  DBCtrls, ToolWin, ComCtrls, Messages, variants,
  ActnList,  DB, DBClient, RLParser,  RLDraftFilter, RLFilters, Menus, RLPDFFilter, RLHTMLFilter,
  RLRichFilter, RLXLSFilter, ExtDlgs,RLReport,mask, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBGrids,shellapi,
  Provider,ExtCtrls,math, RLBoleto, ACBrNFe,pcnConversao;

const
    direitos: string ='S.I.G.A.C Desenvolvimento de Sistemas Comerciais';

           

var
  CONF_GLOBAL: string;

  ip:string  ='';
  ipnet:string='localhost';
  databaseemp: string ='sigac';
  databasenet: string ='sigac';
  user : string ='root';
  usernet : string ='root';
  Password : string ='';
  Passwordnet : string ='';

  fantasiaempresa: string;
  responsavel: string;
  sintegra:boolean=false;
  btcadastrar, btalterar,btreplicar,btapagar,btfiltro,btanotacoes,btimprimir,btmenu,
  btgravar,btcancelar,btgrafico,bttodos:tbitmap;
  menucad,menucadr,idlg:timage;

type
  Tfdm = class(TDataModule)
    dsempresa: TDataSource;
    dsbancomovimento: TDataSource;
    dsconfig: TDataSource;
    dscaixagrupo: TDataSource;
    tbentradacaixa: TClientDataSet;
    tbentradacaixachave: TIntegerField;
    tbentradacaixadata: TDateField;
    tbentradacaixahora: TTimeField;
    tbentradacaixadocumento: TStringField;
    tbentradacaixatotalparcial: TFloatField;
    tbentradacaixadesconto: TFloatField;
    tbentradacaixavalorgarcom: TFloatField;
    tbentradacaixavrcouvert: TFloatField;
    tbentradacaixataxa: TFloatField;
    tbentradacaixatotal: TFloatField;
    tbentradacaixadinheiro: TFloatField;
    tbentradacaixacheque: TFloatField;
    tbentradacaixachequepre: TFloatField;
    tbentradacaixacartao: TFloatField;
    tbentradacaixatickts: TFloatField;
    tbentradacaixavltransp: TFloatField;
    tbentradacaixafiado: TFloatField;
    tbentradacaixalink: TIntegerField;
    tbentradacaixamodo: TStringField;
    tbentradacaixausuario: TStringField;
    tbentradacaixasaida: TFloatField;
    dsentradacaixa: TDataSource;
    tbentradacaixasaidacredito: TFloatField;
    tbentradacaixacartaod: TFloatField;
    tbentradacaixaconvenio: TFloatField;
    ActionList1: TActionList;
    tbentradacaixanomecartaoc: TStringField;
    tbentradacaixanomecartaod: TStringField;
    tbentradacaixadescricao: TStringField;
    tbentradacaixaacrescimo: TFloatField;
    dstransfere: TDataSource;
    tbentradacaixajuro: TFloatField;
    tbentradacaixacliente: TStringField;
    tbentradacaixanomeconvenio: TStringField;
    tbentradacaixacredito: TFloatField;
    tbentradacaixatipo: TStringField;
    tbentradacaixalinkvenda: TIntegerField;
    pquery2: TDataSetProvider;
    tbquery2: TClientDataSet;
    dsquery2: TDataSource;
    comadriana: TAction;
    tb: TClientDataSet;
    tbnome: TStringField;
    tbx: TStringField;
    pquery1: TDataSetProvider;
    tbquery1: TClientDataSet;
    dsquery1: TDataSource;
    tbmov: TClientDataSet;
    dsmov: TDataSource;
    tbmovqtde: TFloatField;
    tbmovqtded: TFloatField;
    tbmovqtds: TFloatField;
    tbmovqtdsd: TFloatField;
    tbmovvrunited: TFloatField;
    tbmovvrunite: TFloatField;
    tbmovvrunits: TFloatField;
    tbmovvrunitsd: TFloatField;
    tbmovestiniqtd: TFloatField;
    tbmovestinivr: TFloatField;
    tbmovestfinqtd: TFloatField;
    tbmovestfinvr: TFloatField;
    tbmovcustomedio: TFloatField;
    tbmovdata: TDateField;
    dg: TDataSource;
    pg: TDataSetProvider;
    dp: TDataSource;
    pp: TDataSetProvider;
    tp: TClientDataSet;
    conector: TZConnection;
    sg: TZQuery;
    sp: TZQuery;
    Query1: TZQuery;
    queryext: TZQuery;
    Query2: TZQuery;
    conectnet: TZConnection;
    snet: TZQuery;
    sqext: TZConnection;
    DsIndEcf: TDataSource;
    DsEcf: TDataSource;
    DsEcfitem: TDataSource;
    tbecf: TZQuery;
    TbIndEcf: TZQuery;
    dsicms: TDataSource;
    tbicms: TZQuery;
    conectemp: TZConnection;
    tbecfitem: TZQuery;
    dbcep: TZConnection;
    cep: TZQuery;
    dsuso: TDataSource;
    tbcaixagrupo: TZQuery;
    tbtransfere: TZQuery;
    sSintegra: TZQuery;
    tbempresa: TZQuery;
    tbbancomovimento: TZQuery;
    tbconfig: TZQuery;
    psintegra: TDataSetProvider;
    TbSintegra: TClientDataSet;
    tbuso: TClientDataSet;
    tg: TClientDataSet;
    tbtef: TClientDataSet;
    tbteftipocupom: TIntegerField;
    tbtefposicao: TIntegerField;
    tbtefcupom: TIntegerField;
    tbteftxt: TClientDataSet;
    tbteftxtchave: TIntegerField;
    tbteftxttexto: TStringField;
    tbteftxtqtd: TIntegerField;
    tbtefrecebido: TStringField;
    snet2: TZQuery;
    tbmovacumulo: TFloatField;
    tbmovchave: TIntegerField;
    tbentradacaixamodulo: TStringField;
    pnet: TDataSetProvider;
    tbnet: TClientDataSet;
    Expressao: TRLExpressionParser;
    RLExpressionParser1: TRLExpressionParser;
    SaveDialog: TSaveDialog;
    PDF: TRLPDFFilter;
    html: TRLHTMLFilter;
    word: TRLRichFilter;
    excel: TRLXLSFilter;
    OpenDialog: TOpenDialog;
    filtro: TRLDraftFilter;
    RLBTitulo1: TRLBTitulo;
    RLBRemessa1: TRLBRemessa;
    lerxml: TAction;
    tbei: TClientDataSet;
    tbeicodigobarras: TStringField;
    tbeiqtd: TFloatField;
    tbeivrunit: TFloatField;
    tbeitotnf: TFloatField;
    tbeidescontoReal: TFloatField;
    tbeisegurovr: TFloatField;
    tbeifretevr: TFloatField;
    tbeivripi: TFloatField;
    tbeiicmsent: TFloatField;
    tbeiipi: TFloatField;
    tbeidescricao: TStringField;
    tbeicfop: TStringField;
    tbeicst: TStringField;
    tbeiRedBasePct: TFloatField;
    tbeiredsai: TFloatField;
    tbeimva: TFloatField;
    tbeipauta: TStringField;
    tbeiitem: TIntegerField;
    tbeiBsIcmsSubst: TFloatField;
    tbeiVrIcmsSubst: TFloatField;
    tbeicodigofornecedor: TStringField;
    tbeincmsh: TStringField;
    tbeibaseicm: TFloatField;
    tbeiVrIcms: TFloatField;
    tbe: TClientDataSet;
    tbenf: TIntegerField;
    tbedatanota: TDateField;
    tbecnpj: TStringField;
    tbefreteconta: TStringField;
    tbedescontoReal: TFloatField;
    tbebasecalculo: TFloatField;
    tbevaloricms: TFloatField;
    tbevaloricmss: TFloatField;
    tbebasecalculoS: TFloatField;
    tbefretesoma: TFloatField;
    tbevaloripi: TFloatField;
    tbedespesaacessoria: TFloatField;
    tbesegurodig: TFloatField;
    tbetotaldesconto: TFloatField;
    tbetotalparcial: TFloatField;
    tbemodelo: TIntegerField;
    tbeserie: TIntegerField;
    tbnet2: TClientDataSet;
    pnet2: TDataSetProvider;
    tbentradacaixaemp: TIntegerField;
    nfe: TACBrNFe;
    sqlBanco: TZQuery;
    dspBanco: TDataSetProvider;
    cdsBanco: TClientDataSet;



    procedure preenchexml(j:integer;mp:string);
    procedure gentrada(tbo,tbd,numero,tb,cptb_,cptbitem_:string);
    function numnota(emp:string;pedido:boolean):integer;
    procedure Movprod(codigo,mpri:string);
    procedure imBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure gerafrafico(ntb:tclientdataset;campo1,campo2,tit:string);
    procedure Exitedit(Sender: TObject);
    procedure Enteredit(Sender: TObject);
    procedure Exitmask(Sender: TObject);
    procedure Entermask(Sender: TObject);

    procedure Exitdbedit(Sender: TObject);
    procedure Enterdbedit(Sender: TObject);

    procedure email(email,codigo,nome,referencia,tab:string;tz:tzquery; grupo:boolean);
    procedure comsumo(codigo,tbcompra,tbcompraitem,imp,mp:string);
    procedure DataModuleCreate(Sender: TObject);
    procedure comadrianaExecute(Sender: TObject;chave:string);
    procedure sqextBeforeConnect(Sender: TObject);
    procedure conectnetBeforeConnect(Sender: TObject);
    procedure conectempBeforeConnect(Sender: TObject);
    procedure dbcepBeforeConnect(Sender: TObject);
    procedure conectorBeforeConnect(Sender: TObject);
    procedure lerxmlExecute(Sender: TObject);
  private
    { Private declarations }
  public



    divnota:integer;
    dt1,dt2:tdate;

      { Public declarations }

  end;

var
  fdm: Tfdm;
  tipoempresa,homepage :string;



    procedure entregaprod;
    procedure itemcompra(doc,linkvenda:string);
    procedure baixa_estorna(flag:integer;grade:tdbgrid;tb:tclientdataset;tz:tzquery;ntabela:string);
    procedure ultcompra(codigo,mp:string);
    procedure vertef;
    procedure marcatef(cupom:string;posicao:integer;ncupom,texto:string);
    procedure desmarcatef;
    procedure vidamov(codigo:string;modulo:integer);
    procedure cadg (script, ind:string;modulo:integer);
    procedure exportarRL(report:TRLReport;nome,email:string);


    procedure geranota(tbg, tbp, tbs, tbdev:tzquery; tb:string);
    procedure recpgto(tbpgrec,codclifor:string);
    procedure relvenda(tb,criterio,cap:string;num:integer;somar:boolean);
    procedure relsaida(op1_,op2_:integer);
    procedure relentrada;
    procedure infecf;
    procedure imppedido(chave,nometb,imp:string);
    procedure pegaxml;
    procedure geranfp;
    procedure rlocacao;
    procedure totprodfinal;
    procedure atualizaprodutomp(tz:tzquery;tabela:tclientdataset);
    procedure totmp(tz:tzquery; tabela:tclientdataset);
    procedure totunit(tabela:tzquery);
    procedure totprodvd(tabela:tzquery);
    procedure Consultarconta;
    procedure Consultarcontac;



function Reg10(versao,CGC_MF, mindata, maxdata: ShortString): ShortString;

function Reg20(funcao,motivocancel, natOp,  serie,numero,emissao,dtsaida,tpNF,cfop,
               im,cnpj,nome, endereco,bairro, cidade,
               uf, cep, fone: ShortString): ShortString;


function Reg30(codigo,descricao,un,qtd,vrunit,total,cst,icm,ipi,vripi : ShortString): ShortString;
function Reg40(basecalcicms,valoricms,basecalcicms_subst,valoricms_subst, vrproduto,
               frete, seguro,desconto, ipi, despacessoria, totalnota,totalservico,
               iss, vriss: ShortString): ShortString;
function Reg60(Fatura,infAdFisco,infCpl: ShortString): ShortString;
function Reg50(modFrete,cnpj_cpf,nome,ie,endereco, municipio,uf, placa,ufplaca,
                qtdvol,especie,marca,pesol,pesob: ShortString): ShortString;
function Reg90(reg20,reg30,reg40,reg50,reg60: ShortString): ShortString;


implementation

uses funcoes, MMSystem, ugrafico,umail, umanu, uimp, ucadg, umovimento,
     uparcelado, uecf_,uecf_aux_,uecf_imp_, uipedido, principal;

{$R *.dfm}



procedure Consultarcontac;
var
imp,agencia, conta, usu:string;
begin

        codloc := '1';
        imp := msgi('Consultar:' + #13 + #13 +
                    '1 = Uma conta      '+#13+
                    '2 = Lançamentos',2);
        if not (strtoint(imp) in[1..2]) then abort;

        if imp = '1' then periodo2('tabbancoc','','','','','',172,483,1);

        if imp = '2' then begin

        agencia := nomelink('conta','chave', 'agencia','tbconta','agencia');
        conta   := nomelink('conta','chave', 'conta','tbconta','conta');
        usu     := nomelink('usu','chave', 'nome','tbusuario','Usuario');

        relatorio('financeiro','data','numero',
                  'select chave, numero, data, hora, historico, documento, '+
                        'if(tipo = "DI", "DINHEIRO",'+
                          'if(tipo = "CA", "CARTAO",'+
                           'if(tipo = "CH, "CHEQUE", '+
                             'if(tipo = "TR", "TRANSFERENCIA",'+
                               'if(tipo = "DO", "DOC",tipo))))) as Modalidade,dtcompensacao,'+

                  'if (dc="D", valor,0) as debito,'+
                  'if (dc="C", valor,0) as credito,'+

                  'if(modulo = "34", "CAIXA", '+
                  ' if(modulo = "9", "RECEBTO", '+
                   ' if((modulo = "10" or modulo = "8" or modulo = "27"), "PGTO",modulo))) as Gerado_de, '+
                   agencia +','+ conta +',usu as codusuario, '+ usu +
                   ' from tbbancomovimento ',
                   '',
                   '',
                   '',
                   'Credito','Debito','','','','','','','','', '','','','','','','',
                   '','tbbancomovimento',
                   'Relatório de Lançamentos','tbbancomovimento',0,0);
              end;
end;


procedure Consultarconta;
var
codigo, imp,d1,d2,dtini,dtfin,conta,contad,script,nomeconta,tot1,tot2,scriptA:string;
com2,i:integer;
debitoa, creditoa:double;
saldoa:boolean;
qcontas, qsdeb, qscre, qdeb, qcre:tzquery;
tb:tclientdataset;

      procedure ptabela(fl:integer);
      begin

         while not sqlpub.Eof do begin

            if fdm.tbquery1.Locate('codigo',sqlpub.fieldbyname('codigo').AsString,[] ) then begin
               fdm.tbquery1.edit;

               if fl = 0 then fdm.tbquery1['vrdebito']      := sqlpub.fieldbyname('valor').AsFloat
                         else fdm.tbquery1['saldoanterior']      := sqlpub.fieldbyname('valor').AsFloat;


               fdm.tbquery1.Post;
            end else begin

              if fl = 0 then begin//se nao for saldo anterior
                  fdm.tbquery1.Insert;
                  fdm.tbquery1['chave']   :=i;
                  fdm.tbquery1['codigo']       := sqlpub.fieldbyname('codigo').AsString;
                  fdm.tbquery1['vrcredito']      := '0';
                  fdm.tbquery1['vrdebito']      := sqlpub.fieldbyname('valor').AsFloat;
                  fdm.tbquery1['grau_c']       := sqlpub.fieldbyname('grau_c').AsString;
                  fdm.tbquery1['estrutura_c']  := sqlpub.fieldbyname('estrutura_c').AsString;
                  fdm.tbquery1['grupo_c']      :=sqlpub.fieldbyname('grupo_c').AsString;
                  fdm.tbquery1['subgrupo_c']   := sqlpub.fieldbyname('subgrupo_c').AsString;
                  fdm.tbquery1['conta_c']      := sqlpub.fieldbyname('conta_c').AsString;
                  inc(i);
                  fdm.tbquery1.Post;
              end;
            end;


            sqlpub.Next;

         end;
      end;



      ///////
      procedure data;
      begin

             imp := msgi('Entre com o período:',3);

             d1 := copy(imp,1,10);
             d2 := copy(imp,11,10);

             dtini := quotedstr((formatdatetime('yyyy-mm-dd',strtodate(d1))));
             dtfin := quotedstr((formatdatetime('yyyy-mm-dd',strtodate(d2))));
      end;




      //////
      procedure selconta;
      begin
          //entradas
          if (strtoint(imp) in[2,4]) then begin
             selecione('select codigo from tbconta where LEFT(contaanalitica,1)=1 or LEFT(contaanalitica,1)=4');
             nomeconta := '   -   ENTRADAS'
          //saidas

          end else if (strtoint(imp) in[3,5]) then begin
             selecione('select codigo from tbconta where LEFT(contaanalitica,1)=2 or LEFT(contaanalitica,1)=3');
             nomeconta := '   -   SAÍDAS';
          end;


          conta :='';
          contad :='';
          while not sqlpub.Eof do begin

             if (strtoint(imp) in[2..3]) then begin
                 if conta = '' then
                    conta := ' and (debito = '+quotedstr(sqlpub.fieldbyname('codigo').AsString)+
                             ' or  credito= '+quotedstr(sqlpub.fieldbyname('codigo').AsString)

                 else conta := conta +' or debito = '+quotedstr(sqlpub.fieldbyname('codigo').AsString)+
                                      ' or  credito= '+quotedstr(sqlpub.fieldbyname('codigo').AsString);
             end;

             if (strtoint(imp) in[4..5]) then begin
                 if conta = '' then
                    conta := ' and (credito = '+quotedstr(sqlpub.fieldbyname('codigo').AsString)
                 else conta := conta +' or credito = '+quotedstr(sqlpub.fieldbyname('codigo').AsString);

                 if contad = '' then
                    contad := ' and (debito = '+quotedstr(sqlpub.fieldbyname('codigo').AsString)
                 else contad := contad +' or debito = '+quotedstr(sqlpub.fieldbyname('codigo').AsString);
             end;


             sqlpub.Next;
          end;

          if conta <> '' then   conta := conta +')';
          if contad <> '' then contad := contad +')';

       end;



       //////// imp= 4 e 5

      procedure entsaitotal;
      begin
         i:=10000;
         data;



         with fdm.Query1 do begin

              //credito
              script := 'credito as codigo, sum(valor) as vrCredito, valor-valor as Vrdebito, valor-valor as saldoanterior, valor-valor as saldoatual, ';
              sql.Clear;
              sql.Add(selplanocontas (script)+ ' where ' + dtini + ' and '+ dtfin+ conta+ ' group by credito');
              fdm.tbquery1.Open;


              //debito
              script := 'debito as codigo, sum(valor) as valor, ';
              selecione(selplanocontas (script)+ ' where ' + dtini + ' and '+ dtfin+ contad+' group by debito');
              ptabela(0);


              //credito anterior
              script := 'credito as codigo, sum(valor) as valor, ';
              selecione(selplanocontas (script)+ ' where data < '+ dtini+ conta + ' group by credito');
              ptabela(1);

              //debitoanterior
              script := 'debito as codigo, sum(valor) as valor, ';
              selecione(selplanocontas (script)+ ' where data < '+ dtini+contad+' group by debito');
              ptabela(1);


              with fdm.Query2 do begin
                   sql.Clear;
                   sql.Add('select chave,  debito as codigo, complemento as conta, valor as credito, valor as debito, valor as saldo, valor as saldoanterior, valor as  saldoatual,'+
                           'complemento as subgrupo ,complemento as grupo, complemento as estrutura, complemento as  grau from tblancacontabil where chave <-1');
                   fdm.tbquery2.Open;
              end;


              fdm.tbquery1.Open;
              while not fdm.tbquery1.Eof do begin

                   fdm.tbquery2.Insert;
                   fdm.tbquery2['chave'] := fdm.tbquery1.fieldbyname('chave').AsString;
                   fdm.tbquery2['codigo'] := fdm.tbquery1.fieldbyname('codigo').AsString;
                   fdm.tbquery2['conta'] := fdm.tbquery1.fieldbyname('conta_c').AsString;
                   fdm.tbquery2['credito'] := fdm.tbquery1.fieldbyname('vrcredito').AsFloat;
                   fdm.tbquery2['debito'] := fdm.tbquery1.fieldbyname('vrdebito').AsFloat;
                   fdm.tbquery2['saldo'] := fdm.tbquery2.fieldbyname('credito').AsFloat -
                                            fdm.tbquery2.fieldbyname('debito').AsFloat;
                   fdm.tbquery2['saldoanterior'] := fdm.tbquery1.fieldbyname('saldoanterior').AsFloat;
                   fdm.tbquery2['saldoatual'] := fdm.tbquery2.fieldbyname('saldoanterior').AsFloat+
                                                 fdm.tbquery2.fieldbyname('saldo').AsFloat;
                   fdm.tbquery2['subgrupo'] := fdm.tbquery1.fieldbyname('subgrupo_c').AsString;
                   fdm.tbquery2['grupo'] := fdm.tbquery1.fieldbyname('grupo_c').AsString;
                   fdm.tbquery2['estrutura'] := fdm.tbquery1.fieldbyname('estrutura_c').AsString;
                   fdm.tbquery2['grau'] := fdm.tbquery1.fieldbyname('grau_c').AsString;
                   fdm.tbquery2.Post;
                   fdm.tbquery1.Next;

              end;

              //tot1 := 'Debito';
              //tot2 := 'Credito';
              fdm.tbquery2.IndexFieldNames := 'chave';
              reltb(fdm.tbquery2,'L A N Ç A M E N T O S  D E  C O N T A S'+nomeconta+'   De: '+d1+' a '+d2,'','SaldoAtual','','','','','','','','','','','','');
              fdm.tbquery2.close;
              fdm.tbquery2.IndexFieldNames := '';
              imp :='0';
         end;
       end;





       //////   imp=1
       procedure selcontaunica;
       var cod:string;
       begin
           codigo := msgi('Digite o código, ou o nome da conta:',0);

           if strisinteger(codigo) then cod := 'chave' else cod := 'descricao';

           listagem(cod,codigo,'',37,0);

          if fdm.sg.Active = false then abort;

          data;

          conta := ' and (debito = '+quotedstr(fdm.sg.fieldbyname('chave').AsString) +' or '+
                   '      credito = '+quotedstr(fdm.sg.fieldbyname('chave').AsString) +')';

          script := 'if(credito = '+quotedstr(fdm.sg.fieldbyname('chave').AsString)+', valor,0) as Credito, '+
                    'if(debito = '+quotedstr(fdm.sg.fieldbyname('chave').AsString)+', valor,0) as Debito, ';

          scriptA := 'sum(if(credito = '+quotedstr(fdm.sg.fieldbyname('chave').AsString)+', valor,0)) as Credito, '+
                     'sum(if(debito  = '+quotedstr(fdm.sg.fieldbyname('chave').AsString)+', valor,0)) as Debito ';


          nomeconta :=  '   -    '+fdm.sg.fieldbyname('chave').AsString + '  -   '+
                                   fdm.sg.fieldbyname('contaanalitica').AsString + '  -   '+
                                   fdm.sg.fieldbyname('descricao').AsString;


      tot1 := 'Debito';
      tot2 := 'Credito';


      saldoa := msg('Exibir o saldo anterior?',2);


      with fdm.query1 do begin
            //saldo anterior
           if saldoa then begin
              sql.Clear;
              sql.Add('select '+scriptA+' from tblancacontabil where data < '+ dtini);
              //debugstr(fdm.query1);
              open;
              debitoa  := fieldbyname('Debito').asfloat;
              creditoa := fieldbyname('Credito').asfloat;
           end;

           sql.Clear;
           sql.Add(selplanocontas (script)+ ' where ' + dtini + ' and '+ dtfin+ conta);
           //debugstr(fdm.query1);
           fdm.tbquery1.close;
           fdm.tbquery1.open;

           if saldoa then begin
              fdm.tbquery1.Insert;
              fdm.tbquery1['chave']   :=0;
              fdm.tbquery1['debito']  := debitoa;
              fdm.tbquery1['credito'] := creditoa;
              {fdm.tbquery1['grau_d']   := 'SALDO ANTERIOR';
              fdm.tbquery1['estrutura_d']   := 'SALDO ANTERIOR';
              fdm.tbquery1['grupo_d']   := 'SALDO ANTERIOR';
              fdm.tbquery1['subgrupo_d']   := 'SALDO ANTERIOR';}
              fdm.tbquery1['conta_d']   := 'SALDO ANTERIOR';
              {fdm.tbquery1['grau_c']   := 'SALDO ANTERIOR';
              fdm.tbquery1['estrutura_c']   := 'SALDO ANTERIOR';
              fdm.tbquery1['grupo_c']   := 'SALDO ANTERIOR';
              fdm.tbquery1['subgrupo_c']   := 'SALDO ANTERIOR';}
              fdm.tbquery1['conta_c']   := 'SALDO ANTERIOR';
              fdm.tbquery1.Post;
           end;

           fdm.tbquery1.IndexFieldNames := 'chave';
           reltb(fdm.tbquery1,'# L A N Ç A M E N T O S  D E  C O N T A S #'+nomeconta+'   De: '+d1+' a '+d2,'',tot2,tot1,tot2,'','','','','','','','','','');
           fdm.tbquery1.close;
           fdm.tbquery1.IndexFieldNames := '';
      end;
   end;

begin


       codloc :='4';
       imp := msgi('Digite uma opção:'+#13+#13+
                   '1 = Todas a contas  '+#13+
                   '2 = Contas Entradas'+#13+
                   '3 = Contas Saídas   '+#13+
                   '4 = Entradas(Totais)'+#13+
                   '5 = Saídas(Totais)   '+#13+
                   '6 = Escolher conta  ',2);

       if not (strtoint(imp) in[1..6]) then msg('#Opção inválida.',0);

       if (strtoint(imp) in[2..5]) then selconta;

       if (strtoint(imp) in[1..3]) then
          relatorio('financeiro','data','nome',
                     selplanocontas (script),
                    '',
                    conta,
                    '',
                    '',tot1,tot2,'','', '','','','','','', '','','','','','','',
                    'tblancacontabil',
                    'C O N T A S   L A N Ç A D A S' + nomeconta,
                    'tblancacontabil',0,com2);



      if (strtoint(imp) in[4..5]) then entsaitotal;

      if (strtoint(imp) in[6]) then selcontaunica;


end;



procedure rlocacao;

var
st1, st2, script, codigo, tit, Vendedor, data:string;
com2:integer;
begin

        codloc :='1';
        st1 := msgi('Digite uma opção:'+#13+#13+
                '1 = Itens locados / cliente  ' + #13+
                '2 = Itens locados em geral' ,0 );

        if not (strtoint(st1) in[1..2]) then msg('#Opção inválida.',0);

        codloc :='1';
        st2 := msgi('Digite uma opção:'+#13+#13+
                '1 = Locados  ' + #13+
                '2 = Devolvido'+ #13+
                '3 = Todos      ',0 );

        if not (strtoint(st2) in[1..3]) then msg('#Opção inválida.',0);



        //se for apenas por cliente
        if st1 = '1' then begin
           codigo := msgi('Digite (só números): O Código, ou o CNPJ/CPF ou o Fone, ou as iniciais do nome para pesquisa',0);
           listagem(achacp('nome',codigo),codigo,'',4,0);

           if fdm.sg.Active = false then abort;

          script := ' and codigocliente = ' + quotedstr(fdm.sg.fieldbyname('codigo').AsString);
          tit    := '  -  '+fdm.sg.fieldbyname('codigo').AsString+' '+fdm.sg.fieldbyname('nome').AsString;
        end;


       if st2 = '1' then script := script + ' and  (i.qtd > devolvido or devolvido is null) ';
       if st2 = '2' then script := script + ' and  i.qtd = devolvido ';

       data :='i.data';
       if (st1='1') and (st2='1') then data :='';

       //usu  := nomelink('i.usu','chave', 'nome','tbusuario','Usuario');
       Vendedor  := nomelink('i.codigovendedor','codigo', 'nome','tbfuncionario','Vendedor');

       if st1 = '1' then com2 :=20;

        fechatg;
//        fmenu.permissaovenda;
        relatorio('',data,'p.descricao',

                  'select i.chave , i.numero as N_Venda, i.codigo, p.descricao,  i.qtd, i.vrunit, i.total, '+
                  ' i.devolvido, i.qtd - if(i.devolvido is not null,i.devolvido,0) as Qtd_a_Dev, '+
                  ' (i.qtd - if(i.devolvido is not null,i.devolvido,0)) * i.vrunit as Tot_a_Dev, '   +
                  ' i.datadevolucao, i.dtentregue,  p.estoque as Estoque, i.codigocliente, i.codigovendedor, '+Vendedor,

                  ' from tbpedidolocacao i, tbproduto p',
                  ' and p.codigo=i.codigo '+script+ sqlempresa(1,1,'i'),
                  '',
                  'Tot_a_Dev','Qtd_a_Dev','Total','Qtd','', '','','','','','', '','','','','','','',
                  '',                        
                  'Relatório de itens locados'+tit,
                  'i',0,com2);


end;


procedure pegaxml;
begin
      codloc :='';
      application.CreateForm(TfrmPrincipal,frmPrincipal);
      frmPrincipal.showmodal;
      frmPrincipal.release;
end;



procedure entregaprod;
var
imp,ped :string;
begin


          codloc:='1';
          imp:=msgi('Digite uma opção de entrega:' + #13 + #13 +
                    '1 = Pedido      '+#13+
                    '2 = Cliente      '+#13+
                    '3 = Entregue   '+#13+
                    '4 = N Entregue' , 2);

          if not strtoint(imp) in [1..4] then abort;

          if imp = '1' then begin
             ped := msgi('Entre com o número do pedido',2);
             selecione('select chave from tbpedido where numero = '+quotedstr(ped));
             if sqlpub['chave'] = null then msg('#Pedido não localizado.',0);
             ped := sqlpub.fieldbyname('chave').AsString;
             periodo2('entrega',ped,'0','','','',532,794,2);   //pedido



          end else if imp = '2' then begin
             ped := msgi('Digite (só números): O Código, ou o CNPJ/CPF ou o Fone, ou as iniciais do nome para pesquisa',0);
             listagem(achacp('nome',ped),ped,'',4,0);

             if fdm.sg.Active then ped := fdm.sg.fieldbyname('codigo').AsString
                              else abort;
             fechatg;
             periodo2('entrega',ped,'1','','','',532,794,2);//cliente




          end else if (imp = '3') or (imp = '4') then begin

              if imp = '3' then ped := ' and i.entregue > 0'
                           else ped := ' and (i.entregue is null or i.entregue < i.qtd) ';

              relatorio('Vendas','i.data','descricao',
                        ' select  i.chave, i.numero, i.data, i.codigo,p.descricao,i.qtd,i.vrunit,i.total, '+
                        ' if (i.entregue is null,0,i.entregue) as entregue,i.qtd-i.entregue as diferenca, i.dtentregue, '+
                        ' i.codigocliente,"                                        " as N_Cliente,'+
                        ' i.codigovendedor as CodVend,"                                        " as N_Vendedor ',

                        ' from tbpedidoitem i, tbproduto p ',
                        ' and i.codigo = p.codigo '+ped,
                        '',
                        '','','','','', '','','','','','', '','','','','','','',
                        'i',
                        'Relatório de entregas',
                        'i',0,18);

          end;



end;



procedure totprodfinal;
var
    TotalEncargos:double;
    sq:tzquery;
begin

      sq := tzquery.create(application);
      with sq do begin
           Connection := fdm.conector;
           sql.Add('select TotalEncargos from parametros');
           open;
           TotalEncargos := fieldbyname('TotalEncargos').AsFloat;

           // atualiza relatorio final
           sql.clear;
           sql.add('update tbproduto set '+
                ' PctgEncargosVenda = '+ realdblstr(TotalEncargos)+
                ' ,EncargosVenda = vrvenda * '+ realdblstr(TotalEncargos)+
                ' ,MargemContUnitaria = vrvenda - EncargosVenda  - vrunit '+
                ' ,FaturamentoBrutoPer =  Qtd * vrvenda  '+
                ' ,ConsumoMatPrimaPer= Qtd * vrunit '+
                ' ,EncargosVendaPer = Qtd * EncargosVenda '+
                ' ,MargemContPer = Qtd * MargemContUnitaria '+
                ' ,PctgMargemContPond  =  (MargemContPer / FaturamentoBrutoPer) *100' );
              // ', PctgMargemContPond=MargemContPer/FaturamentoBrutoPer'                
           execsql;
           destroy;
        end;



end;



procedure atualizaprodutomp(tz:tzquery;tabela:tclientdataset);
var
    tot,custocompraunit,vrunit:double;
    q1,tbproduto,tbficha:tzquery;
    codigoproduto,codigo:string;
begin

      if tz <> nil then begin
         custocompraunit := tz.fieldbyname('custocompraunit').AsFloat;
         vrunit          := tz.fieldbyname('vrunit').AsFloat;
         codigo          := tz.fieldbyname('codigo').AsString;

      end else if tabela <> nil then begin
         custocompraunit := tabela.fieldbyname('custocompraunit').AsFloat;
         vrunit          := tabela.fieldbyname('vrunit').AsFloat;
         codigo          := tabela.fieldbyname('codigo').AsString;
      end;


      //atualiza materia-prima
      q1 := tzquery.create(application);
      with q1 do begin
           Connection := fdm.conector;
           sql.add('update tbprodutoitem set '+
                   'CustoUnidade = '+ realdblstr(custocompraunit)+','+
                   'CustoFinalBruto = '+ realdblstr(vrunit)+','+
                   'CustoFinalUnitario= if ((PercentagemVariacao>0 or PercentagemVariacao is not null), '+
                                          ' CustoUnidade * qtd*(1+(PercentagemVariacao/100)),'+
                                          ' CustoUnidade * qtd )'+
                   ' where codigomp = '+ quotedstr(codigo));
                 //debugstr(q1);
                 execsql;
     end;



      tbproduto := tzquery.create(application);
      with tbproduto do begin
           Connection := fdm.conector;
           sql.Add('select tbproduto.codigo, tbproduto.qtd from tbproduto, tbprodutoitem'+
                ' where   tbproduto.codigo = tbprodutoitem.codigoproduto '+
                ' and tbprodutoitem.codigomp = '+quotedstr(codigo));
           //  debugstr(tbproduto);
             open;
      end;

      tbficha := tzquery.create(application);
      with tbficha do begin
           Connection := fdm.conector;
           sql.Add('select * from tbprodutoitem where Codigomp = '+ quotedstr(codigo));
          // debugstr(tbficha);
           open;
      end;


              
     tbproduto.First;
     while not tbproduto.Eof do begin

         tbficha.First;
         tot :=0;
         codigoproduto :=  tbproduto.fieldbyname('codigo').AsString;
         
         while not tbficha.Eof do begin
              tbficha.edit;

             if tbficha.fieldbyname('CustoUnidade').AsFloat >0 then
                tbficha['CustoFinalUnitario']:= tbficha.fieldbyname('CustoUnidade').AsFloat *
                                                tbficha.fieldbyname('qtd').AsFloat *
                                                (1+(tbficha.fieldbyname('PercentagemVariacao').AsFloat/100))
                else tbficha['CustoFinalUnitario']:=  null;



               if (tbproduto.fieldbyname('qtd').AsFloat > 0) and
                  (tbficha.fieldbyname('CustoFinalBruto').AsFloat>0) then

                  tbficha['CustoTotal']:= tbproduto.fieldbyname('qtd').AsFloat *
                                          tbficha.fieldbyname('CustoFinalBruto').AsFloat
               else tbficha['CustoTotal']:=  null;


              if (tbficha.fieldbyname('qtd').AsFloat > 0) and
                 (tbproduto.fieldbyname('Qtd').AsFloat>0) then

                 tbficha['TotalKgLts']:= tbproduto.fieldbyname('Qtd').AsFloat *
                                        (tbficha.fieldbyname('qtd').AsFloat+
                                        (tbficha.fieldbyname('qtd').AsFloat*
                                        (tbficha.fieldbyname('PercentagemVariacao').AsFloat/100)))

              else tbficha['TotalKgLts']:=  null;


              
              altera(nil,tbficha,'tbprodutoitem');
              tbficha.Cancel;
              tbficha.Next;
            end;


            with q1 do begin
                 sql.clear;
                 sql.add('select sum(CustoFinalUnitario) as CustoFinalUnitario from tbprodutoitem '+
                         ' where codigoproduto= '+quotedstr(codigoproduto));
                 open;
                 tot := fieldbyname('CustoFinalUnitario').AsFloat;

                 sql.clear;
                 sql.add('update tbproduto set vrunit = '+realdblstr(tot) +' where codigo = '+ quotedstr(codigoproduto));
                 execsql;


                 sql.clear;
                 sql.add('select sum(TotalKgLts) as TotalKgLts from tbprodutoitem '+
                         ' where codigoproduto= '+quotedstr(codigoproduto));
                 open;
                 tot:= fieldbyname('TotalKgLts').AsFloat;

                 sql.clear;
                 sql.add('update tbprodutomp set '+
                         ' cpliq = '+ realdblstr(tot)+
                         ' ,totalmp = cpliq * vrunit '+
                         ' where codigo = '+ quotedstr(tbficha.fieldbyname('Codigomp').AsString));
                execsql;

        end;



         tbproduto.Cancel;
         tbproduto.Next;
         end;

         totprodfinal;

end;



procedure totmp(tz:tzquery; tabela:tclientdataset);
var icm:double;
begin


     if tabela <> nil then begin
        tabela.edit;
        //vrunit
        if  (tabela.fieldbyname('vrcompra').AsFloat > 0) and
            (tabela.fieldbyname('fracao').AsFloat > 0) then
            tabela['custocompra'] := tabela.fieldbyname('vrcompra').AsFloat/ tabela.fieldbyname('fracao').AsFloat
        else tabela['custocompra'] := null;

        //icm
        if strisfloat(tabela.fieldbyname('imposto').AsString) then  icm:= tabela.fieldbyname('imposto').AsFloat;

        if  (tabela.fieldbyname('custocompra').AsFloat > 0) and (icm > 0) then
            tabela['icmvr'] := tabela.fieldbyname('custocompra').AsFloat*icm/100
        else tabela['icmvr'] := null;


        //ipi
        if  (tabela.fieldbyname('custocompra').AsFloat > 0) and
            (tabela.fieldbyname('ipi').AsFloat > 0) then
            tabela['IPIv'] := tabela.fieldbyname('custocompra').AsFloat*
                                                tabela.fieldbyname('IPI').AsFloat/100
        else tabela['IPIv'] := null;

        //frete
        if  (tabela.fieldbyname('custocompra').AsFloat > 0) and
            (tabela.fieldbyname('Frete').AsFloat > 0) then
            tabela['Fretev'] := tabela.fieldbyname('custocompra').AsFloat*
                                                tabela.fieldbyname('Frete').AsFloat/100
        else tabela['Fretev'] := null;

        //despesas
        if  (tabela.fieldbyname('custocompra').AsFloat > 0) and
            (tabela.fieldbyname('despesaacessoria').AsFloat > 0) then
            tabela['despesaacessoriaV'] := tabela.fieldbyname('custocompra').AsFloat*
                                                tabela.fieldbyname('despesaacessoria').AsFloat/100
        else tabela['despesaacessoriaV'] := null;

        tabela['custocompraunit'] := tabela.fieldbyname('custocompra').AsFloat -
                                       tabela.fieldbyname('icmvr').AsFloat+
                                       tabela.fieldbyname('IPIv').AsFloat+
                                       tabela.fieldbyname('Fretev').AsFloat+
                                       tabela.fieldbyname('despesaacessoriaV').AsFloat;

                                                
        tabela['vrunit'] := tabela.fieldbyname('custocompra').AsFloat+
                                       tabela.fieldbyname('IPIv').AsFloat+
                                       tabela.fieldbyname('Fretev').AsFloat+
                                       tabela.fieldbyname('despesaacessoriaV').AsFloat;


        if  (tabela.fieldbyname('cpliq').AsFloat > 0) and
            (tabela.fieldbyname('vrunit').AsFloat > 0) then
            tabela['totalmp'] := tabela.fieldbyname('cpliq').AsFloat*
                                       tabela.fieldbyname('vrunit').AsFloat
        else tabela['totalmp'] := tabela.fieldbyname('vrunit').AsFloat;
     end;



     if tz <> nil then begin
        tz.edit;
        //vrunit
        if  (tz.fieldbyname('vrcompra').AsFloat > 0) and
            (tz.fieldbyname('fracao').AsFloat > 0) then
            tz['custocompra'] := tz.fieldbyname('vrcompra').AsFloat/ tz.fieldbyname('fracao').AsFloat
        else tz['custocompra'] := null;

        //icm
        if strisfloat(tz.fieldbyname('imposto').AsString) then  icm:= tz.fieldbyname('imposto').AsFloat;

        if  (tz.fieldbyname('custocompra').AsFloat > 0) and (icm > 0) then
            tz['icmvr'] := tz.fieldbyname('custocompra').AsFloat*icm/100
        else tz['icmvr'] := null;


        //ipi
        if  (tz.fieldbyname('custocompra').AsFloat > 0) and
            (tz.fieldbyname('ipi').AsFloat > 0) then
            tz['IPIv'] := tz.fieldbyname('custocompra').AsFloat*
                                                tz.fieldbyname('IPI').AsFloat/100
        else tz['IPIv'] := null;

        //frete
        if  (tz.fieldbyname('custocompra').AsFloat > 0) and
            (tz.fieldbyname('Frete').AsFloat > 0) then
            tz['Fretev'] := tz.fieldbyname('custocompra').AsFloat*
                                                tz.fieldbyname('Frete').AsFloat/100
        else tz['Fretev'] := null;

        //despesas
        if  (tz.fieldbyname('custocompra').AsFloat > 0) and
            (tz.fieldbyname('despesaacessoria').AsFloat > 0) then
            tz['despesaacessoriaV'] := tz.fieldbyname('custocompra').AsFloat*
                                                tz.fieldbyname('despesaacessoria').AsFloat/100
        else tz['despesaacessoriaV'] := null;

        tz['custocompraunit'] := tz.fieldbyname('custocompra').AsFloat -
                                       tz.fieldbyname('icmvr').AsFloat+
                                       tz.fieldbyname('IPIv').AsFloat+
                                       tz.fieldbyname('Fretev').AsFloat+
                                       tz.fieldbyname('despesaacessoriaV').AsFloat;

                                                
        tz['vrunit'] := tz.fieldbyname('custocompra').AsFloat+
                                       tz.fieldbyname('IPIv').AsFloat+
                                       tz.fieldbyname('Fretev').AsFloat+
                                       tz.fieldbyname('despesaacessoriaV').AsFloat;


        if  (tz.fieldbyname('cpliq').AsFloat > 0) and
            (tz.fieldbyname('vrunit').AsFloat > 0) then
            tz['totalmp'] := tz.fieldbyname('cpliq').AsFloat*
                                       tz.fieldbyname('vrunit').AsFloat
        else tz['totalmp'] := tz.fieldbyname('vrunit').AsFloat;
     end;


end;



procedure totunit(tabela:tzquery);
var
vrunit,despesaacessoria,icm,ipi,desctotal:double;
begin

    if fcadg = nil then abort;

    if (tabela.FieldByName('vrcompra').AsFloat > 0) and
       (tabela.FieldByName('fracao').AsFloat > 0) then
       vrunit := tabela.FieldByName('vrcompra').AsFloat /
                   tabela.FieldByName('fracao').AsFloat
    else
      vrunit := tabela.FieldByName('vrcompra').AsFloat;


    if (vrunit > 0) and (tabela.FieldByName('desctotal').AsFloat> 0) then
        desctotal := vrunit * tabela.FieldByName('desctotal').AsFloat/100;

    vrunit := vrunit -  desctotal;


    if (tabela['ativoV']='S') and (vrunit > 0 ) and
       (tabela.FieldByName('ipi').AsFloat>0) then
       ipi := vrunit * tabela.FieldByName('ipi').AsFloat/100
    else ipi :=0;

    if (tabela['ativo']='S') and (vrunit > 0 ) and
       (strisfloat(tabela.FieldByName('imposto').asstring)) then
       icm := vrunit * tabela.FieldByName('imposto').AsFloat/100
    else icm :=0;


    vrunit := vrunit + icm + ipi;

    if (vrunit > 0) and (tabela.FieldByName('despesaacessoria').AsFloat> 0) then
        despesaacessoria := vrunit * tabela.FieldByName('despesaacessoria').AsFloat/100;

    vrunit := vrunit + despesaacessoria;


    tabela.edit;
    tabela['vrunit'] := vrunit;
end;


procedure totprodvd(tabela:tzquery);
var
perc:double;
begin
    if (tabela.FieldByName('vrunit').AsFloat>0) and
       (tabela.FieldByName('percent').AsFloat>0) then
       tabela['vrvenda'] := tabela.FieldByName('vrunit').AsFloat +
                                             (tabela.FieldByName('vrunit').AsFloat *
                                              tabela.FieldByName('percent').AsFloat/100)
    else tabela['vrvenda'] := 0;



    if (tabela.FieldByName('vrunit').AsFloat>0) and
       (tabela.FieldByName('percentatacado').AsFloat>0) then
       tabela['vratacado'] := tabela.FieldByName('vrunit').AsFloat +
                                             (tabela.FieldByName('vrunit').AsFloat *
                                              tabela.FieldByName('percentatacado').AsFloat/100)
    else tabela['vratacado'] := 0;


    if (tabela.FieldByName('vrunit').AsFloat>0) and
       (tabela.FieldByName('percent3').AsFloat>0) then
       tabela['valor3'] := tabela.FieldByName('vrunit').AsFloat +
                                             (tabela.FieldByName('vrunit').AsFloat *
                                              tabela.FieldByName('percent3').AsFloat/100)
    else tabela['valor3'] := 0;



    if (responsavel = 'ARISTEM')  then
       if tabela.FieldByName('vratacado').AsFloat >0 then begin

          if tabela.FieldByName('valor3').AsFloat <=0 then begin
            if tabela['fabricante'] = 'ARISTEM' then perc := 20
                                                      else perc :=15;

             tabela['valor3'] := tabela.FieldByName('vratacado').AsFloat -
                                       (tabela.FieldByName('vratacado').AsFloat * perc /100);
          end;

          if tabela.FieldByName('vrvenda').AsFloat <=0 then
             tabela['vrvenda'] := tabela.FieldByName('vratacado').AsFloat +
                                       (tabela.FieldByName('vratacado').AsFloat * 70/100);

          tabela['percent']:= tabela.FieldByName('vrvenda').AsFloat * 100 /
                                    tabela.FieldByName('vrunit').AsFloat - 100;

          tabela['percent3']:= tabela.FieldByName('valor3').AsFloat * 100 /
                                     tabela.FieldByName('vrunit').AsFloat - 100;


       end;

    if (responsavel = 'FABIO VITRINE') and (tabela.FieldByName('vratacado').AsFloat > 0) then
    begin
      tabela.FieldByName('percent').AsFloat := 70;
      tabela.FieldByName('vrvenda').AsFloat :=
        tabela.FieldByName('vratacado').AsFloat +
        (tabela.FieldByName('vratacado').AsFloat * tabela.FieldByName('percent').AsFloat / 100);
    end;       
end;


procedure imppedido(chave,nometb,imp:string);
begin
showmessage('');
end;




procedure infecf;
var
  mg:string;
  Ecf:Tecf;
  Aliq,LsAliquotas: TStrings;
  count:integer;
begin
      Aliq:=TStringList.Create;
      LsAliquotas:=TStringList.Create;

      Ecf:=TEcf.Create(VerConfMarcaECF);
      try

        LsAliquotas.Clear;
        Aliq:=Ecf.GetAliquotas;

        for count:=0 to Aliq.Count -1 do
          if (Aliq.Count>0) then
            LsAliquotas.Add(FormatFloat('00', Count+1)+ '->' + Aliq[count]);


        mg:='Captura concluída';
        mg:=mg + #13#13+'Observe que os valores de tributação devem ser divididos por 100.'#13;

        if Aliq.Count=0 then
          mg:='Esta impressora não possui nenhuma aliquota cadastrada.'#13;

        mg:=mg +'Os índices isentos e substituição tributária, consulte o manual da sua ECF.';

        msg(mg +#13+#13+LsAliquotas.Text ,0);

      finally
        Ecf.Free;
        Aliq.Free;
        LsAliquotas.Free;
      end;

      
    end;



procedure relentrada;
var
tit, dt, imp,imp2, tbg, tbo, tbi,mp,mp2, script, nm,gp, scr2, dtitem,cods,forn:string;
num:integer;
begin


             fdm.tbconfig.open;
             if fdm.tbconfig['materiaprima']='S' then

              mp := #13 +'3 = Entrada de matéria-prima';
              codloc :='1';
              imp := msgi('Relatório de :' + #13 + #13 +
                          '1 = Entrada produto' + #13 +
                          '2 = Dev. Fornecedor'+ mp, 2);


              tit := 'Relatório de Entrada';

              if imp='2' then begin
                  tbg :='df';
                  tit := 'Relatório de Devolução ao Fornecedor';
              end;

              if imp='3' then begin
                 tbg :='mp';
                  tit := 'Relatório de Entrada Matéria-Prima';
              end;


              codloc := '1';
              imp := msgi('Opções de relatório:' + #13 + #13 +
                         '1 = Ver - Totais' + #13 +
                         '2 = Ver - Itens ', 2);

               nm :='nome';


               if imp='2' then begin
                  forn := nomelink('codfor','codigo', 'nome','tbfornecedor','Fornecedor');

                  tmgrade := true;
                  tbi :='item';
                  nm :='Numero';
                  codloc :='1';
                  imp2 := msgi('Opções de relatório:' + #13 + #13 +
                               '1 = Mostrar Tudo  ' + #13 +
                               '2 = Agrupar/Somar', 2);

               end else  scr2 :=' and nome <> "CONTAGEM ESTOQUE" ';

               if (imp2 = '1') and (tbi='item') then begin
                                  dtitem :=' data,';

                   if fdm.tbconfig['VCFornecedor'] = 'S' then
                      cods := ' codigofornecedor, ';

                   if fdm.tbconfig['VCOriginal'] = 'S' then
                      cods := cods + ' codigooriginal, ';
               end;




               tbo := 'tbentrada'+tbi+tbg;
               dt :='data';
               num :=16;

               if imp='2' then begin
                  if imp2 = '2' then begin
                     script := 'select chave,link,chavegrade, codigo,descricao, '+
                               ' sum(vrunit) as vrunit, sum(frete) as frete, sum(qtd) as qtd,'+
                               ' sum(if(icm is null,null,icm*total/100)) as VrICM, '+
                               ' sum(if(ipi is null,null,ipi*total/100)) as VrIPI, '+
                               ' sum(total) as total, Codfor,'+
                               forn+' , familia, grupo,  Subgrupo '+
                               ' from '+tbo;
                     gp := ' group by codigo ';
                     nm :='Descricao';
                     mp2:='_';
                     num :=16;
                  end else
                     script := 'select chave,link,chavegrade,'+dtitem+' Numero, codigo, '+cods+' descricao, '+
                               ' vrunit, frete, qtd, total,  '+
                               ' ICM,if(icm is null,null,icm*total/100) as VrICM, '+
                               ' IPI,if(ipi is null,null,ipi*total/100) as VrIPI, codfor,'+
                               forn+' , familia, grupo,  Subgrupo '+
                               ' from '+tbo
               end else
                  script := 'select chave, linkvenda,data, NF, DataNota,  Numero, codigo, nome, total, '+
                            ' TotalParcial as VrProduto, DescontoReal, BaseCalculo,'+
                            ' ValorICMS, valorIPI, Frete, ValorICMSS, credito, dinheiro, cheque, chequepre as ChTerceiro, '+
                            ' fiado as A_Prazo, Peso, Avulso from '+tbo;


               if (tbg <> 'df') and (tbi='') then begin
                  {codloc := '1';
                  imp := msgi('Listar por data de:' + #13 + #13 + '1 = Emissão da Entrada' + #13 +  '2 = Entrada da NF. . . . . .', 2);
                  if (imp <>'1') and (imp <>'2') then imp :='1';
                  if imp = '2' then}
                  dt :='data';
               end;

               if tbi = '' then//entrada
                  relatorio('',dt,nm, script, '',  scr2+sqlempresa(1,1,''), gp,
                            'Total','VrProduto','ValorICMS','Frete','ValorICMSS', 'Credito','Dinheiro','Cheque','ChTerceiro','A_Prazo','Peso', '','','','','','','',
                            'tbentrada__'+tbi+mp2, tit ,tbo+mp,1,16)

               else begin //tbentradaitem
                  relatorio('',dt,nm, script, '',  scr2+sqlempresa(1,1,''), gp,
                            'Total','Frete', 'VrICM','VrIPI','Qtd', '','','','','','', '','','','','','','',
                            'tbentrada__'+tbi+mp2, tit ,tbo+mp,1,16);
                  tmgrade := true;
               end;
end;






procedure relsaida(op1_,op2_:integer);
var
op1, op2, op3, tit, gp, vddev, comv,status,avulso:string;
             

       procedure vdtot;
       var
       mprivd,tipoestoque:string;
       begin

         if mprima then begin
            codloc :='1';
            mprivd := msgi('Digite uma opção:'+#13+#13+'1 = Produto     '+#13+
                                                       '2 = Mat. Prima',2);
            if mprivd = '2' then mprivd :='mp'
                            else mprivd :='';
         end;                            

         if mprivd = '' then tipoestoque:= ' and (i.tipoestoque <> "3" or i.tipoestoque is null)'
         else                tipoestoque:= ' and i.tipoestoque = "3"';
                              
         relatorio('','i.data','descricao',
                  'select i.chave, i.link, i.chavegrade, i.numero, i.data, i.codigo, i.codigofornecedor,p.descricao,'+
                  'sum(i.qtd) as qtd, i.vrunit,  i.descontoreal as DescUnit,  i.acrescimo AcresUnit,'+
                  'if (i.descontoreal is not null, i.vrunit - i.descontoreal, i.vrunit)+ if(acrescimo is null,0,acrescimo) as TotUnit,'+
                  'if (i.descontoreal is not null, i.descontoreal,0) as TotDesc,'+
                  'if (i.acrescimo is not null, i.acrescimo,0) as TotAcres,'+
                  'if (i.descontoreal is not null, sum((i.vrunit - i.descontoreal) * i.qtd),sum(i.qtd*i.vrunit))  + sum(if(i.acrescimo is null,0,i.acrescimo*i.qtd))  as Total,'+
                  'sum(i.custo*i.qtd) as Custo,'+
                  'if (i.descontoreal is not null,  sum((i.vrunit - i.descontoreal) * i.qtd),  sum(i.qtd*i.vrunit)) -  sum(i.custo*i.qtd) + sum(if(i.acrescimo is null,0,i.acrescimo*i.qtd))  as Lucro,'+
                  '(if (i.descontoreal is not null,      sum((i.vrunit - i.descontoreal) * i.qtd) + sum(if(i.acrescimo is null,0,i.acrescimo*i.qtd))  ,     sum(i.qtd*i.vrunit)))*100/i.custo/sum(i.qtd)-100 as margem,'+
                  ' i.Comissao as ComissProd, '+
                  ' (if (i.descontoreal is not null, sum((i.vrunit - i.descontoreal) * i.qtd),sum(i.qtd*i.vrunit))  + sum(if(i.acrescimo is null,0,i.acrescimo*i.qtd))) * '+
                        ' (if (i.comissao is not null,i.comissao,0)) /100 as TotComissao, '+
                  'i.imposto as icm,'+
                  '(if (i.descontoreal is not null, sum((i.vrunit - i.descontoreal) * i.qtd),sum(i.qtd*i.vrunit))  + sum(if(i.acrescimo is null,0,i.acrescimo*i.qtd)))*i.imposto/100 as VrIcm,'+
                  'p.un, p.cst, p.cfop,'+
                  'i.codigocliente,'+
                  '"                                        " as N_Cliente,'+
                  'i.codigovendedor as CodVend,'+
                  '"                                        " as N_Vendedor,'+
                  ' p.fabricante, p.Familia, p.grupo, p.subgrupo ',

                  ' from tbpedidoitem as i, tbproduto'+mprivd+' as p ',

                  status + '  and p.codigo = i.codigo ' +tipoestoque +  vddev + comv + sqlempresa(1,1,'i'),

                  gp,

                    'Total','Margem','Lucro','Custo','TotDesc', 'TotAcres','VrIcm','TotComissao',
                     '','','', '','','','','','','',
                    'tbpedidoitem',
                    tit+' '+mprivd,'tbproduto'+mprivd,0,18);

       end;




begin

             

        //vendas aulsas
        if (op1_ = 1) and (op2_=1) then begin
           selecione('select vendaavulsa from tbconfig');

           if sqlpub['vendaavulsa'] = 'S' then begin
              codloc := '3';

              avulso := msgi('Digite uma opção:'+#13+#13+
                             '1=Exibir Vendas Encerrada'+#13+
                             '2=Exibir Vendas Avulsas . .'+#13+
                             '3=Exibir Todas as Vendas .',2);

              if      avulso = '1' then avulso := ' and (avulso = "N" or avulso = "") '
              else if avulso = '2' then avulso := ' and avulso = "S" '
                                   else avulso := '';

           end;

           sqlpub := nil;
        end;

        if  op1_ <> 5 then status := ' and (i.status is null or i.status ="" or i.status ="A") ';

        codloc :='1';
        if (op1_=0) or (op1_=5) then begin
           if  op1_ <> 5 then
               op1 := msgi('Relatório de :' + #13 + #13 +
                           '1 = Venda . . . . . . ' + #13 +
                           '2 = Devol . . . . . .  ' + #13 +
                           '3 = Venda/Devol  ' + #13 +
                           '4 = Comissões .  '+ #13 +
                           '5 = Venda Cancel' ,2)
           else op1 := '5';

        if op1 = '5' then begin
           relatorio('','data','',
                       ' select chave, numero , data , DtFechamento, codigo , nome from tbpedido',
                         '',
                         ' and status = "C" ',
                         '',
                         '','','',' ','','','','','','', '','','','','','','',
                         '','tbpedido',
                         'Relatório de vendas canceladas','tbpedido',0,0);
                         abort;
        end;


            if not (strtoint(op1) in[1..4]) then msg('#Opção inválida.',0);


            codloc := '1';
            op2 := msgi('Opções de relatório:' + #13 + #13 +
                       '1 = Ver - Totais' + #13 +
                       '2 = Ver - Itens   ', 2);

        end else begin
            op1 := inttostr(op1_);
            op2 := inttostr(op2_);
            if op1_ = 5 then op1 :='3';
        end;


        if not (strtoint(op2) in[1..2]) then msg('#Opção inválida.',0);

         codloc := '1';
         op3 := msgi('Opções de relatório:' + #13 + #13 +
                      '1 = Mostrar Tudo     ' + #13 +
                      '2 = Agrupar/Somar', 2);

        if not (strtoint(op3) in[1..2]) then msg('#Opção inválida.',0);


        if      op1='2' then tit := 'Relatório de Devoluções/Cliente'
        else if op1='3' then tit := 'Vendas e Devoluções/Cliente'
        else if op1='4' then tit := 'Comissões Vendas'
        else            tit := 'Relatório de Vendas';


        if op1='4' then begin

           if      op2 = '1' then  comv := ' and VrComissao <> 0 '
           else if op2 = '2' then  comv := ' and (i.comissao >0) ';
//           else                    comv := ' and i.comissao <-1 ';

           op1 :='3';
        end;
                         

        //pedido tudo sem devolucao
        if (op1='1') and (op2='1') and (op3='1') then
            relvenda('tbpedido','  and (totalpeca >0 or totalservico >0 or vrlocacao>0)  '+avulso,tit,17,false)

        //pedido total sem devolucao
        else if (op1='1') and (op2='1') and (op3='2') then
            relvenda('tbpedido','  and (totalpeca >0 or totalservico >0 or vrlocacao>0) '+avulso,tit,17,true)


        //dev pedido tudo
        else if (op1='2') and (op2='1') and (op3='1') then
            relvenda('tbpedido','  and devolucao >0  ',tit,17,false)

        //dev pedido total
        else if (op1='2') and (op2='1') and (op3='2') then
            relvenda('tbpedido','  and devolucao >0  ',tit,17,true)


        //pedido tudo com devolucao
        else if (op1='3') and (op2='1') and (op3='1') then
            relvenda('tbpedido',comv,tit,17,false)

        //pedido total com devolucao
        else if (op1='3') and (op2='1') and (op3='2')  then
            relvenda('tbpedido',comv,tit,17,true)






        // vendaitem tudo sem devolucao
        else if (op1='1') and (op2='2') and (op3='1') then begin
             gp := ' group by i.chave ';
             vddev := ' and i.qtd > 0 ';
             vdtot;

        //vendaitem total  sem devolucao
        end else if (op1='1') and (op2='2') and (op3='2') then begin
             gp := ' group by i.codigo, i.vrunit, i.descontoreal, i.acrescimo ';
             vddev := ' and i.qtd > 0 ';
             vdtot;

        // vendaitem tudo com devolucao
        end else if (op1='3') and (op2='2') and (op3='1') then begin
             gp := ' group by i.chave ';
             vdtot;

        //vendaitem total  com devolucao
        end else if (op1='3') and (op2='2') and (op3='2')  then begin
             gp := ' group by i.codigo, i.vrunit, i.descontoreal, i.acrescimo ';
             vdtot;

        // vendaitem devolucao tudo
        end else if (op1='2') and (op2='2') and (op3='1') then begin
             gp := ' group by i.chave ';
             vddev := ' and i.qtd < 0 ';
             vdtot;

        //vendaitem   devolucao  total
        end else if (op1='2') and (op2='2') and (op3='2') then begin
             gp := ' group by i.codigo, i.vrunit, i.descontoreal, i.acrescimo ';
             vddev := ' and i.qtd < 0 ';
             vdtot;
        end;


end;


procedure relvenda(tb,criterio,cap:string;num:integer;somar:boolean);
var
select,campos, cpcli,serv,  dtfec, fec,tipovenda,TotalServico, vrlocacao,svrlocacao,cpvrlocacao,lc,
mprivd,tipoestoque,gpby,order, margem,custo,lucro,valoricmsubstituicao,vrcouvert,vendedor:string;
n1:integer;
begin        


         if mprima then begin
            codloc :='1';
            mprivd := msgi('Digite uma opção:'+#13+#13+'1 = Produto     '+#13+
                                                       '2 = Mat. Prima',2);
            if mprivd = '2' then mprivd :='mp'
                            else mprivd :='';
         end;

         if mprivd = '' then tipoestoque:= ' and (tipoestoque <> "3" or tipoestoque is null)'
         else                tipoestoque:= ' and tipoestoque = "3"';


        if codloc ='Relatório de vendas - Devolver' then begin
           cap := codloc;
           tipovenda := ' ,tipovenda ';
        end;


        //rel venda
        if num = 17 then begin
           if somar then
              lc := ' sum(Custo) as Custo , '+
                    ' sum(if (total=0,0, (total - if(totalservico is null,0,totalservico)) - custo)) as Lucro, '+

                    ' sum(if (total=0,0, ((total - if(totalservico is null,0,totalservico)) * 100 / Custo) -100))  * if (total>custo and custo<0,(-1),1) as Margem, '

           else
              lc := ' Custo, '+
                    ' if (total=0,0, (total - if(totalservico is null,0,totalservico)) - custo) as Lucro, '+

                    ' if (total=0,0, ((total - if(totalservico is null,0,totalservico)) * 100 / custo) -100)  * if (total>custo and custo<0,(-1),1) as Margem, ';

              margem := 'Margem';
              custo  := 'Custo' ;
              lucro  := 'Lucro' ;
        end;


        codloc :='';
        campos :='';
        cpcli:='';

        if lowercase(tb)='venda' then
           fec :='"ABE"'
        else
           fec :='"FEC"';


        if num<>14 then
           dtfec:= ' dtdevolucao as DtAprov, DtEntrega, ';

        if (lowercase(tb) = 'tbpedido') and (num<>14) then begin
           dtfec:= ' DtFechamento, ' + dtfec;



           cpcli := ' Nomecurto, '+
                    ' DDD ,'+
                    ' Fone , '+
                    ' Fone2 , '+
                    ' Endereco,'+
                    ' Bairro,'+
                    ' Municipio,'+
                    ' UF,'+
                    ' Cep,'+
                    ' CNPJ,'+
                    ' IE, ';
        end;

        if not somar then begin
              if tipoempresa = 'P' then
                 campos := campos + ',campo1 as Nome_Animal, campo4 as Raca, '+
                           'campo6 as Peso, campo3 as Nascimento '

              else if tipoempresa = 'E' then
                 campos := campos + ', campo1 as Aparelho, campo4 as Serie, campo2 as Marca, '+
                                    'campo3 as Modelo, campo7 as Garantia '

              else if tipoempresa = 'I' then
                 campos := campos + ', campo1 as Maquina, campo4 as Serie, '+
                                    'campo6 as Cont_Final, campo7 as Garantia '

              else if tipoempresa = 'A' then
                 campos := campos + ', campo1 as Veiculo, campo8 as Placa, campo5 as Frota, '+
                                    ' campo4 as Chassi, campo2 as Ano ';
        end;

        campos := campos + ', chave as chavepedido ';

        selecione('select os,vrcouvert,locacao from tbconfig');

        if sqlpub.fieldbyname('vrcouvert').AsFloat >0 then vrcouvert:= 'VrCouvert'
                                                      else vrcouvert:= 'TotalServico' ;


        if (sqlpub['os']='S') or (sqlpub.fieldbyname('vrcouvert').AsFloat >0) then begin

           if somar then serv :=  ', sum('+vrcouvert+')as '+vrcouvert
           else          serv :=  ', '+vrcouvert;

           TotalServico := vrcouvert;
        end;

        if sqlpub['locacao'] = 'S' then begin
           vrlocacao := 'VrLocacao';
           svrlocacao:= 'sum(vrlocacao) as vrlocacao,';
           cpvrlocacao:= 'vrlocacao,';
        end;


           if somar then begin
              if responsavel = '00.409.614/0001-21' then
                 valoricmsubstituicao := 'sum(valoricmsubstituicao) as SubstTrib, ';

              select := 'select chave, data, numero, codigo, nome , sum(Total) as Total, sum(TotalPeca) as TotalPeca, '+
                        ' sum(TotalPeca '+
                        ' + if(Acrescimo is null,0,Acrescimo)' +
                        ' - if(Descontoreal is null,0,Descontoreal)) as SomaPeca ' +
                         serv+
                        ' , sum(Acrescimo)as Acrescimo, '+
                        valoricmsubstituicao +
                        svrlocacao+
                        ' sum(Descontoreal)as Descontoreal, sum(Devolucao)as Devolucao, '+ lc +
                        ' sum(Credito)as Credito, sum(if(troco is not null,dinheiro-troco,dinheiro)) as Dinheiro, sum(Cheque)as Cheque, '+
                        ' sum(ChequePre)as ChequePre, sum(Cartao)as Cartao, sum(Cartaod)as Cartaod, sum(fiado)as A_Prazo,'+
                        ' sum(VrComissao) as VrComissao,sum(totalitem) as Totalitem ';
              gpby   := ' group by data, codigo, codigovendedor ';
              order  := 'data';
              num:=0;

           end else begin
              if responsavel = '00.409.614/0001-21' then
                 valoricmsubstituicao := ' valoricmsubstituicao as SubstTrib, ';

              vendedor := nomelink('codigovendedor','codigo', 'nome','tbfuncionario','Vendedor');

              select    := 'select chave, chave as chavepedido,linkvenda, tipoestoque, '+
                           fec+' as Status, data, '+dtfec+' numero, SPedido, NF, codigo, nome '+
                           ', Total,TotalPeca, '+
                           ' TotalPeca '+
                           ' + if(Acrescimo is null,0,Acrescimo)' +
                           ' - if(Descontoreal is null,0,Descontoreal) as SomaPeca ' +
                           serv + ', Acrescimo,'+ valoricmsubstituicao  +  cpvrlocacao +
                           ' Descontoreal, Devolucao, '+  lc +
                           ' Credito,Cartaod, if(troco is not null,dinheiro-troco,dinheiro) as Dinheiro, '+
                           ' if (Cheque is null,0,Cheque) + if (ChequePre is null,0,ChequePre) as Cheque, '+
                           ' Cartao,  Fiado as A_Prazo, Comissao, VrComissao, Totalitem, FormaPgto, '+
                           ' CodigoVendedor, '+vendedor+', Avulso, '+ cpcli+
                           ' codigo as chave1 '+tipovenda+campos+', Pago, obs ';
              order  := 'numero';
           end;




        sqlpub := nil;

        if num=17 then n1 :=1 else n1 :=0;


        relatorio('','data',order,
                     select  ,
                     ' from '+tb,
                     criterio + ' and (status is null or status ="" or status = "A") '+tipoestoque + sqlempresa(1,1,''),
                     gpby,
                     'Total','SomaPeca','TotalPeca','Descontoreal','Acrescimo', 'Devolucao',TotalServico,'VrComissao',vrlocacao,
                     margem,lucro, custo,'CartaoD','Cartao','Cheque','Credito','Dinheiro','A_Prazo',
                     'tbpedidolistagem',
                     cap, tb,n1,num);

end;



procedure tfdm.gentrada(tbo,tbd,numero,tb,cptb_,cptbitem_:string);
{tbo ='nome tabela de origem';  tbd ='nome tabela de destino';
 numero ='numero da entrada'}
//tb='DF', tb='', tb='MP'
var
chaveO, chaveD, cod, cptb, cptbitem:string;
sq:tzquery;
begin

        //os campos das tabelas
        if cptb_='' then cptb := 'select * '
        else             cptb := 'select '+ cptb_;

        if cptbitem_='' then cptbitem := 'select * '
        else             cptbitem := 'select '+ cptbitem_;



        sq :=  tzquery.Create(application);
        with sq do begin
             Connection := fdm.conector ;

            sql.clear;
            sql.Add(cptb+' from ' + tbo + tb+ ' where ' + ' numero = ' + quotedstr(numero));

             open;
             cod :=  fieldbyname('codigo').AsString;
             //grava a nota em outra tabela
             grava(nil,sq,tbd+tb);

             //chave das notas
             sql.clear;
             sql.add('select chave from ' + tbo + tb+ ' where ' + ' numero = ' + quotedstr(numero));
             open;
             chaveO := fieldbyname('chave').AsString;

             sql.clear;
             sql.add('select chave from ' + tbd + tb+' where ' + ' numero = ' + quotedstr(numero));
             open;
             chaved := fieldbyname('chave').AsString;

             //acerta o link das contas
             if lowercase(tbd)='tbentrada' then begin
                selecione('update tbpagar set at= "x", linkvenda = ' + quotedstr(chaved)+
                          ' where  modulo= "8" and at is null and linkvenda = ' + quotedstr(chaveo)+ ' and codigo = '+ quotedstr(cod));

                selecione('update tblancacontabil set at= "x",  linkvenda = ' + quotedstr(chaved)+
                          ' where  modulo= "8" and at is null and linkvenda = ' + quotedstr(chaveo));

                selecione('update tbentradacaixa set at= "x",  linkvenda = ' + quotedstr(chaved)+
                          ' where  modulo= "8" and at is null and linkvenda = ' + quotedstr(chaveo));

                selecione('update tbbancomovimento  set at= "x",  linkvenda = ' + quotedstr(chaved)+
                          ' where  modulo= "8" and at is null and linkvenda = ' + quotedstr(chaveo));

             end;

             sql.clear;
             sql.Add(cptbitem+' from ' + tbo + 'item'+ tb+' where ' + ' link = ' + quotedstr(chaveO));
             open;
             //grava itens
             sq.first;
             while not eof do begin
                sq.edit;
                sq['link'] := chaveD;

                try
                  sq['codigofornecedor'] := cod;
                except end;
                grava(nil,sq,tbd+'item' + tb);
                sq.Cancel;
                sq.next;
             end;


            // apaga ja gravado
           // if msg('apagar',2)= true then begin
            sql.clear;
            sql.Add('delete from ' + tbo + tb+ ' where ' + ' chave = ' + quotedstr(chaveO));
            execsql;

            sql.clear;
            sql.Add('delete from ' + tbo +'item'+ tb+' where ' + ' link = ' + quotedstr(chaveO));
            execsql;

           // end;
            destroy;
         end;

end;






function tfdm.numnota(emp:string;pedido:boolean):integer;
var
nff,nfa:integer;
begin

        nfa:=0;

        selecione('select max(numero)as numero from tbentrada'+emp);
        nff := sqlpub.fieldbyname('numero').AsInteger + 1;


        if not pedido then begin
           selecione('select max(numero)as numero from tbe'+emp);
           nfa := sqlpub.fieldbyname('numero').AsInteger + 1;
        end;

        if nff > nfa then result := nff
                     else result := nfa;
end;








       


procedure geranota(tbg, tbp, tbs, tbdev:tzquery; tb:string);
begin

showmessage('');
end;



procedure cadg (script, ind:string;modulo:integer);
begin
          {select tb, campoordem, modulo}
          acesso1(capmodulo(inttostr(modulo)));
          fcadg := tfcadg.Create(application,script,ind,modulo);
          fcadg.showmodal;
end;



procedure vidamov(codigo:string;modulo:integer);
begin
       fmovimento:= tfmovimento.Create(application,codigo,modulo);
       fmovimento.ShowModal;
end;



procedure vertef;
begin
        if fileexists (servpath + 'imagem\tef.cds') then begin
              fdm.tbtef.FileName :=servpath + 'imagem\tef.cds';
              fdm.tbtef.open;
           end
           else begin

              fdm.tbtef.CreateDataSet;
              fdm.tbtef.open;
        end;
end;


procedure marcatef(cupom:string;posicao:integer;ncupom,texto:string);
begin

        if fdm.tbtef.Active = false then
           vertef;

        fdm.tbtef.edit;

        if cupom <> '' then
           fdm.tbtef['cupom'] := cupom;

        if posicao >0 then
           fdm.tbtef['posicao'] := posicao;

        if ncupom <> '' then
           fdm.tbtef['ncupom'] := ncupom;

        if texto <> '' then
           fdm.tbtef['texto'] := texto;

        fdm.tbtef.Post;
        fdm.tbtef.SaveToFile(servpath + 'imagem\tef.cds');
end;

procedure desmarcatef;
begin
        fdm.tbtef.close;
        fdm.tbtef.createdataset;
        fdm.tbtef.open;
        fdm.tbtef.SaveToFile(servpath + 'imagem\tef.cds');
        fdm.tbtef.close;
end;




procedure ultcompra(codigo,mp:string);
var
ent,descricao:string;
begin
        if codigo ='' then
           msg('#Vecê não tem registro selecionado.', 0);

        selecione('select descricao from tbproduto where codigo = '+ quotedstr(codigo));
        descricao := sqlpub.fieldbyname('descricao').AsString;


         if entsimp then
            ent := ' if (i.descontoreal is not null, i.vrunit - i.descontoreal,i.vrunit) as VrUnit '
        else
           ent :=  ' if (i.desctotal is not null, i.vrunit - (i.desctotal/i.qtd),i.vrunit) as VrUnit ' ;


        relatorio('','','',
                  'select i.chave,  g.Codigo, g.Nome, g.Fone,  '+
                  '  i.Data as UltCompra, g.Numero as N_Ent, g.NF, i.Qtd, '+
                  ent,

                 ' from tbentrada'+mp+' as g, tbentradaitem'+mp+ ' as i ',

                 ' and i.cnt is null and g.chave=i.link '+
                 ' and i.codigo = ' + quotedstr(codigo)+
                 ' order by i.data desc limit 0, 30',

                  '','','','','','', '','','','','','','', '','','','','','',
                  'i',
                  'Últ Compras(Cód/Prod): '+
                  codigo +' - '+ descricao,
                  'i',0,0);
end;





procedure baixa_estorna(flag:integer;grade:tdbgrid;tb:tclientdataset;tz:tzquery;ntabela:string);
var
i,nfinance:integer;
filtro,tb1,tb2:string;
begin

           //baixa
           if (flag = 0) or (flag = 2)or (flag = 3) then
              tb1:='p'
           else tb2:='p';

           abortaacao(tb,nil,'chave','','','','',0);

          if flag=1 then
             senhagerencial('ESTORNAR CONTA',
                            'DIGITE A SENHA GERENCIAL PARA ESTORNAR:',
                            'ESTORNAR CONTA');

           //baixar
           if (flag=0) and (Application.MessageBox('Deseja baixar a(s) parcela(s) selecionada(s)? ',
                                          'Confirme', 4 + MB_ICONQUESTION) = idno) then abort;

           //apaga a numeracao mas devolve o novo atualizado
           if (flag = 0) or (flag=2) then begin
              selecione( 'select nfinance from tbconfig');
              nfinance := sqlpub.fieldbyname('nfinance').AsInteger+1;
              selecione( 'update tbconfig set nfinance = '+quotedstr(inttostr(nfinance)));
           end;


           if  tb <> nil then begin

              for i := 0 to Pred(grade.SelectedRows.Count) do begin
                  grade.DataSource.DataSet.Bookmark := grade.SelectedRows[i];
                  if filtro = '' then
                     filtro := 'chave = ' + quotedstr(tb.fieldbyname('chave').AsString)
                  else filtro := filtro + ' or chave = ' + quotedstr(tb.fieldbyname('chave').AsString);
              end;


              tb.Filtered := false;
              tb.Filter := filtro;
              tb.Filtered := true;

              tb.First;
              while not tb.Eof do begin

                   if (flag = 0) or (flag = 2) or (flag = 3) then begin
                      tb.Edit;
                     tb['flag'] :=nfinance;

                      //financeiro:isento ou nao
                      if flag=3 then
                         tb['tp2'] :='1'
                      else tb['tp2'] :=null;
                   end;

                   if dtpgto <> strtodate('01/01/1900') then begin
                      tb.Edit;
                      tb['dtvencimento'] := dtpgto;
                   end;

                   grava(tb, nil,'tbfinanceiro'+tb1);
                   tb.Cancel;

                   selecione( 'delete from tbfinanceiro'+tb2+' where chave = '+
                               quotedstr(tb.fieldbyname('chave').asstring));
                   tb.Next;
             end;


             if (flag = 0) or (flag = 2) then
                GALTERA('17',inttostr(nfinance),'e')
             else if tb['flag'] <> null then
                   GALTERA('17',tb['flag'],'s')
             else  GALTERA('17',tb['chave'],'s');

             tb.Filtered := false;
             tb.Cancel;
             tb.Refresh;




         end else begin

              for i := 0 to Pred(grade.SelectedRows.Count) do begin
                  grade.DataSource.DataSet.Bookmark := grade.SelectedRows[i];
                  if filtro = '' then
                     filtro := 'chave = ' + quotedstr(tz.fieldbyname('chave').AsString)
                  else filtro := filtro + ' or chave = ' + quotedstr(tz.fieldbyname('chave').AsString);
              end;


              tz.Filtered := false;
              tz.Filter := filtro;
              tz.Filtered := true;

              tz.First;
              while not tz.Eof do begin

                   if (flag = 0) or (flag = 2) or (flag = 3) then begin
                      tz.Edit;
                     tz['flag'] :=nfinance;

                      //financeiro:isento ou nao
                      if flag=3 then
                         tz['tp2'] :='1'
                      else tz['tp2'] :=null;
                   end;

                   if dtpgto <> strtodate('01/01/1900') then begin
                      tz.Edit;
                      tz['dtvencimento'] := dtpgto;
                   end;

                   grava(tz, nil,'tbfinanceiro'+tb1);
                   tz.Cancel;

                   selecione( 'delete from tbfinanceiro'+tb2+' where chave = '+
                               quotedstr(tz.fieldbyname('chave').asstring));
                   tz.Next;
             end;


             if (flag = 0) or (flag = 2) then
                GALTERA('17',inttostr(nfinance),'e')
             else
                GALTERA('17',tz['flag'],'s');

             tz.Filtered := false;
             tz.Cancel;
             tz.Refresh;

         end;


         Application.MessageBox('Operação realizada com sucesso!', 'Confirmação', 0 + MB_ICONWARNING);


end;






procedure Tfdm.Movprod(codigo,mpri:string);
var
cptot, cpqtde, cpvrunit, vedev,
ntb,scr,dtini, dtfin,descricao,ultimavenda, ultimacompra, data,curvavalor,curvaqtd, st,vditem:string;
ant,vrunit,vrvenda,estoque,qtestoque,total:double;
sq:tzquery;             
i:integer;
r6:tstringlist;
begin
        mpri := uppercase(mpri);


        st := msgi('Entre com o período',3);

        dt1 :=  strtodate(copy(st,1,10));
        dt2 :=  strtodate(copy(st,11,10));

       sq := tzquery.Create(application);
       with sq do begin
            sq.Connection := fdm.conector;

            sql.Clear;
            sql.add('update tbentradaitem'+mpri+' i, tbentrada'+mpri+' e set i.data= e.data where '+
                    ' e.chave = i.link and i.codigo = '+quotedstr(codigo));
            execsql;

            sql.Clear;
            sql.add( 'select descricao, vrunit,vrvenda, estoque, '+
                     ' ultimavenda, ultimacompra, ultalteracao as data,curvavalor,curvaqtd '+
                     ' from tbproduto'+mpri+
                     ' where codigo = '+ quotedstr(codigo));
            open;

            descricao := fieldbyname('descricao').asstring;
            vrunit := fieldbyname('vrunit').AsFloat;
            vrvenda := fieldbyname('vrvenda').AsFloat;
            estoque := fieldbyname('estoque').AsFloat;
            ultimavenda := fieldbyname('ultimavenda').asstring;
            ultimacompra := fieldbyname('ultimacompra').asstring;
            data := fieldbyname('data').asstring;
            curvavalor := fieldbyname('curvavalor').asstring;
            curvaqtd := fieldbyname('curvaqtd').asstring;
            close;


            dtini := quotedstr(formatdatetime('yyyy/mm/dd', dt1));
            dtfin := quotedstr(formatdatetime('yyyy/mm/dd', dt2));

            scr := ' where data between '+ dtini+  ' and ' + dtfin+ ' and codigo = '+quotedstr(codigo);



            //soma as entradas e saidas

            qtestoque :=0;
            for i :=1 to 7 do begin

                if      i =1 then ntb := 'tbentradaitem'+mpri
                else if i =2 then ntb := 'tbeitem'+mpri
                else if i =3 then ntb := 'vendadevolucao'

                else if i =4 then ntb := 'tbpedidoitem'
                else if i =5 then ntb := 'tbentradaitemdf'
                else if i =6 then ntb := 'vendaitem'
                else if i =7 then ntb := 'tbeitemdf';


                if i=6 then vditem  := ' and modo <> "O" '
                       else vditem  := '';

                close;
                sql.Clear;
                sql.Add('select sum(qtd)as qtd from '+ntb+' where codigo = '+quotedstr(codigo)+vditem);
                //debugstr(sq);
                open;
                //se for mat prima e estiver selecionando devolucao
                if (mpri ='MP') and ((i=5) or(i=7)) then begin
                   sq.edit;
                   sq['qtd'] :=0;
                end;


                if (i < 4) or (fieldbyname('qtd').AsFloat<0) then begin

                   //se devolucao pedido
                   if fieldbyname('qtd').AsFloat<0 then
                      qtestoque := qtestoque + (fieldbyname('qtd').AsFloat*(-1))
                   else
                      qtestoque := qtestoque + fieldbyname('qtd').AsFloat;

                end else
                   qtestoque := qtestoque - fieldbyname('qtd').AsFloat;

            end;


            // acerta as entradas e devolucoes de acordo com o estoque
            close;
            SQL.clear;


            //se o estoque from maior que as entradas
            if estoque > qtestoque then begin
               sql.add( 'insert into tbentradaitem'+mpri+' (codigo,qtd,link,data)values( '+
                        quotedstr(codigo)+  ','+ realdblstr(estoque - qtestoque)+  ',-1,"1900-01-01")');
               execsql;

            //se o estoque from menor que as entradas, e materia prima
            end else if  mpri ='MP'  then begin
               sql.add( 'insert into tbentradaitemmp (codigo,qtd,link,data)values( '+
                        quotedstr(codigo)+  ','+ realdblstr(qtestoque - estoque)+  ',-1,"1900-01-01")') ;
               execsql;


            //se o estoque from menor que as entradas, devolver
            end else if qtestoque > estoque   then begin
               sql.add( 'insert into tbentradaitemdf (codigo,qtd,link,data)values( '+
                        quotedstr(codigo)+  ','+ realdblstr(qtestoque - estoque)+  ',-1,"1900-01-01")') ;
               execsql;
            end;



            ant :=0;
            for i :=1 to 7 do begin

                if      i =1 then ntb := 'tbentradaitem'+mpri
                else if i =2 then ntb := 'tbeitem'+mpri
                else if i =3 then ntb := 'vendadevolucao'

                else if i =4 then ntb := 'tbentradaitemdf'
                else if i =5 then ntb := 'vendaitem'
                else if i =6 then ntb := 'tbpedidoitem'
                else if i =7 then ntb := 'tbeitemdf';

                if i=5 then vditem  := ' and modo <> "O" '
                       else vditem  := '';

                // soma estoque anterior ao periodo
                close;
                SQL.clear;
                sql.add( 'select sum(qtd)as qtd from '+ntb+' where '+
                         ' (data < '+ dtini+ ' or data is null) and codigo = '+quotedstr(codigo)+vditem);
                open;

                //debugstr(sq);

                //se for mat prima e estiver selecionando devolucao
                if (mpri ='MP') and ((i=4) or(i=7)) then begin
                   sq.edit;
                   sq['qtd'] :=0;
                end;

                if (i < 4) or (fieldbyname('qtd').AsFloat<0) then begin

                   if fieldbyname('qtd').AsFloat<0 then //se devolucao pedido
                      ant := ant + (fieldbyname('qtd').AsFloat*(-1))
                   else //se entrada
                      ant := ant + fieldbyname('qtd').AsFloat;

                end else
                   ant := ant - fieldbyname('qtd').AsFloat;

          end;


          //grava na tabela para visualizar
          tbmov.IndexFieldNames:='';
          tbmov.Close;
          tbmov.CreateDataSet;
          tbmov.Open;
          tbmov.IndexFieldNames:='data';

          tbmov.Insert;
          tbmov['chave'] := tbmov.RecordCount;
          tbmov['data']:= dt1 - 1 ;
          tbmov['estiniqtd']:= ant ;
          tbmov['estinivr']:= vrunit * (ant);
          tbmov['estfinqtd']:= ant ;
          tbmov['estfinvr']:=vrunit * (ant);
          tbmov['acumulo']:= ant;

          if tbmov.fieldbyname('estfinqtd').AsFloat <> 0 then
             tbmov['customedio']:= tbmov.fieldbyname('estfinvr').AsFloat /
                                   tbmov.fieldbyname('estfinqtd').AsFloat ;
          tbmov.Post;



                          

            for i :=1 to 8 do begin
                                

                cptot := 'total';
                vedev :='';

                //entrada
                if i =1 then begin
                   cptot     := 'totnf';
                   ntb := 'tbentradaitem'+mpri;
                   cpqtde    := 'qtde';
                   cpvrunit  := 'vrunite';
                   //vedev := ' and cnt is null ';

                //devolucao cliente
                end else if (i = 2) or(i = 3) then begin

                   if i = 2 then
                      ntb := 'vendadevolucao'
                   else if i = 3 then begin
                      ntb := 'tbpedidoitem' ;
                      vedev := ' and qtd < 0 ';
                   end;

                   cpqtde    := 'qtdsd';
                   cpvrunit  := 'vrunitsd';


                //devfor
                end else if i = 4 then begin
                    ntb := 'tbentradaitemdf';
                    cpqtde    := 'qtded';
                    cpvrunit  := 'vrunited';

                // venda
                end else if (i = 5) or (i = 6) then begin
                    cpqtde    := 'qtds';
                    cpvrunit  := 'vrunits';

                    if i = 6 then begin
                       ntb := 'tbpedidoitem';
                       vedev := ' and qtd > 0 ';

                    end else
                        ntb := 'vendaitem';


                {end else if i = 7 then begin
                   cptot     := 'totnf';
                   ntb := 'tbentradaitem'+mpri;
                   cpqtde    := 'qtdinv';
                   cpvrunit  := 'vrunitinv';
                   vedev := ' and cnt is not null ';}

                //entrada aberto
                end else if i = 7 then begin
                   cptot     := 'totnf';
                   ntb := 'tbeitem'+mpri;
                   cpqtde    := 'qtde';
                   cpvrunit  := 'vrunite';

                //devfor aberto
                end else if i = 8 then begin
                    ntb := 'tbeitemdf';
                    cpqtde    := 'qtded';
                    cpvrunit  := 'vrunited';

                end;


                if i=5 then vditem  := ' and modo <> "O" '
                       else vditem  := '';


                //itens dia a dia
                close;
                SQL.clear;
                sql.add( 'select data, sum(qtd)as qtd, sum('+cptot+')as total '+
                         ' from '+ ntb + scr + vedev + vditem+
                         ' group by data, codigo order by data, codigo');
                open;


                //debugstr(sq);

                //se for mat prima e estiver selecionando devolucao
                if (mpri ='MP') and ((i=4) or(i=8)) then begin
                   sq.edit;
                   sq['qtd'] :=0;
                   sq['total'] :=0;
                end;

                while not eof do begin

                     if tbmov.Locate('data',fieldbyname('data').AsString,[]) then
                        tbmov.edit
                     else begin
                        tbmov.Insert;
                        tbmov['chave'] := tbmov.RecordCount;
                     end;

                     tbmov['data']:=fieldbyname('data').AsDateTime ;
                     tbmov[cpqtde]:= tbmov.fieldbyname(cpqtde).AsFloat +
                                     fieldbyname('qtd').AsFloat;

                     if (fieldbyname('total').AsFloat >0) and (fieldbyname('qtd').AsFloat >0) then
                        tbmov[cpvrunit]:= tbmov.fieldbyname(cpvrunit).AsFloat +
                                          (fieldbyname('total').AsFloat / fieldbyname('qtd').AsFloat);

                     tbmov.Post;
                     next;
               end;//fim gravar itens

            end;// fim loop

        end; // fim sql

        //loop para somar


        tbmov.First;
        ant :=0;
        while not tbmov.Eof do begin
              tbmov.Edit;
              tbmov['estfinqtd']:=(tbmov.fieldbyname('estiniqtd').AsFloat+
                                  tbmov.fieldbyname('qtde').AsFloat+
                                  tbmov.fieldbyname('qtdsd').AsFloat)-
                                  (tbmov.fieldbyname('qtded').AsFloat+
                                  tbmov.fieldbyname('qtds').AsFloat);

              tbmov['estfinvr']:=  tbmov.fieldbyname('estfinqtd').AsFloat*vrunit;
              tbmov['acumulo']:=ant + tbmov.fieldbyname('estfinqtd').AsFloat ;
              ant := tbmov.fieldbyname('acumulo').AsFloat;



              if (tbmov.fieldbyname('estfinvr').AsFloat <> 0) and
                 (tbmov.fieldbyname('estfinqtd').AsFloat <> 0) then
                 tbmov['customedio']:= tbmov.fieldbyname('estfinvr').AsFloat /
                                      tbmov.fieldbyname('estfinqtd').AsFloat;
             tbmov.post;
             tbmov.Next;
      end;


                numcoluna:=30;
                r6 := tstringlist.Create;
                r6.Add(compstr('Estoque Atual: ', format('%n',[estoque])) + '        '+
                       compstr('Última Compra',ultimacompra));
                r6.Add(compstr('Vr Compra: ', format('%n',[vrunit])) + '        '+
                       compstr('Última Venda',ultimavenda));
                r6.Add(compstr('VrVenda  : ', format('%n',[vrvenda]))+ '        '+
                       compstr('Última Alteração',data));
                r6.Add(compstr('Compra x Estoque: ', format('%n',[vrunit*estoque]))+ '        '+
                       compstr('Curva Valor',curvavalor));
                r6.Add(compstr('Venda x Estoque :', format('%n',[vrvenda*estoque]))  + '        '+
                      compstr('Curva Qtd',curvaqtd));





        with query1 do begin

            //total comprado no periodo
             close;
             SQL.clear;
             sql.add( 'select sum(if (descontoreal is not null, ' +
                      'vrunit - descontoreal,vrunit)) as total ' +
                      ' from tbentradaitem'+mpri+' where data between '+
                      dtini + ' and ' + dtfin+
                      ' and codigo = '+quotedstr(codigo));
             open;

             total:= fieldbyname('total').AsFloat;
             close;
             SQL.clear;
             sql.add( 'select data, if (descontoreal is not null, ' +
                                        'vrunit - descontoreal,vrunit) as valor ' +
                            ' from tbentradaitem'+mpri+' where data between '+
                              dtini + ' and ' + dtfin+
                            ' and codigo = '+quotedstr(codigo)+
                            ' group by vrunit, descontoreal order by data desc limit 0,9');
             open;


             if fieldbyname('valor').AsFloat >0 then begin

                r6.Add(' ');
                r6.Add(compstr('Comprado no período: ', format('%n',[total])));
                r6.Add(' ');
                r6.Add('Os 10 últimos valores de compra do produto no período:');

                while not eof do begin
                      r6.Add(compstr(fieldbyname('data').AsString,
                                        format('%n',[fieldbyname('valor').Asfloat])));
                      next;
                end;

             end;


             //total vendido no periodo
             close;
             SQL.clear;
             sql.add( 'select sum(if (descontoreal is not null, ' +
                                        'vrunit - descontoreal,vrunit)) as total ' +
                            ' from tbpedidoitem where data between '+
                              dtini + ' and ' + dtfin+
                            ' and codigo = '+quotedstr(codigo));
             open;

             total:= fieldbyname('total').AsFloat;
             close;
             SQL.clear;
             sql.add( 'select data, if (descontoreal is not null, ' +
                                        'vrunit - descontoreal,vrunit) as valor ' +
                            ' from tbpedidoitem where data between '+
                              dtini + ' and ' + dtfin+
                            ' and codigo = '+quotedstr(codigo)+
                            ' group by vrunit, descontoreal order by data desc limit 0,9');
             open;


             if fieldbyname('valor').AsFloat >0 then begin

                r6.Add(' ');
                r6.Add(compstr('Vendido no período: ', format('%n',[total])));
                r6.Add(' ');
                r6.Add('Os 10 últimos valores de venda do produto no período:');

                while not eof do begin
                      r6.Add(compstr(fieldbyname('data').AsString,
                                        format('%n',[fieldbyname('valor').Asfloat])));
                      next;
                end;

             end;
             close;
        end;


        //fimp.gindex.ItemIndex  :=1;
        //fimp.cgrupoClick(self);
        //fimp.showmodal;
        qtdlinha:=0;
        tbmov.IndexFieldNames := 'data';
        r6.SaveToFile('c:\rel.txt');
        r6.Free;
        codloc :=codigo;
        reltb(tbmov,'movprod',codigo + ' - '+ descricao + ' - Mov. Produto de : '+ formatdatetime('dd-mm-yy',dt1)+ ' a '+  formatdatetime('dd-mm-yy',dt2),'','', '', '','','','','', '', '','','','');
        deletefile('c:\rel.txt');
        tbmov.Close;
        fdm.tbquery1.close;
        codloc :='';

end;



procedure itemcompra(doc,linkvenda:string);

var
sql:tzquery;
filtro,chave,tbcompra,numero,modulo,tbfatura:string;
begin

          sql := tzquery.Create(application);
          sql.Connection := fdm.conector;

          modulo := copy(doc, 1,2);
          numero := copy(doc, 3,10);

                  if (modulo <> 'P ') and
                  (modulo <>'T ') and
                  (modulo <> 'B ') and
                  (modulo <> 'TB') and
                  (modulo <> 'N ') and
                  (modulo <> 'E ') and
                  (modulo <> 'AP') and
                  (modulo <> 'AB') and
                  (modulo <> 'AE') then begin
                  Application.MessageBox('Esta conta não foi gerada diretamente de uma compra!!!',
                                         'Atenção', 0 + MB_ICONWARNING);
                  abort;
                  end;



           // se foi gerado de um acerto;
          if (modulo = 'AP')  or  (modulo = 'AB') or (modulo = 'AE') then begin
             if modulo = 'AE' then begin
                tbfatura := 'tbacertocompra';
                tbcompra := 'tbentrada';
             end else begin
                tbfatura := 'tbacertovenda';
                if modulo = 'AP'then
                  tbcompra := 'tbpedido'
                else if modulo = 'AB'then
                  tbcompra := 'tbpedido';
             end;

               with sql do begin
                     close;
                     sql.clear;
                     sql.add('select numero from '+tbfatura+' where numero = '+
                     quotedstr(linkvenda));
                     open;
                     chave := fieldbyname('numero').AsString;

                     close;
          sql.clear;
          sql.add('select chave from ' + tbcompra +
                                    ' where linkvenda = '+quotedstr(chave));
                     //showmessage(commandtext);
                     open;


                     filtro :='';
                     while not eof do begin
                          if filtro = '' then
                             filtro := tbcompra+'item.link = ' + quotedstr(fieldbyname('chave').AsString)
                          else filtro := filtro + ' or '+tbcompra+'item.link = ' + quotedstr(fieldbyname('chave').AsString);
                          next;
                     end;
                     filtro := '('+filtro + ')';
               end;

          // se ao for acerto
          end else begin
                  if (modulo = 'P ') or (modulo ='T ') then
                     tbcompra := 'tbpedido'
                  else if (modulo = 'B ') or (modulo ='TB') then
                     tbcompra := 'tbpedido'
                  else if modulo = 'N ' then
                     tbcompra := 'tbnota'
                  else if modulo = 'E ' then
                     tbcompra := 'tbentrada';


                with sql do begin

                  if modulo = 'N ' then begin
                     close;

                    sql.clear;
                    sql.add( 'select numeropedido from tbnota where numero = '+
                                     quotedstr(numero));
                     open;
                     numero := fieldbyname('numeropedido').AsString;
                     modulo := 'P ';
                     tbcompra := 'tbpedido';

                      Close;
                      sql.clear;
                     sql.add( 'select chave from ' + tbcompra + ' where numero ='+
                                     quotedstr(numero));
                      open;
                     filtro := tbcompra+'item.link = ' + quotedstr(fieldbyname('chave').AsString);

               end else begin
                     // se pedido,balcao,entrada
                     close;
                     sql.clear;
                     sql.add( 'select chave from '+tbcompra+' where numero = '+
                                     quotedstr(numero));

                     open;
                     filtro := tbcompra+'item.link = ' + quotedstr(fieldbyname('chave').AsString);
               end;
          end;
        end;
        sql.Destroy;


        with fdm.Query1 do  begin
              close;
              sql.clear;
              sql.add( 'select '+
                                tbcompra+'item.Chave,'+
                                tbcompra+'item.Codigo,'+
                                tbcompra+'item.Data,'+
                                'tbproduto.Descricao,'+
                                tbcompra+'item.qtd,'+
                                tbcompra+'item.vrunit as Valor, '+
                                tbcompra+'item.vrunit* '+
                                tbcompra+'item.qtd as Total '+
                                ' from ' +tbcompra+'item, tbproduto where '+
                                tbcompra+'item.codigo = tbproduto.codigo and '+
                                filtro+
                                ' order by tbproduto.descricao');
                               // showmessage(commandtext) ;

              end;

              fdm.tbquery1.open;
              (fdm.tbquery1.FieldByName('valor')  as tfloatfield).displayformat := '###,##0.00';
              (fdm.tbquery1.FieldByName('total')  as tfloatfield).displayformat := '###,##0.00';
              
              reltb(fdm.tbquery1,'ITENS RELACIONADOS','','Qtd','Total','','','','','','','','','','','');
              fdm.tbquery1.close;

end;


procedure tfdm.comsumo(codigo,tbcompra,tbcompraitem,imp,mp:string);
var
grupo, campo,campo1,total,link,qtd,item:string;
begin
                 
        // 2 = consumo, 1 = ultimacompra, 3 consumo por data, 4 consumo por venda/compra


            fdm.tbQuery1.Close;
            fdm.tbQuery1.IndexFieldNames :='';

            with fdm.Query1 do begin
              Close;
              if (imp ='1') or (imp='4')  then begin
                 if imp = '1' then campo := ' codigo '
                 else if imp = '4' then campo := ' numero ';

                  sql.clear;
                  sql.add('select chave from '+tbcompra+' where '+campo+' ='+
                                quotedstr(codigo)+
                                ' order by data desc, chave desc ');
                 open;

                 link := ' and '+tbcompraitem+'.link = '+quotedstr(fieldbyname('chave').asstring);
                 qtd:= tbcompraitem+'.Qtd, ';
                 total := tbcompraitem+'.vrunit * '+ tbcompraitem+'.qtd as Total ';


              end else
              if (imp = '2') or (imp = '3') then begin
                 if imp = '2' then begin
                    grupo :=  ' group by tbproduto'+mp+'.Codigo ';
                    campo1 := '';
                 end else if imp = '3' then begin
                    grupo := '  group by ' +tbcompraitem+'.Data, ' + tbcompraitem+'.vrunit, '+tbcompraitem+'.Codigo ' ;
                    campo1 :=  tbcompraitem+'.Data, ';
                 end;


                  qtd:= 'sum('+tbcompraitem+'.qtd) as Qtd, ';
                  link := ' and '+tbcompraitem+'.codigocliente = ' +
                          quotedstr(codigo)+ grupo;

                 total := tbcompraitem+'.vrunit * sum('+ tbcompraitem+'.qtd) as Total ';
              end;

              if (lowercase(copy(tbcompraitem,1,9))='tbentrada') or (lowercase(copy(tbcompraitem,1,3))='tbe') then
                 item := tbcompraitem+mp+'.Descricao,'
              else item := 'tbproduto'+mp+'.Descricao,';

                 close;
                  sql.clear;
                  sql.add( 'select tbproduto.chave, '+
                                tbcompraitem+'.link,'+
                                tbcompraitem+'.chavegrade,'+
                                campo1+
                                tbcompraitem+'.Codigo,'+
                                item+
                                qtd+
                                tbcompraitem+'.vrunit as Valor, '+
                                total +
                                ' from ' +tbcompraitem+', tbproduto'+mp+' where '+
                                tbcompraitem+'.codigo = tbproduto'+mp+'.codigo '+
                                link +
                                ' order by tbproduto'+mp+'.descricao');
                               //debugstr(fdm.Query1);

              end;
              fdm.tbquery1.close;
              fdm.tbquery1.open;

              //if tbcompraitem = 'tbentradaitem' then
             // atualizagrade(tbquery1, nil, tbcompraitem);

              (fdm.tbquery1.FieldByName('valor')  as tfloatfield).displayformat := '###,##0.00';
              (fdm.tbquery1.FieldByName('total')  as tfloatfield).displayformat := '###,##0.00';


              reltb(fdm.tbquery1,'ITENS RELACIONADOS','','Qtd','Total','','','','','','','','','','','');

              fdm.tbquery1.close;
              fdm.tbQuery1.IndexFieldNames :='';


end;


procedure tfdm.email(email,codigo,nome,referencia,tab:string;tz:tzquery;grupo:boolean);
begin

        acesso1('Email');
        application.CreateForm(tfmail,fmail);
        fmail.email := email;
        fmail.codigo := codigo;
        fmail.nome := nome;
        fmail.referencia := referencia;
        fmail.grupo:=grupo;

        if tz <> nil then begin
           fmail.tb.Close;
           fmail.provedor.DataSet := tz;
           fmail.tb.Open;
        end;   

        fmail.tab:= tab;
        fmail.showmodal;

end;


procedure tfdm.Exitdbedit(Sender: TObject);
begin
        with Sender as tdbedit do 
             color := clwhite;
end;


procedure tfdm.Enterdbedit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;



procedure tfdm.Exitedit(Sender: TObject);
begin
          with  Sender as tedit do
                color := clwhite;
end;


procedure tfdm.Enteredit(Sender: TObject);
begin
          with  Sender as tedit do
            color := $00F2FFFF;
end;

procedure tfdm.Exitmask(Sender: TObject);
begin
  with  Sender as tmaskedit do
    color := clwhite;
end;


procedure tfdm.Entermask(Sender: TObject);
begin
  with  Sender as tmaskedit do
    color := clinfobk;
end;



procedure Tfdm.gerafrafico(ntb:tclientdataset;campo1,campo2,tit:string);
var
loc,cp:string;
i:integer;
begin

        if ntb.IndexFieldNames = '' then
           ntb.IndexFieldNames :=campo1;

        application.CreateForm(tfgrafico,fgrafico);

       //cria o campo para gerar o grafico e poder indexar

       try
       if ((ntb.fieldbyname(campo1).ClassName = 'TFloatField')or
           (ntb.fieldbyname(campo1).ClassName = 'TIntegerField')) then  cp := 'num'

       else if (ntb.fieldbyname(campo1).ClassName = 'TDateTimeField') then cp := 'data'
       else cp := 'nome';
       except cp := campo1;
       end;


        fgrafico.tabela.CreateDataSet;
        fgrafico.tabela.Open;


         // para mostrar o nome no grafico
           ntb.First;
           ntb.DisableControls;
           i:=1;

        try
        while not ntb.Eof do begin
            if (ntb.fieldbyname(campo1).AsString <> '') and
               (ntb.fieldbyname(campo1).AsString <> '0') then begin

               loc := ntb.fieldbyname(campo1).AsString;
               if fgrafico.tabela.Locate('nome',loc,[]) then begin

                 fgrafico.tabela.edit;
                 fgrafico.tabela['total'] :=  fgrafico.tabela.fieldbyname('total').AsFloat +
                                              ntb.fieldbyname(campo2).AsFloat;
              end else begin
                 fgrafico.tabela.Insert;
                 fgrafico.tabela['cont'] := i;
                 i:=i+1;

                 fgrafico.tabela['nome'] := copy(ntb.fieldbyname(campo1).AsString,1,30);
                 fgrafico.tabela[cp]   := fgrafico.tabela.fieldbyname('nome').AsString;
                 fgrafico.tabela['total'] := ntb.fieldbyname(campo2).AsFloat;
              end;

             fgrafico.tabela.Post;
           end;
             ntb.Next;
        end;
        except end;

        ntb.EnableControls;
        fgrafico.rindex.Items.Add(ntb.fieldbyname(campo1).AsString);
        fgrafico.Caption :=  tit;
        fgrafico.showmodal;
end;



procedure exportarRL(report:TRLReport;nome,email:string);
var
imp,filtro,em:string;
begin

  imp :='5';
  if inputquery('Exportar', 'Exportar no formato:' + #13 + #13 +
    '1 = Excel' + #13 +
    '2 = Word '+#13+
    '3 = PDF'+#13+
    '4 = HTM'+#13+
    '5 = Enviar por E-Mail',
    imp) then  begin;

    if (imp='5') then
       InputQuery('Enviar por Email', 'Email de destino:', email);

    if (imp='5') and (email='') then
       MSG('#Não há um endereço de E-Mail!!!',0);

    if (imp <>'1') and (imp<>'2') and (imp<>'3') and(imp<>'4') and(imp<>'5')then
       MSG('#Escolha a opção correta!!!',0)

    else begin

    if imp = '1' then filtro := 'xls'
    else if imp = '2' then filtro := 'rtf'
    else if imp = '3' then filtro := 'pdf'
    else if imp = '4' then filtro := 'htm';

    if imp='5' then
       exportar(fmenu,report,nome, email)
    else

       with fdm.savedialog  do begin
          filename :='';
          Filter := filtro +'|*.'+ filtro;
          Execute;
          if filename <> '' then
                report.SaveToFile(FileName+'.'+filtro);
      end;

  end;
 end;
end;



procedure Tfdm.DataModuleCreate(Sender: TObject);
var
        ini:tinifile;
begin
//imagecadastro



        menucad := timage.Create(application);
        if fileexists(ExtractFilePath(ParamStr(0)) + 'imagem\menucad.jpg') then
           menucad.picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\menucad.jpg');

        menucadr := timage.Create(application);
        if fileexists(ExtractFilePath(ParamStr(0)) + 'imagem\menucadr.jpg') then
           menucadr.picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\menucadr.jpg');

        idlg := timage.Create(application);
        if fileexists(ExtractFilePath(ParamStr(0)) + 'imagem\idlg.jpg') then
           idlg.picture.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\idlg.jpg');

//        botoes
        btcadastrar := tbitmap.Create;
        if fileexists(ExtractFilePath(ParamStr(0)) + 'imagem\btcadastrar.bmp') then
           btcadastrar.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btcadastrar.bmp');

        btalterar := tbitmap.Create;
        if fileexists(ExtractFilePath(ParamStr(0)) + 'imagem\btalterar.bmp') then
           btalterar.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btalterar.bmp');

        btreplicar := tbitmap.Create;
        if fileexists(ExtractFilePath(ParamStr(0)) + 'imagem\btreplicar.bmp') then
           btreplicar.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btreplicar.bmp');

        btapagar := tbitmap.Create;
        if fileexists(ExtractFilePath(ParamStr(0)) + 'imagem\btapagar.bmp') then
           btapagar.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btapagar.bmp');

        btfiltro := tbitmap.Create;
        if fileexists(ExtractFilePath(ParamStr(0)) + 'imagem\btfiltro.bmp') then
           btfiltro.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btfiltro.bmp');

        btanotacoes := tbitmap.Create;
        if fileexists(ExtractFilePath(ParamStr(0)) + 'imagem\btanotacoes.bmp') then
           btanotacoes.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btanotacoes.bmp');

        btimprimir := tbitmap.Create;
        if fileexists(ExtractFilePath(ParamStr(0)) + 'imagem\btimprimir.bmp') then
           btimprimir.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btimprimir.bmp');

        btmenu := tbitmap.Create;
        if fileexists(ExtractFilePath(ParamStr(0)) + 'imagem\btmenu.bmp') then
           btmenu.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btmenu.bmp');

        btgravar := tbitmap.Create;
        if fileexists(ExtractFilePath(ParamStr(0)) + 'imagem\btgravar.bmp') then
           btgravar.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btgravar.bmp');

        btcancelar := tbitmap.Create;
        if fileexists(ExtractFilePath(ParamStr(0)) + 'imagem\btcancelar.bmp') then
           btcancelar.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btcancelar.bmp');


        btgrafico := tbitmap.Create;
        if fileexists(ExtractFilePath(ParamStr(0)) + 'imagem\btgrafico.bmp') then
           btgrafico.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btgrafico.bmp');


        bttodos := tbitmap.Create;
        if fileexists(ExtractFilePath(ParamStr(0)) + 'imagem\bttodos.bmp') then
           bttodos.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\bttodos.bmp');


       dbcep.Disconnect;
       conectnet.Disconnect;
       conector.Disconnect;
       sqext.Disconnect;
       conectemp.Disconnect;

        

        Ini := TInifile.Create(CONF_GLOBAL);
        ipext := Ini.Readstring('Rede2', 'Host', '');
        ip := Ini.Readstring('Rede', 'Host', '');

        Ini := TInifile.Create(conf_local);
        user := Ini.Readstring('Rede', 'user', 'root');
        if ip='' then ip := Ini.Readstring('Rede', 'Host', 'localhost');
        Password := EnDecrypt( Ini.Readstring('Rede', 'Password', ''));


        ini.free;

        if ipext <> '' then
           fdm.queryext.Connection := fdm.sqext;

end;

procedure Tfdm.comadrianaExecute(Sender: TObject;chave:string);
var
  sql: tzquery;
  tot:double;
begin

        if responsavel = 'ADRIANA CONFECCAO' then  begin


          sql :=  tzquery.Create(application);
          sql.Connection := fdm.conector ;


          with sql do  begin
            Close;
          sql.clear;
          sql.add( 'select credito,dinheiro from tbpedido where chave =' + quotedstr(chave));
            Open;

            tot := fieldbyname('dinheiro').AsFloat +
                   fieldbyname('credito').AsFloat;

            close;

          sql.clear;
          sql.add( 'select sum(recebido) as recebido from tbreceber where linkvenda =' + quotedstr(chave));
            Open;

            tot := tot + fieldbyname('recebido').AsFloat;

            close;

          sql.clear;
          sql.add('update tbpedido set comrec = comissao * '+realdblstr(tot)+'/100 '+
                           ' where chave = '+quotedstr(chave));
    //        showmessage(commandtext);
            execsql;
            destroy;
          end;
      end;
end;

procedure tfdm.imBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
         if fcadg <> nil then
           imagem.picture:= fcadg.vimage.Picture;

end;


procedure Tfdm.sqextBeforeConnect(Sender: TObject);
begin
        sqext.HostName := ipext;
        sqext.Database := databasename;
        sqext.User := User;
        sqext.Password := Password;

end;

procedure Tfdm.conectnetBeforeConnect(Sender: TObject);
begin

        conectnet.HostName := ipnet;
        conectnet.Database := databasenet;
        conectnet.User := Usernet;
        conectnet.Password := EnDecrypt(Passwordnet);
end;

procedure Tfdm.conectempBeforeConnect(Sender: TObject);
begin

        conectemp.HostName := ip;
        conectemp.Database := databasename;
        conectemp.User := User;
        conectemp.Password := Password;

end;

procedure Tfdm.dbcepBeforeConnect(Sender: TObject);
begin
        dbcep.HostName := ip;
        dbcep.Database := 'cep';
        dbcep.User := User;
        dbcep.Password := Password;

end;


procedure Tfdm.conectorBeforeConnect(Sender: TObject);
begin                         
        conector.HostName := ip;
        conector.Database := databasename;
        conector.User := User;
        conector.Password := Password;
end;



procedure recpgto(tbpgrec,codclifor:string);
begin
        fparcelado:=tfparcelado.Create(application,tbpgrec,codclifor);
        fparcelado.Showmodal;

end;









/////////////////


//////////////////nf
function Reg10(versao,CGC_MF, mindata, maxdata: ShortString): ShortString;
begin

     //reg 10
     Result := '10|'; //2 caracteres
     //versao
     Result := Result + versao+'|'; //4 caracteres

     //CGC - remove os caracteres '.' e '/' do CNPJ
     Result := Result + formatnumeric(CGC_MF)+'|'; // 14 caracteres

     //Maior data de emissão das notas transmitidas
     Result := Result + mindata+'|';  //10 carac

     //Maior data de emissão das notas transmitidas
     Result := Result + maxdata; //10 carac

end;



function Reg20(funcao,motivocancel, natOp,  serie,numero,emissao,dtsaida,tpNF,cfop,
               im,cnpj,nome, endereco,bairro, cidade,
               uf, cep, fone: ShortString): ShortString;
begin

  //reg20
  Result := '20|';  //2


  //funcao
  Result := Result + funcao+'|'; //  1

  //motivo cancelamento
  if (motivocancel='') and (funcao='C') then
     Result := Result + 'Erro de Digitação|' //  15-255
  else
     Result := Result + motivocancel+'|'; //  15-255

  //nat Operacao
  Result := Result + natOp+'|'; // 1-60

  //serie
  Result := Result + serie+'|'; //1

  //numero nota
  Result := Result + numero+ '|'; //9

  //emissao nota
  Result := Result + emissao+ '|'; //10

  //data saida nota
  if dtsaida <> '' then
     Result := Result + dtsaida+ '|' //10
  else
     Result := Result + '|'; //10

  //tpnota
  Result := Result + tpNF+ '|'; //1

  //cfop
  Result := Result + cfop+ '|'; //4

  //IEST
  Result := Result +  '|'; //2-14

  //IM
  Result := Result + IM+ '|';

  //CPF OU CNPJ
  Result := Result + CNPJ+ '|';

  //nome cliente
  Result := Result + nome+ '|'; //60

  //endereco
  if endereco = '' then
     Result := Result + ' |'//60
  else
     Result := Result + endereco+ '|';//60

  // numero ja no endereco
  Result := Result +  ' |';//60

  // complemento vazio
  Result := Result + '|';//60

  // bairro
  if bairro = '' then
     Result := Result + ' |'//60
  else
     Result := Result + bairro+'|';//60

  // cidade
  if cidade = '' then
     Result := Result + ' |'//60
  else
     Result := Result + cidade+'|';//60

  // uf
  if uf = '' then
     Result := Result + 'SP|'//2
  else
     Result := Result + uf+'|';//2

  // cep
  Result := Result +'|';//8

  // pais
  Result := Result +'Brasil|';//8

  // fone
  Result := Result +'|';//10


  // ie destinatario
  Result := Result +'|';//10
                    {

  // valor dos produtos com 2 casas decimais
  Result := Result + vrproduto+'|';

  // desconto com 2 casas
  Result := Result + desconto+'|';

  //frete  com 2 casas
  Result := Result +frete +'|';

  // seguro com 2 casas
  Result := Result + seguro+'|';

  // despacessoria  com 2 casas
  Result := Result + despacessoria+'|';

  // obs
  Result := Result + obs+'|';//60

  // total produto + frete + seguro + outras desp. acessórias  com 2 casas
  Result := Result + total+'|';

  // dadosadicionais
  Result := Result + dadosadicionais+'|';//50000

  // fisco nao obrigatorio
  Result := Result + '|';//256

  // possui entrega (S/N)
  Result := Result + '2|';//1


  //endereco transp
  Result := Result +  '|';//60

  // numero ja no endereco
  Result := Result +  '|';//60

  // complemento vazio
  Result := Result + '|';//60

  // bairro ja no endereco
  Result := Result + '|';//60

  // cidade tranp
  Result := Result + '|';//60

  // uf transp
  Result := Result + '|';//2

  // possui pg a prazo (S/N)
  Result := Result + pgaprazo+'|';//1

  // preco avista - 2 casas decimais
  Result := Result +total +'|';

  // preco final - 2 casas decimais
  Result := Result +total +'|';

  // qtd prestacoes
//  Result := Result + '|';//2
                     }
end;


function Reg30(codigo,descricao,un,qtd,vrunit,total,cst,icm,ipi,vripi : ShortString): ShortString;
begin
  //reg21
  Result := '30|';
  //codigo
  Result := Result + codigo + '|';//60
  //descricao
  Result := Result + descricao + '|';//120
  //NCM
  Result := Result + '|';//6

  //un
  if un='' then
     Result := Result +  'UN|'//6
  else
     Result := Result + un + '|';//6

  //quantidade
  Result := Result + qtd + '|';// 11,3 - ate 11 carac + 3 casas decimais
  //vrunit
  Result := Result + vrunit + '|';//15,2
  //total
  Result := Result + total+ '|'; // 15,2
  //cst
  Result := Result + cst+ '|';// 3

  //icm
  Result := Result + icm + '|';//5,2
  //ipi
  Result := Result + ipi+ '|';// 5,2
  //vripi
  Result := Result + vripi+ '|';// 15,2




end;



function Reg40(basecalcicms,valoricms,basecalcicms_subst,valoricms_subst, vrproduto,
               frete, seguro,desconto, ipi, despacessoria, totalnota,totalservico,
               iss, vriss: ShortString): ShortString;
begin
  //reg40
  Result := '40|';  //2

  // base calc
  Result := Result + basecalcicms+'|';//15-2

  // vricm
  Result := Result + valoricms+'|';//15,2

  // base calc subst
  Result := Result + basecalcicms_subst+'|';//15-2

  // vricm subst
  Result := Result + valoricms_subst+'|';//15,2


  // valor dos produtos com 2 casas decimais
  Result := Result + vrproduto+'|';

  //frete  com 2 casas
  Result := Result +frete +'|';

  // seguro com 2 casas
  Result := Result + seguro+'|';

  // desconto com 2 casas
  Result := Result + desconto+'|';

  // valor do ipi   15-2
  Result := Result + ipi+'|';

  // despacessoria  com 2 casas
  Result := Result + despacessoria+'|';

  // total da nota    15-2
  Result := Result + totalnota+'|';

  // total servico (nao icms)    15-2
  Result := Result + totalservico+'|';

  // iss    15-2
  Result := Result + iss+'|';

  // vriss   15-2
  Result := Result + vriss+'|';
end;


function Reg50( modFrete,cnpj_cpf,nome,ie,endereco, municipio,uf, placa,ufplaca,
                qtdvol,especie,marca,pesol,pesob: ShortString): ShortString;
begin
  //reg20
  Result := '50|';  //2

  //modFrete
  Result := Result + modFrete+'|'; //1

  //cnpj
  Result := Result + cnpj_cpf+ '|'; //11 ou 14 nao obrigatorio

  //nome
  Result := Result + nome+ '|'; //1-60 nome e endereco nao obrigatorio

  //ie
  Result := Result + ie+ '|'; //1-60  nao obrigatorio


  //endereco
  Result := Result + endereco+ '|'; //1-60 nao obrigatorio


  //municipio
  Result := Result + municipio+ '|'; //1-60 nao obrigatorio


  // uf
  if uf='' then
     Result := Result + 'SP|'//2
  else
     Result := Result + uf+'|';//2

  // placa
  Result := Result + placa+'|';//1-8

  // uf
  if ufplaca='' then
     Result := Result + 'SP|'//2
  else
     Result := Result + ufplaca+'|';//2

  //qtdvolume
  Result := Result + qtdvol+ '|';//60

  //especia
  Result := Result + especie+ '|';//60

  //marca
  Result := Result + marca+ '|';//60


  //nvol
  Result := Result +'|';//60

  //pesol
  Result := Result + pesol+ '|';//60

  //pesob
  Result := Result + pesob+ '|';//60

end;


function Reg60(Fatura,infAdFisco,infCpl: ShortString): ShortString;
begin
  //reg60
  Result := '60|';  //2

  //Fatura
  Result := Result + Fatura+'|'; //255

  //fisco
  Result := Result + infAdFisco+ '|'; //255

  //dados adicionais
  Result := Result + infCpl+ '|'; //5000

end;


function Reg90(reg20,reg30,reg40,reg50,reg60: ShortString): ShortString;
begin

  //reg90
  Result := '90|';
  //num linhas reg20
  Result := Result + reg20 + '|';//5
  //num linhas reg30
  Result := Result + reg30 + '|';//5
  //num linhas reg40
  Result := Result + reg40 + '|';//5
  //num linhas reg50
  Result := Result + reg50 + '|';//5
  //num linhas reg60
  Result := Result + reg60;//5


end;






procedure geranfp;

var

dtini,dtfin,dt1,dt2,funcaoreg,xJust,tpnf,cst,possuientrega,tpreceita,cep,fone,im,
imval,totalservico, percentiss, valoriss,st,emp,mpr1,mpr2,cnpj: string;
qr,qr2: tzquery;
arq:tstringlist;
qtreg20, qtreg30, qtreg40, qtreg50, qtreg60:integer;

begin

  emp:='1';
  if responsavel = 'RP DISTRIBUIDORA' then
     inputquery('N.F - Empresa', 'Digite uma opção:' + #13 + #13 +
                    '1 = Empresa 1' + #13 +
                    '2 = Empresa 2', emp);

    if emp<>'2' then
       emp :=''
    else  emp :='1';


    arq:= tstringlist.Create;
    qr := tzquery.Create(application);
    qr2 := tzquery.Create(application);
    qr2.Connection := fdm.Conector;

    st := msgi('Entre com o período para transmissão das notas.',3);

        mpr1 :=  copy(st,1,10);
        mpr2 :=  copy(st,11,10);

    dtini := formatdatetime('yyyy/mm/dd', strtodate(mpr1));
    dtfin := formatdatetime('yyyy/mm/dd', strtodate(mpr2));

    /////os dados da empresa que emite a nota
    with qr do
    begin
      Connection := fdm.Conector;
      Close;

      //Menor data de emissão das notas transmitidas

      Sql.Add('alter table tbnotaitem'+emp+' add modo char(1) ');
      try
         execsql;
      except end;

      Sql.Clear;
      Sql.Add('update tbnotaitem'+emp+', tbnota'+emp+' set tbnotaitem'+emp+'.data = tbnota'+emp+'.data, '+
             ' tbnotaitem'+emp+'.modo = tbnota'+emp+'.modo where tbnota'+emp+'.chave= tbnotaitem'+emp+'.link');
      execsql;


      //Menor data de emissão das notas transmitidas
      Sql.Clear;
      Sql.Add('select min(data)as mindata from tbnota'+emp+
             ' where (modo <> "C" or modo is null) and data between ' +  quotedstr(dtini) +' and '+quotedstr(dtfin));
      open;
      dt1:= fieldbyname('mindata').AsString;

      //Menor data de emissão das notas transmitidas
      Sql.Clear;
      Sql.Add('select Max(data)as MaxData from tbnota'+emp+
             ' where (modo <> "C" or modo is null) and data between ' +  quotedstr(dtini) +' and '+quotedstr(dtfin));
      open;
      dt2:= fieldbyname('MaxData').AsString;

      close;
      Sql.Clear;
      Sql.Add('select cnpj,rjcomercial from tbempresa');
      Open;


      im := fieldbyname('rjcomercial').AsString;

      //verifica se o cnpj foi preenchido corretamente nos dados da empresa transmissora
      if (length(formatnumeric(fieldbyname('cnpj').AsString)) >= 14) then
          if VerCGC(fieldbyname('cnpj').AsString) = False then begin
             close;
             abort;
          end;

      //verifica as datas
      if dtini = '' then begin
         showmessage('Não há notas fechadas neste período para transmitir.');
         close;
         abort;
      end;





      ///////reg10

      arq.Add(reg10('1,00', // versao 4 carac
                           formatnumeric(Qr.FieldByName('cnpj').AsString), //cnpj 14 carac
                           mpr1, //dt inicial 10 carac
                           mpr2)); //dt final 10 carac


   ///////fim do registro10




      //seleciona as notas do periodo
      Sql.Clear;
      Sql.Add('select * '+
              ' from tbnota'+emp+' where (modo <> "C" or modo is null) and data between ' +  quotedstr(dtini) +
              ' and '+quotedstr(dtfin)+' order by data,numero ');
      open;


      qtreg20 := 0;
      qtreg30 := 0;
      qtreg40 := 0;
      qtreg50 := 0;

      //lup para pegar as notas
      while not eof do begin



           //registro 20 - cabeca da notas
            //se e cancelada ou normal
            if fieldbyname('modo').AsString = 'C' then begin
               funcaoreg := 'C';
               xJust := 'Problema na Impressão';
            end else begin
               funcaoreg :='I';
               xJust :='';
            end;

            if fieldbyname('entrada').AsString = 'S' then
               tpnf := '1'
            else
               tpnf := '0';


            if fieldbyname('totalservico').AsFloat>0 then
               imval := im
            else
               imval := '';


            //se tem cep
            if fieldbyname('cep').AsString <> '' then
               cep := formatnumeric(fieldbyname('cep').AsString)
            else
               cep :='';

            if fieldbyname('fone').AsString <> '' then
               fone := formatnumeric(fieldbyname('fone').AsString)
            else
               fone :='';

            if length(formatnumeric(fieldbyname('cnpj').AsString)) >=11 then
               cnpj := formatnumeric(fieldbyname('cnpj').AsString)
            else
               cnpj :='00000000000';

            arq.Add(Reg20(funcaoreg,
                          xJust,
                          fieldbyname('natoperacao').AsString,
                          '0'{zero para serie unica},
                          inttostr(fieldbyname('numero').asinteger),
                          fieldbyname('data').AsString+' '+
                          fieldbyname('hsaida').AsString,
                          '',
                          //fieldbyname('dsaida').AsString,
                          tpnf,
                          formatnumeric(fieldbyname('cfop').AsString),
                          imval,
                          cnpj,
                          copy(fieldbyname('nome').AsString,1,60),
                          copy(fieldbyname('endereco').AsString,1,60),
                          copy(fieldbyname('bairro').AsString,1,60),
                          copy(fieldbyname('municipio').AsString,1,60),
                          fieldbyname('uf').AsString,
                          copy(cep,1,8),
                          copy(fone,1,10)));




                       //só fazer se a nota nao for cancelada
                       if fieldbyname('modo').AsString <> 'C' then begin

                          //registro 30 - itens das notas e servicos
                          qr2.close;
                          qr2.Sql.Clear;
                          qr2.Sql.Add('select chave, codigo, descricao, un, '+
                          ' qtd, icm, ipi, vripi, cfop, vrtotal, '+
                          ' if(desctotal is null,  vrunit, vrunit - desctotal) as vrunit , st '+
                          ' from tbnotaitem'+emp+' where   (modo <> "C" or modo is null) and  data between ' + quotedstr(dtini) + ' and '+quotedstr(dtfin) +
                          ' and link = '+ quotedstr(qr.fieldbyname('chave').AsString)+
                          ' order by data, codigo ');

                           qr2.open;

                          //so servico
                          if qr2['chave'] = null then begin
                          arq.Add(Reg30(copy('0',1,60),
                                        copy('sem item',1,120),
                                        copy('',1,6),
                                        formatfloat('##0.0000',0),
                                        formatfloat('##0.0000',0),
                                        formatfloat('##0.00',0),
                                        '000',
                                        formatfloat('##0.00',0),
                                        formatfloat('##0.00',0),
                                        formatfloat('##0.00',0))) ;

                          qtreg30 := qtreg30+1;

                         end else begin

                          qr2.First;
                          while not qr2.eof do begin

                          if ((length(qr2.fieldbyname('st').AsString)<>3)or
                             (qr2['st']=null)) then
                             cst:='000'
                          else cst := qr2.fieldbyname('st').AsString ;

                          arq.Add(Reg30(copy(qr2.fieldbyname('codigo').asstring,1,60),
                                        copy(qr2.fieldbyname('cfop').AsString+' '+
                                             qr2.fieldbyname('descricao').AsString,1,120),
                                        copy(qr2.fieldbyname('un').AsString,1,6),
                                        formatfloat('##0.0000',qr2.fieldbyname('qtd').asfloat),
                                        formatfloat('##0.0000',qr2.fieldbyname('vrunit').asfloat),
                                        formatfloat('##0.00',qr2.fieldbyname('vrtotal').asfloat),
                                        cst,
                                        formatfloat('##0.00',qr2.fieldbyname('icm').asfloat),
                                        formatfloat('##0.00',qr2.fieldbyname('ipi').asfloat),
                                        formatfloat('##0.00',qr2.fieldbyname('vripi').asfloat)));
                          /// para o registro 90
                          qtreg30 := qtreg30+1;
                          qr2.next;
                          end;
                        end;

                        {  qr2.close;
                          qr2.Sql.Clear;
                          qr2.Sql.Add('select tbnotaservico.* from tbnotaservico,tbnota where '+
                                      ' tbnota.chave= tbnotaservico.link and '+
                                      ' tbnota.data between ' + quotedstr(dtini) + ' and '+quotedstr(dtfin) +
                                      ' and tbnotaservico.link = '+ quotedstr(qr.fieldbyname('chave').AsString)+
                                      ' order by data, codigo ');

                           qr2.open;


                          qr2.First;
                          while not qr2.eof do begin

                          arq.Add(Reg30(copy(qr2.fieldbyname('codigo').asstring,1,60),
                                        copy(qr2.fieldbyname('descricao').AsString,1,120),
                                        copy('UN',1,6),
                                        formatfloat('##0.0000',qr2.fieldbyname('qtd').asfloat),
                                        formatfloat('##0.0000',qr2.fieldbyname('vrunit').asfloat),
                                        formatfloat('##0.00',qr2.fieldbyname('vrunit').asfloat*
                                                             qr2.fieldbyname('qtd').asfloat),
                                        '000',
                                        formatfloat('##0.00',0),
                                        formatfloat('##0.00',0),
                                        formatfloat('##0.00',0)));

                          /// para o registro 90
                          qtreg30 := qtreg30+1;
                          qr2.next;

                          end;
                         }


                          /////registro 40 - totais da nota
                            if fieldbyname('totalservico').AsFloat>0 then begin
                               totalservico:= formatfloat('##0.00',fieldbyname('totalservico').asfloat);
                               percentiss:=formatfloat('##0.00',fieldbyname('percentiss').asfloat);
                               valoriss:=formatfloat('##0.00',fieldbyname('valoriss').asfloat);
                            end else begin
                               totalservico:= '';
                               percentiss:='';
                               valoriss:='';
                            end;


                            arq.Add(Reg40(formatfloat('##0.00',fieldbyname('basecalcicms').asfloat),
                                          formatfloat('##0.00',fieldbyname('valoricms').asfloat),
                                          formatfloat('##0.00',fieldbyname('baseicmsubstituicao').asfloat),
                                          formatfloat('##0.00',fieldbyname('valoricmsubstituicao').asfloat),
                                          formatfloat('##0.00',fieldbyname('valorproduto').asfloat),
                                          formatfloat('##0.00',fieldbyname('frete').asfloat),
                                          formatfloat('##0.00',fieldbyname('seguro').asfloat),
                                          formatfloat('##0.00',fieldbyname('desconto').asfloat),
                                          formatfloat('##0.00',fieldbyname('valoripi').asfloat),
                                          formatfloat('##0.00',fieldbyname('despesaacessoria').asfloat),
                                          formatfloat('##0.00',fieldbyname('total').asfloat-
                                                               fieldbyname('totalservico').asfloat),
                                          totalservico,
                                          percentiss,
                                          valoriss));



                            //registro 50 totais
                            arq.Add(Reg50(inttostr(fieldbyname('freteconta').asinteger-1) ,
                                          formatnumeric(fieldbyname('Tcnpj').AsString),
                                          fieldbyname('Tnome').AsString,
                                          formatnumeric(fieldbyname('Tie').AsString),
                                          fieldbyname('Tendereco').AsString,
                                          fieldbyname('Tmunicipio').AsString,
                                          fieldbyname('tuf').AsString,
                                          fieldbyname('placaveiculo').AsString,
                                          fieldbyname('ufveiculo').AsString,
                                          fieldbyname('qtd').AsString,
                                          fieldbyname('especie').AsString,
                                          fieldbyname('marca').AsString,
                                          formatfloat('##0.000',fieldbyname('pesol').asfloat),
                                          formatfloat('##0.000',fieldbyname('pesob').asfloat)));





                            //registro 60 -dados adicionais
                             arq.Add(Reg60('' ,'','')); //fieldbyname('dadosadicionais').AsString

                         /// para o registro 90 o rodape (qtd de cada registro)
                         qtreg40 := qtreg40+1;
                         qtreg50 := qtreg50+1;
                         qtreg60 := qtreg60+1;

                      end;
                      qtreg20 := qtreg20+1;
                      qr.next;
            end;
            qr2.Destroy;

            //////// fim do lup




      ///////registro 90: qtd registros e total das notas
             arq.Add(Reg90(formatfloat('00000',qtreg20),
                           formatfloat('00000',qtreg30),
                           formatfloat('00000',qtreg40),
                           formatfloat('00000',qtreg50),
                           formatfloat('00000',qtreg60)));



      close;
     end;


      arq.SaveToFile('C:\nf.txt');

      ShellExecute(0, 'Open', 'C:\nf.txt', '', Nil, sw_ShowMaximized);
      arq.Destroy;
end;




//////////////




procedure Tfdm.lerxmlExecute(Sender: TObject);
var
  i, j, k, n ,codn : integer;
  Nota, Node, NodePai, NodeItem: TTreeNode;
  cods,st:string;

begin

    tbe.close;
    tbe.createdataset;
    tbe.open;
    tbe.insert;
    tbei.close;
    tbei.createdataset;
    tbei.open;
    Nfe.NotasFiscais.Clear;

    codloc :='';
    st := msgi('Importar a nota do:'+#13+#13+
               '1 = Arquivo XML'+#13+
               '2 = Sefaz . . . . .  .',2);

    if st = '2' then pegaxml;

    if st = '1' then begin
       fdm.OpenDialog.Title := 'Selecione';
       fdm.OpenDialog.DefaultExt := '*-nfe.XML';
       fdm.OpenDialog.Filter := 'Arquivos(*.XML)|*.XML|Arquivos XML (*-nfe.XML)|*-nfe.XML|Todos os Arquivos (*.*)|*.*';
       if fdm.OpenDialog.Execute then Nfe.NotasFiscais.LoadFromFile(fdm.OpenDialog.FileName)
                                 else abort;
    end else Nfe.NotasFiscais.LoadFromFile(ExtractFilePath(substitui(servpath,'/','\'))+'recuperadas\'+codloc+'-nfe.xml');


    for n:=0 to Nfe.NotasFiscais.Count-1 do
    begin
    with Nfe.NotasFiscais.Items[n].NFe do
     begin


       //itens
       for I := 0 to Det.Count-1 do begin
          with Det.Items[I] do  begin

               tbei.Insert;
               tbei['item'] := IntToStr(Prod.nItem);
               tbei['descricao'] := Prod.xProd;
               tbei['ncmsh'] := Prod.NCM;
               tbei['codigofornecedor'] := Prod.cProd;
               tbei['codigobarras'] := Prod.cEAN;
               tbei['qtd'] := Prod.qCom ;
               tbei['vrunit'] := Prod.vUnCom ;
               tbei['totnf'] := Prod.vProd ;
               tbei['descontoReal'] := Prod.vDesc;
               tbei['segurovr'] := Prod.vSeg ;
               tbei['fretevr'] := Prod.vFrete;
               tbei['icmsent'] := Imposto.ICMS.pICMS;
               tbei['vripi'] := Imposto.IPI.vIPI;
               tbei['ipi'] := Imposto.IPI.pIPI;
               tbei['cfop'] := Prod.CFOP;
               tbei['cst'] :=   OrigToStr(imposto.ICMS.orig)  + CSTICMSToStr(imposto.ICMS.CST);
               tbei['RedBasePct'] := Imposto.ICMS.pRedBC;
               tbei['redsai'] := Imposto.ICMS.vBC;
               tbei['mva'] := Imposto.ICMS.pMVAST ;
               tbei['pauta'] := Imposto.ICMS.modBCST ;
               tbei['BsIcmsSubst'] := Imposto.ICMS.vBCST ;
               tbei['VrIcmsSubst'] := Imposto.ICMS.vICMSST ;

               tbei['baseicm'] := Imposto.ICMS.vBC  ;
               tbei['VrIcms'] := Imposto.ICMS.vICMS;
               tbei.post;


               for J:=0 to Prod.DI.Count-1 do
                begin
                  if Prod.DI.Items[j].nDi <> '' then
                   begin
                     with Prod.DI.Items[j] do
                      begin

                        for K:=0 to adi.Count-1 do
                         begin
                           with adi.Items[K] do
                            begin
                            end;
                         end;
                      end;
                   end
                  else
                    Break;
                end;

              if Prod.veicProd.chassi <> '' then
               begin
                 with Prod.veicProd do
                  begin
                  end;
               end;

               for J:=0 to Prod.med.Count-1 do
                begin
                  with Prod.med.Items[J] do
                   begin
                    end;
                end;

               for J:=0 to Prod.arma.Count-1 do
                begin
                  with Prod.arma.Items[J] do
                   begin
                    end;
                end;

               if (Prod.comb.cProdANP > 0) then
                begin
                 with Prod.comb do
                  begin
                    if (ICMSInter.vBCICMSSTDest>0) then
                     begin

                     end;

                    if (ICMSCons.vBCICMSSTCons>0) then
                     begin

                     end;
                  end;
               end;

               with Imposto do
                begin
                   with ICMS do
                    begin
                    end;

                   if (IPI.vBC > 0) then
                    begin
                      with IPI do
                       begin
                       end;
                    end;

                   if (II.vBc > 0) then
                    begin

                      with II do                       begin
                       end;
                    end;


                   with PIS do
                    begin
                    end;
                end;
             end;
          end ;


       tbe['nf'] := Ide.nNF;
       tbe['datanota'] := Ide.dEmi;
       tbe['CNPJ'] := Emit.CNPJCPF;
       tbe['basecalculo'] := Total.ICMSTot.vBC;
       tbe['valoricms'] := Total.ICMSTot.vICMS;
       tbe['basecalculoS'] := Total.ICMSTot.vBCST;
       tbe['valoricmss'] := Total.ICMSTot.vST;
       tbe['fretesoma'] := Total.ICMSTot.vFrete;
       tbe['segurodig'] := Total.ICMSTot.vSeg;
       tbe['totaldesconto'] := Total.ICMSTot.vDesc;
       tbe['valoripi'] := Total.ICMSTot.vIPI;
       tbe['despesaacessoria'] := Total.ICMSTot.vOutro;
       tbe['totalparcial'] := Total.ICMSTot.vProd;
       tbe['modelo'] :=  ide.modelo;
       tbe['serie'] :=   ide.serie;
       tbe.Post;

     end;

     end;

end;





procedure Tfdm.preenchexml(j:integer;mp:string);

procedure apagar;
begin
         if fileexists(pchar(servpath +'XML/'+ getip +'.XML')) then
            deletefile(pchar(servpath +'XML/'+ getip +'.XML'));

         if fileexists(pchar(servpath +'XML/'+ getip +'_.XML')) then
            deletefile(pchar(servpath +'XML/'+ getip +'_.XML'));

         if fileexists(pchar(servpath +'XML/'+ getip +'__.XML')) then
            deletefile(pchar(servpath +'XML/'+ getip +'__.XML'));
         tbe.close;
         tbei.close;
end;

var
nome,item,cnpj,cfopini :string;
i:integer;
begin

          lerxmlExecute(self);
          sleep(1000);

          cnpj := formatacpf_cnpj(FormatNumeric(tbe.fieldbyname('cnpj').asstring));

          if cnpj = '' then begin
             msg('Esta nota está sem CNPJ',0);
             apagar;
             abort;
          end;

          selecione('select chave,nome from tbfornecedor where cnpj = ' + quotedstr(cnpj));
          if sqlpub.RecordCount <=0 then begin
             msg('CNPJ ' + cnpj +' não localizado no cadastro do fornecedor',0);
             apagar;
             sqlpub := nil;
             abort;
          end;

          nome :=  sqlpub.fieldbyname('nome').asstring;
          sqlpub := nil;




          if j = 1 then begin //entrada calc custo
                item :='';
                while not tbei.Eof do begin

                      selecione('select tbprodfor.chave from tbprodfor, tbproduto where '+
                                ' tbproduto.codigo = tbprodfor.link  and '+
                                ' tbprodfor.codigo = ' + quotedstr(tbei.fieldbyname('codigofornecedor').asstring)+
                                ' and tbprodfor.nome = '+ quotedstr(nome));

                      if sqlpub['chave'] = null then
                         if item = '' then
                            item := tbei.fieldbyname('codigofornecedor').asstring + '  '+
                                    tbei.fieldbyname('descricao').asstring
                         else
                            item := item + #13+ tbei.fieldbyname('codigofornecedor').asstring + '  '+
                                                tbei.fieldbyname('descricao').asstring;

                      tbei.Next;
                end;
                sqlpub := nil;


                if item <> '' then begin
                   msg('O(s) item(ns) abaixo não está(ão) cadastrado(s):' + #13+#13+'Cód Fornecedor/Descrição'+#13+#13+item+#13+#13+
                       'É preciso cadastrá-lo(s) antes de importar(Cadastro produto).',0);
                   apagar;
                   abort;
                end;
          end;




          if j = 0 then begin //entrada simples
                item :='';
                while not tbei.Eof do begin

                      selecione('select ncmsh from tbproduto'+mp+' where ncmsh ='+ quotedstr(tbei.fieldbyname('ncmsh').asstring));

                      if sqlpub['ncmsh'] = null then
                         if item = '' then
                            item := tbei.fieldbyname('ncmsh').asstring + '  '+
                                    tbei.fieldbyname('descricao').asstring
                         else
                            item := item + #13+ tbei.fieldbyname('ncmsh').asstring + '  '+
                                                tbei.fieldbyname('descricao').asstring;

                      tbei.Next;
                end;
                sqlpub := nil;


                if item <> '' then begin
                   msg('O(s) item(ns) abaixo não estão cadastrados com o código NCM:' + #13+#13+'Cód NCM/Descrição'+#13+#13+item+#13+#13+
                       'É preciso cadastrá-lo(s) antes de importar(Cadastro produto).',0);
                   apagar;
                   abort;
                end;
          end;



        if msg('Deseja gerar entrada?',2) then else begin
           apagar;
           abort;
        end;
end;

end.

