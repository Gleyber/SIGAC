unit uacertoborderodialogo;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, Grids, DBGrids, DBClient, Mask,
  ActnList, DBCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfacertoborderodialogo = class(TForm)
    Bevel1: TBevel;
    lvalor: TLabel;
    ldataacerto: TLabel;
    ldatamedio: TLabel;
    ldataantiga: TLabel;
    lprazomedio: TLabel;
    tabela: TClientDataSet;
    ds: TDataSource;
    DBGrid1: TDBGrid;
    tabelarecebimento: TStringField;
    tabelavalor: TFloatField;
    tabeladata: TDateField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ltotal: TLabel;
    lprazodata: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lprazo: TLabel;
    Label10: TLabel;
    lpermitido: TLabel;
    ComboBox1: TComboBox;
    MaskEdit1: TMaskEdit;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ActionList1: TActionList;
    cartao: TAction;
    avista: TAction;
    chequepre: TAction;
    aprazo: TAction;
    SpeedButton2: TSpeedButton;
    TOTAL: TAction;
    Label13: TLabel;
    lsoma: TLabel;
    Label15: TLabel;
    ldesconto: TLabel;
    ldiferenca: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    pcheque2: TPanel;
    lconta: TLabel;
    lagencia: TLabel;
    Label17: TLabel;
    Label42: TLabel;
    econta: TEdit;
    eagencia: TEdit;
    ebanco: TEdit;
    ncheque: TEdit;
    tabelacheque: TStringField;
    tabelaag: TStringField;
    tabelaconta: TStringField;
    tabelabanco: TStringField;
    t1: TZQuery;
    etipoconta: TDBLookupComboBox;
    d1: TDataSource;
    tabelacodconta: TIntegerField;
    procedure inserir(ch:string);
    procedure caixa;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1Enter(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cartaoExecute(Sender: TObject);
    procedure avistaExecute(Sender: TObject);
    procedure chequepreExecute(Sender: TObject);
    procedure aprazoExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure TOTALExecute(Sender: TObject);
    procedure Label17Click(Sender: TObject);
    procedure ebancoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure econtaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label16Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
  private
  totalcartao,totalcartaod,totalcheque,totalaprazo,totalavista,totmenor:double;
    { Private declarations }
  public
  descpercent,desconto,credito,vracerto : real;
  dtmedio:tdate;
  linkvenda,pzmedio:integer;
  nomecartao,pedidos,pagamento:string;
  cartao1 ,cheque1 ,aprazo1 :boolean;
    { Public declarations }



  end;




var
  facertoborderodialogo: Tfacertoborderodialogo;
  tipo,nomecartao:string;
  valortipo: real;



implementation

uses ufatura, funcoes ,udm, umanu, uacertobordero;

{$R *.dfm}




procedure Tfacertoborderodialogo.inserir(ch:string);
var
cp,vr,codconta2,codconta3,campo:string;
begin
           if ch = 'S' then begin
              cp := cp + ' banco, agencia, conta, cheque, ';
              vr := vr + quotedstr(tabela.fieldbyname('banco').AsString)+', '+
                         quotedstr(tabela.fieldbyname('ag').AsString)+', '+
                         quotedstr(tabela.fieldbyname('conta').AsString)+', '+
                         quotedstr(tabela.fieldbyname('cheque').AsString)+', ';
           end;

          if combobox1.Text = 'CARTÃO' then campo := 'contacartao'
          else                              campo := 'contacheque';

           selecione('select '+ campo+ ' as codconta2 from tbconfig');
           codconta2 := sqlpub.fieldbyname('codconta2').asstring;

           if ch <> '' then ch:= quotedstr(ch) else ch := 'null';

           selecione('Insert into tbreceber('+
                     cp+'codconta, documento, letra, codigo,nome, '+
                     ' dtemissao, dtvencimento, vrtitulo, vrdocumento, '+
                     ' total, diferenca,recebido, caixa, usuario, linkvenda, modulo, ch,emp, codconta2, codconta3, tpconta) '+
                     ' values( '+
                     vr+
                     quotedstr(tabela.fieldbyname('codconta').AsString)+
                     ', '+quotedstr(inttostr(linkvenda))+
                     ', '+quotedstr('1')+
                     ', '+quotedstr(facertobordero.codigocliente)+
                     ', '+quotedstr(facertobordero.nomecliente)+
                     ', now() '+
                     ', '+quotedstr(formatdatetime('yyyy-mm-dd',tabela.fieldbyname('data').AsDateTime))+
                     ', '+realdblstr(tabela.fieldbyname('valor').AsFloat)+
                     ', '+realdblstr(tabela.fieldbyname('valor').AsFloat)+
                     ', '+realdblstr(tabela.fieldbyname('valor').AsFloat)+
                     ', '+realdblstr(tabela.fieldbyname('valor').AsFloat)+
                     ', '+realdblstr(0)+
                     ', '+quotedstr(fdm.tbcaixagrupo.fieldbyname('chave').asstring)+
                     ', '+inttostr(usuariolink)+
                     ', '+quotedstr(inttostr(linkvenda))+
                     ', '+quotedstr('28')+
                     ', '+ch+
                     ', '+inttostr(emp)+
                     ', '+codconta2+
                     ', '+codconta2+
                     ', ' + quotedstr(t1.fieldbyname('codigo').AsString)+')');
end;


procedure tfacertoborderodialogo.caixa;
var
AVISTA,APRAZO,CHEQUE,CARTAO:DOUBLE;
begin


          AVISTA :=0;
          APRAZO :=0;
          CHEQUE :=0;
          CARTAO :=0;

         tabela.Filtered := FALSE; 
         tabela.First;

         while not tabela.Eof do begin
               if tabela['recebimento'] = 'À VISTA' then
                  avista := avista + tabela.fieldbyname('valor').AsFloat;
               if tabela['recebimento'] = 'A PRAZO' then
                  APRAZO := APRAZO + tabela.fieldbyname('valor').AsFloat;
               if tabela['recebimento'] = 'CHEQUE' then
                  CHEQUE := CHEQUE + tabela.fieldbyname('valor').AsFloat;
               if tabela['recebimento'] = 'CARTÃO' then
                  CARTAO := CARTAO + tabela.fieldbyname('valor').AsFloat;
               TABELA.Next;
         end;

  fdm.tbentradacaixa.CreateDataSet;
  fdm.tbentradacaixa.Open;
  fdm.tbentradacaixa.Insert;

  fdm.tbentradacaixa['documento'] := 'ACERTO (P '+ pedidos + ')';

  if AVISTA >0 then
     fdm.tbentradacaixa['dinheiro'] := AVISTA;

  if APRAZO >0 then
     fdm.tbentradacaixa['fiado'] := APRAZO;

  if cheque >0 then
     fdm.tbentradacaixa['cheque'] := cheque;

  if cartao >0 then
     fdm.tbentradacaixa['cartao'] := cartao;

  fdm.tbentradacaixa['data'] := datetostr(now);
  fdm.tbentradacaixa['hora'] := timetostr(now);
  fdm.tbentradacaixa['usuario'] := usuario;
  fdm.tbentradacaixa['descricao'] := 'ACERTO ' + facertobordero.nomecliente;
  fdm.tbentradacaixa['tipo'] := 'RECEB';
  fdm.tbentradacaixa['linkvenda'] := linkvenda;
  fdm.tbentradacaixa['modulo'] := 'V';

  if tabela.FieldByName('recebimento').AsString = 'CARTAO C'  then
     fdm.tbentradacaixa['nomecartao'] := nomecartao ;

  if tabela.FieldByName('recebimento').AsString = 'CARTAO D'  then
     fdm.tbentradacaixa['nomecartaod'] := nomecartao ;

  grava(fdm.tbentradacaixa,nil, 'tbentradacaixa');
  fdm.tbentradacaixa.Close;

end;



procedure Tfacertoborderodialogo.FormShow(Sender: TObject);
begin
        tabela.CreateDataSet;
        tabela.Open;
        ldiferenca.Caption := formatfloat('0.00',vracerto);
        t1.open;
end;

procedure Tfacertoborderodialogo.BitBtn2Click(Sender: TObject);
begin
        close;
end;

procedure Tfacertoborderodialogo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        release;
end;

procedure Tfacertoborderodialogo.Edit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if key = 13 then
           if combobox1.Text = 'CHEQUE' then ncheque.SetFocus
           else totalexecute(self);
end;

procedure Tfacertoborderodialogo.SpeedButton1Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir este item? ',
    'Confirme', 4 + MB_ICONQUESTION) = idYes then
  begin

  tabela.Delete;
  totalexecute(self);
  combobox1.SetFocus;
  end;

end;

procedure Tfacertoborderodialogo.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
        abort;
end;

procedure Tfacertoborderodialogo.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = 13)  then
    Perform(wm_nextdlgctl, 0,0);
  if (key = 27)  then
    Perform(wm_nextdlgctl, 1,0);

end;

procedure Tfacertoborderodialogo.ComboBox1Enter(Sender: TObject);
begin
        ComboBox1.Color := clinfobk;
end;

procedure Tfacertoborderodialogo.ComboBox1Exit(Sender: TObject);
    procedure loccombo(st:string);
    begin
           t1.Locate('descricao',st,[]);
           etipoconta.KeyField  := t1.fieldbyname('descricao').AsString;
    end;

begin
        ComboBox1.Color := clwhite;

        if ComboBox1.Text = 'À VISTA' then begin
           maskedit1.Text := datetostr(now);
           maskedit1.ReadOnly := true;
          // loccombo('À VISTA');
        end else maskedit1.ReadOnly := false;

        pcheque2.Visible := ComboBox1.Text = 'CHEQUE';

//        if ComboBox1.Text = 'CHEQUE' then loccombo('CHEQUE');
//        if ComboBox1.Text = 'A PRAZO' then loccombo('BOLETO');
//        if ComboBox1.Text = 'CARTÃO' then loccombo('VISA');




end;

procedure Tfacertoborderodialogo.MaskEdit1Enter(Sender: TObject);
begin
        MaskEdit1.Color := clinfobk;
end;

procedure Tfacertoborderodialogo.MaskEdit1Exit(Sender: TObject);
begin
        MaskEdit1.Color := clwhite;
end;

procedure Tfacertoborderodialogo.Edit1Enter(Sender: TObject);
begin
        Edit1.Color := clinfobk;
end;

procedure Tfacertoborderodialogo.Edit1Exit(Sender: TObject);
begin
        Edit1.Color := clwhite;
end;

procedure Tfacertoborderodialogo.BitBtn1Click(Sender: TObject);
var
  carencia:real;
  i:integer;
  desc :string;
begin

        fmenu.caixafechadoExecute(self);

       //if desconto <= 0 then carencia :=10;

       if formatdatetime('dddd',date) = 'SEGUNDA-FEIRA' then
          carencia := 7
       else carencia := 9;

       if strtofloat(ltotal.Caption) < strtofloat(lvalor.Caption) then begin
          Application.MessageBox('O valor recebido é menor que o devedor, verificar!',  'Erro', 0 + MB_ICONerror);
          abort;
       end;


       if (strtoint(lprazomedio.Caption)+carencia) < strtoint(lprazo.Caption) then
          senhagerencial('ACERTO VENDA',
                         'OS VENCIMENTOS ESTÃO FORA DO PERMITIDO!',
                         'PRAZO MAIOR QUE O PERMITIDO!');


        pagamento :='';
        tabela.DisableControls;
        tabela.First;
        facertobordero.tipopagamento :='';

        while not tabela.Eof do begin
              facertobordero.tipopagamento :=  facertobordero.tipopagamento  + #13+
                                               tabela.fieldbyname('data').AsString + '   '+
                                               format('%n',[tabela.fieldbyname('valor').Asfloat]) + '   '+
                                               tabela.fieldbyname('recebimento').AsString ;
              tabela.Next;
        end;
        tabela.EnableControls;

        selecione('select max(numero) as chave from tbacertovenda');
        linkvenda := sqlpub.fieldbyname('chave').asinteger + 1;

        //selecione('insert into tbacertovenda (numero) values ('+ inttostr(linkvenda) +')');

        avistaexecute(self);
        aprazoexecute(self);
        cartaoexecute(self);
        chequepreexecute(self);
        //caixa;

        selecione('insert into tbacertovenda '+
                           ' (data,datamedio,numero,codigo,nome,documento,soma,desconto,total,dinheiro,'+
                           'fiado,chequepre,cartao,acrescimo,credito,caixa,usuario,emp) values('+
                           ' now(),'+
                           quotedstr(ldatamedio.Caption)+ ' ,'+
                           quotedstr(inttostr(linkvenda))+ ' ,'+
                           quotedstr(facertobordero.codigocliente)+ ' ,'+
                           quotedstr(facertobordero.nomecliente)+ ' ,'+
                           quotedstr('ACERTO (P '+ pedidos + ')')+ ' ,'+
                           realdblstr(desconto+vracerto + facertobordero.credito)+','+
                           realdblstr(desconto)+','+
                           realdblstr(vracerto + facertobordero.credito)+','+
                           realdblstr(totalavista)+','+
                           realdblstr(totalaprazo)+','+
                           realdblstr(totalcheque)+','+
                           realdblstr(totalcartao)+','+
                           realdblstr(facertobordero.debito)+','+
                           realdblstr(facertobordero.credito)+','+
                           inttostr(fdm.tbcaixagrupo.fieldbyname('chave').AsInteger)+ ','+
                           inttostr(usuariolink)+ ','+
                           inttostr(emp)+')');


       //imprime


        facertobordero.tipopagamento := facertobordero.tipopagamento + #13+ #13+pagamento;

        tabela.Filtered := false;



  with facertobordero.DbGrid1 do   begin

    for i := 0 to Pred(SelectedRows.Count) do  begin
        DataSource.DataSet.Bookmark := SelectedRows[i];

        if descpercent > 0 then
           desc := ' descontoreal = total * '+ realdblstr(descpercent) +' /100,' +
                   //' total = total - descontoreal, '+
                   ' fiado = fiado - descontoreal, ' +
                   ' total = if (acrescimo is not null,acrescimo,0) + if(valoricmsubstituicao is not null,valoricmsubstituicao,0) +'+
                   ' if(totalpeca is not null,totalpeca,0) + if (vrcouvert is not null,vrcouvert,0)+ if(totalservico is not null,totalservico,0) -'+
                   ' if(descontoreal is not null,descontoreal,0)- if (devolucao is not null,devolucao,0),'
        else desc :='';

        selecione('update tbpedido set ' + desc +
                  ' avulso = "N", '+
                  ' linkvenda = '+quotedstr(inttostr(linkvenda))+
                  ' where numero = '+ quotedstr(facertobordero.DbGrid1.DataSource.DataSet.fieldbyname('numero').AsString));

    end;
  end;

  selecione( 'update tbcliente set '+
                              ' credito = credito -'+  realdblstr(credito) +
                              ', debito = 0 '+
                               ' where codigo = '+ quotedstr(facertobordero.codigocliente));

          facertobordero.tabela.Close;
          facertobordero.tabela.open;
          facertobordero.formatarExecute(self);
          facertobordero.calculacreditoexecute(self);
          facertobordero.totalizarExecute(self);
          fmenu.faturaExecute(self);
          saldoavulsa(facertobordero.codigocliente);
          saldocliente(facertobordero.codigocliente);



  close;




end;

procedure Tfacertoborderodialogo.cartaoExecute(Sender: TObject);
var
i:integer;

begin
        vf:=false;
        tabela.Filtered := false;
        tabela.Filter := 'recebimento =''CARTÃO''';
        tabela.Filtered := true;
        totalcartao :=0;

        if not tabela.IsEmpty then begin
           totalcartao:=0;


           tabela.First;
           for i:=1 to tabela.RecordCount do begin

              totalcartao:=totalcartao +  tabela.fieldbyname('valor').AsFloat;

              inserir('C');

              tabela.Next;

           end;
        end;
end;

procedure Tfacertoborderodialogo.avistaExecute(Sender: TObject);
var
i:integer;
begin
        tabela.Filtered := false;
        tabela.Filter := 'recebimento =''À VISTA''';
        tabela.Filtered := true;
        totalavista:=0;


        if not tabela.IsEmpty then begin

           tabela.First;
           for i:=1 to tabela.RecordCount do begin
               totalavista:=totalavista +  tabela.fieldbyname('valor').AsFloat;
               tabela.Next;
           end;
        end;


end;

procedure Tfacertoborderodialogo.chequepreExecute(Sender: TObject);
var
i:integer;

begin
        vf:=false;
        //cheque1:=true;

        tabela.Filtered := false;
        tabela.Filter := 'recebimento =''CHEQUE''';
        tabela.Filtered := true;
        totalcheque :=0;

        if not tabela.IsEmpty then begin


           tabela.First;
           for i:=1 to tabela.RecordCount do begin

              totalcheque:=totalcheque +  tabela.fieldbyname('valor').AsFloat;

              inserir('S');

              tabela.Next;

           end;

        end;


end;

procedure Tfacertoborderodialogo.aprazoExecute(Sender: TObject);
var
i:integer;

begin
        vf:=false;

        tabela.Filtered := false;
        tabela.Filter := 'recebimento =''A PRAZO''';
        tabela.Filtered := true;
        totalaprazo :=0;

        if not tabela.IsEmpty then begin


           tabela.First;
           for i:=1 to tabela.RecordCount do begin

              totalaprazo:=totalaprazo +  tabela.fieldbyname('valor').AsFloat;

              inserir('');

              tabela.Next;

           end;
        end;
end;

procedure Tfacertoborderodialogo.SpeedButton2Click(Sender: TObject);
begin
        winexec('calc.exe', sw_show);
end;

procedure Tfacertoborderodialogo.TOTALExecute(Sender: TObject);
var
totmaior:real;
dt,dtmedio:tdate;
dias,diamedio,pzmedio,i:integer;
begin
      selecione('select vendaaprazo,vendacheque,vendacartao from tbcliente where codigo = ' +
                quotedstr(facertobordero.codigocliente));

      if (combobox1.Text = 'CHEQUE') and (sqlpub['vendacheque']<>'S') then msg('#Este cliente não tem permissão para comprar no cheque.',0);
      if (combobox1.Text = 'A PRAZO') and (sqlpub['vendaaprazo']<>'S') then msg('#Este cliente não tem permissão para comprar a prazo.',0);
      if (combobox1.Text = 'CARTÃO') and (sqlpub['vendacartao']<>'S') then msg('#Este cliente não tem permissão para comprar no cartão.',0);

      sqlpub := nil;


      if (combobox1.Text <> '') and
         (maskedit1.Text <> '  /  /    ') and
         (etipoconta.Text <> '') and
         (edit1.Text <> '') then begin

         if combobox1.Text = 'CHEQUE' then
            if (ncheque.Text = '') or
               (ebanco.Text = '') or
               (eagencia.Text = '') or
               (econta.Text = '') then msg('#Preencha os dados do cheque.',0);

         tabela.Insert;
         tabela['recebimento'] := combobox1.Text ;
         tabela['data'] := maskedit1.Text ;
         tabela['valor'] := edit1.Text ;
         tabela['recebimento'] := combobox1.Text ;
         t1.Locate('descricao',etipoconta.Text,[]);
         tabela['codconta'] := t1.fieldbyname('chave').AsString;

         if combobox1.Text = 'CHEQUE' then begin
            tabela['cheque'] := ncheque.Text ;
            tabela['banco'] := ebanco.Text ;
            tabela['ag'] := eagencia.Text ;
            tabela['conta'] := econta.Text ;
         end;

         tabela.Post;
       end;


           tabela.First;
  //       tabela.DisableControls;

  totmenor := 0;
  totmaior := 0;

  dt:= strtodate(ldatamedio.Caption);

    for i := 1 to tabela.recordcount do    begin

      totmenor := totmenor + tabela.FieldByName('valor').Asfloat;
      dias := trunc(tabela.FieldByName('data').Asfloat - dt) + 1;
      totmaior := totmaior + tabela.FieldByName('valor').Asfloat * dias;
    tabela.Next;
  end;


   if totmenor <>0 then
      diamedio := trunc(totmaior / totmenor)
   else
      diamedio :=0;

   dtmedio := dt + diamedio - 1;

      lprazo.Caption := inttostr(diamedio-1);
      lprazodata.Caption := formatdatetime('dd/mm/yyyy',dt + diamedio-1);
      ltotal.Caption := formatfloat('0.00',totmenor);
      if vracerto - totmenor >= 0 then ldiferenca.Caption := formatfloat('0.00',vracerto-totmenor)
                                  else ldiferenca.Caption := formatfloat('0.00',0);      

      edit1.clear;
      maskedit1.clear;
      combobox1.text :='';
      ncheque.clear;
      ebanco.clear;
      eagencia.clear;
      econta.clear;
      combobox1.SetFocus;

end;

procedure Tfacertoborderodialogo.Label17Click(Sender: TObject);
begin
         cadp ('tbnbanco', 'select chave, nome, numero from tbnbanco', '',
              'nome','numero',
              '','','',
              '','','',
              '','','',
              '',
              '',
              '',
              '',
              2,0);

end;

procedure Tfacertoborderodialogo.ebancoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);


begin
    fechatg;
    if (ebanco.Modified) and
       (key = 13) and
       (ebanco.Text <> '') then  begin
       if (tabela.Active =false) or (tabela.RecordCount <=0) then abort;

      with fdm.sg do begin
           Close;
           sql.clear;
           sql.add('select * from tbnbanco where '+
                   'numero = '+quotedstr(ebanco.Text));
           Open;
      end;

      if fdm.sg['chave'] <> null then begin
         ebanco.Text := fdm.sg.fieldbyname('nome').AsString;
         //preenchechequeExecute(self);
         fechatg;


      end else begin
         listagem('nome',ebanco.Text,'',25,0);

         if fdm.sg.Active then begin
            ebanco.Text := fdm.sg.fieldbyname('nome').AsString;
            //preenchechequeExecute(self);
            fechatg;
         end;

      end;
    end;

end;

procedure Tfacertoborderodialogo.econtaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
        if key = 13 then totalexecute(self);
end;

procedure Tfacertoborderodialogo.Label16Click(Sender: TObject);
begin
      Edit1.Text := floattostr(vracerto-totmenor);

end;

procedure Tfacertoborderodialogo.Label14Click(Sender: TObject);
begin
        cadplanocontas;
        t1.Refresh;
end;

end.
