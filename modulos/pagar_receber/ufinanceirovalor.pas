unit ufinanceirovalor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Buttons, Spin, DB,
  DBClient,
  Mask,  Provider, ZAbstractRODataset, ZAbstractDataset,
  ZDataset ,mapimail;

type
  Tffinanceirovalor = class(TForm)
    RadioGroup1: TRadioGroup;
    Panel1: TPanel;
    lemprestimo: TLabel;
    combo: TDBLookupComboBox;
    pboleto: TPanel;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    Label2: TLabel;
    eobs: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Label14: TLabel;
    cboletovr: TEdit;
    Label15: TLabel;
    cboletoqtd: TSpinEdit;
    Label16: TLabel;
    boletodia: TMaskEdit;
    Label17: TLabel;
    cboletodoc: TEdit;
    BitBtn4: TBitBtn;
    tb: TClientDataSet;
    Label19: TLabel;
    edbase: TMaskEdit;
    tbtipoconta: TStringField;
    tbcodigoconta: TIntegerField;
    tbdocumento: TStringField;
    tbletra: TStringField;
    tbcodigo: TIntegerField;
    tbnome: TStringField;
    tbdtemissao: TDateField;
    tbdtvencimento: TDateField;
    tbvrtitulo: TFloatField;
    tbvrcalc: TFloatField;
    tbcpmf: TFloatField;
    tbtxem: TFloatField;
    tbtxbc: TFloatField;
    tbvrem: TFloatField;
    tbvrbc: TFloatField;
    tbvrcliente: TFloatField;
    tbobs: TStringField;
    tbtp: TStringField;
    tbLiqEmpresa: TFloatField;
    tbLiqBanco: TFloatField;
    SpeedButton2: TSpeedButton;
    tbchave: TIntegerField;
    ds: TDataSource;
    tbretorno: TFloatField;
    tbcliente: TStringField;
    tbdtpagamento: TDateField;
    tbflag: TStringField;
    tbnbanco: TStringField;
    dg: TDataSource;
    sg: TZQuery;
    lpgto: TLabel;
    epgto: TDBLookupComboBox;
    dsconta: TDataSource;
    tbconta: TZQuery;
    tbtipopgto: TStringField;
    rmensalidade: TCheckBox;
    tbdata: TDateField;
    gp: TZQuery;
    tbautorizacao: TStringField;
    tbcarteira: TStringField;
    tbcanal: TStringField;
    rabater: TCheckBox;
    tbgp: TStringField;


    procedure comboclic;

    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure comboClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdcvrKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edbaseExit(Sender: TObject);
  private

    { Private declarations }
  public
  socio,promocao,codigo,nome,nbanco,codigogp,autorizacao,canal,carteira,mov,gp_:string;
  ura:boolean;
    { Public declarations }
  end;

var
  ffinanceirovalor: Tffinanceirovalor;

implementation

uses udm,funcoes;

{$R *.dfm}




procedure Tffinanceirovalor.comboclic;
var
dia,i,mes,mesatual,ano:integer;
begin
        i:=0;
        dia:=0;

        while dia < (fdm.tp.fieldbyname('recebimento').asinteger-1) do begin
                     dia := Dias_Uteis(strtodate(edbase.Text),strtodate(edbase.Text)+
                                 (fdm.tp.fieldbyname('recebimento').asinteger-1) + i);
                     boletodia.Text := datetostr(strtodate(edbase.Text)+ (fdm.tp.fieldbyname('recebimento').asinteger-1)+i);
              inc(i);
        end;




        case radiogroup1.ItemIndex of

             0:  begin
                 if combo.Focused then
                    edbase.SetFocus;

                while dia < (fdm.tp.fieldbyname('recebimento').asinteger-1) do begin
                      dia := Dias_Uteis(strtodate(edbase.Text),strtodate(edbase.Text)+
                                 (fdm.tp.fieldbyname('recebimento').asinteger-1) + i);
                      boletodia.Text := datetostr(strtodate(edbase.Text)+ (fdm.tp.fieldbyname('recebimento').asinteger-1)+i);
                   inc(i);
               end;

                 {boletodia.Text :=  dataval(strtodate(edbase.Text)+
                                           (fdm.tp.fieldbyname('recebimento').asinteger - dia+
                                           fdm.tp.fieldbyname('recebimento').asinteger));}
             end;

             1: begin
                if combo.Focused then
                   edbase.SetFocus;
                 boletodia.Text :=  dataval(strtodate(edbase.Text)+
                                           (fdm.tp.fieldbyname('recebimento').asinteger - dia+
                                           fdm.tp.fieldbyname('recebimento').asinteger));
                  
             end;
                    
             2: begin
                i:= strtoint(formatdatetime('dd',strtodate(edbase.Text)));
                mesatual:= strtoint(formatdatetime('mm',strtodate(edbase.Text)));


                if i <= fdm.tp.fieldbyname('v3a').asinteger then begin
                   dia := fdm.tp.fieldbyname('v3r').asinteger ;
                   mes :=1;

                end else if (i >= fdm.tp.fieldbyname('v1').asinteger) and
                   (i <= fdm.tp.fieldbyname('v1a').asinteger) then begin
                   dia := fdm.tp.fieldbyname('v1r').asinteger ;
                   mes :=1;


                end else if (i >=fdm.tp.fieldbyname('v2').asinteger) and
                        (i <=fdm.tp.fieldbyname('v2a').asinteger) then begin
                   dia := fdm.tp.fieldbyname('v2r').asinteger ;
                   mes :=1;

                end else if i >=fdm.tp.fieldbyname('v3').asinteger then begin
                    dia := fdm.tp.fieldbyname('v3r').asinteger;
                    mes :=2;
                end;

                if mesatual + mes >12 then begin
                   ano := 1;
                   mes := (mesatual + mes) -12;
                end else
                   mes := mesatual + mes ;

                ano := ano + strtoint(formatdatetime('yyyy',strtodate(edbase.Text)));

                boletodia.Text := formatfloat('00',dia)+'/'+
                                  formatfloat('00',mes)+'/'+
                                  inttostr(ano);
             end;

             3: begin
                i:= strtoint(formatdatetime('dd',strtodate(edbase.Text)));
                mesatual:= strtoint(formatdatetime('mm',strtodate(edbase.Text)));


                if i <= fdm.tp.fieldbyname('v3a').asinteger then begin
                   dia := fdm.tp.fieldbyname('v3r').asinteger ;
                   mes :=0;

                end else if (i >= fdm.tp.fieldbyname('v1').asinteger) and
                   (i <= fdm.tp.fieldbyname('v1a').asinteger) then begin
                   dia := fdm.tp.fieldbyname('v1r').asinteger ;
                   mes :=0;


                end else if (i >=fdm.tp.fieldbyname('v2').asinteger) and
                        (i <=fdm.tp.fieldbyname('v2a').asinteger) then begin
                   dia := fdm.tp.fieldbyname('v2r').asinteger ;
                   mes :=0;

                end else if i >=fdm.tp.fieldbyname('v3').asinteger then begin
                    dia := fdm.tp.fieldbyname('v3r').asinteger;
                    mes :=1;
                end;

                if mesatual + mes >12 then begin
                   ano := 1;
                   mes := (mesatual + mes) -12;
                end else
                   mes := mesatual + mes ;

                ano := ano + strtoint(formatdatetime('yyyy',strtodate(edbase.Text)));

                boletodia.Text := formatfloat('00',dia)+'/'+
                                  formatfloat('00',mes)+'/'+
                                  inttostr(ano);
             end;


             4: begin
                boletodia.Text := edbase.Text;

                if cboletovr.Text = '' then
                   cboletovr.Text := '50';

                end;

             5: begin
                i:= strtoint(formatdatetime('dd',strtodate(edbase.Text)));
                mesatual:= strtoint(formatdatetime('mm',strtodate(edbase.Text)));


                if i <= fdm.tp.fieldbyname('v3a').asinteger then begin
                   dia := fdm.tp.fieldbyname('v3r').asinteger ;
                   mes :=1;

                end else if (i >= fdm.tp.fieldbyname('v1').asinteger) and
                   (i <= fdm.tp.fieldbyname('v1a').asinteger) then begin
                   dia := fdm.tp.fieldbyname('v1r').asinteger ;
                   mes :=1;


                end else if (i >=fdm.tp.fieldbyname('v2').asinteger) and
                        (i <=fdm.tp.fieldbyname('v2a').asinteger) then begin
                   dia := fdm.tp.fieldbyname('v2r').asinteger ;
                   mes :=1;

                end else if i >=fdm.tp.fieldbyname('v3').asinteger then begin
                    dia := fdm.tp.fieldbyname('v3r').asinteger;
                    mes :=2;
                end;

                if mesatual + mes >12 then begin
                   ano := 1;
                   mes := (mesatual + mes) -12;
                end else
                   mes := mesatual + mes ;

                ano := ano + strtoint(formatdatetime('yyyy',strtodate(edbase.Text)));

                boletodia.Text := formatfloat('00',dia)+'/'+
                                  formatfloat('00',mes)+'/'+
                                  inttostr(ano);
             end;

             6: boletodia.Text := datetostr(now);
             7: boletodia.Text := datetostr(now);


             8: begin
                i:= strtoint(formatdatetime('dd',strtodate(edbase.Text)));
                mesatual:= strtoint(formatdatetime('mm',strtodate(edbase.Text)));


                if i <= fdm.tp.fieldbyname('v3a').asinteger then begin
                   dia := fdm.tp.fieldbyname('v3r').asinteger ;
                   mes :=0;

                end else if (i >= fdm.tp.fieldbyname('v1').asinteger) and
                   (i <= fdm.tp.fieldbyname('v1a').asinteger) then begin
                   dia := fdm.tp.fieldbyname('v1r').asinteger ;
                   mes :=0;


                end else if (i >=fdm.tp.fieldbyname('v2').asinteger) and
                        (i <=fdm.tp.fieldbyname('v2a').asinteger) then begin
                   dia := fdm.tp.fieldbyname('v2r').asinteger ;
                   mes :=0;

                end else if i >=fdm.tp.fieldbyname('v3').asinteger then begin
                    dia := fdm.tp.fieldbyname('v3r').asinteger;
                    mes :=1;
                end;

                if mesatual + mes >12 then begin
                   ano := 1;
                   mes := (mesatual + mes) -12;
                end else
                   mes := mesatual + mes ;

                ano := ano + strtoint(formatdatetime('yyyy',strtodate(edbase.Text)));

                boletodia.Text := formatfloat('00',dia)+'/'+
                                  formatfloat('00',mes)+'/'+
                                  inttostr(ano);
             end;

        end;
end;





procedure Tffinanceirovalor.RadioGroup1Click(Sender: TObject);
begin

        rabater.Visible := RadioGroup1.ItemIndex = 4;
        
        if RadioGroup1.ItemIndex = 4 then
           label17.Caption := 'Descrição da conta'
        else
           label17.Caption := 'Nome do Cliente';

        rmensalidade.Visible := RadioGroup1.ItemIndex = 2;
        lpgto.Visible := RadioGroup1.ItemIndex = 4;
        epgto.Visible := RadioGroup1.ItemIndex = 4;

        tb.close;
        fdm.tp.close;
        fdm.tp.Filtered := false;
        fdm.tp.Filter :=   'tp = '+quotedstr(inttostr(RadioGroup1.ItemIndex));
        fdm.tp.Filtered := true;
        fdm.tp.open;

        case RadioGroup1.ItemIndex of
             0: lemprestimo.Caption:= 'Escolha o empréstimo CDC';
             1: lemprestimo.Caption:= 'Escolha o empréstimo consignado';
             2: lemprestimo.Caption:= 'Escolha o cartão';
             3: lemprestimo.Caption:= 'Escolha o boleto';
             4: lemprestimo.Caption:= 'Escolha a Mensalidade';
             5: lemprestimo.Caption:= 'Escolha o cartão';
             6: lemprestimo.Caption:= 'Escolha o Créd. Pessoal';
             7: lemprestimo.Caption:= 'Escolha o Empréstimo';
             8: lemprestimo.Caption:= 'Escolha o cartão';             
        end;

        if Active then combo.SetFocus;

        dbgrid1.Columns[11].Visible := RadioGroup1.ItemIndex = 1;
end;

procedure Tffinanceirovalor.FormShow(Sender: TObject);
begin
        tbp('select * from tbconffin',nil,'','');
        RadioGroup1.ItemIndex :=2;
        fdm.tp.IndexFieldNames :='descricao';
        combo.ListSource:= fdm.dp;
        caption := 'Cód/Nome: '+codigo + '  -  '+nome + '   -   Sócio = '+socio + '    -    Promoção = '+promocao;
        edbase.Text := datetostr(now);
        tbconta.open;

        if promocao = 'S' then socio := 'S';
end;

procedure Tffinanceirovalor.SpeedButton1Click(Sender: TObject);
var
st:string;
vrsite, vrura:double;
begin
        if combo.Text = '' then begin
           showmessage('Escolha o tipo!!!');
           abort;
        end;

        st:='';

        case RadioGroup1.ItemIndex of
             0: st:= 'EMPREST. '+combo.Text +' >> PARA SÓCIO:'+#13+#13+
                     'De '+ inttostr(fdm.tp.fieldbyname('nsd1_1').asinteger)+
                     ' a '+ inttostr(fdm.tp.fieldbyname('nsd2_1').asinteger)+
                     ' parcelas cobrar '+ inttostr(fdm.tp.fieldbyname('nsper_1').asinteger)+'% do total'+#13+#13+

                     'De '+ inttostr(fdm.tp.fieldbyname('nsd1_2').asinteger)+
                     ' a '+ inttostr(fdm.tp.fieldbyname('nsd2_2').asinteger)+
                     ' parcelas cobrar '+ inttostr(fdm.tp.fieldbyname('nsper_2').asinteger)+'% do total'+#13+#13+#13+

                     'EMPREST. '+combo.Text +' >> PARA NÃOS ÓCIO:'+#13+#13+
                     'De '+ inttostr(fdm.tp.fieldbyname('sd1').asinteger)+
                     ' a '+ inttostr(fdm.tp.fieldbyname('sd2').asinteger)+
                     ' cobrar '+ inttostr(fdm.tp.fieldbyname('sper').asinteger)+'% do total'+#13+#13+#13+

                     'Taxa banco   =R$'+format('%n',[fdm.tp.fieldbyname('taxabc').asfloat])+#13+#13+
                     'Taxa Empresa =R$'+format('%n',[fdm.tp.fieldbyname('taxa').asfloat])+#13+#13+
                     'CPMF = '+format('%n',[fdm.tp.fieldbyname('sper2').asfloat])+'%'+#13+#13+
                     'Pagar em '+inttostr(fdm.tp.fieldbyname('recebimento').asinteger)+' úteis';

             1: begin st:= 'EMPREST. ' + combo.Text +' >> PARA NÃO SÓCIO:'+#13+#13+
                     'Cobrar '+ inttostr(fdm.tp.fieldbyname('nsper_2').asinteger)+'% do total'+#13+#13+

                     'EMPREST. ' +combo.Text +' >> PARA SÓCIO:'+#13+#13+
                     'Cobrar '+ inttostr(fdm.tp.fieldbyname('nsper_1').asinteger)+'% do total'+#13+#13+#13+

                     'TAXA DE RETORNO:'+#13+#13;

                     with fdm.query1 do begin
                          close;
                     sql.clear;
                     sql.add( 'select * from tbconffini where link = '+
                                         quotedstr(fdm.tp.fieldbyname('chave').AsString));
                          open;
                          while not eof do begin
                                st := st + 'De '+inttostr(fieldbyname('qtdini').asinteger)+
                                           ' A '+inttostr(fieldbyname('qtdfin').asinteger)+
                                           ' = '+floattostr(fieldbyname('percent').asfloat)+'%'+#13;
                                next;
                          end;
                          close;
                     end;

                     st := st + #13+'Taxa banco   =R$'+format('%n',[fdm.tp.fieldbyname('taxabc').asfloat])+#13+#13+
                     'Taxa Empresa =R$'+format('%n',[fdm.tp.fieldbyname('taxa').asfloat])+#13+#13+
                     'CPMF = '+format('%n',[fdm.tp.fieldbyname('sper2').asfloat])+'%'+#13+#13+
                     'Pagar em '+inttostr(fdm.tp.fieldbyname('recebimento').asinteger)+' úteis';
                end;

             2: begin
               if codigogp = '' then  msg('#Verifique no cadastro deste cliente: Grupo Cartão',0);

               with gp do begin
                    sql.Clear;
                    sql.Add('select * from tbconffin where codigo = ' + quotedstr(codigogp));
                    open;
               end;


                vrsite := gp.fieldbyname('vrsite').AsFloat;
                vrura  := gp.fieldbyname('vrura').AsFloat;

                st:= 'CARTÃO ' +combo.Text +#13+#13+
                     'De '+ inttostr(gp.fieldbyname('nsd1_1').asinteger)+
                     ' a '+ inttostr(gp.fieldbyname('nsd2_1').asinteger)+
                     ' parcelas cobrar: Banco = '+ inttostr(gp.fieldbyname('nsper_1').asinteger)+'% do total'+
                     ' .. Empresa = '+ inttostr(gp.fieldbyname('sper').asinteger)+'% do total'+ #13+#13+

                     'De '+ inttostr(gp.fieldbyname('nsd1_2').asinteger)+
                     ' a '+ inttostr(gp.fieldbyname('nsd2_2').asinteger)+
                     ' parcelas cobrar: Banco = '+ inttostr(gp.fieldbyname('nsper_2').asinteger)+'% do total'+
                     ' .. Empresa = '+ inttostr(gp.fieldbyname('sper2').asinteger)+'% do total'+ #13+#13+

                     'De '+ inttostr(gp.fieldbyname('nsd1_3').asinteger)+
                     ' a '+ inttostr(gp.fieldbyname('nsd2_3').asinteger)+
                     ' parcelas cobrar: Banco = '+ inttostr(gp.fieldbyname('nsper_3').asinteger)+'% do total'+
                     ' .. Empresa = '+ inttostr(gp.fieldbyname('sper3').asinteger)+'% do total'+ #13+#13+


                     'CPMF = '+format('%n',[gp.fieldbyname('taxabc').asfloat])+'% do total'+#13+
                     'Valor parc site = R$ '+format('%n',[vrsite])+#13+
                     'Valor parc ura  = R$ '+format('%n',[vrura]);

                     gp.Close;
             end;
             3: st:= 'BOLETO ' +combo.Text +#13+#13+
                     'CPMF = '+format('%n',[fdm.tp.fieldbyname('taxabc').asfloat])+'% do total'+#13+
                     '% por Parcela = '+format('%n',[fdm.tp.fieldbyname('taxa').asfloat])+#13+
                     'Taxa Emissão = '+format('%n',[fdm.tp.fieldbyname('sper').asfloat])+#13+
                     'Taxa Compensação = R$ '+format('%n',[fdm.tp.fieldbyname('sper2').asfloat]);

             4: st:= 'MENSALIDADE ' +combo.Text +#13+#13+
                     'Taxa Banco = '+format('%n',[fdm.tp.fieldbyname('taxabc').asfloat])+#13+
                     'Taxa Empresa = R$ '+format('%n',[fdm.tp.fieldbyname('taxa').asfloat]);

             5: st:= 'ADIANTAMENTO ' +combo.Text +#13+#13+
                     'Taxa empresa por parcela = R$ '+format('%n',[fdm.tp.fieldbyname('taxa').asfloat]);

             6: st:= 'CRÉDITO PESSOAL ' +combo.Text +#13+#13+
                     'TacBco = R$ '+format('%n',[fdm.tp.fieldbyname('taxabc').asfloat])+#13+
                     'Fator/Parcela Bco (digitar)'+#13+
                     'Fator/Parcela Emp (digitar)'+#13+
                     '% S/ VR CLIENTE '+format('%n',[fdm.tp.fieldbyname('taxa').asfloat]);

             7: st:= 'GNATUS ' +combo.Text +#13+#13+
                     'TacBco = R$ '+format('%n',[fdm.tp.fieldbyname('taxabc').asfloat])+#13+
                     '% VITALCRED '+format('%n',[fdm.tp.fieldbyname('taxa').asfloat])+#13+
                     '0BS: Monos de 12 parcelas a %vitalcred é dividida por qtd parcelas';



        end;

        showmessage(st);

end;

procedure Tffinanceirovalor.comboClick(Sender: TObject);
begin
        comboclic;
end;

procedure Tffinanceirovalor.Button1Click(Sender: TObject);
var
ndoc:integer;
letra:boolean;
st:string;
begin

       if (tb.Active= false) or (tb.RecordCount<1) then begin
           showmessage('Não há dados!!!');
           abort;
       end;


       if nbanco ='' then begin
           showmessage('Você precisa escolher, no cadastro deste cliente, o banco!!!');
           abort;
       end;


      if (RadioGroup1.ItemIndex=4) and (combo.Text='ESTORNO CARTAO') then begin

          st := msgi('Digite o número de autorizacao do cartão que deseja estornar:',0);

          selecione('select codigo from tbfinanceiro where Autorizacao = ' + quotedstr(st));

          if sqlpub.RecordCount <=0 then
             selecione('select codigo from tbfinanceirop where Autorizacao = ' + quotedstr(st));

          if sqlpub.RecordCount <=0 then msg('#Autorização não localizada',0);

          if sqlpub.FieldByName('codigo').AsInteger <> strtoint(codigo) then  msg('#Esta autorização não é deste cliente, é do cliente código '+sqlpub.fieldbyname('codigo').asstring,0);
                                            //otalempresa = null, txem = null, vrem = null, txbc=null, vrcliente=null,
          selecione('update tbfinanceiro set  liqempresa=null where Autorizacao = ' + quotedstr(st));
          selecione('update tbfinanceirop set liqempresa=null where Autorizacao = ' + quotedstr(st));

      end;


        with fdm.query1 do begin
             sql.clear;
             sql.add('select nfinanceiro from tbconfig ');
             open;
             ndoc := fieldbyname('nfinanceiro').AsInteger + 1;
             close;
        end;

        letra := tb.RecordCount >1;

        if (tb.Active) and (tb.RecordCount>0) then begin
           tb.First;
           while not tb.Eof do begin
                 tb.edit;
                 tb['documento']:= ndoc;

                 if letra then
                    tb['letra']:= tb.RecordCount;

                 grava(tb,nil,'tbfinanceiro');
                 tb.cancel;

                 tb.Next;
           end;



          selecione('update tbconfig set nfinanceiro = '+quotedstr(inttostr(ndoc+1)));

          if radiogroup1.ItemIndex <> 4 then
             selecione('update tbcliente set np = "A" where codigo ='+quotedstr(codigo));

           selecione('update tbfinanceiro set totalempresa = if(LiqEmpresa is null,0,LiqEmpresa) + '+
                     '                if(adiantamento is null,0,adiantamento) where totalempresa is null');


           if (Active) and (Application.MessageBox('Gerado com sucesso. Deseja gerar outra? ',
                            'Confirme', 4 + MB_ICONQUESTION) = idno) then close;


           tb.Close;

        end else showmessage('Não há dados.');

end;

procedure Tffinanceirovalor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if (key = 13) then
    Perform(wm_nextdlgctl, 0,0);
  if (key = 27) then
    Perform(wm_nextdlgctl, 1,0);

end;

procedure Tffinanceirovalor.cdcvrKeyPress(Sender: TObject; var Key: Char);
begin
        if not (key in ['0'..'9',#8,',']) then abort;
end;

procedure Tffinanceirovalor.BitBtn4Click(Sender: TObject);
var
databs : tdate;
valorb,vrcalc,cpmf,txbc,txem,vrbc,vrem,vrcliente,liqempresa,liqbanco,retorno,parcela,taxa:double;
i,qtd,dia,mes,mesatual,ano,anoatual,diau:integer;
st,st2:string;

begin


       //se ha valor e tipo emprestimo
       if (strisfloat(cboletovr.Text) = false) or ((Active) and (combo.Text='')) or
          (boletodia.Text='  /  /    ') or (edbase.Text = '  /  /    ')  then
          msg('#Preencha todos os campos, inclusive o tipo.', 0);

       if (Active) and (cboletodoc.Text='') and (RadioGroup1.ItemIndex<>4) then begin
          Application.MessageBox('Quem é o cliente.','Dados Insuficiente', 0 + MB_ICONwarning);
          abort;
       end;


       if Active then begin
          selecione('select chave from tbfinanceiro where '+
                    ' codigo ='+quotedstr(codigo) +
                    ' and tp = '+quotedstr(inttostr(RadioGroup1.ItemIndex))+
                    ' and vrtitulo = '+ realdblstr(strtofloat(cboletovr.Text))+
                    ' and data = now()');

          if sqlpub['chave']<> null then
             msg('Existe uma conta lançada, para este cliente, com os dados iguais a esta. cuidado!',0);
          sqlpub := nil;
       end;

       //valores para trabalhar
       databs := strtodate(edbase.Text);
       valorb := strtofloat(cboletovr.Text);
       qtd := cboletoqtd.Value;
       dia:= strtoint(formatdatetime('dd',strtodate(boletodia.Text)));


        case RadioGroup1.ItemIndex of

               0:begin
                     with fdm.Query1 do begin
                          close;
                          sql.Clear;
                          sql.Add('select * from tbfator where tp = "0" and qtd = ' +
                                  quotedstr(cboletoqtd.Text)+
                                  ' and link = '+quotedstr(fdm.tp.fieldbyname('chave').AsString));
                          //debugstr(fdm.Query1)  ;
                          open;
                          if fieldbyname('fator').AsFloat >0 then
                             retorno := valorb * fieldbyname('fator').AsFloat
                          else retorno :=0;
                          close;
                     end;


                   //vr - vrempresa
                   vrcalc := valorb - fdm.tp.fieldbyname('taxabc').AsFloat-
                                      fdm.tp.fieldbyname('taxa').AsFloat-retorno;
                   //taxa empresa
                   if socio = 'S' then begin

                      if qtd <= fdm.tp.fieldbyname('nsd2_1').AsFloat then
                         txem := fdm.tp.fieldbyname('nsper_1').AsFloat
                      else
                         txem := fdm.tp.fieldbyname('nsper_2').AsFloat;

                  end else
                        txem := fdm.tp.fieldbyname('sper').AsFloat;


                   //vr / parcela
                   cpmf:=fdm.tp.fieldbyname('sper2').AsFloat ;
                   vrbc:=fdm.tp.fieldbyname('taxabc').AsFloat+retorno ;
                   vrem:=fdm.tp.fieldbyname('taxa').AsFloat ;
                   vrcliente:=vrcalc - (vrcalc * txem/100);
                   retorno:=0;

                   //liquido
                   vrcalc  :=  vrcalc  + vrem ;
                   liqbanco:= vrbc + (vrcalc * cpmf/100);

                   liqempresa:=fdm.tp.fieldbyname('taxa').AsFloat +
                               ((vrcalc - vrem)*txem/100)-
                               (cpmf*vrcalc/100);

                  // if (qtd <= 8) and
                   if  (inputquery('Valor recebido','Digite o valor que o banco vai pagar:',st)) then begin;

                      if strisfloat(st) = false then begin
                         showmessage('Digite um número válido.');
                         abort;
                      end else begin
                          liqempresa := strtofloat(st) - vrcliente ;
                          liqbanco:= valorb - vrcliente-liqempresa;
                      end;
                   end;


             end;

             1:begin
                   //vr - vrempresa
                   vrcalc := valorb - fdm.tp.fieldbyname('taxabc').AsFloat-
                                      fdm.tp.fieldbyname('taxa').AsFloat;

                   //taxa empresa
                   if socio = 'N' then
                     txem := fdm.tp.fieldbyname('nsper_2').AsFloat
                   else
                     txem := fdm.tp.fieldbyname('nsper_1').AsFloat;

                     with fdm.query1 do begin
                          close;
                             sql.clear;
                             sql.add( 'select * from tbconffini where link = '+
                                         quotedstr(fdm.tp.fieldbyname('chave').AsString));
                          fdm.tbquery1.Open;
                          fdm.tbquery1.IndexFieldNames:='qtdfin';

                          fdm.tbquery1.FindNearest([cboletoqtd.text]);
                          retorno := fdm.tbquery1.fieldbyname('percent').AsFloat;
                          fdm.tbquery1.IndexFieldNames:='';
                          fdm.tbquery1.close;
                     end;


                   //vr / parcela
                   cpmf:=fdm.tp.fieldbyname('sper2').AsFloat ;
                   vrbc:=fdm.tp.fieldbyname('taxabc').AsFloat ;
                   vrem:=fdm.tp.fieldbyname('taxa').AsFloat ;

                   vrcliente:=vrcalc - (vrcalc * txem/100);
                   //liquido
                   vrcalc  :=  vrcalc  + vrem ;
                   liqbanco:= fdm.tp.fieldbyname('taxabc').AsFloat +
                              (vrcalc * cpmf/100);

                   liqempresa:=fdm.tp.fieldbyname('taxa').AsFloat +
                               ((vrcalc - vrem)*txem/100)-
                               (cpmf*vrcalc/100)+ (retorno*vrcalc/100);



             end;


             2:begin  //cartao

               if codigogp = '' then  msg('#Verifique no cadastro deste cliente: Grupo Cartão',0);

               with gp do begin
                    sql.Clear;
                    sql.Add('select * from tbconffin where codigo = ' + quotedstr(codigogp));
                    open;
               end;


                if ura then taxa := gp.fieldbyname('vrura').AsFloat
                else        taxa := gp.fieldbyname('vrsite').AsFloat;

               //bloq qtd parcelas a mais
               if qtd > gp.fieldbyname('nsd2_3').asinteger then begin
                  Application.MessageBox(pchar('Está configurado em até '+
                                        inttostr(gp.fieldbyname('nsd2_3').asinteger)+
                                        ' parcelas.'),'Qtd Parcelas', 0 + MB_ICONwarning);
                  gp.Close;
                  abort;
               end;
                                          
                   //vr - vrempresa
                   vrcalc := valorb - (taxa * qtd);
                   //taxa por parcela
                   cpmf := gp.fieldbyname('taxabc').AsFloat;

                   if qtd <= gp.fieldbyname('nsd2_1').AsInteger then begin
                      txem := gp.fieldbyname('sper').AsFloat;
                      txbc := gp.fieldbyname('nsper_1').AsFloat;

                   end else if qtd <= gp.fieldbyname('nsd2_2').AsInteger then begin
                      txem := gp.fieldbyname('sper2').AsFloat;
                      txbc := gp.fieldbyname('nsper_2').AsFloat;


                   end else begin
                      txem := gp.fieldbyname('sper3').AsFloat;
                      txbc := gp.fieldbyname('nsper_3').AsFloat;
                   end;

                   //vr / parcela
                   vrem:=taxa ;
                   vrcliente:=(vrcalc -(txem*vrcalc/100))/qtd;

                   //liquido
                   liqbanco:= (cpmf*(valorb/qtd)/100) + (txbc*(valorb/qtd)/100);
                   liqempresa:= ((valorb-vrcalc)/qtd) + (txem*(vrcalc/qtd)/100) - liqbanco;
                   gp.Close;
             end;

             3: begin
                   //vr - vrempresa
                   vrcalc := (valorb/cboletoqtd.Value) - fdm.tp.fieldbyname('sper').AsFloat;
                   //taxa por parcela
                   cpmf := fdm.tp.fieldbyname('taxabc').AsFloat;
                   txem := fdm.tp.fieldbyname('taxa').AsFloat;
                   //vr / parcela
                   vrbc:= fdm.tp.fieldbyname('sper2').AsFloat;
                   vrem:=fdm.tp.fieldbyname('sper').AsFloat ;
                   vrcliente:=vrcalc - (txem*vrcalc/100);
                   //vrem:= 1.15;

                   //liquido
                   liqbanco:= (cpmf*valorb/100) + vrbc;
                   liqempresa:= vrem + (txem*vrcalc/100)- liqbanco ;
                   //showmessage(floattostr(vrem) +'-'+ floattostr((txem*vrcalc/100))+'-'+ floattostr(liqbanco));

                end;

             4: begin
                   //vr - vrempresa
                   vrcalc := strtofloat(cboletovr.Text);
                   txbc := tbconta.fieldbyname('taxa').AsFloat;
                   //vr / parcela
                   vrbc:= fdm.tp.fieldbyname('taxabc').AsFloat ;
                   vrem:=fdm.tp.fieldbyname('taxa').AsFloat ;
                   vrcliente:=vrcalc*(-1) ;

                   //liquido
                   liqbanco:= vrbc+ (txbc * vrcalc /100);
                   liqempresa:= vrcalc-liqbanco;
                   //showmessage(floattostr(vrem) +'-'+ floattostr((txem*vrcalc/100))+'-'+ floattostr(liqbanco));
                   valorb := vrcalc ;

                   if rabater.Checked = false then  vrcliente:=0;

                end;


             5:begin

                          selecione('select * from tbconffini where link = '+
                                    quotedstr(fdm.tp.fieldbyname('chave').AsString)+
                                    ' and qtdini <= '+realdblstr(strtofloat(cboletovr.Text)) +
                                    ' order by percent desc');
                          retorno := sqlpub.fieldbyname('percent').AsFloat;
                          sqlpub := nil;


                      if inputquery('Valor recebido','Digite o valor que o banco vai pagar:',st) then else abort;

                      if strisfloat(st) = false then begin
                         showmessage('Digite um número válido.');
                         abort;
                      end else begin
                          vrcalc := strtofloat(cboletovr.Text);
                          liqbanco:= valorb - strtofloat(st);
                          liqempresa := retorno + fdm.tp.fieldbyname('taxa').AsFloat * cboletoqtd.value;
                          vrcliente := strtofloat(st)-liqempresa;
                          vrem:= retorno +  fdm.tp.fieldbyname('taxa').AsFloat ;
                          retorno :=0;
                      end;
                end;


             6:begin
                     with fdm.Query1 do begin
                          close;
                          sql.Clear;
                          sql.Add('select * from tbfator where tp = "6" and qtd = ' +
                                  quotedstr(cboletoqtd.Text));
                          open;
                          txem := fieldbyname('fator').AsFloat;
                          txbc := fieldbyname('fatorbc').AsFloat;
                          close;
                     end;

                     vrcalc := strtofloat(cboletovr.Text);
                     vrbc:=vrcalc * txbc ;
                     vrem:=vrcalc * txem ;
                     vrcliente := vrcalc - fdm.tp.fieldbyname('taxabc').AsFloat;

                     if (fdm.tp.fieldbyname('taxa').AsFloat>0) and (vrcliente>0) then
                         retorno := fdm.tp.fieldbyname('taxa').AsFloat * vrcliente /100;

                     liqbanco:= vrbc*cboletoqtd.Value;
                     liqempresa := (vrem*cboletoqtd.Value)-liqbanco + retorno;
                     retorno :=0;
                     vrem := vrem - vrbc;
                     liqbanco:= fdm.tp.fieldbyname('taxabc').AsFloat + liqbanco;

                end;


             7:begin
                     vrcalc := valorb - fdm.tp.fieldbyname('taxabc').AsFloat;
                     txem := fdm.tp.fieldbyname('taxa').AsFloat;
                     vrbc:= fdm.tp.fieldbyname('taxabc').AsFloat;
                     vrcliente := vrcalc;

                     if cboletoqtd.Value >= 12 then
                        vrem:=vrcalc * txem /100
                     else
                        vrem:=vrcalc*(txem/12*cboletoqtd.Value)/100;

                     liqbanco:= vrbc;
                     liqempresa := vrem;

                end;


             8: begin
                   vrcalc := strtofloat(cboletovr.Text);
                   txem := fdm.tp.fieldbyname('sper').AsFloat;
                   txbc := fdm.tp.fieldbyname('nsper_1').AsFloat;
                   vrem := fdm.tp.fieldbyname('taxa').AsFloat;
                   liqbanco:= txbc*vrcalc/100 ;
                   liqempresa:=(txem*vrcalc/100) +vrem ;
                   vrcliente:=vrcalc-liqbanco-liqempresa;
                end;

                        
        end;

       //se o valor for insuficiente
       if (vrcalc <= 0)  then begin
          Application.MessageBox('O Valor menos descontos por parcela deve ser maior que 0 (zero)','Valor Insuficiente', 0 + MB_ICONwarning);
          abort;
       end;

       tb.IndexFieldNames:='dtvencimento';
       tb.Close;
       tb.CreateDataSet;
       tb.Open;

       //tb.AddIndex('dtvencimento', 'dtvencimento', [ixDescending]);
       //tb.Indexname:='dtvencimento' ;


       if (RadioGroup1.ItemIndex = 0) or
          (RadioGroup1.ItemIndex = 1)or
          (RadioGroup1.ItemIndex = 5) or
          (RadioGroup1.ItemIndex = 6)or
          (RadioGroup1.ItemIndex = 7)or
          (RadioGroup1.ItemIndex = 8) then
          qtd :=1;

       mesatual:= strtoint(formatdatetime('mm',strtodate(boletodia.Text)));
       mes :=0;
       ano :=0;

       for i :=1 to qtd do begin

          tb.Insert;
          tb['chave']:= i;
          tb['nbanco']:= nbanco;

          tb['tp']:= fdm.tp.fieldbyname('tp').asstring;
          tb['tipoconta']:= fdm.tp.fieldbyname('descricao').asstring;
          if epgto.Visible then
             tb['tipopgto']:= epgto.Text;

          if (rmensalidade.Visible) and (rmensalidade.Checked) then begin
             tb['tp']:= 4;
             tb['tipoconta']:= 'MENS CARTÃO';
             tb['tipopgto']:= combo.Text;
          end;

          tb['codigoconta']:= fdm.tp.fieldbyname('codigo').AsInteger ;
          tb['documento']:= cboletodoc.Text;

          if autorizacao <> '' then tb['autorizacao']:= autorizacao;
          if canal <> '' then tb['canal']:= canal;

          if qtd >1 then
             tb['letra']:= i;

          tb['carteira']:= carteira;
          tb['gp']:= gp_;
          tb['codigo']:= codigo;
          tb['nome']:= nome;
          tb['dtemissao']:= databs ;
          tb['dtpagamento']:= databs + (30*i) ;

          //boleto
          if RadioGroup1.ItemIndex = 3 then  tb['dtpagamento']:= boletodia.Text;

          if mesatual + (i-1) > 12 then  begin
             mes :=  (mesatual + (i-1)) mod 12;

          end else
             mes := mesatual + (i-1) ;

          if (mes = 1) and (i>1) then
             ano := ano + 1;

          if mes = 0 then mes :=12;

          anoatual := ano + strtoint(formatdatetime('yyyy',strtodate(boletodia.Text)));

          if (RadioGroup1.ItemIndex=0) or (RadioGroup1.ItemIndex=1) then begin
              tb['dtvencimento']:= dataval(strtodate(boletodia.Text));

              dia := Dias_Uteis(tb.fieldbyname('dtvencimento').AsDateTime -5,
                                tb.fieldbyname('dtvencimento').AsDateTime);

              tb['dtpagamento']:= tb.fieldbyname('dtvencimento').AsDateTime - 5 - (5-dia);


          end else  if (RadioGroup1.ItemIndex=2) or (RadioGroup1.ItemIndex=3) or
               (RadioGroup1.ItemIndex=5)then
               tb['dtvencimento']:= dataval(strtodate(formatfloat('00',dia)+'/'+
                                    formatfloat('00',mes)+'/'+
                                    inttostr(anoatual)))
          else begin
               tb['dtvencimento']:= dataval(strtodate(formatfloat('00',strtofloat(copy(boletodia.Text,1,2)))+'/'+
                                    formatfloat('00',mes)+'/'+
                                    inttostr(anoatual)));
               tb['dtpagamento']:= tb['dtvencimento'];
          end;



          tb['vrtitulo']:= valorb;

          tb['cpmf']:= cpmf;
          tb['txem']:= txem;
          tb['txbc']:= txbc;
          tb['vrem']:= vrem;
          tb['vrbc']:= vrbc;
          tb['retorno']:= retorno;

          if RadioGroup1.ItemIndex <= 1 then
             qtd :=1;

             if vrcliente <>0 then
                tb['vrcliente']:= vrcliente;

             if liqbanco >0 then
                tb['liqbanco']:= liqbanco;

             if liqempresa >0 then
                tb['liqempresa']:= liqempresa;

          tb['obs']:= eobs.Text;
          tb['cliente']:= cboletodoc.Text;
          tb['data']:= datetostr(now);

          tb.Post;
       end;

end;

procedure Tffinanceirovalor.SpeedButton2Click(Sender: TObject);
begin
             impgrade(tb,nil,ds,dbgrid1,'Financeiro', 'Financeiro','',false);
end;

procedure Tffinanceirovalor.edbaseExit(Sender: TObject);
begin
        if combo.Text <> '' then
           comboClick(self);
end;

end.
{                   if (qtd <= 8) and
                      (inputquery('Valor recebido','Digite o valor que o banco vai pagar:',st)) then begin;

                      if strisfloat(st) = false then begin
                         showmessage('Digite um número válido.');
                         abort;
                      end else begin
                          liqbanco:= valorb - strtofloat(st);
                          liqempresa := strtofloat(st) - vrcliente ;
                      end;
                   end;
}










