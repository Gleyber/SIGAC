unit upagarlocaliza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  Provider,  Grids, DBGrids,
  ExtCtrls, StdCtrls, Buttons, ActnList, DBCtrls, ExtDlgs, Inifiles, zlib,
  jpeg,RLReport,RLFilters, RLDraftFilter, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, DB, DBClient;

type
  Tfpagarlocaliza = class(TForm)
    DBGrid1: TDBGrid;
    provedor: TDataSetProvider;
    ds: TDataSource;
    panel2: TPanel;
    ActionList1: TActionList;
    Label2: TLabel;
    elocalizar: TEdit;
    filtro: TAction;
    Panel3: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText3: TDBText;
    Bevel1: TBevel;
    tc: TAction;
    opendialog: TOpenPictureDialog;
    image: TAction;
    Action1: TAction;
    panel1: TPanel;
    btnnovo: TSpeedButton;
    btneditar: TSpeedButton;
    btnapagar: TSpeedButton;
    btnimprimir: TSpeedButton;
    Label13: TLabel;
    SpeedButton3: TSpeedButton;
    tabela: TClientDataSet;
    formatar: TAction;
    DBText7: TDBText;
    btndeletado: TSpeedButton;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText12: TDBText;
    Label1: TLabel;
    DBText4: TDBText;
    Label8: TLabel;
    Label11: TLabel;
    DBText5: TDBText;
    Label12: TLabel;
    DBText6: TDBText;
    DBText8: TDBText;
    Label14: TLabel;
    total: TAction;
    SpeedButton1: TSpeedButton;
    Label15: TLabel;
    DBText11: TDBText;
    Bevel3: TBevel;
    DBText13: TDBText;
    Label16: TLabel;
    lcheque: TLabel;
    pg: TAction;
    bfiltro: TRadioGroup;
    DBText1: TDBText;
    Label3: TLabel;
    lqtd: TLabel;
    Label9: TLabel;
    ltotal: TLabel;
    larec: TLabel;
    lrec: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label7: TLabel;
    DBText2: TDBText;
    grafico: TAction;
    Label10: TLabel;
    DBText14: TDBText;
    sqlcli: TZQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure elocalizarKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure elocalizarChange(Sender: TObject);
    procedure elocalizarKeyPress(Sender: TObject; var Key: char);
    procedure elocalizarEnter(Sender: TObject);
    procedure elocalizarExit(Sender: TObject);
    procedure codfabricanteExecute(Sender: TObject);
    procedure filtroExecute(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure tcExecute(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure formatarExecute(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure totalExecute(Sender: TObject);
    procedure btndeletadoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure tabelaAfterScroll(DataSet: TDataSet);
    procedure pgExecute(Sender: TObject);
    procedure bfiltroClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure graficoExecute(Sender: TObject);
  private
  PN,PA,PD,PC:string;

    { Private declarations }
  public

  nomecampo,script,codigo:string;
    { Public declarations }
  end;

var
  fpagarlocaliza: Tfpagarlocaliza;

implementation

uses  udm, funcoes, umanu,

      ucadastrop,
       upagarfiltro,
    udialogo, uimp, ualterapgrec, uconsumotexto;

{$R *.dfm}



procedure Tfpagarlocaliza.FormShow(Sender: TObject);
begin
                         
        script := ' select '+
          'tbpagar.chave,'+

          'if(tbconta.tpconta ="F","FIXA","VARIÁVEL") as tpconta, '+

          'tbconta.descricao as tipoconta,'+
          'tbconta.contacontabil,'+
          'tbpagar.tipodespesa as emitido,'+
          'tbpagar.documento,'+
          'tbpagar.letra,'+
          'tbpagar.ch,'+
          'tbpagar.cheque,'+
          'tbconta.agencia,'+
          'tbconta.conta,'+
          'tbpagar.dtemissao,'+
          'tbpagar.dtvencimento,'+
          'tbpagar.dtpagamento, '+
          'tbpagar.vrtitulo,'+
          'tbpagar.vrdocumento,'+
          'tbpagar.observacao,'+
          'tbpagar.acrescimo,'+
          'tbpagar.desconto,'+
          'tbpagar.total,'+
          'tbpagar.mora,'+
          'tbpagar.recebido,'+
          'tbpagar.diferenca,'+
          'tbpagar.movimentopagar,'+
          'tbpagar.codigo,'+
          'tbpagar.linkvenda,'+
          'tbpagar.modulo,'+
          'tbfornecedor.nomegerente as contato,'+
          'tbfornecedor.saldo,'+
          'tbfornecedor.nomecurto,'+
          'tbfornecedor.nome,'+
          'tbfornecedor.endereco,'+
          'tbfornecedor.numero,'+
          'tbfornecedor.complemento,'+
          'tbfornecedor.bairro,'+
          'tbfornecedor.municipio,'+
          'tbfornecedor.cep,'+
          'tbfornecedor.uf,'+
          'tbfornecedor.cnpj,'+
          'tbfornecedor.ie,'+
          'tbfornecedor.ddd,'+
          'tbfornecedor.fone,'+
          'tbfornecedor.fax,'+
          'tbfornecedor.ramal,'+
          'tbfornecedor.email,'+
          'tbfornecedor.site,'+
          'tbpagar.obs'+
          ' from tbpagar, tbfornecedor, tbconta '+
          ' where tbpagar.codigo=tbfornecedor.codigo '+
          ' and tbpagar.tipoconta=tbconta.codigo ';

             caption := 'CONTAS A PAGAR/PAGAS';

          elocalizar.Text := '  ';
          filtroexecute(self);
          elocalizar.Text := '%';



          if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\br.bmp')) then
                              imagepanel('imagemenu1', altop, panel1,
                             (PChar(ExtractFilePath(ParamStr(0)) + 'imagem\br.bmp')),nil);

          formatarexecute(self);

end;

procedure Tfpagarlocaliza.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fpagarfiltro <> nil then   fpagarfiltro.Close;

  tabela.Close;
  Release;
  fpagarlocaliza := nil;
end;

procedure Tfpagarlocaliza.DBGrid1TitleClick(Column: TColumn);
begin
     indexar(Column, tabela,  nil,elocalizar, label2);

end;

procedure Tfpagarlocaliza.elocalizarKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin

            if (key = 40) or (key = 34)  then
              tabela.Next;
            if (key = 38) or (key = 33) then
              tabela.prior;

            if key = 13 then
               filtroexecute(self);
end;

procedure Tfpagarlocaliza.elocalizarChange(Sender: TObject);
var
indice:string;
begin

       if elocalizar.Text = '%' then abort;

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

procedure Tfpagarlocaliza.elocalizarKeyPress(Sender: TObject; var Key: char);
var
indice:string;
begin
       if tabela.IndexFieldNames <> '' then
          indice := tabela.IndexFieldNames
       else
          indice := tabela.indexname;


        if (tabela.fieldbyname(indice).ClassName = 'TIntegerField') or
           (tabela.fieldbyname(indice).ClassName = 'TFloatField')  then
           if not (key in ['0'..'9', #8,',','%']) then abort;

        if (tabela.fieldbyname(indice).ClassName = 'TDateField')  then
           if not (key in ['0'..'9', #8,'/','%']) then abort;
end;

procedure Tfpagarlocaliza.elocalizarEnter(Sender: TObject);
begin
  elocalizar.Color := clinfobk;
end;

procedure Tfpagarlocaliza.elocalizarExit(Sender: TObject);
begin
  elocalizar.Color := clwhite;
end;

procedure Tfpagarlocaliza.codfabricanteExecute(Sender: TObject);
begin
  elocalizar.Clear;
  tabela.IndexFieldNames := 'codigofornecedor';
  elocalizar.SetFocus;
  label2.Caption := 'Localizar por Cód. Fab.';
end;

procedure Tfpagarlocaliza.filtroExecute(Sender: TObject);
var
  localizar,filtro,indice,nometb: string;
begin

        if tabela.IndexFieldNames <> '' then
           indice := tabela.IndexFieldNames
        else
           indice :=  tabela.indexname;

       if (indice = 'nomecurto') or (indice = 'nome') then
          nometb := 'tbfornecedor'
       else
          nometb := 'tbpagar';

  filtro := '';

     localizar:=  quotedstr(elocalizar.Text + '%');

  filtro := ' and diferenca > 0 and '+nometb+'.' + indice + ' like ' +localizar;

  if bfiltro.ItemIndex = 0 then
     filtro := filtro  + ' and tbpagar.ch="S" '
  else if bfiltro.ItemIndex = 1 then
     filtro := filtro  + ' and (tbpagar.ch="N" or tbpagar.ch is null) ';

  sqlcli.sql.Clear;
  sqlcli.sql.Add(script +  filtro);
  //debugstr(sqlcli);

   if tabela.IndexName <> '' then
      tabela.IndexName := '';

    tabela.close;
    tabela.Open;
    if (tabela.IndexFieldNames='') and
       (tabela.IndexName='') then begin
        tabela.AddIndex(indice, indice, [ixDescending]);
        tabela.IndexName:=indice;
    end;

    formatarexecute(self);

    tabela.CancelRange;

    lqtd.Caption := inttostr(tabela.RecordCount) + ' Contas:';

    totalExecute(self);

    nomecampo := 'diferenca';

end;

procedure Tfpagarlocaliza.btnnovoClick(Sender: TObject);
var
valor,st,campo:string;
begin

              permissao(PN,'PN','Contas a Pagar');

              codigo := '';
              if inputquery('Localiza Credor','Digite o código, ou o CNPJ/CPF(só números), ou as iniciais do nome do credor:',st) then else abort;

              campo :='nome';
              if StrIsfloat(st)  then
                 if length(st) > 9 then begin
                    campo :='cnpj';
                    st :=  formatacpf_cnpj(st);
                 end else
                    campo :='codigo';

              listagem(campo,st,'',7,0);

              if fdm.sg.Active then
                 codigo := fdm.sg.fieldbyname('codigo').AsString;
              fechatg;

           if codigo <> '' then begin

             st := '1';
             if inputquery('Gerar Conta', 'Escolha uma opção:' + #13 + #13 +
                           '1 = Gerar conta(s) a prazo' + #13 +
                           '2 = Gerar conta (Cheque)'
                           , st) then else abort;


           if (st <> '1') and (st<>'2') then abort;

           if codigo <> '' then begin

           if inputquery('Valor','Digite o valor total',valor) then else abort;

              if StrIsfloat(valor) = False then  begin
                 Application.MessageBox('Digite um número válido!', 'Erro', 0 + MB_ICONerror);
                 abort;
              end;


            if st='1' then begin
               fdialogo:=tfdialogo.Create(self,'aprazo');
               fdialogo.ecliente.Text := codigo;
               fdialogo.controle := 'contapagar';
               fdialogo.vendaaprazo := 'pagar';
               fdialogo.obs := 'N';
            end else if st = '2' then begin
               fdialogo:=tfdialogo.Create(self,'cheque');
               fdialogo.ecliente.Text := codigo;
               fdialogo.controle := 'cheque emitido';
               fdialogo.cheque := 'emitido';
               fdialogo.obs := 'N';
            end;


            fdialogo.fiado := strtofloat(valor);
            fdialogo.edocumento.ReadOnly := false;
            fdialogo.showmodal;
            tabela.Cancel;
            tabela.refresh;
            tabela.IndexFieldNames := 'codigo';
            elocalizar.Text :=codigo;
            label2.Caption := 'Localizar por Código (A~Z)';
            bfiltro.ItemIndex :=2;
            filtroExecute(self);
            tabela.Last;
            GALTERA('10',tabela.fieldbyname('documento').asstring,'i');
            end;
         end;

end;

procedure Tfpagarlocaliza.btneditarClick(Sender: TObject);
begin

          permissao(PA,'PA','Contas a Pagar');
          abortaacao(tabela,nil,'chave','','','','',0);

          application.CreateForm(tfalterapgrec,falterapgrec);
          falterapgrec.controle := 'pg';
          falterapgrec.showmodal;


end;

procedure Tfpagarlocaliza.tcExecute(Sender: TObject);
begin
  btnnovoClick(self);
end;

procedure Tfpagarlocaliza.btnapagarClick(Sender: TObject);
begin

  permissao(PD,'PD','Contas a Pagar');


  abortaacao(tabela,nil,'chave','','','','',0);

        if msg('',1) then begin

   GALTERA('10',tabela.fieldbyname('documento').asstring,'d');

    with fdm.query1 do
    begin
      Close;
              sql.clear;
              sql.add(  'delete from tbpagar where chave =  ' +
                     QuotedStr(tabela.FieldByName('chave').AsString));
      execsql;
    end;

    tabela.cancel;
    tabela.refresh;
    totalExecute(self);
  end;
end;

procedure Tfpagarlocaliza.btnimprimirClick(Sender: TObject);
var
ind,loc,imp,scr:string;

begin

  abortaacao(tabela,nil,'chave','','','','',0);


        imp:='1';
        if inputquery('Imprimir', 'Digite uma opção de impressão:' + #13 + #13 +
                      '1 = Conta(s) selecionada(s) '+#13+
                      '2 = Contas agrupadas por dia '+#13+
                      '3 = Gráfico '+#13+
                      'Esc = Cancela ', imp) then  else abort;


    loc:= tabela.fieldbyname('chave').AsString;
    filtrar(DbGrid1,tabela,nil,'chave');



    if imp = '3'  then
       graficoExecute(self)

    else if imp='2' then begin

         scr:='';
         tabela.First;
         tabela.DisableControls;
         while not tabela.Eof do begin
               if scr = '' then
                  scr := ' and (p.chave = '+ quotedstr(tabela.fieldbyname('chave').AsString)
               else
                  scr := scr + ' or p.chave = '+ quotedstr(tabela.fieldbyname('chave').AsString);
               tabela.Next;
         end;
         scr := scr + ')';
         tabela.EnableControls;

         with fdm.Query1 do begin
              close;
              sql.Clear;
              sql.Add('select c.chave, c.ContaAnalitica, '+
                      ' c.Reduzida, '+
                      ' c.ContaContabil, '+
                      ' c.descricao as Conta, '+
                      ' extract(day from p.dtpagamento) as Dia, '+
		      ' sum(p.recebido) as Total '+
		      ' from tbpagar as p, tbconta as c '+
		      ' where p.tipoconta=c.codigo '+ scr +
                      '  group by extract(day from p.dtpagamento) '+
		      '	 order by extract(day from p.dtpagamento)' );

         end;

         //debugstr(fdm.Query1);

        fdm.tbquery1.close;
        fdm.tbquery1.Open;
        fimp:=tfimp.Create(self,fdm.dsquery1,fdm.tbquery1,nil,'pggp','Contas a pagar por dia','');

        criacheck('ContaContabil','C. Contábil',0,20,0,true,true,true,false,false,false);
        criacheck('Conta','Conta',0,20,0,true,true,true,false,false,false);
        criacheck('ContaAnalitica','ContaAnalitica',0,20,0,true,true,true,false,false,false);
        criacheck('Reduzida','Reduzida',0,10,0,true,true,true,false,false,false);
        criacheck('Dia','Dia',0,6,0,false,false,false,false,false,false);
        criacheck('Total','Total',0,20,1,false,false,true,true,false,false);
        fimp.showmodal;
        qtdlinha:=0;
        fdm.tbquery1.close;

    end else if imp='1' then begin
        fimp:=tfimp.Create(self,ds,tabela,nil,'pagar','Contas a Pagar','');

        fimp.gsrupog.Columns :=2;
        fimp.grupog.Columns :=2;

        //nomecampo,titulo,esq,top,tm,alinha,grupo,subgrupo,ordenar,soma

        criacheck('dtemissao','Emissão',0,10,0,true,true,true,false,false,false);
        criacheck('codigo','Código',0,6,0,true,true,true,false,false,false);
        criacheck('nomecurto','Fantasia',0,20,0,true,true,true,false,false,false);
        criacheck('nome','Credor',0,40,0,true,true,true,false,false,false);
        criacheck('tipoconta','TpConta',0,12,0,true,true,true,false,false,false);
        criacheck('contacontabil','ContContábil',0,12,0,true,true,true,false,false,false);
        criacheck('tpconta','Conta',0,12,0,true,true,true,false,false,false);
        criacheck('endereco','Endereço',0,30,1,false,false,false,false,false,false);
        criacheck('numero','Número',0,7,1,false,false,false,false,false,false);
        criacheck('complemento','Compl',0,9,1,false,false,false,false,false,false);
        criacheck('bairro','Bairro',0,20,1,true,true,true,false,false,false);
        criacheck('municipio','Cidade',0,30,1,true,true,true,false,false,false);


        criacheck('cep','Cep',149,30,1,true,true,true,false,false,false);
        criacheck('uf','UF',149,3,1,true,true,true,false,false,false);
        criacheck('cnpj','CNPJ',149,18,1,true,true,true,false,false,false);
        criacheck('IE','IE',149,15,1,true,true,true,false,false,false);
        criacheck('DDD','DDD',149,3,1,true,true,true,false,false,false);
        criacheck('fone','Fone',149,9,1,false,false,false,false,false,false);
        criacheck('email','E-Mail',149,25,0,false,false,true,false,false,false);
        criacheck('site','Site',149,25,0,false,false,false,false,false,false);
        criacheck('dtvencimento','Vencto',149,10,0,true,true,true,false,false,false);
        criacheck('dtpagamento','Pgto',149,10,0,true,true,true,false,false,false);
        criacheck('Documento','Doc',149,9,0,false,false,true,false,false,false);
        criacheck('letra','L',149,2,0,false,false,false,false,false,false);
        criacheck('mora','Mora',270,6,1,false,false,false,false,false,false);
        criacheck('vrtitulo','VrTítulo',270,9,1,false,false,true,false,false,false);
        criacheck('vrdocumento','VrDoc',270,9,1,false,false,true,true,false,false);
        criacheck('desconto','Desc',270,9,1,false,false,true,false,false,false);
        criacheck('acrescimo','Acrés',270,9,1,false,false,true,false,false,false);
        criacheck('total','Valor',270,9,1,false,false,true,true,false,false);
        criacheck('recebido','Pago',270,9,1,false,false,true,true,false,false);
        criacheck('diferenca','A Pg',270,9,1,false,false,true,true,false,false);
        criacheck('cheque','NCheque',270,12,1,false,false,true,false,false,false);
        criacheck('Agencia','Agencia',270,9,1,false,true,true,false,false,false);
        criacheck('Conta','Nº Conta',270,12,1,false,true,true,false,false,false);
        criacheck('emitido','Emit para',270,12,0,true,true,true,false,false,false);


        ind:= tabela.IndexFieldNames;
        fimp.showmodal;
        qtdlinha:=0;
        if ind <> '' then
        tabela.IndexFieldNames := ind  ;
      end;


        tabela.EnableControls;
        tabela.Filtered := false;
        tabela.Locate('chave',loc,[]);

end;

procedure Tfpagarlocaliza.FormCreate(Sender: TObject);
begin

 //permissoes
            PN := sqlacesso.fieldbyname('inserir').AsString;
            PA :=sqlacesso.fieldbyname('alterar').AsString;
            PD := sqlacesso.fieldbyname('apagar').AsString;
            PC := sqlacesso.fieldbyname('consultar').AsString;
            sqlacesso.Destroy;


end;

procedure Tfpagarlocaliza.SpeedButton3Click(Sender: TObject);
begin
        if fpagarfiltro = nil then begin
           application.CreateForm(tfpagarfiltro,fpagarfiltro);
           fpagarfiltro.showmodal;
        end else  fpagarfiltro.showmodal;

end;

procedure Tfpagarlocaliza.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 39 then
  begin
    SendMessage(dbgrid1.Handle, WM_HSCROLL, SB_LINERIGHT, 0);
    Abort;
  end;

  //esquerda
  if key = 37 then
  begin
    SendMessage(dbgrid1.Handle, WM_HSCROLL, SB_LINELEFT, 0);
    Abort;
  end;

end;

procedure Tfpagarlocaliza.formatarExecute(Sender: TObject);
begin
    (tabela.FieldByName('codigo') as tintegerfield).displayformat := '000000';
    (tabela.FieldByName('total') as tfloatfield).displayformat := '###,##0.00';
    (tabela.FieldByName('vrdocumento') as tfloatfield).displayformat := '###,##0.00';
    (tabela.FieldByName('vrtitulo') as tfloatfield).displayformat := '###,##0.00';
    (tabela.FieldByName('desconto') as tfloatfield).displayformat := '###,##0.00';
    (tabela.FieldByName('acrescimo') as tfloatfield).displayformat := '###,##0.00';
    (tabela.FieldByName('diferenca') as tfloatfield).displayformat := '###,##0.00';
    (tabela.FieldByName('recebido') as tfloatfield).displayformat := '###,##0.00';
    (tabela.FieldByName('saldo') as tfloatfield).displayformat := '###,##0.00';

end;

procedure Tfpagarlocaliza.Label12Click(Sender: TObject);
begin
          cadp ('tbconta', 'select chave, codigo, tp,pgrec, descricao,contaanalitica, reduzida, contacontabil  from tbconta ', 'Plano de Conta',
                'codigo','descricao',
                'contacontabil','tbdespesa','descricao',
                'tp','','1=Cartão,2=Cheque,3=A Prazo',
                'pgrec','','PG,REC,AMBOS',
                'codigo', '', '', '', 0,0);

end;

procedure Tfpagarlocaliza.totalExecute(Sender: TObject);
var
tot, arec,rec:double;
begin
    tabela.First;
    tabela.DisableControls;
    tot :=0;
    arec:=0;
    rec:=0;

    while not tabela.Eof do begin
          tot := tot + tabela.fieldbyname('total').AsFloat;
          arec := arec + tabela.fieldbyname('diferenca').AsFloat;
          rec := rec + tabela.fieldbyname('recebido').AsFloat;
          tabela.Next;
    end;
    tabela.First;

    tabela.EnableControls;

    ltotal.caption := format('%n',[tot]);
    larec.caption := format('%n',[arec]);
    lrec.caption := format('%n',[rec]);


end;

procedure Tfpagarlocaliza.btndeletadoClick(Sender: TObject);
var
loc,movimentopagar: string;
begin

          abortaacao(tabela,nil,'chave','','','','',0);

          if tabela.FieldByName('recebido').AsFloat<=0 then
          begin
            Application.MessageBox('Para abortar uma conta é preciso que a mesma já tenha sido paga!',
                                   'Erro', 0 + MB_ICONerror);
            abort;
          end;


            senhagerencial('ESTORNAR CONTA',
                                 'DIGITE A SENHA GERENCIAL PARA ESTORNAR:',
                                 'ESTORNAR CONTA');

            GALTERA('10',tabela.fieldbyname('documento').asstring,'s');

            deletaconta(tabela.FieldByName('movimentopagar').AsString,'acertopagar',
                        tabela.FieldByName('codigo').AsString, ' ');


            with fdm.query1 do begin

              if tabela['movimentopagar'] = null then
                 movimentopagar:=' where chave = ' + quotedstr(tabela.fieldbyname('chave').AsString)
              else
                 movimentopagar:=' where movimentopagar = ' + quotedstr(tabela.fieldbyname('movimentopagar').AsString);


              sql.clear;
              sql.add(  'update tbpagar set dtpagamento= null, recebido = 0, movimentopagar = null,'+
                              ' diferenca = vrdocumento, acrescimo = 0 '+  movimentopagar );
              execsql;

              end;

              saldofornecedor(tabela.fieldbyname('codigo').AsString);
              loc := tabela.fieldbyname('chave').asstring;
              tabela.Cancel;
              tabela.refresh;
              totalExecute(self);
              tabela.Locate('chave',loc,[]);

                 Application.MessageBox('Conta estornada!',
                                   'Confirmação', 0 + MB_ICONWARNING);

end;

procedure Tfpagarlocaliza.SpeedButton1Click(Sender: TObject);
begin
          abortaacao(tabela,nil,'chave','','','','',0);
          recpgto('tbpagar',tabela.fieldbyname('codigo').asstring);
          tabela.Cancel;
          tabela.Refresh;
end;

procedure Tfpagarlocaliza.Label13Click(Sender: TObject);
var
loc:string;
begin
        cadg(cadfornecedor, 'nome', 7);
        if tabela.RecordCount > 0 then begin
                loc := tabela.fieldbyname('chave').AsString;
                tabela.Refresh;
                tabela.Locate('chave',loc,[]);
        end;        
end;

procedure Tfpagarlocaliza.Label14Click(Sender: TObject);
begin
         cadp ('tbdespesa', '', 'Conta Contábil',
              'codigo','descricao',
              '','','',
              '','','',
              '','','',
              'codigo',
              '',
              '',
              '',
              2,0);

end;

procedure Tfpagarlocaliza.tabelaAfterScroll(DataSet: TDataSet);
begin
{          dbgrid1.Columns[13].Visible := tabela['ch'] = 'S';
          dbgrid1.Columns[14].Visible := tabela['ch'] = 'S';
          dbgrid1.Columns[15].Visible := tabela['ch'] = 'S';
          dbgrid1.Columns[16].Visible := tabela['ch'] = 'S';
 }
          if tabela['ch'] = 'S' then
             lcheque.Caption := 'Ch nº '+ tabela.fieldbyname('cheque').AsString
          else lcheque.Caption := '';

end;

procedure Tfpagarlocaliza.pgExecute(Sender: TObject);
begin
        SpeedButton1Click(self);
end;

procedure Tfpagarlocaliza.bfiltroClick(Sender: TObject);
begin
                filtroExecute(self);
end;

procedure Tfpagarlocaliza.SpeedButton2Click(Sender: TObject);
begin
      abortaacao(tabela,nil,'chave','','','','',0);
      
      itemcompra(tabela.FieldByName('documento').AsString,
                 tabela.FieldByName('linkvenda').AsString);
end;

procedure Tfpagarlocaliza.SpeedButton4Click(Sender: TObject);
begin
        abortaacao(tabela,nil,'chave','','','','',0);

        if fileexists(ExtractFilePath(ParamStr(0)) + 'Contas\tbpagar' +
                      tabela.fieldbyname('movimentopagar').AsString+'.txt') then begin

                application.CreateForm(tfconsumotexto,fconsumotexto);
                fconsumotexto.ltitulo.caption := 'DETALHES DO ACERTO';
                fconsumotexto.lmemo.Lines.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Contas\tbpagar'+
                                                       tabela.fieldbyname('movimentopagar').AsString+'.txt');
                fconsumotexto.qimpressao.PreviewModal;
                fconsumotexto.Release;
       end else Application.MessageBox('Acerto não localizado!','Acerto', 0 + MB_ICONwarning);

end;

procedure Tfpagarlocaliza.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  if (Column.FieldName = 'dtvencimento') or
     (Column.FieldName = 'codigo') then
    with DBGrid1.Canvas do
    begin

      if tabela['dtpagamento']= null then
        Font.Color := clblack
      else
        Font.Color := clblue;

      if (tabela.FieldByName('dtvencimento').AsDateTime < date) and
         (tabela.FieldByName('diferenca').AsFloat >=0) then
        Font.Color := clred;

  FillRect(Rect);
  TextOut(Rect.Left+2,Rect.Top+2,Column.Field.DisplayText);
  end;

end;

procedure Tfpagarlocaliza.graficoExecute(Sender: TObject);
var
imp,campo,grafico:string;
begin

        if tabela.IndexFieldNames <> '' then
           grafico:= tabela.IndexFieldNames
        else if tabela.IndexName <> '' then
           grafico:= tabela.IndexName
        else
           grafico:= 'nome';

        imp:='1';
        inputquery('Gráfico', 'Gerar gráfico do:' + #13 + #13 +
            '1 = Total' + #13 +
            '2 = A Pagar ' + #13 +
            '3 = Pago'
             ,imp);

        if (imp <>'1') and (imp <>'2') and (imp <>'3') then imp:='1';

        if imp ='1' then
           campo := 'total'
        else if imp ='2' then
           campo := 'diferenca'
        else if imp ='3' then
           campo := 'recebido';

        fdm.gerafrafico(tabela,grafico,campo,
                    'CONTAS A PAGAR POR '+uppercase(grafico) +' E '+ uppercase(campo));


end;

end.




