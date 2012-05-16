unit umail;

interface



uses shellapi, Db, Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  dialogs, Buttons, ExtCtrls, Mask, DBCtrls, jpeg, Grids, DBGrids,
  ToolWin, ComCtrls, Messages, variants, ActnList, ExtDlgs, Menus, 
  DBClient, Provider, RLReport, RLFilters, RLHTMLFilter, HTTPApp,
  HTTPProd, DSProd, DBWeb, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfmail = class(TForm)
    ActionList1: TActionList;
    novo: TAction;
    ldestinatario: TLabel;
    Bevel1: TBevel;
    insereir: TAction;
    alterar: TAction;
    hbotao: TAction;
    dhbotao: TAction;
    foco: TAction;
    formatar: TAction;
    btnPrimeiro: TSpeedButton;
    btnVoltar: TSpeedButton;
    btnAvancar: TSpeedButton;
    btnUltimo: TSpeedButton;
    elocalizar: TEdit;
    btnnovo: TSpeedButton;
    btneditar: TSpeedButton;
    btngravar: TSpeedButton;
    btncancelar: TSpeedButton;
    btnapagar: TSpeedButton;
    btnimprimir: TSpeedButton;
    btnatualizar: TSpeedButton;
    btnajuda: TSpeedButton;
    primeiroR: TAction;
    VoltarR: TAction;
    AvancarR: TAction;
    UltimoR: TAction;
    tcins: TAction;
    preenchercliente: TAction;
    imprimecarne: TAction;
    DBGrid1: TDBGrid;
    botoesform: TAction;
    Label5: TLabel;
    Label6: TLabel;
    pemail: TDataSetProvider;
    dsemail: TDataSource;
    qEMAIL: TRLReport;
    RLBand1: TRLBand;
    Label3: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Bevel4: TBevel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    eimage: TDBEdit;
    Label14: TLabel;
    tbemail: TClientDataSet;
    er3: TRLLabel;
    er2: TRLLabel;
    er1: TRLLabel;
    ltitulo1: TRLLabel;
    rsn: TRadioGroup;
    list: TListBox;
    open: TOpenDialog;
    semail: TZQuery;
    ereferencia: TEdit;
    i1: TRLImage;
    RLBand2: TRLBand;
    tbi: TClientDataSet;
    dsi: TDataSource;
    RLDBMemo1: TRLDBMemo;
    tbitexto: TMemoField;
    er4: TRLLabel;
    OpenDialog: TOpenDialog;
    tb: TClientDataSet;
    provedor: TDataSetProvider;
    DBMemo1: TDBMemo;
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure elocalizarChange(Sender: TObject);
    procedure elocalizarKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure novoExecute(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure insereirExecute(Sender: TObject);
    procedure dhbotaoExecute(Sender: TObject);
    procedure hbotaoExecute(Sender: TObject);
    procedure alterarExecute(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure focoExecute(Sender: TObject);
    procedure btnatualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edataEnter(Sender: TObject);
    procedure primeiroRExecute(Sender: TObject);
    procedure VoltarRExecute(Sender: TObject);
    procedure AvancarRExecute(Sender: TObject);
    procedure UltimoRExecute(Sender: TObject);
    procedure vimageClick(Sender: TObject);
    procedure ecnpjEnter(Sender: TObject);
    procedure elocalizarKeyPress(Sender: TObject; var Key: char);
    procedure FormKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure tcinsExecute(Sender: TObject);
    procedure econdpgtoKeyPress(Sender: TObject; var Key: char);
    procedure preencherclienteExecute(Sender: TObject);
    procedure botoesformExecute(Sender: TObject);
    procedure RLAngleLabel1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLAngleLabel2BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure RLDBText1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure qEMAILBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Label11Click(Sender: TObject);
    procedure ereferenciaEnter(Sender: TObject);
    procedure ereferenciaExit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure RLDBText3BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure Label14Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
  private
  imp:boolean;
    { Private declarations }
  public

    tab,referencia,codigo,nome,email,gravar, nchave, modo: string;
    grupo:boolean;
    { Public declarations }
  end;

var
  fmail: Tfmail;

implementation

uses udm,  funcoes, umanu,mapimail;

{$R *.dfm}

procedure Tfmail.btnPrimeiroClick(Sender: TObject);
begin
  abortar(DBEdit1);
  tbemail.First;
end;

procedure Tfmail.btnVoltarClick(Sender: TObject);
begin
  abortar(DBEdit1);
  tbemail.prior;
end;

procedure Tfmail.btnAvancarClick(Sender: TObject);
begin
  abortar(DBEdit1);
  tbemail.Next;
end;

procedure Tfmail.btnUltimoClick(Sender: TObject);
begin
  abortar(DBEdit1);
  tbemail.last;
end;

procedure Tfmail.btnnovoClick(Sender: TObject);
begin

           novoExecute(self);
           modo := 'M';

end;

procedure Tfmail.btngravarClick(Sender: TObject);
begin
  if DBEdit1.Enabled then
     DBEdit1.SetFocus;


  if gravar = 'novo' then 
  begin
    insereirExecute(self);
  end 
  else if gravar = 'alterar' then 
  begin
    alterarExecute(self);
  end;


  hbotaoexecute(self);
  desativar(fmail);
  modo := 'N';
end;

procedure Tfmail.btncancelarClick(Sender: TObject);
begin
  tbemail.Cancel;

  hbotaoexecute(self);
  desativar(fmail);
  modo := 'N';
end;

procedure Tfmail.btnapagarClick(Sender: TObject);
begin

  if tbemail['chave'] = null then
  begin
    Application.MessageBox('Você não tem registro selecionado para deletar!',
      'Erro', 0 + MB_ICONerror);
    abort;
  end;

        if msg('',1) then   begin

    with fdm.query1 do
    begin
      Close;
      SQL.clear;
      sql.add(  'delete from  tbemail where chave = "' +
                tbemail.FieldByName('chave').AsString + '"');
      execsql;
    end;


    tbemail.cancel;
    tbemail.refresh;
    tbemail.Last;
  end;
end;

procedure Tfmail.FormShow(Sender: TObject);
begin


        selecione('alter table tbemail change msg1 msg1 text');

  if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\cadastrog.jpg')) then
     imageform('imagecliente',alclient,fmail, (PChar(ExtractFilePath(ParamStr(0)) +'imagem\cadastrog.jpg')),nil);


     botoesformexecute(self);


  if tbemail.Active = False then
  begin
    tbemail.DisableControls;
    tbemail.Open;
    tbemail.Last;
    desativar(fmail);
    tbemail.EnableControls;
    tbemail.IndexFieldNames := 'assunto';
  end;


        if tab = 'l' then begin

           open.FileName :='';
           open.Execute;

           if  open.FileName  <> '' then
               list.Items.LoadFromFile(open.FileName)
           else begin
               Application.MessageBox('Operação não concluida!',
                                      'Erro', 0 + MB_ICONerror);
               tab:='';
           end;

        end;


          if tab='l' then
             ldestinatario.Caption := 'Enviar de uma listagem'
          else if tab='e' then
             ldestinatario.Caption := 'Enviar E-Mail Padrão'
          else if grupo = false then
             ldestinatario.Caption := codigo + ' '+nome+' - '+ email
          else ldestinatario.Caption := 'Envio para grupo';


end;

procedure Tfmail.elocalizarChange(Sender: TObject);
begin

  if tbemail.IndexFieldNames = 'vencimento' then begin
     if length(elocalizar.Text) = 10 then
        tbemail.FindNearest([elocalizar.Text]);
  end else tbemail.FindNearest([elocalizar.Text]);


end;

procedure Tfmail.elocalizarKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if key = 40 then tbemail.Next;
  if key = 38 then tbemail.prior;
end;

procedure Tfmail.novoExecute(Sender: TObject);
begin
  if btngravar.Enabled = True then abort;

  gravar := 'novo';
  ativar(fmail);



    if (fmail.Active = true) and (DBEdit1.Enabled) then
       DBEdit1.SetFocus;

  tbemail.Insert;




  dhbotaoexecute(self);
end;

procedure Tfmail.btneditarClick(Sender: TObject);
begin
  if tbemail.FieldByName('chave').Text = '' then
  begin
    Application.MessageBox('Desculpe, mas não há dados para editar, clique no botão NOVO.',
      'Erro', 0 + MB_ICONerror);
    abort;
  end;

  gravar := 'alterar';

  ativar(fmail);
  if DBEdit1.Enabled then
     DBEdit1.SetFocus;
  ereferencia.Enabled := true;
  dhbotaoexecute(self);
end;

procedure Tfmail.FormCloseQuery(Sender: TObject; var CanClose: boolean);
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

procedure Tfmail.insereirExecute(Sender: TObject);
var
  localiza: string;
begin

  if (DBEdit1.Text = '') or (DBEdit2.Text = '') then
  begin
    Application.MessageBox('Preencha os campos!',
      'Erro', 0 + MB_ICONerror);
    abort;
  end;

  if DBEdit1.Enabled then
    DBEdit1.SetFocus;

  localiza := tbemail.fieldbyname('chave').asstring;

  Grava(tbemail, nil,'tbemail');


  tbemail.Cancel;
  tbemail.Refresh;

end;

procedure Tfmail.dhbotaoExecute(Sender: TObject);
begin
  btnnovo.Enabled := False;
  btneditar.Enabled := False;
  btnapagar.Enabled := False;
  btnimprimir.Enabled := False;
  btnatualizar.Enabled := False;
  btngravar.Enabled := True;
  btncancelar.Enabled := True;
end;

procedure Tfmail.hbotaoExecute(Sender: TObject);
begin
  btnnovo.Enabled := True;
  btneditar.Enabled := True;
  btnapagar.Enabled := True;
  btnimprimir.Enabled := True;
  btnatualizar.Enabled := True;
  btngravar.Enabled := False;
  btncancelar.Enabled := False;
end;

procedure Tfmail.alterarExecute(Sender: TObject);
var
loc:string;
begin
  if (DBEdit1.Text = '') or (DBEdit2.Text = '') then
  begin
    Application.MessageBox('Preencha os campos!',
      'Erro', 0 + MB_ICONerror);
    abort;
  end;

  if DBEdit1.Enabled then
    DBEdit1.SetFocus;

  loc := tbemail.fieldbyname('chave').AsString;

  Altera(tbemail, nil,'tbemail');


  tbemail.Cancel;
  tbemail.Refresh;
  tbemail.Locate('chave',loc,[]);
end;

procedure Tfmail.btnimprimirClick(Sender: TObject);
begin
        imp:=true;
        Label6Click(self);
        imp := false;
        qEMAIL.PreviewModal;
        tbi.close;              
end;

procedure Tfmail.focoExecute(Sender: TObject);
begin
  if elocalizar.Focused = True then begin
   if DBEdit1.Enabled then
      DBEdit1.SetFocus
  end else
    elocalizar.SetFocus;
end;

procedure Tfmail.btnatualizarClick(Sender: TObject);
var
  bookmark: tbookmarkstr;
begin
  bookmark := tbemail.Bookmark;
  tbemail.Refresh;
  tbemail.Bookmark := Bookmark;
end;

procedure Tfmail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tbemail.Close;
  Release;  
  fmail := nil;
end;

procedure Tfmail.edataEnter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfmail.primeiroRExecute(Sender: TObject);
begin
  btnPrimeiroclick(self);
end;

procedure Tfmail.VoltarRExecute(Sender: TObject);
begin
  btnvoltarclick(self);
end;

procedure Tfmail.AvancarRExecute(Sender: TObject);
begin
  btnavancarclick(self);
end;

procedure Tfmail.UltimoRExecute(Sender: TObject);
begin
  btnultimoclick(self);
end;

procedure Tfmail.vimageClick(Sender: TObject);
begin
  if tbemail['codigo'] = null then
  begin
    Application.MessageBox('Deverá gravar, antes de inserir a foto.!',
      'Erro', 0 + MB_ICONerror);
    abort;
  end;


  if btngravar.Enabled = False then
    btneditarclick(self);

end;

procedure Tfmail.ecnpjEnter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfmail.elocalizarKeyPress(Sender: TObject;
  var Key: char);
begin
  if tbemail.IndexFieldNames = 'codigo' then
    if not (key in ['0'..'9', #8]) then abort;
end;

procedure Tfmail.FormKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if (key = 13) or (key = vk_down) then
    Perform(wm_nextdlgctl, 0,0);
  if (key = 27) or (key = vk_up) then
    Perform(wm_nextdlgctl, 1,0);
end;

procedure Tfmail.DBGrid1Exit(Sender: TObject);
begin
  keypreview := True;
end;

procedure Tfmail.DBGrid1Enter(Sender: TObject);
begin
  keypreview := False;
end;

procedure Tfmail.tcinsExecute(Sender: TObject);
begin
  if DBEdit1.Enabled = True then
    btngravarclick(self)
  else
    btnnovoclick(self);
end;

procedure Tfmail.econdpgtoKeyPress(Sender: TObject;
  var Key: char);
begin
  abort;
end;



procedure Tfmail.preencherclienteExecute(Sender: TObject);
begin

  tbemail.edit;
  tbemail['nome'] := fdm.query1['nome'];
  tbemail['endereco'] := 'ENDEREÇO: '+ fdm.query1.fieldbyname('endereco').asstring + ' '+
                          fdm.query1.fieldbyname('bairro').asstring  + ' - '+
                          fdm.query1.fieldbyname('municipio').asstring  + '  Cep: '+
                          fdm.query1.fieldbyname('cep').asstring  + '  UF: '+
                          fdm.query1.fieldbyname('uf').asstring;
  tbemail['cnpj'] := fdm.query1['cnpj'];
  fdm.query1.Close;


end;

procedure Tfmail.botoesformExecute(Sender: TObject);
begin
{  if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\btnnovo.bmp') then
      btnnovo.Glyph.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btnnovo.bmp');

  if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\btneditar.bmp') then
      btneditar.Glyph.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btneditar.bmp');

  if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\btngravar.bmp') then
      btngravar.Glyph.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btngravar.bmp');

  if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\btncancelar.bmp') then
      btncancelar.Glyph.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btncancelar.bmp');

  if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\btnapagar.bmp') then
      btnapagar.Glyph.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btnapagar.bmp');

  if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\btnatualizar.bmp') then
      btnatualizar.Glyph.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btnatualizar.bmp');

  if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\btnimprimir.bmp') then
      btnimprimir.Glyph.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btnimprimir.bmp');

   if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\btnprimeiro.bmp') then
      btnprimeiro.Glyph.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btnprimeiro.bmp');


   if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\btnvoltar.bmp') then
      btnvoltar.Glyph.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btnvoltar.bmp');

   if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\btnavancar.bmp') then
      btnavancar.Glyph.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btnavancar.bmp');

   if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\btnultimo.bmp') then
      btnultimo.Glyph.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btnultimo.bmp');


   if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\btnajuda.bmp') then
      btnajuda.Glyph.LoadFromFile(ExtractFilePath(ParamStr(0)) + 'imagem\btnajuda.bmp');
 }
end;

procedure Tfmail.RLAngleLabel1BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
        TEXT := formatfloat('000000',tbemail.fieldbyname('numero').Asfloat) ;
end;

procedure Tfmail.RLAngleLabel2BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
        TEXT :=  format('%n',[tbemail.fieldbyname('valor').Asfloat]);
end;

procedure Tfmail.DBEdit1Enter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;

end;

procedure Tfmail.DBEdit1Exit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clwhite;

end;

procedure Tfmail.RLDBText1BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
        TEXT := tbemail.fieldbyname('cabecalho').AsString +' '+ nome;


end;

procedure Tfmail.qEMAILBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

                    fdm.tbempresa.Open;
                   ltitulo1.Caption := fdm.tbempresa.fieldbyname('fantasia').AsString;


                   eR1.Caption := fdm.tbempresa.fieldbyname('Endereco').AsString + ' - '+
                                  fdm.tbempresa.fieldbyname('bairro').AsString + ' - '+
                                  fdm.tbempresa.fieldbyname('municipio').AsString;

                 eR2.Caption := 'UF: ' + fdm.tbempresa.fieldbyname('uf').AsString + '  CEP: '+
                                        fdm.tbempresa.fieldbyname('cep').AsString + '  Fone/Fax: (' +
                                        fdm.tbempresa.fieldbyname('ddd').AsString +') '+
                                        fdm.tbempresa.fieldbyname('fone1').AsString + '   -   '+
                                        fdm.tbempresa.fieldbyname('fax').AsString;

                 eR3.Caption := 'CNPJ: ' + fdm.tbempresa.fieldbyname('cnpj').AsString + '  IE: '+
                                        fdm.tbempresa.fieldbyname('ie').AsString;
                 eR4.Caption :=         'Web: ' + fdm.tbempresa.fieldbyname('email').AsString + '  '+
                                        fdm.tbempresa.fieldbyname('site').AsString;

                  i1.Picture := fmenu.imagelogo.Picture;

                  fdm.tbempresa.Close;

end;

procedure Tfmail.Label11Click(Sender: TObject);
begin
      ShellExecute(0, 'open', PChar('mailto: ?subject=' +
                     '&body= ' ), nil, '', Sw_Show);

end;

procedure Tfmail.ereferenciaEnter(Sender: TObject);
begin
  with  Sender as tedit do
    color := clinfobk;

end;

procedure Tfmail.ereferenciaExit(Sender: TObject);
begin
  with  Sender as tedit do
    color := clwhite;
end;

procedure Tfmail.DBGrid1CellClick(Column: TColumn);
begin
     if ereferencia.Enabled then
        ereferencia.SetFocus;
        if grupo then
           ereferencia.Text := tbemail.fieldbyname('assunto').AsString
        else
           ereferencia.Text := tbemail.fieldbyname('assunto').AsString + ' - '+ referencia;
end;

procedure Tfmail.RLDBText3BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
        text := 'Ref.: '+ ereferencia.Text; 
end;

procedure Tfmail.Label14Click(Sender: TObject);
begin
        opendialog.FileName :='';
        opendialog.Execute;
        if opendialog.FileName <>'' then begin
           tbemail.Edit;
           tbemail['propaganda2'] := extractfilename(opendialog.FileName);

           if btneditar.Enabled = false then
              btneditarClick(SELF);

           if not DirectoryExists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\email\')) then
                  ForceDirectories(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\email\'));

           CopyFile(pchar(opendialog.FileName),
                    pchar(ExtractFilePath(ParamStr(0)) +'imagem/email/'+ eimage.Text) ,false);
           btngravarclick(self);

        end;
end;

procedure Tfmail.Label6Click(Sender: TObject);
var
 imagem,chave,loc,numero:string;
 msgbody:TStrings;
 tf:boolean;
i,j:integer;

        procedure followup;
        begin
             // follow up cliente

          with fdm.query2 do begin
             close;
                sql.Clear;
                sql.add( 'insert into tbfollowup'+tab+' (data,hora,assunto,historico,link) '+
                            'values(now()'+
                            ','+quotedstr(timetostr(now))+
                            ','+ quotedstr('EMAIL Nº'+ numero+' '+tbemail.FieldByName('assunto').AsString)+
                            ','+quotedstr(msgbody.Text)+
                            ','+ quotedstr(chave) +')');
            //showmessage(commandtext);
            //execsql;
         end;
       end;

       procedure enviaemail;
               var
        vital:string;

       begin

              msgbody.Clear;
              msgbody.Add('');

              if (tab<>'l') and (tab<>'e') then begin

                 if responsavel = 'VITALCRED' then
                    vital := 'Usuário = ' +tb.fieldbyname('transportadora').AsString +
                             '      Senha = ' +tb.fieldbyname('filial').AsString
                 else
                    msgbody.Add('E-Mail nº '+ numero );

                 if grupo then begin
                    msgbody.Add('À (cod/nome) '+tb.fieldbyname('codigo').AsString +
                                ' - '+tb.fieldbyname('nome').AsString);

                if responsavel = 'VITALCRED' then  begin
                    msgbody.Add(vital);
                    msgbody.Add(' ');
                end;

                    email := tb.fieldbyname('email').AsString;
                    nome :=  tb.fieldbyname('nome').AsString;
                 end else
                    msgbody.Add('À (cod/nome) '+tb.fieldbyname('codigo').AsString + '- '+ nome+vital+',');
              end;

              msgbody.Add('Referente a(o) '+EREFERENCIA.Text);

              msgbody.Add( StringOfChar('*',50));

              if tbemail['msg1'] <> null then
                 msgbody.Add(tbemail.FieldByName('msg1').asString);
              {if tbemail['msg2'] <> null then
                 msgbody.Add(tbemail.FieldByName('msg2').asString);
              if tbemail['msg3'] <> null then
                 msgbody.Add(tbemail.FieldByName('msg3').asString);
              if tbemail['msg4'] <> null then
                 msgbody.Add(tbemail.FieldByName('msg4').asString);
              if tbemail['msg5'] <> null then
                 msgbody.Add(tbemail.FieldByName('msg5').asString);
               }
              msgbody.Add( StringOfChar('*',50));

              msgbody.Add('Setor: '+tbemail.FieldByName('setor').asString);
              msgbody.Add('Email: '+tbemail.FieldByName('email').asString);
              msgbody.Add('Fone: '+tbemail.FieldByName('fone').asString);

              msgbody.Add( StringOfChar('*',50));

              if tbemail['propaganda1'] <> null then
                 msgbody.Add(tbemail.FieldByName('propaganda1').asString);

              msgbody.Add( StringOfChar('*',50));

              if fileexists (pchar(ExtractFilePath(ParamStr(0))+'\imagem\email\'+eimage.Text)) then
                 imagem:= ExtractFilePath(ParamStr(0))+'\imagem\email\'+eimage.Text
              else imagem :='';

              //envia para outlook

              if imp = false then
                 sendMail(nome,
                          email,
                          nome,
                          email,
                          tbemail.FieldByName('assunto').AsString,
                          msgbody.Text,
                          imagem,tf)
                 else begin
                      tbi.Insert;
                      tbi['texto'] := msgbody.Text;
                      tbi.post;
                 end;
              end;

begin

              if imp then begin
                 tbi.Close;
                 tbi.CreateDataSet;
                 tbi.Open;
              end;


       // enviar de uma lista
       if tab= 'l' then begin
          tf := rsn.ItemIndex = 0;
          list.top := 37;
          update;
          list.ItemIndex :=0;
          i:=0;
          j := list.Items.Count;
          msgbody:= TStringList.Create;
          msgbody.Add( StringOfChar('*',50));


        while i<j do begin

              email := list.Items[list.ItemIndex];
              enviaemail;
              list.ItemIndex := list.ItemIndex + 1;
              i:=i+1;
        end;
          list.top := -305;
          Application.MessageBox(pchar(inttostr(j)+' E-Mails enviados ao Outlook!'),
                                 'E-Mail', 0 + MB_ICONwarning);


       // enviar de uma lista
       end else if tab= 'e' then begin
          rsn.ItemIndex :=0;
          tf:=true;
          msgbody:= TStringList.Create;
          msgbody.Add( StringOfChar('*',50));
          email := '@';
          enviaemail;


       end else begin


       if (tbemail['email'] = null) or (email  = '') or (ereferencia.Text='') then begin
          Application.MessageBox('O E-Mail do destinatário, o seu E-Mail e a referência são requeridos!',
                                 'Erro', 0 + MB_ICONerror);
          abort;
       end;

         fdm.tbempresa.Open;

        tbemail.Filter := 'assunto='+quotedstr(tbemail.fieldbyname('assunto').asstring);
        tbemail.Filtered := true;

      tf := rsn.ItemIndex = 0;

      msgbody:= TStringList.Create;
      msgbody.Add( StringOfChar('*',50));


        with fdm.query1 do begin
             close;
              SQL.clear;
              sql.add(  'select max(chave)as numero from tbnmail');
             open;
             numero := inttostr(fieldbyname('numero').asinteger + 1);

             // grava novo número
             close;
             SQL.clear;
             sql.add(  'insert into tbnmail(chave) values(0)');
             execsql;
        end;


      if grupo then begin
         tb.First;
         tb.EnableControls;
         while not tb.Eof do begin
            if tb['email'] <> null then
               enviaemail;
            tb.Next;
         end;
         tb.EnableControls;
      end else enviaemail;





      // followup
      msgbody.Clear;
      msgbody.Add('E-Mail nº '+ numero );
      msgbody.Add('Referente a(o) '+EREFERENCIA.Text);

      msgbody.Add( StringOfChar('*',50));

      if tbemail['msg1'] <> null then
         msgbody.Add(tbemail.FieldByName('msg1').asString);
      if tbemail['msg2'] <> null then
         msgbody.Add(tbemail.FieldByName('msg2').asString);
      if tbemail['msg3'] <> null then
         msgbody.Add(tbemail.FieldByName('msg3').asString);
      if tbemail['msg4'] <> null then
         msgbody.Add(tbemail.FieldByName('msg4').asString);
      if tbemail['msg5'] <> null then
         msgbody.Add(tbemail.FieldByName('msg5').asString);

      msgbody.Add( StringOfChar('*',50));

      msgbody.Add('Setor: '+tbemail.FieldByName('setor').asString);
      msgbody.Add('Email: '+tbemail.FieldByName('email').asString);
      msgbody.Add('Fone: '+tbemail.FieldByName('fone').asString);


    with fdm.query1 do begin
             //chave para linkar cliente

          if grupo = false then begin
             close;
             SQL.clear;
             sql.add( 'select chave from tbcliente where codigo = '+ quotedstr(codigo));
             open;
             chave := fieldbyname('chave').asstring;
             followup;
          end else begin

          tb.First;
          tb.DisableControls;
          while not tb.Eof do begin
                chave := tb.fieldbyname('chave').asstring;
                if tb['email'] <> null then
                   followup;
                tb.Next;
          end;
          tb.EnableControls;
          end;
       end;


     msgbody.Free;

        tbemail.Filtered := false;
        tbemail.locate('assunto',loc,[]);
        end;

end;

procedure Tfmail.DBMemo1Enter(Sender: TObject);
begin
        keypreview := false;
end;

procedure Tfmail.DBMemo1Exit(Sender: TObject);
begin
        keypreview := true;
end;

end.




