                                                                                             unit uagendapessoal;

interface



uses rltypes, Db, Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
   dialogs, Buttons, ExtCtrls, Mask, DBCtrls, jpeg, Grids, DBGrids,
  ToolWin, ComCtrls, Messages, variants,  ActnList, DBClient,
  Provider;

type
  Tfagendapessoal = class(TForm)
    ActionList1: TActionList;
    tabela: TClientDataSet;
    ds: TDataSource;
    tcins: TAction;
    tabelachave: TIntegerField;
    tabeladata: TDateField;
    tabelahora: TTimeField;
    tabelanome: TStringField;
    tabelafoneemail: TStringField;
    tabelaemail: TStringField;
    tabelausuario: TIntegerField;
    tabelatipo: TStringField;
    tabelafim: TDateField;
    tabelames: TStringField;
    tabelatodomes: TIntegerField;
    tabelaprogramado: TIntegerField;
    tabeladia: TStringField;
    Label14: TLabel;
    edata: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label15: TLabel;
    ehora: TDBEdit;
    Label2: TLabel;
    enome: TDBEdit;
    Label1: TLabel;
    edescricao: TDBEdit;
    Label4: TLabel;
    efone: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    rgrupo: TDBRadioGroup;
    rgrupo1: TDBRadioGroup;
    LDIA: TLabel;
    emes: TDBComboBox;
    lmes: TLabel;
    etodomes: TDBComboBox;
    Label5: TLabel;
    eendereco: TDBEdit;
    esemana: TDBComboBox;
    tabelatipomes: TStringField;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    tabelaendereco: TStringField;
    tabeladescricao: TStringField;
    tabelaobs: TStringField;
    btngravar: TSpeedButton;
    SpeedButton2: TSpeedButton;
    tabelastatus: TStringField;
    estatus: TDBComboBox;
    Label8: TLabel;
    statusag: TAction;
    procedure btngravarClick(Sender: TObject);
    procedure edataEnter(Sender: TObject);
    procedure ecfopEnter(Sender: TObject);
    procedure ecfopExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rgrupoChange(Sender: TObject);
    procedure rgrupo1Change(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tcinsExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure etodomesChange(Sender: TObject);
    procedure emesChange(Sender: TObject);
    procedure eenderecoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label8Click(Sender: TObject);
    procedure statusagExecute(Sender: TObject);
    procedure edataExit(Sender: TObject);
    procedure enomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
  dt,ano:string;
  gravar:boolean;
    { Public declarations }
  end;

var
  fagendapessoal: Tfagendapessoal;

implementation

uses udm, funcoes, uagenda;

{$R *.dfm}

procedure Tfagendapessoal.btngravarClick(Sender: TObject);
var
st:string;
begin
        focuscontrol(nil);

  if (enome.Text = '') then msg('#Preencha os campos corretamente!',0);
  if (estatus.Text = '') then msg('#Preencha o "Status"!',0);

  //todos
     if   (strtodate(edata.Text) > strtodate(DBEdit3.Text)) then msg('#A data inicial deve ser menor que a final!',0);

//semanal
  if (rgrupo.ItemIndex = 1) and (esemana.Text='') then  msg('#Preencha o dia da semana!', 0);


  if (rgrupo.ItemIndex = 1) and (strtodate(DBEdit3.Text)-strtodate(edata.Text) < 7)  then msg('#Se é semanal, a data inicial e a final deve ter uma diferença de, pelo menos, 7 dias!',0);


 //mensal
  if rgrupo.ItemIndex = 2 then begin

     if rgrupo1.ItemIndex = -1 then  msg('#Escolha, "Sempre" ou  "Mês"!',0);

    if  (strtodate(DBEdit3.Text)-strtodate(edata.Text) < 28)  then msg('#Se é mensal, a data inicial e a final deve ter uma diferença de, pelo menos, 1 mês!', 0);

     if (rgrupo1.ItemIndex = 0) and (emes.Text='') then msg('#Preencha o dia!', 0);

     if (rgrupo1.ItemIndex = 1) and ((emes.Text='')or(etodomes.Text='')) then msg('#Preencha o dia e o mês!', 0);
         abort;
     end;


     if rgrupo1.ItemIndex = 1 then begin
        if strtodate(DBEdit3.Text) < strtodate(formatfloat('00',strtofloat(emes.Text)) +'/'+
                                     formatfloat('00',strtofloat(etodomes.Text)) +'/'+
                                     formatdatetime('yyyy',strtodate(DBEdit3.Text))) then begin
         //showmessage(formatfloat('00',strtofloat(emes.Text)) +'/'+
           //                          formatfloat('00',strtofloat(etodomes.Text)) +'/'+
             //                        formatdatetime('yyyy',strtodate(DBEdit3.Text)));
         Application.MessageBox('A data final não pode ser menor que o dia e o mês agendados!', 'Erro', 0 + MB_ICONERROR);
         abort;
       end;

        if strtodate(edata.Text) > strtodate(formatfloat('00',strtofloat(emes.Text)) +'/'+
                                     formatfloat('00',strtofloat(etodomes.Text)) +'/'+
                                     formatdatetime('yyyy',strtodate(DBEdit3.Text))) then msg('A data inicial não pode ser maior que o dia e o mês agendados!', 0);



  end;


     if rgrupo1.ItemIndex = 2 then
        if strtodate(DBEdit3.Text) < strtodate(formatfloat('00',strtofloat(emes.Text)) +'/'+
                                     formatfloat('00',strtofloat(etodomes.Text)) +'/'+
                                     formatdatetime('yyyy',strtodate(DBEdit3.Text))) then begin
         Application.MessageBox('A data final não pode ser menor que o dia e o mês agendados!', 'Erro', 0 + MB_ICONERROR);
         abort;

     end;


        if tabela.fieldbyname('fim').AsDateTime <
           tabela.fieldbyname('data').AsDateTime  then begin
           showmessage('O fim do agendamento está menor que o início!!!');
           abort;
        end;


        if rgrupo.ItemIndex = 3 then begin
          if inputquery('Programar comprimisso', 'A cada quantos dias?',st) then else abort;

          if StrIsInteger(st) = False then msg('#Digite um número válido!', 0);

            if  (strtodate(DBEdit3.Text)-strtodate(edata.Text) < strtofloat(st))  then msg('#A diferença entre a data inicial e a data final deve ser igual ou maior que o intervalo!', 0);

        end;




          tabela.edit;
        if st <> '' then
          tabela['programado'] := st
        else tabela['programado'] := null;

        if gravar  then
           grava(tabela,nil,'tbagenda')
        else
           altera(tabela,nil,'tbagenda');
//            showmessage(tabela.fieldbyname('tipomes').AsString);
           close;

end;

procedure Tfagendapessoal.edataEnter(Sender: TObject);
begin
        with  sender as tdbedit do
         color:= clinfobk;

end;

procedure Tfagendapessoal.ecfopEnter(Sender: TObject);
begin
        with  sender as tdbedit do
         color:= clinfobk;
end;

procedure Tfagendapessoal.ecfopExit(Sender: TObject);
begin
        with  sender as tdbedit do
         color:= clwhite;
end;

procedure Tfagendapessoal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
             if (key = 13) or (key = vk_down) then
                 perform (wm_nextdlgctl,0,0);
              if (key = 27) or (key = vk_up) then
                 perform(wm_nextdlgctl,1,0);
end;

procedure Tfagendapessoal.rgrupoChange(Sender: TObject);
begin

        etodomes.Visible := (rgrupo1.ItemIndex = 1) and (rgrupo.ItemIndex = 2);
        lmes.Visible := (rgrupo1.ItemIndex = 1) and (rgrupo.ItemIndex = 2);        
        ldia.Visible := (rgrupo.ItemIndex = 1) or (rgrupo.ItemIndex = 2);
        emes.Visible := rgrupo.ItemIndex = 2;
        esemana.Visible := rgrupo.ItemIndex = 1;
        rgrupo1.Visible := rgrupo.ItemIndex = 2;
        DBEdit3.Enabled := (rgrupo.ItemIndex = 0) or
                           (rgrupo.ItemIndex = 1) or
                           ((rgrupo.ItemIndex = 2)and(rgrupo1.ItemIndex<>1)) or
                           (rgrupo.ItemIndex = 3) ;

     if (rgrupo1.ItemIndex = 1) and (emes.Text<>'') and (etodomes.Text<>'') then begin
       tabela.edit;
       tabela['fim'] :=  formatfloat('00',strtofloat(emes.Text)) +'/'+
                                     formatfloat('00',strtofloat(etodomes.Text)) +'/'+
                                     ano;
     end;


       // if rgrupo.ItemIndex = 2 then
         //  rgrupo1.ItemIndex := 0
       // else  rgrupo1.ItemIndex :=  -1;

        if  rgrupo.ItemIndex = 0 then begin
            tabela.edit;
            tabela['fim'] := tabela['data'];
        end;

end;

procedure Tfagendapessoal.rgrupo1Change(Sender: TObject);
var
st:string;
begin
        DBEdit3.Enabled := (rgrupo.ItemIndex = 1) or
                           ((rgrupo.ItemIndex = 2)and(rgrupo1.ItemIndex<>1)) or
                           (rgrupo.ItemIndex = 3) ;



        lmes.Visible := rgrupo1.ItemIndex = 1;
        etodomes.Visible := rgrupo1.ItemIndex = 1;

     if rgrupo1.ItemIndex = 1 then begin

        if inputquery('Programar comprimisso', 'Digite o ano final:',st) then else begin

            rgrupo1.ItemIndex :=0;
            abort;
        end;

           if length(st)<>4 then begin
              Application.MessageBox('Digite um ano válido (ex: 2006)!', 'Erro', 0 + MB_ICONerror);
              rgrupo1.ItemIndex :=0;
              abort;
           end;

          if StrIsInteger(st) = False then
          begin
            Application.MessageBox('Digite um número válido!', 'Erro', 0 + MB_ICONerror);
            rgrupo1.ItemIndex :=0;
            abort;
          end;
          ano := st;
      end;

     if (rgrupo1.ItemIndex = 1) and (emes.Text<>'') and (etodomes.Text<>'') then begin
       tabela.edit;
       tabela['fim'] :=  formatfloat('00',strtofloat(emes.Text)) +'/'+
                                     formatfloat('00',strtofloat(etodomes.Text)) +'/'+
                                     ano;
     end;


end;

procedure Tfagendapessoal.Label6Click(Sender: TObject);
begin

      if (rgrupo.ItemIndex = 0) or ((rgrupo.ItemIndex = 2) and (rgrupo1.ItemIndex=1)) then abort;

      if btngravar.Enabled then begin
        dt :='';

        if dt <> '' then begin
           tabela.edit;
           tabela['fim'] := dt;
        end;
      end;
end;

procedure Tfagendapessoal.btncancelarClick(Sender: TObject);
begin
        tabela.close;
        close;

end;

procedure Tfagendapessoal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        release;
end;

procedure Tfagendapessoal.tcinsExecute(Sender: TObject);
begin
        btngravarClick(self);        
end;

procedure Tfagendapessoal.FormCreate(Sender: TObject);
begin
            if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\cadastroP.jpg')) then
                                imageform('imagecliente',alclient, fagendapessoal,
                                (PChar(ExtractFilePath(ParamStr(0)) +'imagem\cadastroP.jpg')),nil);
            statusagExecute(self);
 
end;

procedure Tfagendapessoal.DBEdit3Exit(Sender: TObject);
begin
        with  sender as tdbedit do
         color:= clwhite;

         if rgrupo.ItemIndex = 0 then
            DBEdit3.Text := edata.Text;
end;

procedure Tfagendapessoal.etodomesChange(Sender: TObject);
begin
     if (rgrupo1.ItemIndex = 1) and (emes.Text<>'') and (etodomes.Text<>'') then begin
       tabela.edit;
       tabela['fim'] :=  formatfloat('00',strtofloat(emes.Text)) +'/'+
                                     formatfloat('00',strtofloat(etodomes.Text)) +'/'+
                                     ano;
     end;
end;

procedure Tfagendapessoal.emesChange(Sender: TObject);
begin
     if (rgrupo1.ItemIndex = 1) and (emes.Text<>'') and (etodomes.Text<>'') then begin
       tabela.edit;
       tabela['fim'] :=  formatfloat('00',strtofloat(emes.Text)) +'/'+
                                     formatfloat('00',strtofloat(etodomes.Text)) +'/'+
                                     ano;
     end;

end;

procedure Tfagendapessoal.eenderecoKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);

  procedure nome;
  begin

        if fdm.sg['endereco'] <> null then begin
           tabela.edit;
           tabela['endereco'] := fdm.sg.fieldbyname('Endereco').AsString + ' - '+
                 fdm.sg.fieldbyname('numero').AsString + '   '+
                 fdm.sg.fieldbyname('Complemento').AsString + '   '+
                 fdm.sg.fieldbyname('bairro').AsString + ' - '+
                 '  CEP: '+ fdm.sg.fieldbyname('cep').AsString   + ' - '+
                 fdm.sg.fieldbyname('municipio').AsString+  ' - '+
                 fdm.sg.fieldbyname('uf').AsString;
        end;

  end;

begin
    fechatg;
    if (eendereco.Modified) and
       (key = 13) and
       (eendereco.Text <> '') then  begin

        if ((Length(eendereco.Text)=14) or(Length(eendereco.Text)=11)) and (StrIsNum(eendereco.Text)) then
            eendereco.Text:=formatacpf_cnpj(enome.Text);


      with fdm.sg do begin
           Close;
           sql.clear;
           sql.add('select * from tbcliente where '+
                   'codigo = '+quotedstr(eendereco.Text)+
                   ' or cnpj = '+quotedstr(eendereco.Text));
           Open;
      end;


      if fdm.sg['codigo'] <> null then nome

      else begin
           listagem('nome',enome.Text,'',4,0);

           if fdm.sg.Active then nome;
      end;
    end;
    fechatg;

end;

procedure Tfagendapessoal.Label8Click(Sender: TObject);
begin
          cadp ('tbagendastatus', '', 'Status',
                'Status','',
                '','','',
                '','','',
                '','','',
                '',
                '',
                '',
                '',
                3,0);
            statusagExecute(self);
end;

procedure Tfagendapessoal.statusagExecute(Sender: TObject);
begin
      selecione('select * from tbagendastatus order by status');
      estatus.Items.Clear;
      estatus.Items.Add(' ');
      while not sqlpub.Eof do begin
            estatus.Items.Add(sqlpub.fieldbyname('status').AsString);
            sqlpub.Next;
      end;
end;

procedure Tfagendapessoal.edataExit(Sender: TObject);
begin
     if (strtodate(edata.Text) > strtodate(DBEdit3.Text)) then begin
         tabela.edit;
         tabela['fim'] := tabela['data'];

     end;
end;

procedure Tfagendapessoal.enomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  texto,campo,scr: string;

  procedure pcli;
  begin
       tabela.edit;
       tabela['nome'] := fdm.sg.fieldbyname('nome').AsString;
       tabela['foneemail'] := fdm.sg.fieldbyname('ddd').AsString+'-'+
                              fdm.sg.fieldbyname('fone').AsString+'  '+
                              fdm.sg.fieldbyname('fone2').AsString+'  '+
                              fdm.sg.fieldbyname('fone3').AsString;
       tabela['email'] := fdm.sg.fieldbyname('email').AsString;
       tabela['endereco'] := fdm.sg.fieldbyname('endereco').AsString+' '+
                             fdm.sg.fieldbyname('numero').AsString+' '+
                             fdm.sg.fieldbyname('complemento').AsString+'   Bairro: '+
                             fdm.sg.fieldbyname('bairro').AsString+' '+
                             fdm.sg.fieldbyname('municipio').AsString+'   Cep: '+
                             fdm.sg.fieldbyname('municipio').AsString+'   UF: ';
       fechatg;
  end;

begin

    fechatg;
    if (enome.Modified) and
       (key = 13) and
       (enome.Text <> '') then  begin

        if (Length(enome.Text)=14) and (StrIsNum(enome.Text)) then
            enome.Text:=formatacpf_cnpj(enome.Text);

        campo := 'nome';

      if length(enome.Text) = 8 then campo := 'fone';

      scr := campo + ' = ' + quotedstr(enome.Text);

      texto := enome.Text;

      with fdm.sg do begin
           sql.clear;
           sql.add('select * from tbcliente where (flag <> "D" or flag is null)  '+
                   ' and (codigo = '+quotedstr(enome.Text)+
                   ' or cnpj = '+quotedstr(enome.Text)+
                   ' or ' + scr+')');
           Open;
      end;

      if fdm.sg['codigo'] <> null then pcli

      else begin
         listagem(campo,enome.Text,'',4,0);

         if fdm.sg.Active then pcli;

      end;
    end;

end;

end.





