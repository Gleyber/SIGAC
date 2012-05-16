unit ureceberlocaliza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  DBClient, Provider, DB, Grids, DBGrids,
  ExtCtrls, StdCtrls, Buttons, ActnList, DBCtrls, ExtDlgs, Inifiles, zlib,
  jpeg,RLReport,RLFilters, RLDraftFilter, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Menus, RLBoleto;

type
  Tfreceberlocaliza = class(TForm)
    DBGrid1: TDBGrid;
    provedor: TDataSetProvider;
    ds: TDataSource;
    panel2: TPanel;
    ActionList1: TActionList;
    Label2: TLabel;
    elocalizar: TEdit;
    filtro: TAction;
    Panel3: TPanel;
    Bevel1: TBevel;
    tc: TAction;
    opendialog: TOpenPictureDialog;
    image: TAction;
    Action1: TAction;
    tabela: TClientDataSet;
    formatar: TAction;
    lqtd: TLabel;
    DBText4: TDBText;
    Label8: TLabel;
    Label11: TLabel;
    DBText5: TDBText;
    Label12: TLabel;
    DBText6: TDBText;
    DBText8: TDBText;
    Label14: TLabel;
    total: TAction;
    Label15: TLabel;
    DBText11: TDBText;
    Bevel3: TBevel;
    DBText13: TDBText;
    Label16: TLabel;
    lcheque: TLabel;
    pg: TAction;
    bfiltro: TRadioGroup;
    Label9: TLabel;
    ltotal: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText3: TDBText;
    Label13: TLabel;
    DBText7: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText12: TDBText;
    Label1: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    larec: TLabel;
    lrec: TLabel;
    ljuro: TLabel;
    Gboleto: TAction;
    Gduplicata: TAction;
    Label7: TLabel;
    DBText2: TDBText;
    gcarne: TAction;
    SpeedButton5: TSpeedButton;
    gcobranca: TAction;
    grafico: TAction;
    qpromissoria: TRLReport;
    RLBand1: TRLBand;
    RLDBText8: TRLDBText;
    lvencimentonp: TRLLabel;
    RLLabel31: TRLLabel;
    ldatanp: TRLLabel;
    lpagarei: TRLLabel;
    lrodapenp: TRLMemo;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel22: TRLLabel;
    lnumeronp: TRLAngleLabel;
    lvalornp: TRLAngleLabel;
    lnpromissoria: TRLAngleLabel;
    lcidadenp: TRLLabel;
    RLBand2: TRLBand;
    RLLabel4: TRLLabel;
    lavalistanp: TRLMemo;
    RLLabel1: TRLLabel;
    gnpromissoria: TAction;
    dadoscliente: TAction;
    sqlcli: TZQuery;
    menu: TPopupMenu;
    Acerto1: TMenuItem;
    CadastrodeCedente1: TMenuItem;
    RBoleto: TRLBTitulo;
    gboletop: TAction;
    panel1: TPanel;
    btnnovo: TSpeedButton;
    btneditar: TSpeedButton;
    btnapagar: TSpeedButton;
    btnimprimir: TSpeedButton;
    SpeedButton3: TSpeedButton;
    btndeletado: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    StaticText1: TStaticText;
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
    procedure SpeedButton3Click(Sender: TObject);
    procedure GduplicataExecute(Sender: TObject);
    procedure GboletoExecute(Sender: TObject);
    procedure gcarneExecute(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gcobrancaExecute(Sender: TObject);
    procedure graficoExecute(Sender: TObject);
    procedure qpromissoriaBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure gnpromissoriaExecute(Sender: TObject);
    procedure dadosclienteExecute(Sender: TObject);
    procedure Acerto1Click(Sender: TObject);
    procedure CadastrodeCedente1Click(Sender: TObject);
    procedure gboletopExecute(Sender: TObject);
  private
  PN,PA,PD,PC:string;


    { Private declarations }
  public

  script,codigo,controleimpressao:string;
    { Public declarations }
  end;

var
  freceberlocaliza: Tfreceberlocaliza;

implementation

uses  udm, funcoes, umanu,

      ucadastrop,
       upagarfiltro,
    udialogo,   uimp, ualterapgrec, ureceberfiltro,
  uduplicataconfig, uboletoconfig, ucarneconfig, ugrafico,
  uconsumotexto;

{$R *.dfm}



procedure Tfreceberlocaliza.FormShow(Sender: TObject);
var
  carencia,juro,juro2,djuro:double;
begin

       if responsavel ='GEORGE HILTON' then begin
          Label9.Hide;
          ltotal.Hide;
          larec.Hide;
          lrec.Hide;
       end;


       fdm.tbconfig.open;
       juro := fdm.tbconfig.fieldbyname('juro').AsFloat;
       juro2 := fdm.tbconfig.fieldbyname('jurospc').AsFloat;

       if juro2 <=0 then
          juro2 := juro;

       carencia := fdm.tbconfig.fieldbyname('carencia').AsFloat;
       djuro := fdm.tbconfig.fieldbyname('djuro').AsFloat;
       fdm.tbconfig.close;
              
        script := ' select '+

            '    if((TO_DAYS(now()) > TO_DAYS(tbreceber.dtvencimento+'+realdblstr(carencia)+')),'+
	    '             (To_days(now())- To_days(tbreceber.dtvencimento)) *'+
            '    	 (if(To_days(now())- To_days(tbreceber.dtvencimento)<'+
                         realdblstr(djuro)+','+realdblstr(juro)+','+realdblstr(juro2)+') * '+
            '    	 tbreceber.diferenca/100), null) as juro, '+

            '    if(TO_DAYS(now()) > TO_DAYS(tbreceber.dtvencimento+'+realdblstr(carencia)+'),'+
	    '        To_days(now()) - To_days(tbreceber.dtvencimento),null) as Dia, '+

            '    if((To_days(now())- To_days(tbreceber.dtvencimento))<'+   realdblstr(djuro)+','+
                    realdblstr(juro)+','+realdblstr(juro2)+')*tbreceber.diferenca/100 as juro_dia, '+

            '    if((TO_DAYS(now()) > TO_DAYS(tbreceber.dtvencimento+'+realdblstr(carencia)+')),'+
	    '             (To_days(now())- To_days(tbreceber.dtvencimento)) *'+
            '    	 (if(To_days(now())- To_days(tbreceber.dtvencimento)<'+
                         realdblstr(djuro)+','+realdblstr(juro)+','+realdblstr(juro2)+') * '+
            '    	 tbreceber.diferenca/100)+tbreceber.diferenca, tbreceber.diferenca) as totalgeral, '+

            'if(To_days(now())- To_days(tbreceber.dtvencimento)<'+
              realdblstr(djuro)+','+realdblstr(juro)+','+realdblstr(juro2)+') as aliq, '+


          'tbreceber.chave,'+
          'tbreceber.tipoconta,'+
          'tbreceber.posicaoconta,'+
          'tbreceber.passado,'+
          'tbreceber.datapassado,'+
          'tbreceber.refinanciado,'+
          'tbreceber.documento,'+
          'tbreceber.letra,'+
          'tbreceber.ch,'+
          'tbreceber.cheque,'+
          'tbreceber.banco,'+
          'tbreceber.agencia,'+
          'tbreceber.conta,'+
          'tbreceber.dtemissao,'+
          'tbreceber.dtvencimento,'+
          'tbreceber.dtpagamento, '+
          'tbreceber.vrtitulo,'+
          'tbreceber.vrdocumento,'+
          'tbreceber.acrescimo,'+
          'tbreceber.desconto,'+
          'tbreceber.total,'+
          'tbreceber.recebido,'+
          'tbreceber.diferenca,'+
          'tbreceber.movimentopagar,'+
          'tbreceber.codigo,'+
          'tbreceber.linkvenda,'+
          'tbreceber.modulo,'+
          'tbcliente.FisJur,'+
          'tbcliente.contato,'+
          'tbcliente.saldo,'+
          'tbcliente.nomecurto,'+
          'tbcliente.nome,'+
          'tbcliente.endereco,'+
          'tbcliente.numero,'+
          'tbcliente.complemento,'+
          'tbcliente.bairro,'+
          'tbcliente.municipio,'+
          'tbcliente.cep,'+
          'tbcliente.uf,'+
          'tbcliente.enderecocobranca,'+
          'tbcliente.bairrocobranca,'+
          'tbcliente.municipiocobranca,'+
          'tbcliente.cepcobranca,'+
          'tbcliente.Ufcobranca,'+
          'tbcliente.cnpj,'+
          'tbcliente.ie,'+
          'tbcliente.ddd,'+
          'tbcliente.fone,'+
          'tbcliente.fone2,'+          
          'tbcliente.fax,'+
          'tbcliente.ramal,'+
          'tbcliente.email,'+
          'tbreceber.obs,'+
          'tbreceber.extenso,'+

          'tbreceber.vendedor,'+
          'tbreceber.comissao,'+

          'tbcliente.statu'+
          ' from tbreceber, tbcliente'+
          ' where tbreceber.codigo=tbcliente.codigo ';

             caption := 'CONTAS A RECEBER/RECEBIDAS';

          elocalizar.Text := '  ';
          filtroexecute(self);
          elocalizar.Text := '%';


          if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\br.bmp')) then
                              imagepanel('imagemenu1', altop, panel1,
                             (PChar(ExtractFilePath(ParamStr(0)) + 'imagem\br.bmp')),nil);

//          formatarexecute(self);

end;

procedure Tfreceberlocaliza.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fpagarfiltro <> nil then   fpagarfiltro.Close;

  tabela.Close;
  Release;
  freceberlocaliza := nil;
end;

procedure Tfreceberlocaliza.DBGrid1TitleClick(Column: TColumn);
begin
     indexar(Column, tabela, nil, elocalizar, label2);
end;

procedure Tfreceberlocaliza.elocalizarKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin

            if (key = 40) or (key = 34)  then
              tabela.Next;
            if (key = 38) or (key = 33) then
              tabela.prior;

            if key = 13 then
               filtroexecute(self);
end;

procedure Tfreceberlocaliza.elocalizarChange(Sender: TObject);
begin
        loctabela(tabela,nil,elocalizar);
end;

procedure Tfreceberlocaliza.elocalizarKeyPress(Sender: TObject; var Key: char);
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

procedure Tfreceberlocaliza.elocalizarEnter(Sender: TObject);
begin
  elocalizar.Color := clinfobk;
end;

procedure Tfreceberlocaliza.elocalizarExit(Sender: TObject);
begin
  elocalizar.Color := clwhite;
end;

procedure Tfreceberlocaliza.codfabricanteExecute(Sender: TObject);
begin
  elocalizar.Clear;
  tabela.IndexFieldNames := 'codigofornecedor';
  elocalizar.SetFocus;
  label2.Caption := 'Localizar por Cód. Fab.';
end;

procedure Tfreceberlocaliza.filtroExecute(Sender: TObject);
var
  localizar,filtro,indice,nometb: string;
begin

        if tabela.IndexFieldNames <> '' then
           indice := tabela.IndexFieldNames
        else
           indice :=  tabela.indexname;

       if (indice = 'nomecurto') or (indice = 'nome') then
          nometb := 'tbcliente'
       else
          nometb := 'tbreceber';

  filtro := '';                   

     localizar:=  quotedstr(elocalizar.Text + '%');

  filtro := ' and diferenca > 0 and '+nometb+'.' + indice + ' like ' +localizar;

   if bfiltro.ItemIndex = 0 then
     filtro := filtro  + ' and tbreceber.ch="S" '
  else if bfiltro.ItemIndex = 1 then
     filtro := filtro  + ' and tbreceber.ch="D" '
  else if bfiltro.ItemIndex = 2 then
     filtro := filtro  + ' and tbreceber.ch="P" '
  else if bfiltro.ItemIndex = 3 then
     filtro := filtro  + ' and tbreceber.ch="C" '
  else if bfiltro.ItemIndex = 4 then
     filtro := filtro  + ' and tbreceber.ch is null';

  sqlcli.SQL.Clear;
  sqlcli.sql.Add( script +  filtro);
          // debugstr(sqlcli) ;


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
end;

procedure Tfreceberlocaliza.btnnovoClick(Sender: TObject);
var
valor,st,campo:string;
begin

              permissao(PN,'PN','Contas a Receber');

              codigo := '';
              if inputquery('Localiza Clientes','Digite o código, ou o CNPJ/CPF(só números), ou as iniciais do nome do cliente:',st) then else abort;

              campo :='nome';
              if StrIsfloat(st)  then
                 if length(st) > 9 then begin
                    campo :='cnpj';
                    st :=  formatacpf_cnpj(st);
                 end else
                    campo :='codigo';

              listagem(campo,st,'',4,0);

              if fdm.sg.Active then
                 codigo := fdm.sg.fieldbyname('codigo').AsString;
              fechatg;


           if codigo <> '' then begin

             st := '1';
             if inputquery('Gerar Conta', 'Escolha uma opção:' + #13 + #13 +
                           '1 = Gerar conta(s) a prazo' + #13 +
                           '2 = Gerar conta (Cheque)'+ #13 +
                           '3 = Gerar conta (Cartão)'
                           , st) then else abort;


           if (st <> '1') and (st<>'2')and (st<>'3') then abort;

           if codigo <> '' then begin

           if inputquery('Valor','Digite o valor total',valor) then else abort;

              if StrIsfloat(valor) = False then  begin
                 Application.MessageBox('Digite um número válido!', 'Erro', 0 + MB_ICONerror);
                 abort;
              end;
                      

            if (st='1') or (st='3') then begin
               fdialogo:=tfdialogo.Create(self,'aprazo');
               fdialogo.controle := 'contareceber';
               fdialogo.vendaaprazo := 'receber';
               fdialogo.obs := 'N';
               if st = '3' then
                  fdialogo.cartao := true;

            end else if st = '2' then begin
               fdialogo:=tfdialogo.Create(self,'cheque');
               fdialogo.controle := 'cheque recebido';
               fdialogo.cheque := 'recebido';
               fdialogo.obs := 'N';

             end;

            fdialogo.ecliente.Text := codigo;
            fdialogo.fiado := strtofloat(valor);
            fdialogo.edocumento.ReadOnly := false;
            fdialogo.showmodal;
            tabela.Cancel;
            tabela.refresh;
            tabela.IndexFieldNames := 'codigo';
            elocalizar.Text :=codigo;

            label2.Caption := 'Localizar por Código (A~Z)';
            bfiltro.ItemIndex :=5;

            filtroExecute(self);
            tabela.Last;
            GALTERA('9',tabela.fieldbyname('documento').asstring,'i');
            end;
         end;

         

end;

procedure Tfreceberlocaliza.btneditarClick(Sender: TObject);
begin

          permissao(PA,'PA','Contas a Receber');
          abortaacao(tabela,nil,'chave','','','','',0);

          application.CreateForm(tfalterapgrec,falterapgrec);
          falterapgrec.controle := 'rc';
          falterapgrec.showmodal;


end;

procedure Tfreceberlocaliza.tcExecute(Sender: TObject);
begin
  btnnovoClick(self);
end;

procedure Tfreceberlocaliza.btnapagarClick(Sender: TObject);
begin

  permissao(PD,'PD','Contas a Receber');


  abortaacao(tabela,nil,'chave','','','','',0);

        if msg('',1) then begin

   GALTERA('9',tabela.fieldbyname('documento').asstring,'d');

    with fdm.query1 do
    begin
      Close;
              sql.clear;
              sql.add(  'delete from tbreceber where chave =  ' +
                     QuotedStr(tabela.FieldByName('chave').AsString));
      execsql;
    end;

    tabela.cancel;
    tabela.refresh;
    totalExecute(self);
  end;
end;

procedure Tfreceberlocaliza.btnimprimirClick(Sender: TObject);
var
ind,loc,filtro,imp,dup:string;
i:integer;

begin

        abortaacao(tabela,nil,'chave','','','','',0);

        codloc:='1';
        imp:=msgi('Digite uma opção de impressão:' + #13 + #13 +
                  '1 = Conta(s) selecionada(s) .  .  .'+#13+
                  '2 = Boleto (formulário contínuo)'+#13+
                  '3 = Boleto (emissão própria) . . .'+#13+
                  '4 = Duplicata  . . . . . . . . . . . . . . . . . '+#13+
                  '5 = Carnê  . . . . . . . . . . . . . . . . . . . '+#13+
                  '6 = N. Promissória . . . . . . . . . . . .'+#13+
                  '7 = Carta de Cobrança . . . . . . . . ', 2);

        if not strtoint(imp) in [1..7] then abort;

    loc:= tabela.fieldbyname('chave').AsString;
    filtrar(DbGrid1,tabela,nil,'chave');


          if imp = '1' then
             impgrade(tabela,nil,ds,dbgrid1,'receber', 'Contas a Receber','',true);

          if imp = '2' then
             Gboletoexecute(self)

          else if imp = '3' then
             Gboletopexecute(self)

          else if imp = '4'  then
             Gduplicataexecute(self)

          else if imp = '5'  then
             Gcarneexecute(self)

          else if imp = '6'  then
             Gnpromissoriaexecute(self)

          else if imp = '7'  then
             gcobrancaExecute(self)

          else if imp = '8'  then
             graficoExecute(self);


   tabela.filtered := false;
   tabela.locate('chave',loc,[]);

end;

procedure Tfreceberlocaliza.FormCreate(Sender: TObject);
begin

 //permissoes
            PN := sqlacesso.fieldbyname('inserir').AsString;
            PA :=sqlacesso.fieldbyname('alterar').AsString;
            PD := sqlacesso.fieldbyname('apagar').AsString;
            PC := sqlacesso.fieldbyname('consultar').AsString;
            sqlacesso.Destroy;


end;

procedure Tfreceberlocaliza.DBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tfreceberlocaliza.formatarExecute(Sender: TObject);
begin
    tabela.FieldByName('datapassado').EditMask :='99/99/9999';
    (tabela.FieldByName('codigo') as tintegerfield).displayformat := '000000';

    (tabela.FieldByName('total') as tfloatfield).displayformat := '###,##0.00';
    (tabela.FieldByName('totalgeral') as tfloatfield).displayformat := '###,##0.00';
    (tabela.FieldByName('juro_dia') as tfloatfield).displayformat := '###,##0.000';        
    (tabela.FieldByName('vrdocumento') as tfloatfield).displayformat := '###,##0.00';
    (tabela.FieldByName('vrtitulo') as tfloatfield).displayformat := '###,##0.00';
    (tabela.FieldByName('desconto') as tfloatfield).displayformat := '###,##0.00';
    (tabela.FieldByName('acrescimo') as tfloatfield).displayformat := '###,##0.00';
    (tabela.FieldByName('diferenca') as tfloatfield).displayformat := '###,##0.00';
    (tabela.FieldByName('recebido') as tfloatfield).displayformat := '###,##0.00';
    (tabela.FieldByName('saldo') as tfloatfield).displayformat := '###,##0.00';

end;

procedure Tfreceberlocaliza.Label12Click(Sender: TObject);
begin
          cadp ('tbconta', 'select chave, codigo, tp,pgrec, descricao,contaanalitica, reduzida, contacontabil  from tbconta ', 'Plano de Conta',
                'codigo','descricao',
                'contacontabil','tbdespesa','descricao',
                'tp','','1=Cartão,2=Cheque,3=A Prazo',
                'pgrec','','PG,REC,AMBOS',
                'codigo', '', '', '', 0,0);

end;

procedure Tfreceberlocaliza.totalExecute(Sender: TObject);
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

procedure Tfreceberlocaliza.btndeletadoClick(Sender: TObject);
var
loc,movimentopagar : string;
begin
          if tabela.FieldByName('recebido').AsFloat<=0 then
          begin
            Application.MessageBox('Para abortar uma conta é preciso que a mesma já tenha sido recebida!',
                                   'Erro', 0 + MB_ICONerror);
            abort;
          end;

               senhagerencial('ESTORNAR CONTA',
                                 'DIGITE A SENHA GERENCIAL PARA ESTORNAR:',
                                 'ESTORNAR CONTA');

                  GALTERA('9',tabela.fieldbyname('documento').asstring,'s');

            //link,modulo,codigocliente
            deletaconta(tabela.FieldByName('movimentopagar').AsString,'acertoreceber',
                        tabela.FieldByName('codigo').AsString,'');


            with fdm.query1 do begin

              if tabela['movimentopagar'] = null then
                 movimentopagar:=' where chave = ' + quotedstr(tabela.fieldbyname('chave').AsString)
              else
                 movimentopagar:=' where movimentopagar = ' + quotedstr(tabela.fieldbyname('movimentopagar').AsString);


              sql.clear;
              sql.add(  'update tbreceber set dtpagamento= null, recebido = 0, movimentopagar = null,'+
                             ' diferenca = total,vrdocumento=total, acrescimo = 0 , desconto = 0 '+ movimentopagar);

              execsql;
              end;

              if fileexists((ExtractFilePath(ParamStr(0)) + 'Contas\tbreceber' +
                             tabela.fieldbyname('movimentopagar').AsString+'.txt')) then

                 deletefile(ExtractFilePath(ParamStr(0)) +'Contas\tbreceber' +
                            tabela.fieldbyname('movimentopagar').AsString+'.txt');


              saldocliente(tabela.fieldbyname('codigo').AsString);

              loc := tabela.fieldbyname('chave').asstring;
              tabela.Cancel;
              tabela.refresh;
              totalExecute(self);
              tabela.Locate('chave',loc,[]);

                 Application.MessageBox('Conta estornada!',
                                   'Confirmação', 0 + MB_ICONWARNING);
end;

procedure Tfreceberlocaliza.SpeedButton1Click(Sender: TObject);

        procedure recebe;
        begin
            recpgto('tbreceber',tabela.fieldbyname('codigo').asstring);
        end;

var
campo,st,pas:string;
begin

          abortaacao(tabela,nil,'chave','','','','',0);

          if tabela.fieldbyname('diferenca').AsFloat <=0 then begin
             Application.MessageBox('Esta conta já foi baixada!','Erro', 0 + MB_ICONwarning);
             abort;
          end;


          //cartao;
          if (tabela['ch'] = 'C') then
             if Pred(dbgrid1.SelectedRows.Count) < 0 then
                msg('#Você não tem parcelas selecionadas. Clique na primeira e selecione as demais com o CTRL pressionado!',0)
             else


             if msg('Baixar a(s) parcela(s) selecionada(s)?',2) then begin

                filtrar(DbGrid1,tabela,nil,'chave');

                tabela.First;
                while not tabela.Eof do begin
                   selecione('update tbreceber set dtpagamento= now(), recebido = total,'+
                             ' diferenca = 0 where chave = ' + quotedstr(tabela.fieldbyname('chave').AsString));
                   tabela.Next;
                end;

             end;


         //passados

         if tabela['ch'] = 'P' then begin
             codloc :='1';
             st := msgi('O que deseja fazer?'+#13+#13+#13+
                        '1=Receber o cheque . . .'+#13+
                        '2=Enviar para Devolvido',2);

             if (st <>'1') and (st<>'2') then abort;

             if st = '1' then recebe;

             if st = '2' then
                selecione('update tbreceber set ch = "D" where chave ='+
                           quotedstr(tabela.fieldbyname('chave').AsString));

         end;


         //cheques devolvidos e contas
         if (tabela['ch'] = 'D') or
            (tabela['ch'] = null) then
            recebe;


          //cheques em aberto
          if tabela['ch'] = 'S' then begin

             codloc :='1';
             st := msgi('O que deseja fazer?'+#13+#13+#13+
                        '1 = Receber o cheque . . '+#13+
                        '2 = Passar o cheque . . . ' + #13+
                        '3 = Enviar para Devolvido',2);

             if (st <>'1') and (st<>'2')and (st<>'3') then abort;

             if st = '1' then recebe;

             if st = '3' then
                selecione('update tbreceber set ch = "D" where chave ='+
                           quotedstr(tabela.fieldbyname('chave').AsString));

             if st = '2' then begin

                if msg('Passar para fornecedor/funcionário? ',2) then begin

                  codigo := msgi('Digite (só números): O Código, ou o CNPJ/CPF ou o Fone, ou as iniciais do nome para pesquisa',0);
                  listagem(achacp('nome',codigo),st,'',4,0);

                 if fdm.sg.Active then
                    codigo := fdm.sg.fieldbyname('codigo').AsString;
                 fechatg;

                      if codigo = '' then abort;

                end else
                codigo := msgi('Digite o nome e o motivo:',0);

                with fdm.query1 do begin
                     close;
                     sql.clear;
                     sql.add(  'update tbreceber set'+
                                    ' ch = "P" '+
                                    ' ,passado =  '+quotedstr(uppercase(codigo))+
                                    ' ,datapassado = now() '+
                                    ' where chave ='+ quotedstr(tabela.fieldbyname('chave').AsString));
                     execsql;
                end;
             end;
             codigo :='';
         end;

          tabela.Filtered := false;
          tabela.close;
          tabela.open;
          formatarexecute(self);
end;

procedure Tfreceberlocaliza.Label13Click(Sender: TObject);
var
loc:string;
begin
        cadg(cadcli,'nome', 4);
        if tabela.RecordCount > 0 then begin
                loc := tabela.fieldbyname('chave').AsString;
                tabela.Refresh;
                tabela.Locate('chave',loc,[]);
        end;
end;

procedure Tfreceberlocaliza.Label14Click(Sender: TObject);
begin


         cadp ('tbcontaposicao', '', '',
              'descricao','',
              '','','',
              '','','',
              '','','',
              'codigo',
              '',
              '',
              '',
              3,0);

end;

procedure Tfreceberlocaliza.tabelaAfterScroll(DataSet: TDataSet);
//var
//dt:tdate;
//qtddia,somadia:integer;
begin

          if tabela['ch'] = 'S' then
             lcheque.Caption := 'Ch nº '+ tabela.fieldbyname('cheque').AsString
          else lcheque.Caption := '';


  {        if DiaSemana (date) = 'SEGUNDA' then
             somadia := 2
          else somadia :=0;


      if tabela['dtpagamento']= null then
         dt := tabela.FieldByName('dtvencimento').AsDateTime
      else begin

           if tabela.FieldByName('acrescimo').AsFloat > 0 then
              dt := tabela.FieldByName('dtpagamento').AsDateTime
           else
              dt := tabela.FieldByName('dtvencimento').AsDateTime
      end;


      if ( dt + carencia + somadia) < date then begin

         qtddia := trunc(date - dt);

         if (mora *  tabela.fieldbyname('diferenca').AsFloat /100) * qtddia >0 then
            ljuro.caption := 'Juros =  ' +
                                    formatfloat('###,##0.00', (mora *
                                                              tabela.fieldbyname('diferenca').AsFloat /100) * qtddia)+ ' - '+
                                                              inttostr(qtddia)+' dias'
         else ljuro.caption := '';

      end else
          ljuro.caption := '';

   }

end;

procedure Tfreceberlocaliza.pgExecute(Sender: TObject);
begin
        SpeedButton1Click(self);
end;

procedure Tfreceberlocaliza.bfiltroClick(Sender: TObject);
begin
                filtroExecute(self);
end;

procedure Tfreceberlocaliza.SpeedButton2Click(Sender: TObject);
begin

      abortaacao(tabela,nil,'chave','','','','',0);
      veritem('','tbpedidoitem','tbpedidoservico','',tabela.fieldbyname('linkvenda').AsString,'');


end;

procedure Tfreceberlocaliza.SpeedButton4Click(Sender: TObject);
begin

                menu.Popup(SpeedButton4.left+100,SpeedButton4.top+30);


end;

procedure Tfreceberlocaliza.SpeedButton3Click(Sender: TObject);
var
indice:string;
begin
        if tabela.IndexFieldNames <> '' then
           indice := tabela.IndexFieldNames
        else
           indice :=  tabela.indexname;

        tabela.IndexFieldNames := indice;

        if freceberfiltro = nil then begin
           application.CreateForm(tfreceberfiltro,freceberfiltro);
           freceberfiltro.showmodal;
        end else  freceberfiltro.showmodal;
end;

procedure Tfreceberlocaliza.GduplicataExecute(Sender: TObject);
var
dup:string;
begin
                dup:='1';
                inputquery('Imprimir', 'Digite uma opção de impressão:' + #13 + #13 +
                           '1 = Imprime sobre modelo' +#13+
                           '2 = Imprime em papel em branco ' +#13+
                           '3 = Configura modelo ',  dup) ;

                if (dup<>'1') and (dup<>'2')  and (dup<>'3') then dup :='1';

                application.CreateForm(tfduplicataconfig,fduplicataconfig);

                if dup = '1' then
                   fduplicataconfig.qduplicata.PreviewModal

                else if dup ='2' then
                    fduplicataconfig.qduplicataG.PreviewModal

                else if dup = '3' then
                   fduplicataconfig.showmodal;

                fduplicataconfig.release;
end;

procedure Tfreceberlocaliza.GboletoExecute(Sender: TObject);
var
imp,num:string;
begin
             imp :='1';
             if inputquery('Imprimir', 'Imprimir o boleto:' + #13 + #13 +
                           '1 = Imprime Boleto 1 '+#13+
                           '2 = Imprime Boleto 2 '+#13+
                           '3 = Imprime Boleto 3 '+#13+
                           '4 = Imprime Boleto 4 '+#13+
                           '5 = Imprime Boleto 5 '+#13+
                           '6 = Imprime Boleto 6 '+#13+
                           '7 = Configura boletos',
                           imp) then  else imp :='';

             if (imp <> '1')and (imp <> '2') and(imp <> '3')and (imp <> '4')and
                (imp <> '5')and (imp <> '6')and (imp <> '7') then abort;

            fdm.tbconfig.Open;

            if imp <> '7' then
               controleimpressao := imp;

            application.CreateForm(tfboletoconfig, fboletoconfig);

            if imp = '7' then
               fboletoconfig.ShowModal
            else
               fboletoconfig.qboleto.PreviewModal;

              num := '';
              if inputquery('Opcional','Digite o número do boleto impresso(para controle interno):',num) then begin
                 if num <>'' then
                 with fdm.query2 do begin
                      close;
                      sql.Clear;
                      sql.add( 'update tbreceber set extenso = '+quotedstr(num)+
                               ' where chave = '+quotedstr(tabela.fieldbyname('chave').AsString));

                      execsql;

                      imp := tabela.fieldbyname('chave').AsString;

                      tabela.Cancel;
                      tabela.Refresh;
                      tabela.Locate('chave',imp,[]);

                 end;

              end;

            fdm.tbconfig.Close;
            fboletoconfig.Release;
            controleimpressao :='';

end;

procedure Tfreceberlocaliza.gcarneExecute(Sender: TObject);
var
car:string;
begin
                car:='1';
                inputquery('Imprimir', 'Digite uma opção de impressão:' + #13 + #13 +
                           '1 = Imprime sobre modelo' +#13+
                           '2 = Imprime em papel em branco ' +#13+
                           '3 = Configura modelo ',  car) ;

                if (car<>'1') and (car<>'2')  and (car<>'3') then car :='1';

            application.CreateForm(tfcarneconfig, fcarneconfig);

            if car='1' then
              fcarneconfig.qcarne.PreviewModal
            else if car='2' then
              fcarneconfig.qcarneG.PreviewModal
            else
              fcarneconfig.showmodal;

            fcarneconfig.Release;

end;

procedure Tfreceberlocaliza.SpeedButton5Click(Sender: TObject);
begin
{
        with fdm.query1 do begin
             close;
             commandtext := 'select tbpedido.chave,tbpedido.numero from tbpedido,tbreceber '+
                            ' where tbreceber.linkvenda = tbpedido.chave ';
             open;
                   // showmessage(inttostr(fdm.query1.RecordCount));
            // fdm.tbquery1.First;

             while not Eof do begin

                   fdm.query2.commandtext := 'update tbreceber set documento = '+
                                  quotedstr('P ' + fieldbyname('numero').AsString)+
                                  ' where linkvenda = '+
                                  quotedstr(fieldbyname('chave').AsString);
                   fdm.query2.execsql;
                   Next;
             end;
            close;




        end;
        fdm.tbquery1.close;
        showmessage('Atualizado!!!');
 }
end;

procedure Tfreceberlocaliza.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  if (Column.FieldName = 'dtvencimento') or
     (Column.FieldName = 'codigo')  then
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

procedure Tfreceberlocaliza.gcobrancaExecute(Sender: TObject);
var
i:integer;
ind,dad:string;
begin

           dad :=dad+#13;
           dad :='Obs: Caso já tenha efetuado o pagamento favor desconsiderar este aviso.';
           dad :=dad+#13;
           dad :=dad+#13;
           dad :=dad+#13+'Atenciosamente:';
           dad :=dad+#13+'_____________________________';
           dad :=dad+#13+fantasiaempresa;
           dad :=dad+#13+'Departamento de crédito e cobrança.';


        fimp:=tfimp.Create(self,ds,tabela,nil,'receberC',
                          'Carta de Cobrança',dad);

        criacheck('dtemissao','Emissão',0,10,0,true,true,true,false,false,false);
        criacheck('dtvencimento','Vencto',0,10,0,true,true,true,false,false,false);
        criacheck('Documento','Doc',0,9,0,false,false,true,false,false,false);
        criacheck('letra','L',0,2,0,false,false,false,false,false,false);
        criacheck('diferenca','Valor',0,9,1,false,false,true,true,false,false);
        criacheck('juro','Juros',0,9,1,false,false,true,true,false,false);
        criacheck('totalgeral','Tot/Juros',0,9,1,false,false,true,true,false,false);

           fimp.r6.Lines.Add('Ilmo(s) Sr(s).');
           fimp.r6.Lines.Add(tabela.fieldbyname('nome').AsString +
                                     ' ('+tabela.fieldbyname('nomecurto').AsString +')');

           fimp.r6.Lines.Add('CNPJ/CPF: '+ tabela.fieldbyname('cnpj').AsString + '  IE: '+
                                  tabela.fieldbyname('ie').AsString);

           fimp.r6.Lines.Add('End: '+tabela.fieldbyname('Endereco').AsString + '  '+
                                  tabela.fieldbyname('numero').AsString + ' '+
                                  tabela.fieldbyname('complemento').AsString);

           fimp.r6.Lines.Add(tabela.fieldbyname('municipio').AsString + ' - '+
                                  tabela.fieldbyname('bairro').AsString + ' Cep: '+
                                  tabela.fieldbyname('cep').AsString + ' - '+
                                  tabela.fieldbyname('uf').AsString +
                                  ' Fone: '+ tabela.fieldbyname('Fone').AsString);


        ind:= tabela.IndexFieldNames;
        fimp.showmodal;
        qtdlinha:=0;
        if ind <> '' then
        tabela.IndexFieldNames := ind  ;
end;

procedure Tfreceberlocaliza.graficoExecute(Sender: TObject);
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
            '2 = A Receber ' + #13 +
            '3 = Recebido'
             ,imp);

        if (imp <>'1') and (imp <>'2') and (imp <>'3') then imp:='1';

        if imp ='1' then
           campo := 'total'
        else if imp ='2' then
           campo := 'diferenca'
        else if imp ='3' then
           campo := 'recebido';

        fdm.gerafrafico(tabela,grafico,campo,
                    'CONTAS A RECEBER POR '+uppercase(grafico) +' E '+ uppercase(campo));

end;

procedure Tfreceberlocaliza.qpromissoriaBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
               fdm.tbempresa.Open;

               lnumeronp.Caption := 'Nº: ' + tabela.fieldbyname('documento').AsString + ' '+
                                             tabela.fieldbyname('letra').AsString;
               lvalornp.Caption := 'VALOR: ' + format('%n',[tabela.fieldbyname('total').asfloat]);

               lvencimentonp.caption := 'VENCIMENTO: ' + formatdatetime('dd',tabela.fieldbyname('dtvencimento').AsDateTime) +
                            ' DE ' +formatdatetime('mmmm',tabela.fieldbyname('dtvencimento').AsDateTime)+
                            ' DE '+formatdatetime('YYYY',tabela.fieldbyname('dtvencimento').AsDateTime);

               ldatanp.Caption := 'AOS '+
                                  uppercase(extenso(strtofloat(formatdatetime('dd',tabela.fieldbyname('dtvencimento').AsDateTime)),'','') +
                                   ' DE ' +formatdatetime('mmmm',tabela.fieldbyname('dtvencimento').AsDateTime)+
                                   ' DE ' +formatdatetime('yyyy',tabela.fieldbyname('dtvencimento').AsDateTime));


            lrodapenp.Lines.Clear;

            lrodapenp.Lines.Add('A ' +fdm.tbempresa.fieldbyname('nome').AsString);
            lrodapenp.Lines.Add('OU SUA ORDEM, A QUANTIA DE ' + uppercase(extenso(tabela.fieldbyname('total').Asfloat,'Real','Reais'))+'***');
            lrodapenp.Lines.Add('EM MOEDA CORRENTE DESTE PAÍS, PAGÁVEL EM LOCAL DA EMISSÃO');


            lcidadenp.Caption := fdm.tbempresa.fieldbyname('municipio').AsString+ ', '+
                            formatdatetime('dd',date)+ ' de '+
                            formatdatetime('mmmm',date)+ ' de '+
                            formatdatetime('yyyy',date)+ '.';
            fdm.tbempresa.Close;

end;

procedure Tfreceberlocaliza.gnpromissoriaExecute(Sender: TObject);
var
st:string;
begin
        lavalistanp.Lines.Clear;

        st := msgi('Digite o nome do avalista:',0);
        if st = '' then st := '     ';
        lavalistanp.Lines.Add(st);

        st:='';
        st := msgi('Digite o nome endereço do avalista:',0);
        if st = '' then st := '     ';
        lavalistanp.Lines.Add(st);

        st:='';
        st := msgi('Digite a cidade do avalista:',0);
        if st = '' then st := '     ';
        lavalistanp.Lines.Add(st);

        st:='';
        st := msgi('Digite o CPF do avalista:',0);
        if st = '' then st := '     ';
        lavalistanp.Lines.Add(st);

        st:='';
        st := msgi('Digite o RG do avalista:',0);
        if st = '' then st := '     ';
        lavalistanp.Lines.Add(st);

        qpromissoria.PreviewModal;

end;

procedure Tfreceberlocaliza.dadosclienteExecute(Sender: TObject);
begin
{        selecione('nome, endereco, numero, complemento, bairro, cidade, cep uf, cnpj,ie'+
                 'ddd, fone, fone2 from tbcliente',1);

        tabela.First;
        tabela.DisableControls;
        while nota tabela.Eof do begin


        end;}
end;

procedure Tfreceberlocaliza.Acerto1Click(Sender: TObject);
begin
        abortaacao(tabela,nil,'chave','','','','',0);

        if fileexists(ExtractFilePath(ParamStr(0)) + 'Contas\tbreceber' +
                      tabela.fieldbyname('movimentopagar').AsString+'.txt') then begin

                application.CreateForm(tfconsumotexto,fconsumotexto);
                fconsumotexto.ltitulo.caption := 'DETALHES DO ACERTO';
                fconsumotexto.lmemo.Lines.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'Contas\tbreceber'+
                                                       tabela.fieldbyname('movimentopagar').AsString+'.txt');
                fconsumotexto.qimpressao.PreviewModal;
                fconsumotexto.Release;
       end else Application.MessageBox('Acerto não localizado!','Acerto', 0 + MB_ICONwarning);

end;

procedure Tfreceberlocaliza.CadastrodeCedente1Click(Sender: TObject);
begin
        periodo('cedente','',237,739);
end;

procedure Tfreceberlocaliza.gboletopExecute(Sender: TObject);
var
list : tstringlist;
begin


        periodo('cedente','uso',237,739);
        if fdm.tbuso.Active = false then abort;
        
        tabela.First;
        while not tabela.Eof do begin
                                                
        with RBoleto do  begin

             Cedente.ContaBancaria.Banco.Codigo :=  Trim(fdm.tbuso.FieldByName('Codbanco').AsString);
             Cedente.ContaBancaria.CodigoAgencia :=  fdm.tbuso.FieldByName('agencia').AsString;
             Cedente.ContaBancaria.NumeroConta := fdm.tbuso.FieldByName('conta').AsString;
             Cedente.ContaBancaria.DigitoConta := fdm.tbuso.FieldByName('contadigito').AsString;
             Cedente.CodigoCedente := fdm.tbuso.FieldByName('codcedente').AsString;
             Cedente.DigitoCodigoCedente := fdm.tbuso.FieldByName('cedentedigito').AsString;
             Carteira := fdm.tbuso.FieldByName('carteira').AsString;
             Cedente.ContaBancaria.NomeCliente := fdm.tbuso.FieldByName('nome').AsString;
             Cedente.TipoInscricao := tiPessoaJuridica;
             Cedente.NumeroCPFCGC := fdm.tbuso.FieldByName('cnpj').AsString;
             Cedente.Nome := fdm.tbuso.FieldByName('nome').AsString;
             Cedente.Endereco.Rua := fdm.tbuso.FieldByName('endereco').AsString;
             Cedente.Endereco.Numero := fdm.tbuso.FieldByName('endnumero').AsString;
             Cedente.Endereco.Bairro := fdm.tbuso.FieldByName('bairro').AsString;
             Cedente.Endereco.Cidade := fdm.tbuso.FieldByName('cidade').AsString;
             Cedente.Endereco.Estado := fdm.tbuso.FieldByName('uf').AsString;
             Cedente.Endereco.CEP := formatnumeric(fdm.tbuso.FieldByName('CEP').AsString);

             //dados do sacado
             Sacado.Nome := tabela.FieldByName('nome').AsString;

             if tabela.FieldByName('FisJur').AsString = 'J' then
                Sacado.TipoInscricao := tiPessoaJuridica
             else
                Sacado.TipoInscricao := tiPessoaFisica;

             Sacado.NumeroCPFCGC := tabela.FieldByName('cnpj').AsString;
             Sacado.Endereco.Rua := tabela.FieldByName('endereco').AsString;
             Sacado.Endereco.Bairro := tabela.FieldByName('bairro').AsString;
             Sacado.Endereco.Cidade := tabela.FieldByName('municipio').AsString;
             Sacado.Endereco.Estado := tabela.FieldByName('uf').AsString;
             Sacado.Endereco.CEP := formatnumeric(tabela.FieldByName('cep').AsString);

             //dados da cobranca
             NossoNumero := fdm.tbuso.FieldByName('nossonumero').AsString;

             fdm.tbuso.Edit;
             fdm.tbuso['nossonumero']  := fdm.tbuso.FieldByName('nossonumero').AsInteger +1;
             fdm.tbuso.SaveToFile(ExtractFilePath(ParamStr(0)) + 'imagem\tbcedente.xml');

             ValorDocumento := tabela.FieldByName('vrdocumento').AsFloat;
             DataDocumento := date;
             DataVencimento := tabela.FieldByName('dtvencimento').AsDateTime;
             NumeroDocumento := tabela.FieldByName('documento').AsString+ ' '+
                                tabela.FieldByName('letra').AsString;

             list := tstringlist.Create;
             list.Add(fdm.tbuso.FieldByName('Instrucoes').AsString);
             Instrucoes.Assign(list);
             list.Free;

             Visualizar;
       end;

       tabela.Next;
     end;

     fdm.tbuso.Close;

end;

end.




