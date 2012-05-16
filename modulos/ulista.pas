unit ulista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, DBCtrls, Menus, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids, ActnList,
  jpeg,shellapi,inifiles, Spin;

type
  Tflista = class(TForm)
    panel2: TPanel;
    litem: TLabel;
    rvisualiza: TCheckBox;
    btnimprimir: TSpeedButton;
    btnmenu: TSpeedButton;
    menu: TPopupMenu;
    btnimage: TSpeedButton;
    ds: TDataSource;
    elocalizar: TEdit;
    grade: TDBGrid;
    ActionList1: TActionList;
    inserir: TAction;
    Cadastrar1: TMenuItem;
    Recuperar1: TMenuItem;
    Informaes1: TMenuItem;
    btninserir: TSpeedButton;
    imagem: TAction;
    CdigosAnteriores1: TMenuItem;
    lobs: TDBMemo;
    llocalizar: TLabel;
    dssemelhante: TDataSource;
    ssemelhante: TZQuery;
    psemelhante: TDBGrid;
    rsemelhante: TCheckBox;
    nfe_: TAction;
    insent: TAction;
    UseF3paranovapesquisa1: TMenuItem;
    N1: TMenuItem;
    formatar: TAction;
    Consumo1: TMenuItem;
    Veritensdavenda1: TMenuItem;
    F10_itens: TAction;
    DetalhesF101: TMenuItem;
    tbqtd: TZQuery;
    dsqtd: TDataSource;
    dscor: TDataSource;
    tbcor: TZQuery;
    padesivo: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    ltotal: TLabel;
    adcorte_: TLabel;
    adnumerado_: TLabel;
    adresina_: TLabel;
    DBGrid3: TDBGrid;
    adcorte: TCheckBox;
    adnumerado: TCheckBox;
    adresina: TCheckBox;
    valoradesivo: TAction;
    tbprodgrade: TZQuery;
    dsprodgrade: TDataSource;
    pgradepreco: TDBGrid;
    DBGrid2: TDBGrid;
    Label3: TLabel;
    eqtd: TSpinEdit;
    btnova: TSpeedButton;

    procedure btnmenuClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;      Shift: TShiftState);
    procedure tabelaAfterScroll(DataSet: TDataSet);
    procedure elocalizarChange(Sender: TObject);
    procedure elocalizarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure elocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure inserirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gradeDblClick(Sender: TObject);
    procedure gradeTitleClick(Column: TColumn);
    procedure btnimprimirClick(Sender: TObject);
    procedure Informaes1Click(Sender: TObject);
    procedure Cadastrar1Click(Sender: TObject);
    procedure btninserirClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure btnimageClick(Sender: TObject);
    procedure imagemExecute(Sender: TObject);
    procedure gradeCellClick(Column: TColumn);
    procedure gradeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Recuperar1Click(Sender: TObject);
    procedure CdigosAnteriores1Click(Sender: TObject);
    procedure rsemelhanteClick(Sender: TObject);
    procedure psemelhanteDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure nfe_Execute(Sender: TObject);
    procedure lobsDblClick(Sender: TObject);
    procedure insentExecute(Sender: TObject);
    procedure formatarExecute(Sender: TObject);
    procedure Veritensdavenda1Click(Sender: TObject);
    procedure F10_itensExecute(Sender: TObject);
    procedure DetalhesF101Click(Sender: TObject);
    procedure valoradesivoExecute(Sender: TObject);
    procedure tbqtdAfterScroll(DataSet: TDataSet);
    procedure adresinaClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure pgradeprecoDblClick(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure eqtdChange(Sender: TObject);
    procedure btnovaClick(Sender: TObject);
  private
  criterio,script, nometb, codigo, dvenda:string;
  nummodulo,nfe:integer;
  oka:boolean;
  corte, numerado, resina:double;
    { Private declarations }
  public

    constructor Create(AOwner: TComponent; ind_,val_,criterio_:string;modulo_,vr:integer); reintroduce;
    { Public declarations }
  end;

var
  flista: Tflista;

implementation

uses udm, funcoes, uimagem, umanu,ucadgv;

{$R *.dfm}


          

constructor tflista.Create(AOwner: TComponent; ind_,val_,criterio_:string;modulo_,vr:integer);
var
ini:tinifile;
selprod,flag,flag1,mp,nm:string;

begin
                             

          Inherited Create(AOwner);
          fechatg;

          fdm.tbconfig.Open;
          fechatg;
          fdm.sg.Connection := fdm.conector;

         if copy(criterio_,1,2)='##' then begin //montagem bicicleta

            if modulo_ = 22 then  flag1 := '#'
                            else  flag := 'DD';

            criterio := copy(criterio_,3,100000);

         end else if copy(criterio_,1,1)='#' then begin

            if modulo_ = 22 then  flag1 := '#'
                            else  flag := 'D';

            criterio := copy(criterio_,2,100000);
         end else
            criterio := copy(criterio_,1,100000);


          //se for materia prima usa tudo do produto
          if modulo_ = 20 then begin
             mp := 'mp';
             //modulo_ :=5;
          end;

          ncol :=0;
          Consumo1.Visible := modulo_ = 4;
          Veritensdavenda1.Visible := modulo_ = 2;
          nummodulo := modulo_;
          modulo := capmodulo(inttostr(nummodulo));
          nometb := captb(inttostr(nummodulo));


          llocalizar.Caption := 'Localizar ' + ind_ + '(A~Z)';


        //produto,cli,funcion, fornec,servico
          DetalhesF101.Visible := nummodulo in [4,5,20,6,7,18];

          case modulo_ of

               0:begin
                 caption := 'LISTAGEM DE EMPRESAS';
                 criacoluna(grade,'nome','Nome',250);
                 criacoluna(grade,'fantasia','Fantasia',250);
                 criacoluna(grade,'cnpj','CNPJ',70);
                 Recuperar1.Visible := false;
              end;

               1:begin
                 caption := 'LISTAGEM DE FILIAIS';
                 criacoluna(grade,'nome','Nome',250);
                 criacoluna(grade,'ip','IP',70);
                 Recuperar1.Visible := false;
              end;


               2:begin

                 caption := 'Vendas deste cliente';
                 criacoluna(grade,'data','Emissão',70);
                 criacoluna(grade,'dtfechamento','DtFecham',70);
                 criacoluna(grade,'numero','Número',70);
                 criacoluna(grade,'codigo','Código',50);
                 criacoluna(grade,'nome','Nome',250);
                 criacoluna(grade,'total','Total',100);
                 criacoluna(grade,'fiado','A Prazo',100);
                 criacoluna(grade,'codigovendedor','Vendedor',50);
              end;

               //cidade ibge
               23:begin
                 fdm.sg.Connection := fdm.dbcep;
                 caption := 'LISTAGEM DE MUNICÍPIOS IBGE';
                 criacoluna(grade,'municipio','Munucípio',250);
                 criacoluna(grade,'municipion','Código',70);
                 criacoluna(grade,'uf','UF',20);
              end;

               //pais
               30:begin
                 fdm.sg.Connection := fdm.dbcep;
                 caption := 'LISTAGEM DE PAÍSES';
                 criacoluna(grade,'Nome','Nome',250);
                 criacoluna(grade,'codigo','Código',70);
              end;


          end;


          //cep
          case modulo_ of
               24:begin
                 fdm.sg.Connection := fdm.dbcep;
                 caption := 'LISTAGEM DE CEPs';
                 criacoluna(grade,'cep','Cep',70);
                 criacoluna(grade,'cidade','Munucípio',150);
                 criacoluna(grade,'bairro','Bairro',100);
                 criacoluna(grade,'rua','Rua',200);
                 criacoluna(grade,'uf','UF',20);

              end;
          end;


          case modulo_ of
               4,103:begin
                 caption := 'LISTAGEM DE CLIENTES';
                 lobs.DataField :='obs';
                 criacoluna(grade,'codigo','Código',45);
                 criacoluna(grade,'Nome','Nome',250);

                 if (responsavel <> 'BRASILGAS') and (responsavel <> '07.682.283/0001-48') then
                    criacoluna(grade,'NomeCurto','Nome Curto',100);

                  if responsavel = '07.682.283/0001-48' then
                     criacoluna(grade,'statu','Departamento',100);

                 criacoluna(grade,'endereco','Endereço',130);
                 criacoluna(grade,'numero','Num',30);


                 if responsavel = 'BRASILGAS' then
                    criacoluna(grade,'bairro','Bairro',100);


                 criacoluna(grade,'Municipio','Cidade',90);
                 criacoluna(grade,'DDD','DDD',25);
                 criacoluna(grade,'Fone','Fone',60);

               end;


               7:begin

                 caption :=  'LISTAGEM DE FORNECEDOR';
                 lobs.DataField :='obs';
                 criacoluna(grade,'codigo','Código',50);
                 criacoluna(grade,'Nome','Nome',250);
                 criacoluna(grade,'NomeCurto','Nome Curto',100);
                 criacoluna(grade,'CNPJ','CNPJ',70);

               end;

               6:begin
                 caption :=  'LISTAGEM DE FUNCIONÁRIO';
                 lobs.DataField :='obs';
                 criacoluna(grade,'codigo','Código',50);
                 criacoluna(grade,'Nome','Nome',250);
                 criacoluna(grade,'NomeCurto','Nome Curto',100);
                 criacoluna(grade,'Funcao','Função',100);
               end;

               18:begin

                 caption :=  'LISTAGEM DE SERVIÇO';
                 lobs.DataField :='obs';
                 criacoluna(grade,'codigo','Código',50);
                 criacoluna(grade,'Descricao','Descrição',250);
                 criacoluna(grade,'Valor','Valor',100);

               end;


               5,20:begin

                 caption :=  'LISTAGEM DE PRODUTOS';

                 if mp <>'' then
                    caption :=  'LISTAGEM DE MATÉRIAS-PRIMAS';

                 lobs.DataField :='aplicacao';

                 if codigo <> '' then
                    Informaes1.Visible := true;

                 criacoluna(grade,'codigo','Cód Interno',60);

                 if fdm.tbconfig['VCBarras'] = 'S' then
                    criacoluna(grade,'codigobarras','EAN',100);

                 if fdm.tbconfig['VCFornecedor'] = 'S' then
                    criacoluna(grade,'codigofornecedor','Cód Forn',50);

                 if fdm.tbconfig['VCOriginal'] = 'S' then begin
                    criacoluna(grade,'codigooriginal','Cód Orig',50);

                    if not calccusto then
                       CdigosAnteriores1.Visible := true ;
                 end;

                 criacoluna(grade,'Descricao','Descrição',300);

                 if (chofab) and(nummodulo=20) then criacoluna(grade,'totalmp','Custo',60);

                 if tipoempresa <>'1' then criacoluna(grade,'Vrvenda','Varejo',60);  //adesivo

                 if atacado then
                    criacoluna(grade,'Vratacado','VrAtacado',60);

                 if atacado2 then
                    criacoluna(grade,'valor3','Atacado2',60);

                 if vr=5 then
                    criacoluna(grade,'VrPromocao','VrPromocao',60);

                 if (fdm.tbconfig['exibecustoproduto'] = 'S') or (vr=4) then
                    criacoluna(grade,'vrunit','VrC',70);

                 //multestoque
                 selecione2('select chave from tbempresa where (flag  <> "D" or flag is null) order by chave');
                 if sqlpub2.RecordCount >=2 then begin

                    while not sqlpub2.Eof do begin
                       nm := 'Estoque'+sqlpub2.fieldbyname('chave').AsString;
                       criacoluna(grade,nm,nm,70);
                       sqlpub2.Next;
                    end;
                    sqlpub2 := nil;
                 end else sqlpub2 := nil;

                 criacoluna(grade,'Estoque','Estoque',70);

                 criacoluna(grade,'NFe','EstReal',70);
                 nfe := grade.Columns.Count-1;
                 grade.Columns[nfe].Visible:=false;

                 criacoluna(grade,'Un','Un',17);
                 criacoluna(grade,'Fabricante','Fornecedor',70);
                 criacoluna(grade,'Subgrupo','SubGrupo',70);
                 criacoluna(grade,'grupo','Grupo',70);                 

                 if (not calccusto) and (application.Title ='S.I.G.A.C.') then begin
                    criacoluna(grade,'prateleira','Prat',20);
                    criacoluna(grade,'box','Box',20);
                    criacoluna(grade,'item','Item',20);
                 end;




                 if tipoempresa <>'1' then  rsemelhante.show
                                      else  padesivo.Show;
                 padesivo.Height := 164;

                 pgradepreco.Height := 101;
                 pgradepreco.Visible := gradepreco;
                 tbprodgrade.Active := gradepreco;

                 if gradepreco then begin
                    ncol:=0;
                    criacoluna(pgradepreco,'Descricao','Descrição',250);
                    criacoluna(pgradepreco,'vrcompra','Vr Compra',70);
                    criacoluna(pgradepreco,'Valor','Vr Varejo',70);
                    criacoluna(pgradepreco,'Estoque','Estoque',50);
                    (tbprodgrade.fieldbyname('valor')  as tfloatfield).displayformat := '###,##0.000';
                    (tbprodgrade.fieldbyname('vrcompra')  as tfloatfield).displayformat := '###,##0.000';
                 end;



                 if tipoempresa = '1' then begin
                    tbcor.Open;
                    tbqtd.Open;
                    (tbqtd.fieldbyname('valor')  as tfloatfield).displayformat := '###,##0.000';

                    Ini := TInifile.Create(conf_global);
                    corte    := Ini.ReadFloat( 'adesivoc','corte',0);
                    numerado := Ini.ReadFloat( 'adesivoc','numerado',0);
                    resina   := Ini.ReadFloat( 'adesivoc','resina',0);
                    ini.Free;

                    adcorte_.Caption := '+' + format('%n',[corte])+' R$';
                    adnumerado_.Caption := '+' + format('%n',[numerado])+'%';
                    adresina_.Caption := '+' + format('%n',[resina])+'%';

                 end;

               end;


               //o 6 nao precisa, é materia prima-produto
               9,10:begin
                 caption :=  'LISTAGEM DE CONTAS DELETADAS';
                 criacoluna(grade,'codigo','Código',44);
                 criacoluna(grade,'Nome','Nome',156);
                 criacoluna(grade,'dtvencimento','DtVencimento',78);
                 criacoluna(grade,'Diferenca','Valor',78);
               end;

               //o 6 nao precisa, é materia prima-produto
               19:begin
                 caption :=  'LISTAGEM DE ANIMAIS';
                 criacoluna(grade,'codigo','Código',44);
                 criacoluna(grade,'Nome','Nome',156);
                 criacoluna(grade,'raca','Raça',120);
                 criacoluna(grade,'Altura','Altura',75);
                 criacoluna(grade,'Peso','Peso',70);
                 criacoluna(grade,'Nascimento','Nascimento',78);
                 criacoluna(grade,'especie','Espécie',90);
                 criacoluna(grade,'Cor','Cor',78);

               end;

               22:begin
                  if flag1 = '#' then begin
                     caption :=  'LISTAGEM DE VEÍCULOS';
                     criacoluna(grade,'serie','Placa',80);
                     criacoluna(grade,'Aparelho','Veículo',250);
                     criacoluna(grade,'Marca','Chassi',120);
                     criacoluna(grade,'Modelo','Modelo',120);

                  end else begin

                     caption :=  'LISTAGEM DE EQUIPAMENTOS';
                     criacoluna(grade,'serie','Série',80);
                     criacoluna(grade,'Aparelho','Aparelho',250);
                     criacoluna(grade,'Marca','Marca',120);
                     criacoluna(grade,'Modelo','Modelo',120);

                  end;
               end;



               25:begin
                 caption :=  'LISTAGEM DE BANCOS';
                 criacoluna(grade,'numero','Número',44);
                 criacoluna(grade,'nome','Nome',250);
               end;

               31:begin
                 caption :=  'LISTAGEM DE CEDENTES';
                 criacoluna(grade,'NomeCliente','Nome',250);
                 criacoluna(grade,'Banco','Banco',100);
                 criacoluna(grade,'CodAg','AG',100);
                 criacoluna(grade,'Conta','Conta',100);

               end;

               34:begin
                 caption :=  'LISTAGEM DE CAIXAS';
                 criacoluna(grade,'chave','numero',44);
                 criacoluna(grade,'datainicial','Data Ini',100);
                 criacoluna(grade,'datafinal','Data Fin',100);
                 criacoluna(grade,'usuario','Usuário',44);

               end;

               35:begin
                 caption :=  'Compromissos Agendados';
                 criacoluna(grade,'nome','Nome',170);
                 criacoluna(grade,'descricao','Assunto',100);
                 criacoluna(grade,'status','Status',80);
                 criacoluna(grade,'data','Data',60);
                 criacoluna(grade,'hora','Hora',60);
                 criacoluna(grade,'obs','Obs',200);
               end;


               //contas
               37:begin
                 caption :=  'LISTAGEM DE CONTAS';
                 criacoluna(grade,'chave','Código',44);
                 criacoluna(grade,'contaanalitica','C. Analítica',100);
                 criacoluna(grade,'descricao','Descrição',250);
                 criacoluna(grade,'nivel4','Nivel4',150);
                 criacoluna(grade,'nivel3','Nivel2',150);
                 criacoluna(grade,'nivel3','Nivel2',150);
               end;





          //almax
               100:begin

                 caption := 'LISTAGEM DE OS(S) DELETADA(S)';
                 criacoluna(grade,'OS','OS',70);
                 criacoluna(grade,'codigo','Código',70);
                 criacoluna(grade,'nome','Nome',250);

              end;


          end;

                             

         Recuperar1.Visible := (flag = 'D') or (flag = 'DD');

         selprod := ' * ';

          {4=Cliente  5=Produto  6=Funcionario  7=Fornecedor  18 =Serviço}
          if modulo_ in [4,5,20,6,7,18] then begin
             if modulo_ in [5,20] then
                selprod := '"P" as p, tbproduto'+mp+'.* '
             else selprod := ' * ';


             if flag = 'D' then
                script := 'select '+ selprod +' from '+nometb+' where flag = "D" '
             else if flag = 'DD' then
                script := 'select '+ selprod +' from '+nometb+' where flag2 = "D" '

             else
                script := 'select '+ selprod +' from '+nometb+' where (flag <> "D" or flag is null) '
          //outros
          end else begin
              //conta
              if modulo_ in [37] then
                 selprod := 'chave, codigo, contaanalitica, descricao '+
                            ','+nomelink('codnivel4','chave', 'descricao','tbdespesa','Nivel4')+
                            ','+nomelink('codnivel3','chave', 'descricao','tbnivel3','Nivel3')+
                            ','+nomelink('codnivel2','chave', 'descricao','tbnivel2','Nivel2');


             if flag = 'D' then
                script := 'select '+ selprod +' from '+nometb+' where flag = "D" '
             else
                script := 'select '+ selprod +' from '+nometb+' where chave >0 ';

          end;


          with fdm.sg do begin
               close;
               sql.Clear;

               //se numero é exata a pesquisa fmenu

          if (val_<>'') and (StrIsFloat(val_))then begin
                  if val_ <> '' then
                     sql.Add(script + ' and ' + ind_ +' = '+quotedstr(val_)+criterio)
                  else
                    sql.Add(script+criterio);
               end else
                  sql.Add(script + '  and ' + ind_ +' like '+ quotedstr(val_ + '%')+criterio);
                  //debugstr(fdm.sg);
               IndexFieldNames := ind_;

               if nummodulo=34 then fdm.sg.SortType := stDescending;

               open;
          end;

         formatarexecute(self);

         fdm.tbconfig.close;

          imagepanel('imagemenu1', altop, panel2, '',menucad);
          btninserir.Glyph := btcadastrar;
          btnimprimir.Glyph := btimprimir;
          btnimage.Glyph := bttodos;
          btnmenu.Glyph := btmenu;
          btnova.Glyph := btfiltro;

          elocalizar.OnExit:=fdm.Exitedit;
          elocalizar.Onenter:=fdm.Enteredit;
          if nummodulo = 2 then fdm.sg.Last;

          if fileexists(substitui(servpath+'imagem/'+inttostr(nummodulo)+'l.txt','/','\')) then
             try
                grade.Columns.LoadFromFile(substitui(servpath+'imagem/'+inttostr(nummodulo)+'l.txt','/','\'));
             except end;

end;




procedure Tflista.btnmenuClick(Sender: TObject);
begin
        menu.Popup(left+270,top+40);
end;

procedure Tflista.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_f11 then
           btnimageclick(self);

        if key = vk_f9 then
           btnmenuClick(self);

        if key = 27 then
           close;
end;

procedure Tflista.tabelaAfterScroll(DataSet: TDataSet);
begin

        if fimagem <> nil then
           if fileexists(PChar(servpath + 'imagem\'+modulo+'\' +
                               fdm.sg.FieldByName('codigo').AsString + '.jpg')) then

           fimagem.vimage.Picture.loadfromFile(PChar(servpath +
                 'imagem\'+modulo+'\' + fdm.sg.FieldByName('codigo').AsString + '.jpg'))
        else
           fimagem.vimage.Picture := nil;

end;

procedure Tflista.elocalizarChange(Sender: TObject);
begin
        loctabela(nil,fdm.sg,elocalizar);
        rsemelhante.Checked := false;
end;

procedure Tflista.elocalizarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

begin
            if (key = 40) or (key = 34) then fdm.sg.Next;
            if (key = 38) or (key = 33) then fdm.sg.prior;

            if key = 39 then grade.SelectedIndex := grade.SelectedIndex +1;

            if key = 37 then grade.SelectedIndex := grade.SelectedIndex -1;

            if key = vk_f3 then btnovaClick(self);


           if (key = vk_f3) or (key = 38) or (key = 40) or (key = 34) or  (key = 33)then  imagemExecute(self);

end;

procedure Tflista.elocalizarKeyPress(Sender: TObject; var Key: Char);
begin
           if fdm.sg.Active then begin
              if (fdm.sg.fieldbyname(indtz(fdm.sg.IndexFieldNames)).ClassName = 'TIntegerField') or
                 (fdm.sg.fieldbyname(indtz(fdm.sg.IndexFieldNames)).ClassName = 'TFloatField')  then
                 if not (key in ['0'..'9', #8,',']) then abort;

              if (fdm.sg.fieldbyname(indtz(fdm.sg.IndexFieldNames)).ClassName = 'TDateField')  then
                 if not (key in ['0'..'9', #8,'/']) then abort;
          end;

end;

procedure Tflista.inserirExecute(Sender: TObject);
begin
        fdm.sg.Filter := 'chave = ' + quotedstr(fdm.sg.fieldbyname('chave').asstring);
        fdm.sg.Filtered := true;
        oka:=true;
        close;
end;

procedure Tflista.FormClose(Sender: TObject; var Action: TCloseAction);
//var corte:double;
begin
          try
             grade.Columns.SaveToFile(substitui(servpath+'imagem/'+inttostr(nummodulo)+'l.txt','/','\'));
          except end;

          if (not oka) or (fdm.sg.RecordCount<=0) then
             fdm.sg.Close
          else
             filtrar(grade,nil,fdm.sg,'chave');

//          if nummodulo=34 then fdm.sg.SortType := stAscending;             

          if (gradepreco) and (tbprodgrade.Active) and (tbprodgrade.RecordCount>0)  then valorconfig := tbprodgrade.fieldbyname('chave').AsString;

          if fimagem <> nil then   fimagem.Close;             
          Release;
          flista := nil;
end;

procedure Tflista.gradeDblClick(Sender: TObject);
begin
        inserirExecute(self);
end;

procedure Tflista.gradeTitleClick(Column: TColumn);
begin
        indexar(column,nil,fdm.sg,elocalizar,llocalizar);
end;

procedure Tflista.btnimprimirClick(Sender: TObject);
begin
        filtrar(grade,nil,fdm.sg,'chave');
        impgrade(nil,fdm.sg,ds,grade, name+inttostr(nummodulo), caption,'',rvisualiza.Checked);
end;

procedure Tflista.Informaes1Click(Sender: TObject);
begin
        abortaacao(nil,fdm.sg,'codigo','','','','',0);
        cpcli(codigo, '',
              fdm.sg.fieldbyname('codigo').AsString,
              fdm.sg.fieldbyname('descricao').AsString);

end;

procedure Tflista.Cadastrar1Click(Sender: TObject);
begin

        case nummodulo of
             1:cadp ('tbfiliais', '', '',      //tabela que vai usar ou cod sql na 2ª + titulo
              'nome','ip',           //campos que nao devem duplicar
              '','','',                 //combo1(campo,tabela,nomecampotabela)
              '','','',                 //combo2(campo,tabela,nomecampotabela)
              '','','',
              '',                     //campo auto incremento
              '',                       //campo auto incremento
              '',                       //campo que nao ser nulo
              '',
              0,0);                       //onde vai comecar a criar os campos

             4: cadg(cadcli,'nome', nummodulo);
             7: cadg(cadfornecedor, 'nome', nummodulo);
             6: cadg(cadfuncionario,'nome', nummodulo);
             18: cadg('select chave,codigo,descricao,un,data,valor,comissao,ultimavenda,'+
                      ' grupo,obs from tbcadastroservico ',
                      'descricao', 18);
             5:fmenu.produtoExecute(self);
//             20:cadg(prod+'mp','descricao', 20);

             23: cepibge(23,0);
             24: cepibge(24,0);
        end;

        fdm.sg.Refresh;
end;

procedure Tflista.btninserirClick(Sender: TObject);
begin
        inserirExecute(self);
end;

procedure Tflista.Label1Click(Sender: TObject);
var
list:tstringlist;
begin
         list :=  tstringlist.Create;

         list.Add('AJUDA:' );
         list.Add(' ');
         list.Add('1-Você pode fazer um filtro especial digitando assim:');
         list.Add(' ');
         list.Add('Primeiro clique no nome da coluna que quer filtrar, observe se a rodem ficou de "A~Z".');
         list.Add('Digite:   %PALAVRA1%PALAVRA2%PALAVRA3   -   Depois tecle ENTER.');

         list.Add(' ');
         list.Add(' ');
         list.Add('2-Para inserir dê um clique duplo ou Tecle Insert ou clique em INS.');
         list.SaveToFile('c:\ajuda.txt');
         ShellExecute(Handle, 'open', PChar('c:\ajuda.txt'), nil, '', SW_MAXIMIZE);
         list.Free;
end;

procedure Tflista.btnimageClick(Sender: TObject);
begin


        if fimagem = nil then
           application.CreateForm(tfimagem, fimagem);

        fimagem.Show;
        imagemExecute(self);
end;

procedure Tflista.imagemExecute(Sender: TObject);
begin

     try
        if fimagem <> nil then
           if fileexists(PChar(servpath + 'imagem\'+modulo+'\' +
                               fdm.sg.FieldByName('codigo').AsString + '.jpg')) then

              fimagem.vimage.Picture.loadfromFile(PChar(servpath +
                          'imagem\'+modulo+'\' + fdm.sg.FieldByName('codigo').AsString + '.jpg'))
           else
              fimagem.vimage.Picture := nil;

        except
            fimagem.close;
            msg('Não há imagem.',0);
        end;


end;

procedure Tflista.gradeCellClick(Column: TColumn);
begin
        imagemExecute(self);
        rsemelhante.Checked:= false;
end;

procedure Tflista.gradeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (key = 38) or  (key = 40) or (key = 34) or  (key = 33)then
           imagemExecute(self);
end;

procedure Tflista.Recuperar1Click(Sender: TObject);
var
contad, contac :string;
begin

        abortaacao(nil,fdm.sg,'codigo','','','','',0);



        if msg('Deseja recuperar este item?',2) then begin

            if (nummodulo in [9..10]) and (planocontas) then begin

               contad := combotb2('','','','');
               contac := codloc;
               if contad='' then abort;
               alimentaconta(contad, contac, '', '', '', date, fdm.sg.fieldbyname('diferenca').AsFloat);

            end;

           selecione('update '+nometb+' set flag = null where chave = ' +
                        quotedstr(fdm.sg.FieldByName('chave').AsString));
           sqlpub :=nil;

           GALTERA(inttostr(nummodulo),fdm.sg.fieldbyname('codigo').asstring,'a');

           if (nummodulo in [10]) then
              saldofornecedor(fdm.sg.FIELDBYNAME('CODIGO').ASSTRING)
           else if nummodulo in [9] then
              saldocliente(fdm.sg.FIELDBYNAME('CODIGO').ASSTRING);




           fdm.sg.cancel;
           fdm.sg.refresh;
           msg('Recuperado! - Localize-o no cadastro.',0);
        end;

end;

procedure Tflista.CdigosAnteriores1Click(Sender: TObject);
var
st:string;
begin

       if inputquery('Localizar', 'Digite o código:',st) then  else abort;

       selecione('select link from tbcodadicional where codigo = '+quotedstr(st));

       if sqlpub['link'] <> null then begin
          with fdm.sg do begin
               Close;
               sql.Clear;
               sql.Add('select * from tbproduto where codigo = ' +
                    quotedstr(sqlpub.fieldbyname('link').AsString));
               Open;
          end;
        end else msg('Código não localizado!',0);

        sqlpub := nil;

end;

procedure Tflista.rsemelhanteClick(Sender: TObject);
begin
         if rsemelhante.Checked then begin
            psemelhante.Height :=110;
            if psemelhante.Columns.Count <=1 then begin

                ncol:=0;
                criacoluna(psemelhante,'codigo','Cód Interno',80);
                criacoluna(psemelhante,'Descricao','Descrição dos produtos semelhantes',250);
                criacoluna(psemelhante,'Vrvenda','Varejo',70);
                criacoluna(psemelhante,'vratacado','Atacado',70);
                criacoluna(psemelhante,'valor3','Atacado2',70);
                criacoluna(psemelhante,'VrPromocao','VrPromoção',70);
                criacoluna(psemelhante,'Estoque','Estoque',50);

            end;
            psemelhante.Show;


            with ssemelhante do begin
                 close;
                 sql.Clear;
                 sql.Add('select tbsemelhante.link, tbsemelhante.chave,tbproduto.codigo,'+
                         'tbproduto.descricao,tbproduto.vrvenda,tbproduto.vratacado,tbproduto.valor3, tbproduto.vrpromocao from tbproduto, tbsemelhante '+
                         ' where tbsemelhante.link = tbproduto.chave '+
                         ' and tbsemelhante.codigo = '+ quotedstr(fdm.sg.fieldbyname('codigo').AsString)+
                         ' order by tbsemelhante.codigo');

                 open;
                 (ssemelhante.fieldbyname('vrvenda')  as tfloatfield).displayformat := '###,##0.'+ Dvenda;
                 (ssemelhante.fieldbyname('vratacado')  as tfloatfield).displayformat := '###,##0.'+ Dvenda;
                 (ssemelhante.fieldbyname('valor3')  as tfloatfield).displayformat := '###,##0.'+ Dvenda;
                 (ssemelhante.fieldbyname('vrpromocao')  as tfloatfield).displayformat := '###,##0.'+ Dvenda;

            end;

         end else begin
            psemelhante.Hide;
            ssemelhante.close;
         end;

end;

procedure Tflista.psemelhanteDblClick(Sender: TObject);
begin
      abortaacao(nil,fdm.sg,'chave','','','','',0);
      with fdm.sg do begin
         sql.Clear;
         sql.add('select * from tbproduto where codigo = ' + quotedstr(ssemelhante.fieldbyname('codigo').AsString));
         open;
      end;
        oka:=true;
        close;
end;

procedure Tflista.FormCreate(Sender: TObject);
begin
        if nummodulo = 5 then begin
           position := poDesigned;
           windowstate := wsMaximized;
        end;   

end;

procedure Tflista.nfe_Execute(Sender: TObject);
begin
        if nummodulo = 5 then
           grade.Columns[nfe].Visible := not grade.Columns[nfe].Visible;
end;

procedure Tflista.lobsDblClick(Sender: TObject);
var
valor:string;
begin
        if nummodulo in [5,20] then
        with sender as tdbmemo do begin
             valor := msgi('Digite o nome para pesquisa:',0);

             with fdm.sg do begin
                  sql.Clear;
                  sql.Add( script + '  and ' + datafield +' like '+ quotedstr('%'+valor+'%') + criterio);
                  open;
                  formatarExecute(self);
             end;

        end;
end;

procedure Tflista.insentExecute(Sender: TObject);
begin
             if (nummodulo = 5) and (lst=false) then inserirExecute(self)
        else if (nummodulo <>5)                 then inserirExecute(self);
end;

procedure Tflista.formatarExecute(Sender: TObject);
var
tm,i:integer;

begin
          selecione('select decimaisvenda from tbconfig');
          dvenda :='';
          for i :=1 to sqlpub.fieldbyname('decimaisvenda').AsInteger do
              Dvenda := Dvenda + '0';

         sqlpub:=nil;
         tm :=0;
         for i:=0 to grade.Columns.Count-1 do begin
             tm := tm + grade.Columns[i].Width;

             try
             if (fdm.sg.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TFloatField') then
                (fdm.sg.fieldbyname(grade.Columns[i].FieldName)  as tfloatfield).displayformat := '###,##0.'+dvenda;

             if (fdm.sg.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TIntegerField') then
                (fdm.sg.fieldbyname(grade.Columns[i].FieldName)  as TIntegerField).displayformat := '000000';
             except end;   
         end;



         width := tm + 50;
         Height :=550;
         elocalizar.width := panel2.Width ;
         ncol :=0;
         litem.Caption := inttostr(fdm.sg.RecordCount)+ ' Item(ns)';

end;

procedure Tflista.Veritensdavenda1Click(Sender: TObject);
begin
        veritem('','tbpedidoitem','tbpedidoservico','tbpedidolocacao',fdm.sg.fieldbyname('chave').AsString,'');
end;

procedure Tflista.F10_itensExecute(Sender: TObject);
begin
        abortaacao(nil,fdm.sg,'chave','','','','',0);

        if nummodulo = 5 then periodo2('consultaprod',fdm.sg.fieldbyname('codigo').AsString ,'','','','',450,560,0)

        else begin
            application.CreateForm(tfcadgv,fcadgv);
            fcadgv.nummodulo := nummodulo;
            fcadgv.modo := 'alterar';
            fcadgv.btngravar.visible := false;
            fcadgv.ds := ds;
            fcadgv.tabela := fdm.sg;
            fcadgv.ShowModal;
        end;
end;

procedure Tflista.DetalhesF101Click(Sender: TObject);
begin
      F10_itensExecute(self);
end;

procedure Tflista.valoradesivoExecute(Sender: TObject);
var
tot,corte_,numerado_,resina_:double;
begin


       if (tipoempresa = '1') and (tbqtd.Active) then begin

          adcorte_.Caption := '+' + format('%n',[tbqtd.fieldbyname('vrcorte').AsFloat])+' R$';
          corte := tbqtd.fieldbyname('vrcorte').AsFloat;

          tot := tbqtd.fieldbyname('valor').AsFloat +
                 (tbqtd.fieldbyname('valor').AsFloat  *
                  tbcor.fieldbyname('acrescimo').AsFloat/100);


          try    tot := tot * eqtd.Value;
          except tot := tot * 1;
          end;

          if adcorte.Checked    then corte_    := corte else corte_ :=0;
          if adnumerado.Checked then numerado_ := tot * numerado /100 else numerado_ :=0;
          if adresina.Checked   then resina_   := tot * resina /100   else resina_ :=0;
          ltotal.Caption := formatfloat('###,##0.0000',tot+numerado_+resina_+corte_);

          vradesivo := (tot+numerado_+resina_+corte_)/eqtd.Value;
          vrpub2 := eqtd.Value;

          valorconfig := tbqtd.fieldbyname('a').AsString + ' UNIDADE(S) EM ' + tbcor.fieldbyname('qtd').AsString+ ' COR(ES)';
          if adcorte.Checked then valorconfig := valorconfig + ', COM CORTE';
          if adnumerado.Checked then valorconfig := valorconfig + ', NUMERADO';
          if adresina.Checked then valorconfig := valorconfig + ', COM RESINA';


       end;


end;

procedure Tflista.tbqtdAfterScroll(DataSet: TDataSet);
begin
      valoradesivoExecute(self);
end;

procedure Tflista.adresinaClick(Sender: TObject);
begin
      valoradesivoExecute(self);
end;

procedure Tflista.dsDataChange(Sender: TObject; Field: TField);
begin
      if tipoempresa = '1' then valoradesivoExecute(self);
end;

procedure Tflista.DBGrid3DblClick(Sender: TObject);
begin
        inserirExecute(self);
end;

procedure Tflista.pgradeprecoDblClick(Sender: TObject);
begin
        inserirExecute(self);
end;

procedure Tflista.DBGrid2DblClick(Sender: TObject);
begin
        inserirExecute(self);
end;

procedure Tflista.eqtdChange(Sender: TObject);
begin

      tbqtd.Locate('de',floattostr(eqtd.Value),[lopartialkey]);
      valoradesivoExecute(self);
end;

procedure Tflista.btnovaClick(Sender: TObject);
  var
  i:integer;
  dados,codigo,termfios:string;
begin
               with fdm.sg do begin

                  if (responsavel = '12.347.804/0001-40') and (nummodulo=5) then  termfios :='%';

                  codigo:='';

                  //se codigo original, ver se acha na lista de codigos antigos
                  if (nummodulo in [5,20]) and (indtz(fdm.sg.IndexFieldNames)='codigooriginal') then begin
                     selecione('select link from tbcodadicional where codigo = '+quotedstr(elocalizar.Text));
                     codigo := sqlpub.fieldbyname('link').AsString;
                     sqlpub := nil;
                  end;


                  if codigo <>'' then begin
                     close;
                     sql.clear;
                     sql.Add('select * from tbproduto where codigo = ' + quotedstr(codigo));
                  //localização exata
                  end else if (fdm.sg.fieldbyname(indtz(fdm.sg.IndexFieldNames)).ClassName = 'TFloatField') or
                          (fdm.sg.fieldbyname(indtz(fdm.sg.IndexFieldNames)).ClassName = 'TIntegerField') or
                          (indtz(fdm.sg.IndexFieldNames)='codigo') or
                          (indtz(fdm.sg.IndexFieldNames)='codigooriginal') or
                          (indtz(fdm.sg.IndexFieldNames)='codigobarras') or
                          (indtz(fdm.sg.IndexFieldNames)='codigofornecedor') then begin


                     dados := elocalizar.Text;

                     if (lowercase(indtz(fdm.sg.IndexFieldNames)) = 'codigo') and (nummodulo=5) and (responsavel = 'ARISTEM') then
                        dados := formatfloat('000000',strtofloat(formatnumeric(dados)));

                     close;
                     sql.clear;
                     sql.Add(script + '  and ' + indtz(fdm.sg.IndexFieldNames) +' = '+ quotedstr(dados) + criterio);
                   end else begin
                     close;
                     sql.clear;
                     sql.Add(script + '  and ' + indtz(fdm.sg.IndexFieldNames) +' like '+  quotedstr(termfios+elocalizar.Text + '%')+criterio);
                   end;

                  open;
                  for i:=0 to grade.Columns.Count-1 do begin
                     if (fdm.sg.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TFloatField') then
                        (fdm.sg.fieldbyname(grade.Columns[i].FieldName)  as tfloatfield).displayformat := '###,##0.'+dvenda;

                     if (fdm.sg.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TIntegerField') then
                        (fdm.sg.fieldbyname(grade.Columns[i].FieldName)  as TIntegerField).displayformat := '000000';
                  end;



                  litem.Caption := inttostr(fdm.sg.RecordCount)+ ' Item(ns)';
                  elocalizar.SetFocus;

                  //formatar
                  for i:=0 to grade.Columns.Count-1 do begin

                      if (fdm.sg.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TFloatField') then
                         (fdm.sg.fieldbyname(grade.Columns[i].FieldName)  as tfloatfield).displayformat := '###,##0.'+dvenda;

                      if (fdm.sg.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TIntegerField') then
                         (fdm.sg.fieldbyname(grade.Columns[i].FieldName)  as TIntegerField).displayformat := '000000';
                 end;

             end;

end;

end.


