unit uclientelocaliza;
            
interface
                
uses
  rltypes,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBClient, Provider, DB, Grids, DBGrids,
  ExtCtrls, StdCtrls, Buttons, ActnList, DBCtrls, ExtDlgs, Inifiles, zlib,
  jpeg,RLReport, Mask, Menus, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  Tfclientelocaliza = class(TForm)
    DBGrid1: TDBGrid;
    provedor: TDataSetProvider;
    ds: TDataSource;
    panel2: TPanel;
    ActionList1: TActionList;
    elocalizar: TEdit;
    filtro: TAction;
    tc: TAction;
    opendialog: TOpenPictureDialog;
    image: TAction;
    Action1: TAction;
    panel4: TPanel;
    btnnovo: TSpeedButton;
    btneditar: TSpeedButton;
    btnapagar: TSpeedButton;
    btnimprimir: TSpeedButton;
    SpeedButton3: TSpeedButton;
    tabela: TClientDataSet;
    formatar: TAction;
    prodape: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label1: TLabel;
    DBText6: TDBText;
    Label10: TLabel;
    DBText8: TDBText;
    Label13: TLabel;
    DBText12: TDBText;
    DBText7: TDBText;
    Label3: TLabel;
    Label6: TLabel;
    DBText9: TDBText;
    Label9: TLabel;
    rcampo: TRadioGroup;
    focus: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBText1: TDBText;
    Label11: TLabel;
    DBText10: TDBText;
    vimage: TDBImage;
    SpeedButton8: TSpeedButton;
    DBText11: TDBText;
    Label12: TLabel;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    menu: TPopupMenu;
    lanimal: TMenuItem;
    CadastrodeEquipamento1: TMenuItem;
    FuncionarioAutorizado1: TMenuItem;
    impcontrato: TAction;
    fisjur: TAction;
    Label2: TLabel;
    pgrupo: TDataSetProvider;
    tbgrupo: TClientDataSet;
    dsgrupo: TDataSource;
    litem: TLabel;
    Label35: TLabel;
    DBText5: TDBText;
    ransformaremCliente1: TMenuItem;
    lacrebr: TAction;
    RetornodeAnotaes1: TMenuItem;
    RetornodeClientesVendedorAtual1: TMenuItem;
    vitalcred: TAction;
    Filtrarclientescomretornohoje1: TMenuItem;
    sqlcli: TZQuery;
    CadastrarMensalidade1: TMenuItem;
    ReceberMensalidades1: TMenuItem;
    MensalidadesVencidas1: TMenuItem;
    Atualizarosite1: TMenuItem;
    SpeedButton11: TSpeedButton;
    AtualizarUsurio1: TMenuItem;
    rativo: TRadioGroup;
    Deletados1: TMenuItem;
    sgrupo: TZQuery;
    N1: TMenuItem;
    Alterarusurioesenha1: TMenuItem;
    N2: TMenuItem;
    Filtrarclientessemmovimento1: TMenuItem;
    Filtrarclientessemmovimentodeumperodo1: TMenuItem;
    Filtrarclientescommovimentodeumperodo1: TMenuItem;
    atuabase: TAction;
    N3: TMenuItem;
    CNPJduplicados1: TMenuItem;
    Verificarinconsistnciaentrebaselocal1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    mnuPainelAtualiza: TMenuItem;

    procedure filcli(i:integer);

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure elocalizarKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure elocalizarChange(Sender: TObject);
    procedure elocalizarKeyPress(Sender: TObject; var Key: char);
    procedure codfabricanteExecute(Sender: TObject);
    procedure filtroExecute(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure tcExecute(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure vimageClick(Sender: TObject);
    procedure tabelaAfterScroll(DataSet: TDataSet);
    procedure imageExecute(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure formatarExecute(Sender: TObject);
    procedure focusExecute(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure rcampoClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure tabelaAfterOpen(DataSet: TDataSet);
    procedure fisjurExecute(Sender: TObject);
    procedure ransformaremCliente1Click(Sender: TObject);
    procedure lacrebrExecute(Sender: TObject);
    procedure RetornodeAnotaes1Click(Sender: TObject);
    procedure RetornodeClientesVendedorAtual1Click(Sender: TObject);
    procedure vitalcredExecute(Sender: TObject);
    procedure Filtrarclientescomretornohoje1Click(Sender: TObject);
    procedure CadastrarMensalidade1Click(Sender: TObject);
    procedure ReceberMensalidades1Click(Sender: TObject);
    procedure MensalidadesVencidas1Click(Sender: TObject);
    procedure Atualizarosite1Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure AtualizarUsurio1Click(Sender: TObject);
    procedure Deletados1Click(Sender: TObject);
    procedure Alterarusurioesenha1Click(Sender: TObject);
    procedure Filtrarclientessemmovimentodeumperodo1Click(Sender: TObject);
    procedure Filtrarclientessemmovimento1Click(Sender: TObject);
    procedure Filtrarclientescommovimentodeumperodo1Click(Sender: TObject);
    procedure atuabaseExecute(Sender: TObject);
    procedure CNPJduplicados1Click(Sender: TObject);
    procedure Verificarinconsistnciaentrebaselocal1Click(Sender: TObject);
    procedure mnuPainelAtualizaClick(Sender: TObject);
  private
  PN,PA,PD,PC,chave:string;
    { Private declarations }
  public
  contato:boolean;

    { Public declarations }
  end;

var
  fclientelocaliza: Tfclientelocaliza;

implementation

uses  udm, funcoes, umanu,  uconsumotexto, uconnect,
   uimp, ufiltrocad,UvalidaIE, uclientevalor1,  Math, FAtualizacao;

{$R *.dfm}




procedure Tfclientelocaliza.FormShow(Sender: TObject);
var
img:timage;
begin

          try
            // selecione('alter table tbcliente add usucart varchar(60)');
          except end;


//      campos da grade
      if FileExists(servpath+'imagem\'+name+'.cds') then begin
         fdm.tb.FileName := servpath+'imagem\'+name+'.cds';
         fdm.tb.Open;

         fdm.tb.First;
         while not fdm.tb.Eof do begin
               if fdm.tb['x']= 'X' then
                  dbgrid1.Columns[fdm.tb.RecNo-1].Visible := true
               else
                  dbgrid1.Columns[fdm.tb.RecNo-1].Visible := false;
               fdm.tb.Next;
         end;
         dbgrid1.Repaint;
         fdm.tb.close;
       end;



          elocalizar.Text := '  ';
          filtroexecute(self);
          elocalizar.Text := '%';



          if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\br.bmp')) then begin
             img := timage.Create(self);
             img.Picture.LoadFromFile(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\br.bmp'));

             imagepanel('imagemenu1', altop, panel4, '',img);
             //imagepanel('imagerodape', altop, prodape, 'imagem\br.jpg',nil);
             img.Free;
          end;
//          formatarexecute(self);

          fdm.tbconfig.Open;
          lanimal.Visible := fdm.tbconfig['tipoempresa'] = 'P';
          CadastrodeEquipamento1.Visible := (fdm.tbconfig['tipoempresa'] = 'E') or
                                            (fdm.tbconfig['tipoempresa'] = 'I') or
                                            (fdm.tbconfig['tipoempresa'] = 'A');

          if fdm.tbconfig['tipoempresa'] = 'A' then
             CadastrodeEquipamento1.Caption := 'Cadastro de Veículo';

          fdm.tbconfig.close;

          elocalizar.OnExit := fdm.Exitedit;
          elocalizar.OnEnter := fdm.Enteredit;

          if contato then
             caption := 'Cadastro/Listagem de Contatos';

          ransformaremCliente1.Visible := contato;
          Filtrarclientessemmovimentodeumperodo1.Visible := not contato;
          Filtrarclientessemmovimento1.Visible := not contato;


         if responsavel  = 'LACRE DO BRASIL' then
            lacrebrexecute(self);

end;

procedure Tfclientelocaliza.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if ffiltrocad <> nil then   ffiltrocad.Close;
  tabela.Close;
  Release;
  fclientelocaliza := nil;

end;

procedure Tfclientelocaliza.DBGrid1TitleClick(Column: TColumn);
begin

     indexar(Column, tabela,  nil,elocalizar, label2);

end;

procedure Tfclientelocaliza.elocalizarKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin

            if (key = 40) or (key = 34)  then
              tabela.Next;
            if (key = 38) or (key = 33) then
              tabela.prior;

            if key = 13 then
               filtroexecute(self);

end;

procedure Tfclientelocaliza.elocalizarChange(Sender: TObject);
begin
        loctabela(tabela,nil,elocalizar);

        if tabela.Active then
           litem.Caption := inttostr(tabela.RecordCount)+ ' Itens';
end;

procedure Tfclientelocaliza.elocalizarKeyPress(Sender: TObject; var Key: char);
var
indice:string;
begin
       if tabela.IndexFieldNames <> '' then
          indice := tabela.IndexFieldNames
       else
          indice := tabela.indexname;


        if (tabela.fieldbyname(indice).ClassName = 'TIntegerField') or
           (tabela.fieldbyname(indice).ClassName = 'TFloatField')  then
           if not (key in ['0'..'9', #8,',']) then abort;

        if (tabela.fieldbyname(indice).ClassName = 'TDateField')  then
           if not (key in ['0'..'9', #8,'/']) then abort;
end;

procedure Tfclientelocaliza.codfabricanteExecute(Sender: TObject);
begin
  elocalizar.Clear;
  tabela.IndexFieldNames := 'codigofornecedor';
  elocalizar.SetFocus;
  label2.Caption := 'Localizar por Cód. Fab.';
end;

procedure Tfclientelocaliza.filtroExecute(Sender: TObject);
var
  localizar,filtro,indice,ctp,ativo: string;
begin

        if tabela.IndexFieldNames <> '' then
           indice := tabela.IndexFieldNames
        else
           indice :=  tabela.indexname;
        tabela.Filtered := false;   

        if rativo.Visible then
           if rativo.ItemIndex = 0 then
              ativo := ' and np= "A" '
           else if rativo.ItemIndex = 1 then
              ativo := ' and np= "I" '
           else if rativo.ItemIndex = 2 then
              ativo := ' and np= "C" '
           else if rativo.ItemIndex = 4 then
              ativo := ' and cargo="DUP" ';


  filtro := '';
  if rcampo.ItemIndex = 0 then
     localizar:=  quotedstr(elocalizar.Text + '%')
  else
     localizar:=  quotedstr('%'+elocalizar.Text + '%');


          if contato then
             ctp := ' and ctp is not null '
          else
             ctp := ' and ctp is null ';


  filtro := ' where  (flag <> "D" or flag is null) '+ ativo + ' and '+ indice + ' like ' +localizar;

  sqlcli.SQL.Clear;
  sqlcli.sql.add('select tbcliente.* '+
                        {' ,date_format(nascimento,"%d")as AnivDia'+
                        ' ,date_format(nascimento,"%m")as AnivMes'+
                        ' ,date_format(nascimento,"%d/%m")as AnivDM+}
                        '  from tbcliente ' + filtro+ctp+chave);

  //DEBUGSTR(sqlcli);
  if tabela.Active = False then
  begin
    tabela.Open;
  end
  else
    tabela.refresh;

    tabela.CancelRange;

  imageExecute(self);

  if tabela.Active then
     litem.Caption := inttostr(tabela.RecordCount)+ ' Itens';

end;

procedure Tfclientelocaliza.btnnovoClick(Sender: TObject);

begin


  permissao(PN,'PN','CLIENTE');

  if responsavel = 'VITALCRED' then begin
     application.CreateForm(tfclientevalor1, fclientevalor1);
     fclientevalor1.modo := 'gravar';
     tabela.Insert;
     tabela['socio'] := 'N';
     tabela['sexo'] := 'M';
     tabela['flagsite'] := '1';
     tabela['vinculo'] := 'C';
     tabela['np'] := 'I';
  end else begin
//     application.CreateForm(tfclientevalor, fclientevalor);
//     fclientevalor.modo := 'gravar';
     tabela.Insert;
  end;

          tabela['data'] := datetostr(now);
          tabela['estadocivil'] := 'S';
          tabela['FisJur'] := 'F';
          tabela['vendaaprazo'] := 'N';
          tabela['vendacheque'] := 'N';
          tabela['vendacartao'] := 'N';
          tabela['fidelidade'] := 'N';
          tabela['omesmo'] := 'N';

          tabela['laprazo'] := 'S';
          tabela['lavulsa'] := 'S';
          tabela['lcheque'] := 'S';

          fdm.query1.Close;

          if responsavel = 'VITALCRED' then begin
             tabela['codigo'] :=null;
             fclientevalor1.ecodigo.ReadOnly := true;
             fclientevalor1.ShowModal;
          end
          //else        fclientevalor.ShowModal;


end;

procedure Tfclientelocaliza.btneditarClick(Sender: TObject);
begin

  permissao(PA,'PA','Cliente');
        abortaacao(tabela,nil,'chave','','','','',0);

  if responsavel = 'VITALCRED' then begin
     application.CreateForm(tfclientevalor1, fclientevalor1);
     fclientevalor1.modo := 'alterar';
     fclientevalor1.ecodigo.ReadOnly := true;
     fclientevalor1.endereco := tabela.fieldbyname('endereco').asstring;
     fclientevalor1.numero := tabela.fieldbyname('numero').asstring;
     fclientevalor1.bairro := tabela.fieldbyname('bairro').asstring;
     fclientevalor1.cidade := tabela.fieldbyname('municipio').asstring;
     fclientevalor1.cep := tabela.fieldbyname('cep').asstring;
     fclientevalor1.uf := tabela.fieldbyname('uf').asstring;

     fclientevalor1.fone := tabela.fieldbyname('fone').asstring;
     fclientevalor1.fone2 := tabela.fieldbyname('fone2').asstring;
     fclientevalor1.fone3 := tabela.fieldbyname('fone3').asstring;
     fclientevalor1.email := tabela.fieldbyname('email').asstring;
     tabela.Edit;
     if tabela['flagsite'] = null then tabela['flagsite'] := '1';
     fclientevalor1.ShowModal;

  end else begin
{     application.CreateForm(tfclientevalor, fclientevalor);
     fclientevalor.modo := 'alterar';
     fclientevalor.endereco := tabela.fieldbyname('endereco').asstring;
     fclientevalor.numero := tabela.fieldbyname('numero').asstring;
     fclientevalor.bairro := tabela.fieldbyname('bairro').asstring;
     fclientevalor.cidade := tabela.fieldbyname('municipio').asstring;
     fclientevalor.cep := tabela.fieldbyname('cep').asstring;
     fclientevalor.uf := tabela.fieldbyname('uf').asstring;

     fclientevalor.fone := tabela.fieldbyname('fone').asstring;
     fclientevalor.fone2 := tabela.fieldbyname('fone2').asstring;
     fclientevalor.fone3 := tabela.fieldbyname('fone3').asstring;
     fclientevalor.email := tabela.fieldbyname('email').asstring;
     fclientevalor.ShowModal;}
  end;



end;

procedure Tfclientelocaliza.tcExecute(Sender: TObject);
begin
  btnnovoClick(self);
end;

procedure Tfclientelocaliza.btnapagarClick(Sender: TObject);
begin
        permissao(PD,'PD','Cliente');
        abortaacao(tabela,nil,'chave','','','','',0);


        if msg('',1) then   begin

   GALTERA('cliente',tabela.fieldbyname('codigo').asstring,'d');

    with fdm.query1 do
    begin
      Close;

      sql.clear;
      sql.add('update tbcliente set flag = "D" where chave = ' +
              QuotedStr(tabela.FieldByName('chave').AsString));
      execsql;


    end;

    tabela.cancel;
    tabela.refresh;

    imageexecute(self);
  end;
end;

procedure Tfclientelocaliza.vimageClick(Sender: TObject);
begin
        abortaacao(tabela,nil,'chave','','','','',0);

  if not DirectoryExists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\cliente\')) then
         ForceDirectories(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\cliente\'));


  opendialog.FileName := '';
  opendialog.Execute;

  if opendialog.FileName <> '' then
  begin
    vimage.Picture.LoadFromFile(opendialog.FileName);

    if vimage.Picture <> nil then
      vimage.Picture.SaveToFile(PChar(ExtractFilePath(ParamStr(0)) +
        'imagem\cliente\' +      tabela.FieldByName('codigo').AsString + '.jpg'));
    opendialog.FileName := '';
  end;
end;

procedure Tfclientelocaliza.tabelaAfterScroll(DataSet: TDataSet);
begin
  imageExecute(self);
end;

procedure Tfclientelocaliza.imageExecute(Sender: TObject);
begin

  if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\cliente\' +
      tabela.FieldByName('codigo').AsString + '.jpg')) then

    vimage.Picture.loadfromFile(PChar(ExtractFilePath(ParamStr(0)) +
                              'imagem\cliente\' +  tabela.FieldByName('codigo').AsString + '.jpg'))
  else
    vimage.Picture := nil;

end;

procedure Tfclientelocaliza.btnimprimirClick(Sender: TObject);
var
exp,loc,imp,ctp:string;
itens:boolean;
begin
//tbgrupo.open;
        abortaacao(tabela,nil,'chave','','','','',0);

          if contato then
             ctp := 'Contatos'
          else
             ctp := 'Clientes';

  imp := '3';
  if inputquery('Imprimir', 'Digite uma opção de impressão:' + #13 + #13 +
            '1 = Imprime ficha(s) do(s) '+ctp+'(s)'+#13+
            '2 = Imprime ficha em branco '+#13+
            '3 = Escolher os Campos '+#13+
            '4 = Etiqueta '+#13+
            '5 = Configura Etiqueta '+#13+
            '6 = Contrato '+#13+
            'Esc = Cancela ', imp) then  else abort;


    if (imp <>'1') and (imp <>'2') and (imp <>'3') and (imp <>'4') and
       (imp <>'5') and (imp <>'6')  then else begin

        loc:= tabela.fieldbyname('chave').AsString;
        filtrar(dbgrid1,tabela,nil,'chave');
        tabela.DisableControls;
    end;


    if imp ='1' then begin

        itens := false;
        if tipoempresa = 'E' then
            itens:= Application.MessageBox('Imprime lista de equipamento? ',
                                      'Confirme', 4 + MB_ICONQUESTION+MB_DEFBUTTON2) = idyes;

       if  responsavel = 'GEORGE HILTON' then begin
           fdm.tbconfig.Open;
           rodapecliente:=fdm.tbconfig.fieldbyname('rodapecliente').AsString;
           fdm.tbconfig.Close;
       end;

       impficha(self,tabela,tbgrupo,nil,ds,dsgrupo,dbgrid1,'Fichas dos '+ctp+'s',false,itens);
    end;

    if imp ='2' then
       impficha(self,tabela,tbgrupo,nil,ds,dsgrupo,dbgrid1,fantasiaempresa+' - Preencha os dados',true,false);


    if imp = '3' then
       impgrade(tabela,nil,ds,dbgrid1,'tbcliente', 'Listagem de '+ctp,'',true);


    if imp = '4' then
       configimp(tabela,nil,2,false);


    if imp = '5' then
       configimp(tabela,nil,2,true);


//    if imp = '6' then        impcontratoExecute(self);

    tabela.EnableControls;
    tbgrupo.close;
    tabela.Filtered := false;
    tabela.Locate('chave',loc,[]);

end;

procedure Tfclientelocaliza.FormCreate(Sender: TObject);
begin

 //permissoes
            PN := sqlacesso.fieldbyname('inserir').AsString;
            PA :=sqlacesso.fieldbyname('alterar').AsString;
            PD := sqlacesso.fieldbyname('apagar').AsString;
            PC := sqlacesso.fieldbyname('consultar').AsString;
            //PI := sqlacesso.fieldbyname('imprimir').AsString;
            sqlacesso.Destroy;

             if responsavel = 'VITALCRED' then
                vitalcredExecute(self) ;

//                Atualizarosite1.Visible  := responsavel = 'VITALCRED' ;
                Verificarinconsistnciaentrebaselocal1.Visible := Atualizarosite1.Visible;
//                AtualizarUsurio1.Visible  := responsavel = 'VITALCRED' ;
                rativo.Visible  := responsavel = 'VITALCRED' ;
//                MensalidadesVencidas1.Visible   := responsavel = 'VITALCRED' ;
//                ReceberMensalidades1.Visible   := responsavel = 'VITALCRED' ;
                CadastrarMensalidade1.Visible   := responsavel = 'VITALCRED' ;
                RetornodeAnotaes1.Visible  := responsavel = 'VITALCRED' ;
                RetornodeClientesVendedorAtual1.Visible  := responsavel = 'VITALCRED' ;
                Filtrarclientescomretornohoje1.Visible  := responsavel = 'VITALCRED' ;

end;

procedure Tfclientelocaliza.SpeedButton3Click(Sender: TObject);
var
i:integer;
begin

     if ffiltrocad = nil then begin
        ffiltrocad:=tffiltrocad.Create(self,tabela,sqlcli,'tbcliente',name,dbgrid1,4);
        i:=-5;

        if responsavel = 'VITALCRED' then begin
           criaRa('socio','Sócio','N_Sócio','','','','','',i);
           i:=i+25;
        end;

        criaRa('fisjur','Física','Jurídica','','','','','',i);
        i:=i+25;
        criaRa('estadocivil','Solt','Cas','Div','Out','','','',i);
        i:=i+30;
        criaMa('data','Cadastrados De: ',i,2);
        i:=i+20;
        criaMa('ultimacompra','Compras de:',i,2);
        i:=i+20;
        criaMa('hhultimacompra','Sem Movim. Desde :',i,1);
        i:=i+20;
        criaMa('hhhultimacompra','Com Movim. Desde :',i,1);
        i:=i+22;
        criaMCh('tipocliente','Tipo: ', 'tbtipocliente','tipocliente',i);
        {i:=i+22;
        criaMCh('regiao','Região: ', 'tbregcli','nome',i);
        i:=i+22; }
        criaMCh('municipio','Cidade: ','tbcliente','municipio',i);
        i:=i+22;
        criaMCh('bairro','Bairro: ','tbcliente','bairro',i);
        i:=i+22;
        criaMCh('cep','Cep: ','tbcliente','cep',i);
        i:=i+22;
        criaMCh('uf','Estado: ','tbcliente','uf',i);
        i:=i+22;
        criaMCh('nascimento','Nascidos mês de: ','tbcliente','',i);
        i:=i+22;
        criaMCh('dnascimento','Nascidos dia: ','tbcliente','',i);
        i:=i+22;
        criaMCh('vendedor','Vendedor: ','tbcliente','vendedor',i);

        if responsavel = 'VITALCRED' then begin
           i:=i+22;
           criaMCh('Banco','Banco: ','tbcliente','banco',i);
           i:=i+22;
           criaMCh('agencia','Agência: ','tbcliente','agencia',i);
           ffiltrocad.PageControl1.Height :=380;
        end;

        ffiltrocad.Show;

        end else
        ffiltrocad.Show;

        ffiltrocad.Height := 380;
        if tabela.Active then
           litem.Caption := inttostr(tabela.RecordCount)+ ' Itens';

end;

procedure Tfclientelocaliza.DBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure Tfclientelocaliza.formatarExecute(Sender: TObject);
begin

   // (tabela.FieldByName('nascimento') as tdatefield).EditMask  := 'mm/dd';

    tabela.FieldByName('nascimento').EditMask := '99/99/9999';
    tabela.FieldByName('data').EditMask := '99/99/9999';
    tabela.FieldByName('dtvenda').EditMask := '99/99/9999';    
    (tabela.FieldByName('codigo') as tintegerfield).displayformat := '000000';
    (tabela.FieldByName('limitecredito') as tfloatfield).displayformat := '###,##0.00';
    (tabela.FieldByName('valor')  as tfloatfield).displayformat := '###,##0.00';
    (tabela.FieldByName('credito')  as tfloatfield).displayformat := '###,##0.00';
   
end;

procedure Tfclientelocaliza.focusExecute(Sender: TObject);
begin
        if rcampo.ItemIndex = 0 then
           rcampo.ItemIndex :=1
        else
           rcampo.ItemIndex:= 0;

        elocalizar.SetFocus;           
end;

procedure Tfclientelocaliza.SpeedButton7Click(Sender: TObject);
begin
            abortaacao(tabela,nil,'chave','','','','',0);
            Acesso1('cadastro');

            cadp ('tbfollowup', '', 'ANOTAÇÕES '+caption,
                  '','',
                  'assunto','tbassunto','assunto',
                  '','','',
                  '','','',
                  'data',
                  'hora',
                  'assunto',
                  'historico',
                  0,tabela.fieldbyname('chave').AsInteger );

end;

procedure Tfclientelocaliza.SpeedButton1Click(Sender: TObject);
var
st,loc:string;
begin
        abortaacao(tabela,nil,'chave','','','','',0);

          permissao(PA,'PA','CLIENTE');

           VF := FALSE;
           senhagerencial('ALTERAR CRÉDITO',
                          'DIGITE A SENHA GERENCIAL PARA LIBERAR:',
                          'ALTERAR O CREDITO DO CLIENTE');


    if inputquery('Alterar o crédito do cliente', 'Digite o novo crédito:', st) then
    begin


      if StrIsFloat(st) = False then
      begin
        Application.MessageBox('O valor digitado não é um número válido!',
          'Erro', 0 + MB_ICONerror);
        abort;
      end;

      with fdm.query1 do begin
           close;
              sql.clear;
              sql.add(  'update tbcliente set credito = '+ realdblstr(strtofloat(st))+
                          ' where codigo ='+ quotedstr(tabela.fieldbyname('codigo').asstring));
           execsql;
      end;

      loc := tabela.fieldbyname('chave').asstring;

      tabela.cancel;
      tabela.refresh;
      tabela.locate('chave',loc,[]);

    end;

end;

procedure Tfclientelocaliza.SpeedButton4Click(Sender: TObject);
begin
       abortaacao(tabela,nil,'chave','','','','',0);
       vidamov(tabela.fieldbyname('codigo').AsString,4);
end;

procedure Tfclientelocaliza.SpeedButton5Click(Sender: TObject);
var
imp,ntb:string;
begin

        abortaacao(tabela,nil,'chave','','','','',0);
        fdm.tbconfig.Open;
        ntb:='tbpedido';


          imp :='1';
          if inputquery('Consumo', 'Digite uma opção:' + #13 + #13 +
                            '1 = Última compra' + #13 +
                            '2 = Produtos consumidos (agrupa qtd)'+#13+
                            '3 = Produtos consumidos (por data)'+#13+
                            'Esc = Cancela '
                           , imp) then  else abort;

          fdm.comsumo(tabela.fieldbyname('codigo').AsString,ntb,ntb+'item',imp,'');


end;

procedure Tfclientelocaliza.SpeedButton6Click(Sender: TObject);
var
codigo:string;
sql: tzquery;
begin


       abortaacao(tabela,nil,'chave','','','','',0);

       ipnet := '';

       periodo('ip','transferencia',188,369);

       if ipnet <> '' then begin

          fdm.ConectNet.Connected := false;

       try
          fdm.ConectNet.Connected := true;
       except
          Application.MessageBox('Não foi possível conectar a este endereço, verifique so o mesmo está correto!',
                                'Erro', 0 + MB_ICONerror);
          abort;
       end;


          sql := tzquery.Create(application);
          with sql do begin
               Connection := fdm.Conectnet;

         if tabela.FieldByName('cnpj').AsString <> '' then begin

               close;
               sql.Clear;
               sql.add( 'select cnpj, nome from tbcliente where cnpj = ' +
                              quotedstr(tabela.fieldbyname('cnpj').AsString) );
               open;

          // se já existir
          if not IsEmpty then begin
            Application.MessageBox(pchar(fieldbyname('nome').asstring + ' Já está cadastrado nesta filial com este CNPJ/CPF!'), 'Erro', 0 + MB_ICONerror);
            fdm.ConectNet.Connected := false;
            destroy;
            abort;
          end;
        end;


         if tabela.FieldByName('ie').AsString <> '' then begin

               close;
               sql.Clear;
               sql.add( 'select ie, nome from tbcliente where ie = ' +
                              quotedstr(tabela.fieldbyname('ie').AsString) );
               open;


          // se já existir
          if not IsEmpty then begin
            Application.MessageBox(pchar(fieldbyname('nome').asstring + ' Já está cadastrado nesta filial com este I.E/R.G!'), 'Erro', 0 + MB_ICONerror);
            fdm.ConectNet.Connected := false;
            destroy;
            abort;
          end;
        end;

         if (tabela.FieldByName('cnpj').AsString = '') and
            (tabela.FieldByName('ie').AsString = '') then begin

               close;
               sql.Clear;
               sql.add( 'select nome from tbcliente where nome = ' +
                              quotedstr(tabela.FieldByName('nome').AsString) );
               open;


          // se já existir
          if not IsEmpty then begin
            Application.MessageBox(pchar(fieldbyname('nome').asstring + ' Já está cadastrado nesta filial, se este for um outro cliente, altere o CNPJ/CPF ou IE/RG para diferenciar!'), 'Erro', 0 + MB_ICONerror);
            fdm.ConectNet.Connected := false;
            destroy;
            abort;
          end;
        end;

            // transfere a ficha principal
            close;
               sql.Clear;
               sql.add( 'select max(codigo)as codigo from tbcliente');
            open;

            codigo := inttostr(fieldbyname('codigo').asinteger + 1);

          tabela.Edit;
          tabela['codigo'] := codigo;
          tabela['saldo'] := '0';

          gravafilial(tabela,'tbcliente');
          tabela.Cancel;

          destroy;

        end;

          fdm.ConectNet.Connected := false;
          Application.MessageBox('Transferido!', 'Transferência', 0+MB_ICONINFORMATION);


      end;


end;

procedure Tfclientelocaliza.rcampoClick(Sender: TObject);
begin
        filtroexecute(self);
        elocalizar.SetFocus;
end;

procedure Tfclientelocaliza.SpeedButton8Click(Sender: TObject);
var
loc:string;
tf:boolean;
begin

      abortaacao(tabela,nil,'chave','','','','',0);


      loc:= tabela.fieldbyname('chave').AsString;
      filtrar(DbGrid1,tabela,nil,'chave');

      if tabela.RecordCount = 1 then
        tf := false
      else
        tf := true;

        fdm.email(tabela.fieldbyname('email').AsString,
              tabela.fieldbyname('codigo').AsString,
              tabela.fieldbyname('nome').AsString ,
              'CADASTRO Nº ' +tabela.fieldbyname('codigo').AsString,
              '',
              fclientelocaliza.sqlcli,
              tf);

        tabela.Filtered := false;
        tabela.Locate('chave',loc,[]);

end;

procedure Tfclientelocaliza.Label11Click(Sender: TObject);
var
loc,st:string;
begin

          abortaacao(tabela,nil,'chave','','','','',0);

           VF := FALSE;
           senhagerencial('ALTERAR CRÉDITO',
                          'DIGITE A SENHA GERENCIAL PARA LIBERAR:',
                          'ALTERAR O CREDITO DO CLIENTE');


    if inputquery('Alterar o crédito do cliente', 'Digite o novo crédito:', st) then
    begin


      if StrIsFloat(st) = False then
      begin
        Application.MessageBox('O valor digitado não é um número válido!',
          'Erro', 0 + MB_ICONerror);
        abort;
      end;


      with fdm.query1 do begin
           close;
              sql.clear;
              sql.add(  'update tbcliente set credito = '+ realdblstr(strtofloat(st))+
                          ' where codigo = '+quotedstr(tabela.fieldbyname('codigo').AsString) );
           execsql;
      end;

      loc := tabela.fieldbyname('chave').asstring;
      tabela.Refresh;
      tabela.Locate('chave',loc,[]);


    end;



end;

procedure Tfclientelocaliza.SpeedButton10Click(Sender: TObject);
begin
                menu.Popup(SpeedButton10.left+100,SpeedButton10.top+30);
end;

procedure Tfclientelocaliza.tabelaAfterOpen(DataSet: TDataSet);
begin
        formatarexecute(self);
end;

procedure Tfclientelocaliza.fisjurExecute(Sender: TObject);
begin
                application.CreateForm(tfconsumotexto,fconsumotexto);
                fconsumotexto.ltitulo.caption := 'SINTEGRA';
                fconsumotexto.mtext.Lines.Clear;
                fconsumotexto.mtext.Lines.Add('');
                fconsumotexto.mtext.Lines.Add('REGISTROS INVÁLIDOS:');
                fconsumotexto.mtext.Lines.Add('');

                tabela.First;

                     while not tabela.eof do begin

                         if tabela.fieldbyname('uf').AsString = '' then
                            fconsumotexto.mtext.Lines.Add('UF = em branco: Código '+
                                                          tabela.fieldbyname('codigo').AsString);

                         if ((length(formatnumeric(tabela.fieldbyname('cnpj').AsString)) <> 14) and
                             (length(formatnumeric(tabela.fieldbyname('cnpj').AsString)) <> 11)) or
                             (tabela.fieldbyname('cnpj').AsString='') or
                             (tabela['cnpj'] = null)  then begin
                              fconsumotexto.mtext.Lines.Add('CNPJ inválido: Código '+
                                                            tabela.fieldbyname('codigo').AsString+
                                                            ' CNPJ '+tabela.fieldbyname('cnpj').AsString);


                         end else if (length(formatnumeric(tabela.fieldbyname('cnpj').AsString)) = 14) then begin
                            if (VerCGC(tabela.fieldbyname('cnpj').AsString) = false) then
                               fconsumotexto.mtext.Lines.Add('CNPJ inválido: Código '+
                                                            tabela.fieldbyname('codigo').AsString+
                                                            ' CNPJ '+tabela.fieldbyname('cnpj').AsString)

                         end else if (length(formatnumeric(tabela.fieldbyname('cnpj').AsString)) = 11) then begin
                            if (Vercpf(tabela.fieldbyname('cnpj').AsString) = false) then
                               fconsumotexto.mtext.Lines.Add('CNPJ_CPF inválido: Código '+
                                                             tabela.fieldbyname('codigo').AsString+
                                                             ' CNPJ ' + tabela.fieldbyname('cnpj').AsString);
                         end;

                          if (tabela.fieldbyname('ie').AsString <> 'ISENTO') and
                             (tabela.fieldbyname('fisjur').AsString='J' ) then
                             if ChkInscEstadual(formatnumeric(tabela.fieldbyname('cnpj').AsString),
                               tabela.fieldbyname('uf').AsString) = false then
                               fconsumotexto.mtext.Lines.Add('IE inválido: Código '+
                                                             tabela.fieldbyname('codigo').AsString+
                                                             ' IE ' + tabela.fieldbyname('ie').AsString);

                         tabela.next;
                   end;

                fconsumotexto.showmodal;
                fconsumotexto.Release;



end;

procedure Tfclientelocaliza.ransformaremCliente1Click(Sender: TObject);
begin
        abortaacao(tabela,nil,'chave','','','','',0);

        if Application.MessageBox('Deseja transformar o contato em cliente? ',
                                  'Confirme', 4 + MB_ICONQUESTION) = idno then abort;

        showmessage('Este contato, agora é o cliente número ' +
                     contatocliente(tabela.fieldbyname('chave').AsString,
                                    tabela.fieldbyname('nome').AsString));

        tabela.Cancel;
        tabela.refresh;
end;

procedure Tfclientelocaliza.lacrebrExecute(Sender: TObject);
var
j:integer;
begin

             j:= dbgrid1.Columns.Count-1;

             while j >0  do begin
                 dbgrid1.Columns[j].Destroy;
                 j:=j-1;
             end;

             ncol :=1;
             criacoluna(DBGrid1,'NomeCurto','Apelido',150);
             criacoluna(DBGrid1,'Nome','Nome',250);
             criacoluna(DBGrid1,'contato','Contato',150);
             criacoluna(DBGrid1,'cargo','Cargo',150);
             criacoluna(DBGrid1,'cnpj','CNPJ/CPF',120);
             criacoluna(DBGrid1,'ie','IE/RG',100);
             criacoluna(DBGrid1,'Endereco','Endereço',250);
             criacoluna(DBGrid1,'Numero','Número',40);
             criacoluna(DBGrid1,'Complemento','Complemento',100);
             criacoluna(DBGrid1,'Bairro','Bairro',130);
             criacoluna(DBGrid1,'Municipio','Cidade',130);
             criacoluna(DBGrid1,'Cep','Cep',64);
             criacoluna(DBGrid1,'UF','UF',30);
             criacoluna(DBGrid1,'DDD','DDD',25);
             criacoluna(DBGrid1,'Fone','Fone',66);
             criacoluna(DBGrid1,'Fone2','Fone2',66);
             criacoluna(DBGrid1,'foneconjuge','Fone3',66);
             criacoluna(DBGrid1,'Fone3','Celular',66);
             criacoluna(DBGrid1,'ramal','Ramal',40);
             criacoluna(DBGrid1,'EMail','EMail',130);
             criacoluna(DBGrid1,'Site','Site',130);
             criacoluna(DBGrid1,'MSN','MSN',130);
             criacoluna(DBGrid1,'Skape','Skape',130);
             criacoluna(DBGrid1,'obs','Obs',200);
end;

procedure Tfclientelocaliza.RetornodeAnotaes1Click(Sender: TObject);
begin
                 relatorio('','tbfollowup.retorno','nome',

                                        'select tbfollowup.chave, tbfollowup.data,tbfollowup.assunto, '+
                                        'tbfollowup.retorno, tbcliente.nome, tbcliente.Vendedor ',

                                        ' from tbfollowup, tbcliente ',

                                        ' and tbfollowup.link=tbcliente.chave  ',

                                        '','','','','','', '','','','','','','', '','','','','','',
                                            'tbfollowup',
                                            'Retorno de Clientes',
                                            'tbcliente',1,0);

end;

procedure Tfclientelocaliza.RetornodeClientesVendedorAtual1Click(
  Sender: TObject);
begin
                 relatorio('','tbfollowup.retorno','nome',

                                        'select tbfollowup.chave, tbfollowup.data,tbfollowup.assunto, '+
                                        'tbfollowup.retorno, tbcliente.nome, tbcliente.Vendedor ',

                                        ' from tbfollowup, tbcliente ',

                                        ' and tbfollowup.link=tbcliente.chave  '+
                                        ' and tbcliente.Vendedor ='+quotedstr(vendedor),

                                        '','','','','','', '','','','','','','', '','','','','','',
                                            'tbfollowup',
                                            'Retorno de Clientes',
                                            'tbcliente',1,0);


end;

procedure Tfclientelocaliza.vitalcredExecute(Sender: TObject);
var
j:integer;
begin

             j:= dbgrid1.Columns.Count-1;

             while j >0  do begin
                 dbgrid1.Columns[j].Destroy;
                 j:=j-1;
             end;

//             DBGrid1.FixedColor := $008A736A;
             ncol:=1;

             criacoluna(dbgrid1,'Nome','Nome',250);
             criacoluna(dbgrid1,'titular','Tut. Conta',150);
             criacoluna(dbgrid1,'DDD','DDD',25);
             criacoluna(dbgrid1,'Fone','Fone',66);
             criacoluna(dbgrid1,'Fone2','Fone2',66);
             criacoluna(dbgrid1,'Fone3','Fone Con.',66);
             criacoluna(dbgrid1,'GP','Grupo Cartão',100); 
             criacoluna(dbgrid1,'vendedor','Vendedor',100);
             criacoluna(dbgrid1,'Municipio','Cidade',130);
             criacoluna(dbgrid1,'Bairro','Bairro',130);
             criacoluna(dbgrid1,'Endereco','Endereço',250);
             criacoluna(dbgrid1,'Numero','Número',64);
             criacoluna(dbgrid1,'Complemento','Complemento',100);
             criacoluna(dbgrid1,'Cep','Cep',64);
             criacoluna(dbgrid1,'UF','UF',30);
             criacoluna(dbgrid1,'cnpj','CPF/CNPJ',100);
             criacoluna(dbgrid1,'IE','RG/IE',100);

             criacoluna(dbgrid1,'nomecurto','Nome Clínica/Consultório',250);
             criacoluna(dbgrid1,'Enderecocobranca','Endereço Cob',250);
             criacoluna(dbgrid1,'Numerocobranca','Número Cob',64);
             criacoluna(dbgrid1,'Complementocobranca','Compl Cob',100);
             criacoluna(dbgrid1,'Bairrocobranca','Bairro Cob',130);
             criacoluna(dbgrid1,'Municipiocobranca','Cidade Cob',130);
             criacoluna(dbgrid1,'Cepcobranca','Cep Cob',64);
             criacoluna(dbgrid1,'UFcobranca','UF Cob',30);


             criacoluna(dbgrid1,'EMail','EMail',130);
             criacoluna(dbgrid1,'Site','Site',130);
             criacoluna(dbgrid1,'MSN','Carteira',130);
             criacoluna(dbgrid1,'usucart','UsuCart',130);
             criacoluna(dbgrid1,'Skape','Skape',130);


             criacoluna(dbgrid1,'socio','Sócio',25);
             criacoluna(dbgrid1,'promocao','Promoção',25);
             criacoluna(dbgrid1,'np','Status',25);
             criacoluna(dbgrid1,'FisJur','F/J',25);
             criacoluna(dbgrid1,'conjuge','Nome P. Física',150);
             criacoluna(dbgrid1,'referencia','Responsável',100);
             criacoluna(dbgrid1,'sexo','Sexo',25);
             criacoluna(dbgrid1,'tipocliente','Especialidade',70);
             criacoluna(dbgrid1,'statu','Órgão',70);
             criacoluna(dbgrid1,'CRO','CRO',64);
             criacoluna(dbgrid1,'data','DtCad',64);
             criacoluna(dbgrid1,'dtvenda','DtVenda',64);
             criacoluna(dbgrid1,'limitecredito','Limite Créd',64);

             
             criacoluna(dbgrid1,'Banco','Banco',80);
             criacoluna(dbgrid1,'nbanco','N.Banco',64);
             criacoluna(dbgrid1,'agencia','Agência',64);
             criacoluna(dbgrid1,'conta','Conta',64);
             criacoluna(dbgrid1,'cnpjconta','CPF/CNPJ_T',100);
             criacoluna(dbgrid1,'IEconta','RG/IE_T',100);
             criacoluna(dbgrid1,'diamensalidade','DiaMensal',64);
             criacoluna(dbgrid1,'vrmensalidade','ValMensal',150);
             criacoluna(dbgrid1,'dtval','Valer em',64);
             criacoluna(dbgrid1,'diarecbto','Último Recbto',150);


             criacoluna(dbgrid1,'transportadora','Usuário',70);
             criacoluna(dbgrid1,'filial','Senha',70);
             criacoluna(dbgrid1,'txbc','TxTransf',70);

             criacoluna(dbgrid1,'obs','Obs',200);
end;

procedure Tfclientelocaliza.Filtrarclientescomretornohoje1Click(
  Sender: TObject);

  var scr:string;
begin
      scr :='';
      with fdm.query1 do begin
           close;
              sql.clear;
              sql.add( 'select tbcliente.codigo from tbfollowup, tbcliente '+
                         ' where tbfollowup.link=tbcliente.chave  '+
                         ' and tbcliente.Vendedor ='+quotedstr(vendedor)+
                         ' and tbfollowup.retorno = now() ');
           //debugstr(commandtext);
           open;

           first;

           while not eof do begin
                 if scr = '' then
                    scr := '( codigo = '+quotedstr(fieldbyname('codigo').AsString)
                 else
                    scr :=scr +  ' or codigo = '+quotedstr(fieldbyname('codigo').AsString);
                 next;
           end;

           close;
      end;

      if scr <> '' then begin
         sqlcli.SQL.clear;
         sqlcli.sql.add('select * from tbcliente  where  '+
                            '(flag <> "D" or flag is null) and '+scr +')');
      end else showmessage('Nenhum contato para hoje!');

      tabela.close;
      tabela.IndexFieldNames := 'nome';
      tabela.Open;
      formatarexecute(self);
      label2.Caption := 'Localizar por Nome (A~Z)';


end;

procedure Tfclientelocaliza.CadastrarMensalidade1Click(Sender: TObject);
var
loc,dtval:string;
dia :integer;
valor :double;
begin
             if Pred(dbgrid1.SelectedRows.Count) < 0 then msg('#Você não tem clientes selecionados.!',0);
             filtrar(dbgrid1,tabela,nil,'chave');

             dia := strtoint(msgi('Alterar o dia e o valor das mensalidades dos clientes selecionados? '+#13+#13+
                                  'Digite o dia do vencimento:',2));
             valor := strtofloat(msgi('Digite o valor da mensalidade:',2));
             dtval := QuotedStr(FormatDateTime('yyyy-mm-dd', strtodate(msgi('Valer a partir de que data?',1))));

             loc:= tabela.fieldbyname('chave').AsString;
             tabela.First;
             while not tabela.Eof do begin
                   selecione('update tbcliente set '+
                             ' diamensalidade = '+realdblstr(dia)+
                             ', vrmensalidade = '+realdblstr(valor)+
                             ', dtval = ' +  dtval  +
                             ' where chave = '+quotedstr(tabela.fieldbyname('chave').AsString));
                tabela.Next;
             end;

             tabela.Filtered := false;
             tabela.cancel;
             tabela.Refresh;
             tabela.Locate('chave',loc,[]);
end;

procedure Tfclientelocaliza.ReceberMensalidades1Click(Sender: TObject);
var
dt:tdate;
begin

         if (tabela.fieldbyname('diamensalidade').AsInteger <=0) or
            (tabela.fieldbyname('vrmensalidade').asfloat <=0) then begin
            showmessage('Para receber uma mensalidade, é preciso que seu valor e o dia do vencimento estejam cadastrados.');
            CadastrarMensalidade1Click(self);
            abort;
         end;

         cadp ('tbmensalidade', 'select * from tbmensalidade where link = ' +
                   quotedstr(tabela.fieldbyname('chave').AsString),
              'Vencto dia '+tabela.fieldbyname('diamensalidade').AsString+
              '   >>   Valor '+ format('%n',[tabela.fieldbyname('vrmensalidade').asfloat]),

              '','',           //campos que nao devem duplicar
              '','','',        //combo1(campo,tabela,nomecampotabela)
              '','','',        //combo2(campo,tabela,nomecampotabela)
              '','','',
              'DataRecebimento',              //campo auto incremento
              '',              //campo auto incremento
              '',                       //campo que nao ser nulo
              '',
              2,tabela.fieldbyname('chave').AsInteger);   //onde vai comecar a criar os campos + link


         selecione('select max(DataRecebimento)as dt from tbmensalidade where link = ' +
                   quotedstr(tabela.fieldbyname('chave').AsString));

         if sqlpub['dt']<> null then
            if ((formatdatetime('mm',sqlpub.fieldbyname('dt').AsDateTime)=
                formatdatetime('mm',date)) and

                (formatdatetime('yyyy',sqlpub.fieldbyname('dt').AsDateTime)=
                formatdatetime('yyyy',date))) then begin

                dt:=sqlpub.fieldbyname('dt').AsDateTime;
                sqlpub :=nil;

                selecione('update tbcliente set diarecbto = ' +
                          quotedstr(formatdatetime('yyyy-mm-dd',dt))+
                          ' where chave = '+ quotedstr(tabela.fieldbyname('chave').AsString));

            end else sqlpub :=nil;

end;

procedure Tfclientelocaliza.MensalidadesVencidas1Click(Sender: TObject);
var
ano,mes:string;
begin

                 ano := formatdatetime('yyyy',date);
                 mes := formatdatetime('mm',date);


                 relatorio('Cliente','','nome',

                                        'select chave, Nome, DiaMensalidade, VrMensalidade, '+
                                        ' diarecbto as UltRecbto from tbcliente ',

                                        '',
                                        ' and tbcliente.DiaMensalidade > 0 and '+
                                        ' (((extract(month from diarecbto) < '+mes+') and '+
                                        '    (extract(month from diarecbto) = '+ano+') '+
                                        ' or diarecbto is null )) ',

                                        '','','','',' ','', '','','','','','','', '','','','','','',
                                            'tbmensalidade',
                                            'Mensalidades Atrasadas',
                                            'tbcliente',0,0);

end;

procedure Tfclientelocaliza.Atualizarosite1Click(Sender: TObject);

procedure comvital;
begin
  TestCryptoIni;

  fdm.conectnet.Disconnect;
  ipnet       :=  sWebHost;     // 'mysql.vitalcred.com.br';
  databasenet :=  sWebDb;       // 'odontocred1';
  Usernet     :=  sWebUser;     // 'odontoc_soft';
  Passwordnet :=  sWebPwd;      // 'soft1423';
end;

var
  tipo,cpf,rg,nascimento,datai,codigo,cap,descricao:string;
  cnpj :WideString;
  bExisteRegistro : Boolean; // Gleyber - 23/06/2012 - Work item 8
  sCPF            : string;  // Gleyber - 23/06/2012 - Work item 8
  iCont           : Integer;
  sSql            : string;
  sCodigoGP       : string;
  sDescCodGP      : string;
begin

        ipnet:='';
        databasenet := 'sigac';
        cap := caption;
        comvital;

        try
           fdm.conectnet.Connect;
           ipnet:='';
           databasenet := 'sigac';
        except
             Application.MessageBox('Não foi possível conectar ao banco de dados do site, verifique se a internet está OK.',
                                    'Atenção', 0 + MB_ICONWARNING);
             ativanet('','','','');
             abort;
        end;


        caption := '..... CONECTANDO ... ESPERE...';
        update;


        //Atualiza do site para o banco local
        selecione2('select cnpj from tbcliente where codigo >0 and '+
                   '(cnpj is not null)'+
                   ' and (cnpj <>" " and cnpj <>"000.000.000-00" and cnpj <>"00.000.000/0000-00") order by cnpj');

        cnpj :='';
        with fdm.snet do begin
             sql.Clear;
             sql.add('select c.*, b.nome as nome_banco '+
                     ' from tab_clientes c left join tab_bancos b on (c.numero_banco = b.numero) '+
                     ' where (c.cpf is not null and c.cpf<>"" '+
                     ' and c.cpf <>"000.000.000-00" and cpf <>"00.000.000/0000-00"'+
                     ' and c.cpf <>"00000000000" and cpf <>"00000000000000") order by c.cod_user ');
             fdm.tbnet.open;
             comvital;
             //debugstr(fdm.snet);
             //abort;
        end;

        iCont := 0;
        fdm.tbnet.First;
        while not fdm.tbnet.Eof do
        begin

            fdm.tbnet.edit;
            fdm.tbnet['cnpj'] := formatacpf_cnpj(FormatNumeric(fdm.tbnet.fieldbyname('cnpj').AsString));
            fdm.tbnet['cpf']  := formatacpf_cnpj(FormatNumeric(fdm.tbnet.fieldbyname('cpf').AsString));

            sqlpub2.edit;
            sqlpub2['cnpj']       := formatacpf_cnpj(FormatNumeric(sqlpub2.fieldbyname('cnpj').AsString));
            //sqlpub2['cnpjconta']  := formatacpf_cnpj(FormatNumeric(sqlpub2.fieldbyname('cnpjconta').AsString));


             // Gleyber - 23/06/2012 - Work item 8 - Fim
             if Not fdm.conector.InTransaction then      // Se não houver transação startada
               fdm.conector.StartTransaction;            // Inicia nesse ponto

             if (not sqlpub2.Locate('cnpj',fdm.tbnet.fieldbyname('cnpj').AsString,[])) and
                (not sqlpub2.Locate('cnpj',fdm.tbnet.fieldbyname('cpf').AsString,[])) then
             begin

                if fdm.tbnet['tipo']='2' then tipo :='J'
                                          else tipo :='F';

                if fdm.tbnet['data_nascimento'] <> null then
                   nascimento := ','+quotedstr(formatdatetime('yyyy-mm-dd',fdm.tbnet.fieldbyname('data_nascimento').AsDateTime))
                else nascimento := ',null';

                if fdm.tbnet['data_insercao'] <> null then
                   datai := ','+quotedstr(formatdatetime('yyyy-mm-dd',strtodate(copy(fdm.tbnet.fieldbyname('data_insercao').AsString ,1,10))))
                else datai := ',null';

                // Detalhamento para capturar corretamente o código - Início
                sCodigoGP  := fdm.tbnet.fieldbyname('codigogrupo').AsString;
                selecione('select descricao from tbconffin where tp = 10 and codigo = '+sCodigoGP);
                sDescCodGP := sqlpub.fieldbyname('descricao').AsString;
                // Detalhamento para capturar corretamente o código - Fim

                selecione('select max(codigo)as codigo from tbcliente');
                codigo := inttostr(sqlpub.fieldbyname('codigo').AsInteger + 1);
                with fdm.snet2 do begin
                     sql.Clear;
                     sql.Add('update tab_clientes set cod_user = '+quotedstr(codigo)+' where cod = '+quotedstr(fdm.tbnet.fieldbyname('cod').AsString));
                     //debugstr(fdm.snet2);
                     try execsql;
                     except end;
                     //comvital;
                end;

                // Gleyber - 23/06/2012 - Work item 8 - Início
                sCPF := QuotedStr(fdm.tbnet.fieldbyname('cpf').AsString);
                selecione('SELECT * '+
                          'FROM TBCLIENTE '+
                          'WHERE REPLACE(REPLACE(REPLACE(REPLACE(CNPJ,''.'',''''),''-'',''''),''/'',''''),'' '','''')  = '+
                            'REPLACE(REPLACE(REPLACE(REPLACE('+sCPF+',''.'',''''),''-'',''''),''/'',''''),'' '','''')');

                bExisteRegistro := Not sqlpub.IsEmpty;

                // memo1.lines.add(sqlpub2.fieldbyname('cnpj').AsString);
                if not bExisteRegistro then
                begin
                  sSql := 'insert into tbcliente( '+
                                 'transportadora'+
                                 ', filial'+
                                 ', np'+
                                 ',pontos'+
                                 ',fisjur'+
                                 ',nome'+
                                 ',codigogp'+
                                 ',gp'+
                                 ',cnpj'+
                                 ',ie '+
                                 ',nascimento '+
                                 ',data'+
                                 ',dtvenda'+
                                 ',statu'+
                                 ',CRO'+
                                 ',nomecurto'+
                                 ',endereco '+
                                 ',complemento'+
                                 ',bairro '+
                                 ',municipio'+
                                 ',uf'+
                                 ',cep'+
                                 ',fone'+
                                 ',fone2'+
                                 ',fone3'+
                                 ',email'+
                                 ',vendedor'+
                                 ',vinculo'+
                                 ',codigo'+
                                 // Gleyber - 19/06/2012 - Work Item #44 - Início
                                 ',TITULAR'+
                                 ',CNPJCONTA'+
                                 ',TPCONTA'+
                                 ',NBANCO'+
                                 ',BANCO'+
                                 ',CONTA'+
                                 ',AGENCIA'+
                                 ',TIPOCLIENTE';
                                 // Gleyber - 19/06/2012 - Work Item #44 - Fim
                  sSql := sSql + ') values('+
                                   quotedstr(fdm.tbnet.fieldbyname('usuario').AsString)+                          // transportadora
                               ','+quotedstr(fdm.tbnet.fieldbyname('senha').AsString)+                            // filial
                               ',"I"'+ // Gleyber - 21/06/2012 - Work Item #7 ',"A"'+                             // np
                               ',1'+                                                                              // pontos
                               ','+quotedstr(tipo)+                                                               // fisjur
                               ','+ quotedstr(fdm.tbnet.fieldbyname('nome').AsString)+                            // nome
                               ','+ sCodigoGP+                                                                    // codigogp
                               ','+ QuotedStr(sDescCodGP)+                                                        // gp
                               ','+ quotedstr(fdm.tbnet.fieldbyname('cpf').AsString)+                             // cnpj
                               ','+ quotedstr(fdm.tbnet.fieldbyname('rg').AsString)+                              // ie
                               nascimento+                                                                        // nascimento
                               datai+                                                                             // data
                               datai+                                                                             // dtvenda
                               ','+ quotedstr(fdm.tbnet.fieldbyname('crea').AsString)+                            // statu
                               ','+ quotedstr(fdm.tbnet.fieldbyname('numero_crea').AsString)+                     // CRO
                               ','+ quotedstr(fdm.tbnet.fieldbyname('razao').AsString)+                           // nomecurto
                               ','+ quotedstr(fdm.tbnet.fieldbyname('endereco').AsString)+                        // endereco
                               ','+ quotedstr(Copy(fdm.tbnet.fieldbyname('complemento').AsString,1,10))+          // complemento
                               ','+ quotedstr(fdm.tbnet.fieldbyname('bairro').AsString)+                          // Bairro
                               ','+ quotedstr(fdm.tbnet.fieldbyname('cidade').AsString)+                          // municipio
                               ','+ quotedstr(fdm.tbnet.fieldbyname('estado').AsString)+                          // uf
                               ','+ quotedstr(formatnumeric(fdm.tbnet.fieldbyname('cep').AsString))+              // cep
                               ','+ quotedstr(fdm.tbnet.fieldbyname('telefone1').AsString)+                       // fone
                               ','+ quotedstr(fdm.tbnet.fieldbyname('telefone2').AsString)+                       // fone2
                               ','+ quotedstr(fdm.tbnet.fieldbyname('celular').AsString)+                         // fone3
                               ','+ quotedstr(fdm.tbnet.fieldbyname('email').AsString)+                           // email
                               ',"SITE"'+                                                                         // vendedor
                               ','+ quotedstr(fdm.tbnet.fieldbyname('tipo_user').AsString)+                       // vinculo
                               ','+ quotedstr(codigo) +                                                           // codigo
                               // Gleyber - 19/06/2012 - Work Item #44 - Início
                               ','+ quotedstr(fdm.tbnet.fieldbyname('TITULAR').AsString)+                         // Titular
                               ','+ quotedstr(fdm.tbnet.fieldbyname('CPFCNPJ_CONTA').AsString)+                   // CNPJConta
                               ','+ quotedstr(fdm.tbnet.fieldbyname('TIPO_CONTA').AsString)+                      // TpConta
                               ','+ quotedstr(fdm.tbnet.fieldbyname('NUMERO_BANCO').AsString)+                    // NBanco
                               ','+ quotedstr(fdm.tbnet.fieldbyname('NOME_BANCO').AsString)+                      // Banco
                               ','+ quotedstr(fdm.tbnet.fieldbyname('CONTA').AsString)+                           // Conta
                               ','+ quotedstr(fdm.tbnet.fieldbyname('AGENCIA').AsString)+                         // Agencia
                               ','+ quotedstr(fdm.tbnet.fieldbyname('PROFISSAO').AsString);                       // TipoCliente
                               // Gleyber - 19/06/2012 - Work Item #44 - Início
                 sSql := sSql + ')';
                 Try
                   selecione(sSql);
                 except
                   sqlpub.SQL.SaveToFile('c:\erro.sql');

                   if fdm.conector.InTransaction then
                     fdm.conector.Rollback;
                   Application.MessageBox('Erro na inserção do registro. Verificar arquivo de erro.',
                                          'Atenção', 0 + MB_ICONWARNING);
                   Exit;
                 end;

                end;
             end;

             Inc(iCont);

             if iCont = 1000 then
             begin
               fdm.conector.Commit;
               iCont := 0;
             end;
            // Gleyber - 23/06/2012 - Work item 8 - Fim

              fdm.tbnet.Cancel;
              //sqlpub.Cancel;
              fdm.tbnet.Next;
          end;


        caption := 'Fechando conexões...';
        update;

        tabela.close;
        fdm.conector.Disconnect;
        ipnet:='';
        databasenet := 'sigac';
        fdm.tbnet.Close;
        ativanet('','','','');
        fdm.snet2.Close;
        fdm.snet.Close;
        comvital;

        Caption := 'Pesquisando tabela de clientes local...';
        Update;

        with fdm.snet2 do begin
             sql.Clear;
             sql.add('select cpf from tab_clientes where (cpf is not null and cpf<>"" '+
                     ' and cpf <>"000.000.000-00" and cpf <>"00.000.000/0000-00"'+
                     ' and cpf <>"00000000000" and cpf <>"00000000000000") order by cpf ');
             fdm.tbnet2.open;
        end;
        //ipnet:='';
        //databasenet := 'sigac';


                 //abort;

        //Atualiza do banco local para o site

        Caption := 'Pesquisando tabela de clientes local...';
        sqlcli.SQL.Clear;
        sqlcli.SQL.Add('select * from tbcliente where flagsite is null');
        tabela.Close;
        tabela.Open;
        formatarexecute(self);

       // showmessage(inttostr(tabela.RecordCount));

        iCont := 0;

        tabela.First;
        while not tabela.Eof do
        begin


              if tabela['fisjur']='J' then
                 tipo :='2'
              else tipo :='1';

              if tipo='1' then begin
                 cpf :=  formatnumeric(tabela.fieldbyname('cnpj').AsString);
                 rg   := formatnumeric(tabela.fieldbyname('ie').AsString);

                 if tabela ['nascimento'] <> null then
                    nascimento := ','+quotedstr(formatdatetime('yyyy-mm-dd',tabela.fieldbyname('nascimento').AsDateTime))
                 else
                    nascimento :=  ',NULL';

              end else begin
                    nascimento :=  ',NULL';
                  cnpj := tabela.fieldbyname('cnpj').AsString;
                  cpf :=  formatnumeric(tabela.fieldbyname('cnpj').AsString);
              end;


              with fdm.snet do begin

                   close;
                   sql.Clear;

                   fdm.tbnet2.edit;
                   fdm.tbnet2['cpf'] := formatacpf_cnpj(FormatNumeric(fdm.tbnet2.fieldbyname('cpf').AsString));
                   fdm.tbnet2.Post;

                   // Gleyber - 23/06/2012 - Work item 8 - Início
                   sCPF := QuotedStr(tabela.fieldbyname('cnpj').AsString);

                   fdm.sqlBanco.SQL.Clear;
                   fdm.sqlBanco.SQL.Add('select 1 '+
                           'from tab_clientes '+
                           'where replace(replace(replace(replace(cpf,''.'',''''),''-'',''''),''/'',''''),'' '','''')  = '+
                           'replace(replace(replace(replace('+sCPF+',''.'',''''),''-'',''''),''/'',''''),'' '','''')');

                   fdm.sqlBanco.Open;

                   bExisteRegistro := Not fdm.cdsBanco.IsEmpty;

                   if not bExisteRegistro then
                  // Gleyber - 23/06/2012 - Work item 8 - Fim
                   if not fdm.tbnet2.Locate('cpf',tabela.fieldbyname('cnpj').AsString,[]) then


                      sql.Add('insert into tab_clientes( '+
                                ' data_insercao '+
                                ',data_alteracao'+
                                ',usuario'+
                                ',senha '+
                                ',tipo'+
                                ',nome'+
                                ',codigogrupo'+
                                ',cpf'+
                                ',rg '+
                                ',data_nascimento '+
                                ',crea '+
                                ',numero_crea'+
                                ',razao'+
                                ',cnpj'+
                                ',endereco '+
                                ',complemento'+
                                ',bairro '+
                                ',cidade'+
                                ',estado'+
                                ',pais'+
                                ',cep'+
                                ',telefone1'+
                                ',telefone2'+
                                ',celular'+
                                ',email'+
                                ',tipo_user'+
                                ',cod_user'+
                                // Gleyber - 19/06/2012 - Work Item #44 - Início
                                ',TITULAR'+
                                ',CPFCNPJ_CONTA'+
                                ',TIPO_CONTA'+
                                ',NUMERO_BANCO'+
                                ',CONTA'+
                                ',AGENCIA'+
                                ',PROFISSAO'+
                                // Gleyber - 19/06/2012 - Work Item #44 - Início
                                ') values('+
                              '  now()'+
                              ', now()'+
                              ','+ quotedstr(tabela.fieldbyname('transportadora').AsString)+
                              ','+quotedstr(tabela.fieldbyname('filial').AsString)+
                              ','+quotedstr(tipo)+
                              ','+ quotedstr(tabela.fieldbyname('nome').AsString)+
                              ','+ tabela.fieldbyname('codigogp').AsString+
                              ','+ quotedstr(cpf)+
                              ','+ quotedstr(rg)+
                              nascimento+
                              ','+ quotedstr(tabela.fieldbyname('statu').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('CRO').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('nomecurto').AsString)+
                              ','+ quotedstr(cnpj)+
                              ','+ quotedstr(tabela.fieldbyname('endereco').AsString + ' '+
                                             tabela.fieldbyname('numero').AsString )+
                              ','+ quotedstr(tabela.fieldbyname('complemento').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('bairro').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('municipio').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('uf').AsString)+
                              ','+ quotedstr('BR')+
                              ','+ quotedstr(formatnumeric(tabela.fieldbyname('cep').AsString))+
                              ','+ quotedstr(tabela.fieldbyname('fone').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('fone2').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('fone3').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('email').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('vinculo').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('codigo').AsString) +
                              // Gleyber - 19/06/2012 - Work Item #44 - Início
                              ','+ quotedstr(tabela.fieldbyname('TITULAR').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('CNPJCONTA').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('TPCONTA').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('NBANCO').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('CONTA').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('AGENCIA').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('TIPOCLIENTE').AsString)+
                              // Gleyber - 19/06/2012 - Work Item #44 - Fim

                              ')')
                   else
                      sql.Add('update tab_clientes set '+
                                ' data_alteracao = now() '+
                                ',tipo='+ quotedstr(tipo)+
                                ',nome='+ quotedstr(tabela.fieldbyname('nome').AsString)+
                                ',codigogrupo='+ tabela.fieldbyname('codigogp').AsString+
                                ',cpf='+ quotedstr(cpf)+
                                ',rg ='+ quotedstr(rg)+
                                ',crea ='+ quotedstr(tabela.fieldbyname('statu').AsString)+
                                ',numero_crea='+ quotedstr(tabela.fieldbyname('CRO').AsString)+
                                ',razao='+ quotedstr(tabela.fieldbyname('nomecurto').AsString)+
                                ',cnpj='+ quotedstr(cnpj)+
                                ',endereco ='+ quotedstr(tabela.fieldbyname('endereco').AsString + ' '+
                                                         tabela.fieldbyname('numero').AsString )+
                                ',complemento='+ quotedstr(tabela.fieldbyname('complemento').AsString)+
                                ',bairro ='+ quotedstr(tabela.fieldbyname('bairro').AsString)+
                                ',cidade='+ quotedstr(tabela.fieldbyname('municipio').AsString)+
                                ',estado='+ quotedstr(tabela.fieldbyname('uf').AsString)+
                                ',cep='+ quotedstr(formatnumeric(tabela.fieldbyname('cep').AsString))+
                                ',telefone1='+ quotedstr(tabela.fieldbyname('fone').AsString)+
                                ',telefone2='+ quotedstr(tabela.fieldbyname('fone2').AsString)+
                                ',celular='+ quotedstr(tabela.fieldbyname('fone3').AsString)+
                                ',email='+ quotedstr(tabela.fieldbyname('email').AsString)+
                                ',tipo_user='+ quotedstr(tabela.fieldbyname('vinculo').AsString)+
                                ',cod_user= '+ quotedstr(tabela.fieldbyname('codigo').AsString)+
                                // Gleyber - 19/06/2012 - Work Item #44 - Início
                                ',TITULAR= '+ quotedstr(tabela.fieldbyname('TITULAR').AsString)+
                                ',CPFCNPJ_CONTA= '+ quotedstr(tabela.fieldbyname('CNPJCONTA').AsString)+
                                ',TIPO_CONTA= '+ quotedstr(tabela.fieldbyname('TPCONTA').AsString)+
                                ',NUMERO_BANCO= '+ quotedstr(tabela.fieldbyname('NBANCO').AsString)+
                                ',CONTA= '+ quotedstr(tabela.fieldbyname('CONTA').AsString)+
                                ',AGENCIA= '+ quotedstr(tabela.fieldbyname('AGENCIA').AsString)+
                                // Gleyber - 19/06/2012 - Work Item #44 - Início
                                '  where cod_user ='+tabela.fieldbyname('codigo').AsString+
                                '    and nome = '+quotedstr(formatnumeric(tabela.fieldbyname('nome').AsString)));
                                //debugstr(fdm.snet);
                   try
                     execsql;

                    // debugstr(fdm.snet);
                   except showmessage('O servidor do site deu uma pausa, favor repetir a atualização');

                          fdm.conectnet.Disconnect;
                          caption := cap;
                          ativanet('','','','');
                          ipnet:='';
                          databasenet := 'sigac';
                          fdm.tbnet2.Close;
                          abort;
              // sql.SaveToFile('c:\erro.sql');
                   end;
                   selecione('update tbcliente set flagsite = null where chave = '+
                             quotedstr(tabela.fieldbyname('chave').AsString));
                   comvital;
              end;
              caption := '..... ATUALIZANDO BASE LOCAL ... ESPERE...      ' +
                         inttostr(tabela.RecNo) +'    DE    '+  inttostr(tabela.RecordCount);
              update;

              if iCont = 1000 then
              begin
                fdm.conector.Commit;
                iCont := 0;
              end;

              tabela.Next;
        end;



        fdm.conectnet.Disconnect;
        selecione('update tbcliente set flagsite = null');
        caption := cap;
        msg('Atualizado!!!',0);
        ativanet('','','','');
        ipnet:='';
        databasenet := 'sigac';
        fdm.tbnet2.Close;


end;

procedure Tfclientelocaliza.SpeedButton11Click(Sender: TObject);
begin


{        tabela.First;
        i:=1;

        while not tabela.Eof do begin
                 selecione('update tbcliente set '+
//                      ' codigo = '+quotedstr(inttostr(i))+
                        ' transportadora = '+quotedstr(tiraacento(copy(tiraespaco(fclientelocaliza.tabela.fieldbyname('nome').AsString),1,6))+
                                                                                    fclientelocaliza.tabela.fieldbyname('codigo').AsString)+
                        ' ,filial = '+quotedstr(inttostr(i * trunc(date)))+
                        ' where chave = '+quotedstr(tabela.fieldbyname('chave').AsString),0);

              tabela.Next;
              i:=i+1;
        end;

        tabela.Cancel;
        tabela.Refresh;
 }


            tabela.Close;
            tabela.Open;
            formatarexecute(self);

end;

procedure Tfclientelocaliza.AtualizarUsurio1Click(Sender: TObject);
  procedure comvital;
  begin
    TestCryptoIni;

    fdm.conectnet.Disconnect;
    ipnet       :=  sWebHost;     // 'mysql.vitalcred.com.br';
    databasenet :=  sWebDb;       // 'odontocred1';
    Usernet     :=  sWebUser;     // 'odontoc_soft';
    Passwordnet :=  sWebPwd;      // 'soft1423';
  end;

  var
    cap : string;
begin
  cap := caption;

  comvital;

  fdm.conectnet.Disconnect;

  try
    fdm.conectnet.Connect;
    ipnet:='';
    databasenet := 'sigac';
  except
    Application.MessageBox('Não foi possível conectar ao banco de dados do site, verifique se a internet está OK.',
                           'Atenção', 0 + MB_ICONWARNING);
    fdm.conectnet.Disconnect;
    abort;
  end;

  caption := 'Abrindo base de clientes local para análise.';
  Update;

  sqlcli.SQL.Clear;
  sqlcli.SQL.Add('select * from tbcliente order by transportadora');
  tabela.Close;
  tabela.Open;

  formatarexecute(self);

  comvital;

  caption := 'Abrindo base de clientes web para análise.';
  Update;

  with fdm.snet do begin
       sql.Clear;
       sql.Add('select usuario, senha, cod_user from tab_clientes  where flag is not null order by usuario ');
       open;
  end;

  tabela.DisableControls;
  tabela.First;
  fdm.conector.Disconnect;
  while not tabela.Eof do begin

        if fdm.snet.Locate('cod_user',tabela.fieldbyname('codigo').AsString,[]) then
        begin

           if (tabela['transportadora'] <> fdm.snet['usuario']) or
              (tabela['filial'] <> fdm.snet['senha']) then
           begin
              fdm.conector.Connect;
              selecione('update tbcliente set '+
                        ' transportadora = ' + quotedstr(fdm.snet.fieldbyname('usuario').AsString)+
                        ' ,filial = ' + quotedstr(fdm.snet.fieldbyname('senha').AsString)+
                        ' where chave = ' + quotedstr(tabela.fieldbyname('chave').AsString));
              fdm.conector.Disconnect;
           end;
        end;
        caption := 'ATUALIZANDO USUÁRIO! POR FAVOR, AGUARDE! REGISTRO ' +
                   inttostr(tabela.RecNo) +' DE '+  inttostr(tabela.RecordCount);
        update;

        tabela.Next;
  end;
  tabela.First;
  tabela.EnableControls;

  fdm.conectnet.Disconnect;

  fdm.conectnet.Connect;

  caption := 'Atualizando dados da base web.';
  Update;

  with fdm.snet do begin
       close;
       sql.Clear;
       sql.Add('update tab_clientes set flag = null');
       execsql;
  end;


  fdm.conectnet.Disconnect;
  fdm.snet.Close;
  tabela.Refresh;
  caption := cap;
  showmessage('Atualizado!!!');

  ativanet('','','','');

end;

procedure Tfclientelocaliza.Deletados1Click(Sender: TObject);
begin

        listagem('codigo','','#',4,0);

end;

procedure Tfclientelocaliza.Alterarusurioesenha1Click(Sender: TObject);
var
usu, senha:string;
begin

         if msg('Alterar usuário e senha do cliente?',2)= false then abort;

         codloc := tabela.fieldbyname('transportadora').AsString;
         usu := msgi('Digite o usuário:',0);

         codloc := tabela.fieldbyname('filial').AsString;
         senha := msgi('Digite a senha:',0);

        fdm.conectnet.Disconnect;
        ipnet := 'mysql.vitalcred.com.br';
        databasenet := 'odontocred1';
        Usernet := 'odontoc_soft';
        Passwordnet := 'soft1423';

        try
           fdm.conectnet.Connect;
           ipnet:='';
           databasenet := 'sigac';
        except
             Application.MessageBox('Não foi possível conectar ao banco de dados do site, verifique se a internet está OK.',
                                    'Atenção', 0 + MB_ICONWARNING);
             fdm.conectnet.Disconnect;
             ipnet := '';
             databasenet := 'sigac';
             fdm.conectnet.User := 'root';
             fdm.conectnet.Password := '';
             abort;
        end;

        with fdm.snet do begin
             close;
             sql.Clear;
             sql.Add('update tab_clientes set usuario = ' + quotedstr(usu)+
                                     ', senha = '+quotedstr(senha)+
                     ' where cod_user = '+ quotedstr(tabela.fieldbyname('codigo').AsString));
             execsql;
             fdm.conectnet.Disconnect;
             ipnet := '';
             databasenet := 'sigac';
             fdm.conectnet.User := 'root';
             fdm.conectnet.Password := '';
        end;

        selecione('update tbcliente set transportadora = ' + quotedstr(usu)+
                                     ', filial = '+quotedstr(senha)+
                  ' where chave = '+ quotedstr(tabela.fieldbyname('chave').AsString));

        msg('Alterados!!!',0);
end;

procedure Tfclientelocaliza.Filtrarclientessemmovimentodeumperodo1Click(
  Sender: TObject);
begin
      filcli(2);
end;

procedure Tfclientelocaliza.Filtrarclientessemmovimento1Click(
  Sender: TObject);

begin
      filcli(1);
end;




procedure Tfclientelocaliza.filcli(i:integer);
var
sq1,sq2, sq3:tzquery;
imp,dt,cp,DataIni, DataFin,apag,scr:string;


        function fscrdt(cpdt:string):string;
        begin
                result := ' where '+cpdt+' between '+
                           quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataIni)))+
                          ' and ' + quotedstr(formatdatetime('yyyy-mm-dd', strtodate(DataFin)));
        end;
begin

        if (i=2) or(i=3) then begin
            imp := msgi('Entre com o período.',3);

            DataIni := copy(imp,1,10);
            DataFin := copy(imp,11,10);

           codloc:='1';
           imp:=msgi('Exibir por data de:' + #13 + #13 +
                     '1 = Pagar em'+#13+
                     '2 = Emissão .',2);

           if      imp='2' then dt :='DtEmissao'
           else                 dt :='DtVencimento';

           scr := fscrdt(dt);
        end;


    sq1 := tzquery.Create(application);
    sq2 := tzquery.Create(application);
    sq3 := tzquery.Create(application);

    with sq1 do begin
         Connection := fdm.conector;
         sql.Add('select codigo from tbfinanceiro '+scr+' group by codigo');
         open;
    end;

    with sq2 do begin
         Connection := fdm.conector;
         sql.Add('select codigo from tbfinanceirop '+scr+' group by codigo');
         open;
    end;

    with sq3 do begin
         Connection := fdm.conector;
         sql.Add('select chave, codigo from tbcliente group by codigo order by codigo');
         open;
    end;

    chave :='';
    sq3.First;
    while not sq3.eof do begin
          // verifica se a conta já foi lançada este mês

          if (i = 1) or(i=2) and
             ((not sq1.Locate('codigo',sq3.fieldbyname('codigo').AsString,[])) and
             (not sq2.Locate('codigo',sq3.fieldbyname('codigo').AsString,[]))) then begin

             if   chave = '' then chave := ' and (codigo>0) and (chave = '+quotedstr(sq3.fieldbyname('chave').AsString)
             else chave :=        chave  + ' or chave = '+quotedstr(sq3.fieldbyname('chave').AsString);

          end else if (i = 3) and
             (( sq1.Locate('codigo',sq3.fieldbyname('codigo').AsString,[])) or
             ( sq2.Locate('codigo',sq3.fieldbyname('codigo').AsString,[]))) then begin

             if   chave = '' then chave := ' and (codigo>0) and (chave = '+quotedstr(sq3.fieldbyname('chave').AsString)
             else chave :=        chave  + ' or chave = '+quotedstr(sq3.fieldbyname('chave').AsString);
          end;


          sq3.Next;
    end;

    if chave <> '' then chave := chave +')'
    else chave := ' and chave <0';

    filtroexecute(self);

    chave :='';
    sq1.Destroy;
    sq2.Destroy;
    sq3.Destroy;
end;



procedure Tfclientelocaliza.Filtrarclientescommovimentodeumperodo1Click(
  Sender: TObject);
begin
      filcli(3);
end;

procedure Tfclientelocaliza.atuabaseExecute(Sender: TObject);
var
codigo,cnpj,tipo,nascimento :string;
begin

        fdm.conectnet.Disconnect;
        ipnet := 'mysql.vitalcred.com.br';
        databasenet := 'odontocred1';
        Usernet := 'odontoc_soft';
        Passwordnet := 'soft1423';

        try
           fdm.conectnet.Connect;
           ipnet:='';
           databasenet := 'sigac';
        except
             Application.MessageBox('Não foi possível conectar ao banco de dados do site, verifique se a internet está OK.',
                                    'Atenção', 0 + MB_ICONWARNING);
             ativanet('','','','');
             abort;
        end;

        selecione('select cnpj from tbcliente where cnpj is not null order by cnpj');

        cnpj :='';
        sqlpub.First;
        while not sqlpub.Eof do begin
              if cnpj = '' then cnpj := ' where cpf <> '+ quotedstr(formatnumeric(sqlpub.fieldbyname('cnpj').AsString))
                           else  cnpj := cnpj + ' and cpf <> '+ quotedstr(formatnumeric(sqlpub.fieldbyname('cnpj').AsString));
              sqlpub.Next;
        end;


        with fdm.snet do begin
             sql.Clear;
             sql.add('select * from tab_clientes '+cnpj+' order by cod_user ');
             open;
        end;

        fdm.snet.First;
        while not fdm.snet.Eof do begin
                if fdm.snet['tipo']='2' then tipo :='J'
                                          else tipo :='F';

                if fdm.snet['data_nascimento'] <> null then
                   nascimento := ','+quotedstr(formatdatetime('yyyy-mm-dd',tabela.fieldbyname('data_nascimento').AsDateTime))
                else nascimento := ',null';

                selecione('select max(codigo)as codigo from tbcliente');
                codigo := inttostr(sqlpub.fieldbyname('codigo').AsInteger + 1);
                with fdm.snet2 do begin
                     sql.Clear;
                     sql.Add('update tab_clientes set cod_user = '+quotedstr(codigo)+' where cod = '+quotedstr(fdm.snet.fieldbyname('cod').AsString));
                end;

                selecione('insert into tbcliente( '+
                                'transportadora'+
                                ', filial'+
                                ',fisjur'+
                                ',nome'+
                                ',codigogp'+
                                ',cnpj'+
                                ',ie '+
                                ',nascimento '+
                                ',statu'+
                                ',CRO'+
                                ',nomecurto'+
                                ',endereco '+
                                ',complemento'+
                                ',bairro '+
                                ',municipio'+
                                ',uf'+
                                ',cep'+
                                ',fone'+
                                ',fone2'+
                                ',fone3'+
                                ',email'+
                                ',vinculo) values('+


                                  quotedstr(sqlpub.fieldbyname('usuario').AsString)+
                              ','+quotedstr(sqlpub.fieldbyname('senha').AsString)+
                              ','+quotedstr(tipo)+
                              ','+ quotedstr(sqlpub.fieldbyname('nome').AsString)+
                              ','+ quotedstr(inttostr(sqlpub.fieldbyname('codigogrupo').asinteger))+
                              ','+ quotedstr(sqlpub.fieldbyname('cpf').AsString)+
                              ','+ quotedstr(sqlpub.fieldbyname('rg').AsString)+
                              nascimento+
                              ','+ quotedstr(sqlpub.fieldbyname('crea ').AsString)+
                              ','+ quotedstr(sqlpub.fieldbyname('numero_crea').AsString)+
                              ','+ quotedstr(sqlpub.fieldbyname('razao').AsString)+
                              ','+ quotedstr(sqlpub.fieldbyname('endereco').AsString)+
                              ','+ quotedstr(sqlpub.fieldbyname('complemento').AsString)+
                              ','+ quotedstr(sqlpub.fieldbyname('bairro').AsString)+
                              ','+ quotedstr(sqlpub.fieldbyname('cidade').AsString)+
                              ','+ quotedstr(sqlpub.fieldbyname('estado').AsString)+
                              ','+ quotedstr(formatnumeric(sqlpub.fieldbyname('cep').AsString))+
                              ','+ quotedstr(sqlpub.fieldbyname('telefone1').AsString)+
                              ','+ quotedstr(sqlpub.fieldbyname('telefone2').AsString)+
                              ','+ quotedstr(sqlpub.fieldbyname('celular').AsString)+
                              ','+ quotedstr(sqlpub.fieldbyname('email').AsString)+
                              ','+ quotedstr(sqlpub.fieldbyname('tipo_user').AsString)+
                              ','+ quotedstr(codigo) + ')');


                  fdm.snet.Next;
              end;

end;

procedure Tfclientelocaliza.CNPJduplicados1Click(Sender: TObject);
var
st:string;
begin
    selecione('select cnpj, count(cnpj) as qtd from tbcliente where flag is null and codigo >0 group by cnpj order by qtd');
    sqlpub.First;

    st :='';
    while not sqlpub.Eof do begin
         if sqlpub.FieldByName('qtd').AsInteger >1 then
            st := st + #13+ sqlpub.FieldByName('cnpj').AsString;
         sqlpub.Next;
    end;

    if st <> '' then msg('Duplicados'+#13+#13+st,0)
                else msg('Não há duplicados.',0);

end;

procedure Tfclientelocaliza.Verificarinconsistnciaentrebaselocal1Click(
  Sender: TObject);
begin
  try
//    FrmInconsistencia := TFrmInconsistencia.Create(Self);
//    FrmInconsistencia.ShowModal;
  finally
  //  FrmInconsistencia.Free;
  end;
end;

procedure Tfclientelocaliza.mnuPainelAtualizaClick(Sender: TObject);
begin
   FrmAtualizacao := TFrmAtualizacao.Create(Self);
   try
     FrmAtualizacao.ShowModal;
   finally
     FrmAtualizacao.Free;
   end;
end;

end.


