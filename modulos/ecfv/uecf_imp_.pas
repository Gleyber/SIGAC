unit uecf_imp_;

interface
uses
  Messages, SysUtils, Variants, Classes, uecf_, DbClient, Dialogs, ZDataset, Math,inifiles;
  
function ImprimeECF_(const cnpj, modulo, nome, fone, endereco:string; tabelam, tabelaitem: tzquery): boolean;
procedure AbreCupomConcumitante(const cnpj, modulo:string; tabelam, tabelaitem: tzquery);
procedure CheckECFConcumitante;
procedure VendeItemECFConcumitante(tabelam, tabelaitem: tzquery);
procedure CheckTbECF;
function CupAberto:boolean;
function CancelaCupomFiscal(Msg:boolean):integer;
procedure EmiteLeituraX;
procedure EmiteReducaoZ;
procedure EmiteMemoriaFiscalData;
procedure EmiteMemoriaFiscalDataSerial;
procedure AbregavetaExecute;
procedure Sangria(const valor: extended);
procedure Suprimento(const valor: extended; const descricao: string);
procedure PostTotParciais;

var
  Ecf_Concumitante:Tecf;

implementation
{$I sigac.inc}

uses
  udm, funcoes, uecf_aux_, Umanu;


function ImprimeECF_(const cnpj, modulo, nome, fone, endereco:string; tabelam, tabelaitem: tzquery): boolean;
var
  Count: integer;
  marco: string;
  Ecf: TEcf;
  valor:double;
  ini:tinifile;

  {*********Procedure Auxiliar.**************
  Efetua forma de pgto, e fecha cupom.
  *******************************************}
  procedure finaliza_cupom(FEcf: TEcf);
  var
    acrescimo, desconto: extended;
    obs: TStrings;
  begin
//    if facerto <> nil then
//      facerto.update;

    obs := TStringList.Create;
    with FEcf do
    begin
      acrescimo := tabelam.FieldByName('acrescimo').AsFloat;
      desconto := tabelam.FieldByName('descontoreal').AsFloat;

      if acrescimo > desconto then
      begin
        IniciaFechamentoCupom('A', '$', acrescimo - desconto);
        if (acrescimo - desconto) < acrescimo then
          Obs.Add('ACRES(' + Format('%n', [acrescimo]) + ') - ' +
            'DESC(' + Format('%n', [desconto]) + ') = ACRES DE ' +
            Format('%n', [acrescimo - desconto]));
      end
      else
      begin
        IniciaFechamentoCupom('D', '$', desconto - acrescimo);
        if (desconto - acrescimo) < desconto then
          Obs.Add('DESC(' + Format('%n', [desconto]) + ') - ' +
            'ACRES(' + Format('%n', [acrescimo]) + ') = DESC DE ' +
            Format('%n', [desconto - acrescimo]));
      end;

      if tabelam.FieldByName('cheque').AsFloat > 0 then
        EfetuaFormaPagamento(IntToFormaPagto(VerConfFormaPgtoECF('Cheque')),
          tabelam.FieldByName('cheque').AsFloat);

      if tabelam.FieldByName('chequepre').AsFloat > 0 then
        EfetuaFormaPagamento(IntToFormaPagto(VerConfFormaPgtoECF('Cheque-pre')),
          tabelam.FieldByName('chequepre').AsFloat);

      if tabelam.FieldByName('cartao').AsFloat > 0 then
        EfetuaFormaPagamento(IntToFormaPagto(VerConfFormaPgtoECF('Cartao Credito')),
          tabelam.FieldByName('cartao').AsFloat);

      if tabelam.FieldByName('cartaod').AsFloat > 0 then
        EfetuaFormaPagamento(IntToFormaPagto(VerConfFormaPgtoECF('Cartao Debito')),
          tabelam.FieldByName('cartaod').AsFloat);

      if tabelam.FieldByName('fiado').AsFloat > 0 then
        EfetuaFormaPagamento(IntToFormaPagto(VerConfFormaPgtoECF('A prazo')),
          tabelam.FieldByName('fiado').AsFloat);

      if tabelam.FieldByName('convenio').AsFloat > 0 then
        EfetuaFormaPagamento(IntToFormaPagto(VerConfFormaPgtoECF('Convenio')),
          tabelam.FieldByName('convenio').AsFloat);

      if tabelam.FieldByName('credito').AsFloat > 0 then
        EfetuaFormaPagamento(IntToFormaPagto(VerConfFormaPgtoECF('Credito')),
          tabelam.FieldByName('Credito').AsFloat);

      if tabelam.FieldByName('tickts').AsFloat > 0 then
        EfetuaFormaPagamento(IntToFormaPagto(VerConfFormaPgtoECF('Ticket')),
          tabelam.FieldByName('tickts').AsFloat);

      if tabelam.FieldByName('vltransp').AsFloat > 0 then
        EfetuaFormaPagamento(IntToFormaPagto(VerConfFormaPgtoECF('Vale Transporte')),
          tabelam.FieldByName('vltransp').AsFloat);

      if tabelam.FieldByName('dinheiro').AsFloat > 0 then
        EfetuaFormaPagamento(IntToFormaPagto(VerConfFormaPgtoECF('Dinheiro')),
                            tabelam.FieldByName('dinheiro').AsFloat);

      valor := tabelam.FieldByName('dinheiro').AsFloat +
               tabelam.FieldByName('vltransp').AsFloat+
               tabelam.FieldByName('tickts').AsFloat+
               tabelam.FieldByName('credito').AsFloat +
               tabelam.FieldByName('fiado').AsFloat+
               tabelam.FieldByName('convenio').AsFloat+
               tabelam.FieldByName('cartaod').AsFloat+
               tabelam.FieldByName('cartao').AsFloat+
               tabelam.FieldByName('chequepre').AsFloat+
               tabelam.FieldByName('cheque').AsFloat;

      if valor < (tabelam.FieldByName('total').AsFloat -
                  tabelam.FieldByName('descontoreal').AsFloat+
                  tabelam.FieldByName('acrescimo').AsFloat) then
        EfetuaFormaPagamento(IntToFormaPagto(VerConfFormaPgtoECF('Dinheiro')),
                                            tabelam.FieldByName('total').AsFloat);


      if Length(nome)>0 then
        Obs.Add(nome);

      if Length(endereco)>0 then
        Obs.Add(endereco);

      if Length(fone)>0 then
        Obs.Add(Fone);

      if ImpOperador then
        Obs.Add('OP:' + tabelam.FieldByName('vendedor').AsString);


      TerminaFechamentoCupom(Obs);
      abregaveta;
    end;
  end;
  //Fim da sub-procedure
begin
  Result := True;
  try
    try
      if ImpFiscal then
      begin
        if not Concumitante then
        begin
          Ecf := TEcf.Create(VerConfMarcaECF);
          Ecf.AbreCupom(cnpj);

          fdm.TbEcf.sql.clear;
          fdm.TbEcf.sql.add('select * from  tbecf where num_cupom='+
            QuotedStr(InttoStr(Ecf.NumCupom))+
            ' and num_serie_ECF='+QuotedStr(NumSerieImpFiscal));

          fdm.TbEcf.Open;

          with fdm.tbecfitem  do begin
               Close;
               SQL.clear;
               SQL.Add('select * from  tbecfitem where link = '+
                       QuotedStr(fdm.tbecf.fieldbyname('chave').AsString)+
                       ' and numdocumento = '+ QuotedStr(fdm.tbecf.fieldbyname('numdocumento').AsString));
              open;
          end;


          Ini := TInifile.Create(conf_local);
          fdm.TbEcf.Insert;
          fdm.TbEcf['num_cupom'] := Ecf.NumCupom;
          fdm.TbEcf['cod_mod'] := Ini.ReadString('ImpFiscal', 'cod_mod', '');
          fdm.TbEcf['ecf_mod'] := Ini.ReadString('ImpFiscal', 'ecf_mod', '');
          ini.Free;
          fdm.TbEcf['num_serie_ECF'] := NumSerieImpFiscal;
          fdm.TbEcf['num_caixa_ECF'] := NumCaixaImpFiscal;
          fdm.TbEcf['data']:= date;
          fdm.TbEcf['hora']:= Time;
          fdm.TbEcf['modulogerador']:=modulo;
          fdm.TbEcf['numdocumento']:=tabelam.FieldByName('numero').AsInteger;
          fdm.TbEcf['status'] := 'R';

          Grava(nil,fdm.TbEcf, 'TbEcf');
          fdm.TbEcf.Cancel;
          fdm.TbEcf.Refresh;

          marco := tabelaitem.FieldByName('codigo').AsString;
          tabelaitem.First;
          tabelaitem.DisableControls;



          for Count := 1 to tabelaitem.RecordCount do
          begin
              Ecf.vendeitem(tabelaitem.FieldByName('codigo').AsString,
              tabelaitem.FieldByName('descricao').AsString,
              tabelaitem.FieldByName('imposto').AsString,
              tabelaitem.FieldByName('VrUnit').AsFloat,
              tabelaitem.FieldByName('qtd').AsFloat,
              RoundTo((tabelaitem.FieldByName('descontoreal').AsFloat *
                      tabelaitem.FieldByName('qtd').AsFloat), -2));

               fdm.TbEcfItem.Insert;
               fdm.TbEcfItem['link']:=fdm.tbecf.FieldByName('chave').AsInteger;
               fdm.TbEcfItem['numdocumento']:=tabelam.FieldByName('numero').AsInteger;
               fdm.TbEcfItem['SitTributaria']:=tabelaitem.FieldByName('st').AsString;
               fdm.TbEcfItem['reducaobasecalc']:=tabelaitem.FieldByName('reducaobasecalc').asfloat;
               fdm.TbEcfItem['imposto']:= tabelaitem.FieldByName('imposto').AsString;
               fdm.TbEcfItem['cod_tot_par']:= tabelaitem.FieldByName('cod_tot_par').AsString;
               fdm.TbEcfItem['codigo']:=tabelaitem.FieldByName('codigo').AsString;
               fdm.TbEcfItem['descricao']:=tabelaitem.FieldByName('descricao').AsString;
               fdm.TbEcfItem['qtd']:=tabelaitem.FieldByName('qtd').AsFloat;
               fdm.TbEcfItem['un']:=tabelaitem.FieldByName('un').AsString;
               fdm.TbEcfItem['desconto']:=tabelaitem.FieldByName('descontoreal').AsFloat;
               fdm.TbEcfItem['vrunit']:=tabelaitem.FieldByName('vrunit').AsFloat;
               fdm.TbEcfItem['total']:=(tabelaitem.FieldByName('vrunit').AsFloat -
                                        tabelaitem.FieldByName('descontoreal').AsFloat) *
                                        tabelaitem.FieldByName('qtd').asFloat;

               fdm.TbEcfItem['numitem']:=count;
               fdm.TbEcfItem['status']:='R';

            if      fdm.TbEcfItem['SitTributaria']= 'F' then  fdm.TbEcfItem['imposto']:= '00'
            else if fdm.TbEcfItem['SitTributaria']= 'I' then  fdm.TbEcfItem['imposto']:= '0';

            Grava(nil,fdm.TbEcfItem, 'TbEcfItem');
            fdm.TbEcfItem.Cancel;
            fdm.TbEcfItem.Refresh;
            tabelaitem.Next;

          end;

          tabelaitem.Locate('codigo', marco, []);
          tabelaitem.EnableControls;

          finaliza_cupom(Ecf);
        end
        else
        begin
          try
            CheckECFConcumitante;
            finaliza_cupom(Ecf_Concumitante);
          finally
            Ecf_Concumitante.Free;
            Ecf_Concumitante:=nil;
          end;

        end;
      end;
    finally
      if Ecf<>nil then
        FreeAndNil(Ecf);


      tabelam.Cancel;
      marco := tabelam.FieldByName('chave').AsString;
      //tabelam.RefreshRecord;
      tabelam.Locate('chave', marco, []);
      fdm.TbEcf.Close;
      fdm.TbEcfItem.Close;
    end;
  except
    on E:
    ErroImpressora do
    begin
      Result := False;
      MessageDlg(PChar(E.Message), mtError, [mbOK], 0);
    end;
  end;
  PostTotParciais; //Grava dados p/ sintegra
end;

procedure CheckECFConcumitante;
begin
  if ImpFiscal and Concumitante and (Ecf_Concumitante = nil) then
     Ecf_Concumitante:= TEcf.Create(VerConfMarcaECF);
end;


procedure AbreCupomConcumitante(const cnpj, modulo:string; tabelam, tabelaitem: tzquery);
begin
  if (ImpFiscal) and (Concumitante) then
  begin
    try
      CheckECFConcumitante;

      if not (CupAberto) then
      begin
        Ecf_Concumitante.AbreCupom(cnpj);

        CheckTbECF;
        fdm.TbEcf.Insert;
        fdm.TbEcf['num_cupom'] := Ecf_Concumitante.NumCupom;
        fdm.TbEcf['num_serie_ECF'] := NumSerieImpFiscal;
        fdm.TbEcf['num_caixa_ECF'] := NumCaixaImpFiscal;
        fdm.TbEcf['data']:= date;
        fdm.TbEcf['hora']:= Time;
        fdm.TbEcf['modulogerador']:=modulo;
        fdm.TbEcf['numdocumento']:=tabelam.FieldByName('numero').AsInteger;
        fdm.TbEcf['status'] := 'R';
        Grava(nil,fdm.TbEcf, 'TbEcf');

        with  fdm.TbEcf do
        begin
          Cancel;
          Refresh;
        end;
        
      end;
    except
      On E:Exception do
      begin
        MessageDlg(Pchar(E.Message),MtError, [mbOk],0);
        //cancelavendaExecute(self);
      end;
    end;
  end;
end;

procedure VendeItemECFConcumitante(tabelam, tabelaitem: tzquery);
var
tott:double;
 Trunc_num, Round_num: extended;
begin
  try
    if ImpFiscal and Concumitante then
    begin
      CheckECFConcumitante;

      Ecf_Concumitante.vendeitem(tabelaitem.FieldByName('codigo').AsString,
        tabelaitem.FieldByName('descricao').AsString,
        '00',
        tabelaitem.FieldByName('vrunit').AsFloat,
        tabelaitem.FieldByName('qtd').AsFloat,
        RoundTo((tabelaitem.FieldByName('descontoreal').AsFloat *
                 tabelaitem.FieldByName('qtd').AsFloat), -2));

      CheckTbECF;

      if fdm.tbecfitem.Active = false then
          with fdm.tbecfitem  do begin
               Close;
               SQL.clear;
               SQL.Add('select * from  tbecfitem where link = '+
                       QuotedStr(fdm.tbecf.fieldbyname('chave').AsString)+
                       ' and numdocumento = '+ QuotedStr(fdm.tbecf.fieldbyname('numdocumento').AsString));
              open;
          end;


       fdm.TbEcfItem.Insert;
       fdm.TbEcfItem['link']:=fdm.tbecf.FieldByName('chave').AsInteger;
       fdm.TbEcfItem['numdocumento']:=tabelam.FieldByName('numero').AsInteger;
       fdm.TbEcfItem['SitTributaria']:=tabelaitem.FieldByName('st').AsString;
       fdm.TbEcfItem['reducaobasecalc']:=tabelaitem.FieldByName('reducaobasecalc').AsString;
       fdm.TbEcfItem['imposto']:=tabelaitem.FieldByName('imposto').AsString;
       fdm.TbEcfItem['cod_tot_par']:=tabelaitem.FieldByName('cod_tot_par').AsString;
       fdm.TbEcfItem['codigo']:=tabelaitem.FieldByName('codigo').AsString;
       fdm.TbEcfItem['descricao']:=tabelaitem.FieldByName('descricao').AsString;
       fdm.TbEcfItem['qtd']:=tabelaitem.FieldByName('qtd').asFloat;
       fdm.TbEcfItem['un']:=tabelaitem.FieldByName('un').AsString;
       fdm.TbEcfItem['desconto']:=tabelaitem.FieldByName('descontoreal').AsFloat;
       fdm.TbEcfItem['vrunit']:=tabelaitem.FieldByName('vrunit').AsFloat;
       fdm.TbEcfItem['numitem']:=tabelaitem.FieldByName('numitem').AsInteger;

       tott := (tabelaitem.FieldByName('vrunit').AsFloat -
              tabelaitem.FieldByName('descontoreal').AsFloat) *
              tabelaitem.FieldByName('qtd').asFloat;

      if not VerConfTrunc then
      begin
        Round_num := RoundTo(tott, - 3);

        fdm.TbEcfItem['total']:= Round_num;
      end
      else
      begin
        Round_num := RoundTo(tott * 100, - fmenu.decimais);
        Trunc_num := Trunc(Round_num) / 100;
        fdm.TbEcfItem['total'] := Trunc_num;
      end;


       fdm.TbEcfItem['pis']:=tabelaitem.FieldByName('pis').AsFloat;
       fdm.TbEcfItem['cofins']:=tabelaitem.FieldByName('cofins').AsFloat;

      fdm.TbEcfItem['status']:='R';

      Grava(nil,fdm.TbEcfItem, 'TbEcfItem');
      with fdm.TbEcfItem do
      begin
        Cancel;
        Refresh;
      end;
    end;
  except
    On E:Exception do
    begin
      MessageDlg(PChar(E.Message), mtError, [mbOK], 0);
      tabelaitem.Cancel;
      //edescricao.Clear;
      Abort;
    end;
  end;
end;

procedure CheckTbECF;
begin
  CheckECFConcumitante;
  fdm.TbEcf.sql.clear;
  fdm.TbEcf.sql.add('select * from  tbecf where num_cupom='+
         QuotedStr(InttoStr(Ecf_Concumitante.NumCupom))+
        ' and num_serie_ECF='+QuotedStr(NumSerieImpFiscal));

  if not fdm.tbEcf.Active then
     fdm.TbEcf.Open;


              {
        with fdm.tbecfitem  do begin
            Close;
            SQL.clear;
            SQL.Add('select * from  tbecfitem where link = '+
                    QuotedStr(fdm.tbecf.fieldbyname('chave').AsString)+
                    ' and numdocumento = '+ QuotedStr(fdm.tbecf.fieldbyname('numdocumento').AsString));
           // open;
        end;   }

end;

function CupAberto:boolean;
var
  ECF: TEcf;
begin
  ecf:=TEcf.Create(VerConfMarcaECF);

  if Ecf.CheckCupomAberto then
    result:=True
  else
     Result:=False;
  ecf.Free;
end;

function CancelaCupomFiscal(Msg:boolean):integer;
var
  Ecf: TEcf;
  Aberto: Boolean;
begin
  Ecf:=TEcf.Create(VerConfMarcaECF);
  try
    Aberto:=Ecf.CheckCupomAberto;
    Ecf.CancelaCupom(Msg);

    case VerConfMarcaECF of
      Bematech, Yanco: Result:=strToInt(ecf.GetNumCupom)-1;

      Daruma:
      begin
        if Aberto then
          Result:=strToInt(ecf.GetNumCupom)-1
        else
          Result:=strToInt(ecf.GetNumCupom)-2;
      end;

    end;
  finally
    Ecf.Free;
    PostTotParciais;
    fdm.tbecf.Close;
    fdm.tbEcfItem.Close;

    {$IFDEF DEBUG}
      ShowMessage('DEBUG'+#13+'Numcupom='+IntToStr(Result));
    {$ENDIF}

  end;
end;

procedure EmiteLeituraX;
var
  Ecf:Tecf;

begin

  acesso1('Transações Fiscais');
  Ecf:=Tecf.Create(VerConfMarcaECF);
  Ecf.LeituraX;
  Ecf.Free;

end;

procedure EmiteReducaoZ;
var
  Ecf:Tecf;
  tmp: string;
begin
  Ecf:=Tecf.Create(VerConfMarcaECF);
  if ImpFiscal then
  begin
    try
    acesso1('Transações Fiscais');
    Ecf.ReducaoZ('', '');
    finally
      if Length(tmp)>0 then
      begin
      acesso1('Transações Fiscais');
      end;

      Ecf.Free;
    end;
  end;
end;

procedure EmiteMemoriaFiscalData;
var
  Ecf:Tecf;
  tmp: string;
begin
  Ecf:=Tecf.Create(VerConfMarcaECF);
  try
  acesso1('Transações Fiscais');
      Ecf.MemoriaFiscalData;
  finally
    if Length(tmp)>0 then
    begin
  acesso1('Transações Fiscais');
      end;
    Ecf.Free;
  end;
end;

procedure EmiteMemoriaFiscalDataSerial;
var
  Ecf:Tecf;
begin


          acesso1('Transações Fiscais');
          permissao(sqlacesso.FieldByName('consultar').AsString, 'PC', 'Transações Fiscais');
          sqlacesso.Destroy;

  Ecf:=Tecf.Create(VerConfMarcaECF);
  try
    Ecf.MemoriaFiscalDataSerial;
  finally
    Ecf.Free;
  end;
end;


procedure AbregavetaExecute;
var
  tmp: string;
  Ecf: TEcf;
begin
  if Impfiscal then
  begin
    Ecf := Tecf.Create(VerConfMarcaECF);

    try
  acesso1('Transações Fiscais');
        Ecf.AbreGaveta;
    finally
      Ecf.Free;

      if Length(tmp)>0 then
      begin
  acesso1('Transações Fiscais');
        end;
    end;
  end;
end;

procedure Sangria(const valor: extended);
var
  Ecf: TEcf;
begin
  Ecf:=Tecf.Create(VerConfMarcaECF);

  try
    Ecf.Sangria(valor);
  finally
    Ecf.Free;
  end;

end;

procedure Suprimento(const valor: extended; const descricao: string);
var
  Ecf: TEcf;
begin
  Ecf:=Tecf.Create(VerConfMarcaECF);

  try
    Ecf.Suprimento(valor, descricao);
  finally
    Ecf.Free;
  end;
end;

procedure PostTotParciais;
var
  Qr: tzquery;
  cmd: string;
  Ecf:Tecf;
  count: Integer;
begin
  Ecf:=TEcf.Create(VerConfMarcaECF);
  Qr:= tzquery.Create(nil);
  try
    if CheckRecSintegraHoje then
      Cmd:= 'UPDATE tbsintegra SET '+
        ' TotIsento='+realdblstr(Ecf.TotParciais.Isentos)+
        ', TotSubst='+realdblstr(Ecf.TotParciais.Substituicao)+
        ', TotNIncidencia='+realdblstr(Ecf.TotParciais.NaoIncidencia)+
        ', TotDesconto='+realdblstr(Ecf.TotParciais.Descontos)+
        ', NumCancelamento='+ IntToStr(Ecf.TotParciais.NumCancelamentos)+
        ', TotalCancelamento='+realdblstr(Ecf.TotParciais.Cancelamentos)+
        ', VrvendaBruta='+realdblstr(Ecf.TotParciais.VendaBruta)+
        ', GrandeTotal='+realdblstr(Ecf.TotParciais.GrandeTotal) +
        ', COOfinal='+QuotedStr(IntToStr(Ecf.NumCupom)) +
        ' WHERE data='+QuotedStr(FormatDateTime('yyyy-mm-dd', now))+
        ' AND num_serie_ecf='+QuotedStr(NumSerieImpFiscal)
    else
      Cmd:='INSERT INTO tbsintegra (data, num_serie_ecf, num_caixa_ecf,'+
        'COOinicial, COOfinal, CRO, CRZ, TotIsento, TotSubst, TotNIncidencia, '+
        'TotDesconto, NumCancelamento, TotalCancelamento, VrvendaBruta, '+
        'GrandeTotal) VALUES ('+
        QuotedStr(FormatDateTime('yyyy-mm-dd', now))+','+
        QuotedStr(NumSerieImpFiscal)+','+
        QuotedStr(NumCaixaImpFiscal)+','+
        QuotedStr(IntToStr(Ecf.NumCupom))+','+
        QuotedStr(IntToStr(Ecf.NumCupom))+','+
        QuotedStr(Ecf.GetCRO)+','+
        QuotedStr(Ecf.GetCRZ)+','+
        realdblstr(Ecf.TotParciais.Isentos)+','+
        realdblstr(Ecf.TotParciais.Substituicao)+','+
        realdblstr(Ecf.TotParciais.NaoIncidencia)+','+
        realdblstr(Ecf.TotParciais.Descontos)+','+
        IntToStr(Ecf.TotParciais.NumCancelamentos)+','+
        realdblstr(Ecf.TotParciais.Cancelamentos)+','+
        realdblstr(Ecf.TotParciais.VendaBruta)+','+
        realdblstr(Ecf.TotParciais.GrandeTotal)+')';

    with Qr do
    begin
      Connection:= Fdm.conector;
      Close;
      Sql.Clear;
      Sql.Add(cmd);

      {$IFDEF DEBUG}
      //SQL.SaveToFile('C:\outsintegra.sql');
      {$ENDIF}

      ExecSQL();
      Close;
    end;

    for count:=0 to Length(Ecf.TotParciais.Aliquotas) -1 do
    begin
      if CheckRecTotParcial(Ecf.TotParciais.Aliquotas[count].Aliq) then
        cmd:='UPDATE tbsintegra_aliq set total='+
          realdblstr(Ecf.TotParciais.Aliquotas[count].VrTotal)+
          ' WHERE data='+QuotedStr(FormatDateTime('yyyy-mm-dd', now))+
          ' AND num_serie_ecf='+QuotedStr(NumSerieImpFiscal)+
          ' AND aliquota='+realdblstr(Ecf.TotParciais.Aliquotas[count].Aliq)
      else
        cmd:='INSERT INTO tbsintegra_aliq (data, num_serie_ECF, aliquota, total) values('+
          QuotedStr(FormatDateTime('yyyy-mm-dd', now))+','+
          QuotedStr(NumSerieImpFiscal)+','+
          realdblstr(Ecf.TotParciais.Aliquotas[count].Aliq)+','+
          realdblstr(Ecf.TotParciais.Aliquotas[count].VrTotal)+')';

      with Qr do
      begin
        Close;
        Sql.Clear;
        Sql.Add(cmd);

        {$IFDEF DEBUG}
        //SQL.SaveToFile('C:\outsintegra_ali'+IntToStr(count)+'.sql');
        {$ENDIF}

        ExecSQL();
        Close;
      end;
    end;

  finally
    Qr.Free;
  end;
end;


end.
