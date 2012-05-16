unit ucontaconf;

interface



uses Db, Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  dialogs, Buttons, ExtCtrls, Mask, DBCtrls, jpeg, Grids, DBGrids,
  ToolWin, ComCtrls, Messages, variants, ActnList,  DBClient,
  Provider, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfcontaconf = class(TForm)
    ActionList1: TActionList;
    novo: TAction;
    insereir: TAction;
    alterar: TAction;
    hbotao: TAction;
    dhbotao: TAction;
    salvar: TAction;
    btnnovo: TSpeedButton;
    btneditar: TSpeedButton;
    btngravar: TSpeedButton;
    btncancelar: TSpeedButton;
    btnapagar: TSpeedButton;
    elocalizar: TEdit;
    btnatualizar: TSpeedButton;
    tcins: TAction;
    ds: TDataSource;
    DBGrid2: TDBGrid;
    PageControl1: TPageControl;
    tabcdc: TTabSheet;
    tabconsignada: TTabSheet;
    tabcartao: TTabSheet;
    tabboleto: TTabSheet;
    lnome: TLabel;
    Label12: TLabel;
    enome: TDBEdit;
    edia: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DBEdit6: TDBEdit;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label3: TLabel;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    Label6: TLabel;
    DBText1: TDBText;
    filtrar: TAction;
    StaticText1: TStaticText;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit12: TDBEdit;
    Label9: TLabel;
    DBEdit15: TDBEdit;
    Label11: TLabel;
    Label13: TLabel;
    DBEdit21: TDBEdit;
    Label14: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    Label15: TLabel;
    DBText2: TDBText;
    Label10: TLabel;
    DBEdit13: TDBEdit;
    DBText3: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Label22: TLabel;
    DBEdit27: TDBEdit;
    Label24: TLabel;
    DBEdit28: TDBEdit;
    Label23: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label18: TLabel;
    Bevel5: TBevel;
    Label19: TLabel;
    Label21: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    Label25: TLabel;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    Label26: TLabel;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    Label27: TLabel;
    DBEdit38: TDBEdit;
    DBText4: TDBText;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    Label33: TLabel;
    Bevel6: TBevel;
    Bevel9: TBevel;
    Bevel7: TBevel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    Label30: TLabel;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    Label34: TLabel;
    DBEdit46: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    Label35: TLabel;
    Bevel8: TBevel;
    DBGrid1: TDBGrid;
    dsi: TDataSource;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    Tabmensal: TTabSheet;
    Label31: TLabel;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    Label32: TLabel;
    Label36: TLabel;
    DBEdit56: TDBEdit;
    TabSheet1: TTabSheet;
    Label37: TLabel;
    DBEdit57: TDBEdit;
    Label38: TLabel;
    DBText5: TDBText;
    DBEdit58: TDBEdit;
    Bevel10: TBevel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    TabSheet2: TTabSheet;
    Label43: TLabel;
    DBText6: TDBText;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    Label44: TLabel;
    DBEdit71: TDBEdit;
    DBGrid3: TDBGrid;
    dsfator: TDataSource;
    DBGrid4: TDBGrid;
    Label45: TLabel;
    Label46: TLabel;
    TabSheet3: TTabSheet;
    Label47: TLabel;
    DBText7: TDBText;
    DBEdit70: TDBEdit;
    Label48: TLabel;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    tabela: TZQuery;
    ti: TZQuery;
    tbfator: TZQuery;
    DBGrid5: TDBGrid;
    TabSheet4: TTabSheet;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Label49: TLabel;
    DBText8: TDBText;
    Label50: TLabel;
    Bevel13: TBevel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit74: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit86: TDBEdit;
    TabSheet5: TTabSheet;
    Label56: TLabel;
    DBText9: TDBText;
    DBEdit87: TDBEdit;
    DBGrid6: TDBGrid;
    DBEdit88: TDBEdit;
    Label57: TLabel;
    DBCheckBox2: TDBCheckBox;
    TabSheet6: TTabSheet;
    Bevel14: TBevel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    Label58: TLabel;
    DBText10: TDBText;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label65: TLabel;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    DBEdit97: TDBEdit;
    gvital: TGroupBox;
    Label92: TLabel;
    Label93: TLabel;
    DBEdit98: TDBEdit;
    DBEdit100: TDBEdit;
    Bevel17: TBevel;
    Label62: TLabel;
    Label63: TLabel;
    DBEdit99: TDBEdit;
    DBEdit101: TDBEdit;
    DBEdit102: TDBEdit;
    DBEdit103: TDBEdit;
    procedure btnnovoClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure elocalizarChange(Sender: TObject);
    procedure elocalizarKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure novoExecute(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure insereirExecute(Sender: TObject);
    procedure dhbotaoExecute(Sender: TObject);
    procedure hbotaoExecute(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure alterarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edataEnter(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure salvarExecute(Sender: TObject);
    procedure btnatualizarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBGrid1Exit(Sender: TObject);
    procedure elocalizarEnter(Sender: TObject);
    procedure elocalizarExit(Sender: TObject);
    procedure tcinsExecute(Sender: TObject);
    procedure econtadepositoEnter(Sender: TObject);
    procedure econtadepositoExit(Sender: TObject);
    procedure filtrarExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
  nomeant:string;
    { Private declarations }
  public
    modo, gravar, nchave: string;
    { Public declarations }
  end;

var
  fcontaconf: Tfcontaconf;

implementation

uses udm, funcoes, umanu;
{$R *.dfm}

procedure Tfcontaconf.btnnovoClick(Sender: TObject);
begin
  modo := 'M';
  novoExecute(self);
end;

procedure Tfcontaconf.btngravarClick(Sender: TObject);
begin

           focuscontrol(nil);

  if gravar = 'novo' then
  begin
    insereirExecute(self);
  end
  else if gravar = 'alterar' then
  begin
    alterarExecute(self);
  end;

  hbotaoexecute(self);
  desativar(fcontaconf);
  modo := 'N';
end;

procedure Tfcontaconf.btncancelarClick(Sender: TObject);
begin
  tabela.Cancel;

  hbotaoexecute(self);
  desativar(fcontaconf);
  modo := 'N';
end;

procedure Tfcontaconf.btnapagarClick(Sender: TObject);
begin
       abortaacao(nil,tabela,'chave','','','','',0);

        if msg('',1) then   begin

    with fdm.query1 do
    begin
      Close;
             sql.clear;
             sql.add( 'delete from  tbconffin where chave = "' +
        tabela.FieldByName('chave').AsString + '"');
      execsql;
    end;


    tabela.cancel;
    tabela.refresh;
  end;
end;

procedure Tfcontaconf.FormShow(Sender: TObject);
begin

            if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\impanelP.jpg')) then
                                imageform('img',albottom, self,
                                (PChar(ExtractFilePath(ParamStr(0)) +'imagem\impanelP.jpg')),nil);

    fdm.tbconfig.open;
    tabela.Open;
    ti.Open;
    tbfator.open;
    desativar(fcontaconf);

    tabcdc.Show;
    filtrarExecute(self);

end;

procedure Tfcontaconf.elocalizarChange(Sender: TObject);
begin
//          tabela.locate([elocalizar.Text]);
end;

procedure Tfcontaconf.elocalizarKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if key = 40 then tabela.Next;
  if key = 38 then tabela.prior;
end;

procedure Tfcontaconf.novoExecute(Sender: TObject);
begin

  if btngravar.Enabled = True then abort;

  gravar := 'novo';

  ativar(fcontaconf);

  if pagecontrol1.ActivePageIndex = 0 then
     enome.SetFocus
  else if pagecontrol1.ActivePageIndex = 1 then
     DBEdit12.SetFocus
  else if pagecontrol1.ActivePageIndex = 2 then
     DBEdit13.SetFocus
  else if pagecontrol1.ActivePageIndex = 3 then
     DBEdit38.SetFocus
  else if pagecontrol1.ActivePageIndex = 4 then
     DBEdit54.SetFocus;


  with fdm.query2 do begin
       close;
                sql.Clear;
                sql.add( 'select max(codigo) as codigo from tbconffin');
       open;
       tabela.Insert;
       tabela['codigo'] := fieldbyname('codigo').AsInteger+1;       
       tabela['tp'] := pagecontrol1.ActivePageIndex;
       close;
  end;


  fdm.query1.Close;

  dhbotaoexecute(self);
end;

procedure Tfcontaconf.btneditarClick(Sender: TObject);
begin


        abortaacao(nil,tabela,'chave','','','','',0);
  gravar := 'alterar';

  nomeant := tabela.fieldbyname('descricao').AsString;

  ativar(fcontaconf);

  if pagecontrol1.ActivePageIndex = 0 then
     enome.SetFocus
  else if pagecontrol1.ActivePageIndex = 1 then
     DBEdit12.SetFocus
  else if pagecontrol1.ActivePageIndex = 2 then
     DBEdit13.SetFocus
  else if pagecontrol1.ActivePageIndex = 3 then
     DBEdit38.SetFocus;


  dhbotaoexecute(self);
end;

procedure Tfcontaconf.FormCloseQuery(Sender: TObject; var CanClose: boolean);
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

procedure Tfcontaconf.insereirExecute(Sender: TObject);
var
  marcador: string;
begin
  marcador := tabela.fieldbyname('descricao').AsString;

  with fdm.query1 do
  begin
    Close;
             sql.clear;
             sql.add( 'select descricao from tbconffin where descricao = ' +
                   quotedstr(tabela.fieldbyname('descricao').AsString));
    Open;
  end;


  if fdm.query1['descricao'] <> null then
  begin
    Application.MessageBox('Item já Cadastrado!', 'Erro', 0 + MB_ICONERROR);
    fdm.query1.Close;
    abort;
  end;


  fdm.query1.Close;

  Grava(tabela, nil,'tbconffin');

  tabela.Cancel;
  tabela.Refresh;
  tabela.Locate('descricao', marcador, []);
end;

procedure Tfcontaconf.dhbotaoExecute(Sender: TObject);
begin
  btnnovo.Enabled := False;
  btneditar.Enabled := False;
  btnapagar.Enabled := False;
  btnatualizar.Enabled := False;
  btngravar.Enabled := True;
  btncancelar.Enabled := True;
end;

procedure Tfcontaconf.hbotaoExecute(Sender: TObject);
begin
  btnnovo.Enabled := True;
  btneditar.Enabled := True;
  btnapagar.Enabled := True;
  btnatualizar.Enabled := True;
  btngravar.Enabled := False;
  btncancelar.Enabled := False;
end;

procedure Tfcontaconf.DBGrid1Enter(Sender: TObject);
begin
  keypreview := False;
end;

procedure Tfcontaconf.alterarExecute(Sender: TObject);
var
loc:string;
begin

  if (tabela['descricao'] = '') or (tabela['descricao'] = null) then
  begin
    Application.MessageBox('Preencha os dados.', 'Erro', 0 + MB_ICONERROR);
    abort;
  end;

  loc:=tabela.fieldbyname('chave').AsString;

  altera(tabela, nil,'tbconffin');

  if pagecontrol1.ActivePageIndex = 2 then begin
     selecione('update tbfinanceiro set tipoconta = ' + quotedstr(tabela.fieldbyname('descricao').AsString)+
               ' where tipoconta = '+ quotedstr(nomeant));

     selecione('update tbfinanceirop set tipoconta = ' + quotedstr(tabela.fieldbyname('descricao').AsString)+
               ' where tipoconta = '+ quotedstr(nomeant));

  end;

  tabela.Cancel;
  tabela.Refresh;

  if tabela.RecordCount >0 then
     tabela.Locate('chave',loc,[]);

end;

procedure Tfcontaconf.FormClose(Sender: TObject; var Action: TCloseAction);
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
             msg('Não foi possível conectar ao banco de dados do site, verifique se a internet está OK.'+
                 ' Depois de resolver, entre nesta tela, ao sair irá atualizar.',0);
             ativanet('','','','');
        end;

        selecione('select codigo as codigogrupo, vrsite,vrura,descricao from tbconffin where tp = "10"');

        with fdm.snet do begin
             sql.Clear;
             sql.Add('delete from tbconfig');
             execsql;

             while not sqlpub.Eof do begin
                sql.Clear;
                sql.Add('insert into tbconfig(codigogrupo,descricao, vrsite, vrura) values('+
                     realdblstr(sqlpub.fieldbyname('codigogrupo').AsFloat)+
                     ','+quotedstr(sqlpub.fieldbyname('descricao').AsString)+
                     ','+realdblstr(sqlpub.fieldbyname('vrsite').AsFloat)+
                     ','+realdblstr(sqlpub.fieldbyname('vrura').AsFloat)+')');
                execsql;
                sqlpub.Next;
             end;
        end;

            


         sqlpub := nil;

         ativanet('','','','');
         fdm.tbconfig.close;



  tbfator.First;
  while not tbfator.Eof do begin

       if tbfator['chave']= null then
          grava(nil,tbfator,'tbfator')
       else
          altera(nil,tbfator,'tbfator');

       tbfator.Next;
  end;

  tbfator.close;

  ti.First;
  while not ti.Eof do begin

       if ti['chave']= null then
          grava(ti,nil,'tbconffini')
       else
          altera(ti,nil,'tbconffini');

       ti.Next;
  end;


  ti.Edit;
  ti.post;

  ti.close;
  tabela.Close;

  release;
   fcontaconf := nil;
end;

procedure Tfcontaconf.edataEnter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfcontaconf.enomeEnter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfcontaconf.enomeExit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clwhite;
end;

procedure Tfcontaconf.salvarExecute(Sender: TObject);
begin
  btngravarClick(self);
end;

procedure Tfcontaconf.btnatualizarClick(Sender: TObject);
var
  bookmark: tbookmarkstr;
begin
  bookmark := tabela.Bookmark;
  tabela.Refresh;
  tabela.Bookmark := Bookmark;
end;

procedure Tfcontaconf.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin

  if (key = 13) or (key = vk_down) then
    Perform(wm_nextdlgctl, 0,0);
  if (key = 27) or (key = vk_up) then
    Perform(wm_nextdlgctl, 1,0);
end;

procedure Tfcontaconf.DBGrid1Exit(Sender: TObject);
begin
  keypreview := True;
end;

procedure Tfcontaconf.elocalizarEnter(Sender: TObject);
begin
        with sender as tedit do
             color := clinfobk ;

end;

procedure Tfcontaconf.elocalizarExit(Sender: TObject);
begin
        with sender as tedit do
             color := clwhite;

end;

procedure Tfcontaconf.tcinsExecute(Sender: TObject);
begin
      if enome.Enabled = true then
         btngravarclick(self)
      else
         btnnovoclick(self);

end;

procedure Tfcontaconf.econtadepositoEnter(Sender: TObject);
begin
        keypreview := false;

end;

procedure Tfcontaconf.econtadepositoExit(Sender: TObject);
begin
        keypreview := true;

end;

procedure Tfcontaconf.filtrarExecute(Sender: TObject);
begin

        tabela.Filtered := false;
        tabela.Filter :=   'tp = '+quotedstr(inttostr(pagecontrol1.ActivePageIndex));
        tabela.Filtered := true;

end;

procedure Tfcontaconf.PageControl1Change(Sender: TObject);
begin

    filtrarExecute(self);
end;

end.



