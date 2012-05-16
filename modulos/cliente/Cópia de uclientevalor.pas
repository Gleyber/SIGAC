unit uclientevalor;

interface

uses
  sqlexpr, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DB, DBClient, ActnList,
  ExtCtrls, FMTBcd, Provider, jpeg;

type
  Tfclientevalor = class(TForm)
    ActionList1: TActionList;
    formatar: TAction;
    INSERIR: TAction;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    Label5: TLabel;
    Label25: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label30: TLabel;
    Label39: TLabel;
    Label37: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label52: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label12: TLabel;
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
    econtato: TDBEdit;
    ecargo: TDBEdit;
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
    DBRadioGroup2: TDBRadioGroup;
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
    DBEdit7: TDBEdit;
    Label26: TLabel;
    DBEdit10: TDBEdit;
    Label23: TLabel;
    etransportadora: TDBComboBox;
    Label6: TLabel;
    Label36: TLabel;
    estatus: TDBComboBox;
    ENP: TDBCheckBox;
    Label15: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    cnpjie: TAction;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBEdit3: TDBEdit;
    Label29: TLabel;
    DBCheckBox1: TDBCheckBox;
    Label31: TLabel;
    Label34: TLabel;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    SpeedButton3: TSpeedButton;
    Label28: TLabel;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label56: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    efax: TDBEdit;
    dbedit100: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit14: TDBEdit;
    lacrebr: TAction;


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
    procedure DBEdit6Exit(Sender: TObject);
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
    procedure eenderecoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label8Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label19Click(Sender: TObject);
    procedure Label21Click(Sender: TObject);
    procedure ecnpjExit(Sender: TObject);
    procedure eieExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure lacrebrExecute(Sender: TObject);
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
  fclientevalor: Tfclientevalor;
  percent,estoque: real;


implementation
uses funcoes, uprodutolocaliza, udm, umanu, uclientelocaliza, ucadastrop,
  ulistagem, udialogo,UvalidaIE, uconsumotexto;
{$R *.dfm}



procedure Tfclientevalor.Exitedit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clwhite;
end;


procedure Tfclientevalor.Enteredit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;



procedure Tfclientevalor.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if (key = 13) then
    Perform(wm_nextdlgctl, 0,0);
  if (key = 27) then
    Perform(wm_nextdlgctl, 1,0);
end;

procedure Tfclientevalor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fclientelocaliza.tabela.cancel;
  Release;
  fclientevalor := nil;
end;

procedure Tfclientevalor.ecodigoEnter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfclientevalor.ecodigoExit(Sender: TObject);
begin
  ecodigo.Color := clwhite;
end;

procedure Tfclientevalor.epercent3Enter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfclientevalor.epercent3Exit(Sender: TObject);
begin

  with  Sender as tdbedit do
    color := clwhite;
end;

procedure Tfclientevalor.evalor3Exit(Sender: TObject);
begin

  with  Sender as tdbedit do
    color := clwhite;

end;

procedure Tfclientevalor.evalor3Enter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfclientevalor.INSERIRExecute(Sender: TObject);
var
  sql: tsqldataset;
begin


          if (ecodigo.Text = '') or(ecodigo.Text = '0') or (enome.Text = '') then
          begin
            Application.MessageBox('Os campos: Código, Razão Social/Nome devem ser preenchidos!',
                                   'Erro', 0 + MB_ICONerror);
            abort;
          end;

         sql := tsqldataset.Create(application);

          with sql do begin
               SQLConnection := fdm.ConectXerifao;


           if ecodigo.Text <> '' then begin
              close;
              CommandText := 'select codigo, nome from tbcliente where codigo = ' +
                              quotedstr(ecodigo.Text) + contato;

              open;

          // se já existir
          if not IsEmpty then begin
            Application.MessageBox(pchar(fieldbyname('nome').asstring + ' Já está cadastrado com este código!'), 'Erro', 0 + MB_ICONerror);
            destroy;
            abort;
          end;
          end;



         if ecnpj.Text <> '' then begin

               close;
               CommandText := 'select cnpj, nome from tbcliente where cnpj = ' + quotedstr(ecnpj.Text) ;
               open;

          // se já existir
          if not IsEmpty then begin
            Application.MessageBox(pchar(fieldbyname('nome').asstring + ' Já está cadastrado com este CNPJ/CPF!'), 'Erro', 0 + MB_ICONerror);
            destroy;
            abort;
          end;
        end;


         if (eie.Text <> '') and (eie.Text <> 'ISENTO') then begin

               close;
               CommandText := 'select ie, nome from tbcliente where ie = ' + quotedstr(eie.Text) ;
               open;

          // se já existir
          if not IsEmpty then begin
            Application.MessageBox(pchar(fieldbyname('nome').asstring + ' Já está cadastrado com este I.E/R.G!'), 'Erro', 0 + MB_ICONerror);
            destroy;
            abort;
          end;
        end;

         if (ecnpj.Text = '') and (eie.Text = '') then begin

               close;
               CommandText := 'select nome from tbcliente where nome = ' + quotedstr(enome.Text) ;
               open;

          // se já existir
          if not IsEmpty then begin
            Application.MessageBox(pchar(fieldbyname('nome').asstring + ' Já está cadastrado, se este for outro cliente, altere o CNPJ/CPF ou IE/RG para diferenciar!'), 'Erro', 0 + MB_ICONerror);
            destroy;
            abort;
          end;
        end;

          destroy;
       end;

   if fclientelocaliza.contato then begin
      fclientelocaliza.tabela.edit;
      fclientelocaliza.tabela['ctp'] :='1';
   end;

   Grava(fclientelocaliza.tabela, 'tbcliente');
   GALTERA('cliente',fclientelocaliza.tabela.fieldbyname('codigo').asstring,'i');

end;

procedure Tfclientevalor.DBEdit6Exit(Sender: TObject);
begin
           fprodutolocaliza.tabela.edit;
           fprodutolocaliza.tabela['apelido'] := tiraacento(fprodutolocaliza.tabela.fieldbyname('apelido').asstring);

end;

procedure Tfclientevalor.SpeedButton1Click(Sender: TObject);
var
loc,historico:string;
begin
    focuscontrol(nil);

     valcnpj(ecnpj,fclientelocaliza.tabela);

        if (rfisjur.ItemIndex=1)and
           (sintegra) and (eie.text <> 'ISENTO') then begin

           if ChkInscEstadual(formatnumeric(eie.text),euf.Text) = false then begin
              showmessage(pchar('Esta inscrição não é válida para "'+euf.Text+'"!!!'));
              eie.setfocus;
              abort;
           end;
        end;


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
             commandtext := 'insert into tbfollowup (data,hora,assunto,historico,link) '+
             'values(now()'+
             ','+quotedstr(timetostr(now))+
             ',"DADOS ALTERADOS"'+
             ','+quotedstr(historico)+
             ','+ quotedstr(fclientelocaliza.tabela.FieldByName('chave').AsString) +')';
             execsql;

             commandtext := 'update venda set '+
                            ' nome = '+ quotedstr(fclientelocaliza.tabela.fieldbyname('nome').AsString)+
                            ', municipio = '+ quotedstr(fclientelocaliza.tabela.fieldbyname('municipio').AsString)+                            
                            ' where codigo = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('codigo').AsString);
             execsql;

             commandtext := 'update tbpedido set '+
                            ' nome = '+ quotedstr(fclientelocaliza.tabela.fieldbyname('nome').AsString)+
                            ', municipio = '+ quotedstr(fclientelocaliza.tabela.fieldbyname('municipio').AsString)+
                            ' where codigo = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('codigo').AsString);
             execsql;

             commandtext := 'update tbreceber set '+
                            ' nome = '+ quotedstr(fclientelocaliza.tabela.fieldbyname('nome').AsString)+
                            ' where codigo = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('codigo').AsString);
             execsql;

             commandtext := 'update tbacertovenda set '+
                            ' nome = '+ quotedstr(fclientelocaliza.tabela.fieldbyname('nome').AsString)+
                            ' where codigo = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('codigo').AsString);
             execsql;
        end;
     end;
    end;



   fclientelocaliza.tabela.Cancel;
   fclientelocaliza.tabela.refresh;
   fclientelocaliza.tabela.Locate('codigo',loc,[]);

  Close;

end;

procedure Tfclientevalor.SpeedButton2Click(Sender: TObject);
begin

   fclientelocaliza.tabela.cancel;
   Close;


end;

procedure Tfclientevalor.AlterarExecute(Sender: TObject);
var
  sql: tsqldataset;
begin

  if (ecodigo.Text = '') or (ecodigo.Text = '0')or(enome.Text = '') then
  begin
    Application.MessageBox('Os campos: Código, Razão Social/Nome devem ser preenchidos!',
      'Erro', 0 + MB_ICONerror);
    abort;
  end;


         sql := tsqldataset.Create(application);

          with sql do begin
               SQLConnection := fdm.ConectXerifao;


         if ecodigo.Text <> '' then begin
               close;
               CommandText := 'select codigo, nome from tbcliente where codigo = ' + quotedstr(ecodigo.Text) +
                              ' and chave <> ' + quotedstr(fclientelocaliza.tabela.fieldbyname('chave').AsString)+
                               contato;
               open;

          // se já existir
          if not IsEmpty then begin
            Application.MessageBox(pchar(fieldbyname('nome').asstring + ' Já está cadastrado com este código!'), 'Erro', 0 + MB_ICONerror);
            destroy;
            abort;
          end;
        end;


         if ecnpj.Text <> '' then begin
               close;
               CommandText := 'select cnpj, nome from tbcliente where cnpj = ' + quotedstr(ecnpj.Text) +
                              ' and chave <> ' + quotedstr(fclientelocaliza.tabela.fieldbyname('chave').AsString);
               open;

          // se já existir
          if not IsEmpty then begin
            Application.MessageBox(pchar(fieldbyname('nome').asstring + ' Já está cadastrado com este CNPJ/CPF!'), 'Erro', 0 + MB_ICONerror);
            destroy;
            abort;
          end;
        end;


         if (eie.Text <> '') and (eie.Text <> 'ISENTO') then begin

               close;
               CommandText := 'select ie, nome from tbcliente where ie = ' + quotedstr(eie.Text)+
                              ' and chave <> ' + quotedstr(fclientelocaliza.tabela.fieldbyname('chave').AsString);
                              open;

          // se já existir
          if not IsEmpty then begin
            Application.MessageBox(pchar(fieldbyname('nome').asstring + ' Já está cadastrado com este I.E/R.G!'), 'Erro', 0 + MB_ICONerror);
            destroy;
            abort;
          end;
        end;

         if (ecnpj.Text = '') and (eie.Text = '') then begin

               close;
               CommandText := 'select nome from tbcliente where nome = ' + quotedstr(enome.Text) +
                              ' and chave <> ' + quotedstr(fclientelocaliza.tabela.fieldbyname('chave').AsString);
               open;

          // se já existir
          if not IsEmpty then begin
            Application.MessageBox(pchar(fieldbyname('nome').asstring + ' Já está cadastrado, se este for outro cliente, altere o CNPJ/CPF ou IE/RG para diferenciar!'), 'Erro', 0 + MB_ICONerror);
            destroy;
            abort;
          end;
        end;

          destroy;
       end;

  Altera(fclientelocaliza.tabela, 'tbcliente');
  GALTERA('cliente',fclientelocaliza.tabela.fieldbyname('codigo').asstring,'a');


  with fdm.query2 do begin
       close;
       commandtext := 'update tbentrada set cnpj = '+
                      quotedstr(fclientelocaliza.tabela.fieldbyname('cnpj').asstring)+
                      ' where codigo = '+
                      quotedstr(fclientelocaliza.tabela.fieldbyname('codigo').asstring);
       execsql;
  end;


end;

procedure Tfclientevalor.FormCreate(Sender: TObject);
var
i:integer;
begin
          if fclientelocaliza.contato then
             contato := ' and ctp is not null '
          else
             contato := ' and ctp is null ';

            if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\cadastrog.jpg')) then
                                imageform('imagecliente',alclient, fclientevalor,
                                (PChar(ExtractFilePath(ParamStr(0)) +'imagem\cadastrog.jpg')));


          for i := 0 to componentcount - 1 do begin
            if Components[i] is tdbedit then  begin
               if (tdbedit(Components[i]).Name = 'enome') or
                  (tdbedit(Components[i]).Name = 'enomecurto') or
                  (tdbedit(Components[i]).Name = 'emunicipio') or
                  (tdbedit(Components[i]).Name = 'ecnpj') or
                  (tdbedit(Components[i]).Name = 'eie') or
                  (tdbedit(Components[i]).Name = 'eendereco')  then
               else
                  tdbedit(Components[i]).OnExit := exitedit;
               tdbedit(Components[i]).OnEnter := enteredit;
            end;
         end;

         combosexecute(self);

         enp.visible := responsavel = 'FABIO VITRINE';

         if responsavel  = 'LACRE DO BRASIL' then
            lacrebrexecute(self);



end;

procedure Tfclientevalor.combosExecute(Sender: TObject);
begin

        with fdm.query1 do begin

             close;
             commandtext := 'select tipocliente from tbtipocliente order by tipocliente';
             open;

             etipocliente.Items.Clear;

             while not eof do begin
                etipocliente.Items.Add(fieldbyname('tipocliente').AsString);
                next;
             end;


            Close;
            commandtext := 'select nome, classe from tbfuncionario where ' +
                           'classe ="V" order by nome ';
            Open;

            evendedor.Items.Clear;

            while not EOF do
            begin
              if fdm.query1 ['nome'] <> null then
                  evendedor.Items.Add(FieldByName('nome').AsString);
              next;
              end;


            Close;
            commandtext := 'select nome from tbfornecedor where '+
                           '(categoria = "T" or categoria = "A") order by nome';
            Open;

            etransportadora.Items.Clear;

           First;

          while not EOF do
          begin
            if FieldByName('nome').Text <> '' then
               etransportadora.Items.Add(FieldByName('nome').Text);
            Next;
           end;


            Close;
            commandtext := 'select nome from tbstatus order by nome';
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

end;

procedure Tfclientevalor.enomeExit(Sender: TObject);
begin
        fclientelocaliza.tabela.edit;
        fclientelocaliza.tabela['nome'] := tiraacento(fclientelocaliza.tabela.fieldbyname('nome').asstring);
        enome.Color := clwhite;

end;

procedure Tfclientevalor.enomecurtoExit(Sender: TObject);
begin
        fclientelocaliza.tabela.edit;
        fclientelocaliza.tabela['nomecurto'] := tiraacento(fclientelocaliza.tabela.fieldbyname('nomecurto').asstring);
        enomecurto.Color := clwhite;

end;

procedure Tfclientevalor.emunicipioExit(Sender: TObject);
begin
        fclientelocaliza.tabela.edit;
        fclientelocaliza.tabela['municipio'] := tiraacento(fclientelocaliza.tabela.fieldbyname('municipio').asstring);
        emunicipio.Color := clwhite;

end;

procedure Tfclientevalor.eenderecoExit(Sender: TObject);
begin
        fclientelocaliza.tabela.edit;
        fclientelocaliza.tabela['endereco'] := tiraacento(fclientelocaliza.tabela.fieldbyname('endereco').asstring);
        eendereco.Color := clwhite;

end;

procedure Tfclientevalor.ecnpjKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8,#13]) then abort;
end;

procedure Tfclientevalor.TCExecute(Sender: TObject);
begin
        SpeedButton1Click(self);
end;

procedure Tfclientevalor.eenderecoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if eendereco.Modified = True then
    if (key = 13) and (eendereco.Text <> '') then  begin
            Application.CreateForm(tflistagem, flistagem);
            flistagem.loc := eendereco.Text;
            flistagem.controle := 'cliente';
            flistagem.tabela.IndexFieldNames :='nome';
            flistagem.filtro := ' where  nome like '+   quotedstr(uppercase(eendereco.Text) + '%');
            flistagem.page :='cep';
            flistagem.Showmodal;
    end;

end;

procedure Tfclientevalor.Label8Click(Sender: TObject);
begin
              Acesso1('Cliente');
              fcadastrop:=tfcadastrop.Create(self,'tipocliente','',
                      'O campo deve ser preenchido!',
                      'tipocliente','tipocliente',TRUE );
              desativar(fcadastrop);
              fcadastrop.showmodal;
              combosExecute(self);

end;

procedure Tfclientevalor.Label15Click(Sender: TObject);
begin
        fmenu.funcionarioExecute(self);
        combosExecute(self);
end;

procedure Tfclientevalor.Label19Click(Sender: TObject);
begin
        fmenu.fornecedorExecute(self);
        combosExecute(self);
end;

procedure Tfclientevalor.Label21Click(Sender: TObject);
begin

         cadp ('tbstatus', '',       //tabela que vai usar ou cod sql na 2ª
              'nome','',           //campos que nao devem duplicar
              '','','',                 //combo1(campo,tabela,nomecampotabela)
              '','','',                 //combo2(campo,tabela,nomecampotabela)
              '',                     //campo auto incremento
              '',                       //campo auto incremento
              3);                       //onde vai comecar a criar os campos

          combosExecute(self);

end;

procedure Tfclientevalor.ecnpjExit(Sender: TObject);
begin
         if ecnpj.Modified then
             valcnpj(ecnpj,fclientelocaliza.tabela);

         ecnpj.color := clwhite;
end;

procedure Tfclientevalor.eieExit(Sender: TObject);
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

procedure Tfclientevalor.SpeedButton3Click(Sender: TObject);
begin
      fdialogo := tfdialogo.Create(self, 'cliente');
      fdialogo.showmodal;
end;

procedure Tfclientevalor.lacrebrExecute(Sender: TObject);
var
i:integer;
begin
          for i := 0 to componentcount - 1 do begin
            if Components[i] is tdbedit then  begin
               if (tdbedit(Components[i]).Name = 'DBEdit1') or
                  (tdbedit(Components[i]).Name = 'ecodigo') or
                  (tdbedit(Components[i]).Name = 'DBEdit5') then
               else
                  tdbedit(Components[i]).Top := tdbedit(Components[i]).Top +32;
             end;
          end;

          for i := 0 to componentcount - 1 do begin
            if Components[i] is tlabel then  begin
               if (tlabel(Components[i]).Name = 'Label2') or
                  (tlabel(Components[i]).Name = 'Label3') or
                  (tlabel(Components[i]).Name = 'Label30') or
                  (tlabel(Components[i]).Name = 'Label7') or
                  (tlabel(Components[i]).Name = 'Label36') then
               else
                  tlabel(Components[i]).Top := tlabel(Components[i]).Top +32;
             end;
          end;

            Label4.Top:=71;
            Label4.Left:= 96;
            enome.Top:=84;
            enome.left:=96;
            enome.Width := 689;
            etransportadora.Top := etransportadora.Top +32;
            evendedor.Top := evendedor.Top +32;
            DBComboBox1.Top := DBComboBox1.Top+32;
            euf.Top := euf.Top+32;
            Label29.hide;
            DBEdit3.hide;
            Label34.hide;
            DBCheckBox4.hide;
            DBCheckBox5.hide;
            DBCheckBox7.hide;
            Label31.hide;
            DBCheckBox2.hide;
            DBCheckBox3.hide;
            DBCheckBox6.hide;
            DBCheckBox1.hide;
            Label35.hide;
            dbedit100.hide;
            Label38.hide;
            DBEdit11.hide;
            Label56.hide;
            DBEdit9.hide;
            Label40.hide;
            DBEdit14.hide;
            Label33.hide;
            efax.hide;
            Label5.Top:=39;
            Label5.left:=506;
            enomecurto.top:=52;
            enomecurto.left:=506;
            enomecurto.width:=281;
            enomecurto.TabOrder:=5;
            Label9.Left :=96;
            eendereco.Left :=96;
            eendereco.Width :=321;
            Label24.Left :=96;
            DBEdit6.Left :=96;
            DBEdit6.Width :=445;
            DBRadioGroup2.Hide;
            Label52.Caption := 'Celular';

end;

end.
