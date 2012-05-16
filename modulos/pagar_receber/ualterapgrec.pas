unit ualterapgrec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  Provider, DB, DBClient, ExtCtrls, StdCtrls,
  Buttons, DBCtrls, Mask, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList;

type
  Tfalterapgrec = class(TForm)
    epgcodigo: TDBEdit;
    tbconta: TClientDataSet;
    dsconta: TDataSource;
    pconta: TDataSetProvider;
    ds: TDataSource;
    Label1: TLabel;
    DBText1: TDBText;
    epgnome: TDBEdit;
    Label44: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    pgdocumento: TLabel;
    DBEdit2: TDBEdit;
    eletra: TDBEdit;
    pgmora: TLabel;
    emora: TDBEdit;
    pgtotal: TLabel;
    pgevalor: TDBEdit;
    pgdesconto: TLabel;
    pgedesconto: TDBEdit;
    pgacrescimo: TLabel;
    pgeacrescimo: TDBEdit;
    pgvrdocumento: TLabel;
    evrdocumento: TDBEdit;
    pgrecebido: TLabel;
    erecebido: TDBEdit;
    pgdiferenca: TLabel;
    ediferenca: TDBEdit;
    pgdtvencimento: TLabel;
    DBEdit3: TDBEdit;
    pgobservacao: TLabel;
    DBEdit12: TDBEdit;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    pcheque: TPanel;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label47: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    ppassado: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    enome: TDBEdit;
    DBEdit4: TDBEdit;
    cposicao: TDBLookupComboBox;
    lposicao: TLabel;
    tbposicao: TClientDataSet;
    dsposicao: TDataSource;
    pposicao: TDataSetProvider;
    sconta: TZQuery;
    sposicao: TZQuery;
    ActionList1: TActionList;
    preenche: TAction;
    preenche2: TAction;
    procedure epgnomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pgevalorExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure enomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label44Click(Sender: TObject);
    procedure preencheExecute(Sender: TObject);
    procedure preenche2Execute(Sender: TObject);
  private
    { Private declarations }
  public
  controle:string;
    { Public declarations }
  end;

var
  falterapgrec: Tfalterapgrec;

implementation

uses udm, upagarlocaliza, ucadastrop, umanu,funcoes, ureceberlocaliza;

{$R *.dfm}

procedure Tfalterapgrec.epgnomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
   var
   ntb:string;
   num:integer;
begin

           if controle = 'pg' then begin
              num:=7;
              ntb:='tbfornecedor';
           end else begin
              num:=4;
              ntb:='tbcliente';
           end;

  if (key = 13) and (epgnome.Text <> '') then
  begin
    with fdm.sg do
    begin
      Close;
             sql.clear;
             sql.add( 'select * from '+ntb+'  where nome = ' +
                quotedstr(epgnome.Text) + ' or codigo = ' + quotedstr(epgnome.Text));
      Open;
    end;



      if fdm.sg['codigo'] <> null then
         preencheexecute(self)

      else begin
         listagem('nome',epgnome.Text,'',num,0);

         if fdm.sg.Active then
            preencheexecute(self);
    end;
  end;

end;

procedure Tfalterapgrec.pgevalorExit(Sender: TObject);
var
tabela:tclientdataset;
begin

        with sender as tdbedit do
             if modified then begin

                tabela := tclientdataset.Create(application);

                if controle = 'rc' then
                   tabela := freceberlocaliza.tabela
                else
                   tabela := fpagarlocaliza.tabela;

                tabela.Edit;
                tabela['total'] := tabela.FieldByName('vrdocumento').AsFloat +
                                  tabela.FieldByName('acrescimo').AsFloat -
                                  tabela.FieldByName('desconto').AsFloat;


                  if tabela.FieldByName('total').AsFloat > 0 then
                  begin
                    if tabela.FieldByName('recebido').AsFloat > 0 then
                       tabela['diferenca'] := tabela.FieldByName('total').AsFloat -
                                              tabela.FieldByName('recebido').AsFloat
            else
                       tabela['diferenca'] := tabela.FieldByName('total').AsFloat;
                  end;

        end;

end;

procedure Tfalterapgrec.FormShow(Sender: TObject);
begin

        if (controle = 'pg') then begin
              lposicao.Hide;
              cposicao.Hide;
              DBLookupComboBox1.Width := 216;
        end else begin

             tbposicao.Open;
             DBLookupComboBox1.ListField := 'descricao';
             DBLookupComboBox1.KeyField := 'descricao';
        end;

        sconta.SQL.Clear;

        if (controle = 'pg') and
           (fpagarlocaliza.tabela['ch'] ='S') then begin
            Label44.Caption :='Nome do Banco';
              sconta.SQL.Add('select * from tbconta where tp = "1" or tp is null');
              DBLookupComboBox1.ListField:= 'codigo;descricao;agencia;conta';
           end else
              sconta.SQL.Add('select * from tbconta where tp = "2" or tp is null');


        if controle = 'rc' then
           if freceberlocaliza.tabela['ch'] ='S' then begin
               Label44.Caption :='Nome do Banco';
               sconta.SQL.Clear;
               sconta.SQL.Add('select * from tbconta where tp = "2" or tp is null');

              ppassado.Show;
              enome.DataSource := ds;
              DBEdit4.DataSource := ds;

           end else
           if freceberlocaliza.tabela['ch'] ='C' then begin
               Label44.Caption :='Nome do Cartão';
               sconta.SQL.Clear;
               sconta.SQL.Add('select * from tbconta where tp = "1" or tp is null');
           end else begin
             sconta.SQL.Clear;
             sconta.SQL.Add('select * from tbconta where tp = "3" or tp is null');
           end;  

        tbconta.close;
        tbconta.Open;


        if controle = 'pg' then begin
           ds.DataSet := fpagarlocaliza.tabela;
           pcheque.Visible :=  fpagarlocaliza.tabela['ch'] ='S';
           emora.show;
           emora.DataField := 'mora';
           pgmora.show;
           Label47.Hide;
           DBEdit8.Hide;
           DBEdit9.Hide;
        end else begin
           ds.DataSet := freceberlocaliza.tabela;
           pcheque.Visible :=  freceberlocaliza.tabela['ch'] ='S';
        end;



end;

procedure Tfalterapgrec.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) or (key = vk_down) then
    Perform(wm_nextdlgctl, 0,0);
  if (key = 27) or (key = vk_up) then
    Perform(wm_nextdlgctl, 1,0);

    if key  = vk_insert then BitBtn16Click(self);

end;

procedure Tfalterapgrec.BitBtn16Click(Sender: TObject);
var
posicaoconta,codigo,passado,dtpassado,ntb,loc,tipoconta,mora:string;

tabela:tclientdataset;
begin

        focuscontrol(nil);

        if (DBEdit2.text='') or
           (evrdocumento.Text='') then begin
           showmessage('Preencha os campos corretamente!!!');
           abort;
       end;


       tabela  :=   tclientdataset.Create(application);

       if controle = 'pg' then begin
          tabela := fpagarlocaliza.tabela;
          mora := ',mora = ' + realdblstr(fpagarlocaliza.tabela.fieldbyname('mora').AsFloat);
          codigo := fpagarlocaliza.tabela.fieldbyname('codigo').AsString ;

       end else begin
        tabela := freceberlocaliza.tabela;
        codigo := freceberlocaliza.tabela.fieldbyname('codigo').AsString ;
       end;

       if  DBLookupComboBox1.Text <> '' then
           tipoconta  :=  'tipoconta = ' + quotedstr(DBLookupComboBox1.Text) +',';

       if  cposicao.Text <> '' then
           posicaoconta  :=  ', posicaoconta = ' + quotedstr(cposicao.Text) ;


        if ppassado.Visible then begin
           passado := ',passado = '+quotedstr(tabela.fieldbyname('passado').AsString);

           if tabela['datapassado']<> null then
              dtpassado := ',datapassado = '+  QuotedStr(FormatDateTime('yyyy-mm-dd',
                                                         tabela.fieldbyname('datapassado').AsDateTime));
        end;

        if controle = 'pg' then
           ntb :='tbpagar'
        else
           ntb :='tbreceber';


        with fdm.query1 do begin
             close;
              sql.clear;
              sql.add(  'update '+ntb+' set '+
             tipoconta +
             ' documento = ' +quotedstr(tabela.fieldbyname('documento').AsString) +
             ',letra = ' + quotedstr(tabela.fieldbyname('letra').AsString) +

             passado+
             dtpassado+

             ',codigo = ' + quotedstr(codigo) +
             posicaoconta+
             ',cheque = ' + quotedstr(tabela.fieldbyname('cheque').AsString) +
             ',agencia = ' + quotedstr(tabela.fieldbyname('agencia').AsString) +
             ',conta = ' + quotedstr(tabela.fieldbyname('conta').AsString) +
             ',banco = null'+


             mora+
             ',total = ' + realdblstr(tabela.fieldbyname('total').AsFloat)+
             ',desconto = ' + realdblstr(tabela.fieldbyname('desconto').AsFloat)+
             ',acrescimo = ' + realdblstr(tabela.fieldbyname('acrescimo').AsFloat)+
             ',vrdocumento = ' +realdblstr(tabela.fieldbyname('vrdocumento').AsFloat)+
             ',recebido = ' + realdblstr(tabela.fieldbyname('recebido').AsFloat)+
             ',diferenca = ' + realdblstr(tabela.fieldbyname('diferenca').AsFloat)+
             ',dtvencimento = ' +quotedstr(formatdatetime('yyyy-mm-dd',tabela.fieldbyname('dtvencimento').AsDateTime)) +
             ',obs = ' + quotedstr(tabela.fieldbyname('obs').AsString) +
             ' where chave = '+quotedstr(tabela.fieldbyname('chave').AsString)) ;
//              showmessage(commandtext);
             execsql;

        end;

        if controle = 'pg' then
           GALTERA('A Pagar',tabela.fieldbyname('codigo').asstring,'a')
        else
           GALTERA('A Receber',tabela.fieldbyname('codigo').asstring,'a');

        close;

        loc:= tabela.fieldbyname('chave').AsString;
        tabela.Cancel;
        tabela.Refresh;
        tabela.Locate('chave',loc,[]);

end;

procedure Tfalterapgrec.BitBtn17Click(Sender: TObject);

begin
        if fpagarlocaliza <> nil then
           fpagarlocaliza.tabela.Cancel
        else if freceberlocaliza <> nil then
           freceberlocaliza.tabela.Cancel;
        close;

end;

procedure Tfalterapgrec.enomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) and (enome.Text <> '') then
  begin
    with fdm.sg do
    begin
      Close;
             sql.clear;
             sql.add( 'select * from tbfornecedor where nome = ' +
                quotedstr(enome.Text) + ' or codigo = ' + quotedstr(enome.Text));
      Open;
    end;


      if fdm.sg['codigo'] <> null then
        preenche2Execute(self)

      else begin
         listagem('nome',enome.Text,'',7,0);

         if fdm.sg.Active then
            preenche2Execute(self);
    end;
  end;


end;

procedure Tfalterapgrec.Label44Click(Sender: TObject);
var
tbct:string;
begin

              if controle = 'rc' then
                 tbct :='R';

              Acesso1('Tipo Conta');
              fcadastrop:=tfcadastrop.Create(self,'conta'+tbct,'',
                      'Preencha os campos!',
                      'descricao','descricao',true );
              desativar(fcadastrop);
              fcadastrop.showmodal;
  fcadastrop.Release;
  fcadastroP := nil;
              tbconta.Refresh;


end;

procedure Tfalterapgrec.preencheExecute(Sender: TObject);
begin
       if fpagarlocaliza <> nil then begin
          fpagarlocaliza.tabela['nome'] := fdm.sg.fieldbyname('nome').AsString;
          fpagarlocaliza.tabela['codigo'] := fdm.sg.fieldbyname('codigo').AsString;
       end else begin
          freceberlocaliza.tabela['nome'] := fdm.sg.fieldbyname('nome').AsString;
          freceberlocaliza.tabela['codigo'] := fdm.sg.fieldbyname('codigo').AsString;
       end;

       fechatg;
end;

procedure Tfalterapgrec.preenche2Execute(Sender: TObject);
begin
       freceberlocaliza.tabela.Edit;
       freceberlocaliza.tabela['passado'] := fdm.sg.fieldbyname('nome').AsString;
       freceberlocaliza.tabela['datapassado'] := datetostr(now);
       fechatg;
end;

end.
