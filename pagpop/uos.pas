unit uos;

interface



uses math,  Db, Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  dialogs, Buttons, ExtCtrls, Mask, DBCtrls, jpeg, Grids, DBGrids,
  ToolWin, ComCtrls, Messages, variants, ActnList, ExtDlgs,
  RLReport,  Provider, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, DBClient;

type
  Tfos = class(TForm)
    ActionList1: TActionList;
    novo: TAction;
    inserir1: TAction;
    alterar: TAction;
    hbotao: TAction;
    dhbotao: TAction;
    formatar: TAction;
    novogrupo: TAction;
    inserirgrupo: TAction;
    alterargrupo: TAction;
    hbotaogrupo: TAction;
    dhbotaogrupo: TAction;
    totalitem: TAction;
    totalizar: TAction;
    ativarlocal: TAction;
    tcins: TAction;
    desativaedit: TAction;
    ativaedit: TAction;
    dsos: TDataSource;
    Panel3: TPanel;
    combo: TAction;
    Label4: TLabel;
    Panel2: TPanel;
    btnatualizartudo: TSpeedButton;
    btncancelargrupo: TSpeedButton;
    btnnovogrupo: TSpeedButton;
    btneditargrupo: TSpeedButton;
    btngravargrupo: TSpeedButton;
    btnapagargrupo: TSpeedButton;
    btnimprimir: TSpeedButton;
    btnVoltarGrupo: TSpeedButton;
    btnAvancarGrupo: TSpeedButton;
    btnultimogrupo: TSpeedButton;
    btnprimeirogrupo: TSpeedButton;
    Label19: TLabel;
    Label35: TLabel;
    Label71: TLabel;
    Label13: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    lfpgto: TLabel;
    btnnovo: TSpeedButton;
    btneditar: TSpeedButton;
    btngravar: TSpeedButton;
    btncancelar: TSpeedButton;
    btnapagar: TSpeedButton;
    edata: TDBEdit;
    eentrada: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    CFPgto: TDBComboBox;
    btnnovo1: TSpeedButton;
    btneditar1: TSpeedButton;
    btngravar1: TSpeedButton;
    btncancelar1: TSpeedButton;
    btnapagar1: TSpeedButton;
    dsositem: TDataSource;
    dsositem1: TDataSource;
    novo1: TAction;
    inserir: TAction;
    alterar1: TAction;
    hbotao1: TAction;
    dhbotao1: TAction;
    ativaredit1: TAction;
    ativarlocal1: TAction;
    Label8: TLabel;
    evendedor: TDBComboBox;
    qentrada: TRLReport;
    RLBand3: TRLBand;
    RLBand5: TRLBand;
    RLBand6: TRLBand;
    RLSubDetail2: TRLSubDetail;
    RLBand7: TRLBand;
    lcidade: TRLLabel;
    lcli: TRLLabel;
    lilmo: TRLLabel;
    lvendedor: TRLLabel;
    pcliente: TPanel;
    Label17: TLabel;
    Label10: TLabel;
    etotal: TDBEdit;
    DBEdit8: TDBEdit;
    eitem: TDBMemo;
    edescricao: TDBMemo;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    RLDBMemo2: TRLDBMemo;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    etotais: TDBMemo;
    Label11: TLabel;
    Label12: TLabel;
    eilmo: TDBComboBox;
    LCABECA: TRLMemo;
    eprezado: TDBComboBox;
    eentrega: TDBEdit;
    Label14: TLabel;
    ltimbre: TRLBand;
    ltitulo1: TRLAngleLabel;
    eR1: TRLLabel;
    eR2: TRLLabel;
    eR3: TRLLabel;
    Label15: TLabel;
    Label16: TLabel;
    er4: TRLLabel;
    dsi: TDataSource;
    tbi: TClientDataSet;
    item: TAction;
    tbii: TIntegerField;
    tbidescricao: TStringField;
    tbilink: TIntegerField;
    RLDBText1: TRLDBMemo;
    tbositem1: TZQuery;
    tbos: TZQuery;
    tbositem: TZQuery;
    tabela: TZQuery;
    lvendedor2: TRLLabel;
    RLPanel1: TRLPanel;
    im1: TImage;
    SpeedButton5: TSpeedButton;
    procedure btnnovogrupoClick(Sender: TObject);
    procedure btngravargrupoClick(Sender: TObject);
    procedure btncancelargrupoClick(Sender: TObject);
    procedure btnapagargrupoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure novoExecute(Sender: TObject);
    procedure btneditargrupoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure dhbotaoExecute(Sender: TObject);
    procedure hbotaoExecute(Sender: TObject);
    procedure alterarExecute(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure formatarExecute(Sender: TObject);
    procedure enumeroEnter(Sender: TObject);
    procedure enumeroExit(Sender: TObject);
    procedure evrcompraKeyPress(Sender: TObject; var Key: char);
    procedure eipiKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure estributariaKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure eunKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure evrcompraKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure evrvendaKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure novogrupoExecute(Sender: TObject);
    procedure inserirgrupoExecute(Sender: TObject);
    procedure alterargrupoExecute(Sender: TObject);
    procedure hbotaogrupoExecute(Sender: TObject);
    procedure dhbotaogrupoExecute(Sender: TObject);
    procedure btnatualizartudoClick(Sender: TObject);
    procedure totalitemExecute(Sender: TObject);
    procedure etotalparcialExit(Sender: TObject);
    procedure edescontorealExit(Sender: TObject);
    procedure edescontopercentExit(Sender: TObject);
    procedure eccodigoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure etotalparcialEnter(Sender: TObject);
    procedure etotalentradaExit(Sender: TObject);
    procedure eufEnter(Sender: TObject);
    procedure ativarlocalExecute(Sender: TObject);
    procedure tcinsExecute(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure eufExit(Sender: TObject);
    procedure eufveiculoExit(Sender: TObject);
    procedure etransportadoraEnter(Sender: TObject);
    procedure etransportadoraExit(Sender: TObject);
    procedure efracaoEnter(Sender: TObject);
    procedure DBEdit40Enter(Sender: TObject);
    procedure DBEdit41Enter(Sender: TObject);
    procedure evrcompraEnter(Sender: TObject);
    procedure desativaeditExecute(Sender: TObject);
    procedure ativaeditExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure enoperacaoEnter(Sender: TObject);
    procedure enoperacaoExit(Sender: TObject);
    procedure comboExecute(Sender: TObject);
    procedure btnnovo1Click(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btneditar1Click(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure btngravar1Click(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btncancelar1Click(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnapagar1Click(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure edescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure novo1Execute(Sender: TObject);
    procedure inserirExecute(Sender: TObject);
    procedure alterar1Execute(Sender: TObject);
    procedure hbotao1Execute(Sender: TObject);
    procedure inserir1Execute(Sender: TObject);
    procedure dhbotao1Execute(Sender: TObject);
    procedure ativaredit1Execute(Sender: TObject);
    procedure ativarlocal1Execute(Sender: TObject);
    procedure lfpgtoClick(Sender: TObject);
    procedure eitemEnter(Sender: TObject);
    procedure eitemExit(Sender: TObject);
    procedure Label35Click(Sender: TObject);
    procedure etotaisEnter(Sender: TObject);
    procedure edescricaoExit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure etotalExit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure btnprimeirogrupoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnAvancarGrupoClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnultimogrupoClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure edataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label7Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure btnVoltarGrupoClick(Sender: TObject);
    procedure itemExecute(Sender: TObject);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDBText1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure SpeedButton5Click(Sender: TObject);
  private
  PN,PA,PD,gravargrupo, gravar, gravaritem, modogrupo, modo, modoitem:string;
  show,chave:integer;

    { Private declarations }
  public

    { Public declarations }
  end;

var
  fos: Tfos;
implementation

uses udm,funcoes,  umanu;

{$R *.dfm}

procedure Tfos.btnnovogrupoClick(Sender: TObject);
begin


          permissao(PN,'PN','OS');


    with fdm.query1 do begin
         close;
             sql.clear;
             sql.add( 'select max(data) as data from tbos' );
         open;
    end;


  novogrupoExecute(self);

  if fos.Active = True then
     if edata.Enabled = true then
        edata.SetFocus;

  tbositem.Cancel;
  modogrupo := 'M';
end;

procedure Tfos.btngravargrupoClick(Sender: TObject);
begin

  if fos.Active = True then
     if edata.Enabled = true then
        edata.SetFocus;
          if gravargrupo = 'novo' then begin
             inserirgrupoExecute(self);
          end else if gravargrupo = 'alterar' then begin
             alterargrupoExecute(self);
          end;

  hbotaogrupoexecute(self);
  desativar(fos);

  modogrupo := 'N';
  modo := 'N';
end;

procedure Tfos.btncancelargrupoClick(Sender: TObject);
begin
  tbos.Cancel;

  hbotaogrupoexecute(self);
  desativar(fos);

  modogrupo := 'N';
end;

procedure Tfos.btnapagargrupoClick(Sender: TObject);
begin

  permissao(PD,'PD','OS');

                btncancelargrupoClick(self);
                btncancelarClick(self);
                btncancelar1Click(self);

  abortaacao(nil,tbos,'chave','','','','',0);


  if Application.MessageBox('Deseja excluir esta OS? ',
    'Confirme', 4 + MB_ICONQUESTION) = idYes then
  begin

    with fdm.query1 do
    begin
      Close;

             sql.clear;
             sql.add( 'delete from  tbositem1 where link = ' +
                      quotedstr(tbositem.FieldByName('chave').AsString));
      execsql;

             sql.clear;
             sql.add( 'delete from  tbositem where link = ' +
                      quotedstr(tbos.FieldByName('chave').AsString));
      execsql;

             sql.clear;
             sql.add( 'delete from  tbos where chave = ' +
                      quotedstr(tbos.FieldByName('chave').AsString));
      execsql;


    end;


    tbos.cancel;
    tbos.refresh;

    tbositem.cancel;
    tbositem.refresh;

    tbositem1.cancel;
    tbositem1.refresh;

  end;
end;

procedure Tfos.FormShow(Sender: TObject);
var
vend:string;
begin


        if show = 1 then begin
           show := show + 1;


     comboExecute(self);

     //if not usucli then
       // vend := ' and (vendedor is null OR vendedor ='+ quotedstr(usuario)+' ) ';
     tbos.SQL.clear;
     tbos.SQL.add('select * from tbos where link = '+
                  quotedstr(tabela.fieldbyname('codigo').AsString)+vend);



  if tbos.Active = False then begin
    tbos.Open;
    tbos.Last;
    tbositem.Open;
    tbositem1.Open;

    formatarexecute(self);
    desativar(fos);

    gravar := 'nenhum';
  end;

        //permissão

            PN := sqlacesso.fieldbyname('inserir').AsString;
            PA :=sqlacesso.fieldbyname('alterar').AsString;
            PD := sqlacesso.fieldbyname('apagar').AsString;
            sqlacesso.Destroy;

   end;


                   fdm.tbempresa.Open;

                   im1.Picture := fmenu.imagelogo.Picture;
                   ltitulo1.Caption := fdm.tbempresa.fieldbyname('fantasia').AsString;

                   eR1.Caption := fdm.tbempresa.fieldbyname('Endereco').AsString + ' '+
                                  fdm.tbempresa.fieldbyname('numero').AsString + ' '+
                                  fdm.tbempresa.fieldbyname('Complemento').AsString  + '- '+
                                  fdm.tbempresa.fieldbyname('bairro').AsString;

                 eR4.Caption :='Cid.:'+ fdm.tbempresa.fieldbyname('municipio').AsString+
                               ' - UF: ' + fdm.tbempresa.fieldbyname('uf').AsString +
                               ' - CEP: '+ fdm.tbempresa.fieldbyname('cep').AsString;

                 eR2.Caption :=  'Fone/Fax: (' +
                                        fdm.tbempresa.fieldbyname('ddd').AsString +') '+
                                        fdm.tbempresa.fieldbyname('fone1').AsString + '   -   '+
                                        fdm.tbempresa.fieldbyname('fax').AsString;

{                 eR3.Caption := 'CNPJ: ' + fdm.tbempresa.fieldbyname('cnpj').AsString + '  IE: '+
                                        fdm.tbempresa.fieldbyname('ie').AsString +}
                 eR3.Caption := 'E-Mail: ' +  fdm.tbempresa.fieldbyname('email').AsString;


                lcli.Caption := tabela.fieldbyname('nome').AsString;


                   fdm.tbempresa.Open;
                if resolucao >700 then Height := 700;                    
end;

procedure Tfos.novoExecute(Sender: TObject);
begin

          if tbos.FieldByName('chave').AsString = '' then
          begin
            Application.MessageBox(PChar('Preencha o cabeçalho.'), 'Erro', 0 + MB_ICONerror);
            abort;
          end;

          gravar := 'novo';

          ativarlocalexecute(self);

            tbositem.Insert;
            if eitem.Enabled = true then
               eitem.SetFocus;

         dhbotaoexecute(self);
end;

procedure Tfos.btneditargrupoClick(Sender: TObject);
begin


  permissao(PA,'PA','OS');

  if tbos.FieldByName('chave').AsString = '' then
  begin
    Application.MessageBox('Você não tem registro selecionado para editar!',
      'Erro', 0 + MB_ICONerror);
    abort;
  end;

  tbositem.Cancel;
  gravargrupo := 'alterar';

  ativar(fos);
  desativaeditexecute(self);



  if fos.Active = True then
     if edata.Enabled = true then
        edata.SetFocus;

  dhbotaogrupoexecute(self);
end;

procedure Tfos.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  if modo = 'M' then
  begin
    case application.MessageBox('Deseja salvar as alterações?',
      'Sair', mb_yesnocancel + MB_ICONQUESTION) of

      idYes:
        begin
          btneditarclick(self);
          btngravarclick(self);
          canclose := True;
        end;

      idNo:
        begin
          btncancelarClick(self);
          canclose := True;
        end;

      idCancel:
        canclose := False;
    end;
  end;


  if modogrupo = 'M' then
  begin
    case application.MessageBox('Deseja salvar as alterações?',
      'Sair', mb_yesnocancel + MB_ICONQUESTION) of

      idYes:
        begin
          btneditargrupoclick(self);
          btngravargrupoclick(self);
          canclose := True;
        end;

      idNo:
        begin
          btncancelargrupoClick(self);
          canclose := True;
        end;

      idCancel:
        canclose := False;
    end;
  end;
end;

procedure Tfos.dhbotaoExecute(Sender: TObject);
begin
  btnnovo.Enabled := False;
  btneditar.Enabled := False;
  btnapagar.Enabled := False;
  btnimprimir.Enabled := False;
  btngravar.Enabled := True;
  btncancelar.Enabled := True;
end;

procedure Tfos.hbotaoExecute(Sender: TObject);
begin
  btnnovo.Enabled := True;
  btneditar.Enabled := True;
  btnapagar.Enabled := True;
  btnimprimir.Enabled := True;
  btngravar.Enabled := False;
  btncancelar.Enabled := False;
end;

procedure Tfos.alterarExecute(Sender: TObject);
var
  loc: string;
begin

  if  tbositem['descricao'] = '' then begin
      Application.MessageBox('O campo  Descrição não pode ser nulo!',
                             'Erro', 0 + MB_ICONerror);
    abort;
  end;

  loc := tbositem.FieldByName('chave').AsString;
  altera(tbositem, nil,'tbositem');

  tbositem.close;
  tbositem.open;

   tbositem.Locate('chave',loc,[]);

end;

procedure Tfos.btnimprimirClick(Sender: TObject);
var
ie,loc,rodape:string;
j,i:integer;
dataimp :tdate;
begin

        abortaacao( nil,tbos,'chave','','','','',0);

       if Application.MessageBox('Imprimir com os dados da empresa? ',
                                 'Confirme', 4 + MB_ICONQUESTION) = idYes then begin

           ltimbre.Show;
           qentrada.Margins.TopMargin :=10;
       end else begin
           ltimbre.hide;
           qentrada.Margins.TopMargin :=45;
       end;

//       itemExecute(self);

           if tbos['orcamentocli']<> null then
                dataimp:= tbos.fieldbyname('orcamentocli').AsDateTime
           else
                dataimp:= tbos.fieldbyname('data').AsDateTime;



          lcidade.Caption := fdm.tbempresa.fieldbyname('municipio').AsString +', '+
                                   formatdatetime('dd',dataimp)+' DE '+
                                   formatdatetime('mmmm',dataimp)+' DE '+
                                   formatdatetime('yyyy',dataimp);


        lilmo.Caption := eilmo.Text;

        lcabeca.Lines.Clear;

        if tabela['ie']<> null then
           ie:= '      IE/RG: '+tabela.fieldbyname('ie').AsString;

        if tabela['cnpj']<> null then
           lcabeca.Lines.Add('CNPJ/CPF: '+tabela.fieldbyname('cnpj').AsString+ie);



           lcabeca.Lines.Add('ENDEREÇO DA OBRA: '+tabela.fieldbyname('endereco').AsString+
                             ' '+tabela.fieldbyname('numero').AsString+
                             ' - '+tabela.fieldbyname('bairro').AsString+
                             '   '+tabela.fieldbyname('complemento').AsString);

           lcabeca.Lines.Add('CEP: '+tabela.fieldbyname('cep').AsString +
                             ' - '+tabela.fieldbyname('municipio').AsString +
                             ' - '+tabela.fieldbyname('uf').AsString);


           lcabeca.Lines.Add('ENDEREÇO DE CORRESP.: '+tabela.fieldbyname('enderecocobranca').AsString+
                             ' '+tabela.fieldbyname('numerocobranca').AsString+
                             '   '+tabela.fieldbyname('bairrocobranca').AsString+
                             '   '+tabela.fieldbyname('complementocobranca').AsString);

           lcabeca.Lines.Add('CEP: '+tabela.fieldbyname('cepcobranca').AsString +
                             ' - '+tabela.fieldbyname('municipiocobranca').AsString +
                             ' - '+tabela.fieldbyname('ufcobranca').AsString);

           lcabeca.Lines.Add('TEL.: ('+tabela.fieldbyname('ddd').asstring+') '+
                                    tabela.fieldbyname('fone').asstring +
                                    '   '+  tabela.fieldbyname('fone2').asstring +
                                    '   '+  tabela.fieldbyname('fone3').asstring);

        if (tabela['contato']<> null) and
           (tabela['contato']<> '') then
            lcabeca.Lines.Add('A/C: '+tabela.fieldbyname('contato').asstring);

        if (tabela['email']<> null) and
           (tabela['email']<> '') then
            lcabeca.Lines.Add('E-Mail: '+tabela.fieldbyname('email').asstring);


        lcabeca.Lines.Add(' ');
        lcabeca.Lines.add('Conforme solicitado, segue o orçamento de vidros e espelhos, '+  eprezado.Text);
//        lcabeca.Lines.add(' ');

        selecione('select fone from tbfuncionario where nomecurto = '+quotedstr(evendedor.Text));
        lvendedor2.Caption := sqlpub.FieldByName('fone').AsString;
        sqlpub:=nil;

        lvendedor.Caption := 'VENDEDOR: ' + evendedor.Text;


        btnnovoClick(self);
        rodape := '';

        tbi.Close;
        tbi.CreateDataSet;
        tbi.Open;

       { tbi.insert;
        tbi['descricao'] := ' ';
        tbi['i']:=1;
        tbi.Post; }
        j:= 2;


        tbositem.First;
        while not tbositem.Eof do begin

              for i := 0 to eitem.Lines.Count -1 do begin
                  tbi.Insert;
                  tbi['descricao'] := eitem.Lines[i]  ;
                  tbi['i']:=j;
                  tbi['link']:=1;
                  inc(j);
                  tbi.Post;
               end;


               { tbi.insert;
                tbi['descricao'] := ' ';
                tbi['i']:=j;
                tbi.Post;
                inc(j);
                }


                tbositem1.First;
                while not tbositem1.Eof do begin
                   for i:=0 to edescricao.Lines.Count do begin
                       tbi.Insert;
                       tbi['descricao'] := edescricao.Lines[i];
                       tbi['i'] := j;
                       inc(j);
                       tbi.Post;
                    end;
                    tbositem1.Next;
               end;


            tbositem.Next;
         end;



        //totais

               for i := 0 to etotais.Lines.Count -1 do begin
                  tbi.Insert;
                  if rodape = '' then
                     tbi['descricao'] := 'TOTAL GERAL: '+etotais.Lines[i]
                  else
                     tbi['descricao'] := '                              '+etotais.Lines[i]  ;
                  tbi['link']:=1;
                  tbi['i']:=j;
                  inc(j);
                  tbi.Post;
               end;


        j:=j+1;
        tbi.insert;
        tbi['descricao'] :=' ';
        tbi['i']:=j;
        tbi.Post;

        j:=j+1;
        tbi.insert;
        tbi['descricao'] :='PRAZO DE ENTREGA: '+eentrega.Text;
        tbi['link']:=1;
        tbi['i']:=j;
        tbi.Post;

        j:=j+1;
        tbi.insert;
        tbi['descricao'] :='CONDIÇÕES DE PAGAMENTO: '+CFPgto.Text;
        tbi['link']:=1;
        tbi['i']:=j;
        tbi.Post;

        {j:=j+1;
        tbi.insert;
        tbi['descricao'] :='(Opção por boleto bancário - Acréscimo de R$ 4,00 por boleto) ';
        tbi['i']:=j;
        tbi['link']:=chave;
        tbi.Post;}


        j:=10001;
        tbi.insert;
        tbi['descricao'] :=' ';
        tbi['i']:=j;
        tbi.Post;

        j:=j+1;
        tbi.insert;
        tbi['descricao'] := 'Honrados com a oportunidade, aguardamos um retorno.' ;
        tbi['i']:=j;
        tbi.Post;

        j:=j+1;
        tbi.insert;
        tbi['descricao'] := 'Atenciosamente                          '+
                  '                                                De acordo';
        tbi['i']:=j;
        tbi.Post;

        j:=j+1;
        tbi.insert;
        tbi['descricao'] := ' ';
        tbi['i']:=j;
        tbi.Post;

        j:=j+1;
        tbi.insert;
        tbi['descricao'] := '...........................................                           ...........................................';
        tbi['i']:=j;
        tbi.Post;

        j:=j+1;
        tbi.insert;
        tbi['descricao'] := ' ';
        tbi['i']:=j;
        tbi.Post;

        j:=j+1;
        tbi.insert;

        if responsavel = '10.413.451/0001-04'then
           tbi['descricao'] := 'DPA vidros - Refletindo Qualidade e Transparência. '

        else if responsavel = '07.428.160/0001-85' then
                tbi['descricao'] := 'Andra Vidros Vidraçaria';
                
        tbi['i']:=j;
        tbi.Post;

        j:=j+1;
        tbi.insert;
        tbi['descricao'] := '               ';
        tbi['i']:=j;
        tbi.Post;

                 
        tbos.Filter := 'chave= ' + quotedstr(tbos.fieldbyname('chave').AsString);
        tbos.Filtered := true;
        qentrada.Previewmodal;
        btncancelarClick(self);
        tbositem.Close;
        tbositem.open;

        loc:= tbos.fieldbyname('chave').AsString ;
        tbos.Filtered := false;
        tbos.Locate('chave',loc,[]);
        tbi.Close;


end;

procedure Tfos.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  tbos.Close;
  tbositem.Close;
  tbositem1.Close;
  release;
  fos := nil;

end;

procedure Tfos.formatarExecute(Sender: TObject);

begin

  tbos.FieldByName('data').EditMask := '99/99/9999';
  tbos.FieldByName('orcamento').EditMask := '99/99/9999';
  tbos.FieldByName('orcamentocli').EditMask := '99/99/9999';
  tbos.FieldByName('venda').EditMask := '99/99/9999';
  tbos.FieldByName('medicao').EditMask := '99/99/9999';
  tbos.FieldByName('execucao').EditMask := '99/99/9999';

  (tbos.FieldByName('numero') as tintegerfield).displayformat := '000000';
  (tbos.FieldByName('total') as tfloatfield).displayformat := '###,##0.00';
  (tbos.FieldByName('totalcomissao') as tfloatfield).displayformat := '###,##0.00';
  (tbos.FieldByName('comissao') as tfloatfield).displayformat := '###,##0.00';  
  (tbositem1.FieldByName('vrunit') as tfloatfield).displayformat := '###,##0.00';
  (tbositem1.FieldByName('total') as tfloatfield).displayformat := '###,##0.00';
end;

procedure Tfos.enumeroEnter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfos.enumeroExit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clwhite;
end;

procedure Tfos.evrcompraKeyPress(Sender: TObject; var Key: char);
begin
  if not (key in ['0'..'9', #8, ',']) then abort;
end;

procedure Tfos.eipiKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if (key = 13) and (gravar <> 'nenhum') then 
  begin
    keypreview := False;
    btngravarClick(self);

    if gravar = 'novo' then
      btnnovoClick(self);
  end;   
end;

procedure Tfos.estributariaKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if keypreview = False then
    keypreview := True;
end;

procedure Tfos.eunKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if keypreview = False then
    keypreview := True;
end;

procedure Tfos.evrcompraKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if keypreview = False then
    keypreview := True;
end;

procedure Tfos.evrvendaKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if keypreview = False then
    keypreview := True;
end;

procedure Tfos.novogrupoExecute(Sender: TObject);
begin
  if btngravargrupo.Enabled = True then abort;

  gravargrupo := 'novo';
  ativar(fos);
  desativaeditexecute(self);


  with fdm.query1 do
  begin
    Close;
             sql.clear;
             sql.add( 'select max(numero)as numero from tbos');
    Open;
  end;


  tbos.Insert;
  tbos['data'] := datetostr(now);
  tbos['comissao'] := '5';
  tbos['numero'] := fdm.query1.FieldByName('numero').AsInteger + 1;
  tbos['entrega'] := ' dias úteis da medição';
  fdm.query1.Close;
  dhbotaogrupoexecute(self);

end;

procedure Tfos.inserirgrupoExecute(Sender: TObject);
var
  loc: string;
begin

  with fdm.query1 do
  begin
    Close;
             sql.clear;
             sql.add( 'select max(numero)as numero from tbos');
    Open;
  end;


  tbos.edit;
  tbos['numero'] := fdm.query1.FieldByName('numero').AsInteger + 1;
  tbos['link'] := tabela.fieldbyname('codigo').AsString;  
  fdm.query1.Close;


  loc := tbos.fieldbyname('numero').AsString;

  Grava(tbos, nil,'tbos');

  tbos.cancel;
  tbos.refresh;

  tbos.Locate('numero', loc, []);

end;

procedure Tfos.alterargrupoExecute(Sender: TObject);
var
  loc: string;
begin

  loc := tbos.fieldbyname('chave').AsString;

  altera(tbos, nil,'tbos');

  tbos.Cancel;
  tbos.Refresh;
  tbos.Locate('chave',loc,[]);

end;

procedure Tfos.hbotaogrupoExecute(Sender: TObject);
begin
  btnnovogrupo.Enabled := True;
  btneditargrupo.Enabled := True;
  btnapagargrupo.Enabled := True;
  btnatualizartudo.Enabled := True;
  btngravargrupo.Enabled := False;
  btncancelargrupo.Enabled := False;

  btnnovo.Enabled := True;
  btneditar.Enabled := True;
  btnapagar.Enabled := True;
  btnimprimir.Enabled := True;
  btngravar.Enabled := False;
  btncancelar.Enabled := False;

  btnnovo1.Enabled := True;
  btneditar1.Enabled := True;
  btnapagar1.Enabled := True;
  btngravar1.Enabled := False;
  btncancelar1.Enabled := False;

end;

procedure Tfos.dhbotaogrupoExecute(Sender: TObject);
begin
  btnnovogrupo.Enabled := False;
  btneditargrupo.Enabled := False;
  btnapagargrupo.Enabled := False;
  btnatualizartudo.Enabled := False;
  btngravargrupo.Enabled := True;
  btncancelargrupo.Enabled := True;

  btnnovo.Enabled := False;
  btneditar.Enabled := False;
  btnapagar.Enabled := False;
  btnimprimir.Enabled := False;
  btngravar.Enabled := False;
  btncancelar.Enabled := False;

  btnnovo1.Enabled := False;
  btneditar1.Enabled := False;
  btnapagar1.Enabled := False;
  btngravar1.Enabled := False;
  btncancelar1.Enabled := False;

end;

procedure Tfos.btnatualizartudoClick(Sender: TObject);
var
  loc:string;
begin

  loc := tbos.fieldbyname('chave').AsString;

  tbos.Refresh;
  tbositem.Refresh;

  tbos.Locate('chave',loc,[]);

end;

procedure Tfos.totalitemExecute(Sender: TObject);
begin
   tbositem1.Edit;

   if  (tbositem1.FieldByName('qtd').AsFloat > 0 ) and
       (tbositem1.FieldByName('vrunit').AsFloat >0 ) then

      tbositem1['total']:= tbositem1.FieldByName('qtd').AsFloat *
                          tbositem1.FieldByName('vrunit').AsFloat
  else tbositem1['total']:= null;



end;

procedure Tfos.etotalparcialExit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clnavy;
end;

procedure Tfos.edescontorealExit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clnavy;

end;

procedure Tfos.edescontopercentExit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clnavy;

end;

procedure Tfos.eccodigoExit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clwhite;
end;

procedure Tfos.FormKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if (key = 13) then
    Perform(wm_nextdlgctl, 0,0);
  if (key = 27) then
    Perform(wm_nextdlgctl, 1,0);
end;

procedure Tfos.etotalparcialEnter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clblack;
end;

procedure Tfos.etotalentradaExit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clnavy;
end;

procedure Tfos.eufEnter(Sender: TObject);
begin
  with  Sender as tdbcombobox do
    color := clinfobk;
end;

procedure Tfos.ativarlocalExecute(Sender: TObject);
begin
  desativar(fos);
  ativaeditexecute(self);
  
end;

procedure Tfos.tcinsExecute(Sender: TObject);
begin

        if (tbos['chave']= null) and
           (btngravargrupo.Enabled = false) then
           btnnovogrupoClick(self)

        else if btngravargrupo.Enabled = true then
           btngravargrupoClick(self)

        else if (tbositem['chave']= null) and
           (btngravar.Enabled = false) then
           btnnovoClick(self)

        else if btngravar.Enabled = true then
           btngravarClick(self)

        else if btnnovo1.Enabled then
           btnnovo1Click(self)

        else if btngravar1.Enabled then
           btngravar1Click(self);



end;

procedure Tfos.DBComboBox1Exit(Sender: TObject);
begin
  with  Sender as tdbcombobox do
    color := clwhite;
end;

procedure Tfos.eufExit(Sender: TObject);
begin
  with  Sender as tdbcombobox do
    color := clwhite;
end;

procedure Tfos.eufveiculoExit(Sender: TObject);
begin
  with  Sender as tdbcombobox do
    color := clwhite;
end;

procedure Tfos.etransportadoraEnter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfos.etransportadoraExit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clwhite;
end;

procedure Tfos.efracaoEnter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;

end;

procedure Tfos.DBEdit40Enter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;

end;

procedure Tfos.DBEdit41Enter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;

end;

procedure Tfos.evrcompraEnter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;

end;

procedure Tfos.desativaeditExecute(Sender: TObject);
begin

          edescricao.Enabled := false;
          eitem.Enabled := false;


end;

procedure Tfos.ativaeditExecute(Sender: TObject);
begin
          eitem.Enabled := true;

end;

procedure Tfos.FormCreate(Sender: TObject);
begin

          show :=1;

          with tabela do begin
               sql.clear;
               sql.add('select * from tbcliente where chave = ' + quotedstr(codloc));
               open;
               codloc :='';
          end;

          if (fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\menu3.jpg'))) then
             imagepanel('im1',albottom,panel2, (PChar(ExtractFilePath(ParamStr(0)) +'imagem\menu3.jpg')),nil);

          if (fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\menu3.jpg'))) then
             imagepanel('im2',altop,panel2, (PChar(ExtractFilePath(ParamStr(0)) +'imagem\menu3.jpg')),nil);

          if (fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\menu3.jpg'))) then
             imagepanel('im3',altop,panel3, (PChar(ExtractFilePath(ParamStr(0)) +'imagem\menu3.jpg')),nil);


          caption := 'Orçamento : '+tabela.fieldbyname('nome').asstring+
                     '   ..   Tel.: ('+tabela.fieldbyname('ddd').asstring+') '+
                                    tabela.fieldbyname('fone').asstring +
                                    '   '+  tabela.fieldbyname('fone2').asstring +
                                    '   '+  tabela.fieldbyname('fone3').asstring;

          pcliente.caption := tabela.fieldbyname('endereco').asstring+
                               ' '+tabela.fieldbyname('numero').asstring+
                               '   '+tabela.fieldbyname('complemento').asstring +
                               '  -  '+tabela.fieldbyname('email').asstring +
                               '   A/C '+tabela.fieldbyname('contato').asstring;

end;

procedure Tfos.enoperacaoEnter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfos.enoperacaoExit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clwhite;
end;

procedure Tfos.comboExecute(Sender: TObject);
begin
        selecione('select descricao from tbcondfatura order by descricao');
        CFPgto.Items.Clear;

        while not sqlpub.EOF do begin
              if sqlpub['descricao'] <> null then
                 CFPgto.Items.Add(sqlpub.FieldByName('descricao').AsString);
              sqlpub.Next;
        end;


        selecione('select nomecurto as nome from tbfuncionario where (flag <> "D" or flag is null) order by nome');
        evendedor.Items.Clear;

        while not sqlpub.EOF do begin
           if sqlpub['nome'] <> null then
              evendedor.Items.Add(sqlpub.FieldByName('nome').AsString);
           sqlpub.Next;
        end;


        selecione('select * from tbilmo order by descricao');

        eilmo.Items.Clear;

        while not sqlpub.EOF do begin
           if sqlpub['descricao'] <> null then
              eilmo.Items.Add(sqlpub.FieldByName('descricao').AsString);
           sqlpub.Next;
        end;


        selecione('select * from tbprezado order by descricao');

        eprezado.Items.Clear;

          while not sqlpub.EOF do  begin
            if sqlpub['descricao'] <> null then
               eprezado.Items.Add(sqlpub.FieldByName('descricao').AsString);
            sqlpub.Next;
          end;


          sqlpub:=nil;

end;

procedure Tfos.btnnovo1Click(Sender: TObject);
begin

          permissao(PN,'PN','OS');
          
          btncancelarclick(self);
          if tbositem1.RecordCount >0 then
             btneditar1Click(self)
          else
             novo1execute(self);
          modoitem := 'M';


end;

procedure Tfos.btnnovoClick(Sender: TObject);
begin
          permissao(PN,'PN','OS');

  btncancelar1Click(SELF);
  novoexecute(self);
  modo := 'M';

  eitem.SetFocus;


end;

procedure Tfos.btneditar1Click(Sender: TObject);
begin
  permissao(PA,'PA','OS');
        abortaacao(nil,tbositem1,'chave','','','','',0);

          btncancelarclick(self);
  gravaritem := 'alterar';

  ativarlocal1execute(self);
  edescricao.SetFocus;
  dhbotao1execute(self);

end;

procedure Tfos.btneditarClick(Sender: TObject);
begin
  permissao(PA,'PA','OS');
  btncancelar1Click(SELF);
  if tbositem.FieldByName('chave').AsString = '' then
  begin
    Application.MessageBox('Você não tem registro selecionado para editar!',
      'Erro', 0 + MB_ICONerror);
    abort;
  end;

  gravar := 'alterar';


  ativarlocalexecute(self);



   eitem.SetFocus;

   dhbotaoexecute(self);

end;

procedure Tfos.btngravar1Click(Sender: TObject);
begin
        focuscontrol(nil);

  if (gravaritem = 'novo') and (tbositem1.RecordCount<=0) then
    inserir1Execute(self)
  else if gravaritem = 'alterar' then
    alterar1Execute(self);

  hbotao1execute(self);
  desativar(fos);
  modoitem := 'N';

end;

procedure Tfos.btngravarClick(Sender: TObject);
begin

  focuscontrol(nil);
                  
 // if eitem.lines.Count > 26 then
   //  msg('#Aceita apenas 26 linhas',0);

  if gravar = 'novo' then
    inserirExecute(self)
  else if gravar = 'alterar' then
    alterarExecute(self);

  hbotaoexecute(self);
  desativar(fos);
  modo := 'N';
  modogrupo := 'N';

end;

procedure Tfos.btncancelar1Click(Sender: TObject);
begin
  tbositem1.cancel;
  desativar(fos);
  hbotao1execute(self);
  modoitem := 'N';

end;

procedure Tfos.btncancelarClick(Sender: TObject);
begin
  tbositem.cancel;
  desativar(fos);
  hbotaoexecute(self);
  modo := 'N';
  modogrupo := 'N';

end;

procedure Tfos.btnapagar1Click(Sender: TObject);
begin
  permissao(PD,'PD','OS');
        abortaacao(nil,tbositem1,'chave','','','','',0);

  if Application.MessageBox('Deseja excluir este item? ',
                          'Confirme', 4 + MB_ICONQUESTION) = idYes then
  begin


    with fdm.query1 do
    begin
      Close;
             sql.clear;
             sql.add( 'delete from  tbositem1 where chave = "' +
                      tbositem1.FieldByName('chave').AsString + '"');
      execsql;
    end;



    tbositem1.cancel;
    tbositem1.refresh;
  end;

end;

procedure Tfos.btnapagarClick(Sender: TObject);
begin
  permissao(PD,'PD','OS');
  btncancelar1Click(SELF);
  if tbositem['chave'] = null then
  begin
    Application.MessageBox('Você não tem registro selecionado para deletar!',
                           'Erro', 0 + MB_ICONerror);
    abort;
  end;

  if Application.MessageBox('Deseja excluir este item? ',
    'Confirme', 4 + MB_ICONQUESTION) = idYes then
  begin

//  gravar := 'alterar';


    //apaga item

    with fdm.query1 do
    begin
      Close;
             sql.clear;
             sql.add( 'delete from  tbositem1 where link = "' +
                      tbositem.FieldByName('chave').AsString + '"');
            execsql ;

             sql.clear;
             sql.add( 'delete from  tbositem where chave = "' +
                      tbositem.FieldByName('chave').AsString + '"');
      execsql;
    end;



    tbositem.cancel;
    tbositem.refresh;
  end;

end;

procedure Tfos.edescricaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
                keypreview := true;
end;

procedure Tfos.novo1Execute(Sender: TObject);
begin

          abortaacao(nil,tbositem,'chave','','','','',0);

          gravaritem := 'novo';

          ativarlocal1execute(self);

          tbositem1.Insert;
          tbositem1['qtd'] :=1;

           if edescricao.Enabled = true then
              edescricao.SetFocus;

            dhbotao1execute(self);

end;

procedure Tfos.inserirExecute(Sender: TObject);
var
 loc: string;
begin

  loc := tbositem.FieldByName('descricao').AsString;;


  if (tbositem['descricao'] = null)  then
  begin
    Application.MessageBox('O campo Descrição pode ser nulo.!',
                           'Erro', 0 + MB_ICONerror);
    abort;
  end;

  Grava(tbositem, nil,'tbositem');

  tbositem.Cancel;
  tbositem.Refresh;
  tbositem.Last;


end;

procedure Tfos.alterar1Execute(Sender: TObject);
var
  loc: string;
begin
  if (tbositem1['descricao'] = null) or
     (tbositem1.FieldByName('qtd').AsFloat <= 0) then
  begin
    Application.MessageBox('Os campos: Descrição e Qtd não podem ser nulo.!',
                           'Erro', 0 + MB_ICONerror);
    abort;
  end;

  loc := tbositem1.FieldByName('descricao').AsString;
  altera(tbositem1, nil,'tbositem1');

  tbositem1.close;
  tbositem1.open;

end;

procedure Tfos.hbotao1Execute(Sender: TObject);
begin
  btnnovo1.Enabled := True;
  btneditar1.Enabled := True;
  btnapagar1.Enabled := True;
  btnimprimir.Enabled := True;
  btngravar1.Enabled := False;
  btncancelar1.Enabled := False;

end;

procedure Tfos.inserir1Execute(Sender: TObject);
var
loc:string;
begin
  loc := tbositem1.FieldByName('descricao').AsString;;


  if (tbositem1['descricao'] = null) or
     (tbositem1.FieldByName('qtd').AsFloat <= 0) then
  begin
    Application.MessageBox('Os campos: Descrição e Qtd não podem ser nulo.!',
                           'Erro', 0 + MB_ICONerror);
    abort;
  end;

  Grava(tbositem1, nil,'tbositem1');

  tbositem1.close;
  tbositem1.open;
  formatarexecute(self);

end;

procedure Tfos.dhbotao1Execute(Sender: TObject);
begin
  btnnovo1.Enabled := False;
  btneditar1.Enabled := False;
  btnapagar1.Enabled := False;
  btnimprimir.Enabled := False;
  btngravar1.Enabled := True;
  btncancelar1.Enabled := True;

end;

procedure Tfos.ativaredit1Execute(Sender: TObject);
begin
          edescricao.Enabled := true;

end;

procedure Tfos.ativarlocal1Execute(Sender: TObject);
begin
  desativar(fos);
  ativaredit1Execute(self);
end;

procedure Tfos.lfpgtoClick(Sender: TObject);
var
st:string;
begin
         st:= 'select chave, descricao, Conta, codigo, comissao,  venc1, venc2, venc3, venc4, venc5, venc6, tipopgto from tbcondfatura ';

         cadp ('tbcondfatura', st, '',
              'codigo','descricao',
              'Conta','tbconta','descricao',
              'tipopgto','','A VISTA,A PRAZO,CART C,CART D,CHEQUE',
              '','','',
              'codigo',
              '',
              '',
              '',
              1,0);

         comboexecute(self);

end;

procedure Tfos.eitemEnter(Sender: TObject);
begin
             eitem.Color := clinfobk;
end;

procedure Tfos.eitemExit(Sender: TObject);
begin
             eitem.Color := clwhite;
end;

procedure Tfos.Label35Click(Sender: TObject);
begin
        abortar(edata);
        loccampo(nil,tbos,'numero','','','');
end;

procedure Tfos.etotaisEnter(Sender: TObject);
begin
        keypreview := false;
end;

procedure Tfos.edescricaoExit(Sender: TObject);
begin
        keypreview := true;
end;

procedure Tfos.DBEdit7Exit(Sender: TObject);
begin
        if DBEdit7.Modified then
           if (tbos.FieldByName('total').AsFloat >0) and
              (tbos.FieldByName('comissao').AsFloat >0) then
              tbos['totalcomissao'] := tbos.FieldByName('total').AsFloat *
                                       tbos.FieldByName('comissao').AsFloat/100
           else tbos['totalcomissao'] := null;
end;
procedure Tfos.etotalExit(Sender: TObject);
begin
        if etotal.Modified then
           if (tbos.FieldByName('total').AsFloat >0) and
              (tbos.FieldByName('comissao').AsFloat >0) then
              tbos['totalcomissao'] := tbos.FieldByName('total').AsFloat *
                                       tbos.FieldByName('comissao').AsFloat/100
           else tbos['totalcomissao'] := null;
end;

procedure Tfos.DBEdit8Exit(Sender: TObject);
begin
        if DBEdit8.Modified then
        if (tbos.FieldByName('total').AsFloat>0) and
             (tbos.FieldByName('totalcomissao').AsFloat>0) then

              tbos.FieldByName('comissao').AsFloat :=
              tbos.FieldByName('totalcomissao').AsFloat* 100 /
              tbos.FieldByName('total').AsFloat

           else
              tbos.FieldByName('comissao').clear;

end;

procedure Tfos.btnprimeirogrupoClick(Sender: TObject);
begin
  abortar(edata);
  btncancelarclick(self);
  tbos.First;

end;

procedure Tfos.SpeedButton1Click(Sender: TObject);
begin

  if eitem.Enabled then begin
     showmessage('Você está no modo de edição, escolha gravar ou cancelar.');
     abort;
  end;

  btncancelar1click(self);

  tbositem.First;

end;

procedure Tfos.SpeedButton2Click(Sender: TObject);
begin

  if eitem.Enabled then begin
     showmessage('Você está no modo de edição, escolha gravar ou cancelar.');
     abort;
  end;

  btncancelarclick(self);
  tbositem.Prior;

end;

procedure Tfos.btnAvancarGrupoClick(Sender: TObject);
begin
  abortar(edata);
  btncancelarclick(self);
  tbos.Next;

end;

procedure Tfos.SpeedButton3Click(Sender: TObject);
begin
  if eitem.Enabled then begin
     showmessage('Você está no modo de edição, escolha gravar ou cancelar.');
     abort;
  end;

  btncancelarclick(self);
  tbositem.Next;

end;

procedure Tfos.btnultimogrupoClick(Sender: TObject);
begin
  abortar(edata);
  btncancelarclick(self);
  tbos.last;
end;

procedure Tfos.SpeedButton4Click(Sender: TObject);
begin
  if eitem.Enabled then begin
     showmessage('Você está no modo de edição, escolha gravar ou cancelar.');
     abort;
  end;

  btncancelar1click(self);

  tbositem.Last;

end;

procedure Tfos.Label8Click(Sender: TObject);
begin
         cadg(cadfuncionario,'nome', 6);
         comboexecute(self);

end;

procedure Tfos.Label12Click(Sender: TObject);
begin
         cadp ('tbilmo', '','',       //tabela que vai usar ou cod sql na 2ª
              'descricao','',           //campos que nao devem duplicar
              '','','',                 //combo1(campo,tabela,nomecampotabela)
              '','','',                 //combo2(campo,tabela,nomecampotabela)
              '','','',                 //combo2(campo,tabela,nomecampotabela)
              '',                     //campo auto incremento
              '',                       //campo auto incremento
              '','',
              3,0);                       //onde vai comecar a criar os campos

         comboexecute(self);

end;

procedure Tfos.RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
           if (tbositem['chave'] <> -1) and (tbositem['chave'] <> -2) then
               RLDBMemo2.Font.Style := RLDBMemo2.Font.Style + [fsunderline]
           else
               RLDBMemo2.Font.Style := RLDBMemo2.Font.Style - [fsunderline];


          if tbositem.FieldByName('chave').AsInteger = -1 then
             RLDBMemo2.Font.Style := RLDBMemo2.Font.Style -  [fsbold]
          else
             RLDBMemo2.Font.Style := RLDBMemo2.Font.Style + [fsbold];



end;

procedure Tfos.edataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (key = 8) or (key = 6) then
           with sender as tdbedit do begin
                tbos.Edit;
                tbos.FieldByName(datafield).Clear;
           end;



end;

procedure Tfos.Label7Click(Sender: TObject);
begin
         cadp ('tbprezado', '','',       //tabela que vai usar ou cod sql na 2ª
              'descricao','',           //campos que nao devem duplicar
              '','','',                 //combo1(campo,tabela,nomecampotabela)
              '','','',                 //combo2(campo,tabela,nomecampotabela)
              '','','',                 //combo2(campo,tabela,nomecampotabela)              
              '',                     //campo auto incremento
              '',                       //campo auto incremento
              '','',
              3,0);                       //onde vai comecar a criar os campos

         comboexecute(self);

end;

procedure Tfos.Label16Click(Sender: TObject);
begin
        with sender as tlabel do begin
             if eitem.Focused then begin
                tbositem.edit;
                eitem.Text :=  eitem.Text +caption;

             end else if edescricao.Focused then begin
                tbositem1.edit;
                edescricao.Text :=  edescricao.Text +caption;
             end;

        end;
end;

procedure Tfos.btnVoltarGrupoClick(Sender: TObject);
begin
  abortar(edata);
  btncancelarclick(self);
  tbos.prior;

end;

procedure Tfos.itemExecute(Sender: TObject);
var
i,j:integer;
begin
        tbositem.First;
        j:=1;

        while not tbositem.Eof do begin
           chave :=  tbositem.fieldbyname('chave').asinteger;
           for i:=0 to edescricao.Lines.Count do begin
               tbi.Insert;
               tbi['descricao'] := edescricao.Lines[i];
               tbi['i'] := j;
               j:=j+1;
               tbi.Post;
            end;

            tbositem.Next;
         end;


end;

procedure Tfos.RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

          if (tbi.FieldByName('i').AsInteger >=1000) and  
             (tbi.FieldByName('i').AsInteger <10000) then
             RLDBText1.Font.Style := RLDBText1.Font.Style +  [fsbold]

          else RLDBText1.Font.Style := RLDBText1.Font.Style - [fsbold];

end;

procedure Tfos.RLDBText1BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
        if tbi['link'] = 1 then
           RLDBText1.Font.Style := [fsBold,fsUnderline]
        else RLDBText1.Font.Style := RLDBText1.Font.Style - [fsBold,fsUnderline];
end;

procedure Tfos.SpeedButton5Click(Sender: TObject);
begin
        relatorio('','tbos.data','nome',

                  'select tbos.chave, tbos.numero, tbos.Data, tbos.orcamento, tbcliente.nome, tbos.total, tbos.vendedor',

                  ' from tbos, tbcliente ',
                  ' and tbos.link = tbcliente.codigo and tbos.venda is null ' ,
                  '',
                  'Total','','','','', '','','','','','', '','','','','','','',
                  'tbos',
                  'Relatório de orçamentos que não geraram venda',
                  'tbos',0,0);
end;

end.





