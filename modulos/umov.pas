unit umov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ComCtrls,inifiles;

type
  Tfmov = class(TForm)
    Label1: TLabel;
    rg1: TRadioGroup;
    Label2: TLabel;
    Bevel1: TBevel;
    eplaca: TEdit;
    c: TComboBox;
    rdesconto: TCheckBox;
    rentsai: TRadioGroup;
    procedure eplacaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure eplacaKeyPress(Sender: TObject; var Key: Char);
    procedure rentsaiClick(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rdescontoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmov: Tfmov;

implementation

uses udm, umanu,funcoes;


{$R *.dfm}

procedure Tfmov.eplacaKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
var
        totmin,dia, hora, min,desconto,prisma ,veiculo ,carro, manobristai ,manobristaf,placa, gdesc, retorno,
        placaretorno,placaprisma,scrpris,manobrista, st,chave,entsai, catg, ms, horaimp, horaimps,diavenc, vrconv :string;
        Tempo_1_Hora, Vr_1_Hora, VrHora, VrDiaria,qtdhoras, valor,vrcasa : double;
        veiculoretorno,categoria, tipo, tp, tpest,qtdhora,qtdiaria,horai,casa :integer;
        prisma_:boolean;


procedure impent;
var
mem :trichedit;
begin

        cabecaimpressao(self,false);
        mem := memo1;

       mem.Lines.Add(centstr(fantasiaempresa));
       if fdm.tbempresa['endereco'] <> null then
          mem.Lines.Add(centstr(copy(fdm.tbempresa.FieldByName('endereco').AsString +  ' '+
                                     fdm.tbempresa.FieldByName('numero').AsString + ' '+
                                     fdm.tbempresa.FieldByName('complemento').AsString, 1,numcoluna)));

       if (fdm.tbempresa['fone1'] <> null) or (fdm.tbempresa['fone2'] <> null) then
          memo1.Lines.Add(centstr(copy('Fone(s): (' +
          fdm.tbempresa.FieldByName('ddd').AsString + ') ' +
          fdm.tbempresa.FieldByName('fone1').AsString + '  ' +
          fdm.tbempresa.FieldByName('fone2').AsString, 1,numcoluna)));

        mem.Lines.Add(' ');
        mem.Lines.Add(centstr(copy('ENTRADA DO VEICULO', 1,numcoluna)));
        mem.Lines.Add(linha);
        mem.Lines.Add(CompStr('DATA: ', Datetostr(now) + ' '+horaimp ));
        mem.Lines.Add(CompStr('Atendente: '  , usuario));

        mem.Lines.Add(linha);
        mem.Lines.Add(CompStr('Categoria: ', c.Text ));
        mem.Lines.Add(CompStr('Placa: ', prisma +' ' +placa ));
        mem.Lines.Add(CompStr('Tipo: ', rg1.Items[rg1.Itemindex]));
        selecione('select * from tbcategoria where chave = ' +quotedstr(inttostr(categoria)));

        if rg1.ItemIndex = 0 then begin
           mem.Lines.Add(CompStr('Valor dos primeiros '+inttostr(sqlpub.fieldbyname('1_hora').AsInteger)+' minutos: ' , format('%n',[sqlpub.fieldbyname('Vr_1_Hora').AsFloat])));
           mem.Lines.Add(CompStr('Valor da hora: (cada '+inttostr(sqlpub.fieldbyname('tph').AsInteger)+' minutos):' , format('%n',[sqlpub.fieldbyname('VrHora').AsFloat])));
        end else if rg1.ItemIndex = 1 then
           mem.Lines.Add(CompStr('Valor da diaria: ' , format('%n',[sqlpub.fieldbyname('VrDiaria').AsFloat])))
        else if rg1.ItemIndex = 2 then
           mem.Lines.Add(CompStr('Valor da mensalidade: ' , format('%n',[strtofloat(vrconv)])));


        sqlpub := nil;
        mem.Lines.Add(linha);
        rodapeimpressao(true,true);

end;


procedure impsai;
var
mem :trichedit;
tipo,ret :string;
desc:double;
begin


       cabecaimpressao(self,false);
       mem := memo1;

       mem.Lines.Add(centstr(fantasiaempresa));
       if fdm.tbempresa['endereco'] <> null then
          mem.Lines.Add(centstr(copy(fdm.tbempresa.FieldByName('endereco').AsString +  ' '+
                                     fdm.tbempresa.FieldByName('numero').AsString + ' '+
                                     fdm.tbempresa.FieldByName('complemento').AsString, 1,numcoluna)));

       if (fdm.tbempresa['fone1'] <> null) or (fdm.tbempresa['fone2'] <> null) then
          memo1.Lines.Add(centstr(copy('Fone(s): (' +
          fdm.tbempresa.FieldByName('ddd').AsString + ') ' +
          fdm.tbempresa.FieldByName('fone1').AsString + '  ' +
          fdm.tbempresa.FieldByName('fone2').AsString, 1,numcoluna)));

        mem.Lines.Add(' ');
        mem.Lines.Add(centstr(copy('SAIDA DO VEICULO', 1,numcoluna)));

        mem.Lines.Add(linha);
        mem.Lines.Add(CompStr('ENTRADA: ', horaimp ));
        mem.Lines.Add(CompStr('SAIDA: ', datetostr(now) + ' '+ horaimps ));
        //mem.Lines.Add(CompStr('Permanencia(Dia/Hora/Min): ', dia+', '+ hora + ', '+ min));
        mem.Lines.Add(CompStr('Permanencia(Hora): ',hora));
        mem.Lines.Add(CompStr('Atendente: '  , usuario));

        mem.Lines.Add(linha);
        selecione('select * from tbcategoria where chave = ' +quotedstr(catg));
        mem.Lines.Add(CompStr('Categoria: ', sqlpub.fieldbyname('nome').AsString));
        mem.Lines.Add(CompStr('Placa: ', prisma +' ' +placa ));

        case tp of
             0: tipo := 'Horista';
             1: tipo := 'Diarista';
             2: tipo := 'Mensalista';
             3: tipo := 'Convenio';
        end;

        if desconto <>'' then desc := strtofloat(desconto);

        mem.Lines.Add(CompStr('Tipo: ', tipo));

        if tp = 0 then begin
           mem.Lines.Add(CompStr('Valor dos primeiros '+inttostr(sqlpub.fieldbyname('1_hora').AsInteger)+' minutos: ' , format('%n',[sqlpub.fieldbyname('Vr_1_Hora').AsFloat])));
           mem.Lines.Add(CompStr('Valor da hora (cada '+inttostr(sqlpub.fieldbyname('tph').AsInteger)+' minutos): ' , format('%n',[sqlpub.fieldbyname('VrHora').AsFloat])));

        end else if tp = 1 then
            mem.Lines.Add(CompStr('Valor da diaria: ' , format('%n',[sqlpub.fieldbyname('VrDiaria').AsFloat])))

        else if tp>=2 then valor := strtofloat(vrconv);

        mem.Lines.Add(linha);
        if retorno = 'S' then ret := ' (RETORNO)';
        mem.Lines.Add(CompStr('VALOR A PAGAR'+ret+':' , format('%n',[valor])));
        if desc>0 then  mem.Lines.Add(CompStr('Obs: Desconto de R$' , format('%n',[desc])));

        sqlpub := nil;
        mem.Lines.Add(linha);
        mem.Lines.Add(centstr(copy('Obrigado pela preferencia.', 1,numcoluna)));
        mem.Lines.Add(centstr(copy('Volte sempre!!!', 1,numcoluna)));
        rodapeimpressao(false,true);

end;



procedure zerar;
begin
        totmin:='';
        dia:='';
        hora:='';
        min:='';
        desconto:='';
        prisma :='';
        veiculo :='';
        carro:='';
        manobristai :='';
        manobristaf:='';
        placa:='';
        gdesc:='';
        retorno:='';
        placaprisma:='';
        scrpris:='';
        manobrista:='';
        st:='';
        chave:='';
        entsai:='';
        catg:='';
        ms:='';
        horaimp:='';
        horaimps:='';
        diavenc:='';
        vrconv:='';
        placaretorno:='';
        Tempo_1_Hora:=0;
        Vr_1_Hora:=0;
        VrHora:=0;
        VrDiaria:=0;
        qtdhoras:=0;
        valor:=0;
        vrcasa :=0;
        categoria:=0;
        tipo:=0;
        tp:=0;
        tpest:=0;
        qtdhora:=0;
        qtdiaria:=0;
        horai:=0;
        casa :=0;
        veiculoretorno:=0;
        prisma_:=false;
end;


begin

           if (key = 13) and (eplaca.Text<>'') then begin

              zerar;
              carro:='';
              st := eplaca.Text;
              prisma_:=false;
              vrcasa:=0;
              retorno := '';

              if c.ItemIndex = -1 then  msg('#Não há categorias cadastradas(Menus-Cadastros-Categorias).',0);

              //rg1.ItemIndex :=0;

              if st = '' then abort;



              //verifica se nao ha entrada deste prisma
              if strisinteger(st) then begin

                 selecione('select placa,veiculo,retorno from tbmov where datasaida is null and prisma = '+quotedstr(st));
                 prisma_ := sqlpub.RecordCount >0;
                 placa := sqlpub.fieldbyname('placa').AsString;
                 scrpris := ' and prisma = '+quotedstr(st);
                 retorno := sqlpub.fieldbyname('retorno').AsString;

                //verifica se nao ha entrada deste prisma neste caixa
                if not prisma_ then begin
                   selecione('select chave,placa,veiculo from tbmov where datasaida is not null '+
                           ' and prisma = '+quotedstr(st) + ' and caixa = '+quotedstr(fdm.tbcaixagrupo.fieldbyname('chave').AsString));
                   if sqlpub.RecordCount >0 then
                      if not msg('Este prisma já foi usado neste caixa, entrar como retorno?',2) then abort
                      else begin
                        retorno := 'S';
                        placaretorno := sqlpub.fieldbyname('placa').AsString;
                        veiculoretorno := sqlpub.fieldbyname('veiculo').AsInteger;
                      end;
                 end;


                 if prisma_ then begin
                    carro := inttostr(sqlpub.fieldbyname('veiculo').AsInteger);
                    selecione2('select nome from tbcarros where chave = '+quotedstr(carro));
                    carro := ' '+sqlpub2.fieldbyname('nome').AsString;
                    sqlpub2 := nil;
                 end;

                 prisma := st;
              end;


              //se nao ha entrada do prisma verificar ser esta entrando
              if not prisma_ then prisma_ := copy(c.Text,1,5)='VALET';

              if (prisma_) and (not strisinteger(st)) then msg('#A entrada deve ser pelo número do prisma.',0);
              

              if not prisma_ then
                if (length(st) <> 7)or
                   (length(formatnumeric(copy(st,1,3)))>=1) or
                   (length(formatnumeric(copy(st,4,7)))<>4) then
                   msg('#Digitação incorreta - Digite 3 letras e 4 números',0);



              if placa = '' then placa      := st; //uppercase(copy(st,1,3) + '-' + copy(st,4,7));
              selecione('select chave from tbcategoria where nome = ' + quotedstr(c.Text));
              categoria  := sqlpub.fieldbyname('chave').AsInteger;
              tipo       := rg1.ItemIndex;
              sqlpub           := nil;


              with fdm.query1 do begin

                   sql.clear;
                   sql.add('select * from tbmov where datasaida is null and placa = '+quotedstr(placa)+scrpris);
                   open;

                   chave := fieldbyname('chave').asstring;
                   catg  := fieldbyname('categoria').asstring;
                   tp  := fieldbyname('tipo').AsInteger;
                   if fieldbyname('tipo').AsInteger  >0 then rg1.ItemIndex := fieldbyname('tipo').AsInteger;
                   vrconv  := fieldbyname('dinheiro').AsString;

                   if ((fdm.query1['datasaida'] = null) and (fdm.query1['dataentrada'] = null) or
                      (fdm.query1['datasaida'] <> null) and (fdm.query1['dataentrada'] <> null)) then
                      entsai := 'Entrada'
                   else if fdm.query1['dataentrada'] = null then
                      entsai := 'Entrada'
                   else if fdm.query1['datasaida'] = null then
                      entsai := 'Saída';


                   if entsai = 'Entrada' then begin

                      //se for prisma
                      if prisma_ then begin

                         if length(placaretorno)=4 then placa := placaretorno else
                         placa       := msgi('Digite a placa do veículo(4 números):',2);
                         if length(placa)<>4 then msg('#Digitação incorreta!',0);

                         manobristai := combotb('tbfuncionario','nome','chave','','');
                         if manobristai = '' then msg('#Escolha incorreta!',0);

                         if veiculoretorno >0 then veiculo  := inttostr(veiculoretorno) else
                         veiculo     := combotb('tbcarros','nome','chave','','');
                         if veiculo = '' then msg('#Escolha incorreta!',0);

                         selecione2('select nome from tbcarros where chave = '+quotedstr(veiculo));
                         carro := ' '+sqlpub2.fieldbyname('nome').AsString;
                         sqlpub2 := nil;

                      end;


                      ms :=  #13+'Veiculo: ' + c.Text+  #13+'Tipo: ' + rg1.Items[rg1.itemindex];

                       sql.clear;
                       sql.add('select placa,vencdia,valor, if(Mens_Conv="C","conveniado", "mensalista")as tipo from tbmovmensal where placa = '+quotedstr(eplaca.Text));

                       open;

                       //nao entrar como diarista ou horista
                       if (recordcount > 0) and (rg1.ItemIndex <2) then begin

                          msg('#Este veículo é '+fieldbyname('tipo').AsString +'.',0);
                          close;
                          abort;




                      end else  if recordcount > 0 then begin


                          if (fieldbyname('tipo').AsString = 'conveniado') and (rg1.ItemIndex <>3) then
                                msg('#Este veículo é '+fieldbyname('tipo').AsString +'.',0)
                          else if (fieldbyname('tipo').AsString = 'mensalista') and (rg1.ItemIndex <>2) then
                                msg('#Este veículo é '+fieldbyname('tipo').AsString +'.',0);

                           //diaconv := fieldbyname('vencdia').;
                           vrconv  := fieldbyname('valor').AsString;
                           //close;
                       end;

                       //nao deixar dar 2 entradas no mesmo mes
                       if recordcount > 0 then begin
                          sql.Clear;
                          sql.Add('select chave from tbmov where placa = '+ quotedstr(placa)+
                                  ' and extract(month from  dataentrada) = '    + quotedstr(formatdatetime('mm',date)) +
                                  ' and extract(year from  dataentrada) = ' + quotedstr(formatdatetime('yyyy',date)));
                          open;
                          if recordcount > 0 then begin
                             close;
                             msg('#Esta placa já foi dado entrada este mês,',0);
                          end;

                       end;

                   end else  horaimp := fieldbyname('dataentrada').AsString +' '+ fieldbyname('horaentrada').AsString;


                   close;


                   if rg1.ItemIndex >= 2  then begin
                       codloc := vrconv;
                       vrconv := msgi('Digite o valor:',2);

                       if strtofloat(vrconv) <=0 then msg('#Valor inválido.',0);
                   end;





                   if not msg('Hoje: '+datetimetostr(now)+
                                 ms+
                                 #13+#13+'Confirma a "' +
                                 uppercase(entsai) + '" do veículo'+carro+' placa '+placa +'?',2) then abort;




                   if (entsai = 'Entrada') or (rentsai.ItemIndex>=2) then begin

                      horaimp := timetostr(now);

                      sql.clear;
                      //modificar
                      if rentsai.ItemIndex>=2 then  begin
                           sql.add('update tbmov set '+
                                   ' tipo = '+inttostr(tipo)+
                                   ', categoria = '+ inttostr(categoria)+
                                   

                                   ' where chave = '+quotedstr(chave));
                           entsai := 'Alteração';

                      end else begin
                         //gravar

                         if prisma <>'' then begin
                            selecione2('select chave,valor from tbcasa where de <= ' + inttostr(strtoint(prisma)));
                            sqlpub2.last;
                            casa := sqlpub2.fieldbyname('chave').AsInteger;
                            vrcasa := sqlpub2.fieldbyname('valor').AsFloat;
                            if vrcasa >0 then  vrconv := floattostr(vrcasa);
                            sqlpub2 := nil;
                         end;

                         if  vrconv ='' then vrconv :='0';
                         sql.add('insert into tbmov (dataentrada, horaentrada, placa,prisma,casa,veiculo,manobristai, categoria, tipo, dinheiro,retorno,usuini) Values('+
                                 'now()'+
                                 ','+quotedstr(horaimp)+
                                 ' ,'+quotedstr(placa)+
                                 ' ,'+quotedstr(prisma)+
                                 ' ,'+inttostr(casa)+
                                 ' ,'+quotedstr(veiculo)+
                                 ' ,'+quotedstr(manobristai)+
                                 ' ,'+inttostr(categoria)+
                                 ' ,'+inttostr(tipo)+
                                 ', ' + realdblstr(strtofloat(vrconv))+
                                 ',' + quotedstr(retorno)+
                                 ' ,'+inttostr(usuariolink)+ ')') ;
                      end;

                       execsql;

                       impent;



                       end else begin


                                                 //se for prisma  saida
                            if prisma_ then begin
                              manobristaf := combotb('tbfuncionario','nome','chave','','');
                              if manobristaf = '' then msg('#Escolha incorreta!',0);

                              selecione2('select valor from tbcasa where de <= ' + inttostr(strtoint(prisma)));
                              sqlpub2.last;
                              vrcasa := sqlpub2.fieldbyname('valor').AsFloat;
                              sqlpub2 := nil;

                              //selecione2('select valor from tbcasa where de <= ' + inttostr(strtoint(prisma)));

                            end;



                            sql.Clear;
                            sql.add('select * from tbcategoria where chave = ' +quotedstr(catg));
                            open;

                            Tempo_1_Hora := fieldbyname('1_Hora').AsFloat;  //minutos
                            Vr_1_Hora    := fieldbyname('Vr_1_Hora').AsFloat;
                            VrHora       := fieldbyname('VrHora').AsFloat;
                            VrDiaria     := fieldbyname('VrDiaria').AsFloat;
                            qtdhora      := fieldbyname('qtdhora').asinteger;
                            horai        := fieldbyname('tph').asinteger;
                            close;


                            //if (Tempo_1_Hora <= 0) or (Vr_1_Hora <=0) or (VrHora <=0) then
                              // msg('#Verifique os parâmetros de configurações antes de efetuar a saída.',0);



                           horaimps := timetostr(now);
                           sql.clear;
                           sql.add('update tbmov set '+
                                   'datasaida = now()'+
                                   ', manobristaf = '+ quotedstr(manobristaf)+
                                   ', horasaida = '+quotedstr(horaimps)+
                                   ', caixa = '+ fdm.tbcaixagrupo.fieldbyname('chave').AsString +
                                   ', usufin = '+ inttostr(usuariolink)+
                                   ', dinheiro = '+ realdblstr(strtofloat(vrconv))+
                                   ' where chave = '+quotedstr(chave));

                            execsql;

                            sql.clear;
                            sql.add('select tipo,'+
                                    ' to_days(datasaida)- to_days(dataentrada) as dia, '+

                                    '((to_days(datasaida)- to_days(dataentrada))*24) + '+
                                    '(HOUR(horasaida)- HOUR(horaentrada)) as hora, '+

                                    ' (minute(horasaida)- minute(horaentrada)) as min '+

                                   // ' ,SECOND(horasaida)- SECOND(horaentrada) as seg '+
                                    ' from tbmov '+
                                    ' where chave = ' + quotedstr(chave));

                            open;


                            dia   := fieldbyname('dia').AsString;
                            hora  := fieldbyname('hora').AsString;
                            min   := fieldbyname('min').AsString;
                            tpest := fieldbyname('tipo').AsInteger;

                            //horista
                            if (tpest = 0) or (tpest = 1) then begin

                                if tpest = 1 then horai :=60;

                                if fieldbyname('min').AsFloat >0 then
                                     totmin := floattostr((strtofloat(hora)*60)+ strtofloat(min))
                                else totmin := floattostr((strtofloat(hora)*60)- (strtofloat(min)*(-1)));

                                hora := floattostr(strtofloat(totmin) / horai);

                                if strtoint(totmin) mod horai >5 then hora := floattostr(strtofloat(hora) +1);

                                qtdhoras := trunc(strtofloat(hora));


                                if qtdhoras <= 0 then qtdhoras :=1;
                                hora := floattostr(qtdhoras);

                                if tpest = 0 then valor := qtdhoras * vrhora
                                else begin
                                     qtdiaria := (trunc(qtdhoras) div qtdhora);
                                     if trunc(qtdhoras) mod qtdhora >0 then qtdiaria := qtdiaria +1;
                                     if qtdiaria <= 0 then qtdiaria :=1;
                                     valor := VrDiaria * qtdiaria;
                                end;



                            //diarista
                            end;

                            
                            if vrcasa >0 then valor := vrcasa;
                            if rg1.ItemIndex>=2 then valor := strtofloat(vrconv);

                            desconto:='';
                            if rdesconto.Checked then
                               desconto := msgi('Digite o desconto:',2);

                            if (desconto <> '') and (strtofloat(desconto)>valor) then desconto := floattostr(valor);

                            if desconto <> '' then begin
                               valor := valor - strtofloat(desconto);
                               gdesc := ', desconto = '+ realdblstr(strtofloat(desconto));
                            end;

                            if retorno = 'S' then valor :=0;

                            sql.clear;
                            sql.add('update tbmov set '+
                                   'dinheiro = '+ realdblstr(valor) +
                                   gdesc+
                                   ' where chave = '+quotedstr(chave));
                            execsql;
                            impsai;
                     end;

                   
                   //msg(entsai+' processada!',0);
                   close;
               end;
               eplaca.Clear;

               //close;

           end;

end;

procedure Tfmov.FormCreate(Sender: TObject);
var
ini:tinifile;
begin
        with fdm.Query1 do begin
             sql.Clear;
             sql.Add('select nome from tbcategoria order by nome');
             open;

             while not eof do begin
                   c.Items.Add(fieldbyname('nome').AsString);
                   next;
             end;
             c.ItemIndex :=0;
        end;

        fdm.tbempresa.Open;


        Ini := TInifile.Create(conf_local);
        c.ItemIndex  := ini.ReadInteger('estacion', 'categoria',0);
        rg1.ItemIndex:= ini.ReadInteger('estacion', 'tipo',0);
        ini.Free;

end;

procedure Tfmov.eplacaKeyPress(Sender: TObject; var Key: Char);
begin
        if not (key in ['0'..'9', 'A'..'Z','a'..'z',#8]) then abort;
end;

procedure Tfmov.rentsaiClick(Sender: TObject);
begin
        c.Enabled   :=  rentsai.ItemIndex <>1;
        rg1.Enabled :=  rentsai.ItemIndex <>1;
        eplaca.SetFocus;

end;

procedure Tfmov.rg1Click(Sender: TObject);
begin
       if self.Active then eplaca.SetFocus;
end;

procedure Tfmov.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key =  27 then close;
end;

procedure Tfmov.rdescontoClick(Sender: TObject);
begin
        eplaca.SetFocus;
end;

procedure Tfmov.FormClose(Sender: TObject; var Action: TCloseAction);
var
ini:tinifile;
begin
        fdm.tbempresa.close;

        Ini := TInifile.Create(conf_local);
        ini.WriteInteger('estacion', 'categoria',c.ItemIndex);
        ini.WriteInteger('estacion', 'tipo',rg1.ItemIndex);
        ini.Free;
end;

procedure Tfmov.cChange(Sender: TObject);
begin
        if self.Active then eplaca.SetFocus;
        if copy(c.Text,1,5)='VALET' then label2.Caption := 'Digite o número do prisma e tecle Enter'
                                    else label2.Caption := 'Digite a placa do veículo e tecle Enter';

end;

procedure Tfmov.FormShow(Sender: TObject);
begin
  cChange(self);
end;

end.
