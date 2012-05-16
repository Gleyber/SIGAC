unit urelatorio;

interface

uses
  shellapi, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Buttons, StdCtrls, Mask,  DBClient, DB,
  Provider, Grids, DBGrids, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ComCtrls,inifiles, Menus,math, DBCtrls;

type
  Tfrelatorio = class(TForm)
    Panel1: TPanel;
    Label17: TLabel;
    btnimprimir: TSpeedButton;
    grade: TDBGrid;
    elocalizar: TEdit;
    provedor: TDataSetProvider;
    ds: TDataSource;
    btnfiltro: TSpeedButton;
    btntodo: TSpeedButton;
    tabela1: TClientDataSet;
    lqtd: TLabel;
    btngrafico: TSpeedButton;
    sq: TZQuery;
    tbi: TClientDataSet;
    dstb: TDataSource;
    tbii: TIntegerField;
    tbidescricao: TStringField;
    tbivalor: TFloatField;
    tbicodigo: TIntegerField;
    tbinbanco: TStringField;
    md1: TDateTimePicker;
    md2: TDateTimePicker;
    btnok: TSpeedButton;
    rvisualiza: TCheckBox;
    tbichave: TIntegerField;
    btnmenu: TSpeedButton;
    menu: TPopupMenu;
    Baixar1: TMenuItem;
    Usurio1: TMenuItem;
    Preenchecliente1: TMenuItem;
    NoRecebido1: TMenuItem;
    Filtrar01: TMenuItem;
    Servios1: TMenuItem;
    Pagar1: TMenuItem;
    AbriraEntrada1: TMenuItem;
    Itensdaentrada1: TMenuItem;
    AbrirVenda1: TMenuItem;
    Replicaravenda1: TMenuItem;
    Excluiravenda1: TMenuItem;
    GerarNotaFiscal1: TMenuItem;
    Alterarondanota1: TMenuItem;
    Abriranota1: TMenuItem;
    tabela: TClientDataSet;
    p: TDataSetProvider;
    Exibiromovimento1: TMenuItem;
    smov: TStaticText;
    llocalizar: TLabel;
    MostrarVendedor1: TMenuItem;
    Inseriritensselecionados1: TMenuItem;
    prodape1: TPanel;
    t8: TStaticText;
    t7: TStaticText;
    t6: TStaticText;
    t5: TStaticText;
    t4: TStaticText;
    t3: TStaticText;
    t2: TStaticText;
    t1: TStaticText;
    prodape3: TPanel;
    t17: TStaticText;
    t16: TStaticText;
    t15: TStaticText;
    t14: TStaticText;
    t13: TStaticText;
    t12: TStaticText;
    t18: TStaticText;
    prodape4: TPanel;
    tt17: TStaticText;
    tt16: TStaticText;
    tt15: TStaticText;
    tt14: TStaticText;
    tt13: TStaticText;
    tt12: TStaticText;
    tt18: TStaticText;
    prodape2: TPanel;
    tt8: TStaticText;
    tt7: TStaticText;
    tt6: TStaticText;
    tt5: TStaticText;
    tt4: TStaticText;
    tt3: TStaticText;
    tt2: TStaticText;
    tt1: TStaticText;
    t10: TStaticText;
    t11: TStaticText;
    tt10: TStaticText;
    tt11: TStaticText;
    N1: TMenuItem;
    MostrarFornecedor1: TMenuItem;
    linsumo: TMenuItem;
    Inserirchequesselecionados1: TMenuItem;
    Mostrarvendedor2: TMenuItem;
    psepara: TStaticText;
    ContasGeradas1: TMenuItem;
    mvdcli: TMenuItem;
    ldata: TLabel;
    cdata: TComboBox;
    t9: TStaticText;
    tt9: TStaticText;
    Fecharocaixa1: TMenuItem;
    Margemdavenda1: TMenuItem;


    procedure devolveitens;
    procedure fechacx;
    procedure impcx;
    procedure etiqcli;
    procedure capsoma(som1,som2,som3,som4,som5,som6,som7,som8,som9,som10,som11,som12,som13,som14,som15,som16,som17,som18:double);
    procedure totalizar;
    procedure periodo_;
    procedure totrel;
    procedure impfinance(Sender: TObject);
    procedure abrirvenda(data,numero,chave:string);

    procedure devfor;
    procedure completavenda;

    function totcheque :double;
    function chavepedido: string;
    function ntbvenda: string;
    procedure movprodd;

    procedure gradeTitleClick(Column: TColumn);
    procedure btnimprimirClick(Sender: TObject);
    procedure elocalizarChange(Sender: TObject);
    procedure elocalizarKeyDown(Sender: TObject; var Key: Word;    Shift: TShiftState);
    procedure elocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnfiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btntodoClick(Sender: TObject);
    procedure btngraficoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rcampoClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gradeDblClick(Sender: TObject);
    procedure btnmenuClick(Sender: TObject);
    procedure Baixar1Click(Sender: TObject);
    procedure Usurio1Click(Sender: TObject);
    procedure Preenchecliente1Click(Sender: TObject);
    procedure NoRecebido1Click(Sender: TObject);
    procedure Filtrar01Click(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure Pagar1Click(Sender: TObject);
    procedure AbriraEntrada1Click(Sender: TObject);
    procedure Itensdaentrada1Click(Sender: TObject);
    procedure AbrirVenda1Click(Sender: TObject);
    procedure Replicaravenda1Click(Sender: TObject);
    procedure Excluiravenda1Click(Sender: TObject);
    procedure GerarNotaFiscal1Click(Sender: TObject);
    procedure Alterarondanota1Click(Sender: TObject);
    procedure Abriranota1Click(Sender: TObject);
    procedure tabelaAfterScroll(DataSet: TDataSet);
    procedure MostrarVendedor1Click(Sender: TObject);
    procedure Inseriritensselecionados1Click(Sender: TObject);
    procedure MostrarFornecedor1Click(Sender: TObject);
    procedure linsumoClick(Sender: TObject);
    procedure gradeCellClick(Column: TColumn);
    procedure Inserirchequesselecionados1Click(Sender: TObject);
    procedure Mostrarvendedor2Click(Sender: TObject);
    procedure ContasGeradas1Click(Sender: TObject);
    procedure mvdcliClick(Sender: TObject);
    procedure cdataClick(Sender: TObject);
    procedure Fecharocaixa1Click(Sender: TObject);
    procedure Margemdavenda1Click(Sender: TObject);
  private
  chavevenda,where,capimp:string;
  impfisc:boolean;
  mem  : Trichedit;
  totcx:double;
    { Private declarations }


  public
  com1,com2:integer;
  tbrel:tclientdataset;
  rodape,data,indcampo,script,from,criterio,gpby,
  soma1,soma2,soma3,soma4,soma5,soma6,soma7,soma8,soma9,soma10,soma11,soma12,soma13,soma14,soma15,soma16,soma17,soma18,
  nrel,nometb,titulo:string;

    { Public declarations }


    constructor Create(AOwner: TComponent; data_,indcampo_,script_,From_,criterio_,gpby_,
                       soma1_, soma2_, soma3_,soma4_,soma5_,soma6_,soma7_,soma8_,soma9_,
                       soma10_,soma11_,soma12_,soma13_,soma14_,soma15_,soma16_,soma17_,soma18_,
                       nrel_,cap_,nometb_:string; com1_, com2_:integer); reintroduce;


  end;



var
  frelatorio: Tfrelatorio;

implementation
uses funcoes, uimp, udm, ufiltrocad, mapimail, umanu;
{$R *.dfm}




procedure Tfrelatorio.periodo_;
var
scrant,dtini,dtfin,localizar,indice,loc: string;
i:integer;
begin

       dtini := quotedstr((formatdatetime('yyyy-mm-dd',md1.date)));
       dtfin := quotedstr((formatdatetime('yyyy-mm-dd',md2.date)));

       if tabela.IndexName <> '' then
          indice := tabela.IndexName
       else if tabela.IndexName <> '' then
            indice := tabela.IndexFieldNames
       else indice := 'chave';

       tabela.IndexFieldNames := indice;

//        if rcampo.ItemIndex = 0 then
           localizar:=  quotedstr(elocalizar.Text + '%');
//        else
  //         localizar:=  quotedstr('%'+elocalizar.Text + '%');

        if (from ='') and (indice <> '') then
           loc:=  ' and ' + indice + ' like ' +localizar;

        if data<>'' then
           where  := ' where '+data + ' between '+dtini +' and '+ dtfin
        else begin
           if from='' then where  := ' where chave >0 '
           else            where  := ' where '+nometb+'.chave >0 ';
           Label17.Hide;
           md1.Hide;
           md2.Hide;
           
        end;

        scrant:= sq.SQL.Text;

        with sq do begin
             close;
             sql.Clear;
             sql.add(script+ from+ where + loc+ criterio + gpby);
         end;

       // debugstr(sq);

         tabela.Filtered := false;
         tabela.Filter   :='';
         tabela.close;
         try
            tabela.Open;

            if (nrel = 'tbpedidolistagem') and (criterio='') and (com2=14) then
               completavenda;

         except
             sq.sql.Clear;
             sq.sql.add(scrant);
             tabela.close;
             tabela.Open;
             msg('A pesquisa pelo campo '+tabela.IndexFieldNames+' não é válida.',0);
         end;


         try
             if tmgrade then atualizagrade(tabela, nil, nometb);
             {if (nometb = 'tbentradaitem') or (nometb = 'tbeitem') then
                  atualizagrade(tabela, nil, nometb)
             else atualizagrade(tabela, nil, 'tbpedidoitem'); }

         except end;


         for i:=0 to grade.Columns.Count-1 do
            if (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TFloatField') then
               (tabela.fieldbyname(grade.Columns[i].FieldName)  as tfloatfield).displayformat := '###,##0.00';

         totalizar;
        titgrade(grade,tabela,nil);
end;





constructor Tfrelatorio.Create(AOwner: TComponent; data_,indcampo_,script_,from_,criterio_,gpby_,
                       soma1_, soma2_, soma3_,soma4_,soma5_,soma6_,soma7_,soma8_,soma9_,
                       soma10_,soma11_,soma12_,soma13_,soma14_,soma15_,soma16_,soma17_,soma18_,
                               nrel_,cap_,nometb_:string; com1_, com2_:integer);
begin

  Inherited Create(AOwner);
        data := lowercase(data_);
        indcampo := indcampo_;
        script :=script_ ;
        from :=from_ ;
        criterio:=criterio_;
        gpby:=gpby_;
             
        soma1  := soma1_;
        soma2  := soma2_;
        soma3  := soma3_ ;
        soma4  := soma4_;
        soma5  := soma5_;
        soma6  := soma6_ ;
        soma7  := soma7_;
        soma8  := soma8_;
        soma9  := soma9_ ;
        soma10 := soma10_;
        soma11 := soma11_;
        soma12 := soma12_ ;
        soma13 := soma13_ ;
        soma14 := soma14_ ;
        soma15 := soma15_ ;
        soma16 := soma16_ ;
        soma17 := soma17_ ;
        soma18 := soma18_ ;


        nrel :=nrel_ ;
        Caption := cap_;
        titulo  := cap_;
        nometb:=nometb_;
        com1 := com1_;
        com2 := com2_;


             md1.Date := date;
             md2.date := date;

             if indcampo <> '' then
                tabela.IndexFieldNames:=indcampo
             else tabela.IndexFieldNames:= 'chave';

             periodo_;

             elocalizar.OnExit:=fdm.Exitedit;
             elocalizar.Onenter:=fdm.Enteredit;

             llocalizar.Caption := 'Localizar por '+indcampo+ '(A~Z)';


//      campos da grade
      if FileExists(servpath+'imagem\f'+nrel+'.cds') then begin
         fdm.tb.FileName := servpath+'imagem\f'+nrel+'.cds';
         fdm.tb.Open;

         fdm.tb.First;
         try
         while not fdm.tb.Eof do begin
               if fdm.tb['x']= 'X' then
                  grade.Columns[fdm.tb.RecNo].Visible := true
               else
                  grade.Columns[fdm.tb.RecNo].Visible := false;
               fdm.tb.Next;
         end;
         except

            if FileExists(servpath+'imagem\f'+nrel+'.cds') then
               deletefile(servpath+'imagem\f'+nrel+'.cds');

            if tabela.Active then titgrade(grade,tabela,nil);
         end;


         grade.Repaint;
         fdm.tb.close;
       end;

end;



procedure tfrelatorio.devolveitens;
var st:string;
begin

            abortaacao(tabela,nil,'chave','','','','',0);

            codloc := '1';
            st := msgi('Digite a quantidade a ser devolvida (Ex:2 ou -3).', 2);
            if strtofloat(st) = 0 then msg('#Digite um número válido!',0);

            if (strtofloat(st)+tabela.FieldByName('devolvido').AsFloat) <0 then msg('#Verifique a quantidade!',0);


           if (strtofloat(st)+tabela.FieldByName('devolvido').AsFloat) > tabela.FieldByName('qtd').AsFloat then
               msg('#A quantidade devolvida não pode ser maior que a locada!',0);


            alimentaestoque(tabela.FieldByName('codigo').AsString , strtofloat(st), '1',0);
            st :=  realdblstr(strtofloat(st));

            selecione('update tbpedidolocacao set dtentregue =now(), chavedevolucao = '+inttostr(usuariolink)+
                      ', devolvido = if(devolvido is null,'+st+',devolvido+'+st+')'+
                      '  where chave = ' + quotedstr(tabela.FieldByName('chave').AsString));

            st := tabela.fieldbyname('chave').AsString;
            tabela.Cancel;
            tabela.Refresh;
            totalizar;
            tabela.Locate('chave',st,[]);

end;

procedure tfrelatorio.fechacx;
var cxini,valor,confere:double;
conta:integer;
begin
      if (copy(caption,1,8)= 'Caixa - ') and (msg('Deseja fechar o caixa?',2)) then begin

         contanaoconfig;
         cxini :=0;

         tbrel.First;
         while not tbrel.Eof do begin
               if tbrel['descricao'] = 'CX_INI' then cxini := tbrel.fieldbyname('entrada').AsFloat;
               tbrel.Next;
         end;

         totcx := totcx - cxini;

           //gerar o titulo a vista
         if totcx>0 then begin

            selecione('select '+quotedstr(fdm.tbcaixagrupo.fieldbyname('chave').AsString)+ ' as numero,  '+
                                quotedstr(fdm.tbcaixagrupo.fieldbyname('chave').AsString)+ ' as chave,  '+
                      ' 0 as codigo, "CAIXA" as nome, now() as data,'+
                      quotedstr(fdm.tbcaixagrupo.fieldbyname('chave').AsString) +'  as caixa,'+
                      inttostr(usuariolink) + '  as usuario, '+inttostr(emp)+' emp, null as modulo, '+
                      realdblstr(totcx)+ ' as dinheiro, chave-chave as troco from tbconta limit 1,1');

            insererecpg('tbreceber', sqlpub,'34',false);


            if not planocontas then begin

               selecione2('select conta from tbconfig');
               conta := sqlpub2.fieldbyname('conta').AsInteger;
               selecione2('delete from tbbancomovimento where modulo ="34" and linkvenda = '+
                           quotedstr(fdm.tbcaixagrupo.FieldByName('chave').AsString));


               while totcx > 0 do begin

                     codloc := floattostr(totcx);
                     valor  := strtofloat(msgi('Digite o valor:',2));
                     confere:= totcx;
                     totcx  := totcx - valor;

                     if valor > confere then begin
                        valor := confere;
                        totcx := 0;
                     end;

                     if totcx = 0 then //se nao baixar na mesma conta
                        gravabancovr(conta,'C', fdm.tbcaixagrupo.FieldByName('chave').AsString, 'CAIXA '+datetostr(now),
                                    '34', 'DI', valor,fdm.tbcaixagrupo.FieldByName('chave').AsInteger)


                     else begin

                        try
                           conta := strtoint(combotb('tbconta','descricao','chave','Depositar o valor na conta conta:',inttostr(conta)));
                        except
                           msg('#Conta não informada, faça novamente,',0);
                        end;

                        if conta >0 then
                           gravabancovr(conta,'C', fdm.tbcaixagrupo.FieldByName('chave').AsString, 'CAIXA '+datetostr(now),
                                       '34', 'DI', valor,fdm.tbcaixagrupo.FieldByName('chave').AsInteger);


                          while totcx >0 do begin

                                codloc := floattostr(totcx);
                                valor  := strtofloat(msgi('Digite o valor:',2));

                                try
                                conta := strtoint(combotb('tbconta','descricao','chave','Depositar o '+format('%n',[valor])+' na conta conta:',inttostr(conta)));
                                except msg('#Conta não informada, faça novamente,',0);
                                end;

                                if (valor >0) and (conta>0) then begin
                                   confere:= totcx;
                                   totcx  := totcx - valor;

                                   if valor > confere then begin
                                      valor := confere;
                                      totcx := 0;
                                   end;

                                   gravabancovr(conta,'C', fdm.tbcaixagrupo.FieldByName('chave').AsString,'CAIXA '+datetostr(now),
                                                '34', 'DI', valor,fdm.tbcaixagrupo.FieldByName('chave').AsInteger);
                                end;

                          end;
                     end;
               end;
            end;





         end;


         selecione('Update tbcaixagrupo set '+
                   'modo = "F" '+
                   ',horafechamento = ' + quotedstr(timetostr(now)) +
                   ',datafinal = now()'+
                   ' where chave = ' + quotedstr(fdm.tbcaixagrupo.fieldbyname('chave').AsString));

         fdm.tbcaixagrupo.cancel;
         fdm.tbcaixagrupo.Refresh;
         close;
      end;
end;




procedure tfrelatorio.etiqcli;
var
j,i:integer;
imp:string;
begin
        abortaacao(tabela,nil,'chave','','','','',0);
        codloc:='1';
        i := strtoint(msgi('Digite a quantidade:',2));

        selecione('select nome, endereco, bairro, numero, complemento, municipio, cep, uf from tbcliente where codigo = '+
                  quotedstr(tabela.fieldbyname('codigo').AsString));

        fdm.Query1.SQL.Clear;
        fdm.Query1.SQL.add('select  nome, endereco, bairro, numero, complemento, municipio, cep, uf from tbcliente where chave is null limit 0,0 ');
        fdm.tbquery1.Close;
        fdm.tbquery1.open;

        for j := 1 to i do begin
            fdm.tbquery1.Insert;
            fdm.tbquery1['nome']:= sqlpub.fieldbyname('nome').AsString ;
            fdm.tbquery1['endereco']:= sqlpub.fieldbyname('endereco').AsString ;
            fdm.tbquery1['bairro']:= sqlpub.fieldbyname('bairro').AsString ;
            fdm.tbquery1['numero']:= sqlpub.fieldbyname('numero').Asinteger ;
            fdm.tbquery1['complemento']:= sqlpub.fieldbyname('complemento').AsString ;
            fdm.tbquery1['municipio']:= sqlpub.fieldbyname('municipio').AsString ;
            fdm.tbquery1['cep']:= sqlpub.fieldbyname('cep').AsString ;
            fdm.tbquery1['uf']:= sqlpub.fieldbyname('uf').AsString ;
            fdm.tbquery1.Post;
        end;

       selecione('select qtd from tbnf where numero = '+quotedstr(tabela.fieldbyname('nf').AsString));

       if sqlpub['qtd'] = null then
          selecione('select qtd from tbnota where numero = '+quotedstr(tabela.fieldbyname('nf').AsString));

       codloc := 'Nota Fiscal Nº: ' + tabela.fieldbyname('nf').AsString +
                 '                                 Qtd Volumes: ' + sqlpub.fieldbyname('qtd').AsString ;
       configimp(fdm.tbquery1,nil,2,false);

       fdm.tbquery1.close;
       codloc :='';

end;


function Tfrelatorio.totcheque :double;
var
i:integer;
tch:double;
begin

        chts:='';
        tch := 0;
        with grade do begin
           for i := 0 to Pred(SelectedRows.Count) do begin
               DataSource.DataSet.Bookmark := SelectedRows[i];

               if chts = '' then
                  chts := ' where chave = ' + quotedstr(DataSource.DataSet.FieldByName('chave').AsString)
               else
                  chts := chts + ' or chave = ' + quotedstr(DataSource.DataSet.FieldByName('chave').AsString);

               tch := tch + DataSource.DataSet.FieldByName('valor').Asfloat;

           end;

           t2.Caption :='Soma Cheques';
           tt2.Caption := format('%n',[tch]);

           t3.Caption := 'VrCompra';
           tt3.Caption := format('%n',[vrpub]);

           t1.Caption := 'Diferença';
           tt1.Caption := format('%n',[vrpub-tch]);

        end;
        result := tch;

end;


procedure Tfrelatorio.capsoma(som1,som2,som3,som4,som5,som6,som7,som8,som9,som10,som11,som12,som13,som14,som15,som16,som17,som18 :double);
begin
        if (soma10<>'') or(soma11<>'') or(soma12<>'') or(soma13<>'') or
           (soma14<>'') or(soma15<>'') or(soma16<>'') or(soma17<>'') or(soma18<>'') then begin
           prodape4.Show;
           prodape3.Show;
           psepara.Show;
        end;

        if (soma1<>'') then begin
           t1.Caption  := capcp(soma1);
           tt1.Caption :=  format('%n',[som1]);
           capimp := t1.Caption + ': '+ tt1.Caption ;
           prodape2.Show;
           prodape1.Show;
        end;

        if (soma2<>'') then begin
           t2.Caption  := capcp(soma2);
           tt2.Caption :=  format('%n',[som2]);
           totcx := som2;
           capimp := capimp +  '    '+t2.Caption + ': '+ tt2.Caption ;
        end;

        if (soma3<>'') then begin
           t3.Caption  := capcp(soma3);
           tt3.Caption :=  format('%n',[som3]);
           capimp := capimp +  '    '+t3.Caption + ': '+ tt3.Caption ;
        end;


        //plano de contas
        if copy(caption,1,43) = '# L A N Ç A M E N T O S  D E  C O N T A S #' then begin

           t1.Caption := 'Saldo';
           tt1.Caption := format('%n',[som3-som2]);
           prodape1.Show;
           prodape2.Show;
        end;


        if (soma4<>'') then begin
           t4.Caption  := capcp(soma4);
           tt4.Caption :=  format('%n',[som4]);
           capimp := capimp +  '    '+t4.Caption + ': '+ tt4.Caption ;
        end;


        if (soma5<>'') then begin
           t5.Caption  := capcp(soma5);
           tt5.Caption :=  format('%n',[som5]);
           capimp := capimp +  '    '+t5.Caption + ': '+ tt5.Caption ;
        end;

        if (soma6<>'') then begin
           t6.Caption  := capcp(soma6);
           tt6.Caption :=  format('%n',[som6]);
           capimp := capimp +  '    '+t6.Caption + ': '+ tt6.Caption ;
        end;

        if (soma7<>'') then begin
           t7.Caption  := capcp(soma7);
           tt7.Caption :=  format('%n',[som7]);
           capimp := capimp +  '    '+t7.Caption + ': '+ tt7.Caption ;
        end;

        if (soma8<>'') then begin
           t8.Caption  := capcp(soma8);
           tt8.Caption :=  format('%n',[som8]);
           capimp := capimp +  '    '+t8.Caption + ': '+ tt8.Caption ;
        end;
        if (soma9<>'') then begin
           t9.Caption  := capcp(soma9);
           tt9.Caption :=  format('%n',[som9]);
           capimp := capimp +  '    '+t9.Caption + ': '+ tt9.Caption ;
        end;

        if (soma10<>'') then begin
           t10.Caption  := capcp(soma10);
           tt10.Caption :=  format('%n',[som10]);
           capimp := capimp +  '    '+t10.Caption + ': '+ tt10.Caption ;
        end;

        if (soma11<>'') then begin
           t11.Caption  := capcp(soma11);
           tt11.Caption :=  format('%n',[som11]);
           capimp := capimp +  '    '+t11.Caption + ': '+ tt11.Caption ;
        end;

        if (soma12<>'') then begin
           t12.Caption  := capcp(soma12);
           tt12.Caption :=  format('%n',[som12]);
           capimp := capimp +  '    '+t12.Caption + ': '+ tt12.Caption ;
        end;

        if (soma13<>'') then begin
           t13.Caption  := capcp(soma13);
           tt13.Caption :=  format('%n',[som13]);
           capimp := capimp +  '    '+t13.Caption + ': '+ tt13.Caption ;
        end;


        if (soma14<>'') then begin
           t14.Caption  := capcp(soma14);
           tt14.Caption :=  format('%n',[som14]);
           capimp := capimp +  '    '+t14.Caption + ': '+ tt14.Caption ;
        end;

        if (soma15<>'') then begin
           t15.Caption  := capcp(soma15);
           tt15.Caption :=  format('%n',[som15]);
           capimp := capimp +  '    '+t15.Caption + ': '+ tt15.Caption ;
        end;

        if (soma16<>'') then begin
           t16.Caption  := capcp(soma16);
           tt16.Caption :=  format('%n',[som16]);
           capimp := capimp +  '    '+t16.Caption + ': '+ tt16.Caption ;
        end;

        if (soma17<>'') then begin
           t17.Caption  := capcp(soma17);
           tt17.Caption :=  format('%n',[som17]);
           capimp := capimp +  '    '+t17.Caption + ': '+ tt17.Caption ;
        end;

        if (soma18<>'') then begin
           t18.Caption  := capcp(soma18);
           tt18.Caption :=  format('%n',[som18]);
           capimp := capimp +  '    '+t18.Caption + ': '+ tt18.Caption ;
        end;




end;


procedure Tfrelatorio.movprodd;
var
i:integer;
vedev,modulo,ntbitem,ntb,nantigo:string;
begin


            with fdm.query1 do begin
               Close;
               sql.Clear;
               sql.add('select chave, codigo as Numero, descricao as Nome, Qtd, '+
                            ' VrUnit from tbpedidoitem where chave = -10000');
               fdm.tbquery1.Close;
               fdm.tbquery1.open;
               fdm.tbquery1.IndexFieldNames := 'chave';


                if      i =1 then ntb := 'tbentradaitem'
                else if i =2 then ntb := 'tbeitem'
                else if i =3 then ntb := 'vendadevolucao'

                else if i =4 then ntb := 'tbpedidoitem'
                else if i =5 then ntb := 'tbentradaitemdf'
                else if i =6 then ntb := 'vendaitem'
                else if i =7 then ntb := 'tbeitemdf';


            for i :=1 to 8 do begin
                vedev :='';

                //entrada fechada
                if i =1 then begin
                   ntb := 'tbentrada';
                   ntbitem := 'tbentradaitem';
                   modulo := 'MOV: ENTRADA (FECHADA)';

                //entrada aberta
                end else if i = 2 then begin
                   ntb := 'tbe';
                   ntbitem := 'tbeitem';
                   modulo := 'MOV: ENTRADA (ABERTA)';


                //devolucao cliente
                end else if (i = 3) or(i = 4) then begin

                   ntb :='tbpedido';
                   if i = 3 then
                      ntbitem := 'vendadevolucao'
                   else if i = 4 then begin
                      ntbitem := 'tbpedidoitem' ;
                      vedev := ' and tbpedidoitem.qtd < 0 ';
                   end;
                   modulo := 'MOV: DEV CLIENTE';


                //devfor fechada
                end else if i = 5 then begin
                    ntb := 'tbentradadf';
                    ntbitem := 'tbentradaitemdf';
                    modulo := 'MOV: DEV FOR(FECHADA)';

                //devfor aberta
                end else if i = 6 then begin
                    ntb := 'tbedf';
                    ntbitem := 'tbeitemdf';
                    modulo := 'MOV: DEV FOR(ABERTA)';


                // venda
                end else if (i = 7) or (i = 8) then begin

                    ntb := 'tbpedido';
                    modulo := 'MOV: VENDA';
                    if i = 8 then begin
                       ntbitem := 'tbpedidoitem';
                       vedev := ' and tbpedidoitem.qtd > 0 ';

                    end else
                        ntbitem := 'vendaitem';
                end;


               close;
               sql.Clear;
               sql.add('select '+ntb+'.Numero, '+ntb+'.Nome, '+ntbitem+'.Qtd, '+
                       ntbitem+'.VrUnit from '+ntb+', '+ntbitem+
                       ' where ('+ntbitem+'.modo<> "C" or '+ntbitem+'.modo is null)'+vedev+
                       ' and  '+ntb+'.chave = '+ntbitem+'.link and '+ntbitem+'.codigo = ' + quotedstr(codloc)+
                       ' and '+ntb+'.data = ' + quotedstr(formatdatetime('yyyy-mm-dd',tbrel.fieldbyname('data').AsDateTime)));
               //debugstr(fdm.query1);
               open;



               if RecordCount >0 then begin
                  fdm.tbquery1.Insert;
                  fdm.tbquery1['chave']:= fdm.tbquery1.RecordCount;
                  fdm.tbquery1.Post;
                  fdm.tbquery1.Insert;
                  fdm.tbquery1['chave']:= fdm.tbquery1.RecordCount;
                  fdm.tbquery1['nome']:= modulo;
                  fdm.tbquery1.Post;
               end;


                while not eof do begin

                     fdm.tbquery1.Insert;
                     fdm.tbquery1['chave']:= fdm.tbquery1.RecordCount;
                     fdm.tbquery1['numero']:=fieldbyname('numero').asinteger;
                     fdm.tbquery1['nome']:=fieldbyname('nome').asstring;
                     fdm.tbquery1['qtd']:=fieldbyname('qtd').asfloat;
                     fdm.tbquery1['vrunit']:=fieldbyname('vrunit').asfloat;
                     fdm.tbquery1.Post;

                     next;

               end;//fim gravar itens

            end;// fim loop

        end; // fim sql

        reltb(fdm.tbquery1,'Detalhes',' - Mov. Produto de : '+ formatdatetime('dd-mm-yy',tbrel.fieldbyname('data').AsDateTime),'','', '', '','','','','', '', '','','','');

        fdm.tbquery1.IndexFieldNames := '';
        fdm.tbquery1.close;
        fdm.query1.close;

end;

procedure tfrelatorio.completavenda;
var
i:integer;
cp,modo :string;
begin

          modo :=  ' and modo = "T" or modo = "P" or modo = "V" ';
          selecione(script+ ',chavepedido as chave2 from venda ' + where + modo + criterio + gpby);
          sqlpub.first;

          i:=0;

          with sqlpub do begin
             while not eof do begin

                  tabela.Insert;
                  for i := 1 to sqlpub.FieldCount do begin

                      cp := lowercase(Fields[i-1].FieldName);


                    if (cp = 'nf') and (sqlpub[cp]=null) then
                       tabela[cp] := null

                    else if cp = 'chave2' then
                    else if cp = 'chavepedido' then
                       tabela[cp] := sqlpub.fieldbyname('chave2').asinteger

                    else if cp = 'linkvenda' then
                       tabela[cp] := null

                    else if cp='chave' then
                       tabela[cp] := i*(-1)

                    else if cp='status' then
                       tabela[cp] := 'ABE'

                    else if cp='chave1' then
                       tabela[cp] := sqlpub.fieldbyname('chave').AsString

                    else if (sqlpub.fieldbyname(cp).ClassName = 'TIntegerField') or
                        (sqlpub.fieldbyname(cp).ClassName = 'TFloatField') then
                        tabela[cp] := sqlpub.fieldbyname(cp).asfloat

                     else if sqlpub.fieldbyname(cp).ClassName = 'TDateField' then begin
                          if sqlpub[cp]<>null then
                              tabela[cp] := fieldbyname(cp).asdatetime

                     end else
                      tabela[cp] := fieldbyname(cp).AsString;

                  end;
                  next;
              end;
          end;
end;

procedure tfrelatorio.devfor;
var
valor :string;
begin

        abortaacao(tabela,nil,'chave','','','','',0);

        valor := tabela.fieldbyname('diferenca').AsString;

        if inputquery('Recebimento','Digite a quantidade:',valor) then else abort;

        if StrIsFloat(valor) = false then
           msg('#O valor digitado não é um número válido!',0);

        if (strtofloat(valor)) > (tabela.fieldbyname('diferenca').asfloat) then
           msg('#Você não pode receber mais que a diferença!',0);

        selecione('update tbentradaitemdf set dev = if (dev is null, '+
                  realdblstr(strtofloat(valor))+', dev+'+realdblstr(strtofloat(valor))+
                  ') where chave ='+ quotedstr(tabela.fieldbyname('chave').AsString));

        sqlpub := nil;
        valor := tabela.fieldbyname('chave').AsString;

        periodo_;
        titgrade(grade,tabela,nil);

        GALTERA('7',tabela.fieldbyname('codigo').asstring,'a');
end;


procedure tfrelatorio.impfinance(Sender: TObject);
var         
totbanco,tottipo,totcli,totgeral,mensalidade,descbanco:double;
list,lista,listamail:tstringlist;
cnpj,ind,nome, conta,imp,ano,mes,chave,email,bloq,nm,imp2,bco,cpsel,
endereco,  municipio, cep,  uf,titular,nconta,ag,ndescbanco,finpgto,txbc,pgtofor :string;
n,i,codigo:integer;
nbanco:double;
dtvenda:tdate;

          

function FormatC(const strin: string): string;
  //remove caracteres não numéricos de uma string
var
  Count: integer;
begin
  Result := '';
  if Length(strin) > 0 then
    for Count := 0 to length(strin) do
      if strin[Count] in ['0'..'9','A'..'Z','a'..'z'] then
        Result := Result + strin[Count];
end;


procedure dados;
var
numend:string;
begin                     
      numend :='';               
      codigo := sqlpub.fieldbyname('codigo').AsInteger;
      Titular := sqlpub.fieldbyname('Titular').AsString;
      dtvenda := sqlpub.fieldbyname('dtvenda').AsDateTime;

        if formatnumeric(sqlpub.fieldbyname('cnpj').AsString)='' then msg('#Verifique CNPJ/CPF do cliente(Cód/Nome): '+
            sqlpub.fieldbyname('codigo').AsString+' '+ sqlpub.fieldbyname('nome').AsString,0);

      cnpj   :=formatnumeric(sqlpub.fieldbyname('cnpjconta').AsString);
      txbc   :=sqlpub.fieldbyname('txbc').AsString;

        if (formatnumeric(sqlpub.fieldbyname('nbanco').AsString)='') or
           (formatnumeric(sqlpub.fieldbyname('agencia').AsString)='') or
           (formatnumeric(sqlpub.fieldbyname('conta').AsString)='') then msg('#Verifique banco, ag e conta do cliente(Cód/Nome): '+
            sqlpub.fieldbyname('codigo').AsString+' '+ sqlpub.fieldbyname('nome').AsString,0);

      nbanco := strtofloat(formatnumeric(sqlpub.fieldbyname('nbanco').AsString));

      AG     := uppercase(formatC(sqlpub.fieldbyname('agencia').AsString));
      if length(ag) <=4 then ag := ag + '0';
      
      nconta := uppercase(formatC(sqlpub.fieldbyname('conta').AsString));
      nbanco := strtoint(formatnumeric(sqlpub.fieldbyname('nbanco').AsString)); 

      if (nbanco<=0) or (ag='') or (nconta='') then msg('#Verifique banco, ag e conta do cliente(Cód/Nome): '+
            sqlpub.fieldbyname('codigo').AsString+' '+ sqlpub.fieldbyname('nome').AsString,0);


      if  sqlpub['tpconta'] = null then
         msg('#Verifique se a conta é CC ou poupança:  cod/nome:'+
            sqlpub.fieldbyname('codigo').AsString+' '+ sqlpub.fieldbyname('nome').AsString+ '.',0);


        if      sqlpub.fieldbyname('tpconta').AsString = 'P' then  finpgto := '11'
        else if sqlpub.fieldbyname('tpconta').AsString = 'C' then  finpgto := '01';


        if (sqlpub.fieldbyname('endereco').AsString='') or
        (sqlpub.fieldbyname('numero').AsInteger<0)  then msg('#Verifique endereço e número do cliente(Cód/Nome): '+
            sqlpub.fieldbyname('codigo').AsString+' '+ sqlpub.fieldbyname('nome').AsString,0);

      if sqlpub.fieldbyname('numero').AsInteger >0 then numend :=  inttostr(sqlpub.fieldbyname('numero').AsInteger);
      endereco :=  sqlpub.fieldbyname('endereco').AsString+ numend;


        if sqlpub.fieldbyname('municipio').AsString='' then msg('#Verifique a cidade do cliente(Cód/Nome): '+
            sqlpub.fieldbyname('codigo').AsString+' '+ sqlpub.fieldbyname('nome').AsString,0);

      municipio := sqlpub.fieldbyname('municipio').AsString;

        if formatnumeric(sqlpub.fieldbyname('cep').AsString)='' then msg('#Verifique o cep do cliente(Cód/Nome): '+
            sqlpub.fieldbyname('codigo').AsString+' '+ sqlpub.fieldbyname('nome').AsString,0);
      cep := sqlpub.fieldbyname('cep').AsString ;

        if sqlpub.fieldbyname('uf').AsString='' then msg('#Verifique o estado do cliente(Cód/Nome): '+
            sqlpub.fieldbyname('codigo').AsString+' '+ sqlpub.fieldbyname('nome').AsString,0);
      uf := sqlpub.fieldbyname('uf').AsString;

end;

procedure bcvital;
var
tpinf, fpgto : string;
begin
                    
        if (length(cnpj) = 14)                               then  tpinf   := '2'
                                                             else  tpinf   := '1';

        if nbanco = 1                                        then  fpgto   := '01'
        else if (totcli-mensalidade-descbanco) > 5000        then  fpgto   := '41'
                                                             else  fpgto   := '03';
        //pop bb
        if (finpgto = '11') and (nbanco = 1)                 then  fpgto   := '05'
        //pop nao bb
        else if (finpgto = '11') and (nbanco <> 1)           then  fpgto   := '03';

        pgtofor := '20';

        //conta poup
        if finpgto = '11'                                    then pgtofor := '98';

        //poup pgto bb
        if (nbanco = 1) and (finpgto = '11')                 then begin
           pgtofor := '98';
           finpgto := '01';
        end;


        if codigo = 3119 then begin
           pgtofor := '98';
           finpgto := '11';
        end;

        list.add(strcomplete(copy(Titular,1,30), ' ', 30,1) + //nome a 30
                tpinf+ //tp de inscricao
                strcomplete(copy(cnpj,1,14), ' ', 14,1) + //cnpj a 14
                formatdatetime('dd',date)+ //dia
                formatdatetime('mm',date)+ //mes
                formatdatetime('yyyy',date)+ //ano
                FormatFloat('000000000000000', Roundto(totcli-mensalidade- descbanco, -2) * 100) + //Valor Real da Efetivação do Pagto n 15 - 2
                FormatFloat('00000000000000000000',n) + //nosso numero
                Fpgto+ //f pgto
                finpgto+ //finalidade pgto
                pgtofor+ //pgto a fornecedor
                FormatFloat('000',nbanco) +
                strcomplete(copy(ag,1,5), '0', 5,0) + //5
                strcomplete(copy(nconta,1,12), '0', 12,0) + //12
                '0'+//aviso=sem aviso
                 strcomplete(copy(endereco,1,30), ' ', 30,1) + //endereco a 30
                 strcomplete(copy(municipio,1,20), ' ', 20,1) + //cidade a 20
                 strcomplete(copy(formatnumeric(cep),1,8), ' ', 8,1) + //cnpj a 8
                 strcomplete(copy(uf,1,2), ' ', 2,1) +
                 '0');//conferencia de inscricao

          nbanco:=0;


        //if descbanco=0 then
                                {
            showmessage('cod-'+inttostr(codigo)  +#13+
                strcomplete('nome-'+copy(Titular,1,30), ' ', 30,1) +#13+
                'cnpj ou cpf-'+tpinf+ #13+
                'cnpj-'+strcomplete(copy(cnpj,1,14), ' ', 14,1) +#13+
                'dia-'+formatdatetime('dd',date)+#13+
                'mes-'+formatdatetime('mm',date)+ #13+
                'ano-'+formatdatetime('yyyy',date)+ #13+
                'valor-'+FormatFloat('000000000000000', Roundto(totcli-mensalidade- descbanco, -2) * 100) +#13+
                'N-'+FormatFloat('00000000000000000000',n) +#13+
                'fpgto-'+Fpgto+#13+
                'finpgto-'+finpgto+#13+
                'fornec-'+pgtofor+ #13+
                'nbanco-'+FormatFloat('000',nbanco) + #13+
                'ag-'+strcomplete(copy(ag,1,5), '0', 5,0) + #13+
                'conta-'+strcomplete(copy(nconta,1,12), '0', 12,0) + #13+
                '0'+
                 'end-'+strcomplete(copy(endereco,1,30), ' ', 30,1) + #13+
                 'mun-'+strcomplete(copy(municipio,1,20), ' ', 20,1) + #13+
                 'cep-'+strcomplete(copy(formatnumeric(cep),1,8), ' ', 8,1) +
                 'uf-'+strcomplete(copy(uf,1,2), ' ', 2,1) + #13+
                 '0');
                                 }
end;


begin                
                    
                    
              abortaacao(tabela,nil,'chave','','','','',0);
              //para mensalidades
              ano := formatdatetime('yyyy',date);
              mes := formatdatetime('mm',date);

              //ARQUIVO BANCO
              list := tstringlist.Create;
              fdm.tbconfig.Open;
              n:= fdm.tbconfig.fieldbyname('prova').AsInteger + 1;
              selecione('update tbconfig set prova = '+ floattostr(n));
              fdm.tbconfig.close;
                                   
        cpsel := 'select dtvenda, codigo,tpconta, referencia,cnpj, Titular,UFcobranca as bcuf,Banco,cnpjconta,nbanco, agencia,conta,'+
                          ' if (tpconta="P","POUPANÇA","CORRENTE")as tpconta,email,nome , txbc,'+
                          ' endereco,  numero,  municipio,  cep,  uf, UFcobranca  from tbcliente '+
                          ' where codigo = ';


        imp:='1';
        if inputquery('Imprimir', 'Digite uma opção de impressão:' + #13 + #13 +
                     '1 = Baixa e Imprime'+#13+
                     '2 = Apenas Imprime'+#13+
                     '3 = Imprime Listagem '+#13+
                     'Esc = Cancela ', imp) then  else abort;


        if (imp='1') and (md1.Date <> md2.Date) then
            msg('Para baixar é preciso que o período seja de apenas 1 dia.',0);

        if (imp<>'1') and (imp<>'2') and (imp<>'3') then abort;


        if imp='3' then
           impgrade(tabela,nil,ds,grade,'r'+nrel, caption,capimp,true)
         else begin


                tbi.close;
                tbi.CreateDataSet;
                tbi.Open;

                if tabela.IndexFieldNames <> '' then
                   ind:= indtz(tabela.IndexFieldNames);



                imp2:='1';
                if inputquery('Imprimir', 'Digite uma opção de impressão:' + #13 + #13 +
                          '1 = Agrupar por cliente'+#13+
                          '2 = Agrupar por banco'+#13+
                          'Esc = Cancela ', imp2) then  else abort;

                 if imp2 = '2' then
                    bco := 'NBanco;';


                tabela.IndexFieldNames:= bco+'nome;tipoconta;dtvencimento';
                tabela.First;

                lista:=tstringlist.Create;
                listamail:=tstringlist.Create;

                numcoluna:=50;
                lista.Add( ' ');
                lista.Add( ' ');
                listamail.Add( ' ');
                listamail.Add( ' ');
                //seleciona os dados do cliente
                selecione(cpsel + quotedstr(tabela.fieldbyname('codigo').AsString));
                dados;
                
                lista.Add('Nome: ' + tabela.fieldbyname('nome').AsString +
                          '   CNPJ/CPF: '+ sqlpub.fieldbyname('cnpj').AsString);

                lista.Add('Banco: ' + sqlpub.fieldbyname('banco').AsString +
                          ' nº '+ sqlpub.fieldbyname('nbanco').AsString+
                          ' - '+sqlpub.fieldbyname('bcuf').AsString +
                          '   Ag: '+ uppercase(sqlpub.fieldbyname('agencia').AsString)+
                          '   Conta: '+ uppercase(sqlpub.fieldbyname('conta').AsString));

                lista.Add('Titular: ' + sqlpub.fieldbyname('Titular').AsString +
                          '   Tipo Conta: '+ sqlpub.fieldbyname('tpconta').AsString);


/////////
                listamail.Add('Nome: ' + tabela.fieldbyname('nome').AsString +
                          '   CNPJ/CPF: '+ sqlpub.fieldbyname('cnpj').AsString);

                listamail.Add('Banco: ' + sqlpub.fieldbyname('banco').AsString +
                          ' nº '+ sqlpub.fieldbyname('nbanco').AsString+
                          ' - '+sqlpub.fieldbyname('bcuf').AsString +
                          '   Ag: '+uppercase(sqlpub.fieldbyname('agencia').AsString)+
                          '   Conta: '+ uppercase(sqlpub.fieldbyname('conta').AsString));

                listamail.Add('Titular: ' + sqlpub.fieldbyname('Titular').AsString +
                          '   Tipo Conta: '+ sqlpub.fieldbyname('tpconta').AsString);
//////


                email := sqlpub.fieldbyname('email').AsString;
                nm := sqlpub.fieldbyname('nome').AsString;

                sqlpub:=nil;
                lista.Add(' ');
                lista.Add('          Tipo de Conta: ' + tabela.fieldbyname('TipoConta').AsString );
                lista.Add(compstr('          --------------------','--------------------'));
//////
                listamail.Add(' ');
                listamail.Add('          Tipo de Conta: ' + tabela.fieldbyname('TipoConta').AsString );
                listamail.Add(compstr('          --------------------','--------------------'));
/////////



                tottipo:=0;
                totcli:=0;
                totgeral:=0;



//                tabela.DisableControls;
                while not tabela.Eof do begin

                     if (nome <> tabela.fieldbyname('nome').AsString) or
                        (conta <> tabela.fieldbyname('tipoconta').AsString) then begin

                        conta:= tabela.fieldbyname('tipoconta').AsString;


                        lista.Add(compstr('          --------------------','--------------------'));
                        lista.Add(compstr('          Total do Grupo: ',format('%n',[tottipo])));
////////
                        listamail.Add(compstr('          --------------------','--------------------'));
                        listamail.Add(compstr('          Total do Grupo: ',format('%n',[tottipo])));
//////

                        if nome = tabela.fieldbyname('nome').AsString then begin

                           lista.Add(' ');
                           lista.Add(' ');
                           lista.Add('          Tipo de Conta: ' + tabela.fieldbyname('TipoConta').AsString );
                           lista.Add(compstr('          --------------------','--------------------'));
//////
                           listamail.Add(' ');
                           listamail.Add(' ');
                           listamail.Add('          Tipo de Conta: ' + tabela.fieldbyname('TipoConta').AsString );
                           listamail.Add(compstr('          --------------------','--------------------'));
////////

                        end;

                        tottipo:=0;
                     end;


                     if nome <> tabela.fieldbyname('nome').AsString then begin

                        nome:= tabela.fieldbyname('nome').AsString;


                        lista.Add(' ');
                        lista.Add(compstr('------------------------------','--------------------'));
                        lista.Add(compstr('SOMA DESTE CLIENTE: ',format('%n',[totcli])));
///////
                        listamail.Add(' ');
                        listamail.Add(compstr('------------------------------','--------------------'));
                        listamail.Add(compstr('SOMA DESTE CLIENTE: ',format('%n',[totcli])));


                        if dtvenda >= strtodate('01/12/2010') then descbanco :=2
                                          //bb           //bradesco        //ITAU    //UNIB
                        else if (nbanco = 1) or (nbanco = 237) or (nbanco = 341) or (nbanco = 409) then descbanco :=1
                        else descbanco :=3;

                        //isentar o cliente
                        if txbc = 'N' then  descbanco :=0;


                        if nbanco = 1 then                                 ndescbanco := '            TRANSF'
                        else if totcli-mensalidade- descbanco >= 3000 then ndescbanco := '               TED'
                        else                                               ndescbanco := '               DOC';


                        lista.Add(compstr(ndescbanco+': ','-'+format('%n',[descbanco])));
                        listamail.Add(compstr(ndescbanco+': ','-'+format('%n',[descbanco])));


                        if (totcli-mensalidade-descbanco) >= 0 then begin

                           lista.Add(compstr('       MENSALIDADE: ','-'+format('%n',[mensalidade])));
                           lista.Add(compstr('     VALOR A PAGAR: ',format('%n',[totcli-mensalidade- descbanco])));
//////////
                           listamail.Add(compstr('       MENSALIDADE: ','-'+format('%n',[mensalidade])));
                           listamail.Add(compstr('     VALOR A PAGAR: ',format('%n',[totcli-mensalidade- descbanco])));
/////////

                           totgeral:= totgeral-mensalidade;
                           totgeral:= totgeral- descbanco;
                        end else begin
                           lista.Add(compstr('     VALOR A PAGAR: ',format('%n',[totcli- descbanco])));
                            listamail.Add(compstr('     VALOR A PAGAR: ',format('%n',[totcli- descbanco])));
                            totgeral:= totgeral- descbanco;
                        end;

                        listamail.Add(compstr('   TIPO DE PGTO:',ndescbanco));
                        lista.Add(compstr('   TIPO DE PGTO:',ndescbanco));
/////////



                        lista.Add(' ');
                        lista.Add(' ');
                        lista.Add(' ');
                        lista.Add(' ');


                        if email ='' then
                           email := 'sememail@';

                     if imp='1' then
                        sendMail(nm,
                                 email,
                                 nm,
                                 email,
                                 'Pgto Vitalcred',
                                 listamail.Text,
                                 '',false);


                        if (totcli-mensalidade-descbanco) > 0 then bcvital;

                        listamail.Clear;
                        

                        /////novo cliente
                        {
                        selecione('select chave, VrMensalidade,dtval from tbcliente where '+
                                     ' ((dtval <= now() or dtval is null)) and '+
                                     ' (DiaMensalidade > 0) and '+
                                     ' (((extract(month from diarecbto) < '+mes+') and '+
                                     '    (extract(year from diarecbto) = '+ano+') '+
                                     ' or diarecbto is null )) '+
                                     ' and codigo = ' + quotedstr(tabela.fieldbyname('codigo').AsString));

                           mensalidade := sqlpub.fieldbyname('VrMensalidade').AsFloat;
                           }
                           mensalidade :=0;
                           //showmessage(mes+'-'+formatdatetime('mm',md1.Date));
                           if mes <>  formatdatetime('mm',md1.Date) then mensalidade :=0;

                          // chave := sqlpub.fieldbyname('chave').asstring;
                           sqlpub:=nil;

                        if imp='1' then begin
                           {
                           if (totcli-mensalidade-descbanco) >= 0 then begin
                              selecione('insert into tbmensalidade(link,datarecebimento,valor) values('+
                                        quotedstr(chave)+',now(),'+realdblstr(mensalidade)+')');
                              sqlpub:=nil;

                              selecione('update tbcliente set diarecbto = now() ' +
                                       ' where chave = '+ quotedstr(chave));
                              sqlpub:=nil;
                          end;
                            }
                       end;

                       selecione(cpsel + quotedstr(tabela.fieldbyname('codigo').AsString));

                       dados;
                       email :=  sqlpub.fieldbyname('email').AsString;
                       nm :=  sqlpub.fieldbyname('nome').AsString;


                        lista.Add('Nome: ' + tabela.fieldbyname('nome').AsString +
                                  '   CNPJ/CPF: '+ sqlpub.fieldbyname('cnpj').AsString);

                        lista.Add('Banco: ' + sqlpub.fieldbyname('banco').AsString +
                                  ' nº '+ sqlpub.fieldbyname('nbanco').AsString+
                                  '   Ag: '+ uppercase(sqlpub.fieldbyname('agencia').AsString)+
                                  '   Conta: '+ uppercase(sqlpub.fieldbyname('conta').AsString)+
                                  ' - '+ sqlpub.fieldbyname('UFcobranca').AsString);

                        lista.Add('Titular: ' + sqlpub.fieldbyname('Titular').AsString +
                                  '   Tipo Conta: '+ sqlpub.fieldbyname('tpconta').AsString);


                           lista.Add(' ');
                           lista.Add(' ');
                           lista.Add('          Tipo de Conta: ' + tabela.fieldbyname('TipoConta').AsString );
                           lista.Add(compstr('          --------------------','--------------------'));


///////
                        listamail.Add('Nome: ' + tabela.fieldbyname('nome').AsString +
                                  '   CNPJ/CPF: '+ sqlpub.fieldbyname('cnpj').AsString);

                        listamail.Add('Banco: ' + sqlpub.fieldbyname('banco').AsString +
                                  ' nº '+ sqlpub.fieldbyname('nbanco').AsString+
                                  '   Ag: '+ uppercase(sqlpub.fieldbyname('agencia').AsString)+
                                  '   Conta: '+ uppercase(sqlpub.fieldbyname('conta').AsString)+
                                  ' - '+ sqlpub.fieldbyname('UFcobranca').AsString);

                        listamail.Add('Titular: ' + sqlpub.fieldbyname('Titular').AsString +
                                  '   Tipo Conta: '+ sqlpub.fieldbyname('tpconta').AsString);


                           listamail.Add(' ');
                           listamail.Add(' ');
                           listamail.Add('          Tipo de Conta: ' + tabela.fieldbyname('TipoConta').AsString );
                           listamail.Add(compstr('          --------------------','--------------------'));
//////////


                        sqlpub:=nil;
                        totcli :=0;
                     end;



                     if tabela['bloq'] = null then begin
                        lista.Add(compstr('          '+tabela.fieldbyname('dtvencimento').AsString+' - '+
                                       copy(tabela.fieldbyname('Cliente').AsString,1,17),
                                       format('%n',[tabela.fieldbyname('vrcliente').asfloat])));

                        listamail.Add(compstr('          '+tabela.fieldbyname('dtvencimento').AsString+' - '+
                                       copy(tabela.fieldbyname('Cliente').AsString,1,17),
                                       format('%n',[tabela.fieldbyname('vrcliente').asfloat])));

///
                        tottipo:=tottipo+ tabela.fieldbyname('vrcliente').AsFloat;
                        totcli:= totcli+tabela.fieldbyname('vrcliente').AsFloat;;
                        totgeral:= totgeral+tabela.fieldbyname('vrcliente').AsFloat;;


                        tbi.Insert;
                        tbi['chave'] := tbi.RecordCount;
                        tbi['valor'] := tabela.fieldbyname('vrcliente').AsFloat;
                        tbi['codigo'] := tabela.fieldbyname('codigo').asinteger;
                        tbi['nbanco'] := tabela.fieldbyname('nbanco').asstring;
                        tbi.Post;

                      end else begin
                          lista.Add(tabela.fieldbyname('vrcliente').asstring+ ' - Parc. bloq: '+ tabela.fieldbyname('bloqmotivo').asstring);
                          listamail.Add(tabela.fieldbyname('vrcliente').asstring+ ' - Parc. bloq: '+ tabela.fieldbyname('bloqmotivo').asstring);
                      end;
//                       bloq := bloq + #13+'Parc. bloq: '+ tabela.fieldbyname('bloqmotivo').asstring;
                      tabela.Next;

                end;
//                tabela.EnableControls;

                lista.Add(compstr('------------------------------','--------------------'));
                lista.Add(compstr('SOMA DESTE CLIENTE: ',format('%n',[totcli])));
////////
                listamail.Add(compstr('------------------------------','--------------------'));
                listamail.Add(compstr('SOMA DESTE CLIENTE: ',format('%n',[totcli])));



                        if dtvenda >= strtodate('01/12/2010') then descbanco :=2
                                          //bb           //bradesco        //ITAU    //UNIB
                        else if (nbanco = 1) or (nbanco = 237) or (nbanco = 341) or (nbanco = 409) then descbanco :=1
                        else descbanco :=3;

                        //isentar o cliente
                        if txbc = 'N' then  descbanco :=0;


                        if nbanco = 1 then                                 ndescbanco := '            TRANSF'
                        else if totcli-mensalidade- descbanco >= 3000 then ndescbanco := '               TED'
                        else                                               ndescbanco := '               DOC';


                        lista.Add(compstr(ndescbanco+': ','-'+format('%n',[descbanco])));
                        listamail.Add(compstr(ndescbanco+': ','-'+format('%n',[descbanco])));

                        totcli := totcli - descbanco;
                ////////

                if (totcli-mensalidade-descbanco) > 0 then begin

                   lista.Add(compstr('       MENSALIDADE: ','-'+format('%n',[mensalidade])));
                   lista.Add(compstr('     VALOR A PAGAR: ',format('%n',[totcli-mensalidade- descbanco])));
/////////
                   listamail.Add(compstr('       MENSALIDADE: ','-'+format('%n',[mensalidade])));
                   listamail.Add(compstr('     VALOR A PAGAR: ',format('%n',[totcli-mensalidade- descbanco])));
////////

                   totgeral:= totgeral-mensalidade- descbanco;



                     tbi.Insert;
                     tbi['valor'] := mensalidade;
                     tbi['codigo'] := tabela.fieldbyname('codigo').asinteger;
                     tbi['nbanco'] := tabela.fieldbyname('nbanco').asstring;
                     tbi.Post;
                end else begin
                    lista.Add(compstr('     VALOR A PAGAR: ',format('%n',[totcli- descbanco])));
                    listamail.Add(compstr('     VALOR A PAGAR: ',format('%n',[totcli- descbanco])));
                    totgeral:= totgeral- descbanco;
                end;

                lista.Add(compstr('   TIPO DE PGTO:',ndescbanco));
                                        // nbanco:='';
                lista.Add(compstr('------------------------------','--------------------'));
                lista.Add(' ');
                lista.Add(compstr('------------------------------','--------------------'));
                lista.Add(compstr('       SOMA GERAL: ',format('%n',[totgeral])));
                //lista.Add(bloq);


                listamail.Add(compstr('   TIPO DE PGTO:',ndescbanco));

                listamail.Add(compstr('------------------------------','--------------------'));
                listamail.Add(' ');
                listamail.Add(compstr('------------------------------','--------------------'));
                listamail.Add(compstr('       SOMA GERAL: ',format('%n',[totgeral])));
                listamail.Add(bloq);
////////


                tabela.IndexFieldNames := ind;
             end;



             if email ='' then
                email := 'sememail@';


             if imp='1' then begin
                sendMail(nm,
                         email,
                         nm,
                         email,
                         'Pgto Vitalcred',
                         listamail.Text,
                         '',false);
             listamail.clear;
             end;

             if (totcli-mensalidade-descbanco) > 0 then bcvital;

             ////////////soma do banco
                tbi.IndexFieldNames:= 'nbanco';
                tbi.First;

                //seleciona o nome do banco
                selecione('select banco from tbcliente '+
                          'where codigo = ' + quotedstr(tbi.fieldbyname('codigo').AsString));

                lista.Add(' ');
                lista.Add(' ');
                lista.Add(' ');
                lista.Add(compstr('          *****************BANCOS','*****************'));
                lista.Add(' ');
                lista.Add('Banco: ' + tbi.fieldbyname('nbanco').AsString +' - '+
                          sqlpub.fieldbyname('banco').asstring);

                sqlpub:=nil;
                totbanco:=0;
                nbanco:= strtoint(tbi.fieldbyname('nbanco').AsString);

                while not tbi.Eof do begin

                     if nbanco <> tbi.fieldbyname('nbanco').AsInteger then begin
                        nbanco:= tbi.fieldbyname('nbanco').AsInteger;
                        lista.Add(compstr('          --------------------','--------------------'));
                        lista.Add(compstr('          Total do Banco: ',format('%n',[totbanco])));

                        //seleciona o nome do banco
                         selecione('select banco from tbcliente '+
                                   'where codigo = ' + quotedstr(tbi.fieldbyname('codigo').AsString));

                         lista.Add(' ');
                         lista.Add(' ');

                         lista.Add('Banco: ' + tbi.fieldbyname('nbanco').AsString +' - '+
                                   sqlpub.fieldbyname('banco').asstring);
                         sqlpub:=nil;
                         totbanco:=0;

                     end;

                     totbanco := totbanco + tbi.fieldbyname('valor').AsFloat;
                     tbi.Next;
                end;
                lista.Add(compstr('          --------------------','--------------------'));
                lista.Add(compstr('          Total do Banco: ',format('%n',[totbanco])));

                tbi.IndexFieldNames:= 'i';


             tbi.Close;
             tbi.CreateDataSet;
             tbi.Open;

             tbi.IndexFieldNames:='i';
             for i:=0 to lista.Count -1 do begin
                 tbi.Insert;
                 tbi['descricao'] := lista[i];
                 tbi['i'] := i;
                 tbi['chave'] := i;
                 tbi.Post;
            end;

           fimp:=tfimp.Create(self,dstb,tbi,nil,'impfincli', 'Acerto Cliente - '+datetostr(md2.date),'');
           criacheck('descricao','Pgto(s) Relacionado(s)',0,100,100,false,false,false,false,false,false);
           fimp.rcol.Checked := false;
           tabela.First;
           fimp.ShowModal;
           tbi.Close;

           lista.Destroy;

                if not DirectoryExists(PChar(substitui(servpath,'/','\')+'arquivobc')) then
                   ForceDirectories(PChar(substitui(servpath,'/','\')+'arquivobc'));

           list.SaveToFile(substitui(servpath,'/','\')+'arquivobc/'+formatnumeric(datetostr(now))+'_N'+inttostr(n)+'.txt');
           ShellExecute(Handle, 'open', PChar(substitui(servpath,'/','\')+'arquivobc'), nil, '', SW_MAXIMIZE);
           list.Destroy;

            if imp='1' then baixa_estorna(2,grade,tabela,nil,'');
end;


procedure Tfrelatorio.totrel;
var
tot1,tot2,tot3,tot4,tot5,tot6,tot7,tot8,tot9,tot10,tot11,tot12,tot13,tot14,tot15,tot16,tot17,tot18,acumulo:double;
begin
       if (tbrel <> nil) and (tbrel.Active) then
          if (soma1<>'') then begin

        tot1:=0;
        tot2:=0;
        tot3:=0;
        tot4:=0;
        tot5:=0;
        tot6:=0;
        tot7:=0;
        tot8:=0;
        tot9:=0;
        tot10:=0;
        tot11:=0;
        tot12:=0;
        tot13:=0;
        tot14:=0;
        tot15:=0;
        tot16:=0;
        tot17:=0;
        tot18:=0;
        acumulo :=0;


          tbrel.First;

          while not tbrel.Eof do begin

           if copy(caption,1,19) = 'Situação das Contas' then begin
              tbrel.edit;
              acumulo := acumulo + tbrel.fieldbyname('saldo').AsFloat;
              tbrel['acumulo'] := acumulo;
           end;

           if (soma1<>'') then
              tot1:=tot1+tbrel.fieldbyname(soma1).AsFloat;

           if (soma2<>'') then
              tot2:=tot2+tbrel.fieldbyname(soma2).AsFloat;

           if (soma3<>'') then
              tot3:=tot3+tbrel.fieldbyname(soma3).AsFloat;

           if (soma4<>'') then
              tot4:=tot4+tbrel.fieldbyname(soma4).AsFloat;

           if (soma5<>'') then
              tot5:=tot5+tbrel.fieldbyname(soma5).AsFloat;

           if (soma6<>'') then
              tot6:=tot6+tbrel.fieldbyname(soma6).AsFloat;

           if (soma7<>'') then
              tot7:=tot7+tbrel.fieldbyname(soma7).AsFloat;

           if (soma8<>'') then
              tot8:=tot8+tbrel.fieldbyname(soma8).AsFloat;

           if (soma9<>'') then
              tot9:=tot9+tbrel.fieldbyname(soma9).AsFloat;

           if (soma10<>'') then
              tot10:=tot10+tbrel.fieldbyname(soma10).AsFloat;

           if (soma11<>'') then
              tot11:=tot11+tbrel.fieldbyname(soma11).AsFloat;

           if (soma12<>'') then
              tot12:=tot12+tbrel.fieldbyname(soma12).AsFloat;

           if (soma13<>'') then
              tot13:=tot13+tbrel.fieldbyname(soma13).AsFloat;

           if (soma14<>'') then
              tot14:=tot14+tbrel.fieldbyname(soma14).AsFloat;

           if (soma15<>'') then
              tot15:=tot15+tbrel.fieldbyname(soma15).AsFloat;

           if (soma16<>'') then
              tot16:=tot16+tbrel.fieldbyname(soma16).AsFloat;

           if (soma17<>'') then
              tot17:=tot17+tbrel.fieldbyname(soma17).AsFloat;

           if (soma18<>'') then
              tot18:=tot18+tbrel.fieldbyname(soma18).AsFloat;

             tbrel.Next;
          end;


        capsoma(tot1,tot2,tot3,tot4,tot5,tot6,tot7,tot8,tot9,tot10,tot11,tot12,tot13,tot14,tot15,tot16,tot17,tot18);
                           {
        //grava os dados do caixa
        if copy(caption,1,8)= 'Caixa - ' then begin
           fdm.tbcaixagrupo.edit;
           fdm.tbcaixagrupo['fiado'] := tot8;
           fdm.tbcaixagrupo['cartaod'] := tot7;
           fdm.tbcaixagrupo['cartao'] := tot6;
           fdm.tbcaixagrupo['cheque'] := tot5;
           fdm.tbcaixagrupo['dinheiro'] := tot4;
           fdm.tbcaixagrupo['saidacaixa'] := tot3;
           fdm.tbcaixagrupo['total'] := tot1;
           selecione('select dinheiro from tbentradacaixa where link = '+quotedstr(fdm.tbcaixagrupo.fieldbyname('chave').AsString));
           fdm.tbcaixagrupo['valorinicial'] := sqlpub.fieldbyname('dinheiro').AsFloat;
        end;                }

     end;
     try
     if tbrel <> nil then
     tbrel.First;
     except end;
end;




procedure Tfrelatorio.totalizar;
var
tot1,tot2,tot3,tot4,tot5,tot6,tot7,tot8,tot9,tot10,tot11,tot12,tot13,tot14,tot15,tot16,tot17,tot18:double;
begin

    if ((soma1<>'') or (soma2<>'') or (soma3<>'')) or
       (nometb = 'tbbancomovimento') or
       (nometb = 'tbestoqueacerto')  then begin

        tot1:=0;
        tot2:=0;
        tot3:=0;
        tot4:=0;
        tot5:=0;
        tot6:=0;
        tot7:=0;
        tot8:=0;
        tot9:=0;
        tot10:=0;
        tot11:=0;
        tot12:=0;
        tot13:=0;
        tot14:=0;
        tot15:=0;
        tot16:=0;
        tot17:=0;
        tot18:=0;

        ds.DataSet.DisableControls;
        tabela.First;
        while not tabela.Eof do begin

           if (soma1<>'') then
              tot1:=tot1+tabela.fieldbyname(soma1).AsFloat;

           if (soma2<>'') then
              tot2:=tot2+tabela.fieldbyname(soma2).AsFloat;

           if (soma3<>'') then
              tot3:=tot3+tabela.fieldbyname(soma3).AsFloat;

           if (soma4<>'') then
              tot4:=tot4+tabela.fieldbyname(soma4).AsFloat;

           if (soma5<>'') then
              tot5:=tot5+tabela.fieldbyname(soma5).AsFloat;

           if (soma6<>'') then
              tot6:=tot6+tabela.fieldbyname(soma6).AsFloat;

           if (soma7<>'') then
              tot7:=tot7+tabela.fieldbyname(soma7).AsFloat;

           if (soma8<>'') then
              tot8:=tot8+tabela.fieldbyname(soma8).AsFloat;

           if (soma9<>'') then
              tot9:=tot9+tabela.fieldbyname(soma9).AsFloat;

           if (soma10<>'') then
              tot10:=tot10+tabela.fieldbyname(soma10).AsFloat;

           if (soma11<>'') then begin
             // if (nometb = 'tbpedido') and (tabela.fieldbyname(soma11).AsFloat<0) then
               //   tot11:=tot11-tabela.fieldbyname(soma11).AsFloat*(-1)
             // else
                  tot11:=tot11+tabela.fieldbyname(soma11).AsFloat;
           end;

           if (soma12<>'') then
              tot12:=tot12+tabela.fieldbyname(soma12).AsFloat;

           if (soma13<>'') then
              tot13:=tot13+tabela.fieldbyname(soma13).AsFloat;

           if (soma14<>'') then
              tot14:=tot14+tabela.fieldbyname(soma14).AsFloat;

           if (soma15<>'') then
              tot15:=tot15+tabela.fieldbyname(soma15).AsFloat;

           if (soma16<>'') then
              tot16:=tot16+tabela.fieldbyname(soma16).AsFloat;

           if (soma17<>'') then
              tot17:=tot17+tabela.fieldbyname(soma17).AsFloat;

           if (soma18<>'') then
              tot18:=tot18+tabela.fieldbyname(soma18).AsFloat;

           if nometb = 'tbestoqueacerto' then begin

              if tabela.FieldByName('total').AsFloat < 0 then
                 tot1 := tot1 + ((tabela.FieldByName('total').AsFloat) * -1);

              if tabela.FieldByName('total').AsFloat > 0 then
                 tot2 := tot2 + tabela.FieldByName('total').AsFloat;

                 tot3 := tot3 + tabela.FieldByName('total').AsFloat;
            end;



           tabela.Next;
        end;
        ds.DataSet.EnableControls ;

        tabela.First;


        capsoma(tot1,tot2,tot3,tot4,tot5,tot6,tot7,tot8,tot9,tot10,tot11,tot12,tot13,tot14,tot15,tot16,tot17,tot18);


        if (nometb = 'tbnota') and (tot1<>0) and (tot2<>0) then
           tt1.Caption := tt1.Caption + '      Mg(%) = '+ format('%n',[(tot2 * 100 / tot1 - 100)]);

        if (nometb = 'tbpedido')  and (tot1<>0) and (tot12<>0) then begin

          // if  tot11 <0 then tot11 := tot11*(-1);
           tt10.Caption := format('%n',[((tot1 * 100 / tot12) - 100)]);
        end;

        if (com2=18) and (tot1<>0) and (tot4<>0) then
           tt2.Caption := format('%n',[((tot1 * 100 / tot4) - 100)]);

        if nometb = 'tbestoqueacerto' then begin
           t1.Caption  := 'Perda';
           tt1.Caption :=  format('%n',[tot1]);

           t2.Caption  := 'Sobra';
           tt2.Caption :=  format('%n',[tot2]);

           t2.Caption  := 'Total';
           tt2.Caption :=  format('%n',[tot3]);
        end;

     end else begin
         //prodape1.Hide;
         //prodape2.Hide;
     end;
     tabela.First;
end;



procedure Tfrelatorio.gradeTitleClick(Column: TColumn);
begin

      if tabela.Active then
        indexar(column,tabela,nil,elocalizar,llocalizar)
      else if (copy(caption,1,8) <> 'Caixa - ') and (copy(caption,1,14) <> 'Fluxo de caixa') then
        try
        indexar(column,tbrel,nil,elocalizar,llocalizar);
        except tbrel.IndexFieldNames := 'chave'; end;


end;

procedure Tfrelatorio.btnimprimirClick(Sender: TObject);


var
impecf,imp,ntb,cap,dt,filtb,filchave,tb,tbn:string;
ft,Impfiscal_,ImpECFPedido_,Concumitante_:boolean;


procedure fisc;
var
  Ini: Tinifile;
begin
  Ini := TIniFile.Create(conf_local);
  Impfiscal_    := Ini.ReadBool('ImpFiscal', 'Ativar', False);
  ImpECFPedido_ := Ini.ReadBool('ImpFiscal', 'ECFPedido', False);
  Concumitante_ := (Ini.ReadBool('ImpFiscal', 'Concumitante', False)) and
                   (Ini.ReadBool('ImpFiscal', 'Ativar', False));
  Ini.Free;
end;


begin

      if md1.Visible then
         dt := ' - De: '+ datetostr(md1.Date) + ' a: '+ datetostr(md2.Date);


      if caption <> 'movprod' then
         cap := 'r'+nrel
      else
         cap := caption;


      if (tbrel <> nil ) and (tbrel.Active) then begin
         filtb := tbrel.Filter;
         filtrar(grade,tbrel,nil,'chave');
      end else begin
         filtb := tabela.Filter;

         // se usar o filtro da tabela e quiser imprimir filtrados
         if (Pred(grade.SelectedRows.Count) < 0) and(filtb<>'') then begin
             tabela.First;
             tabela.DisableControls;
             while not tabela.Eof do begin

                if filchave = '' then
                   filchave := ' chave = ' + quotedstr(tabela.fieldbyname('chave').AsString)
                else filchave := filchave + ' or chave = ' + quotedstr(tabela.fieldbyname('chave').AsString);
                tabela.Next;
             end;

             tabela.Filter := filchave;
             tabela.Filtered := true;


         end else
            filtrar(grade,tabela,nil,'chave');

      end;


      fisc;
      if (tbrel <> nil ) and (tbrel.Active) then begin
        

        codloc :='1';
        imp    :='1';
        if (copy(caption,1,8)= 'Caixa - ') or (copy(caption,2,8)= 'Caixa - ') then begin
           btntodoClick(self);
           imp := msgi('Imprimir:'+#13+#13+'1=Cupom...'+#13+'2=Listagem',2);
           
        end else impgrade(tbrel,nil,ds,grade,cap, caption+dt,capimp+rodape,rvisualiza.Checked);

        if not strtoint(imp) in[1..2] then imp := '2';

        if imp = '2' then begin
           ft := tbrel.Filtered;
           impgrade(tbrel,nil,ds,grade,cap, caption+dt,capimp+rodape,rvisualiza.Checked);
           if ft then totrel;
           caption := titulo;
        end;


        ///fechar o caixa
        if (not vf) and ((copy(caption,1,8)= 'Caixa - ') or (copy(caption,2,8)= 'Caixa - ')) then begin
           if imp = '1' then impcx;

           fechacx;

         end;




      end else if nrel <> 'tbpedidolistagem' then begin
        ft := tabela.Filtered;

        //imprime entradas
        if (lowercase(copy(nometb,1,3))= 'tbe') or (lowercase(copy(nometb,1,9))= 'tbentrada') then begin


            if lowercase(copy(nometb,1,9))= 'tbentrada' then begin
               tb := uppercase(copy(nometb,10,3));
               tbn:= copy(nometb,1,9);
            end else if lowercase(copy(nometb,1,3))= 'tbe' then begin
              tbn:= copy(nometb,1,3);
              tb := uppercase(copy(nometb,4,3));
            end;

            codloc :='1';
            imp := msgi('Imprimir:'+#13+#13+'1=Compra    '+#13+'2=Listagem',2);
            if not strtoint(imp) in[1..2] then imp := '1';
            if imp = '2' then impgrade(tabela,nil,ds,grade,'r'+nrel, caption + dt, capimp,rvisualiza.Checked)
            else if (imp='1') then periodo2(tb,tbn,tabela.fieldbyname('chave').AsString,'','','',0,0,0);


         end else impgrade(tabela,nil,ds,grade,'r'+nrel, caption + dt, capimp,rvisualiza.Checked);


        if ft then totalizar;
        caption := titulo;
      //se pedido listagem
      end else begin
          abortaacao(tabela,nil,'chave','','','','',0);
            if (Impfiscal_) and (not ImpECFPedido_) and (not Concumitante_) then
               impecf := '4=Imprime cupom fiscal'#13;

          imp  :='1';
          if inputquery('Imprimir', 'Digite uma opção de impressão:' + #13 + #13 +
                        '1 = Imprime Listagem '+#13+
                        '2 = Imprime Padrão' + #13 +
                        '3 = Imprime Reduzido' + #13 +
                        impecf+
                        '5 = Etiqueta para envio' + #13 +
                        '8 = Impressão texto' + #13 +
                        '10 = Proposta' + #13 +
                        '11 = Cupom' + #13 +
                        'Esc = Cancela',imp) then  else abort;;


          if imp = '1' then
             impgrade(tabela,nil,ds,grade,'r'+nrel, caption+dt, capimp,rvisualiza.Checked);

          if (imp = '2') or (imp='3') or (imp='8') or (imp='10') or (imp='11')then
             imppedido(tabela.FieldByName('chave').AsString,nometb,imp);


          if imp = '4' then begin

              with fdm.Query1 do begin
                   sql.Clear;
                   sql.Add('select cnpj, nome, fone, endereco from tbcliente where codigo = '+
                           quotedstr(tabela.FieldByName('codigo').AsString));
                   fdm.tbquery1.Close;
                   fdm.tbquery1.open;;
              end;


              if tabela['status'] = 'A' then
                 ntb := 'venda'
              else ntb := 'tbpedido';

              with fdm.Query2 do begin
                   sql.Clear;
                   sql.Add('select * from '+ntb+' where chave = '+ quotedstr(chavepedido));
                   Close;
                   open;
              end;

             selecione( 'select tbproduto.codigo,tbproduto.descricao,tbproduto.un, 0 as descontoreal, '+

                                'if ('+ nometb+'item.acrescimo is null,0, '+ nometb+'item.acrescimo) +' +
                                 nometb+'item.vrunit - if ('+ nometb+'item.descontoreal is null,0, '+ nometb+'item.descontoreal)as vrunit, '+


                                   nometb+'item.qtd*('+
                                   'if ('+ nometb+'item.acrescimo is null,0, '+ nometb+'item.acrescimo) +' +
                                    nometb+'item.vrunit - if ('+ nometb+'item.descontoreal is null,0, '+ nometb+'item.descontoreal)) as total, '+
                                   ' tbproduto.imposto,'+
                                   ' tbproduto.reducaobasecalc,'+
                                   ' tbproduto.cf,tbproduto.st, '+nometb+'item.qtd '+
                                   ' from tbproduto, '+nometb+'item'+
                                   ' where tbproduto.codigo = '+ nometb+'item.codigo '+
                                   ' and  '+nometb+'item.qtd > 0 and ' +
                                   nometb+'item.link='+quotedstr(tabela.fieldbyname('chave').AsString));

          fdm.Query2.edit;
          fdm.Query2['descontoreal'] := null;
          fdm.Query2['acrescimo'] := null;


              FMenu.impec(fdm.tbquery1.FieldByName('cnpj').AsString,
                     fdm.tbquery1.FieldByName('nome').AsString,
                     fdm.tbquery1.FieldByName('fone').AsString,
                     fdm.tbquery1.FieldByName('endereco').AsString,
                     fdm.Query2,
                     sqlpub);



               sqlpub := nil;
               fdm.tbquery1.close;
               fdm.tbquery2.close;

           end;

           if imp = '5' then etiqcli;

       end;


      if (tbrel <> nil ) and (tbrel.Active) then
          tbrel.Filter  := filtb
      else
          tabela.Filter := filtb;

      tabela.Filtered := false;

      if filtb <> '' then tabela.Filtered := true;




end;


procedure Tfrelatorio.elocalizarChange(Sender: TObject);
begin

        if tbrel <> nil then begin
          if (tbrel.IndexFieldNames = '') and (tbrel.IndexName='') then tbrel.IndexFieldNames  :='chave';
          loctabela(tbrel,nil,elocalizar)
        end else
          loctabela(tabela,nil,elocalizar);
          
end;

procedure Tfrelatorio.elocalizarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  tbo:tclientdataset;
begin

       if tbrel <> nil then tbo := tbrel
       else                 tbo := tabela;


        if (key = 13) and (tbrel = nil) then
           periodo_;

        if (key = 40) or (key = 34)  then  tbo.Next;
        if (key = 38) or (key = 33) then   tbo.prior;

end;

procedure Tfrelatorio.elocalizarKeyPress(Sender: TObject; var Key: Char);
var
indice:string;
tbo:tclientdataset;
begin


       if tbrel <> nil then tbo := tbrel
       else                 tbo := tabela;


       if tbo.IndexFieldNames <> '' then
          indice := tbo.IndexFieldNames
       else
          indice := tbo.IndexName;

        if (tbo.fieldbyname(indice).ClassName = 'TIntegerField') or
           (tbo.fieldbyname(indice).ClassName = 'TFloatField')  then
           if not (key in ['0'..'9', #8,',','%']) then
           abort;

        if (tbo.fieldbyname(indice).ClassName = 'TDateField')  then
           if not (key in ['0'..'9', #8,'/','%']) then abort;

end;

procedure Tfrelatorio.btnfiltroClick(Sender: TObject);
begin

      if (tbrel <> nil ) and (tbrel.Active) then tbrel.Filtered := false;
      if (tabela <> nil ) and (tabela.Active) then tabela.Filtered := false;
      caption := titulo;

      if (tbrel <> nil ) and (tbrel.Active) and (tbrel.RecordCount<=0) then msg('#Não há dados',0);
      if (tabela <> nil ) and (tabela.Active) and (tabela.RecordCount<=0) then msg('#Não há dados',0);

      if (tbrel <> nil ) and (tbrel.Active) then  filtro2(tbrel,nil)
      else                                        filtro2(tabela,nil);

      
end;

procedure Tfrelatorio.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Ini: tinifile;
begin

      try
         Ini := TInifile.Create(conf_local);
         ini.WriteBool('rel', 'rel', rvisualiza.Checked);
         ini.free;
      except end;   

          if ffiltrocad <> nil then
             ffiltrocad.Close;
          tabela.Close;
          tabela.Filtered := false;
          try
          if tbrel <> nil then begin
             tbrel.Filtered := false;
             tbrel.Filter := '';
          end;
          except end;

          tmgrade := false;

          Release;
          frelatorio := nil;
end;

procedure Tfrelatorio.btntodoClick(Sender: TObject);
begin
        if elocalizar.Visible then  elocalizar.Clear;
        caption := titulo;

        if tbrel <> nil then begin
           tbrel.Filtered := false;
           tbrel.Filter :='';
           totrel;
           titgrade(grade,tbrel,nil);

        end else if com2 in[17,18,16,2] then begin
            tabela.Filtered := false;
            tabela.Filter   :='';
            periodo_;

        end else begin
           periodo_;
           titgrade(grade,tabela,nil);
        end;

end;

procedure Tfrelatorio.btngraficoClick(Sender: TObject);
var
j,i:integer;
ct,ind,nomes,st:string;
tbgraf:tclientdataset;
begin


      tabela1.close;
      tabela1.Open;
      tabela1.IndexFieldNames := indtz(tabela.IndexFieldNames);

      tbgraf :=  tclientdataset.Create(application);

      if tabela.Active = false then  tbgraf := tbrel
      else tbgraf := tabela1;

      if tbgraf.IndexFieldNames='' then
         ind := tbgraf.IndexName
      else
         ind := tbgraf.IndexFieldNames ;

      i:=1;
      j:=length(ind);
      //nome do campo
      while i<=j do begin
            if ct <> ';' then
               ct := copy(ind,i,1);

            if ct <> ';' then
               nomes := nomes + copy(ind,i,1);

            inc(i);
      end;

      ind := nomes;
      nomes :='';

      for i:=0 to grade.Columns.Count-1 do
         if tbgraf.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TFloatField' then
             nomes := nomes + #13 + inttostr(i-1) + ' = '+ grade.Columns[i].Title.Caption;


              if nomes = '' then
                 msg('#Não existe campo numérico para montar um gráfico!',0);

              st:=msgi('O gráfico será montado por dois campos:'+#13+ #13+
                       'Campo da grade ordenado ('+tbgraf.IndexFieldNames+
                       ') + o campo numérico escolhido.'+#13+#13+
                       'Escolha o campo numérico digitando o número correspondente: '+#13+nomes,0);

              if st='' then abort;
              try
                 if tbgraf.fieldbyname(grade.Columns[strtoint(st)+1].FieldName).ClassName <> 'TFloatField' then
                    msg('#Digite corretamente!',0);
              except msg('#Digite corretamente!',0);
              end;



              fdm.gerafrafico(tbgraf,ind,
                              grade.Columns[strtoint(st)+1].FieldName,
                              caption + ' POR '+uppercase(ind) +
                              ' E '+ uppercase(grade.Columns[strtoint(st)+1].FieldName));
             tbgraf:=nil;
             tabela1.Close;

end;

procedure Tfrelatorio.FormShow(Sender: TObject);

var
ini:tinifile;
qtdt,i:integer;

function Impfiscal: boolean;
var
  Ini: Tinifile;
begin
  Ini := TIniFile.Create(conf_local);
  if Ini.ReadBool('ImpFiscal', 'Ativar', False) then
    Result := True
  else
    Result := False;

  impfisc := result;

  Ini.Free;
end;


begin

        Impfiscal;
        btnfiltro.Glyph := btfiltro;
        btntodo.Glyph := bttodos;
        btnimprimir.Glyph := btimprimir;
        btnmenu.Glyph := btmenu;
        btngrafico.Glyph := btgrafico;
        imagepanel('imagemenu1', altop, panel1, '',menucad);
        Ini := TInifile.Create(conf_local);
        rvisualiza.Checked := Ini.ReadBool('rel', 'rel', True);
        Ini.free;

        totrel;

        btnok.Visible := md2.Visible;

        Exibiromovimento1.Visible := caption ='movprod';
        smov.Visible := caption ='movprod';

        if md2.Visible = false then begin
           btntodo.Left := btntodo.Left -197;
           btngrafico.Left := btngrafico.Left-197;
           btnimprimir.Left := btnimprimir.Left-197;
           btnmenu.Left := btnmenu.Left -197;
           btnfiltro.Left := btnfiltro.Left-197;
           rvisualiza.Left := rvisualiza.Left-197;
        end;


        cdata.Items.Add('data');
        cdata.ItemIndex :=0;
        qtdt :=1;

        if (tabela <> nil) and (tabela.active) then
           for i := 1 to tabela.FieldCount do begin

               if (tabela.Fields[i-1].ClassName = 'TDateField') and
                  (tabela.Fields[i-1].FieldName <> data) and
                  (tabela.Fields[i-1].FieldName <> 'DtAprov') then begin
                   cdata.Items.Add(tabela.Fields[i-1].FieldName);
                   inc(qtdt);
               end;
          end;

          ldata.Visible := qtdt >1;
          cdata.Visible := qtdt >1;

          ldata.Visible := md2.Visible;
          cdata.Visible := md2.Visible;
          if (tbrel <> nil ) and (tbrel.Active) then llocalizar.Caption := 'Localizar por '+tbrel.IndexFieldNames+' (A~Z)';

end;

procedure Tfrelatorio.rcampoClick(Sender: TObject);
begin
        elocalizar.SetFocus;
end;

procedure Tfrelatorio.btnokClick(Sender: TObject);
begin
           if (com2= 11) and (nometb='tbpedido') then begin
              acesso1('Vendas');
              permissao(sqlacesso.FieldByName('consultar').AsString, 'PC', 'Vendas');
              sqlacesso.Destroy;
           end;

           elocalizar.Clear;
           elocalizar.SetFocus;

           if tabela.IndexName <> '' then
              tabela.IndexFieldNames := tabela.IndexFieldNames;

           periodo_;
end;

procedure Tfrelatorio.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_f9 then btnokClick(self);
end;

procedure Tfrelatorio.gradeDblClick(Sender: TObject);



      function fildataset(cp,Ent: string): string;
      var
        Bruto,text,fil: string;
        cont,i: integer;
      begin
        Bruto := Ent;
        fil:='';
        Result :='';

        for cont := 0 to length(Bruto) do begin

            if copy(bruto,cont,1) = ';' then
               i:=1;



            if i = 1 then begin
               fil := fil+ ' or '+cp+' = '+quotedstr(text);
               i:=0;
               text:='';
            end;

               if copy(bruto,cont+1,1)<>';' then
                  text := text + copy(bruto,cont+1,1);


        end;

        fil :=  '('+cp+' = '+ quotedstr(text) + fil+')';

        Result := fil;
      end;


var
st, crit, campo:string;
somadia,prazo,qtddia :integer;
cx:boolean;
begin

               
      cx := (nometb = 'tbmov') and (lowercase(grade.SelectedField.FieldName)='caixa') and (md1.Visible);




      //devolucao de itens
      if (com2=20) and (lowercase(grade.SelectedField.FieldName)='devolvido') then
         devolveitens






      // fornece o nº da venda para troca ou devolucao E VERIFICA SE ESTÁ NO PRAZO CONFIGURADO
      else if caption = 'Relatório de vendas - Devolver' then begin

          if DiaSemana (date) = 'SEGUNDA' then
             somadia := 2
          else somadia :=0;

          if tabela.FieldByName('descontoreal').AsFloat > 0 then
              vrpub := roundto(tabela.FieldByName('descontoreal').AsFloat * 100 /
                               tabela.FieldByName('totalparcial').AsFloat,-3);


          fdm.tbconfig.open;

          if tabela['tipovenda'] =  'P' then
             prazo := fdm.tbconfig.FieldByName('prazovendapromocional').AsInteger
          else
             prazo := fdm.tbconfig.FieldByName('prazovendanormal').AsInteger;

          if prazo <= 0 then prazo := 2000;

          qtddia := trunc(date - tabela.FieldByName('data').AsDateTime);

          if  (qtddia - somadia) > prazo then
              senhagerencial(modulo,
                             modulo + ' COM PRAZO VENCIDO!',
                             modulo + ' COM PRAZO VENCIDO.');

           codloc := chavepedido;

         {if tabela.FieldByName('descontoreal').AsFloat > 0 then
         fpedido.descontodevolucao := roundto(tabela.FieldByName('descontoreal').AsFloat * 100 /
                                      tabela.FieldByName('totalparcial').AsFloat,-3);}
         close;




       // acertar nfe
     end else if (caption = 'Estoque Real') and (grade.SelectedIndex = 6) then begin

        abortaacao(tabela,nil,'chave','','','','',0);
        st := msgi('Acertar Estoque'+#13+#13+'Digite a quantidade:',2);
        selecione('update tbproduto set nfe = '+quotedstr(st)+' where chave = '+
                  quotedstr(tabela.fieldbyname('chave').AsString));
        tabela.edit;
        tabela['estoque']:=st;
        tabela.Post;

     end else if nometb = 'tbcomissao' then
        itemcompra(tabela.FieldByName('documento').AsString,'')

     else if (nometb = 'tbentradaitemdf') and (grade.SelectedIndex = 8) then
        devfor


     else if (tbrel <> nil) and ( caption='movprod' ) then  movprodd


     else if (not cx) and ((tbrel <> nil) or (com2 <>14)) and (caption<>'movprod') then begin
          try
             codloc := ds.DataSet.fieldbyname(grade.SelectedField.FieldName).AsString;
          except end;
          st := msgi('Filtrar:'+#13+#13+ 'Digite o(a) '+grade.SelectedField.FieldName+' e tecle Enter:'+#13+#13+
                     'Obs: Você pode filtrar por mais de um item. Ex: Item1;Item2;Item3' ,0);
          ds.DataSet.Filtered := false;

          if ds.DataSet.Filter = '' then
             ds.DataSet.Filter   := fildataset(grade.SelectedField.FieldName,st)
          else
             ds.DataSet.Filter   := ds.DataSet.Filter + ' and ' +fildataset(grade.SelectedField.FieldName,st);

          ds.DataSet.Filtered := true;
          grade.DataSource :=nil;
          grade.DataSource :=ds;


          caption := titulo + '   -   '+ds.DataSet.Filter;

          if tbrel = nil then begin
             totalizar;
             titgrade(grade,tabela,nil);
          end else                totrel;


     end else if (cx) or ((tabela.Active) and (grade.SelectedField.FieldName <> 'Status') and
         (tabela.fieldbyname(grade.SelectedField.FieldName).ClassName <> 'TDateField')) then begin
        md1.Date := strtodate('01/01/1900');
        md2.date := date + 3000;
        codloc := tabela.fieldbyname(grade.SelectedField.FieldName).AsString;

        st := msgi('Pesquisar:'+#13+#13+ 'Digite o(a) '+grade.SelectedField.FieldName+' e tecle Enter:',0);
        crit := criterio;

        campo := grade.SelectedField.FieldName;

        if tipoempresa = 'P' then begin
           if      campo = 'Nome do Animal' then campo :='campo1'
           else if campo = 'Raca' then campo :='campo4'
           else if campo = 'Peso' then campo :='campo6'
           else if campo = 'Nascimento' then campo :='campo3';

        end else if tipoempresa = 'E' then begin
           if      campo = 'Aparelho' then campo :='campo1'
           else if campo = 'Serie' then campo :='campo4'
           else if campo = 'Marca' then campo :='campo2'
           else if campo = 'Modelo' then campo :='campo3'
           else if campo = 'Garantia' then campo :='campo7';

        end else if tipoempresa = 'I' then begin
           if      campo = 'Maquina' then campo :='campo1'
           else if campo = 'Serie' then campo :='campo4'
           else if campo = 'Cont. Final' then campo :='campo6'
           else if campo = 'Garantia' then campo :='campo7';

        end else if tipoempresa = 'A' then begin
           if      campo = 'Veiculo' then campo :='campo1'
           else if campo = 'Placa' then campo :='campo8'
           else if campo = 'Frota' then campo :='campo5'
           else if campo = 'Chassi' then campo :='campo4'
           else if campo = 'Ano' then campo :='campo2';
        end;

       // if from <> '' then
         //  criterio := criterio + ' and ' + nometb+'.'+campo +' like ' + quotedstr(st)
//        else
       criterio := criterio + ' and '+campo +' like ' + quotedstr(st);

        tabela.IndexFieldNames := grade.SelectedField.FieldName;
        llocalizar.Caption := 'Localizar por '+grade.SelectedField.FieldName+' (A~Z)';
        try
          periodo_;
        except msg('Pesquisa não válida.',0);
        end;
        criterio := crit;
     end;

end;

procedure Tfrelatorio.btnmenuClick(Sender: TObject);
begin
                menu.Popup(btnmenu.left+100,btnmenu.top+30);
end;

procedure Tfrelatorio.Baixar1Click(Sender: TObject);
var
st,pg,loc :string;
begin
        abortaacao(tabela,nil,'chave','','','','',0);

        loc := tabela.fieldbyname('chave').AsString;

        if tabela['pago']='N' then begin
           st := 'Clissificar a seleção como pago?';
           pg :='S';
        end else begin
           st := 'Estornar a seleção?';
           pg :='N';
        end;

        if not msg(st,2) then abort;

        filtrar(grade,tabela,nil,'chave');

        tabela.First;
        while not tabela.Eof do begin

             selecione('update '+nometb+' set pago = '+quotedstr(pg)+' where chave = '+
                        quotedstr(tabela.fieldbyname('chave').AsString));

              tabela.Next;
       end;

       tabela.Filtered := false;
       tabela.close;
       tabela.open;
       if tabela.Active then titgrade(grade,tabela,nil);
       tabela.Locate('chave',loc,[]);

end;

procedure Tfrelatorio.Usurio1Click(Sender: TObject);
begin
        mostrarnome(tabela,nil,'tbusuario','chave','codigo','nome','nome');
end;

procedure Tfrelatorio.Preenchecliente1Click(Sender: TObject);
begin
        mostrarnome(tabela,nil,'tbcliente','codigo','codigocliente','nome','nome');
end;

procedure Tfrelatorio.NoRecebido1Click(Sender: TObject);
begin
        tabela.Filtered := false;
        tabela.Filter := 'diferenca >0';
        tabela.Filtered := true;
        totalizar;

end;

procedure Tfrelatorio.Filtrar01Click(Sender: TObject);
begin
        tabela.Filtered := false;
        tabela.Filter := 'DifSaida <> 0 or DifEntrada <> 0 ';
        tabela.Filtered := true;
        totalizar;
end;

procedure Tfrelatorio.Servios1Click(Sender: TObject);
var
st:tstringlist;
begin

         st := tstringlist.Create;

          with fdm.query2 do begin
               close;

                sql.Clear;
                sql.add('select servico, obs1 from tbpedido '+
                             ' where chave ='+  quotedstr(tabela.fieldbyname('chave').AsString));
               open;

               if fieldbyname('servico').AsString <> '' then begin
                  st.Add('DESCRIÇÃO DOS SERVIÇOS:');
                  st.Add(' ');
                  st.Add(fieldbyname('servico').AsString);
                  st.Add(' ');
                  st.Add(' ');
               end;

               if fieldbyname('obs1').AsString <> '' then begin
                  st.Add('OBSERVAÇÃO/HISTÓRICO:');
                  st.Add(' ');
                  st.Add(fieldbyname('obs1').AsString);
               end;

               if st.Text <> '' then begin
                  st.SaveToFile('c:\servico.txt');
                 ShellExecute(Handle, 'open', 'c:\servico.txt', nil, '', Sw_Show);
               end else msg('Não há serviços.',0);

               close;
          end;

end;

procedure Tfrelatorio.Pagar1Click(Sender: TObject);
var
st:string;
begin

         abortaacao(tabela,nil,'chave','','','','',0) ;

         msg('Deseja baixar as parcelas? ',2);

         
         st:='';
         tabela.First;
//         tabela.DisableControls;
         while not tabela.Eof do begin
               if st='' then
                  st := ' where chave = '+quotedstr(tabela.fieldbyname('chave').AsString)
               else
                 st := st+' or chave = '+quotedstr(tabela.fieldbyname('chave').AsString);
               tabela.next;
         end;
//         tabela.EnableControls;

         selecione('update tbfinanceiro set flag = "S" '+st);
         tabela.Cancel;
         tabela.Refresh;
         msg('Baixadas!',0);
         sqlpub :=nil;

end;

procedure Tfrelatorio.AbriraEntrada1Click(Sender: TObject);
var
cp:boolean;
begin

         try
         if (tabela['linkvenda']<> null)  then cp:=true;
         except end;

         if cp then msg('#Esta compra está vinculada a um acerto, para abri-lá deverá estornar o acerto!', 0);

         if tabela['nome']='CONTAGEM ESTOQUE' then  msg('#Contagem de estoque não pode ser editado.',0);
         if (tabela['nome']='ORDEM DE PRODUCAO') and (vf=false) then  msg('#A Ordem de Produção só pode ser aberta na tela de Ordem de Produção.',0);

         if (nometb = 'tbe') or (nometb = 'tbedf') or (nometb = 'tbemp') then msg('#Já está aberta.',0);

         abortaacao(tabela,nil,'chave','','','','',0);
         fdm.tbconfig.open;
         if fdm.tbconfig['abrirvenda'] = 'C' then
            senhagerencial('NF',
                           'AUTORIZAÇÃO PARA ALTERAR ENTRADA ENCERRADA!',
                           'CORRIGIR ITENS')
         else if fdm.tbconfig['abrirvenda'] = 'N' then  begin
                 fdm.tbconfig.close;
                 msg('#O programa está configurado para não abrir entrada encerradas!',0);
         end;

         fdm.tbconfig.close;



        if msg('Deseja abrir? ',2) = false then abort;

        codloc := tabela.fieldbyname('numero').AsString;
        cod    := tabela.fieldbyname('chave').AsString;


        if (lowercase(nometb) = 'tbentrada') or (lowercase(nometb) = 'tbentradamp') then   deletaconta(cod,'entrada','','');

        close;

end;

procedure Tfrelatorio.Itensdaentrada1Click(Sender: TObject);
var
chave,mp,ntb, ntbitem, tb, tb2,tb3:string;
begin

      abortaacao(tabela,nil,'chave','','','','',0);

      try

        ntb:=nometb;

        if lowercase(nometb) = 'tbentradamp' then
           ntbitem:='tbentradaitemmp'

        else if lowercase(nometb) = 'tbentradadf' then
           ntbitem:='tbentradaitemdf'

        else if lowercase(nometb) = 'tbentrada' then
           ntbitem:='tbentradaitem'

        else if lowercase(nometb) = 'tbemp' then
           ntbitem:='tbeitemmp'

        else if lowercase(nometb) = 'tbedf' then
           ntbitem:='tbeitemdf'

        else if lowercase(nometb) = 'tbe' then
           ntbitem:='tbeitem';


        if ntbitem <>'' then
           fdm.comsumo(tabela.fieldbyname('numero').AsString, ntb, ntbitem,'4','')


        else begin

          try
              if tabela['tipoestoque'] = '3' then
                 mp := 'mp';
          except end;

           chave := tabela.fieldbyname('chave').AsString;

           if ntb = 'tbnota' then begin
              tb := 'tbnotaitem';
              tb2 := 'tbnotaservico';



           end else if ntb = 'tbnota1' then begin
              tb := 'tbnotaitem1';
              tb2 := 'tbnotaservico1';


           end else if tabela['Status']='ABE' then begin
              tb := 'vendaitem';
              tb2 := 'vendaservico';
              tb3 := 'vendalocacao';

              if nometb ='tbpedido' then
                 chave := tabela.fieldbyname('chave1').AsString
              else
                 chave := tabela.fieldbyname('chave').AsString;

           end else begin
              tb := 'tbpedidoitem';
              tb2 := 'tbpedidoservico';
              tb3 := 'tbpedidolocacao';
           end;

           veritem(caption + ' '+
                   tabela.fieldbyname('nome').asstring + '  N. '+
                   tabela.fieldbyname('numero').asstring ,
                   tb,tb2,tb3,chave,mp);


      end;

      except msg('Não disponível.',0);
      end;


end;









procedure Tfrelatorio.abrirvenda(data,numero,chave:string);
var
sqlA:tzquery;
mp,vendedor, tbitemO, tbitem, qtd,devolucao,otica:string;
i:integer;
begin

      if tipoempresa = 'O' then
         otica := ', esf_od_p , esf_oe_p , esf_od_l , esf_oe_l , cil_od_p , cil_oe_p , cil_od_l , '+
                  'cil_oe_l , eixo_od_p , eixo_oe_p , eixo_od_l , eixo_oe_l , dnp_od_p , dnp_oe_p , dnp_od_l , '+
                  'dnp_oe_l , alt_od_p , alt_oe_p , alt_od_l , alt_oe_l , adicao_od_p , adicao_oe_p , adicao_od_l , adicao_oe_l ';


          sqla :=  tzquery.Create(application);
          sqla.Connection := fdm.conector ;


      with sqlA do begin
          sql.clear;
          sql.add( 'select nome from tbfuncionario where codigo = '+
                          quotedstr(tabela.fieldbyname('codigovendedor').AsString));
                          open;
                          vendedor := fieldbyname('nome').AsString;

           // deleta se fo aberta anteriormente e deu erro
           close;
          sql.clear;
          sql.add('delete from venda where  '+
                  ' chavepedido = ' + quotedstr(chave));
           execsql;



           close;

          sql.clear;
          sql.add(
           ' insert into venda '+
           ' (nome '+
           ', emp '+
           ', consig '+
           ', codigovendedor '+
           ', endereco '+
           ', bairro '+
           ', municipio '+
           ', cep '+
           ', uf '+
           ', cnpj '+
           ', ie  '+
           ', fone '+
           ', email '+
           ', chavepedido  '+
           ', serial  '+
           ', numero '+
           ', spedido '+
           ', data  '+
           ', codigo '+
           ', avulso  '+
           ', modo  '+
           ', td  '+
           ', dtentrega  '+
           ', vendedor  '+
           ', entregue  '+
           ', totalparcial '+
           ', descontoReal '+
           ', total  '+
           ', vendal  '+
           ', obs  '+
           ', tipo  '+
           ', orcamento  '+
           ', campo1  '+
           ', campo2  '+
           ', campo3  '+
           ', campo4  '+
           ', campo5  '+
           ', campo6  '+
           ', campo7  '+
           ', campo8  '+
           ', campo9  '+
           ', totalpeca  '+
           ', totalservico  '+
           ', vrlocacao  '+
           ', acrescimo '+
           ', valoricmsubstituicao '+
           ', tipodesconto '+
           ', custo  '+
           ', custol  '+
           ', servico  '+
           ', tipovenda '+
           ', credito  '+
           ', totalitem  '+
           ', comprador '+
           ', tipoestoque  '+
           ', totalipi  '+
           ', fisjur  '+
           ', obs1 '+
           otica+' )  '+

           ' (select '+
           ' tbcliente.nome '+
           ',' +nometb+'.emp '+
           ',' +nometb+'.consig '+
           ',' +nometb+'.codigovendedor '+
           ', tbcliente.endereco '+
           ', tbcliente.bairro '+
           ', tbcliente.municipio '+
           ', tbcliente.cep '+
           ', tbcliente.uf '+
           ', tbcliente.cnpj '+
           ', tbcliente.ie  '+
           ', tbcliente.fone '+
           ', tbcliente.email '+
           ', '+ quotedstr(chave)+
           ', ' + quotedstr(getip)+
           ', '+ numero +
           ', '+nometb+'.spedido '+
           ', ' + data +
           ', '+nometb+'.codigo '+
           ', "N"  '+
           ', '+nometb+'.modo  '+
           ', '+nometb+'.td  '+
           ', '+nometb+'.dtentrega  '+
           ', '+ quotedstr(vendedor)+
           ', '+nometb+'.entregue  '+
           ', '+nometb+'.totalparcial '+
           ', '+nometb+'.descontoReal '+
           ', '+nometb+'.total  '+
           ', '+nometb+'.vendal  '+
           ', '+nometb+'.obs  '+
           ', '+nometb+'.tipo  '+
           ', '+nometb+'.orcamento  '+
           ', '+nometb+'.campo1  '+
           ', '+nometb+'.campo2  '+
           ', '+nometb+'.campo3  '+
           ', '+nometb+'.campo4  '+
           ', '+nometb+'.campo5  '+
           ', '+nometb+'.campo6  '+
           ', '+nometb+'.campo7  '+
           ', '+nometb+'.campo8  '+
           ', '+nometb+'.campo9  '+
           ', '+nometb+'.totalpeca  '+
           ', '+nometb+'.totalservico  '+
           ', '+nometb+'.vrlocacao  '+
           ', '+nometb+'.acrescimo '+
           ', '+nometb+'.valoricmsubstituicao '+
           ', '+nometb+'.tipodesconto '+
           ', '+nometb+'.custo  '+
           ', '+nometb+'.custol  '+
           ', '+nometb+'.servico  '+
           ', '+nometb+'.tipovenda '+
           ', '+nometb+'.credito  '+
           ', '+nometb+'.totalitem  '+
           ', '+nometb+'.comprador '+
           ', '+nometb+'.tipoestoque  '+
           ', '+nometb+'.totalipi  '+
           ', '+nometb+'.fisjur  '+
           ', '+nometb+'.obs1  '+
           otica+
           ' from '+nometb+', tbcliente '+
           ' where '+nometb+'.codigo = tbcliente.codigo '+
           ' and '+nometb+'.chave = ' + quotedstr(tabela.fieldbyname('chave').AsString)+')');

            execsql;


          sql.clear;
          sql.add('select chave from venda where chavepedido = '+ quotedstr(chave));
          open;

          chavevenda := fieldbyname('chave').asstring;
          chave := fieldbyname('chave').asstring;
          close;

          // deleta se fo aberta anteriormente e deu erro
          sql.clear;
          sql.add('delete from vendaitem  where  link = ' + quotedstr(chave));
          execsql;

          sql.clear;
          sql.add('delete from vendadevolucao  where  link = ' + quotedstr(chave));
          execsql;

          sql.clear;
          sql.add('delete from vendalocacao  where  link = ' + quotedstr(chave));
          execsql;


          // transfere itens da venda

        for i:=1 to 3 do begin

          //venda
          if i = 1 then begin
             tbitemO := 'tbpedidoitem';
             tbitem := 'vendaitem';
             qtd := ' >=0 ';

          //devolucao
          end else if i=2 then begin
             tbitemO := 'tbpedidoitem';
             tbitem := 'vendadevolucao';
             qtd := ' <0 ';
             devolucao := ' *(-1)';
          //locacao
          end else begin
             tbitemO := 'tbpedidolocacao';
             tbitem := 'vendalocacao';
             qtd := ' >=0 ';
             devolucao := '';
          end;


          if tbitem = 'vendaitem' then
             if tabela['tipoestoque'] = '3' then mp := 'MP';

          close;
          sql.clear;
          sql.add( ' insert into  '+  tbitem+
          ' (qtd '+
          ',emp '+
          ',item '+
          ',nome '+
          ',modo '+
          ',link '+
          ', totalparcial'+
          ', total'+
          ',vrminimo' +
          ', data '+
          ', dtentregue '+
          ', datadevolucao '+
          ', vrunit '+
          ', descontoReal '+
          ', acrescimo '+
          ', vendal'+
          ', defeito '+
          ', defeitoN '+
          ', tipovenda '+
          ', tamanho '+
          ', chavedevolucao '+
          ', chavegrade '+
          ', tipoestoque '+
          ', tm1 '+
          ', tm2 '+
          ', tm3 '+
          ', especificacao '+
          ', cor '+
          ', bonificacao  '+
          ', pis '+
          ',prazo' +
          ', cofins '+
          ', codigo '+
          ', ncmsh '+
          ', descricao  '+
          ', cf '+
          ', st '+
          ', un '+
          ', imposto '+
          ', codigooriginal  '+
          ', codigofornecedor  '+
          ', icm  '+
          ', letradesconto  '+
          ', ipi '+
          ', custo '+
          ', cmedio '+
          ', custol '+
          ', reducaobasecalc  '+
          //', comissao '+
          ', comissao2  '+
          ', numero  '+
          ', mva  '+
          ', cfop  '+
          ', cst  '+
          ', codigobarras )'+
            //////////////
          '(select '+
          ' '+tbitemO+'.qtd '+ devolucao+
          ','+tbitemO+'.emp '+
          ','+tbitemO+'.item '+
          ','+tbitemO+'.nome '+
          ','+tbitemO+'.modo '+
          ', '+quotedstr(chave)+

          ', if ('+tbitemO+'.descontoreal is not null, '+
              tbitemO+'.vrunit - '+tbitemO+'.descontoreal,'+
              tbitemO+'.vrunit) '+

          ', if ('+tbitemO+'.descontoreal is not null, '+
              '('+tbitemO+'.vrunit - '+tbitemO+'.descontoreal)*'+tbitemO+'.qtd'+ devolucao+
              ','+tbitemO+'.vrunit*'+tbitemO+'.qtd'+ devolucao+') '+

          ', '+tbitemO+'.vrminimo '+
          ', '+data+
          ', '+tbitemO+'.dtentregue '+
          ', '+tbitemO+'.datadevolucao '+
          ', '+tbitemO+'.vrunit '+
          ', '+tbitemO+'.descontoReal '+
          ', '+tbitemO+'.acrescimo '+
          ', '+tbitemO+'.vendal '+
          ', '+tbitemO+'.defeito '+
          ', '+tbitemO+'.defeitoN '+
          ', '+tbitemO+'.tipovenda '+
          ', '+tbitemO+'.tamanho '+
          ', '+tbitemO+'.chavedevolucao '+
          ', '+tbitemO+'.chavegrade '+
          ', '+tbitemO+'.tipoestoque '+
          ', '+tbitemO+'.tm1 '+
          ', '+tbitemO+'.tm2 '+
          ', '+tbitemO+'.tm3 '+
          ', '+tbitemO+'.especificacao '+
          ', '+tbitemO+'.cor '+
          ', '+tbitemO+'.bonificacao '+
          ', tbproduto'+mp+'.pis '+
          ', '+tbitemO+'.prazo '+
          ', tbproduto'+mp+'.confins '+
          ', tbproduto'+mp+'.codigo '+
          ', tbproduto'+mp+'.ncmsh '+
          ', tbproduto'+mp+'.descricao  '+
          ', tbproduto'+mp+'.cf '+
          ', tbproduto'+mp+'.st '+
          ', tbproduto'+mp+'.un '+
          ', tbproduto'+mp+'.imposto '+
          ', tbproduto'+mp+'.codigooriginal  '+
          ', tbproduto'+mp+'.codigofornecedor  '+
          ', tbproduto'+mp+'.imposto as icm  '+
          ', tbproduto'+mp+'.desconto  '+
          ', tbproduto'+mp+'.ipi '+
          ', '+tbitemO+'.custo '+
          ', '+tbitemO+'.cmedio '+
          ', '+tbitemO+'.custol '+
          ', tbproduto'+mp+'.reducaobasecalc  '+
          //', '+tbitemO+'.comissao '+
          ', '+tbitemO+'.comissao2 '+
          ', '+tbitemO+'.numero '+
          ', tbproduto'+mp+'.mva  '+
          ', tbproduto'+mp+'.cfop  '+
          ', tbproduto'+mp+'.cst  '+
          ', tbproduto'+mp+'.codigobarras '+
          ' from tbproduto'+mp+', '+tbitemO+'  where '+tbitemO+'.qtd '+qtd+' and '+
          ' tbproduto'+mp+'.codigo = '+tbitemO+'.codigo'+
          ' and '+tbitemO+'.link = '+ quotedstr(tabela.fieldbyname('chave').asstring)+')');
//          debugstr(sqlA);
          execsql;
        end;


        //atualiza a descricao dos itens conforme grade
        if gradepreco then begin
           
           selecione2('select g.* from '+nometb+'item v, tbprodgrade g where v.chavegrade = g.chave'+
                     ' and v.link = '+ quotedstr(tabela.fieldbyname('chave').asstring));

           while not sqlpub2.Eof do begin

                 if sqlpub2['descricao'] <> null then begin
                    sql.clear;
                    sql.add('update vendaitem set descricao = concat(descricao , " " , '+
                            quotedstr(sqlpub2.fieldbyname('descricao').asstring) +
                            ')  where chavegrade = ' + quotedstr(sqlpub2.fieldbyname('chave').asstring));
                    execsql;
                 end;

                 sqlpub2.Next;
           end;

           sqlpub2 := nil;
        end;


        close;
        sql.clear;
        sql.add( 'delete from vendapp where link = ' + quotedstr(chave));
        if nometb = 'tbpedido' then
        execsql;


          // transfere itens da pp(peca pendente)
          close;

          sql.clear;
          sql.add( ' insert into vendapp '+
          ' (qtd '+
          ', emp '+
          ', vrunit '+
          ', total'+
          ', codigo '+
          ', codigooriginal '+
          ', codigofornecedor '+
          ', codigobarras '+
          ', descricao  '+
          ', link)  '+

          '(select '+
          ' tbpecapendente.qtd '+
          ', tbpecapendente.emp '+
          ', tbpecapendente.vrunit '+
          ', tbpecapendente.qtd * tbpecapendente.vrunit as total'+
          ', tbproduto'+mp+'.codigo '+
          ', tbproduto'+mp+'.codigooriginal '+
          ', tbproduto'+mp+'.codigofornecedor '+
          ', tbproduto'+mp+'.codigobarras '+
          ', tbproduto'+mp+'.descricao  '+
          ', '+ quotedstr(chave)+
          ' from tbproduto'+mp+', tbpecapendente  where '+
          ' tbproduto'+mp+'.codigo = tbpecapendente.codigo'+
          ' and tbpecapendente.link = '+ quotedstr(tabela.fieldbyname('chave').asstring)+')');

          if nometb = 'tbpedido' then
             execsql;


           close;
          sql.clear;
          sql.add( 'delete from vendaservico  where  '+
                         ' link = ' + quotedstr(chave));
           if nometb = 'tbpedido' then
              execsql;


          close;

          sql.clear;
          sql.add( ' insert into vendaservico '+
          ' (qtd '+
          ', emp '+
          ', vrunit '+
          ', total'+
          ', comissao '+
          ', codigo '+
          ', descricao  '+
          ', data '+
          ', dtentrega '+
          ', hora '+
          ', horaentrega '+
          ', numero '+
          ', nome '+
          ', mecanico '+
          ', pago '+
          ', calcular '+
          ', link) ' +


          '(select '+
          ' tbpedidoservico.qtd '+
          ', tbpedidoservico.emp '+
          ', tbpedidoservico.vrunit '+
          ', tbpedidoservico.vrunit * tbpedidoservico.qtd as total'+
          ', tbpedidoservico.comissao '+
          ', tbpedidoservico.codigo '+
          ', tbpedidoservico.descricao  '+
          ', '+ data +
          ', tbpedidoservico.dtentrega '+
          ', tbpedidoservico.hora '+
          ', tbpedidoservico.horaentrega '+
          ', tbpedidoservico.numero '+
          ', tbpedidoservico.nome '+
          ', tbpedidoservico.mecanico '+
          ', tbpedidoservico.pago '+
          ', tbpedidoservico.calcular '+
          ', '+ quotedstr(chave)+
          ' from tbpedidoservico'+
          ' where link = '+ quotedstr(tabela.fieldbyname('chave').asstring)+')');
          if nometb = 'tbpedido' then
             execsql;


//          if (ipext <> '') and (nometb = 'tbpedido') then
  //           ipextvExecute(self);

          codloc := chave;
          destroy;
          end;
end;


procedure Tfrelatorio.AbrirVenda1Click(Sender: TObject);
var
st:string;
sqlD:tzquery;
campopedido,letra,balped,recebimento,senha:string;

begin

           if (tabela['linkvenda']<> null) and (caption <> 'Relatório de vendas - Devolver') then  
              msg('#Esta venda está vinculada a um acerto, para abri-lá deverá estornar o acerto!', 0);


          if tabela['chave']= null then
             msg('#Você não tem registro selecionado!',0);


      st := chavepedido;

          sqld :=  tzquery.Create(application);
          sqld.Connection := fdm.conector ;

      if tabela['status'] = 'ABE' then begin
         with sqlD do begin
              close;

          sql.clear;
          sql.add('update venda set serial = '+ quotedstr(getip)+
                  ' where chave = '+  quotedstr(st));
              execsql;
              //destroy;
         end;
         close;
      end


      else if (tabela['status'] = 'FEC') or (tabela['status'] = 'C') then  begin
           balped := 'pedido';
           letra := 'P ';
      end;

     if (tabela['status'] = 'FEC') or (tabela['status'] = 'C') then begin
         fdm.tbconfig.open;
         if fdm.tbconfig['abrirvenda'] = 'C' then
            senhagerencial('PEDIDO',
                           'AUTORIZAÇÃO PARA ALTERAR VENDA ENCERRADA!',
                           'CORRIGIR ITENS')
         else if fdm.tbconfig['abrirvenda'] = 'N' then  begin
                 fdm.tbconfig.close;
                 msg('#O programa está configurado para não abrir vendas encerradas!',0);
         end;

         fdm.tbconfig.close;
         // abre a venda
         abrirvenda(quotedstr(formatdatetime('yyyy-mm-dd',tabela.fieldbyname('data').asdatetime)),
                    tabela.FieldByName('numero').AsString,
                    chavepedido);

         deletaconta(chavepedido,balped,
                     tabela.FieldByName('codigo').AsString,
                     letra+tabela.FieldByName('numero').AsString);


         // delete o pedido já usado
         with sqlD do begin
              close;

          sql.clear;
          sql.add('delete from '+ntbvenda+'item where link = '+ quotedstr(chavepedido));
          execsql;

          sql.clear;
          sql.add('delete from tbpedidolocacao where link = '+ quotedstr(chavepedido));
          execsql;

          close;
          sql.clear;
          sql.add('delete from tbpedidoservico where link = '+  quotedstr(chavepedido));
          if nometb = 'tbpedido' then  execsql;

          close;
          sql.clear;
          sql.add('delete from tbpecapendente where link = '+  quotedstr(chavepedido));
              if tabela['status'] = 'FEC' then  execsql;


              close;

          sql.clear;
          sql.add('update '+ntbvenda+' set '+
                             '   totalservico = null '+
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
                             ',  tipoestoque = null '+
                             ',  tipovenda = null '+
                             ',  avulso = null '+
                             ',  codigo = null '+
                             ',  data = null '+
                             ',  orcamento = null '+
                             ',  vendedor = null '+
                             ',  totalparcial = null '+
                             ',  total = null '+
                             ' where chave = '+  quotedstr(st));
              execsql;
              //destroy;
              end;
    end;

     codloc := tabela.fieldbyname('numero').AsString;
     close;

end;

procedure Tfrelatorio.Replicaravenda1Click(Sender: TObject);
var
chave,numero:string;
begin
          abortaacao(tabela,nil,'chave','','','','',0);
          if tabela['status'] = 'ABE' then
             msg('#Esta não é uma venda encerrada.',0);

          if msg('Gerar uma venda a partir da venda selecionada?', 2 )= false then abort;


          with fdm.query1 do begin
              Close;
              sql.clear;
              sql.add(  'select max(numero)as numero from tbpedido');
              Open;
              numero := IntToStr(FieldByName('numero').AsInteger + 1);

              Close;
              sql.clear;
              sql.add(  'insert into tbpedido (numero) values (' + numero + ')');
              execsql;

              sql.clear;
              sql.add(  'select chave from tbpedido where numero =' + quotedstr(numero));
              Open;
              chave := IntToStr(FieldByName('chave').AsInteger);

              Close;
          end;

          abrirvenda('now()', numero, chave);

          selecione('select codigo, qtd,chavegrade from vendaitem where link = ' + quotedstr(chavevenda));

          sqlpub.First;
          while not sqlpub.Eof do begin
                alimentaestoque(sqlpub.FieldByName('codigo').AsString,
                                sqlpub.FieldByName('qtd').AsFloat*(-1),
                                tabela.FieldByName('tipoestoque').AsString,
                                sqlpub.FieldByName('chavegrade').AsInteger );
               sqlpub.Next;
          end;
          sqlpub := nil;
          codloc :=  numero;
          close;

end;

procedure Tfrelatorio.Excluiravenda1Click(Sender: TObject);
begin
        if tabela['status'] = 'ABE' then
           msg('#Esta não é uma venda encerrada.',0);

        cancelavenda(tabela.fieldbyname('chave').AsInteger,1);
        periodo_;

end;

procedure Tfrelatorio.GerarNotaFiscal1Click(Sender: TObject);
var
loc,cf,qtd,ntb:string;
sq1, sq2, sq3:tzquery;
begin

        abortaacao(tabela,nil,'chave','','','','',0);

        if com2 = 14 then  //des
           qtd := ' and  '+ntbvenda+'item.qtd < 0 '
        else
           qtd:= ' and  '+ntbvenda+'item.qtd > 0 ';

        fdm.tbconfig.Open;

        if fdm.tbconfig['calccusto'] = 'S' then
           cf:=' tbproduto.cf,concat(tbproduto.nacimp,tbproduto.cst) as st, '
        else
           cf:=' tbproduto.cf,tbproduto.st, ' ;

       fdm.tbconfig.close;
                                              
       sq1 := tzquery.Create(application);
       with sq1 do begin
             Connection := fdm.conector;
             sql.add( 'select tbproduto.codigo,tbproduto.codigooriginal,tbproduto.ncmsh,'+
                                   'tbproduto.descricao, tbproduto.un, '+
                                   ntbvenda+'item.link,'+
                                   ntbvenda+'item.chavegrade,'+
                                   ntbvenda+'item.vripi,'+
                                   ntbvenda+'item.ipi,'+
                                   ntbvenda+'item.descontoreal,'+
                                   ntbvenda+'item.vrunit,'+
                                   ntbvenda+'item.custo,'+
                                   ntbvenda+'item.pis,'+
                                   ntbvenda+'item.cofins,'+
                                   ntbvenda+'item.item,'+
                                   ' tbproduto.imposto icm,'+
                                   ' tbproduto. mva,'+
                                   ' tbproduto.reducaobasecalc,'+
                                   ' tbproduto.cfop,'+
                                   ' tbproduto.CST as st,'+
                                   cf+ntbvenda+'item.qtd '+
                                   ' from tbproduto, '+ntbvenda+'item'+
                                   ' where tbproduto.codigo = '+ ntbvenda+'item.codigo '+
                                   qtd + ' and ' +
                                   ntbvenda+'item.link='+quotedstr(chavepedido));
            open;
        end;


        sq2 := tzquery.Create(application);
        with sq2 do begin
             Connection := fdm.conector;
             sql.Clear;
             sql.Add('select codigo,descricao,qtd,vrunit,total from '+ntbvenda+'servico'+
                                ' where '+ ntbvenda+'servico.link='+quotedstr(chavepedido));

             open;
        end;


       sq3 := tzquery.Create(application);
       with sq3 do begin
             Connection := fdm.conector;
              sql.Clear;
              sql.Add(script+  ',obs from '+ntbvenda+' where chave = '+   quotedstr(chavepedido));
              open;
      end;

      if tabela['status']='ABE' then begin
         sq3.edit;
         sq3['chave']:= tabela.fieldbyname('chave1').asinteger;
      end;

       sq1.IndexFieldNames := 'item';
       geranota(sq3,sq1,sq2,nil,ntbvenda);
       sq1.Destroy;
       sq2.Destroy;
       sq3.Destroy;
       loc := tabela.fieldbyname('chave').AsString;
       periodo_;
       tabela.Locate('chave',loc,[]);

end;

procedure Tfrelatorio.Alterarondanota1Click(Sender: TObject);
var
chave,valor:string;
begin

        abortaacao(tabela,nil,'chave','','','','',0);

        valor:=  tabela.fieldbyname('nf').AsString;
        chave:=  chavepedido;

        if valor = '' then valor := '0';
        if inputquery('Alterar o número da nota','Digite o novo número:',valor) then else abort;

        if StrIsFloat(valor) = false then
           msg('#O número digitado não é um número válido!',0);

        selecione('update '+ntbvenda+' set NF = '+ quotedstr(valor)+
                  ' where chave ='+ quotedstr(chavepedido));

        periodo_;
        tabela.Locate('chave',chave,[]);

end;

procedure Tfrelatorio.Abriranota1Click(Sender: TObject);
begin
         abortaacao(tabela,nil,'chave','','','','',0);

         if tabela['Status'] = 'A' then
            msg('#Notas não impressas já estão abertas!',0);

         fdm.tbconfig.open;

         if tabela['data']<= livro then
            senhagerencial('NF',
                           'AUTORIZAÇÃO PARA ALTERAR NF - LIVRO FISCAL IMPRESSO','CORRIGIR NOTA')

         else if (fdm.tbconfig['abrirvenda'] = 'C') or
                 (fdm.tbconfig['abrirvenda'] = 'N') then
                 senhagerencial('NF','AUTORIZAÇÃO PARA ALTERAR NF ENCERRADA', 'CORRIGIR ITENS');

         fdm.tbconfig.close;


        if msg('Deseja abrir esta nota? ',2)=false then abort;

        codloc := tabela.FieldByName('numero').AsString ;
        vf := true;
        close;

end;

procedure Tfrelatorio.tabelaAfterScroll(DataSet: TDataSet);
begin
        lqtd.caption := inttostr(tabela.RecordCount)+ ' Registro(s)';
end;



function Tfrelatorio.chavepedido: string;
begin
         if (tabela['Status'] = 'ABE') and
            (GerarNotaFiscal1.Visible=false) and
            (caption <> 'LISTAGEM ORÇAMENTO') then
            result := tabela.fieldbyname('chave1').AsString
         else
            result := tabela.fieldbyname('chave').AsString;
end;


function Tfrelatorio.ntbvenda: string;
begin
        if tabela['status']='ABE' then
           result := 'venda'
        else
           result := 'tbpedido';
end;

procedure Tfrelatorio.MostrarVendedor1Click(Sender: TObject);
begin
        mostrarnome(tabela,nil,'tbfuncionario','codigo','CodigoVendedor','nome','nome');
end;

procedure Tfrelatorio.Inseriritensselecionados1Click(Sender: TObject);
var                   
qt,vr :string;

        procedure gv;
        begin
             if (strtofloat(qt)>0) and (strtofloat(vr)>0) then begin
                fdm.tbquery1.Insert;
                fdm.tbquery1['codigo'] := tabela.fieldbyname('codigo').AsString;
                fdm.tbquery1['qtd'] := qt;
                fdm.tbquery1['vrunit'] := vr;
                fdm.tbquery1.Post;
             end;
        end;


begin
        if not msg('Deseja gerar nota fiscal dos itens selecionados?',2) then abort;

        with fdm.Query1 do begin
             close;
             sql.Clear;
             sql.Add('select codigo, nfe-nfe as qtd, vrvenda as vrunit from tbproduto limit 0,0');
             fdm.tbquery1.IndexFieldNames := 'codigo';
             fdm.tbquery1.close;
             fdm.tbquery1.open;
        end;

        filtrar(grade,tabela,nil,'chave');
        tabela.First;
        while not tabela.Eof do begin

              if tabela.fieldbyname('estoque').AsFloat >0 then
                 codloc := tabela.fieldbyname('estoque').AsString
              else codloc := '1';

              qt := msgi(tabela.fieldbyname('descricao').AsString +#13+#13+'Digite a quantidade:',2);

              codloc := tabela.fieldbyname('vrunit').AsString;
              vr := msgi(tabela.fieldbyname('descricao').AsString +#13+#13+'Confirme o valor unitário:',2);

              gv;
              tabela.Next;
        end;

        close;

end;

procedure Tfrelatorio.MostrarFornecedor1Click(Sender: TObject);
begin

        try
        selecione('select codigo, fabricante as fornecedor, familia, grupo, subgrupo from tbproduto');

        tabela.First;
        while not tabela.Eof do begin
              tabela.Edit;
              //cli

              try
              if sqlpub.Locate('codigo',tabela.fieldbyname('codigo').AsString ,[]) then begin
                            
                 //tabela['fornecedor'] := sqlpub.fieldbyname('fornecedor').AsString;
                 tabela['familia'] := sqlpub.fieldbyname('familia').AsString;
                 tabela['grupo'] := sqlpub.fieldbyname('grupo').AsString;
                 tabela['subgrupo'] := sqlpub.fieldbyname('subgrupo').AsString;

                 try
                 tabela['codigofornecedor'] := sqlpub.fieldbyname('codigofornecedor').AsString;
                 except end;
                 try
                 tabela['codigooriginal'] := sqlpub.fieldbyname('codigooriginal').AsString;
                 except end;
              end;
              except end;

              tabela.Post;
              tabela.Next;
        end;

        sqlpub := nil;
        except msg('Não disponível.',0);
        end;

end;

procedure Tfrelatorio.linsumoClick(Sender: TObject);
var
codigoproduto:string;
qtd:real;
imp:integer;
begin

        abortaacao(tabela,nil,'chave','','','','',0);

        selecione('select codigo,qtd from tbnotaitem where link = '+
                  quotedstr(tabela.fieldbyname('chave').AsString));

        if sqlpub['codigo']='' then msg('#Nenhum item localizado.',0);

        codigoproduto:='';
        while not sqlpub.Eof do begin

              if codigoproduto ='' then
                 codigoproduto := ' where codigo = '+quotedstr(sqlpub.fieldbyname('codigo').AsString)
              else
                 codigoproduto := codigoproduto + ' or codigo = '+quotedstr(sqlpub.fieldbyname('codigo').AsString);

              with fdm.Query1 do begin
                   sql.Clear;
                   sql.Add('update tbproduto set '+
                           ' peso = '+realdblstr(sqlpub.fieldbyname('qtd').AsFloat)+
                           ' where codigo = '+quotedstr(sqlpub.fieldbyname('codigo').AsString));
                   execsql;
              end;

              sqlpub.next;
        end;

        vf := false;
        fmenu.materiaprima(codigoproduto,false);

        if vf then begin
             vf:=false;
             codloc := tabela.FieldByName('chave').AsString ;
             close;
        end;

end;

procedure Tfrelatorio.gradeCellClick(Column: TColumn);
begin
        if caption ='Listagem de cheques' then totcheque;
end;

procedure Tfrelatorio.Inserirchequesselecionados1Click(Sender: TObject);
begin
        if totcheque > vrpub then
           senhagerencial('PG CONTA','O valor passado é maior que da compra','O valor passado é maior que da compra');

          //  ff fff msg('#O valor passado é maior que da compra.',0);

        vrpub := totcheque;
        cht:=true;
        close;

end;

procedure Tfrelatorio.Mostrarvendedor2Click(Sender: TObject);
begin

        selecione('select codigo, IE, CNPJ, Cep,  UF, Nomecurto,  DDD,  Fone,  Fone2, Endereco, numero, Complemento, Bairro, Municipio from tbcliente');

        tabela.First;
        while not tabela.Eof do begin
              tabela.Edit;
              //cli

              try
              if (com2<>14) and (sqlpub.Locate('codigo',tabela.fieldbyname('codigo').AsString ,[])) then begin

                  tabela['IE'] := sqlpub.fieldbyname('IE').AsString ;
                  tabela['CNPJ'] := sqlpub.fieldbyname('CNPJ').AsString ;
                  tabela['Cep'] := sqlpub.fieldbyname('Cep').AsString  ;
                  tabela['UF'] := sqlpub.fieldbyname('UF').AsString ;
                  tabela['Nomecurto'] := sqlpub.fieldbyname('Nomecurto').AsString ;
                  tabela['DDD'] := sqlpub.fieldbyname('DDD').AsString ;
                  tabela['Fone'] := sqlpub.fieldbyname('Fone').AsString;
                  tabela['Fone2'] := sqlpub.fieldbyname('Fone2').AsString ;
                  tabela['Endereco'] := sqlpub.fieldbyname('Endereco').AsString +
                                        sqlpub.fieldbyname('numero').AsString+
                                        '   '+ sqlpub.fieldbyname('Complemento').AsString;
                  tabela['Bairro'] := sqlpub.fieldbyname('Bairro').AsString  ;
                  tabela['Municipio'] := sqlpub.fieldbyname('Municipio').AsString ;
              end;
              except end;

              tabela.Post;
              tabela.Next;
        end;

        sqlpub := nil;
        fdm.Query1.Close;

end;

procedure Tfrelatorio.ContasGeradas1Click(Sender: TObject);
var
  tot:double;
  chave,dtemissao, ntb, modulo,Tipoconta:string;
begin

        if lowercase(nometb) = 'tbentrada' then begin
           ntb    := 'tbpagar';
           modulo := quotedstr('8');
        end else begin
         ntb    := 'tbreceber';
         modulo := quotedstr('2');
       end;

        chave:=tabela.fieldbyname('chave').asstring;

        selecione('select data, credito,dinheiro from '+nometb+' where chave =' + quotedstr(chave)+ ' group by chave');
        tot := sqlpub.fieldbyname('dinheiro').AsFloat +
               sqlpub.fieldbyname('credito').AsFloat;

        dtemissao := sqlpub.fieldbyname('data').AsString;
        sqlpub:=nil;

        Tipoconta    := nomelink('codconta','chave', 'descricao','tbconta','Tipoconta');

        with fdm.Query1 do begin
             sql.Clear;
             sql.Add('select chave, '+Tipoconta+', DtEmissao, DtVencimento,  VrDocumento, '+
                     'Desconto, Acrescimo, Total, Recebido, Diferenca from '+ntb+' where linkvenda =' +
                      quotedstr(chave)+ ' and modulo = '+modulo+' order by tipoconta, dtvencimento ');

             fdm.tbquery1.Open;

             if  tot<>0 then begin
                 fdm.tbquery1.Insert;
                 fdm.tbquery1['chave'] := 0;

                 fdm.tbquery1['dtemissao'] := dtemissao;
                 fdm.tbquery1['dtvencimento'] := dtemissao;
                 fdm.tbquery1['tipoconta'] := 'À VISTA';
                 fdm.tbquery1['vrdocumento'] := tot;
                 fdm.tbquery1['total'] := tot;
                 fdm.tbquery1['recebido'] := tot;
                 fdm.tbquery1['diferenca'] := '0';
                 fdm.tbquery1.Post;
             end;
        end;

        if fdm.tbquery1.RecordCount =0 then begin
           msg('Não há acerto.',0);
           fdm.tbquery1.close;
           abort;
        end;

        fdm.tbquery1.IndexFieldNames := 'dtvencimento;chave';
        reltb(fdm.tbquery1,'RECEBIMENTO DA VENDA: '+tabela.fieldbyname('numero').AsString,'','Total','Recebido','Diferenca','','','','','','','','','','');
        fdm.tbquery1.close;
        fdm.tbquery1.IndexFieldNames := '';

end;

procedure Tfrelatorio.mvdcliClick(Sender: TObject);
begin
        with fdm.Query1 do begin
             sql.Clear;
             sql.Add('select codigo, nome from tbfuncionario');
             open;
        end;

        selecione('select codigo, Nome from tbcliente');

        tabela.First;
        while not tabela.Eof do begin
              tabela.Edit;
              //cli

              try
              if sqlpub.Locate('codigo',tabela.fieldbyname('codigocliente').AsString ,[]) then

                 if sqlpub['nome'] <> null then
                    tabela['n_cliente'] := sqlpub.fieldbyname('nome').AsString
                 else tabela['n-cliente'] := '-';

              except end;


              try
              if fdm.Query1.Locate('codigo',tabela.fieldbyname('CodVend').AsString ,[]) then

                 if fdm.Query1['nome'] <> null then
                    tabela['N_Vendedor'] := fdm.Query1.fieldbyname('nome').AsString
                 else tabela['N_Vendedor'] := '-';

              except end;

              tabela.Post;
              tabela.Next;
        end;

        sqlpub := nil;
        fdm.Query1.Close;

end;





procedure tfrelatorio.impcx;
var
imp,modalidade:string;
list:tstringlist;


procedure chequecaixa;

var
  valor,espaco:string;
  sqld: tzquery;
  ocupado, tamanho, i,tmcampo: integer;
  total:double;
begin

  sqld := tzquery.Create(application);
  sqld.Connection := fdm.conector;


  with sqld do begin

       sql.add('select chave, banco'+
                      ', agencia '+
                      ', conta '+
                      ', cheque as numero '+
                      ', dtvencimento '+
                      ', total '+
                      ' from tbreceber where (ch="S" or ch="P") and '+
                      ' caixa = ' +inttostr(tbrel.fieldbyname('caixa').AsInteger)+
                      ' order by dtvencimento ');

//    debugstr(sqld);
    open;

    if sqld['chave'] <> null then begin

    mem.Lines.Add('');
    mem.Lines.Add('');
    mem.Lines.Add(linha);
    mem.Lines.Add('RELACAO DE CHEQUES RECEBIDOS:');
    mem.Lines.Add(compstr('BANCO     NUMERO   CONTA  VENCIMENTO', 'VALOR'));
    mem.Lines.Add(linha);


    while not sqld.EOF do   begin

      tamanho := 5;

      valor := copy(sqld.FieldByName('banco').AsString, 1,tamanho);

      tmcampo := length( sqld.FieldByName('numero').Asstring);

      ocupado := tamanho - length(valor) + (9 - tmcampo);

      espaco := '';
      for i := 1 to ocupado do
        espaco := espaco + ' ';

      valor := valor + espaco + ' ' +   sqld.FieldByName('numero').asstring;

      tmcampo := length(sqld.FieldByName('conta').Asstring);

      ocupado := 6 - tmcampo;

      espaco := '';
      for i := 1 to ocupado do
        espaco := espaco + ' ';

      valor := valor + espaco + ' ' + sqld.FieldByName('conta').asstring;

      tmcampo := length(sqld.FieldByName('dtvencimento').Asstring);

      ocupado := 9 - tmcampo;

      espaco := '';
      for i := 1 to ocupado do
        espaco := espaco + ' ';

      valor := valor + espaco + ' ' + sqld.FieldByName('dtvencimento').asstring;


      mem.Lines.Add(compstr(valor,  formatfloat('###,##0.00', sqld.FieldByName('total').AsFloat)));


      sqld.Next;
    end;

    sql.Clear;
    sql.add('select sum(total) as valor from tbreceber where ch="S" or ch="P" and '+
                      ' caixa = ' +quotedstr(tbrel.fieldbyname('caixa').asstring));

    open;
    total := fieldbyname('valor').AsFloat;

    mem.Lines.Add('');
    {mem.Lines.Add(compstr('A VISTA...............' , formatfloat('###,##0.00', sqld.FieldByName('valor').AsFloat)));


    close;
    commandtext := 'select sum(valor) as valor from tbchequepre where compensado = "N" and caixa = '+
                   quotedstr(fdm.tbcaixagrupo.fieldbyname('chave').AsString);
    open;

    mem.Lines.Add(compstr('PRE-DATADO............' , formatfloat('###,##0.00', sql.FieldByName('valor').AsFloat)));
    mem.Lines.Add(compstr('','__________________________'));}
    mem.Lines.Add(compstr('TOTAL.................' , formatfloat('###,##0.00', sqld.FieldByName('valor').AsFloat )));



    end;

    sql.Destroy;
    end;
end;

procedure devolucaodefeito;
var
sqld:tzquery;

begin


         mem.Lines.Add('');
         mem.Lines.Add('');
         mem.Lines.Add(linha);
         mem.Lines.Add('IDEVOLUÇÕES DEFEITO:');
         mem.Lines.Add('COD/DESCRIÇÃO/       DEFEITO');
         mem.Lines.Add(linha);
         mem.Lines.Add('');

        sqld :=  tzquery.Create(application);
        sqld.Connection := fdm.conector;


////////////////////////// pedidos
        sqld.sql.add( 'select '+
                                 'tbpedidoitem.defeitoN,'+
                                 'tbpedidoitem.tipovenda,'+
                                 'tbpedidoitem.codigo,'+
                                 'tbproduto.descricao,'+
                                 'tbproduto.tamanho,'+
                                 'tbproduto.cor,'+
                                 'sum(tbpedidoitem.qtd) as qtd,'+
                                 'tbpedidoitem.vrunit,('+
                                 'tbpedidoitem.descontoreal) as desconto,'+

               'if (tbpedidoitem.descontoreal is not null, ('+
                    'tbpedidoitem.vrunit - tbpedidoitem.descontoreal) * sum('+
                    'tbpedidoitem.qtd), tbpedidoitem.vrunit* sum(tbpedidoitem.qtd)) as total '+

                                 'from  tbproduto,tbpedidoitem, tbpedido '+
                                 ' where tbpedidoitem.defeito = "S" and tbpedidoitem.qtd < 0 and tbproduto.codigo = tbpedidoitem.codigo and '+
                                 ' tbpedido.chave = tbpedidoitem.link '+
                                 ' and tbpedido.linkcaixa = '+ quotedstr(fdm.tbcaixagrupo.fieldbyname('chave').asstring)+
                                 ' group by tbpedidoitem.codigo, tbpedidoitem.vrunit, tbpedidoitem.descontoreal');
                                 //showmessage(commandtext);
               sqld.open;


               while not sqld.eof do begin
                  mem.Lines.Add(copy( sqld.FieldByName('codigo').AsString+ ' ' +
                                            sqld.FieldByName('descricao').AsString+ ' ' +
                                            sqld.FieldByName('tamanho').AsString+ ' ' +
                                            sqld.FieldByName('cor').AsString,1,20)+ ' - ' +
                                            copy(sqld.FieldByName('defeitoN').AsString, 1,15));

               sqld.next;
              end;

             sqld.destroy;

end;
begin


        codloc :='1';
        imp := msgi('Imprimir:'+#13+#13+'1=Só valores . . . .'+#13+'2=Todos os itens'+
                               #13+'3=Agrupa os itens'#13+'4=Agrupa valores',2);
        if not strtoint(imp) in[1..4] then imp := '1';


        cabecaimpressao(self,true);


        if imp = '2' then begin
           list := tstringlist.Create;
           list.Add(linha);
           list.Add(centstr('CAIXA SIMPLIFICADO'));
           list.Add('');

           tbrel.First;
           tbrel.DisableControls;
           while not tbrel.Eof do begin
                 list.Add(CompStr(tbrel.fieldbyname('Descricao').AsString,
                     format('%n',[tbrel.fieldbyname('Saldo_Cx').AsFloat])));
                 tbrel.Next;
           end;
           tbrel.First;
           tbrel.EnableControls;
        end;


        if (imp = '3') or (imp='4') then begin
           list := tstringlist.Create;
           list.Add(linha);
           list.Add(centstr('CAIXA POR MODALIDADE'));
           list.Add('');

           if imp='3' then
                selecione('select Descricao, sum(Saldo_Cx)as valor, count(Descricao)as qtd from temp group by Descricao')
           else selecione('select Saldo_Cx as valor, count(Saldo_Cx)as qtd from temp group by Saldo_Cx');


           sqlpub.First;
           while not sqlpub.Eof do begin
                 if imp='3' then
                    list.Add(CompStr(formatfloat('0000',sqlpub.fieldbyname('qtd').AsFloat)+' '+
                                  sqlpub.fieldbyname('Descricao').AsString, format('%n',[sqlpub.fieldbyname('valor').AsFloat])))
                 else
                    list.Add(CompStr(formatfloat('0000',sqlpub.fieldbyname('qtd').AsFloat)+' x ' +
                                  format('%n',[sqlpub.fieldbyname('valor').AsFloat]),
                                  format('%n',[sqlpub.fieldbyname('valor').AsFloat*sqlpub.fieldbyname('qtd').AsFloat])));


                 sqlpub.Next;
           end;
           sqlpub.First;
        end;


        mem := memo1;
        mem.Lines.Add(linha);
        mem.Lines.Add(CompStr('DATA/HORA: ', Datetimetostr(now)));
        mem.Lines.Add(CompStr('CAIXA ' + fdm.tbcaixagrupo.FieldByName('chave').AsString, usuario));

        mem.Lines.Add(linha);
        mem.Lines.Add(CompStr('INICIO ', fdm.tbcaixagrupo.FieldByName('datainicial').AsString + ' ' +
                                         fdm.tbcaixagrupo.FieldByName('horaabertura').AsString));

        mem.Lines.Add(CompStr('FIM ', fdm.tbcaixagrupo.FieldByName('datafinal').AsString +
                                      ' ' + fdm.tbcaixagrupo.FieldByName('horafechamento').AsString));

        mem.Lines.Add(linha);
        mem.Lines.Add('RESUMO GERAL DO CAIXA:');
        mem.Lines.Add(linha);

        mem.Lines.Add(CompStr('TOTAL ENTRADA DIN ' ,tt4.caption));
        mem.Lines.Add(CompStr('TOTAL SAÍDA DIN   ' ,tt3.caption));
        mem.Lines.Add(CompStr('SALDO DINHEIRO    ' ,tt2.caption));
        mem.Lines.Add(linha);
        mem.Lines.Add(CompStr('CHEQUE            ' ,tt5.caption));
        mem.Lines.Add(CompStr('CARTAO CREDITO    ' ,tt6.caption));
        mem.Lines.Add(CompStr('CARTAO DEBITO     ' ,tt7.caption));
        mem.Lines.Add(CompStr('A PRAZO           ' ,tt8.caption));
        mem.Lines.Add(linha);
        mem.Lines.Add(CompStr('SALDO CX          ' ,tt1.caption));

        if  strtoint(imp) in[2..4] then begin
           mem.Lines.Add(list.Text);
           list.Destroy;
        end;


        if responsavel = 'FABIO VITRINE' then begin
           chequecaixa;
           devolucaodefeito;
        end;

        rodapeimpressao(false,false);
        fdm.tbcaixagrupo.Refresh;

end;





procedure Tfrelatorio.cdataClick(Sender: TObject);
begin
        if Active then begin
           data := cdata.Text;
           btnokClick(self);
        end;


end;



procedure Tfrelatorio.Fecharocaixa1Click(Sender: TObject);
begin
      fechacx;
end;

procedure Tfrelatorio.Margemdavenda1Click(Sender: TObject);
var tbvd:string;
begin

     if tabela['status'] = 'ABE' then tbvd := 'venda'
                                 else tbvd := 'tbpedido';
     margemvenda(tbvd, tabela.fieldbyname('chave').asstring);

end;

end.





