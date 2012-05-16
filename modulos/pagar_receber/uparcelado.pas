unit uparcelado;

interface

uses
  math, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, Grids, DBGrids, jpeg, ExtCtrls, 
  DB, DBClient, Provider,  Buttons, ActnList, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RLReport;

type
  Tfparcelado = class(TForm)
    DBGrid1: TDBGrid;
    ds: TDataSource;
    prodape: TPanel;
    DBText2: TDBText;
    Label3: TLabel;
    btnnovo: TSpeedButton;
    ActionList1: TActionList;
    totalizar: TAction;
    imprimir: TAction;
    tcins: TAction;
    parcelas: TAction;
    ljuro: TLabel;
    calculajurototal: TAction;
    formatar: TAction;
    somaparcelas: TAction;
    calculadesconto: TAction;
    tbcomissao: TClientDataSet;
    tbcomissaochave: TIntegerField;
    tbcomissaodocumento: TStringField;
    tbcomissaodtemissao: TDateField;
    tbcomissaonome: TStringField;
    tbcomissaovrvenda: TFloatField;
    tbcomissaomargem: TFloatField;
    tbcomissaocomissao: TFloatField;
    tbcomissaototalcomissao: TFloatField;
    tbcomissaopago: TStringField;
    tbcomissaomodalidade: TStringField;
    Label1: TLabel;
    btnitem: TSpeedButton;
    tc: TAction;
    btnrefinanciar: TSpeedButton;
    tabela: TZQuery;
    btnimprimir: TSpeedButton;
    rvisualiza: TCheckBox;
    Label2: TLabel;
    ltot: TLabel;
    totsel: TAction;
    Label4: TLabel;
    enome: TEdit;
    abrir: TAction;
    rativo: TRadioGroup;
    Label11: TLabel;
    cconta: TComboBox;
    Label6: TLabel;
    lsoma: TLabel;
    DBText1: TDBText;
    lnome: TLabel;
    lcredito: TLabel;
    Bevel1: TBevel;
    credcli: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnnovoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure imprimirExecute(Sender: TObject);
    procedure evalorKeyPress(Sender: TObject; var Key: char);
    procedure parcelasExecute(Sender: TObject);
    procedure edescontoKeyPress(Sender: TObject; var Key: Char);
    procedure calculajurototalExecute(Sender: TObject);
    procedure formatarExecute(Sender: TObject);
    procedure somaparcelasExecute(Sender: TObject);
    procedure calculadescontoExecute(Sender: TObject);
    procedure tcinsExecute(Sender: TObject);
    procedure btnitemClick(Sender: TObject);
    procedure tcExecute(Sender: TObject);
    procedure btnrefinanciarClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure tabelaAfterScroll(DataSet: TDataSet);
    procedure totselExecute(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure enomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure abrirExecute(Sender: TObject);
    procedure rativoClick(Sender: TObject);
    procedure ccontaClick(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure credcliExecute(Sender: TObject);
  private
  mora, moradesconto, carencia, desconto, descontototal,juro,recebido:real;
  qtddia,qtddiadesconto:integer;
  movimentopagar,filtro,tb,codigo,nome, tbnm, codconta3:string;
  salva,rodape:boolean;

    { Private declarations }
  public

   antigas,documento, obs: string;
   descontopercent,
   descontoreal,
   jurototal,
      juropercent,
   totalrecebido,
   troco,
   credito,
   dinheiro,
   cheque,
   cartao,totalparcela :real;
   rec_pago,cxconta:boolean;
   dtpgto:tdate;
   bxtudo:boolean;
    { Public declarations }



  constructor Create(AOwner: TComponent; tb_,codigo_:string); reintroduce;


  end;

var
  fparcelado: Tfparcelado;

implementation

uses funcoes, udm, umanu, uacerto, uconsumotexto;

{$R *.dfm}




constructor Tfparcelado.Create(AOwner: TComponent; tb_,codigo_:string);
var
ct:string;
begin
     Inherited Create(AOwner);


        enome.OnExit:=fdm.Exitedit;
        enome.Onenter:=fdm.Enteredit;

        btnrefinanciar.Glyph := btapagar;
        btnimprimir.Glyph := btimprimir;
        btnitem.Glyph := btfiltro;
        btnnovo.Glyph := btalterar;
        imageform('im1', altop, self, '',menucad);
        imagepanel('im2', altop, prodape, '',menucad);


        tb := lowercase(tb_);
        codigo := codigo_;
        dtpgto := date;

        if tb='tbreceber' then
           tbnm := 'tbcliente'
        else
           tbnm := 'tbfornecedor';
        

        if tb='tbpagar' then begin
           btnnovo.Caption := 'Pagar (F2)';
         // dbgrid1.Columns[13].Destroy;
         // dbgrid1.Columns[12].Destroy;
         // dbgrid1.Columns[11].Destroy;
          ct := 'PG';
          rativo.Items.Add('Cheque');
          rativo.Items.Add('Cartão');
          rativo.Items.Add('A prazo');
          rativo.Items.Add('Todos');
          rativo.Columns :=4;
          rativo.ItemIndex :=3;



        end else if tb='tbreceber' then begin
          fdm.tbconfig.open;
          mora := fdm.tbconfig.fieldbyname('juro').AsFloat;
          moradesconto := fdm.tbconfig.fieldbyname('descontodiario').AsFloat;
          carencia :=fdm.tbconfig.fieldbyname('carencia').AsFloat;
          fdm.tbconfig.close;
          btnnovo.Caption := 'Receber (F2)';
          ct := 'REC';

          rativo.Items.Add('Cheque');
          rativo.Items.Add('Devolvido');
          rativo.Items.Add('Passado');
          rativo.Items.Add('Cartão');
          rativo.Items.Add('A prazo');
          rativo.Items.Add('Todos');
          rativo.Columns :=6;
          rativo.ItemIndex :=5;

        end;

        Caption := 'Contas a '+copy(tb,3,10);
        abrirexecute(self);

        selecione('select descricao as nome from tbconta '+
                  ' where pgrec is null or pgrec <> '+quotedstr(ct)+
                  ' order by descricao');

        cconta.Items.Add('Todas');

        while not sqlpub.eof do begin
              cconta.Items.Add(sqlpub.fieldbyname('nome').AsString);
              sqlpub.next;
        end;
        cconta.ItemIndex :=0;
        sqlpub := nil;


end;



procedure Tfparcelado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
          fdm.tbconfig.close;
          tabela.Close;
          fparcelado := nil;
          Release;
end;

procedure Tfparcelado.btnnovoClick(Sender: TObject);
var
emp,movimento,dc,modulo,dt:string;


      procedure baixar;
      var codconta_,dc, tipo, historico,imp:string;
          mov :integer;
      begin

              imp := '1';
              if ((modulo = '9') and (tabela['ch'] = 'S')) then begin
                 codloc := '1';
                 imp :='';
                 imp := msgi('Digite uma opção:'+#13+#13+ '1 = Baixar '+#13+ '2 = Receber',2);

                 while imp = '' do imp := msgi('Digite uma opção:'+#13+#13+ '1 = Baixar '+#13 +'2 = Receber',2);

              end;

              if imp = '1' then begin
                    if modulo = '10'  then movimento  :='movimentopagar'
                                       else movimento  :='movimentoreceber';

                    //selecione('select contacartao, '+ movimento +' from tbconfig');
                    //mov    := sqlpub.fieldbyname(movimento).asinteger + 1;
                    codconta_ := inttostr(tabela.fieldbyname('codconta3').asinteger);

                    if planocontas then
                       codconta_ := combotb('tbconta','descricao','chave','Informe a conta de destino para o valor:', tabela.fieldbyname('codconta3').AsString)
                    else //if (codconta_ ='0') or (codconta_ ='') then
                       codconta_ := combotb('tbconta','descricao','chave','Informe a conta de destino para o valor:', codconta_);

                    codconta3 := codconta_;

                    facerto := nil;
                    //facerto.Release;

                    if codconta_ = '' then abort;

                    if planocontas then
                       alimentaconta(tabela.fieldbyname('codconta').AsString ,
                                  codconta_,'',
                                  modulo,
                                  inttostr(sqlpub.fieldbyname(movimento).Asinteger + 1),
                                  strtodate(dt),
                                  totalparcela )



                    else begin

                       if modulo = '9' then dc := 'C' else dc := 'D';
                       if tabela['ch'] = 'C' then tipo := 'CA' else tipo := 'CH';
                       if tabela['ch'] = 'C' then historico := 'BAIXA CARTAO' else historico := 'BAIXA CHEQUE';

                       gravabancovr(strtoint(codconta_),dc, inttostr(MOV), historico, modulo, tipo,totalparcela,mov);
                    end;

                    gravaconfig(movimento,inttostr(mov));
                    rec_pago := true;

                 end else facerto.ShowModal;


      end;

begin

      if tb ='tbreceber' then fmenu.caixafechadoexecute(self);

      if Pred(dbgrid1.SelectedRows.Count) < 0 then
         msg('#Você não tem parcelas selecionadas. Clique na primeira e selecione as demais com o CTRL pressionado!',0);

      dt := msgi('Digite a data do pagamento/recebimento (Enter = hoje)',1);

            if tb ='tbpagar' then modulo := '10'
                             else modulo := '9';


      if dt = '' then dtpgto := date
                 else dtpgto := strtodate(dt);

      somaparcelasexecute(self);




       // chama o form de pagamento
        application.CreateForm(tfacerto,facerto);


      if tb ='tbpagar' then begin
         facerto.controle := 'acertopagar';
         facerto.modulo := modulo;
         calculajurototalexecute(self);
         movimento :='movimentopagar';
         dc:= 'PG ';
      end;

                    
      if tb ='tbreceber' then begin
         fdm.tbconfig.Open;

         // juTo autoMATIC e manual
         if fdm.tbconfig['calculajuro'] = 'A' then
            calculajurototalexecute(self)
         else if (mora > 0) and (Application.MessageBox('Calcular juros para parcela(s) vencidas!',
                                                         'JURO', mb_yesno + MB_ICONQUESTION ) = mryes) then
            calculajurototalexecute(self)
         else jurototal :=0;


         // desconto auto
         if (fdm.tbconfig['calculadesconto'] = 'A') and (moradesconto>0) then
            calculadescontoExecute(self);

         movimento :='movimentoreceber';
         dc:= 'RC ';
         facerto.controle := 'acertoreceber';
         facerto.modulo := modulo;
      end;


        facerto.tabela.CreateDataSet;
        facerto.tabela.Open;
        facerto.tabela.insert;

        if (tb ='tbreceber')and (tabela.fieldbyname('comissao').AsFloat >0) then begin
           facerto.tabela['codigovendedor'] := tabela.FieldByName('vendedor').asstring;
           facerto.percentcomissao := tabela.FieldByName('comissao').asfloat;
        end;


        facerto.tabela['codigo'] := tabela.FieldByName('codigo').asinteger;
        facerto.tabela['nome'] := tabela.FieldByName('nome').AsString;

        if jurototal > 0 then begin
           facerto.tabela['acrescimo'] := jurototal;
           facerto.lacrescimo.caption := 'Acésc./Juro';
           facerto.eacrescimo.ReadOnly := true;
        end;

        if descontototal > 0 then begin
           facerto.tabela['descontoreal'] := descontototal;
           facerto.tabela['descontopercent'] := descontototal * totalrecebido/100;
           facerto.edescontoreal.Modified := false;
           facerto.edescontopercent.Modified := false;
        end;

        facerto.tabela['totalparcial'] := totalrecebido;
        facerto.tabela['total'] :=totalrecebido;
        facerto.totalreceber := totalrecebido;

        facerto.tabela['filtropagar'] := filtro;

        facerto.tabela['documento'] := dc + documento;
        facerto.efiado.ReadOnly := true;
        //facerto.epeca.ReadOnly := false;
        fdm.tbconfig.open;

        facerto.tabela['linkvenda'] := fdm.tbconfig.fieldbyname(movimento).Asinteger + 1;
        movimentopagar := inttostr(fdm.tbconfig.fieldbyname(movimento).Asinteger + 1);

          emp := '1';
          if responsavel = 'ZENIT' then begin
             inputquery('Empresa', 'Digite uma opção:' + #13 + #13 +
                        '1=Empresa 1 '+#13+
                        '2=Empresa 2',emp);
             if (emp <>'1') and (emp<>'2') then emp :='1';

             facerto.tabela['emp'] := emp;
          end;   



        rec_pago := false;
        cxconta  :=false;


        // se for cartao
        if (tabela['ch'] = 'C') or (tabela['ch'] = 'S') then baixar


        else facerto.showmodal;


        if rec_pago = true then begin

        if msg('Deseja imprimir?',2) = true then rodape:=true;

           salva:=true;
           try
              imprimirexecute(self);
           except end;
           

           fdm.tbconfig.open;
           if (planocontas) and ((dinheiro >0) and ((modulo='10') or (cxconta)))  then begin
              codconta3 :='';
//              if modulo='10' then cd :='D' else cd :='C';
//              if modulo='10' then ct := tabela.fieldbyname('codconta3').AsString;

              codconta3 := combotb('tbconta','descricao','chave','Informe a conta de destino para o valor à vista:', tabela.fieldbyname('codconta3').AsString);

                while codconta3 = '' do
                      codconta3 := combotb('tbconta','descricao','chave','Informe a conta de destino para o valor à vista:', tabela.fieldbyname('codconta3').AsString);

                   alimentaconta(tabela.fieldbyname('codconta2').AsString ,
                               codconta3,'',
                               modulo,
                               inttostr(fdm.tbconfig.fieldbyname(movimento).Asinteger + 1),
                               dtpgto,
                               dinheiro);
           end;


           parcelasExecute(self);
           gravaconfig(movimento,inttostr(fdm.tbconfig.fieldbyname(movimento).Asinteger + 1));
           descontopercent :=0;
           descontoreal :=0;
           jurototal :=0;
           totalrecebido :=0;
           troco :=0;
           credito :=0;
           dinheiro :=0;
           cheque :=0;
           cartao :=0;
        end;

        fdm.tbconfig.close;
        dtpgto := date;
        ltot.Caption :='';
        credcliExecute(self);
end;

procedure Tfparcelado.FormKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin

{  if (key = 13) or (key = vk_down) then
    Perform(wm_nextdlgctl, 0,0);
  if (key = 27) or (key = vk_up) then
    Perform(wm_nextdlgctl, 1,0);
 }

end;

procedure Tfparcelado.DBGrid1Enter(Sender: TObject);
begin
  keypreview := False;
end;

procedure Tfparcelado.DBGrid1Exit(Sender: TObject);
begin
  keypreview := True;
end;

procedure Tfparcelado.imprimirExecute(Sender: TObject);
var
  i,tamanho: integer;
letra,loc,campo:string;
troc:double;
begin

     if tb='chequepre' then
        campo := 'numero'
     else
        campo := 'documento';


  cabecaimpressao(self,true);

  memo1.Lines.Add('');

  if (responsavel ='MAURICIO') and (tb='tbreceber') then
     memo1.Lines.Add('***RECEBIMENTO DE CARNE***')

  else if tb = 'tbreceber' then
     memo1.Lines.Add('***RECEBIMENTO DE CONTA(S)***')

  else if tb='tbpagar' then
     memo1.Lines.Add('***PAGAMENTO DE CONTA(S)***') ;


  memo1.Lines.Add('');

        memo1.Lines.Add(compstr('Data/Hora ', datetimetostr(now)));
        memo1.Lines.Add(compstr('USUARIO: ' , usuario));

        loc:= tabela.fieldbyname('chave').AsString;
        tabela.Filter := filtro;
        tabela.Filtered := true;
        tabela.DisableControls;
        tabela.First;                 

        memo1.Lines.Add(copy('Nome: ' + codigo + ' ' + tabela.fieldbyname('nome').AsString, 1,numcoluna));
        memo1.Lines.Add('');

        for i := 1 to tabela.RecordCount do begin
            letra := tabela.FieldByName('letra').AsString;

            memo1.Lines.Add(compstr('Doc/Venc/Vr: ' +
                                          tabela.FieldByName(campo).AsString +' '+
                                          letra,
                                          tabela.FieldByName('dtvencimento').AsString+ '  >>  '+
                                          format('%n',[tabela.fieldbyname('diferenca').asfloat])));
            tabela.Next;
        end;

        tabela.First;
        tabela.EnableControls;

        if tabela.Filtered = true then begin
           tabela.Filtered := false;
           tabela.Filter :='';
        end;
        tabela.Locate('chave',loc,[]);


  memo1.Lines.Add(linha);

    if totalparcela > 0 then
       memo1.Lines.Add(compstr('SOMA', format('%n', [totalparcela])));
                                                 // format('%n', [descontopercent])+'% = '+
  memo1.Lines.Add(linha);
    if descontoreal > 0 then
       memo1.Lines.Add(compstr('DESCONTO',
                                                 '-'+format('%n', [descontoreal])));
    if jurototal > 0 then
       memo1.Lines.Add(compstr('ACRESCIMO/JURO', '+'+format('%n', [jurototal])));

    if (descontoreal > 0) or (jurototal>0) then
       memo1.Lines.Add(compstr('TOTAL', format('%n', [totalparcela - descontoreal + jurototal ])));


    memo1.Lines.Add(compstr('RECEBIDO/PAGO', format('%n', [totalrecebido])));

    memo1.Lines.Add(' ');

    if credito > 0 then
       memo1.Lines.Add(compstr('CREDITO', format('%n', [credito])));

    if troco>0 then troc:= troco ;

    if dinheiro > 0 then
       memo1.Lines.Add(compstr('          DINHEIRO', format('%n', [dinheiro-troc])));

    if cheque > 0 then
       memo1.Lines.Add(compstr('          CHEQUE', format('%n', [cheque])));

    if cartao > 0 then
       memo1.Lines.Add(compstr('          CARTAO', format('%n', [cartao])));

    memo1.Lines.Add(' ');

  //  if totalrecebido > 0 then
    //   memo1.Lines.Add(compstr('PAGO/RECEBIDO', format('%n', [totalrecebido])));

    if troco > 0 then
       memo1.Lines.Add(compstr('TROCO', format('%n', [troco])));


    if troco<0 then begin
       memo1.Lines.Add(' ');
       memo1.Lines.Add(compstr('DIFERENCA A PAGAR', format('%n', [troco])));
    end;

       memo1.Lines.Add(linha);

       if tb='tbreceber' then letra := 'R'
       else if tb='tbpagar' then letra := 'G';

       if tb='tbreceber' then
          campo := 'select cheque,banco,agencia,conta,total,dtvencimento from tbreceber where '
       else if tb='tbpagar' then
          campo := 'select cheque,banco,dtvencimento,total, '+
                   ' " " as agencia," " as conta from tbpagar where ';


    with fdm.query2 do begin
         close;
                sql.Clear;
                sql.add( campo+
                        ' linkvenda = '+quotedstr(movimentopagar)+
                        ' and modulo = '+ quotedstr(letra));
                        open;
        // CHEQUES
        if fieldbyname('total').AsFloat>0 then begin
           memo1.Lines.Add('');
           memo1.Lines.Add(compstr('CHEQUES: Núm/Bc/Ag/Conta','Vencto/Valor'));
           memo1.Lines.Add('');

           while not eof do begin
                 memo1.Lines.Add(compstr(fieldbyname('cheque').asstring+' '+
                                       fieldbyname('banco').asstring+' '+
                                       fieldbyname('agencia').asstring+' '+
                                       fieldbyname('conta').asstring,
                                       fieldbyname('dtvencimento').asstring+' '+
                                       format('%n',[fieldbyname('total').asfloat])));
                 next;
           end;

       memo1.Lines.Add(linha);
       end;

     close;
    end;

       if salva then begin
         if not DirectoryExists(PChar(ExtractFilePath(ParamStr(0)) + 'Contas\')) then
                ForceDirectories(PChar(ExtractFilePath(ParamStr(0)) + 'Contas\'));

                memo1.Lines.SaveToFile(ExtractFilePath(ParamStr(0)) +
                                             'Contas\' + tb +movimentopagar+'.txt');
       end;

       // showmessage(movimentopagar);

       if rodape then
            rodapeimpressao(false,false)
       else memo1.destroy;

       rodape:=false;
       salva:=false;

end;

procedure Tfparcelado.evalorKeyPress(Sender: TObject; var Key: char);
begin
  if not (key in ['0'..'9', #8, ',']) then abort;
end;

procedure Tfparcelado.parcelasExecute(Sender: TObject);

        procedure padrao;
        begin
               tabela['dtpagamento'] := dtpgto;
               tabela['movimentopagar'] := movimentopagar;

               if (tb='tbreceber') then  begin
                  tabela['atraso'] := qtddia;
                  tabela['caixarecebido'] := fdm.tbcaixagrupo.fieldbyname('chave').AsInteger;
               end;

               if tabela.fieldbyname('diferenca').AsFloat <= 0.2 then
                  tabela['diferenca'] :=0;

               if tb='tbreceber' then
                  if tabela['ch'] ='D' then
                     tabela['ch'] :='S';
        end;


var
  descontopago,desc,juropago, juro, totalpago: real;
  loc, codigo,cd2: string;
  i: integer;
begin



          tabela.Filter := filtro;
          tabela.Filtered := true;

          codigo := tabela.FieldByName('codigo').AsString;


          // se selecionar uma so parcela
          if (tabela.recordcount = 1) or (totalrecebido+descontoreal-jurototal <=
                                          tabela.FieldByName('diferenca').AsFloat) then begin
                tabela.edit;
                tabela['desconto'] := formatfloat('###,##0.00',
                                      tabela.FieldByName('desconto').AsFloat + descontoreal);
                tabela['acrescimo'] := tabela.FieldByName('acrescimo').AsFloat + jurototal;
                tabela['total'] := tabela.FieldByName('vrdocumento').AsFloat +
                                        tabela.FieldByName('acrescimo').AsFloat -
                                        tabela.FieldByName('desconto').AsFloat;

               tabela['recebido'] := tabela.FieldByName('recebido').AsFloat + totalrecebido;

               tabela['diferenca'] := tabela.FieldByName('total').AsFloat -
                                      tabela.FieldByName('recebido').AsFloat;

               if codconta3 <> '' then tabela['codconta3'] := codconta3;

               padrao;
               altera(tabela, nil,tb);

               //caso o programa nao divida direito e alguma parcela nao baixe
               if bxtudo then
                  selecione('update '+tb+' set diferenca = 0, recebido = total where diferenca >0 and chave ='+
                            quotedstr(tabela.fieldbyname('chave').AsString));



          end else if tabela.recordcount > 1 then begin

             descontopago:=0;
             juropago:=0;
             totalpago:=0;
             tabela.First;

          while (totalrecebido  > totalpago) and (not tabela.IsEmpty) do  begin

                tabela.Edit;
                if descontoreal > 0 then begin
                   desc :=  descontopercent * tabela.FieldByName('diferenca').AsFloat/100;

                   if (desc + descontopago) <= descontoreal then begin
                      tabela['desconto'] := tabela.FieldByName('desconto').AsFloat +desc;
                      descontopago := descontopago + desc;

                   end else begin
                       tabela['desconto'] := tabela.FieldByName('desconto').AsFloat +
                                              (descontoreal-descontopago);
                       descontopago := descontopago + (descontoreal-descontopago) ;
                   end;
                end;

                if jurototal > 0 then begin
                   juro :=  juropercent * tabela.FieldByName('diferenca').AsFloat/100;

                   if (juro + juropago) <= jurototal then begin
                      tabela['acrescimo'] := tabela.FieldByName('acrescimo').AsFloat +juro;
                      juropago := juropago + juro;

                   end else begin
                       tabela['acrescimo'] := tabela.FieldByName('acrescimo').AsFloat +
                                              (jurototal-juropago);
                       juropago := juropago + (jurototal-juropago) ;
                   end;
                end;

                tabela['total'] := tabela.FieldByName('vrdocumento').AsFloat +
                                        tabela.FieldByName('acrescimo').AsFloat -
                                        tabela.FieldByName('desconto').AsFloat;

               tabela['diferenca'] :=tabela.FieldByName('total').AsFloat -
                                     tabela.FieldByName('recebido').AsFloat;

               if codconta3 <> '' then tabela['codconta3'] := codconta3;
               if (totalrecebido - (totalpago+(JUROPAGO-tabela.FieldByName('acrescimo').AsFloat)-
                                   (DESCONTOPAGO-tabela.FieldByName('desconto').AsFloat))) >=
                                   tabela.FieldByName('diferenca').AsFloat then begin
                  tabela['recebido'] := tabela.FieldByName('recebido').AsFloat +
                                        tabela.FieldByName('diferenca').AsFloat;
                  totalpago := totalpago + tabela.FieldByName('diferenca').AsFloat;
                  tabela['diferenca'] := 0;

               end else begin

                  if codconta3 <> '' then tabela['codconta2'] := codconta3;
                  tabela['recebido'] := tabela.FieldByName('recebido').AsFloat +
                                        (totalrecebido - totalpago);
                  totalpago := totalpago + (totalrecebido - totalpago);
                  tabela['diferenca'] := tabela.FieldByName('total').AsFloat -
                                         tabela.FieldByName('recebido').AsFloat;
               end;

               padrao;
               if codconta3 <> '' then tabela['codconta3'] :=  codconta3;
               altera(tabela, nil,tb);

               if bxtudo then begin
                  if codconta3 <> '' then cd2 :=  ' ,codconta3 ='+quotedstr(codconta3);

                  selecione('update '+tb+' set diferenca = 0, recebido = total '+cd2+' where diferenca >0 and chave ='+
                            quotedstr(tabela.fieldbyname('chave').AsString));
               end;

               tabela.Cancel;

            tabela.next;
         end;
        end;

  // para todos
     if tb= 'tbpagar' then
        saldofornecedor(TABELA.FIELDBYNAME('CODIGO').ASSTRING)
     else if tb= 'tbreceber' then
        saldocliente(TABELA.FIELDBYNAME('CODIGO').ASSTRING);


    tabela.Cancel;
    tabela.Refresh;
    tabela.Filtered:=false;
    tabela.Filter := '';
    bxtudo:=false;
end;

procedure Tfparcelado.edescontoKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8, ',']) then abort;
end;

procedure Tfparcelado.calculajurototalExecute(Sender: TObject);
var
i:integer;
loc:string;
begin

        loc:= tabela.fieldbyname('chave').AsString;


            tabela.Filter := filtro;
            tabela.Filtered := true;


        tabela.DisableControls;

        jurototal := 0;

        tabela.First;

        for i := 1 to tabela.RecordCount do begin
            jurototal := jurototal + juro;
            tabela.Next;
        end;

        tabela.First;
        tabela.EnableControls;

        if tabela.Filtered = true then begin
           tabela.Filtered := false;
           tabela.Filter :='';
        end;

        tabela.Locate('chave',loc,[]);

end;

procedure Tfparcelado.formatarExecute(Sender: TObject);
begin
  (tabela.FieldByName('vrtitulo') as tfloatfield).DisplayFormat := '###,##0.00';
  (tabela.FieldByName('vrdocumento') as tfloatfield).DisplayFormat := '###,##0.00';
  (tabela.FieldByName('recebido') as tfloatfield).DisplayFormat := '###,##0.00';
  (tabela.FieldByName('diferenca') as tfloatfield).DisplayFormat := '###,##0.00';
  (tabela.FieldByName('saldo') as tfloatfield).DisplayFormat := '###,##0.00';
  (tabela.FieldByName('desconto') as tfloatfield).displayformat :=     '###,##0.00';
  (tabela.FieldByName('acrescimo') as tfloatfield).displayformat :=  '###,##0.00';
  (tabela.FieldByName('total') as tfloatfield).displayformat :=  '###,##0.00';

end;

procedure Tfparcelado.somaparcelasExecute(Sender: TObject);
var
i:integer;
begin

  totalrecebido := 0;
  filtro:='';
  documento :='';

  with DbGrid1 do begin
    for i := 0 to Pred(SelectedRows.Count) do begin

      try
        DataSource.DataSet.Bookmark := SelectedRows[i];

      except
          tabela.Cancel;
          tabela.Refresh;
          msg('#Selecione a parcela novamente',0);
      end;    

        totalrecebido := totalrecebido + DataSource.DataSet.FieldByName('diferenca').Asfloat;

          if filtro = '' then
             filtro := 'chave = ' + quotedstr(tabela.fieldbyname('chave').AsString)
          else filtro := filtro + ' or chave = ' + quotedstr(tabela.fieldbyname('chave').AsString);

          if documento = '' then
             documento := tabela.fieldbyname('documento').AsString + ' '+
                          tabela.fieldbyname('letra').AsString
          else
             documento := documento + ', '+tabela.fieldbyname('documento').AsString+ ' '+
                                           tabela.fieldbyname('letra').AsString;
    end;
  end;

  totalparcela := totalrecebido;
  ltot.Caption := format('%n',[totalparcela]);

end;

procedure Tfparcelado.calculadescontoExecute(Sender: TObject);
var
i:integer;
loc:string;
begin

        loc:= tabela.fieldbyname('chave').AsString;


            tabela.Filter := filtro;
            tabela.Filtered := true;

        tabela.DisableControls;

        descontototal := 0;

        tabela.First;

        for i := 1 to tabela.RecordCount do begin
            descontototal := descontototal + desconto;
            tabela.Next;
        end;

        tabela.First;
        tabela.EnableControls;

        if tabela.Filtered = true then begin
           tabela.Filtered := false;
           tabela.Filter :='';
        end;

        tabela.Locate('chave',loc,[]);

end;

procedure Tfparcelado.tcinsExecute(Sender: TObject);
begin
        btnnovoClick(self);
end;

procedure Tfparcelado.btnitemClick(Sender: TObject);
begin

      abortaacao(nil,tabela,'chave','','','','',0);

      if tb='tbpagar' then begin
         if tabela['modulo'] = 27 then msg('Esta conta foi gerada de compras avulsas.',0)
         else itemcompra(tabela.FieldByName('documento').AsString, tabela.FieldByName('linkvenda').AsString)

      end else if tb='tbreceber' then begin
         if tabela['modulo'] = 28 then msg('Esta conta foi gerada de vendas avulsas.',0)
         else veritem('','tbpedidoitem','tbpedidoservico','tbpedidolocacao',tabela.fieldbyname('linkvenda').AsString,'');
      end;

end;

procedure Tfparcelado.tcExecute(Sender: TObject);
begin
         btnnovoClick(self);
end;

procedure Tfparcelado.btnrefinanciarClick(Sender: TObject);
var
i:integer;
valor,loc,espaco, filtro,impressao:string;
vrjuro,totalconta:double;
tamanho,tmcampo,j,ocupado:integer;
begin

  if responsavel ='GEORGE HILTON' then
        senhagerencial('REFINANCIAR',
          'DIGITE A SENHA GERENCIAL:',
          'LIBERAR REFINANCIAMENTO');



    if Pred(dbgrid1.SelectedRows.Count) < 0 then
       MSG('#Você não tem itens selecionados. Clique no primeiro item, com a tecla CTRL pressionada, selecione os outros itens!',0);



     loc := tabela.fieldbyname('chave').AsString;
     filtro := '';
     documento := '';
     impressao :='';

    vrjuro :=0;
    totalconta:=0;

    antigas :='';

     with DbGrid1 do  begin
       for i := 0 to Pred(SelectedRows.Count) do    begin
          DataSource.DataSet.Bookmark := SelectedRows[i];

          if filtro = '' then
             filtro := 'chave = ' + quotedstr(tabela.fieldbyname('chave').AsString)
          else filtro := filtro + ' or chave = ' + quotedstr(tabela.fieldbyname('chave').AsString);

          if documento = '' then
             documento := tabela.fieldbyname('documento').AsString + '_'+
                          tabela.fieldbyname('letra').AsString
          else
             documento := documento + ', '+tabela.fieldbyname('documento').AsString+ '_'+
                                           tabela.fieldbyname('letra').AsString;

          vrjuro := vrjuro + juro;
          totalconta := totalconta + tabela.fieldbyname('diferenca').asfloat;


         valor := tabela.FieldByName('dtvencimento').AsString;

         tamanho := numcoluna - 23;
         valor := valor+ ' '+ tabela.FieldByName('documento').AsString + ' '+
                          tabela.FieldByName('letra').AsString;

         tmcampo := length(format('%n', [tabela.FieldByName('diferenca').AsFloat]));
         ocupado := tamanho - length(valor) + (10 - tmcampo);

         espaco := '';
         for j := 1 to ocupado do
             espaco := espaco + ' ';

         valor :=  valor + espaco + ' ' + format('%n', [tabela.FieldByName('diferenca').AsFloat]);

         tmcampo := length(format('%n', [juro]));
         ocupado := 8 - tmcampo;

         espaco := '';
        for j := 1 to ocupado do
           espaco := espaco + ' ';

        valor := valor + espaco + ' ' + format('%n', [juro]);

         tmcampo := length(format('%n', [tabela.FieldByName('diferenca').AsFloat+juro]));
         ocupado := 10 - tmcampo;

         espaco := '';
        for j := 1 to ocupado do
           espaco := espaco + ' ';

        valor := valor + espaco + ' ' + format('%n', [tabela.FieldByName('diferenca').AsFloat+juro]);

        antigas := antigas + #13 + valor;

     end;
    end;


        antigas := 'COMPROVANTE DO REFINANCIAMENTO DA DIVIDA' +#13+#13 +
                   'VENCTO/DOC/VALOR/JUROS/TOTAL'+#13+ ANTIGAS +#13+
                   'TOTAL COM JUROS =  '+ format('%n',[vrjuro+totalconta]);


        application.CreateForm(tfacerto,facerto);
        facerto.controle := 'refinanciamento';

        if tb= 'tbpagar' then
           facerto.modulo := '10'
        else
           facerto.modulo := '9';

        facerto.tabela.CreateDataSet;
        facerto.tabela.Open;
        facerto.tabela.insert;
        facerto.tabela['data']  := date;
        facerto.tabela['linkvenda']  := tabela.FieldByName('linkvenda').asinteger;
        facerto.tabela['codigo'] := tabela.FieldByName('codigo').asinteger;
        facerto.tabela['nome'] := tabela.fieldbyname('nome').AsString;
        facerto.tabela['totalparcial'] := roundto(totalconta,-2);
        facerto.tabela['total'] := roundto(vrjuro+totalconta,-2);
        facerto.tabela['fiado'] := roundto(vrjuro+totalconta,-2);
        facerto.tabela['acrescimo'] :=roundto(vrjuro,-2);
        facerto.edinheiro.ReadOnly := true;
        facerto.echeque.ReadOnly := true;
        facerto.echequepre.ReadOnly := true;
        //facerto.eacrescimo.ReadOnly := true;

        facerto.tabela['documento'] := 'RF ' + documento;

        facerto.tabela.post;
        vf := false;
        facerto.ShowModal;
       if vf = False then abort;

       application.CreateForm(tfconsumotexto,fconsumotexto);
       fconsumotexto.mtext.Lines.Add(antigas);
       fconsumotexto.ShowModal;

       selecione('delete from '+tb+' where '+ filtro);

       if tb= 'tbpagar' then
           saldofornecedor(tabela.fieldbyname('codigo').AsString)
       else if tb= 'tbreceber' then
           saldocliente(tabela.fieldbyname('codigo').AsString);

       tabela.close;
       tabela.open;
       formatarExecute(self);
       ltot.Caption :='';


end;

procedure Tfparcelado.btnimprimirClick(Sender: TObject);
var
st,imp:string;
begin

        if tabela.RecordCount <= 0 then
           msg('#Você não tem parcelas!', 0);

        somaparcelasexecute(self);
        calculajurototalexecute(self);

        if tb = 'tbreceber' then
           calculadescontoexecute(self);


        imp := msgi('Digite uma opção de impressão:' + #13 + #13 +
                    '1 = Imprime cupom' + #13 +
                    '2 = Escolher campos para imprimir',0);

        if imp='' then abort;

        if imp = '1' then begin
           rodape:=true;
           imprimirexecute(self);
        end;

        if imp ='2' then
           impgrade(nil,tabela,ds,dbgrid1,name, caption,'',rvisualiza.Checked);

        ltot.Caption :='';
end;

procedure Tfparcelado.tabelaAfterScroll(DataSet: TDataSet);
var
dt:tdate;
somadia:integer;
begin

          if DiaSemana (date) = 'SEGUNDA' then
             somadia := 2
          else somadia :=0;


      if tb= 'tbpagar' then begin
         mora := tabela.fieldbyname('mora').AsFloat;
         moradesconto:=0;
         carencia :=0;
       end;


      if (tabela['dtpagamento']= null) or
        (tabela.FieldByName('dtvencimento').AsDateTime>
         tabela.FieldByName('dtpagamento').AsDateTime) then
         dt := tabela.FieldByName('dtvencimento').AsDateTime
      else begin

           if tabela.FieldByName('acrescimo').AsFloat > 0 then
              dt := tabela.FieldByName('dtpagamento').AsDateTime
           else
              dt := tabela.FieldByName('dtvencimento').AsDateTime
      end;


      if ( dt + carencia + somadia) < date then begin

         qtddia := trunc(date - dt);

         if tabela.RecordCount >0 then
            ljuro.caption := 'Juros da conta selecionada =  ' +
                                   formatfloat('###,##0.00', (mora *
                                                              tabela.fieldbyname('diferenca').AsFloat /100) * qtddia)+ ' - '+
                                                              inttostr(qtddia)+' dias'
         else ljuro.caption := '';

         juro := (mora *
                 tabela.fieldbyname('diferenca').AsFloat /100) * qtddia;

      end else begin
          juro := 0;
          ljuro.caption := '';
      end;


      if dt > date then begin

         qtddiadesconto := trunc(dt - date);

         ljuro.caption := 'Faltam ' + inttostr(qtddiadesconto) + ' dias para vencer';
         desconto := (moradesconto * tabela.fieldbyname('diferenca').AsFloat /100) * qtddiadesconto;

      end else desconto := 0;

end;

procedure Tfparcelado.totselExecute(Sender: TObject);
var
i:integer;
total:double;
begin

        total := 0;

        with DbGrid1 do begin
           for i := 0 to Pred(SelectedRows.Count) do begin
               DataSource.DataSet.Bookmark := SelectedRows[i];
               total := total + DataSource.DataSet.FieldByName('diferenca').Asfloat;
           end;
        end;

        ltot.Caption := format('%n',[total]);
end;

procedure Tfparcelado.DBGrid1CellClick(Column: TColumn);
begin
        totselExecute(self);
end;

procedure Tfparcelado.enomeKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
begin

    fechatg;
    if (enome.Modified) and
       (key = 13) and
       (enome.Text <> '') then  begin

        if ((Length(enome.Text)=14) or(Length(enome.Text)=11)) and (StrIsNum(enome.Text)) then
            enome.Text:=formatacpf_cnpj(enome.Text);


//      cconta.ItemIndex :=0;
//      rativo.ItemIndex := rativo.Columns;

      with fdm.sg do begin
           Close;
           sql.clear;
           sql.add('select * from '+tbnm+' where '+
                   'codigo = '+quotedstr(enome.Text)+
                   ' or cnpj = '+quotedstr(enome.Text));
           Open;
      end;


      if fdm.sg['codigo'] <> null then begin
         codigo := fdm.sg.fieldbyname('codigo').AsString;
         nome := fdm.sg.fieldbyname('nome').AsString;

         abrirExecute(self);

      end else begin

         if tbnm = 'tbcliente' then
            listagem('nome',enome.Text,'',4,0)
         else
            listagem('nome',enome.Text,'',7,0);

         if fdm.sg.Active then begin
            codigo := fdm.sg.fieldbyname('codigo').AsString;
            nome := fdm.sg.fieldbyname('nome').AsString;

            abrirExecute(self);

         end;

      end;
    end;


end;

procedure Tfparcelado.abrirExecute(Sender: TObject);
var
flag:string;
tot:double;
begin

         if tb='tbreceber' then  begin
            case rativo.ItemIndex of
                 0: flag :=  ' and ch="S" ' ;
                 1: flag :=  ' and ch="D" ' ;
                 2: flag :=  ' and ch="P" ' ;
                 3: flag :=  ' and ch="C" ' ;
                 4: flag :=  ' and ch is null';
            end;

            credcliexecute(self);

         end;


         if tb='tbpagar' then
            case rativo.ItemIndex of
                 0: flag :=  ' and ch="S" ' ;
                 1: flag :=  ' and ch="C" ' ;
                 2: flag :=  ' and ch is null';
            end;

        if (cconta.Text <> '') and (cconta.Text <> 'Todas') then
           flag := flag + ' and tipoconta = '+ quotedstr(cconta.Text);


        tabela.sql.Clear;
        tabela.sql.Add( ' select * from '+ tb + ' where (flag <> "D" or flag is null) and diferenca > 0 '+
                          sqlempresa(1,1,'')+
                        ' and '+tb+'.codigo = ' + quotedstr(codigo) + flag +
                        ' order by dtvencimento desc');
        tabela.close;
        tabela.Open;
        formatarexecute(self);
        enome.Clear;

        if nome <> '' then
           lnome.Caption := 'Cód/nome: ' + codigo + ' - '+ tabela.fieldbyname('nome').AsString
        else lnome.Caption := '';

        tot :=0;
        while not tabela.Eof do begin
              tot := tot + tabela.fieldbyname('diferenca').AsFloat;
              tabela.Next;
        end;
        lsoma.Caption := format('%n',[tot]);
        //enome.SetFocus;
        if fdm.sg.active then
        if tabela.RecordCount <=0 then msg('Nenhuma conta em aberto para '+fdm.sg.fieldbyname('nome').asstring,0);
        fechatg;

end;

procedure Tfparcelado.rativoClick(Sender: TObject);
begin
        abrirExecute(self);
end;

procedure Tfparcelado.ccontaClick(Sender: TObject);
begin
        abrirExecute(self);
end;

procedure Tfparcelado.Label3Click(Sender: TObject);
var limite:double;
begin

     abortaacao(nil,tabela,'chave','','','','',0);
     if tb= 'tbpagar' then
        saldofornecedor(TABELA.FIELDBYNAME('CODIGO').ASSTRING)
     else if tb= 'tbreceber' then
        saldocliente(TABELA.FIELDBYNAME('CODIGO').ASSTRING);

     abrirExecute(self);

     if tb= 'tbpagar' then msg('Atualizado!!!',0)

     else begin

          selecione('select limitecredito from tbcliente where codigo = ' + quotedstr(tabela.fieldbyname('codigo').AsString));

          if sqlpub.fieldbyname('limitecredito').asfloat >0 then
             limite := sqlpub.fieldbyname('limitecredito').asfloat -
                       tabela.fieldbyname('saldo').asfloat -
                       tabela.fieldbyname('avulsa').asfloat
          else limite :=0;

          msg('Conta  /  Cheque      =    ' + format('%n',[tabela.fieldbyname('saldo').asfloat])+#13+
              'Venda  Avulsa      =    ' + format('%n',[tabela.fieldbyname('avulsa').asfloat])+#13+
              'Limite Crédito    =    ' + format('%n',[sqlpub.fieldbyname('limitecredito').asfloat])+#13+
              '-----------------------------------------'+#13+
              'Limite Restante      =    ' + format('%n',[limite]) ,0);
          sqlpub := nil;
     end;

end;

procedure Tfparcelado.credcliExecute(Sender: TObject);
begin

      if tb='tbreceber' then begin

         selecione2('select credito from tbcliente where codigo ='+quotedstr(codigo));
         lcredito.Caption := 'Crédito = ' + format('%n',[sqlpub2.fieldbyname('credito').asfloat]);
         sqlpub2 := nil;

      end;


end;

end.



