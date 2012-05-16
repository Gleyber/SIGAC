unit ucad;

interface



uses shellapi, Db, Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  dialogs, Buttons, ExtCtrls, Mask, DBCtrls, jpeg, Grids, DBGrids,
  ToolWin, ComCtrls, Messages, variants, ActnList, ExtDlgs, Menus, Provider,
  DBClient, RLReport, ZAbstractRODataset,
  ZAbstractDataset, ZDataset,inifiles;

//const
  //databasename: string ='sigac';

type
  Tfcad = class(TForm)
    ActionList1: TActionList;
    novo: TAction;
    hbotao: TAction;
    dhbotao: TAction;
    formatar: TAction;
    primeiroR: TAction;
    VoltarR: TAction;
    AvancarR: TAction;
    UltimoR: TAction;
    tcins: TAction;
    DBGrid1: TDBGrid;
    elocalizar: TEdit;
    qgrupo: TRLReport;
    RLGroup1: TRLGroup;
    RLBand5: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText31: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLBand6: TRLBand;
    RLBand7: TRLBand;
    painel: TRLPanel;
    RLDBMemo1: TRLDBMemo;
    RLLabel3: TRLLabel;
    lcodigo1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand2: TRLBand;
    RLAngleLabel1: TRLAngleLabel;
    tabela: TClientDataSet;
    provedor: TDataSetProvider;
    ds: TDataSource;
    btnnovo: TSpeedButton;
    btneditar: TSpeedButton;
    btngravar: TSpeedButton;
    btncancelar: TSpeedButton;
    btnapagar: TSpeedButton;
    btnatualizar: TSpeedButton;
    btnPrimeiro: TSpeedButton;
    btnVoltar: TSpeedButton;
    btnAvancar: TSpeedButton;
    btnUltimo: TSpeedButton;
    btnimprimir: TSpeedButton;
    criaedit: TAction;
    sqlc: TZQuery;
    novaimp: TAction;
    btnlinhaprod: TSpeedButton;
    Label1: TLabel;
    rvisualiza: TCheckBox;
    edtfoc: TDBEdit;
    alteradados: TAction;
    btnindecf: TSpeedButton;
    grupog: TRadioGroup;
    btnpermissao: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    tbterminais: TSpeedButton;
    tbterminaisok: TSpeedButton;
    pv: TDataSetProvider;
    p: TClientDataSet;

        procedure EnterEdit(Sender: TObject);
        procedure ExitEdit(Sender: TObject);
        procedure EnterCombo(Sender: TObject);
        procedure ExitCombo(Sender: TObject);
        procedure keyp(Sender: TObject; var Key: Char);
        procedure localiza(Sender: TObject);
        procedure InsereInd;


    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure elocalizarChange(Sender: TObject);
    procedure elocalizarKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure novoExecute(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure dhbotaoExecute(Sender: TObject);
    procedure hbotaoExecute(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure btnatualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure formatarExecute(Sender: TObject);
    procedure primeiroRExecute(Sender: TObject);
    procedure VoltarRExecute(Sender: TObject);
    procedure AvancarRExecute(Sender: TObject);
    procedure UltimoRExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure elocalizarKeyPress(Sender: TObject; var Key: char);
    procedure FormKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBGrid1Exit(Sender: TObject);
    procedure elocalizarExit(Sender: TObject);
    procedure elocalizarEnter(Sender: TObject);
    procedure tcinsExecute(Sender: TObject);
    procedure comboEnter(Sender: TObject);
    procedure comboExit(Sender: TObject);
    procedure eobsEnter(Sender: TObject);
    procedure eobsExit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure tabelaAfterEdit(DataSet: TDataSet);
    procedure tabelaAfterScroll(DataSet: TDataSet);
    procedure Label16Click(Sender: TObject);
    procedure DBComboBox2Change(Sender: TObject);
    procedure DBMemo5Enter(Sender: TObject);
    procedure DBMemo5Exit(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBMemo4Enter(Sender: TObject);
    procedure DBMemo4Exit(Sender: TObject);
    procedure criaeditExecute(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure novaimpExecute(Sender: TObject);
    procedure btnlinhaprodClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure alteradadosExecute(Sender: TObject);
    procedure btnindecfClick(Sender: TObject);
    procedure grupogClick(Sender: TObject);
    procedure btnpermissaoClick(Sender: TObject);
    procedure tbterminaisokClick(Sender: TObject);
    procedure tbterminaisClick(Sender: TObject);



  private
  memo,nomeant,cpn1, cpn2, ncb1,ncb2,cb1,cb2,cb1tb,cb2tb,ncb3,cb3,cb3tb,msg_,c1,c2,tb,nnul,PN,PA,PD:string;
  naoduplica,naoduplica2:boolean;

  pula,link,lefcp:integer;

    { Private declarations }
  public
    gravar, modo: string;
    { Public declarations }
    constructor Create(AOwner: TComponent; tab,sq,cap,campo1,campo2,
                         ncb1_,cb1tb_,cb1_ ,ncb2_,cb2tb_,cb2_,ncb3_,cb3tb_,cb3_,
                         cpn1_, cpn2_,nnul_,memo_:string;i,link_:integer); reintroduce;
  end;

var
  fcad: Tfcad;

implementation

uses udm, funcoes,  uimp;
{$R *.dfm}


constructor Tfcad.Create(AOwner: TComponent;  tab,sq,cap,campo1,campo2,
                         ncb1_,cb1tb_,cb1_ ,ncb2_,cb2tb_,cb2_, ncb3_,cb3tb_,cb3_,
                         cpn1_, cpn2_,nnul_,memo_:string;i,link_:integer);
var  lk:string;
begin

  Inherited Create(AOwner);

          pula:=i;
          naoduplica := campo1 <> '';
          naoduplica2 :=campo2 <> '';
          nnul := nnul_;
          tb:=lowercase(tab);
          cb1:=cb1_;
          cb2:=cb2_;
          cb3:=cb3_;
          cb1tb:=cb1tb_;
          cb2tb:=cb2tb_;
          cb3tb:=cb3tb_;
          ncb1:=ncb1_;
          ncb2:=ncb2_;
          ncb3:=ncb3_;
          cpn1:=cpn1_;
          cpn2:=cpn2_;

          memo:=memo_;
          link:=link_;

          if link >0 then lk := ' where link = ' + quotedstr(inttostr(link));

          grupog.Visible := tb = 'tbfone';
          tabela.DisableControls;
          sqlC.SQL.Clear;

          if sq <> '' then
             sqlC.SQL.Add(sq+lk)
          else
             sqlC.SQL.Add('select * from ' + tb +lk);

          //debugstr(sqlC);
          tabela.Open;

          formatarexecute(self);
          tabela.EnableControls;

          if cap = '' then
             caption := 'MANUTENCAO DE '+ uppercase(copy(tab,3,30))
          else caption := cap ;

          c1:=campo1;
          c2:=campo2;

          if c2 <> '' then
             msg_ := 'Os campos '+ lowercase(campo1) + ' e '+lowercase(campo2) +' devem ser preenchidos!!!'
          else
             msg_ :='O campo '+ lowercase(campo1) +' deve ser preenchido!!!';

          criaeditExecute(self);

          btnlinhaprod.Visible := tb='tbprodlinha';
          btnindecf.Visible := tb='tbicms';
          btnpermissao.Visible := tb='tbusuario';
          tbterminais.Visible := tb='tbterminais';
          tbterminaisok.Visible := tb='tbterminais';

          tabela.edit;
          tabela.Cancel;
          modo :='N';          
end;


procedure Tfcad.localiza(Sender: TObject);
begin
          abortar(edtfoc);
          with sender as tlabel do begin

               try
                  tabela.IndexFieldNames := caption;
               except
                  msg('#Não podes ordenar campo memo!',0);
               end;

               dbgrid1.Columns[0].FieldName := caption;

                  
               elocalizar.SetFocus;
               elocalizar.Clear;
          end;
end;


procedure Tfcad.Exitedit(Sender: TObject);
begin
  with Sender as tdbedit do begin
     color := clwhite;

     if modified then begin
        tabela.edit;
        try
        tabela[datafield] := tiraacento(tabela.fieldbyname(datafield).asstring);
        except end;

     end;
  end;
end;


procedure tfcad.Enteredit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;



procedure tfcad.Exitcombo(Sender: TObject);
begin
  with  Sender as tdbcombobox do
    color := clwhite;
end;

procedure Tfcad.keyp(Sender: TObject; var Key: Char);
begin
        with Sender as tdbcombobox do
             if not (key in[#13,#27]) then abort;
end;

procedure tfcad.Entercombo(Sender: TObject);
begin
  with  Sender as tdbcombobox do
    color := clinfobk;
end;


procedure Tfcad.btnPrimeiroClick(Sender: TObject);
begin
  abortar(edtfoc);
  tabela.First;
end;

procedure Tfcad.btnVoltarClick(Sender: TObject);
begin
  abortar(edtfoc);
  tabela.prior;
end;

procedure Tfcad.btnAvancarClick(Sender: TObject);
begin
  abortar(edtfoc);
  tabela.Next;
end;

procedure Tfcad.btnUltimoClick(Sender: TObject);
begin
  abortar(edtfoc);
  tabela.last;
end;

procedure Tfcad.btnnovoClick(Sender: TObject);
begin

  if lowercase(caption)= 'config conta' then
     msg('#Esta tela é apenas de configuração.',0);

  permissao(PN,'PN','cadastro');
  novoExecute(self);

  if fcad.Active then begin
     edtfoc.setfocus;
     Perform(wm_nextdlgctl, 0,0);
  end;
  modo := 'M';

end;

procedure Tfcad.btngravarClick(Sender: TObject);
var
  localiza,altr,scloc: string;
  sql: tzquery;
begin
       focuscontrol(nil);


          if (tb = 'tbusuario') and (tabela.fieldbyname('senha').AsString='') then msg('#O campo senha não pode ser nulo!',0);

          if (tb = 'tbcfop') and (length(tabela.fieldbyname('cfop').AsString)<>5) then
                msg('#O cfop está incorreto: Padrão correto (4 números, 1 ponto. Ex: 1.102)!',0);


       //campo não deve ser nulo
       //try
       if (nnul <> '') and ((tabela[nnul]=null) or (tabela.FieldByName(nnul).AsString ='')) then
            msg('#'+nnul+' não pode ser nulo.', 0);
       //except end;

       if (naoduplica) or (naoduplica2) then begin

          if gravar = 'alterar' then
             altr :=  ' and chave <> ' + quotedstr(tabela.fieldbyname('chave').AsString);

       if (naoduplica) and (c1<>'') then
          if tabela[c1]= null then begin
             edtfoc.setfocus;
             Perform(wm_nextdlgctl, 0,0);
             msg('#'+msg_,0);
          end;

       if (naoduplica2) and (c2<>'') then
          if tabela[c2]= null then begin
            edtfoc.setfocus;
            Perform(wm_nextdlgctl, 0,0);
            msg('#'+msg_, 0);
          end;


         sql := tzquery.Create(application);

          with sql do begin
               Connection := fdm.conector ;

           if (naoduplica) and (tabela[c1] <> null)  then begin
              close;
              sql.Clear;
              sql.Add( 'select '+ C1 + '  from ' +tb+ ' where '+C1+' = ' +
                              quotedstr(tabela.fieldbyname(c1).AsString)+ altr);
              open;

          // se já existir
          if not IsEmpty then begin
             edtfoc.setfocus;
             Perform(wm_nextdlgctl, 0,0);
             msg(fieldbyname(c1).asstring + ' Já está cadastrado!',0);
             destroy;
             abort;
          end;
          end;


           if (naoduplica2) and (tabela[c2] <> null)  then begin
              close;
              sql.Clear;
              sql.Add( 'select '+ C2 + '  from ' +tb+ ' where '+C2+' = ' +
                              quotedstr(tabela.fieldbyname(c2).AsString)+ altr);
              open;

          // se já existir
          if not IsEmpty then begin
             edtfoc.setfocus;
             Perform(wm_nextdlgctl, 0,0);
             
             msg(fieldbyname(c2).asstring + ' Já está cadastrado!',0);
             destroy;
             abort;
          end;
          end;
          destroy;
      end;       
   end;


     tabela.edit;
     if tb='tbicms' then
        if      tabela['sittribut'] = 'ICMS' then tabela['SitTributaria'] := 'X'
        else if tabela['sittribut'] = 'Subst' then tabela['SitTributaria'] := 'F'
        else if tabela['sittribut'] = 'Isento' then tabela['SitTributaria'] := 'I'
        else if tabela['sittribut'] = 'N Incid' then tabela['SitTributaria'] := 'N'
        else if tabela['sittribut'] = 'ISSQN' then tabela['SitTributaria'] := 'ISS';





         if tb = 'tbcontasocio' then  begin

            selecione('select codigo from tbconta where descricao = ' + quotedstr(tabela.fieldbyname('descricao').AsString));
            tabela.Edit;
            tabela['codigo'] := sqlpub.fieldbyname('codigo').AsString;

            selecione('select chave from tbcontasocio where link = '+ quotedstr(inttostr(link)) +
                      ' and  codigo = '+  quotedstr(tabela.fieldbyname('codigo').AsString));

            if sqlpub['chave'] <> null then msg('#Esta conta já consta!',0);



            if tabela['descricao'] = 'MENSALIDADE' then begin
               selecione('select chave from tbcontasocio where link = '+ quotedstr(inttostr(link)) +
                         ' and  descricao = '+  quotedstr('CONTRIBUICAO'));

               if sqlpub['chave'] <> null then msg('#O sócio deve pagar MENSALIDADE ou CONTRIBUIÇÃO!',0);

            end;

            if tabela['descricao'] = 'CONTRIBUICAO' then begin
               selecione('select chave from tbcontasocio where link = '+ quotedstr(inttostr(link)) +
                         ' and  descricao = '+  quotedstr('MENSALIDADE'));

               if sqlpub['chave'] <> null then msg('#O sócio deve pagar MENSALIDADE ou CONTRIBUIÇÃO!',0);

            end;

            sqlpub := nil;

         end;


     tabela.edit;
     if gravar = 'alterar' then begin

     if tb='tbusuario' then tabela['nome'] := nomeant;

       alteradadosexecute(self);
       altera(tabela,nil, tb);

     end else begin

     if tb = 'tbempresas' then novaimpExecute(self);
     if tb = 'tbsubestoque' then selecione('alter table tbproduto add ' +tabela.fieldbyname('nome').AsString + ' double');

     grava(tabela,nil, tb);
   end;

   

  if c1 <> '' then
     localiza := tabela.fieldbyname(c1).AsString;

  tabela.close;
  tabela.open; 
  formatarExecute(self);

  if c1 <> '' then
     tabela.Locate(c1, localiza, []);

  if tb='tbicms' then InsereInd;

          hbotaoexecute(self);
          desativar(fcad);
          modo := 'N';
end;

procedure Tfcad.btncancelarClick(Sender: TObject);
begin
  tabela.Cancel;

  hbotaoexecute(self);
  desativar(fcad);
  modo := 'N';
end;

procedure Tfcad.btnapagarClick(Sender: TObject);

begin


     if (tb = 'tbconta') and (tabela['codigo']='0') then msg('#Esta conta é usada pelo sistema.',0);


     if tb = 'tbempresas' then msg('#Não pode apagar o banco de dados.',0);


         if ((tb = 'tbconta') and (responsavel='SINDICATO')) and
            ((tabela['descricao']='MENSALIDADE') or (tabela['descricao']='CONTRIBUICAO')) then
            msg('#Mensalidade e Contribuição não podem ser deletados.',0);

     if uppercase(tb) = 'TABDEPARTAMENTO' then
        msg('Este departamento não pode ser deletado!',0);


        permissao(PA,'PA',copy(tb,4,15));
        abortaacao(tabela,nil,'chave','','','','',0);


     if msg('',1) then begin

        selecione ('delete from  '+tb+' where chave = ' + quotedstr(tabela.FieldByName('chave').AsString));

        if tb ='tbusuario' then
            selecione('delete from tbpermissao where link = ' + quotedstr(tabela.fieldbyname('chave').AsString));

        if tb ='tbsubestoque' then
           selecione('alter table tbproduto drop ' + tabela.fieldbyname('nome').AsString);

    tabela.cancel;
    tabela.refresh;
    if tb='tbicms' then InsereInd;    

  end;
end;

procedure Tfcad.elocalizarChange(Sender: TObject);
begin
          try
            tabela.locate(tabela.IndexFieldNames,elocalizar.Text,[loPartialKey]);
          except end;  
end;

procedure Tfcad.elocalizarKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
var
lk:string;
begin

  if key = 40 then tabela.Next;
  if key = 38 then tabela.prior;

  if (key = 13) and (elocalizar.Text <> '') then begin
     if link >0 then lk := ' and link = ' + quotedstr(inttostr(link));

     sqlC.SQL.Clear;
     sqlC.sql.Add('select * from '+ tb +' where ' + tabela.IndexFieldNames +
                  ' like ' + quotedstr(uppercase(elocalizar.text)+ '%') +lk );

     tabela.cancel;
     tabela.refresh;
     elocalizar.SetFocus;
  end;

end;

procedure Tfcad.novoExecute(Sender: TObject);
var
isdt:boolean;
ish:boolean;

        function campoN(ncampo:string): string;
        begin
                   selecione('show fields from '+tb);
                   sqlpub.locate('field',ncampo,[]);

                   isdt := copy(sqlpub.fieldbyname('Type').AsString,1,2)='da';
                   ish := copy(sqlpub.fieldbyname('Type').AsString,1,2)='ti';

                   //se nao for data
                   if (isdt = false) and (ish=false) then begin
                       selecione('select max('+ncampo+')as num from '+tb);
                       try
                       result := inttostr(sqlpub.fieldbyname('num').asinteger + 1);
                       except end;
                       sqlpub := nil;
                   end;
        end;

begin

          //campoN(cpn1);

          gravar := 'novo';
          ativar(fcad);

          tabela.Insert;

          if cpn1 <> '' then begin
             campoN(cpn1);
             if isdt then
                tabela[cpn1]:= datetostr(now)
             else if ish then
                tabela[cpn1]:= timetostr(now)
             else
                tabela[cpn1]:= campoN(cpn1);
          end;

          if cpn2 <> '' then begin
             campoN(cpn2);
             if isdt then
                tabela[cpn2]:= datetostr(now)
             else if ish then
                tabela[cpn2]:= timetostr(now)
             else
                tabela[cpn2]:= campoN(cpn2);
 
          end;

          if link >0 then
             tabela['link'] := link;

          dhbotaoexecute(self);
end;

procedure Tfcad.btneditarClick(Sender: TObject);
begin

         if (tb = 'tbconta') and (tabela['codigo']='0') then msg('#Esta conta é usada pelo sistema.',0);

         if tb = 'tbempresas' then msg('#Não pode alterar o banco de dados.',0);

         //if tb='tbusuario' then  msg('#Não é possível alterar, apague-o e crie outro.',0);

          abortaacao(tabela,nil,'chave','','','','',0);
          gravar := 'alterar';
          if c1<>'' then
             nomeant := tabela.fieldbyname(c1).asstring;
          ativar(fcad);
          dhbotaoexecute(self);

          if (fcad.Active) and(edtfoc<>nil) then begin
             edtfoc.setfocus;
             Perform(wm_nextdlgctl, 0,0);
          end;
end;

procedure Tfcad.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  if modo = 'M' then
  begin
    case application.MessageBox('Deseja salvar as alterações?',
      'Sair', mb_yesnocancel + MB_ICONQUESTION) of

      idYes:
        begin
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
end;

procedure Tfcad.dhbotaoExecute(Sender: TObject);
begin
  btnnovo.Enabled := False;
  btneditar.Enabled := False;
  btnapagar.Enabled := False;
  btnatualizar.Enabled := False;
  btngravar.Enabled := True;
  btncancelar.Enabled := True;
end;

procedure Tfcad.hbotaoExecute(Sender: TObject);
begin
  btnnovo.Enabled := True;
  btneditar.Enabled := True;
  btnapagar.Enabled := True;
  btnatualizar.Enabled := True;
  btngravar.Enabled := False;
  btncancelar.Enabled := False;
end;

procedure Tfcad.DBGrid1Enter(Sender: TObject);
begin
  keypreview := False;
end;

procedure Tfcad.btnatualizarClick(Sender: TObject);
var
  loc: string;

begin
        if tabela['chave'] = null then abort;
        loc := tabela.fieldbyname('chave').asstring;
        tabela.Cancel;
        tabela.Refresh;
        tabela.Locate('chave',loc,[]);
end;

procedure Tfcad.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tabela.Close;
  Release;
  fcad := nil;
end;

procedure Tfcad.formatarExecute(Sender: TObject);
var
i:integer;
begin

        if tb= 'tbcontacontabil' then
           tabela.FieldByName('ContaAnalitica').EditMask := '##.##.##.###.#####;0;_';

        formatacptabela(tabela,nil,2);

end;

procedure Tfcad.primeiroRExecute(Sender: TObject);
begin
  btnPrimeiroclick(self);
end;

procedure Tfcad.VoltarRExecute(Sender: TObject);
begin
  btnvoltarclick(self);
end;

procedure Tfcad.AvancarRExecute(Sender: TObject);
begin
  btnavancarclick(self);
end;

procedure Tfcad.UltimoRExecute(Sender: TObject);
begin
  btnultimoclick(self);
end;

procedure Tfcad.FormCreate(Sender: TObject);
var
st:string;
begin

            if application.Title = 'Empresarial' then
               st :='1';

               if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\cadastrop'+st+'.jpg')) then
                                   imageform('img',alclient, self,
                                   (PChar(ExtractFilePath(ParamStr(0)) +'imagem\cadastrop'+st+'.jpg')),nil);


            PN := sqlacesso.fieldbyname('inserir').AsString;
            PA :=sqlacesso.fieldbyname('alterar').AsString;
            PD := sqlacesso.fieldbyname('apagar').AsString;

            sqlacesso.Destroy;
            //desativar(fcad);
end;

procedure Tfcad.elocalizarKeyPress(Sender: TObject; var Key: char);
begin
//  if tabela.IndexFieldNames = 'codigo' then
        if (tabela.fieldbyname(tabela.IndexFieldNames).ClassName = 'TIntegerField') or
           (tabela.fieldbyname(tabela.IndexFieldNames).ClassName = 'TFloatField')  then
           if not (key in ['0'..'9', #8]) then abort;
end;

procedure Tfcad.FormKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if (key = 13)  then begin
    key :=0;
    Perform(wm_nextdlgctl, 0,0);
  end;  
  if (key = 27) then begin
     key :=0;
     Perform(wm_nextdlgctl, 1,0);
  end;


end;

procedure Tfcad.DBGrid1Exit(Sender: TObject);
begin
  keypreview := True;
end;

procedure Tfcad.elocalizarExit(Sender: TObject);
begin
  with Sender as tedit do
    color := $00F1F5F8;
    keypreview := true;
end;

procedure Tfcad.elocalizarEnter(Sender: TObject);
begin
  with Sender as tedit do
    color := clinfobk;
    keypreview := false;
end;

procedure Tfcad.tcinsExecute(Sender: TObject);
begin
  if edtfoc.Enabled = True then
    btngravarclick(self)
  else
    btnnovoclick(self);
end;

procedure Tfcad.comboEnter(Sender: TObject);
begin
  keypreview := False;
end;

procedure Tfcad.comboExit(Sender: TObject);
begin
  keypreview := False;
end;

procedure Tfcad.eobsEnter(Sender: TObject);
begin
  keypreview := False;
end;

procedure Tfcad.eobsExit(Sender: TObject);
begin
  keypreview := True;
end;

procedure Tfcad.DBEdit12Exit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clwhite;
end;

procedure Tfcad.tabelaAfterEdit(DataSet: TDataSet);
begin
        modo := 'M';
end;

procedure Tfcad.tabelaAfterScroll(DataSet: TDataSet);
begin

    btnPrimeiro.Enabled := not tabela.BOF;
    btnVoltar.Enabled := not tabela.BOF;
    btnAvancar.Enabled := not tabela.EOF;
    btnUltimo.Enabled := not tabela.EOF;

    if (tb = 'tbusuario') and (tabela['chave']<>null) then
       Label2.caption := 'Manutenção usuário nº '+ inttostr(tabela.fieldbyname('chave').AsInteger)
    else Label2.caption := '';


end;

procedure Tfcad.Label16Click(Sender: TObject);
var
  st: string;
begin
        abortaacao(tabela,nil,'chave','','','','',0);
        permissao(PA,'PA','cadastro');

        st := msgi('Alterar o saldo da conta:'+#13+#13+ 'Digite o novo saldo:',2);

        if StrIsFloat(st) = False then
           msg('#O valor digitado não é um número válido!',0);

        btneditarclick(self);
        tabela.Edit;
        tabela['saldo'] := st;

        btngravarclick(self);
end;

procedure Tfcad.DBComboBox2Change(Sender: TObject);
begin
                if tabela['classicm'] = 'I' then begin
                   tabela.Edit;
                   tabela.FieldByName('indaliquota').Clear;
               end;

end;

procedure Tfcad.DBMemo5Enter(Sender: TObject);
begin
        keypreview := false;
end;

procedure Tfcad.DBMemo5Exit(Sender: TObject);
begin
        keypreview := true;
end;

procedure Tfcad.DBMemo1Enter(Sender: TObject);
begin
        keypreview := false;
end;

procedure Tfcad.DBMemo1Exit(Sender: TObject);
begin
         keypreview := true;
end;

procedure Tfcad.DBMemo4Enter(Sender: TObject);
begin
        keypreview := false;
end;

procedure Tfcad.DBMemo4Exit(Sender: TObject);
begin
        keypreview := true;
end;

procedure Tfcad.criaeditExecute(Sender: TObject);
var
edt:tdbedit;
mem:tdbmemo;
lab:tlabel;
m,tp,i,j,w,l:integer;

ent,ntbc,campo:string;
sqlcombo:tzquery;
combo:TDBComboBox;
para,f,tmcampo:boolean;
begin


          with tabela do begin

               tp:=40 + (pula*30);
               i:=1;
               lefcp :=20;

               for j := 1 to FieldCount - 1 do  begin

                     tmcampo := (Fields[j].ClassName <> 'TMemoField') and
                                (Fields[j].Size<16);

                     //se o edit nao for texto longo
                      if tmcampo then begin
                         W := 56;
                         L := lefcp;

                      end else begin
                         W := 220;
                         L := 20;
                        // se o campo anterior foi pequeno, pular para baixo
                         if (f) and (not tmcampo) then begin
                            tp :=tp+30;
                            i:=i+1;
                            tmcampo:=false;
                            f :=false;
                         end;
                      end;



                     if (lowercase(Fields[j].fieldName) <> 'chave') and
                        (lowercase(Fields[j].fieldName) <> 'link') and
                        (lowercase(Fields[j].fieldName) <> 'sittributaria') and
                         (i <=7) then begin


                       if ((ncb1 <> '') and (lowercase(ncb1)=lowercase(Fields[j].fieldName))) or
                          ((ncb2 <> '') and (lowercase(ncb2)=lowercase(Fields[j].fieldName))) or
                          ((ncb3 <> '') and (lowercase(ncb3)=lowercase(Fields[j].fieldName))) then begin

                          if lowercase(ncb1)= lowercase(Fields[j].fieldName) then begin
                             ntbc:=cb1tb;
                             campo :=cb1;

                          end else if lowercase(ncb2)= lowercase(Fields[j].fieldName) then begin
                             ntbc:=cb2tb;
                             campo :=cb2;

                          end else if lowercase(ncb3)= lowercase(Fields[j].fieldName) then begin
                             ntbc:=cb3tb;
                             campo :=cb3;
                          end;

                          //se for combo
                               combo := TDBComboBox.Create(self);
                               with combo do begin
                                  Left := l;
                                  Width := w;
                                  Top := tp+12;
                                  parent := self;
                                  //Style := csOwnerDrawFixed;
                                  BevelInner := bvLowered;
                                  BevelKind := bkFlat;
                                  ItemHeight := 13;
                                  if responsavel <> '10.413.451/0001-04' then
                                     CharCase := ecUpperCase;

                                  DataField := tabela.Fields[j].fieldName;
                                  DataSource := ds;
                                  DropDownCount := 30;
                                  OnEnter := entercombo;
                                  OnExit := exitcombo;
                                  onKeyPress :=keyp;
                                  Enabled := False;

                                //se a lista nao vir de uma tabela
                                if ntbc='' then begin
                                ent :='';
                                para:=false;

                                for m:=1 to length(campo) do begin
                                   if copy(campo,m,1) = ',' then
                                      para:=true;

                                   if not para  then
                                      ent := ent + copy(campo,m,1)

                                else begin
                                     Items.Add(ent);
                                     para := false;
                                     ent:='';
                                end;

                               end;
                               Items.Add(ent);

                            //se vir de uma tabela
                            end else begin
                               sqlcombo := tzquery.Create(application);
                               with sqlcombo do begin
                                  Connection:=fdm.conector ;
                                  Close;
                                  sql.Clear;
                                  sql.Add( 'select distinct '+campo+' from '+ntbc+' order by ' +campo);
                                  open;

                                  while not EOF do
                                  begin
                                       if fieldbyname(campo).asstring <> '' then
                                          combo.Items.Add(fieldbyname(campo).asstring);
                                       Next;
                                  end;

                               end;
                               sqlcombo.destroy;
                               lefcp :=20;
                             end;
                           end;

                      //memo
                      end else if (memo <> '') and (lowercase(memo)=lowercase(Fields[j].fieldName)) then begin

                          mem := TDBMemo.Create(self);
                          with mem do begin
                               Left := l;
                               Width := w;
                               Top := tp+12;
                               parent := self;
                               BevelKind := bkFlat;
                               BevelOuter := bvRaised;
                               BiDiMode := bdRightToLeft;
                               BorderStyle := bsNone;
                               ScrollBars := ssVertical;
                               Height := 40;
                               DataField := Fields[j].fieldName;
                               DataSource := ds;
                               Enabled := False;

                           end;
                           tp := tp + 22;
                           lefcp :=20;

                       end else begin//cria edit

                          edt := tdbedit.Create(self);
                          with edt do begin
                               Width := w;
                               Left  := l;
                               Top := tp+12;
                               parent := self;
                               Height := 16;
                               BevelInner := bvLowered ;
                               BevelKind := bkFlat ;
                               BorderStyle := bsNone;

                                  if responsavel <> '10.413.451/0001-04' then
                                     CharCase := ecUpperCase;


                               if lowercase(Fields[j].fieldName) = 'senha' then
                                  edt.PasswordChar :='*';

                               DataField := Fields[j].fieldName;
                               DataSource := ds;
                               Enabled := False;

                               if (lowercase(DataField) = 'codigo') and (tb='tbconta') then
                               ReadOnly := true;

                               OnEnter:=EnterEdit;
                               OnExit:=ExitEdit;

                               //focus
                               //if (lowercase(Fields[j].fieldName) <> 'chave') and
                                // (tabela.IndexFieldNames='') then
                                  //edtfoc:=edt;

                              end;
                           end;


                           if (lowercase(Fields[j].fieldName) <> 'chave') and
                              (tabela.IndexFieldNames='') then begin
                               dbgrid1.Columns[0].FieldName := Fields[j].fieldName ;
                               tabela.IndexFieldNames := Fields[j].fieldName;
                               //edtfoc:=edt;
                           end;


                            lab := TLabel.Create(self);
                            with lab do begin
                              Parent := self;
                              //  capcp(
                              Caption :=uppercase(copy(Fields[j].fieldName,1,1))+ copy(Fields[j].fieldName,2,20);
                              //capcp(Fields[j].fieldName);

                              if tipoempresa = 'A' then begin

                                 if caption= 'Aparelho' then caption :='Veículo';
                                 if caption= 'Serie' then caption :='Placa';
                                 if caption= 'Marca' then caption :='Chassi';
                                 if caption= 'Modelo' then caption :='Modelo';


                              end;

                               //caption := capcp(caption);
                               //se o edit nao for texto longo
                               if tmcampo then begin
                                  Left := lefcp;
                                  f:=true;

                                  if lefcp =20 then
                                     lefcp :=102
                                  else if lefcp =102 then
                                     lefcp :=184
                                  else if lefcp =184 then begin
                                     lefcp :=20;
                                     tmcampo:= false;
                                     f:=false;
                                  end;

                               end else begin
                                  Left := 20;
                                  lefcp :=20;
                                  f:=false;
                               end;

                              Top := tp;
                              font.Style := [fsbold];
                              transparent := true;
                              Cursor:=crHandPoint;
                              onclick:=localiza;
                              hint:= 'Clique em '+caption+' para ordenar e localizar por '+caption+'.';
                              showhint:=true;
                            end;


                     if tmcampo=false then begin
                        tp :=tp+30;
                        i:=i+1;
                     end;


                     end;

               end;

          end;

end;


procedure Tfcad.btnimprimirClick(Sender: TObject);
begin
  abortar(edtfoc);
  imptb (tabela, ds, tb ,caption,rvisualiza.Checked);
end;

procedure Tfcad.novaimpExecute(Sender: TObject);
var
scr,ntb:string;
qr: tzquery;
i:integer;
begin         try
               selecione('create database ' + tabela.fieldbyname('nome').AsString);
               except
                  msg('Verifique se este banco de dados já existe, ou se o nome é composto!',0);
               end;

          databaseemp:= tabela.fieldbyname('nome').AsString ;
          qr := tzquery.Create(application);
          qr.Connection := fdm.Conectemp;


          for i := 1 to 21 do begin

              if i= 1  then ntb :='venda';
              if i= 2  then ntb :='vendaitem';
              if i= 3  then ntb :='vendadevolucao';
              if i= 4  then ntb :='vendapp';
              if i= 5  then ntb :='vendaservico';

              if i= 6  then ntb :='tbpedido';
              if i= 7  then ntb :='tbpedidoitem';
              if i= 8  then ntb :='tbpedidoservico';
              if i= 9  then ntb :='tbnota';
              if i= 10  then ntb :='tbnotaitem';
              if i= 11  then ntb :='tbnotaservico';
              if i= 12  then ntb :='tbreceber';
              if i= 13  then ntb :='tbpagar';
              if i= 14  then ntb :='tbentrada';
              if i= 15  then ntb :='tbentradamp';
              if i= 16  then ntb :='tbentradadf';
              if i= 17  then ntb :='tbentradap';
              if i= 18  then ntb :='tbentradaitem';
              if i= 19  then ntb :='tbentradaitemmp';
              if i= 20  then ntb :='tbentradaitemdf';
              if i= 21  then ntb :='tbentradaitemp';
              if i= 22  then ntb :='tbempresa';              

             selecione('show fields from '+ntb);
             scr := 'CREATE TABLE '+ntb+' (chave integer auto_increment primary key ';

             while not sqlpub.eof do begin
                     if uppercase(sqlpub['field'])<> 'CHAVE' then
                        scr := scr +  ','+sqlpub.fieldbyname('field').AsString+ ' '+
                                      sqlpub.fieldbyname('type').AsString;
                     sqlpub.next;
             end;

             scr := scr + ')';

             fdm.conectemp.Disconnect;
             with qr do begin
                  sql.Clear;
                  sql.Add(scr);
                  execsql;
             end;
         end;

         qr.Destroy;
         sqlpub := nil;
         fdm.conectemp.Disconnect;
end;


procedure Tfcad.btnlinhaprodClick(Sender: TObject);
begin
                abortaacao(tabela,nil,'chave','','','','',0);
                filtrar(dbgrid1,tabela,nil,'chave');
                tabela.First;

                valorconfig :='';
                while not tabela.Eof do begin
                      if valorconfig = '' then
                         valorconfig := tabela.fieldbyname('codigo').AsString
                      else
                         valorconfig := valorconfig + ';' +tabela.fieldbyname('codigo').AsString;
                     tabela.Next;
                end;
                tabela.Filtered := false;
                close;
end;

procedure Tfcad.Label2Click(Sender: TObject);
begin
        abortar(edtfoc);
end;

procedure Tfcad.alteradadosExecute(Sender: TObject);
begin

     if tb = 'tbdepartamento' then begin
        selecione('update tbproduto set departamento = ' + quotedstr(tabela.fieldbyname('nome').AsString)+
                  ' where departamento = '+quotedstr(nomeant));

        selecione('update tbfamilia set departamento = ' + quotedstr(tabela.fieldbyname('nome').AsString)+
                  ' where departamento = '+quotedstr(nomeant));
     end;


     if tb = 'tbfamilia' then begin
        selecione('update tbproduto set familia = ' + quotedstr(tabela.fieldbyname('nome').AsString)+
                  ' , departamento = ' + quotedstr(tabela.fieldbyname('departamento').AsString)+
                  ' where familia = '+quotedstr(nomeant));

        selecione('update tbgrupo set secao = ' + quotedstr(tabela.fieldbyname('nome').AsString)+
                  ' where secao = '+quotedstr(nomeant));
     end;

     if tb = 'tbgrupo' then begin
        selecione('update tbproduto set grupo = ' + quotedstr(tabela.fieldbyname('nome').AsString)+
                  ' , familia = ' + quotedstr(tabela.fieldbyname('secao').AsString)+
                  ' where grupo = '+quotedstr(nomeant));

        selecione('update tbsubgrupo set grupo = ' + quotedstr(tabela.fieldbyname('nome').AsString)+
                  ' where grupo = '+quotedstr(nomeant));
     end;

     if tb = 'tbsubgrupo' then
        selecione('update tbproduto set subgrupo = ' + quotedstr(tabela.fieldbyname('nome').AsString)+
                  ' , grupo = ' + quotedstr(tabela.fieldbyname('grupo').AsString)+
                  ' where subgrupo = '+quotedstr(nomeant));


     if tb = 'tbfabricante' then
        selecione('update tbproduto set fabricante = ' + quotedstr(tabela.fieldbyname('nome').AsString)+
                  ' where fabricante = '+quotedstr(nomeant));

     if tb = 'tbmarca' then
        selecione('update tbproduto set fornecedor = ' + quotedstr(tabela.fieldbyname('nome').AsString)+
                  ' where fornecedor = '+quotedstr(nomeant));


     if tb = 'tbempresas' then msg('#Não pode alterar o nome.',0);


     if tb = 'tbregcli' then begin
        selecione('update tbcid set regiao = ' + quotedstr(tabela.fieldbyname('nome').AsString)+
                  ' where regiao = '+quotedstr(nomeant));

        selecione('update tbcliente set regiao = ' + quotedstr(tabela.fieldbyname('nome').AsString)+
                  ' where regiao = '+quotedstr(nomeant));
     end;


     if tb = 'tbcid' then
        selecione('update tbcliente set '+
                  ' municipio = ' + quotedstr(tabela.fieldbyname('nome').AsString)+
                  ', regiao = ' + quotedstr(tabela.fieldbyname('regiao').AsString)+
                  ' where municipio = '+quotedstr(nomeant));


     if tb = 'tbsubestoque' then
        selecione('alter table tbproduto change ' + nomeant + ' '+
                  tabela.fieldbyname('nome').AsString +' double');

end;


procedure Tfcad.InsereInd;

    function ncx: string;
    var
      Ini: TInifile;
    begin
      Ini := TIniFile.Create(conf_local);
      Result := Ini.ReadString('ImpFiscal', 'NumECF', '');
      Ini.Free;
    end;


var
  Qr: tzquery;
begin
        Qr := tzquery.Create(self);
        tabela.First;
        selecione('delete from tbindecf where NumImpECF = '+Quotedstr(ncx));

        while not tabela.Eof do begin

          with Qr do begin
            Connection := fdm.conector ;
            Close;
            Sql.Clear;
            Sql.Add('INSERT INTO tbindecf(link, imposto, indecf, NumImpECF) values (' +
                    Quotedstr(tabela.FieldByName('chave').AsString) +
                    ',' +Quotedstr(tabela.FieldByName('imposto').AsString) +
                    ',' +Quotedstr(tabela.FieldByName('IndECF').AsString) +
                    ',' +Quotedstr(ncx) + ')');
            Execsql;
          end;
          tabela.Next;

        end;
        qr.free;
end;


procedure Tfcad.btnindecfClick(Sender: TObject);
begin
        infecf;
end;

procedure Tfcad.grupogClick(Sender: TObject);
var
str:string;
begin
          abortar(edtfoc);

         case grupog.itemindex of
              0  : str := 'select * from tbfone';
              1  : str := 'select chave,data,nome,email,obs,ramal,ddd,fone3,fone2,fone,'+
                          'fax from tbcliente '+
                          ' where fone is not null or fone2 is not null or fone3 is not null or fax is not null';
              2  : str := 'select chave,data,nome,email,obs,ramal,ddd, " " as fone3,fone2,fone,'+
                          'fax from tbfornecedor'+
                          ' where fone is not null or fone2 is not null  or fax is not null';
              3  : str := 'select chave,admissao as data,nome,email,obs," " as ramal,ddd, " " as fone3,celular as fone2,fone,'+
                          ' " " as fax from tbfuncionario'+
                          ' where fone is not null or celular is not null ';
         end;

         sqlC.sql.Clear;
         sqlC.sql.add(str);

         tabela.Close;
         tabela.Open;


         btnnovo.Enabled := grupog.ItemIndex = 0;
         btneditar.Enabled := grupog.ItemIndex = 0;
         btnapagar.Enabled := grupog.ItemIndex = 0;
         elocalizar.SetFocus;

end;

procedure Tfcad.btnpermissaoClick(Sender: TObject);
begin
        abortaacao(tabela,nil,'chave','','','','',0);
        periodo2('permissoes',tabela.fieldbyname('chave').AsString,
                 tabela.fieldbyname('nome').AsString,'','','',255,496,0);
end;

procedure Tfcad.tbterminaisokClick(Sender: TObject);
begin
       if btngravar.Enabled = false then
          msg('#Você não está no modo de edição.',0);

        fdm.OpenDialog.FileName := '';
        fdm.OpenDialog.Execute;
        tabela.edit;
        if fdm.OpenDialog.FileName <> '' then
           tabela['caminho'] :=substitui(ExtractFilePath(fdm.OpenDialog.FileName),'\','/');

end;

procedure Tfcad.tbterminaisClick(Sender: TObject);
var
m1:tmemo;
ini:tinifile;
where,ipv,registro,data,syskey,modo :string;
cx:boolean;
tbproduto,tbdesconto,tbcliente,tbfuncionario,tbusuario,tbpermissao,tbempresa,tbconta:TZQUERY;
begin                    
        Ini := TInifile.Create('c:\caixa.ini');
        cx  := lowercase(Ini.Readstring('Rede', 'databasename', 'caixa')) = 'caixa';
        ini.free;

                              
        abortar(edtfoc);

          ipv := ip;

          if Application.MessageBox('Deseja atualizar? ',
                                    'Confirme', 4 + MB_ICONQUESTION) = idno then abort;

              with fdm.query1 do begin
                   close;
                   sql.Clear;
                   sql.Add('select registro, decode(data,"999")as data, modo,'+
                           ' decode(syskey,"999")as syskey from tbconfig');
                   open;
                   registro := fieldbyname('registro').AsString;
                   data := fieldbyname('data').AsString;
                   syskey := fieldbyname('syskey').AsString;
                   modo := fieldbyname('modo').AsString;
                   close;
                end;

          m1 := tmemo.create(nil);
                  {
          tabela.First;
          while not tabela.Eof do begin
                    if not FileExists(pchar(tabela.FieldByName('caminho').AsString+'caixa.exe')) then begin
                       showmessage(pchar('Este caminho "' +tabela.FieldByName('caminho').AsString +  '" não é válido.'));
                       abort;
                end;

                if cx then begin
                   databasenet:='caixa';
                   fdm.conectnet.Disconnect;
                   ipnet := tabela.fieldbyname('ip').AsString;
                   try
                   fdm.conectnet.Connect;
                   except
                          showmessage(pchar('IP/Nome "' +tabela.FieldByName('ip').AsString +  '" não é válido.'));
                          databasenet:='sigac';
                          abort;
                   end;
                end;

               tabela.Next;
          end;
                  }
          if calccusto then  where := ' and ativoV = "S"  and pdv = "S" ';

          tbproduto:= tzquery.create(application);
          tbproduto.Connection := fdm.conector;
          tbproduto.sql.add( 'select codigo,descricao,vrunit,'+
                            ' vrvenda,estoque,imposto,iniciopromocao,validade,vrpromocao, vratacado, '+
                            ' cficmE,pesagem ,reducaobasecalc,un,promocao ,desconto,prateleira,box,item,aplicacao, '+
                           '  tamanho, cor, custocompraunit, pis, confins, codigooriginal, codigobarras from tbproduto '+
                           ' where (flag <> "D" or flag is null) '+ where);

          tbdesconto:= tzquery.create(application);
          tbdesconto.Connection := fdm.conector;
          tbdesconto.sql.add('select * from tbdesconto');

          tbcliente:= tzquery.create(application);
          tbcliente.Connection := fdm.conector;
          tbcliente.sql.add( 'select * from tbcliente where (flag <> "D" or flag is null)');

          tbfuncionario:= tzquery.create(application);
          tbfuncionario.Connection := fdm.conector;
          tbfuncionario.sql.add( 'select codigo,nome,usuario,tipocomissao,'+
                           'modocalcula,vr1,vr2,vr3,comissao, '+
                           'comissao2, comissao3 from tbfuncionario where (flag <> "D" or flag is null)');


          tbusuario:= tzquery.create(application);
          tbusuario.Connection := fdm.conector;
          tbusuario.sql.add( 'select * from tbusuario');

          tbpermissao:= tzquery.create(application);
          tbpermissao.Connection := fdm.conector;
          tbpermissao.sql.add( 'select * from tbpermissao where '+
                          ' modulo = "Vendas" or '+
                          ' modulo = "Caixa" or '+
                          ' modulo = "Transações Fiscais" or '+
                          ' modulo = "Abrir Gaveta"');

          tbempresa:= tzquery.create(application);
          tbempresa.Connection := fdm.conector;
          tbempresa.sql.add( 'select * from tbempresa '+sqlempresa(0,0,''));

          tbconta:= tzquery.create(application);
          tbconta.Connection := fdm.conector;
          tbconta.sql.add( 'select * from tbconta ');



          tabela.First;
          while not tabela.Eof do begin
                pv.DataSet := tbproduto;
                p.close;
                p.open;
                p.SaveToFile(pchar(tabela.fieldbyname('caminho').AsString + 'tb/tbproduto.cds'));

                pv.DataSet := tbcliente;
                p.close;
                p.open;
                p.SaveToFile(pchar(tabela.fieldbyname('caminho').AsString + 'tb/tbcliente.cds'));

                pv.DataSet := tbfuncionario;
                p.close;
                p.open;
                p.SaveToFile(pchar(tabela.fieldbyname('caminho').AsString + 'tb/tbfuncionario.cds'));

                pv.DataSet := tbusuario;
                p.close;
                p.open;
                p.SaveToFile(pchar(tabela.fieldbyname('caminho').AsString + 'tb/tbusuario.cds'));

                pv.DataSet := tbpermissao;
                p.close;
                p.open;
                p.SaveToFile(pchar(tabela.fieldbyname('caminho').AsString + 'tb/tbpermissao.cds'));

                pv.DataSet := tbempresa;
                p.close;
                p.open;
                p.SaveToFile(pchar(tabela.fieldbyname('caminho').AsString + 'tb/tbempresa.cds'));
                m1.lines.SaveToFile(pchar(tabela.fieldbyname('caminho').AsString + 'tb/true'));

           tabela.Next;
          end;

          tbproduto.destroy;
          tbdesconto.destroy;
          tbcliente.destroy;
          tbfuncionario.destroy;
          tbusuario.destroy;
          tbpermissao.destroy;
          tbempresa.destroy;
          m1.destroy;

          databasenet:='sigac';
          showmessage('Atualizado(s)!!!');
//          fdm.conectnet.Database := 'sigac';

end;

end.

