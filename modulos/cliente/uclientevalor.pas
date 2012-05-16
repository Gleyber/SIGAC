unit uclientevalor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DB, DBClient, ActnList,
  ExtCtrls,  Provider, jpeg, ZAbstractRODataset, ZAbstractDataset,
  ZDataset,shellapi;
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
    DBComboBox1: TDBComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Alterar: TAction;
    Label8: TLabel;
    combos: TAction;
    TC: TAction;
    Label22: TLabel;
    Label24: TLabel;
    lcid1: TLabel;
    Label23: TLabel;
    Label6: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    cnpjie: TAction;
    Label29: TLabel;
    Label31: TLabel;
    Label34: TLabel;
    SpeedButton3: TSpeedButton;
    Label28: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label56: TLabel;
    Label38: TLabel;
    Label40: TLabel;
    lacrebr: TAction;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    pconta: TDataSetProvider;
    dsconta: TDataSource;
    tbconta: TClientDataSet;
    DBLookupComboBox1: TDBLookupComboBox;
    Label26: TLabel;
    Label48: TLabel;
    sconta: TZQuery;
    Label12: TLabel;
    Label21: TLabel;
    Label36: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    rfisjur: TDBRadioGroup;
    DBEdit1: TDBEdit;
    ecodigo: TDBEdit;
    etipocliente: TDBComboBox;
    enome: TDBEdit;
    enomecurto: TDBEdit;
    ecnpj: TDBEdit;
    eie: TDBEdit;
    DBEdit2: TDBEdit;
    efone: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit10: TDBEdit;
    enascimento: TDBEdit;
    evendedor: TDBComboBox;
    ecep: TDBEdit;
    eendereco: TDBEdit;
    enumero: TDBEdit;
    ecomplemento: TDBEdit;
    ebairro: TDBEdit;
    DBEdit8: TDBEdit;
    euf: TDBComboBox;
    ecepcobranca: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    dbedit7: TDBEdit;
    DBComboBox2: TDBComboBox;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit20: TDBEdit;
    DBComboBox3: TDBComboBox;
    eemail: TDBEdit;
    DBEdit4: TDBEdit;
    esite: TDBEdit;
    etransportadora: TDBComboBox;
    econtato: TDBEdit;
    ecargo: TDBEdit;
    dbedit100: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit14: TDBEdit;
    efax: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit3: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBEdit5: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    ENP: TDBCheckBox;
    Action1: TAction;


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
    procedure eenderecoExit(Sender: TObject);
    procedure ecnpjKeyPress(Sender: TObject; var Key: Char);
    procedure TCExecute(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label19Click(Sender: TObject);
    procedure ecnpjExit(Sender: TObject);
    procedure eieExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure lacrebrExecute(Sender: TObject);
    procedure Label26Click(Sender: TObject);
    procedure Label48Click(Sender: TObject);
    procedure ecepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action1Execute(Sender: TObject);
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
uses funcoes,  udm, umanu, uclientelocaliza, ucadastrop,
  ulistagem, UvalidaIE, uconsumotexto;
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


    if key = vk_f3 then begin
       codloc :='';

       periodo('cep','',188,369);

       if codloc <> '' then begin
          ecep.SetFocus;
          buscacep(fclientelocaliza.tabela,nil,codloc,'');
       end;

       codloc :='';
    end;

end;

procedure Tfclientevalor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   tbconta.close;
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
  contat:string;

begin
          if enome.Text = '' then
          begin
            Application.MessageBox('Razão Social/Nome devem ser preenchidos!',
                                   'Atenção', 0 + MB_ICONwarning);
            abort;
          end;


         noduplica('cnpj','nome','tbcliente',ecnpj.Text ,'',false);

         if eie.Text <> 'ISENTO' then
            noduplica('ie','nome','tbcliente',eie.Text ,'',false);

         noduplica('nome','nome','tbcliente',enome.Text ,'',false);


         if fclientelocaliza.contato then begin
            fclientelocaliza.tabela.edit;
            fclientelocaliza.tabela['ctp'] :='1';
         end;


          if fclientelocaliza.contato then
             contat := ' where ctp is not null '
          else
             contat := ' where ctp is null ';

   with fdm.query1 do  begin
        Close;
        sql.clear;
        sql.add('select max(codigo)as codigo from tbcliente '+contat);
        Open;
        fclientelocaliza.tabela.Edit;
        fclientelocaliza.tabela['codigo'] := fdm.query1.fieldbyname('codigo').AsInteger + 1;
        close;
   end;


   Grava(fclientelocaliza.tabela, nil,'tbcliente');
   GALTERA('4',fclientelocaliza.tabela.fieldbyname('codigo').asstring,'i');

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

     valcnpj(ecnpj,fclientelocaliza.tabela,nil,'cnpj');

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
              sql.clear;
              sql.add( 'insert into tbfollowup (data,hora,assunto,historico,link) '+
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
              sql.add( 'update tbreceber set '+
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
begin

          if enome.Text = '' then
          begin
            Application.MessageBox('Razão Social/Nome devem ser preenchidos!',
                                   'Atenção', 0 + MB_ICONwarning);
            abort;
          end;


         noduplica('codigo','nome','tbcliente',ecodigo.Text ,
                   fclientelocaliza.tabela.fieldbyname('chave').AsString,false);
         noduplica('cnpj','nome','tbcliente',ecnpj.Text ,
                   fclientelocaliza.tabela.fieldbyname('chave').AsString,false);
         if eie.Text <> 'ISENTO' then
            noduplica('ie','nome','tbcliente',eie.Text ,
                     fclientelocaliza.tabela.fieldbyname('chave').AsString,false);
         noduplica('nome','nome','tbcliente',enome.Text ,
                   fclientelocaliza.tabela.fieldbyname('chave').AsString,false);

          Altera(fclientelocaliza.tabela, nil,'tbcliente');
          GALTERA('cliente',fclientelocaliza.tabela.fieldbyname('codigo').asstring,'a');


          with fdm.query2 do begin
               close;
                sql.Clear;
                sql.add( 'update tbnota set '+
                         ' cnpj = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('cnpj').asstring)+
                         ' ,nome = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('nome').asstring)+
                         ' ,endereco = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('endereco').asstring+
                                                '  '+    fclientelocaliza.tabela.fieldbyname('numero').asstring+
                                                '  '+    fclientelocaliza.tabela.fieldbyname('complemento').asstring)+
                         ' ,bairro = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('bairro').asstring)+
                         ' ,cep = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('cep').asstring)+
                         ' ,municipio = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('municipio').asstring)+
                         ' ,fone = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('fone').asstring)+
                         ' ,uf = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('uf').asstring)+
                         ' ,ie = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('ie').asstring)+
                         ' where codigo = '+  quotedstr(fclientelocaliza.tabela.fieldbyname('codigo').asstring));
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
                                (PChar(ExtractFilePath(ParamStr(0)) +'imagem\cadastrog.jpg')),nil);


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

    if  responsavel = 'GEORGE HILTON' then begin
        Label44.Show;
        DBLookupComboBox1.Show;
        tbconta.Open;
    end;

    fclientelocaliza.tabela.edit;

    ecodigo.ReadOnly := Application.Title <> 'Empresarial_Net';    

end;

procedure Tfclientevalor.combosExecute(Sender: TObject);
begin

        with fdm.query1 do begin

             close;
              sql.clear;
              sql.add(  'select tipocliente from tbtipocliente order by tipocliente');
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
              sql.add(  'select nome from tbfornecedor where '+
                           '(categoria = "T" or categoria = "A") order by nome');
            Open;

            etransportadora.Items.Clear;

           First;

          while not EOF do
          begin
            if FieldByName('nome').Text <> '' then
               etransportadora.Items.Add(FieldByName('nome').Text);
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
        cadg(cadfuncionario,'nome', 6);
        combosExecute(self);
end;

procedure Tfclientevalor.Label19Click(Sender: TObject);
begin
        cadg(cadfornecedor, 'nome', 7);
        combosExecute(self);
end;

procedure Tfclientevalor.ecnpjExit(Sender: TObject);
begin
         if ecnpj.Modified then
             valcnpj(ecnpj,fclientelocaliza.tabela,nil,'cnpj');

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


        rfisjur.Left := 96;
        rfisjur.top := 36;
        Label2.Left := 187;
        Label2.top := 39;
        Label3.Left := 253;
        Label3.top := 39;
        Label22.Left := 304;
        Label22.top := 39;
        Label5.Left := 468;
        Label5.top := 39;

        DBEdit1.Left := 187;
        DBEdit1.top := 52;
        ecodigo.Left := 253;
        ecodigo.top := 52;
        evendedor.Left := 302;
        evendedor.top := 52;
        enomecurto.Left := 468;
        enomecurto.top := 52;

        Label4.Left := 96;
        Label4.top := 70;
        enome.Left := 96;
        enome.top := 82;
        enome.Width:= 662;

        Label11.Left := 96;
        Label11.top := 100;
        Label16.Left := 219;
        Label16.top := 100;
        Label1.Left := 311;
        Label1.top := 100;
        Label25.Left := 422;
        Label25.top := 100;
        econtato.Left := 96;
        econtato.top := 112;
        ecargo.Left := 219;
        ecargo.top := 112;
        ecnpj.Left := 310;
        ecnpj.top := 112;
        eie.Left := 422;
        eie.top := 112;

        Label9.Left := 96;
        Label9.top := 132;
        Label45.Left := 399;
        Label45.top := 132;
        Label46.Left := 454;
        Label46.top := 132;

        eendereco.Left := 96;
        eendereco.top := 146;
        eendereco.Width := 300;
        enumero.Left := 399;
        enumero.top := 146;
        ecomplemento.Left := 454;
        ecomplemento.top := 146;

        Label13.Left := 96;
        Label13.top := 164;
        lcid.Left := 195;
        lcid.top := 164;
        Label20.Left := 328;
        Label20.top := 164;
        Label17.Left := 395;
        Label17.top := 164;

        ebairro.Left := 96;
        ebairro.top := 178;
        ecep.Left := 328;
        ecep.top := 178;
        euf.Left := 395;
        euf.top := 178;

        i:=30;

        Label37.Left := 96;
        Label37.top := 166+i;
        Label10.Left := 121;
        Label10.top := 166+i;
        Label33.Left := 281;
        Label33.top := 166+i;
        Label33.caption := 'Fone3';
        Label14.Left := 201;
        Label14.top := 166+i;
        Label52.Left := 354;
        Label52.top := 166+i;
        Label52.Caption := 'Celular';
        Label23.Left := 481;
        Label23.top := 166+i;

        DBEdit2.Left := 96;
        DBEdit2.top := 178+i;
        efone.Left := 121;
        efone.top := 178+i;
        DBEdit13.Left := 201;
        DBEdit13.top := 178+i;
        efax.Left := 281;
        efax.top := 178+i;
        DBEdit12.Left := 353;
        DBEdit12.top := 178+i;
        DBEdit10.Left := 481;
        DBEdit10.top := 178+i;

        Label18.Left := 96;
        Label18.top := 198+i;
        Label39.Left := 270;
        Label39.top := 198+i;
        Label28.Left := 446;
        Label28.top := 198+i;
        eemail.Left := 96;
        eemail.top := 210+i;
        esite.Left := 271;
        esite.top := 210+i;
        DBEdit4.Left := 446;
        DBEdit4.top := 210+i;
        DBEdit8.Left := 618;
        DBEdit8.top := 210+i;

        Label24.Left := 96;
        Label24.top := 228+i;
        Label41.Left := 399;
        Label41.top := 228+i;
        Label42.Left := 454;
        Label42.top := 228+i;
//        DBCheckBox8.Left := 209;
  //      DBCheckBox8.top := 228+i;
        DBEdit6.Left := 96;
        DBEdit6.top := 242+i;
        DBEdit6.Width := 300;
        DBEdit15.Left := 399;
        DBEdit15.top := 242+i;
        DBEdit16.Left := 454;
        DBEdit16.top := 242+i;


        Label43.Left := 96;
        Label43.top := 260+i;
        lcid1.Left := 195;
        lcid1.top := 260+i;
        Label57.Left := 328;
        Label57.top := 260+i;
        Label58.Left := 395;
        Label58.top := 260+i;

        DBEdit17.Left := 96;
        DBEdit17.top := 274+i;
        DBEdit7.Left := 195;
        DBEdit7.top := 274+i;
        ecepcobranca.Left := 328;
        ecepcobranca.top := 274+i;
        DBComboBox1.Left := 395;
        DBComboBox1.top := 274+i;



        DBEdit5.Left := 126;
        DBEdit5.top := 338;
        DBEdit5.Width := 662;
        Label7.Left := 96;
        Label7.top := 338;


        Label8.hide;
        Label19.hide;
        Label21.hide;

        DBRadioGroup2.hide;
        Label35.hide;
        dbedit100.hide;
        Label38.hide;
        DBEdit11.hide;
        Label56.hide;
        Label27.hide;
        enascimento.hide;
        Label6.hide;
        etransportadora.hide;
        Label40.hide;
        DBEdit9.hide;
        DBEdit14.hide;
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
        ENP.hide;
        Label30.hide;
        Label36.hide;
        etipocliente.hide;
        SpeedButton3.Hide;


        rfisjur.taborder := 0;
        DBEdit1.taborder := 1;
        ecodigo.taborder := 2;
        evendedor.taborder := 3;
        enomecurto.taborder := 4;
        enome.taborder := 5;

        econtato.taborder := 6;
        ecargo.taborder := 7;
        ecnpj.taborder := 8;
        eie.taborder := 9;
        eendereco.taborder := 10;
        enumero.taborder := 11;
        ecomplemento.taborder := 12;
        ebairro.taborder := 13;
        ecep.taborder := 15;
        euf.taborder := 16;
        DBEdit2.taborder := 17;
        efone.taborder := 18;
        DBEdit13.taborder := 19;
        efax.taborder := 20;
        DBEdit12.taborder := 21;
        DBEdit10.taborder := 22;
        eemail.taborder := 23;
        esite.taborder := 24;
        DBEdit4.taborder := 25;
        DBEdit8.taborder := 26;
//        DBCheckBox8.taborder := 27;
//        DBEdit6.taborder := 28;
        DBEdit15.taborder := 29;
        DBEdit16.taborder := 30;
        DBEdit17.taborder := 31;
        DBEdit7.taborder := 32;
        ecepcobranca.taborder := 33;
        DBComboBox1.taborder := 34;
        DBEdit5.taborder := 35;

end;

procedure Tfclientevalor.Label26Click(Sender: TObject);
begin

         cadp ('tbregcli', '', '',      //tabela que vai usar ou cod sql na 2ª + titulo
              'nome','',           //campos que nao devem duplicar
              '','','',                 //combo1(campo,tabela,nomecampotabela)
              '','','',                 //combo2(campo,tabela,nomecampotabela)
              '','','',
              '',                     //campo auto incremento
              '',                       //campo auto incremento
              '',                       //campo que nao ser nulo
              '',
              3,0);                       //onde vai comecar a criar os campos

end;

procedure Tfclientevalor.Label48Click(Sender: TObject);
begin

         cadp ('tbcid', '', '',      //tabela que vai usar ou cod sql na 2ª + titulo
              'nome','',           //campos que nao devem duplicar
              'regiao','tbregcli','nome', //combo1(campo,tabela,nomecampotabela)
              '','','',                 //combo2(campo,tabela,nomecampotabela)
              '','','',
              '',                     //campo auto incremento
              '',                       //campo auto incremento
              'regiao',                       //campo que nao ser nulo
              '',
              2,0);                       //onde vai comecar a criar os campos

          combosExecute(self);

end;

procedure Tfclientevalor.ecepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (key = 13) and (ecep.Modified) then
           buscacep(fclientelocaliza.tabela,nil,ecep.text,'');
end;

procedure Tfclientevalor.Action1Execute(Sender: TObject);

var
i:integer;
list:tstringlist;

begin

        list := tstringlist.Create;

        for i := 0 to componentcount - 1 do begin
           if Components[i] is tdbedit then
              list.Add('          criaedit(|'+ tdbedit(Components[i]).DataField +'|,|'+
                                  uppercase(copy(tdbedit(Components[i]).DataField,1,1))+ lowercase(copy(tdbedit(Components[i]).DataField,2,100))+ '|,'+
                                     inttostr(tdbedit(Components[i]).left)+ ' , '+
                                     inttostr(tdbedit(Components[i]).top)+','+
                                     inttostr(tdbedit(Components[i]).width)+');');

           if Components[i] is TDBRadioGroup then
              list.Add('          criaradio(|'+ TDBRadioGroup(Components[i]).DataField +'|,|'+
                                  uppercase(copy(TDBRadioGroup(Components[i]).DataField,1,1))+ lowercase(copy(TDBRadioGroup(Components[i]).DataField,2,100))+ '|,'+
                                     inttostr(TDBRadioGroup(Components[i]).left)+ ' , '+
                                     inttostr(TDBRadioGroup(Components[i]).top)+','+
                                     inttostr(TDBRadioGroup(Components[i]).width)+',| .. |,| .. |);');

           if Components[i] is TDBComboBox then
              list.Add('          criacombo(|'+ TDBComboBox(Components[i]).DataField +'|,|'+
                                     TDBComboBox(Components[i]).DataField+ '|,'+
                                     inttostr(TDBComboBox(Components[i]).left)+ ' , '+
                                     inttostr(TDBComboBox(Components[i]).top)+','+
                                     inttostr(TDBComboBox(Components[i]).width)+',| .. |,| .. |);');


           if Components[i] is TDBCheckBox then
              list.Add('          criacheck(|'+ TDBCheckBox(Components[i]).DataField +'|,|'+
                                  uppercase(copy(TDBCheckBox(Components[i]).DataField,1,1))+ lowercase(copy(TDBCheckBox(Components[i]).DataField,2,100))+ '|,'+
                                     inttostr(TDBCheckBox(Components[i]).left)+ ' , '+
                                     inttostr(TDBCheckBox(Components[i]).top)+','+
                                     inttostr(TDBCheckBox(Components[i]).width)+');');

        end;

        list.SaveToFile('c:\lis.txt');
        ShellExecute(handle, 'open', PChar('c:\lis.txt'), nil, '', SW_MAXIMIZE);
        list.Free;
end;

end.

