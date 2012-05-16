unit uagenda;

interface

uses
  shellapi,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Spin, Grids, DBGrids,  Provider, DB, DBClient, Buttons, jpeg, DBCtrls;

type
  Tfagenda = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    SpinEdit1: TSpinEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    rdia: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    RadioButton15: TRadioButton;
    RadioButton16: TRadioButton;
    RadioButton17: TRadioButton;
    RadioButton18: TRadioButton;
    RadioButton19: TRadioButton;
    RadioButton20: TRadioButton;
    RadioButton21: TRadioButton;
    RadioButton22: TRadioButton;
    RadioButton23: TRadioButton;
    RadioButton24: TRadioButton;
    RadioButton25: TRadioButton;
    RadioButton26: TRadioButton;
    RadioButton27: TRadioButton;
    RadioButton28: TRadioButton;
    RadioButton29: TRadioButton;
    RadioButton30: TRadioButton;
    RadioButton31: TRadioButton;
    RadioButton32: TRadioButton;
    tabela: TClientDataSet;
    ds: TDataSource;
    Timer1: TTimer;
    Splitter1: TSplitter;
    Panel6: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    lemail: TDBText;
    DBText2: TDBText;
    lmes: TLabel;
    tabeladiasemana: TStringField;
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
    Panel1: TPanel;
    Panel4: TPanel;
    btnnovo: TSpeedButton;
    btneditar: TSpeedButton;
    btnimprimir: TSpeedButton;
    btnapagar: TSpeedButton;
    Panel5: TPanel;
    Calendar: TMonthCalendar;
    StaticText1: TStaticText;
    lnomeferiado: TStaticText;
    lsemana: TStaticText;
    tabelachave: TIntegerField;
    tabeladia: TStringField;
    lcompromisso: TLabel;
    tbdc: TClientDataSet;
    dsdc: TDataSource;
    tbdcnome: TStringField;
    tbdcdata: TStringField;
    tbdccor: TStringField;
    tbdcdt: TDateField;
    DBGrid2: TDBGrid;
    tabelatipomes: TStringField;
    btnanotacoes: TSpeedButton;
    Panel7: TPanel;
    DBGrid1: TDBGrid;
    tabelaendereco: TStringField;
    tabeladescricao: TStringField;
    tabelaobs: TStringField;
    rvisualiza: TCheckBox;
    btnlocalizar: TSpeedButton;
    tabelastatus: TStringField;
    DBText1: TDBText;
    Label1: TLabel;
    Bevel1: TBevel;

    procedure inicia;
    procedure rolar;

    procedure PageControl1Change(Sender: TObject);
    procedure RadioButton32Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure tabelaAfterScroll(DataSet: TDataSet);
    procedure btnnovoClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure btnanotacoesClick(Sender: TObject);
    procedure btnlocalizarClick(Sender: TObject);
    procedure lemailClick(Sender: TObject);
  private
  sq:string;

    { Private declarations }
  public
  usuariolink:integer;
  usuario,tipo:string;
    { Public declarations }
  end;

var
  fagenda: Tfagenda;

implementation
uses funcoes, umanu, udm, uagendapessoal;
{$R *.dfm}

procedure Tfagenda.rolar;
var
  dt: tdate;
  i:integer;
begin

        if tabela.RecordCount>0 then begin

            if tabela.FieldByName('programado').AsFloat > 0 then
               lcompromisso.Caption := 'Programado - ini: ' +  tabela.fieldbyname('data').AsString+
                                    ' fim: ' +  tabela.fieldbyname('fim').AsString + ' - a cada '+
                                    tabela.fieldbyname('programado').AsString + ' dia(s)'

            else if tabela['tipo']= 'M' then
               lcompromisso.Caption := 'Mensal - ini: ' +  tabela.fieldbyname('data').AsString+
                                    ' fim: ' +  tabela.fieldbyname('fim').AsString + ' - dia '+
                                    tabela.fieldbyname('dia').AsString

            else if tabela['tipo']= 'S' then
               lcompromisso.Caption := 'Semanal - ini: ' +  tabela.fieldbyname('data').AsString+
                                    ' fim: ' +  tabela.fieldbyname('fim').AsString + ' - dia '+
                                    tabela.fieldbyname('dia').AsString

            else if tabela['tipo']= 'U' then
               lcompromisso.Caption := 'Único: ' +  tabela.fieldbyname('data').AsString;

            lmes.Caption := inttostr(tabela.RecordCount) + ' COMPROMISSO(S) AGENDADO(S)';
                            pagecontrol1.ActivePage.Caption;


           lsemana.Caption := formatdatetime('dddd',tabela.fieldbyname('data').AsDateTime);
           calendar.Date := tabela.fieldbyname('data').AsDateTime;

              dt := tabela.fieldbyname('data').asdatetime;

              i:= trunc(dt-date);

              if dt = date then
                 lnomeferiado.Caption := 'Hoje!!!'
              else if dt >= date then
                 lnomeferiado.Caption := 'Falta(m) ' + inttostr(i) + ' dia(s)'
              else if dt < date then
                 lnomeferiado.Caption := 'Já passou!!!';

           end else begin
              lmes.Caption := '';
              lcompromisso.Caption := '';
           end;

end;

procedure Tfagenda.inicia;
               procedure comp(d:integer;ini,f:tdate);
               var
               i:integer;
               begin
                   for i := 0 to componentcount - 1 do
                      if Components[i] is tradiobutton then

                         if tradiobutton(Components[i]).TabOrder > 0 then

                            if strisdate(formatfloat('00',
                              tradiobutton(Components[i]).TabOrder)+'/'+
                              formatfloat('00',pagecontrol1.ActivePageIndex+1)+
                              '/'+SpinEdit1.Text) then

                              if (strtodate(formatfloat('00',tradiobutton(Components[i]).TabOrder)+ '/'+
                                            formatfloat('00',pagecontrol1.ActivePageIndex+1) + '/'+
                                            SpinEdit1.Text))>=(ini) then

                              if (strtodate(formatfloat('00',tradiobutton(Components[i]).TabOrder)+ '/'+
                                            formatfloat('00',pagecontrol1.ActivePageIndex+1) + '/'+
                                            SpinEdit1.Text))<=(f) then

                           if (tradiobutton(Components[i]).Name = 'RadioButton'+inttostr(d)) then begin
                              tradiobutton(Components[i]).Font.Color := clblack;
                              radiobutton32.Font.Color := clblack;
                             // IF  tradiobutton(Components[i]).TabOrder = 9 THEN
                               //  SHOWMESSAGE(INTTOSTR(d));
                               // SHOWMESSAGE(INTTOSTR(tradiobutton(Components[i]).TabOrder));
                           end;
               end;

               procedure compS(d:string;f,ini:tdate);
               var
               i:integer;
               begin
                 if (d <> '') and (d<> '0') then
                   for i := 0 to componentcount - 1 do
                      if Components[i] is tradiobutton then
                         if tradiobutton(Components[i]).TabOrder > 0 then

                            if strisdate(formatfloat('00',
                              tradiobutton(Components[i]).TabOrder)+'/'+
                              formatfloat('00',pagecontrol1.ActivePageIndex+1)+
                              '/'+SpinEdit1.Text) then

                              if (strtodate(formatfloat('00',tradiobutton(Components[i]).TabOrder)+ '/'+
                                            formatfloat('00',pagecontrol1.ActivePageIndex+1) + '/'+
                                            SpinEdit1.Text))>=(ini) then

                              if (strtodate(formatfloat('00',tradiobutton(Components[i]).TabOrder)+ '/'+
                                            formatfloat('00',pagecontrol1.ActivePageIndex+1) + '/'+
                                            SpinEdit1.Text))<=(f) then

                              if copy(formatdatetime('dddd',strtodate(formatfloat('00',
                                 tradiobutton(Components[i]).TabOrder)+'/'+
                                 formatfloat('00',pagecontrol1.ActivePageIndex+1)+
                                 '/'+SpinEdit1.Text)),1,3)= d then begin

                              tradiobutton(Components[i]).Font.Color := clblack;
                              radiobutton32.Font.Color := clblack;

               end;
               end;
var
bono,cont,ndias,i,mes,p:integer;
dt,semana,ano,mes1,tp:string;
begin
        if tipo <> '' then tp := ' and tipo1 = '+quotedstr(tipo);

        tabsheet1.Highlighted := PageControl1.ActivePageIndex = 0;
        tabsheet2.Highlighted := PageControl1.ActivePageIndex = 1;
        tabsheet3.Highlighted := PageControl1.ActivePageIndex = 2;
        tabsheet4.Highlighted := PageControl1.ActivePageIndex = 3;
        tabsheet5.Highlighted := PageControl1.ActivePageIndex = 4;
        tabsheet6.Highlighted := PageControl1.ActivePageIndex = 5;
        tabsheet7.Highlighted := PageControl1.ActivePageIndex = 6;
        tabsheet8.Highlighted := PageControl1.ActivePageIndex = 7;
        tabsheet9.Highlighted := PageControl1.ActivePageIndex = 8;
        tabsheet10.Highlighted := PageControl1.ActivePageIndex = 9;
        tabsheet11.Highlighted := PageControl1.ActivePageIndex = 10;
        tabsheet12.Highlighted := PageControl1.ActivePageIndex = 11;



         mes:=UltimodoMes(pagecontrol1.ActivePageIndex+1,
                                      spinedit1.value);

         radiobutton29.Visible := mes >28;
         radiobutton30.Visible := mes >29;
         radiobutton31.Visible := mes >30;

         ano := spinedit1.Text;
         mes1 := inttostr(pagecontrol1.ActivePageIndex+1);

                   for i := 0 to componentcount - 1 do
                      if Components[i] is tradiobutton then begin
                          tradiobutton(Components[i]).Font.Color := $00B9AAA4;
//                          tradiobutton(Components[i]).Brush.Color := $0060514A;
                          tradiobutton(Components[i]).Checked := false;
                      end;


       //programado
         with fdm.query1 do begin
              close;
              sql.clear;
              sql.add(  'select data,fim,programado from tbagenda where ' +
                            ' extract(year from  data) = ' + quotedstr(ano)+  tp +
                            ' and programado> 0 and usuario = '+ quotedstr(inttostr(usuariolink))+
                             ' order by data');
             //debugstr(fdm.query1);
             open;

             while not eof do begin
                      p:= fieldbyname('programado').Asinteger;
                      ndias := trunc(fieldbyname('fim').AsDateTime - fieldbyname('data').AsDateTime);

                      if (formatdatetime('mm',fieldbyname('data').AsDateTime)) =
                         (formatfloat('00',pagecontrol1.ActivePageIndex+1)) then
                         cont :=0
                      else begin
                         cont :=p;
                         bono:=p;
                      end;


                      while (cont-bono) < ndias do begin
                             if formatdatetime('mm',fieldbyname('data').AsDateTime+cont)=
                                  formatfloat('00', pagecontrol1.ActivePageindex+1) then


                            comp(strtoint(formatdatetime('dd',fieldbyname('data').AsDateTime+cont)),
                                          fieldbyname('data').AsDateTime,
                                          fieldbyname('fim').AsDateTime);
                            cont := cont+p;
                            //showmessage(datetostr(fieldbyname('data').AsDateTime+cont));
                      end;
                      Next;
             end;

             //compromisso único
             close;
             sql.clear;
             sql.add(  'select  "             " as diasemana, tbagenda.* from tbagenda where ' +
                            ' (extract(year from  data) = ' + quotedstr(ano)+
                            ' and extract(month from  data) = ' + quotedstr(mes1)+ ')'+ tp +
                            ' and (tipo= "U") and (usuario = '+ quotedstr(inttostr(usuariolink))+')'+
                             ' order by data ');
             open;

             while not eof do begin
                   comp(strtoint(formatdatetime('dd',fieldbyname('data').AsDateTime)),
                                 fieldbyname('data').AsDateTime,
                                 fieldbyname('fim').AsDateTime);

                   Next;
             end;

              //semanal
              close;
             sql.clear;
             sql.add( 'select data,fim,dia from tbagenda where ' +
                           // ' extract(year from  data) = ' + quotedstr(ano)+ tipo +
                           // ' and extract(month from  data) = ' + quotedstr(mes1)+
                            '  tipo="S" and usuario = '+ quotedstr(inttostr(usuariolink))+ tp +
                             ' order by data');
             open;
             while not eof do begin
                       compS(fieldbyname('dia').Asstring,
                             fieldbyname('fim').Asdatetime,
                             fieldbyname('data').Asdatetime);
                   Next;
             end;


             //mensal
             close;
             sql.clear;
             sql.add( 'select  "             " as diasemana, tbagenda.* from tbagenda where ' +
                            '  (tipo= "M") and (usuario = '+ quotedstr(inttostr(usuariolink))+')'+ tp +
                             ' order by data ');
             open;

             while not eof do begin
                   dt := formatfloat('00',fieldbyname('dia').AsFloat)+
                         '/'+formatfloat('00',pagecontrol1.ActivePageindex+1)+
                         '/'+SpinEdit1.text;

                   if (strtodate(dt) >= fieldbyname('data').AsDateTime) and
                      (strtodate(dt)<=fieldbyname('fim').AsDateTime) then

                      if (fdm.query1['todomes'] = null) then
                         comp(strtoint(formatdatetime('dd',strtodate(dt))),
                         fieldbyname('data').AsDateTime,
                         fieldbyname('fim').AsDateTime)
                      else if inttostr(pagecontrol1.ActivePageIndex+1)=
                              fieldbyname('todomes').AsString  then
                              comp(strtoint(formatdatetime('dd',strtodate(dt))),
                              fieldbyname('data').AsDateTime,
                              fieldbyname('fim').AsDateTime);

                   Next;
             end;



      end;


         tabela.Close;

               lnomeferiado.Caption := '';
               lsemana.Caption := '';
               calendar.Date := date;
end;


procedure Tfagenda.PageControl1Change(Sender: TObject);

begin

        inicia;

end;

procedure Tfagenda.RadioButton32Click(Sender: TObject);

        procedure preenche;
        begin
          tabela.insert;
          tabela['chave']:= fdm.query1.fieldbyname('chave').asinteger;
          tabela['diasemana']:= fdm.query1.fieldbyname('diasemana').asstring;
          tabela['data'] :=fdm.query1.fieldbyname('data').AsDateTime;
          tabela['hora']:= fdm.query1.fieldbyname('hora').AsDateTime;
          tabela['nome']:= fdm.query1.fieldbyname('nome').asstring;
          tabela['status']:= fdm.query1.fieldbyname('status').asstring;          
          tabela['descricao']:= fdm.query1.fieldbyname('descricao').asstring;
          tabela['foneemail']:= fdm.query1.fieldbyname('foneemail').asstring;
          tabela['obs']:= fdm.query1.fieldbyname('obs').asstring;
          tabela['endereco']:= fdm.query1.fieldbyname('endereco').asstring;          
          tabela['email']:= fdm.query1.fieldbyname('email').asstring;
          tabela['usuario']:= fdm.query1.fieldbyname('usuario').asinteger;
          tabela['tipo']:= fdm.query1.fieldbyname('tipo').asstring;
          tabela['fim']:= fdm.query1.fieldbyname('fim').AsDateTime;
          tabela['dia']:= fdm.query1.fieldbyname('dia').asstring;
          tabela['mes']:= fdm.query1.fieldbyname('mes').asstring;
          tabela['todomes']:= fdm.query1.fieldbyname('todomes').asinteger;
          tabela['tipomes']:= fdm.query1.fieldbyname('tipomes').asstring;
          tabela['programado']:= fdm.query1.fieldbyname('programado').asinteger;
       end;

var
bono,l,p,ndias,cont:integer;
dt,semana,ano,mes,script:string;
begin

         ano := spinedit1.Text;
         mes := inttostr(pagecontrol1.ActivePageIndex+1);

         with sender as tRadioButton do begin

        //programado
          with fdm.query1 do begin
              close;
             sql.clear;
             sql.add( 'select  "             " as diasemana, tbagenda.* from tbagenda where ' +
                            ' extract(year from  data) = ' + quotedstr(ano)+
                            //' and extract(month from  data) = ' + quotedstr(mes)+ ')'+
                            ' and (programado > 0) and (usuario = '+ quotedstr(inttostr(usuariolink))+')'+
                            ' order by data ');
             open;

        tabela.close;
        tabela.CreateDataSet;
        tabela.Open;

        while not eof do begin
            p:= fieldbyname('programado').Asinteger;
            ndias := trunc(fieldbyname('fim').AsDateTime - fieldbyname('data').AsDateTime);
//            cont :=0;

                      if (formatdatetime('mm',fieldbyname('data').AsDateTime)) =
                         (formatfloat('00',pagecontrol1.ActivePageIndex+1)) then
                         cont :=0
                      else begin
                         cont :=p;
                         bono:=p;
                      end;


            while (cont-bono) < ndias do begin
                if (strtoint(formatdatetime('dd',fieldbyname('data').AsDateTime+cont)) =
                   TabOrder) or (taborder=0) then

                if formatdatetime('mm',fieldbyname('data').AsDateTime + cont)=
                   formatfloat('00',pagecontrol1.ActivePageIndex+1) then
                   if  (fieldbyname('data').AsDateTime + cont) <=
                       (fieldbyname('fim').AsDateTime) then begin 

                  preenche;
                  tabela['data'] := fieldbyname('data').AsDateTime+cont;
                  tabela.Post;
                end;
                cont := cont+p;
            end;

            l:=l+1;
            next;
         end;
        end;


        //único
          with fdm.query1 do begin
              close;
             sql.clear;
             sql.add( 'select  "             " as diasemana, tbagenda.* from tbagenda where ' +
                            ' (extract(year from  data) = ' + quotedstr(ano)+
                            ' and extract(month from  data) = ' + quotedstr(mes)+ ')'+
                            ' and (tipo= "U") and (usuario = '+ quotedstr(inttostr(usuariolink))+')'+
                             ' order by data ');
             open;


            while not fdm.query1.eof do begin

                if (strtoint(formatdatetime('dd',fieldbyname('data').AsDateTime)) =
                   TabOrder) or (taborder=0)   then begin
                  preenche;
                  tabela['data'] := fieldbyname('data').AsDateTime;
                  tabela.Post;
                end;
                Next;
            end;
      end;


        //semanal


          with fdm.query1 do begin
              close;
             sql.clear;
             sql.add( 'select  "             " as diasemana, tbagenda.* from tbagenda where ' +
                           // ' extract(year from  data) = ' + quotedstr(ano)+
                           // ' and extract(month from  data) = ' + quotedstr(mes)+
                            '  tipo="S" and usuario = '+ quotedstr(inttostr(usuariolink))+
                             ' order by data');
             open;

            p:=0;
            while not fdm.query1.eof do begin

               if taborder > 0 then begin
                  semana := copy(formatdatetime('dddd',strtodate(formatfloat('00',taborder)+'/'+
                            formatfloat('00',pagecontrol1.ActivePageindex+1)+'/'+SpinEdit1.Text)),1,3);

                   if (fieldbyname('dia').asstring=semana) then
                       if (strtodate(formatfloat('00',TabOrder)+ '/'+
                                     formatfloat('00',pagecontrol1.ActivePageIndex+1) + '/'+
                                      SpinEdit1.Text))>=(fieldbyname('data').AsDateTime) then

                              if (strtodate(formatfloat('00',TabOrder)+ '/'+
                                            formatfloat('00',pagecontrol1.ActivePageIndex+1) + '/'+
                                            SpinEdit1.Text))<=(fieldbyname('fim').AsDateTime) then begin
                          preenche;
                          tabela['data'] := strtodate(formatfloat('00',taborder)+'/'+
                                            formatfloat('00',pagecontrol1.ActivePageindex+1)+'/'+SpinEdit1.Text);
                          tabela.Post;
                      end;

                end else begin
                     p:=0;
                     while fieldbyname('data').AsDateTime + p <=
                           fieldbyname('fim').AsDateTime do begin

                           if formatdatetime('mm',fieldbyname('data').AsDateTime + p)=
                              formatfloat('00',pagecontrol1.ActivePageIndex+1) then

                           if copy(formatdatetime('dddd',fieldbyname('data').AsDateTime + p),1,3)=
                              fieldbyname('dia').asstring then begin
                              preenche;
                              tabela['data'] := fieldbyname('data').AsDateTime + p;
                              tabela.Post;
                           end;

                           p := p + 1;
                     end;
                end;

            fdm.query1.Next;
            end;
      end;




        //mensal


          with fdm.query1 do begin
              close;
             sql.clear;
             sql.add( 'select  "             " as diasemana, tbagenda.* from tbagenda where ' +
                            '  tipo="M" and usuario = '+ quotedstr(inttostr(usuariolink))+
                             ' order by data');
             open;

            p:=0;
            while not fdm.query1.eof do begin

                   dt := formatfloat('00',fieldbyname('dia').AsFloat)+
                         '/'+formatfloat('00',pagecontrol1.ActivePageindex+1)+
                         '/'+SpinEdit1.text;

                   if (strtodate(dt) >= fieldbyname('data').AsDateTime) and
                      (strtodate(dt)<=fieldbyname('fim').AsDateTime) then

                     if (fieldbyname('dia').AsFloat = taborder) or (taborder = 0) then
                        if (fdm.query1['todomes'] = null) then begin
                                preenche;
                                tabela['data'] := dt;
                                tabela.Post;

                        end else if inttostr(pagecontrol1.ActivePageIndex+1)=
                                fieldbyname('todomes').AsString  then begin
                                preenche;
                                tabela['data'] := dt;
                                tabela.Post;
                        end;

            fdm.query1.Next;
            end;
      end;


   end;

       if tabela.RecordCount <=0 then begin
               lnomeferiado.Caption := '';
               lsemana.Caption := '';
               calendar.Date := date;
       end;
       fdm.query1.close;
       if (dbgrid1.Enabled = true) and (fagenda.Active) then
          dbgrid1.SetFocus;
       rolar;
end;

procedure Tfagenda.SpinEdit1Change(Sender: TObject);
begin
        PageControl1Change(self);
end;

procedure Tfagenda.btnimprimirClick(Sender: TObject);
begin
           impgrade(tabela,nil,ds,dbgrid1,'tbagenda',caption,'',rvisualiza.Checked );
end;

procedure Tfagenda.Timer1Timer(Sender: TObject);
begin
       if tipo = 'P' then Caption := 'Agenda de Compromissos   -   Hoje: '+ datetimetostr(now)
                     else Caption := 'Agenda de Serviços   -   Hoje: '+ datetimetostr(now);

end;

procedure Tfagenda.tabelaAfterScroll(DataSet: TDataSet);
begin

        rolar;

end;



procedure Tfagenda.btnnovoClick(Sender: TObject);
begin

       application.CreateForm(tfagendapessoal,fagendapessoal);
       fagendapessoal.tabela.CreateDataSet;
       fagendapessoal.tabela.Open;
       fagendapessoal.tabela.Insert;
       fagendapessoal.tabela['data'] := datetostr(now);
       fagendapessoal.tabela['fim'] :=  fagendapessoal.tabela['data'] ;
       fagendapessoal.tabela['hora'] := timetostr(now);
       fagendapessoal.tabela['usuario'] := usuariolink;
       fagendapessoal.tabela['tipo'] := 'U';
       fagendapessoal.tabela['status'] := 'CONFIRMADO';

        fagendapessoal.gravar := true;
        fagendapessoal.showmodal;

        tabela.Close;
        inicia;
end;

procedure Tfagenda.btneditarClick(Sender: TObject);
begin

  if (tabela.Active= false) or (tabela['chave'] = null) then
  begin
    Application.MessageBox('Você não tem registro selecionado!',
      'Erro', 0 + MB_ICONerror);
    abort;
  end;


        application.CreateForm(tfagendapessoal,fagendapessoal);
        fagendapessoal.tabela.CreateDataSet;
        fagendapessoal.tabela.Open;
        fagendapessoal.tabela.Edit;
          fagendapessoal.tabela['chave'] := tabela.fieldbyname('chave').asstring;
          fagendapessoal.tabela['data'] := tabela.fieldbyname('data').AsDateTime;
          fagendapessoal.tabela['hora'] := tabela.fieldbyname('hora').asstring;
          fagendapessoal.tabela['nome'] := tabela.fieldbyname('nome').asstring;
          fagendapessoal.tabela['status'] := tabela.fieldbyname('status').asstring;
          fagendapessoal.tabela['descricao'] := tabela.fieldbyname('descricao').asstring;
          fagendapessoal.tabela['endereco'] := tabela.fieldbyname('endereco').asstring;          
          fagendapessoal.tabela['foneemail'] := tabela.fieldbyname('foneemail').asstring;
          fagendapessoal.tabela['obs'] := tabela.fieldbyname('obs').asstring;
          fagendapessoal.tabela['email'] := tabela.fieldbyname('email').asstring;
          fagendapessoal.tabela['usuario'] := tabela.fieldbyname('usuario').asinteger;
          fagendapessoal.tabela['tipo'] := tabela.fieldbyname('tipo').asstring;
          fagendapessoal.tabela['fim'] := tabela.fieldbyname('fim').AsDateTime;
          fagendapessoal.tabela['dia'] := tabela.fieldbyname('dia').asstring;
          fagendapessoal.tabela['mes'] := tabela.fieldbyname('mes').asstring;
          if tabela.fieldbyname('todomes').asinteger   >0 then
             fagendapessoal.tabela['todomes'] := tabela.fieldbyname('todomes').asinteger;
          fagendapessoal.tabela['tipomes'] := tabela.fieldbyname('tipomes').asstring;
          fagendapessoal.tabela['status'] := tabela.fieldbyname('status').asstring;
          if tabela.fieldbyname('programado').asinteger  >0 then
             fagendapessoal.tabela['programado'] := tabela.fieldbyname('programado').asinteger;

        fagendapessoal.showmodal;
        inicia;
end;

procedure Tfagenda.btnapagarClick(Sender: TObject);
var
comp:string;
begin

  if (tabela.Active= false) or (tabela['chave'] = null) then
  begin
    Application.MessageBox('Você não tem registro selecionado para deletar!',
      'Erro', 0 + MB_ICONerror);
    abort;
  end;


            if tabela.FieldByName('programado').AsFloat > 0 then
               comp := 'Este compromisso é programado, deseja excluir?'
            else if tabela['tipo']= 'M' then
               comp := 'Este compromisso é mensal, deseja excluir?'
            else if tabela['tipo']= 'S' then
               comp := 'Este compromisso é semanal, deseja excluir?'
            else if tabela['tipo']= 'U' then
               comp := 'Deseja excluir?';

        if msg(comp,1) then

  begin


    with fdm.query1 do
    begin
      Close;
             sql.clear;
             sql.add( 'delete from tbagenda where chave = ' +
                     QuotedStr(tabela.FieldByName('chave').AsString));
      execsql;
    end;

        tabela.Close;
        inicia;
        lmes.Caption :='';
        lcompromisso.Caption :='';

    end;

end;

procedure Tfagenda.DBGrid1TitleClick(Column: TColumn);
begin
     if tabela.Active then begin
        tabela.IndexFieldNames := Column.FieldName;

//        llocalizar.Caption := 'Localizar por '+ Column.Title.caption;
     end;
end;

procedure Tfagenda.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

{    with DBGrid2.Canvas do
    begin

       if length(tbdc.FieldByName('cor').AsString)>0 then
          Font.Color := tbdc['cor']
       else
           Font.Color := clblack;

  FillRect(Rect);
  TextOut(Rect.Left+2,Rect.Top+2,Column.Field.DisplayText);
  end;
 }
end;

procedure Tfagenda.FormShow(Sender: TObject);
var
i:integer;
          begin
          imagepanel('imagemenu1', altop, panel4, '',menucad);
          imagepanel('imagemenu2', altop, panel6, '',menucad);


          btnnovo.Glyph := btcadastrar;
          btneditar.Glyph := btalterar;
          btnapagar.Glyph := btapagar;
          btnimprimir.Glyph := btimprimir;
          btnanotacoes.Glyph := btanotacoes;
          btnlocalizar.Glyph := btfiltro;

        calendar.Date := date;

        with fdm.query1 do begin
             close;
             sql.clear;
             sql.add( 'select nome, data,cor,dt,dia,mes from tbdatacomemorativa order by dt');
             open;

             tbdc.Close;
             tbdc.CreateDataSet;
             tbdc.Open;

             while not eof do begin
                   if length(fieldbyname('data').AsString)>0 then begin
                      tbdc.Insert;
                      tbdc['data']:= fieldbyname('data').AsString  ;
                      tbdc['nome']:= fieldbyname('nome').AsString  ;
                      tbdc['dt']:= fieldbyname('dt').AsDateTime  ;
                      tbdc['cor']:= fieldbyname('cor').AsString  ;
                      tbdc.Post;
                   end;

                   if (fieldbyname('dia').AsInteger >0) and (application.Title = 'Sigac 5.0') then begin
                      tbdc.Insert;
                      tbdc['data']:= formatfloat('00',fieldbyname('dia').asinteger)+
                                     '/'+formatfloat('00',fieldbyname('mes').asinteger);
                      tbdc['nome']:= fieldbyname('nome').AsString  ;
                      tbdc.Post;
                   end;

                   next;
             end;
             close;
        end;

        dbgrid2.DataSource :=dsdc;
        Timer1Timer(self);

        pagecontrol1.ActivePageIndex := strtoint(formatdatetime('mm',(date)));
        pagecontrol1.ActivePageIndex := pagecontrol1.ActivePageIndex-1;
        spinedit1.Text := formatdatetime('yyyyy',date);

  for i := 0 to componentcount - 1 do
    if Components[i] is ttabsheet then
       if ttabsheet(Components[i]).Visible then
          ttabsheet(Components[i]).Highlighted := true;

          PageControl1Change(self);

                   for i := 0 to componentcount - 1 do
                      if Components[i] is tradiobutton then
                         if (tradiobutton(Components[i]).Name = 'RadioButton'+
                             formatdatetime('dd',date)) then
                            tradiobutton(Components[i]).Checked := true;


  height := 550;
  width :=800;
  if resolucao >700 then width := 1000 ;


end;

procedure Tfagenda.Label1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'www.pontobr.com.br', nil, '', Sw_ShowNormal);

end;

procedure Tfagenda.Image1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'www.bitpamp.com.br', nil, '', Sw_ShowNormal);
end;

procedure Tfagenda.Image2Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'www.pontobr.com.br', nil, '', Sw_ShowNormal);
end;

procedure Tfagenda.btnanotacoesClick(Sender: TObject);
const
st:string ='select chave, nome, data, ddd, fone, fone2, fone3, fax, ramal, email, obs from tbfone';
begin

         cadp ('tbfone', st, '',
              'nome','',
              '','','',
              '','','',
              '','','',
              'data',
              '',
              '',
              '',
              0,0);
end;

procedure Tfagenda.btnlocalizarClick(Sender: TObject);
var st,tp:string;
begin
      tp := ' and tipo1 = "'+tipo+'" ';
      st :=msgi('Localizar: '+#13+'Digite as iniciais do nome:',0);
      listagem('nome',st,tp,35,0);
end;

procedure Tfagenda.lemailClick(Sender: TObject);
begin
  ShellExecute(Handle, 'open', PChar('mailto:' + lemail.Caption +  '?subject=' + 'Digite o Assunto'), nil, '', Sw_Show);
end;

end.
