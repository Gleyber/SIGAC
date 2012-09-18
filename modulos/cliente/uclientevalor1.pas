unit uclientevalor1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DB, DBClient, ActnList,
  ExtCtrls,  Provider, jpeg, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  Tfclientevalor1 = class(TForm)
    ActionList1: TActionList;
    INSERIR: TAction;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    Label25: TLabel;
    Label10: TLabel;
    Label30: TLabel;
    Label39: TLabel;
    Label37: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label52: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    lcid: TLabel;
    Label20: TLabel;
    Label17: TLabel;
    Label1: TLabel;
    Label27: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    efone: TDBEdit;
    ecodigo: TDBEdit;
    enomecurto: TDBEdit;
    enome: TDBEdit;
    eendereco: TDBEdit;
    ebairro: TDBEdit;
    emunicipio: TDBEdit;
    ecep: TDBEdit;
    eie: TDBEdit;
    eemail: TDBEdit;
    euf: TDBComboBox;
    enascimento: TDBEdit;
    etipocliente: TDBComboBox;
    esite: TDBEdit;
    DBEdit2: TDBEdit;
    enumero: TDBEdit;
    ecomplemento: TDBEdit;
    eramal: TDBEdit;
    ecnpj: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    ecepcobranca: TDBEdit;
    DBComboBox1: TDBComboBox;
    rfisjur: TDBRadioGroup;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Alterar: TAction;
    Label8: TLabel;
    combos: TAction;
    TC: TAction;
    DBEdit5: TDBEdit;
    evendedor: TDBComboBox;
    Label22: TLabel;
    Label24: TLabel;
    DBEdit6: TDBEdit;
    dbedit7: TDBEdit;
    lcid1: TLabel;
    DBEdit10: TDBEdit;
    Label23: TLabel;
    Label36: TLabel;
    estatus: TDBComboBox;
    Label15: TLabel;
    Label21: TLabel;
    cnpjie: TAction;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBEdit3: TDBEdit;
    Label29: TLabel;
    Label31: TLabel;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    SpeedButton3: TSpeedButton;
    Label28: TLabel;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    Label32: TLabel;
    Label41: TLabel;
    DBEdit15: TDBEdit;
    Label42: TLabel;
    DBEdit16: TDBEdit;
    Label43: TLabel;
    DBEdit17: TDBEdit;
    Label12: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label26: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    Label6: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    DBEdit9: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit20: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    Label35: TLabel;
    ecnpjb: TDBEdit;
    Label38: TLabel;
    DBEdit23: TDBEdit;
    lbanco: TDBText;
    DBEdit21: TDBEdit;
    Label40: TLabel;
    DBEdit22: TDBEdit;
    Label44: TLabel;
    DBComboBox2: TDBComboBox;
    Label33: TLabel;
    SpeedButton4: TSpeedButton;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    tbbc: TZQuery;
    ds: TDataSource;
    ebanco: TDBLookupComboBox;
    Label34: TLabel;
    eusucart: TDBComboBox;
    gp: TZQuery;
    dsgp: TDataSource;
    cgp: TDBLookupComboBox;
    Label48: TLabel;
    DBCheckBox1: TDBCheckBox;


        procedure EnterEdit(Sender: TObject);
        procedure ExitEdit(Sender: TObject);



    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ecodigoEnter(Sender: TObject);
    procedure ecodigoExit(Sender: TObject);
    procedure epercent3Enter(Sender: TObject);
    procedure epercent3Exit(Sender: TObject);
    procedure evalor3Exit(Sender: TObject);
    procedure evalor3Enter(Sender: TObject);
    procedure INSERIRExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure AlterarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure combosExecute(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure enomecurtoExit(Sender: TObject);
    procedure emunicipioExit(Sender: TObject);
    procedure eenderecoExit(Sender: TObject);
    procedure ecnpjKeyPress(Sender: TObject; var Key: Char);
    procedure TCExecute(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label21Click(Sender: TObject);
    procedure eieExit(Sender: TObject);
    procedure ecnpjExit(Sender: TObject);
    procedure ecnpjbExit(Sender: TObject);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure cgpClick(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBRadioGroup5Change(Sender: TObject);
  private
        contato:string;
   { Private declarations }
  public

 modo,
grau ,
endereco ,
numero ,
bairro ,
cidade ,
cep ,
uf ,
fone ,
fone2 ,
fone3 ,
email:  string;
    { Public declarations }
  end;

var
  fclientevalor1: Tfclientevalor1;
  percent,estoque: real;


implementation
uses funcoes,  udm, umanu, uclientelocaliza,
   UvalidaIE, uconsumotexto, FDadosAdicionaisOBS;
{$R *.dfm}



procedure Tfclientevalor1.Exitedit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clwhite;
end;


procedure Tfclientevalor1.Enteredit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;



procedure Tfclientevalor1.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if (key = 13) then
    Perform(wm_nextdlgctl, 0,0);
  if (key = 27) then
    Perform(wm_nextdlgctl, 1,0);
end;

procedure Tfclientevalor1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fclientelocaliza.tabela.cancel;
  Release;
  fclientevalor1 := nil;
end;

procedure Tfclientevalor1.ecodigoEnter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfclientevalor1.ecodigoExit(Sender: TObject);
begin
  ecodigo.Color := clwhite;
end;

procedure Tfclientevalor1.epercent3Enter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfclientevalor1.epercent3Exit(Sender: TObject);
begin

  with  Sender as tdbedit do
    color := clwhite;
end;

procedure Tfclientevalor1.evalor3Exit(Sender: TObject);
begin

  with  Sender as tdbedit do
    color := clwhite;

end;

procedure Tfclientevalor1.evalor3Enter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfclientevalor1.INSERIRExecute(Sender: TObject);
var
  sql: tzquery;
  var m:string;
begin


          if (enome.Text = '') then
          begin
            Application.MessageBox('O campo: Razão Social/Nome devem ser preenchidos!',
                                   'Atenção', 0 + MB_ICONwarning);
            abort;
          end;

          sql :=  tzquery.Create(application);
          sql.Connection := fdm.conector ;

          with sql do begin

               close;
               sql.clear;
               sql.add( 'select chave from tbcliente where codigo > 0 and (flag <> "D" or flag is null) and cnpj = '+
                       quotedstr(fclientelocaliza.tabela.fieldbyname('cnpj').AsString));
               open;

               if fieldbyname('chave').AsInteger >0 then msg('#Este CNPJ já está cadastrado.',0);

               if fclientelocaliza.contato then
                  m:='min'
               else
                  m:='max';

               close;
               sql.clear;
               sql.add( 'select '+m+'(codigo) as codigo from tbcliente where chave > 0 ' + contato);
               open;


              fclientelocaliza.tabela.Edit;
              if fclientelocaliza.contato then
                 fclientelocaliza.tabela ['codigo'] := fieldbyname('codigo').AsInteger + (-1)
              else
                 fclientelocaliza.tabela ['codigo'] := fieldbyname('codigo').AsInteger + 1;

              fclientelocaliza.tabela ['transportadora'] := tiraacento(copy(tiraespaco(fclientelocaliza.tabela.fieldbyname('nome').AsString),1,6)+
                                                                                       fclientelocaliza.tabela.fieldbyname('codigo').AsString) ;
              fclientelocaliza.tabela ['filial'] :=copy(inttostr(fclientelocaliza.tabela.fieldbyname('codigo').AsInteger * trunc(date)),1,6);


           if ecodigo.Text <> '' then begin
              close;
              sql.clear;
              sql.add('select codigo, nome from tbcliente where codigo = ' +
                       quotedstr(ecodigo.Text) + contato);
              open;

          // se já existir
          if not IsEmpty then begin
            Application.MessageBox(pchar(fieldbyname('nome').asstring + ' Já está cadastrado com este código!'), 'Atenção', 0 + MB_ICONwarning);
            destroy;
            abort;
          end;
          end;

          destroy;
       end;

   if fclientelocaliza.contato then begin
      fclientelocaliza.tabela.edit;
      fclientelocaliza.tabela['ctp'] :='1';
      fclientelocaliza.tabela ['transportadora'] := null;
      fclientelocaliza.tabela ['filial'] := null;
   end;

   Grava(fclientelocaliza.tabela, nil,'tbcliente');
   GALTERA('4',fclientelocaliza.tabela.fieldbyname('codigo').asstring,'i');

end;

procedure Tfclientevalor1.SpeedButton1Click(Sender: TObject);
var
loc,historico:string;
begin
              
    focuscontrol(nil);

      if fclientelocaliza.tabela['cnpj'] = null then msg('#CNPJ deve ser preenchido.',0);

      if (not fclientelocaliza.contato) and
         ((fclientelocaliza.tabela['cnpj'] ='000.000.000-00') or
          (fclientelocaliza.tabela['cnpj'] ='00.000.000/0000-00')) then msg('#CPF/CNPJ não é válido.',0);

       if (fclientelocaliza.tabela['tpconta'] = null) then msg('#Escolha se é CC ou poupança',0);

        if cgp.Text ='' then begin
           showmessage('Escolha o grupo do cliente.');
           cgp.setfocus;
           abort;
        end;

        if (fclientelocaliza.tabela['cnpjconta'] = null) or
           (fclientelocaliza.tabela['Titular'] = null) then msg('#Preencha o CPF/CNPJ do titular da conta e o nome do titular.',0);

     fclientelocaliza.tabela.edit;
     fclientelocaliza.tabela['codigogp'] := gp.fieldbyname('codigo').AsInteger;

     if fclientelocaliza.tabela['cargo'] = 'DUP' then
     begin
       if MessageDlg('O problema de DUPLICAÇÃO FORÇADA foi resolvido nesta gravação?',mtConfirmation,mbYesNoCancel,0) = mrYes then
       begin
         fclientelocaliza.tabela.Edit;
         fclientelocaliza.tabela['cargo'].clear;
       end;
     end;

     valcnpj(ecnpj,fclientelocaliza.tabela,nil,'cnpj');

        if (rfisjur.ItemIndex=1)and
           (sintegra) and (eie.text <> 'ISENTO') then begin

           if ChkInscEstadual(formatnumeric(eie.text),euf.Text) = false then begin
              showmessage(pchar('Esta inscrição não é válida para "'+euf.Text+'"!!!'));
              eie.setfocus;
              abort;
           end;
        end;

   fclientelocaliza.tabela.edit;
   fclientelocaliza.tabela['flagsite'] := '1';

   if modo = 'gravar' then
      inserirexecute(self)

   else if modo = 'alterar'  then
        alterarexecute(self);

   loc := ecodigo.Text;


   if modo = 'alterar'  then begin
      if(endereco<> fclientelocaliza.tabela.FieldByName('endereco').AsString) or
        (numero<> fclientelocaliza.tabela.FieldByName('numero').AsString) or
        (bairro<> fclientelocaliza.tabela.FieldByName('bairro').AsString) or
        (cidade<> fclientelocaliza.tabela.FieldByName('municipio').AsString) or
        (cep<> fclientelocaliza.tabela.FieldByName('cep').AsString) or
        (uf<> fclientelocaliza.tabela.FieldByName('uf').AsString) or
        (fone<> fclientelocaliza.tabela.FieldByName('fone').AsString) or
        (fone2<> fclientelocaliza.tabela.FieldByName('fone2').AsString) or
        (fone3<> fclientelocaliza.tabela.FieldByName('fone3').AsString) or
        (email<> fclientelocaliza.tabela.FieldByName('email').AsString) then begin

      historico := 'ALTERADO POR: ' + usuario+#13+#13;

      if endereco<> fclientelocaliza.tabela.FieldByName('endereco').AsString then
         historico := historico + 'ENDEREÇO: ' + endereco+#13;

      if numero<> fclientelocaliza.tabela.FieldByName('numero').AsString then
         historico :=  historico +  'NÚMERO: ' +numero+#13;

      if bairro<> fclientelocaliza.tabela.FieldByName('bairro').AsString then
         historico :=  historico +  'BAIRRO: ' +bairro+#13;

      if cidade<> fclientelocaliza.tabela.FieldByName('municipio').AsString then
         historico := historico +  'CIDADE: ' + cidade+#13;

      if cep<> fclientelocaliza.tabela.FieldByName('cep').AsString then
         historico := historico +  'CEP: ' + cep+#13;

      if uf<> fclientelocaliza.tabela.FieldByName('uf').AsString then
         historico := historico +  'UF: ' + uf+#13;

      if fone<> fclientelocaliza.tabela.FieldByName('fone').AsString then
         historico := historico +  'FONE: ' + fone+#13;

      if fone2<> fclientelocaliza.tabela.FieldByName('fone2').AsString then
         historico := historico +  'FONE2: ' + fone2+#13;

      if fone3<> fclientelocaliza.tabela.FieldByName('fone3').AsString then
         historico :=  historico + 'CELULAR: ' + fone3+#13;

      if email<> fclientelocaliza.tabela.FieldByName('email').AsString then
         historico := historico +  'E-MAIL: ' + email+#13;


        with fdm.query1 do begin
             close;
              sql.clear;
              sql.add(  'insert into tbfollowup (data,hora,assunto,historico,link) '+
             'values(now()'+
             ','+quotedstr(timetostr(now))+
             ',"DADOS ALTERADOS"'+
             ','+quotedstr(historico)+
             ','+ quotedstr(fclientelocaliza.tabela.FieldByName('chave').AsString) +')');
             execsql;

              sql.clear;
              sql.add(  'update venda set '+
                            ' nome = '+ quotedstr(fclientelocaliza.tabela.fieldbyname('nome').AsString)+
                            ', municipio = '+ quotedstr(fclientelocaliza.tabela.fieldbyname('municipio').AsString)+
                            ' where codigo = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('codigo').AsString));
             execsql;

              sql.clear;
              sql.add(  'update tbpedido set '+
                            ' nome = '+ quotedstr(fclientelocaliza.tabela.fieldbyname('nome').AsString)+
                            ', municipio = '+ quotedstr(fclientelocaliza.tabela.fieldbyname('municipio').AsString)+
                            ' where codigo = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('codigo').AsString));
             execsql;

              sql.clear;
              sql.add(  'update tbreceber set '+
                            ' nome = '+ quotedstr(fclientelocaliza.tabela.fieldbyname('nome').AsString)+
                            ' where codigo = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('codigo').AsString));
             execsql;

              sql.clear;
              sql.add(  'update tbacertovenda set '+
                            ' nome = '+ quotedstr(fclientelocaliza.tabela.fieldbyname('nome').AsString)+
                            ' where codigo = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('codigo').AsString));
             execsql;
        end;
     end;
    end;


    if (fclientelocaliza.tabela['ctp'] <> null) and (not fclientelocaliza.contato) then
        if Application.MessageBox('Deseja transformar o contato em cliente? ',
                                  'Confirme', 4 + MB_ICONQUESTION) = idyes then
         showmessage('Este contato, agora, é o cliente número ' +
                     contatocliente(fclientelocaliza.tabela.fieldbyname('chave').AsString,
                     fclientelocaliza.tabela.fieldbyname('nome').AsString));


   fclientelocaliza.tabela.close;
   fclientelocaliza.tabela.open;
   fclientelocaliza.formatarExecute(self);
   fclientelocaliza.tabela.Locate('codigo',loc,[]);

  Close;

end;

procedure Tfclientevalor1.SpeedButton2Click(Sender: TObject);
begin

   fclientelocaliza.tabela.cancel;
   Close;


end;

procedure Tfclientevalor1.AlterarExecute(Sender: TObject);
var
flag :string;
begin

  if (ecodigo.Text = '') or (ecodigo.Text = '0')or(enome.Text = '') then
  begin
    Application.MessageBox('Os campos: Código, Razão Social/Nome devem ser preenchidos!',
      'Atenção', 0 + MB_ICONwarning);
    abort;
  end;


  Altera(fclientelocaliza.tabela, nil,'tbcliente');
  GALTERA('4',fclientelocaliza.tabela.fieldbyname('codigo').asstring,'a');

        selecione('update tbfinanceiro set '+
                  ' nome='+quotedstr(enome.Text)+
                  ' ,nbanco='+quotedstr(lbanco.caption)+
                  ' ,carteira = '+quotedstr(DBEdit4.text)+
                  ' where codigo = '+quotedstr(ecodigo.Text));

{        selecione('update tbfinanceirop set '+
                  ' nome='+quotedstr(enome.Text)+
                  ' ,nbanco='+quotedstr(lbanco.caption)+
                  ' ,carteira = '+quotedstr(DBEdit4.text)+
                  ' where codigo = '+quotedstr(ecodigo.Text));}



        if DBRadioGroup5.ItemIndex =2 then flag :=  ' "D" '
        else flag :=  ' null ';

        selecione('update tbfinanceiro set flag1 = '+flag+' where codigo = ' + QuotedStr(ecodigo.Text));
        //selecione('update tbfinanceirop set flag1 = '+flag+' where codigo = ' + QuotedStr(ecodigo.Text));

end;

procedure Tfclientevalor1.FormCreate(Sender: TObject);
var
i:integer;
begin


          if fclientelocaliza.contato then
             contato := ' and ctp is not null '
          else
             contato := ' and ctp is null ';

            if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\cadastrog.jpg')) then
                                imageform('imagecliente',alclient, fclientevalor1,
                                (PChar(ExtractFilePath(ParamStr(0)) +'imagem\cadastrog.jpg')),nil);


          for i := 0 to componentcount - 1 do begin
            if Components[i] is tdbedit then  begin
               if (tdbedit(Components[i]).Name = 'enome') or
                  (tdbedit(Components[i]).Name = 'enomecurto') or
                  (tdbedit(Components[i]).Name = 'emunicipio') or
                  (tdbedit(Components[i]).Name = 'ecnpj') or
                  (tdbedit(Components[i]).Name = 'ecnpjb') or                  
                  (tdbedit(Components[i]).Name = 'eie') or
                  (tdbedit(Components[i]).Name = 'eendereco')  then
               else
                  tdbedit(Components[i]).OnExit := exitedit;
               tdbedit(Components[i]).OnEnter := enteredit;
            end;
         end;

         combosexecute(self);
         tbbc.open;
         gp.Open;

end;

procedure Tfclientevalor1.combosExecute(Sender: TObject);
begin

        with fdm.query1 do begin

             close;
              sql.clear;
              sql.add( 'select tipocliente from tbtipocliente order by tipocliente');
             open;

             etipocliente.Items.Clear;

             while not eof do begin
                etipocliente.Items.Add(fieldbyname('tipocliente').AsString);
                next;
             end;


            Close;
              sql.clear;
              sql.add(  'select nome, classe from tbfuncionario where ' +
                           '(classe ="V") or (classe="O") order by nome ');
            Open;

            evendedor.Items.Clear;

            while not EOF do
            begin
              if fdm.query1 ['nome'] <> null then
                  evendedor.Items.Add(FieldByName('nome').AsString);
              next;
              end;


            Close;
              sql.clear;
              sql.add(  'select nome from tbstatus order by nome');
            Open;

          estatus.Items.Clear;

          First;

          while not EOF do
          begin
            if FieldByName('nome').Text <> '' then
              estatus.Items.Add(FieldByName('nome').Text);
            Next;
          end;


        close;
        end;

        eusucart.Items := evendedor.Items;

end;

procedure Tfclientevalor1.enomeExit(Sender: TObject);
begin
        fclientelocaliza.tabela.edit;
        fclientelocaliza.tabela['nome'] := tiraacento(fclientelocaliza.tabela.fieldbyname('nome').asstring);
        enome.Color := clwhite;

end;

procedure Tfclientevalor1.enomecurtoExit(Sender: TObject);
begin
        fclientelocaliza.tabela.edit;
        fclientelocaliza.tabela['nomecurto'] := tiraacento(fclientelocaliza.tabela.fieldbyname('nomecurto').asstring);
        enomecurto.Color := clwhite;

end;

procedure Tfclientevalor1.emunicipioExit(Sender: TObject);
begin
        fclientelocaliza.tabela.edit;
        fclientelocaliza.tabela['municipio'] := tiraacento(fclientelocaliza.tabela.fieldbyname('municipio').asstring);
        emunicipio.Color := clwhite;

end;

procedure Tfclientevalor1.eenderecoExit(Sender: TObject);
begin
        fclientelocaliza.tabela.edit;
        fclientelocaliza.tabela['endereco'] := tiraacento(fclientelocaliza.tabela.fieldbyname('endereco').asstring);
        eendereco.Color := clwhite;

end;

procedure Tfclientevalor1.ecnpjKeyPress(Sender: TObject; var Key: Char);
begin
          if not (key in ['0'..'9', #8,#13]) then abort;
end;

procedure Tfclientevalor1.TCExecute(Sender: TObject);
begin
        SpeedButton1Click(self);
end;

procedure Tfclientevalor1.Label15Click(Sender: TObject);
begin
        cadg(cadfuncionario,'nome', 6);
        combosExecute(self);
end;

procedure Tfclientevalor1.Label21Click(Sender: TObject);
begin

         cadp ('tbstatus', '', '',      //tabela que vai usar ou cod sql na 2ª + titulo
              'nome','',           //campos que nao devem duplicar
              '','','',                 //combo1(campo,tabela,nomecampotabela)
              '','','',                 //combo2(campo,tabela,nomecampotabela)
              '','','',
              '',                     //campo auto incremento
              '',                       //campo auto incremento
              '',                       //campo que nao ser nulo
              '',
              3,0);                       //onde vai comecar a criar os campos + link

          combosExecute(self);

end;

procedure Tfclientevalor1.eieExit(Sender: TObject);
begin
  with  Sender as tdbedit do begin
        color := clwhite;
        if (rfisjur.ItemIndex=1)and (modified) and
           (sintegra) and (eie.text <> 'ISENTO') then begin

           if euf.Text ='' then begin
              showmessage('Escolha o estado do fornecedor!!!');
              euf.setfocus;
              abort;
           end;

           if ChkInscEstadual(formatnumeric(eie.text),euf.Text) = false then begin
              showmessage(pchar('Esta inscrição não é válida para "'+euf.Text+'"!!!'));
              eie.setfocus;
              abort;
           end;
        end;

  end;

end;

procedure Tfclientevalor1.ecnpjExit(Sender: TObject);
begin
         with sender as tdbedit do begin
              if Modified then
                  valcnpj(ecnpj,fclientelocaliza.tabela,nil,'cnpj');
                  color := clwhite;
         end;

end;

procedure Tfclientevalor1.ecnpjbExit(Sender: TObject);
begin
         with sender as tdbedit do begin
              if Modified then
                  valcnpj(ecnpjb,fclientelocaliza.tabela,nil,'cnpjconta');
                  color := clwhite;
         end;

end;

procedure Tfclientevalor1.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
          if not (key in ['0'..'9', #8,#13]) then abort;
end;

procedure Tfclientevalor1.cgpClick(Sender: TObject);
begin
          fclientelocaliza.tabela.edit;
          fclientelocaliza.tabela['nbanco']:= tbbc.fieldbyname('numero').asstring;
end;

procedure Tfclientevalor1.Label6Click(Sender: TObject);
begin

         cadp ('tbnbanco', '', '',      //tabela que vai usar ou cod sql na 2ª + titulo
              'nome','numero',           //campos que nao devem duplicar
              '','','',                 //combo1(campo,tabela,nomecampotabela)
              '','','',                 //combo2(campo,tabela,nomecampotabela)
              '','','',
              '',                     //campo auto incremento
              '',                       //campo auto incremento
              '',                       //campo que nao ser nulo
              '',
              2,0);                       //onde vai comecar a criar os campos + link

          tbbc.Refresh;

end;

procedure Tfclientevalor1.FormShow(Sender: TObject);
begin
        fclientelocaliza.tabela.Edit;
end;

procedure Tfclientevalor1.Label8Click(Sender: TObject);
begin
         cadp ('tbtipocliente', '', '',
              'tipocliente','',
              '','','',
              '','','',
              '','','',
              '',
              '',
              '',
              '',
              2,0);

         combosExecute(self);
end;

procedure Tfclientevalor1.SpeedButton3Click(Sender: TObject);
begin
  FrmDadosAdicionaisOBS := TFrmDadosAdicionaisOBS.Create(Self);
  FrmDadosAdicionaisOBS.dbmObs.DataSource := fclientelocaliza.ds;
  FrmDadosAdicionaisOBS.dbmObs.DataField  := 'obs1';
  FrmDadosAdicionaisOBS.ShowModal;
  FrmDadosAdicionaisOBS.Free;
end;

procedure Tfclientevalor1.DBRadioGroup5Change(Sender: TObject);
begin

      if DBRadioGroup5.ItemIndex = 2 then begin
         fclientelocaliza.tabela.edit;
         fclientelocaliza.tabela['dtcancelamento'] := date;
      end;

end;

end.










