unit ucadgv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, DB, DBClient, ActnList,
  ExtCtrls, jpeg,shellapi, printers, RLReport, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tfcadgv = class(TForm)
    btngravar: TSpeedButton;
    btnsair: TSpeedButton;
    ActionList1: TActionList;
    INSERIR: TAction;
    Alterar: TAction;
    TC: TAction;
    componente: TAction;
    regiao: TAction;
    SpeedButton1: TSpeedButton;
    qalmax: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    r1: TRLAngleLabel;
    r2: TRLLabel;
    r3: TRLLabel;
    r4: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    RLLabel15: TRLLabel;
    RLDBMemo3: TRLDBMemo;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLDBText20: TRLDBText;
    RLLabel33: TRLLabel;
    ldescricao: TRLMemo;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLLabel40: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel43: TRLLabel;
    RLLabel34: TRLLabel;
    produto: TAction;
    cliente: TAction;
    funcionario: TAction;
    fornecedor: TAction;
    servico: TAction;
    rlcli: TRLPanel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText16: TRLDBText;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText19: TRLDBText;
    i1: TRLImage;
    pfor: TPanel;
    lcombo: TLabel;
    combos: TDBLookupComboBox;
    lcombo2: TLabel;
    combos2: TDBLookupComboBox;
    lcombo3: TLabel;
    combos3: TDBLookupComboBox;

    
    procedure dirnfe(Sender: TObject);
    procedure buscacepaqui (tbz:tzquery; str,cp:string);
    procedure preenchecli(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure Enterdbmemo(Sender: TObject);
    procedure Exitdbmemo(Sender: TObject);

    procedure cnpj(Sender: TObject);
    procedure edcep(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure edcepc(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure edcepE(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure ieExit(Sender: TObject);

    procedure crialbel(cap:string;l,t,w:integer);
    procedure criaedit(cp,cap:string;l,t,w:integer);
    procedure criadbtext(cp,cap:string;l,t,w:integer;lb:boolean);
    procedure criacombo(cp,cap:string;l,t,w:integer;tb,list:string);
    procedure criacheck(cp,cap:string;l,t,w:integer);
    procedure criaradio(cp,cap:string;l,t,w:integer;list,vallist:string);
    procedure criamemo(cp,cap:string;t,H:integer);


    procedure totalizar;

    procedure Exittot(Sender: TObject);
    procedure Exitmc(Sender: TObject);
    procedure exitpercent(Sender: TObject);

    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ecodigoEnter(Sender: TObject);
    procedure epercent3Enter(Sender: TObject);
    procedure epercent3Exit(Sender: TObject);
    procedure evalor3Exit(Sender: TObject);
    procedure evalor3Enter(Sender: TObject);
    procedure INSERIRExecute(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure AlterarExecute(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure emunicipioExit(Sender: TObject);
    procedure eenderecoExit(Sender: TObject);
    procedure ecnpjKeyPress(Sender: TObject; var Key: Char);
    procedure TCExecute(Sender: TObject);
    procedure enomecurtoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure componenteExecute(Sender: TObject);
    procedure regiaoExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure qalmaxBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure produtoExecute(Sender: TObject);
    procedure clienteExecute(Sender: TObject);
    procedure funcionarioExecute(Sender: TObject);
    procedure fornecedorExecute(Sender: TObject);
    procedure servicoExecute(Sender: TObject);
    procedure RLDBText12BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);

  private
   { Private declarations }
  dt,iso,gnfe_,empsimples_:boolean;
  pula,p:integer;


  nnull1,nnull2,nnull3,nnull4,ndp1,ndp2,ndp3,ndp4,ainc1,ainc2,ainc3,ainc4,ainc5,ainc6:string;

  public
  ds,dcombo:tdatasource;
  tabela,zcombo:tzquery;
  modo: string;
  nummodulo:integer;
    { Public declarations }
  

  constructor Create(AOwner: TComponent;
                //campos que nao pode ser nulos
                nnull1_,nnull2_,nnull3_,nnull4_,

                //campos que nao deve duplicar
                ndp1_,ndp2_,ndp3_,ndp4_,

                //campos auto incremento: preenchimento automatico
                ainc1_,ainc2_,ainc3_,ainc4_,ainc5_,ainc6_,

                //combo1, tabela,  campo tabela/lista
                combo1_, tb1, list1,   combo2_, tb2, list2,
                combo3_, tb3, list3,   combo4_, tb4, list4,

                //check
                ck1_ ,ck2_ , ck3_, ck4_,

               //cp radio1, lista, val lista
                rd1_ ,rd1lst_, rd1lstv,     rd2_ ,rd2lst_, rd2lstv,
                rd3_ ,rd3lst_, rd3lstv,     rd4_ ,rd4lst_, rd4lstv,

                //memos e qtd linhas
                m1_,m2_,m3_,m4_:string; h1_,h2_,h3_,h4_:integer;ds_:tdatasource;tabela_:tzquery;nummodulo_:integer); reintroduce;

                

end;

var
  fcadgv: Tfcadgv;
  percent,estoque: real;


implementation
uses funcoes, udm, umanu,   UvalidaIE, ucadg;
{$R *.dfm}

constructor Tfcadgv.Create(AOwner: TComponent;
                //campos que nao pode ser nulos
                nnull1_,nnull2_,nnull3_,nnull4_,

                //campos que nao deve duplicar
                ndp1_,ndp2_,ndp3_,ndp4_,

                //campos auto incremento: preenchimento automatico
                ainc1_,ainc2_,ainc3_,ainc4_,ainc5_,ainc6_,

                //combo1, tabela,  campo tabela/lista
                combo1_, tb1, list1,   combo2_, tb2, list2,
                combo3_, tb3, list3,   combo4_, tb4, list4,

                //check
                ck1_ ,ck2_ , ck3_, ck4_,

               //cp radio1, lista, val lista
                rd1_ ,rd1lst_, rd1lstv,     rd2_ ,rd2lst_, rd2lstv,
                rd3_ ,rd3lst_, rd3lstv,     rd4_ ,rd4lst_, rd4lstv,

                //memos e qtd linhas
                m1_,m2_,m3_,m4_:string; h1_,h2_,h3_,h4_:integer;ds_:tdatasource;tabela_:tzquery;nummodulo_:integer);






var
tp,i,esq,l,w,lin,w_ant:integer;
cp :string;
begin

Inherited Create(AOwner);
                  
         nummodulo:= nummodulo_;
         ds := ds_;
         tabela := tabela_;
         //estes nao podem ser nulos
         nnull1 := nnull1_;
         nnull2 := nnull2_;
         nnull3 := nnull3_;
         nnull4 := nnull4_;

         //estes nao podem duplicar
         ndp1  := ndp1_;
         ndp2  := ndp2_;
         ndp3  := ndp3_;
         ndp4  := ndp4_;

         //campos auto incrementos
         ainc1 := ainc1_;
         ainc2 := ainc2_;
         ainc3 := ainc3_;
         ainc4 := ainc4_;
         ainc5 := ainc5_;
         ainc6 := ainc6_;

         if nummodulo in [101,102,32] then pula :=4;
         if nummodulo in [103,104] then pula :=1;
         if nummodulo in [0,31] then pula :=3;
         if nummodulo in [11] then pula :=4;
         if nummodulo in [12] then pula :=4;


         tp:= 50 ;
         lin :=1;
         l :=93;

         with tabela do begin
              for i := 1 to FieldCount - 1 do  begin

                  cp := lowercase(Fields[i].FieldName);

                  if (lowercase(Fields[i].fieldName) <> 'chave') and
                     (lowercase(Fields[i].fieldName) <> 'link')  and
                     (lowercase(Fields[i].fieldName) <> 'flag')  and
                     (lowercase(Fields[i].fieldName) <> 'cdemp')  and
                     (lin <=10) then begin

                     //tamanho:
                     //se for check
                     if (lowercase(ck1_) = cp) or (lowercase(ck2_) = cp) or
                        (lowercase(ck3_) = cp) or (lowercase(ck4_) = cp) then
                        W := (length(capcp(cp))*8) + 10


                     //se for radio
                     else if lowercase(rd1_) = cp then
                        W := (length(rd1lst_)*8) + 40
                     else if lowercase(rd2_) = cp then
                        W := (length(rd2lst_)*8) + 40
                     else if lowercase(rd3_) = cp then
                        W := (length(rd3lst_)*8) + 40
                     else if lowercase(rd4_) = cp then
                        W := (length(rd4lst_)*8) + 40



                     //se for memo
                     else if (lowercase(m1_) = cp) or (lowercase(m2_) = cp) or
                        (lowercase(m3_) = cp) or (lowercase(m4_) = cp) then
                        W := 693



                     else if (Fields[i].ClassName = 'TIntegerField') or
                        (Fields[i].ClassName = 'TTimeField')    then
                         W :=45

                     else if (Fields[i].ClassName = 'TFloatField') or
                              (Fields[i].ClassName = 'TDateField') then
                         W :=60

                     else if (fieldbyname(cp).Size <= 3) then
                         W :=20

                     else if (fieldbyname(cp).Size > 3) and
                             (fieldbyname(cp).Size <=10) then
                        W :=65

                     else if (fieldbyname(cp).Size > 10) and
                             (fieldbyname(cp).Size <=20) then
                        W :=80

                     else if (fieldbyname(cp).Size > 20) and
                             (fieldbyname(cp).Size <=40) then
                        W :=150

                     else if fieldbyname(cp).Size = 255 then
                        W :=693

                     else W :=200;

                     //posicao esquerda
                     if i>1 then
                        l := l + w_ant +1;

                     if (l+w) > 786 then begin//se maior que 786 comecao no inicio
                        l:=93;
                        tp := tp + 30; //topo
                        inc(lin);
                     end;


                     if (w <= 69) and((lowercase(combo1_) = cp) or (lowercase(combo2_) = cp) or
                        (lowercase(combo3_) = cp) or(lowercase(combo4_) = cp)) then w:=70;


                    if (nummodulo=0) and
                       ((lowercase(cp)= 'codregime') or (lowercase(cp)= 'ipi'))  then w:=  295;

                     // se for para criar combos

                     if lowercase(cp) = 'uf' then begin
                        w := 40;
                        criacombo(cp,capcp(cp),l,tp,w,tb1,list1);

                     end else if lowercase(combo1_) = cp then
                        criacombo(cp,capcp(cp),l,tp,w,tb1,list1)

                     else if lowercase(combo2_) = cp then
                        criacombo(cp,capcp(cp),l,tp,w,tb2,list2)

                     else if lowercase(combo3_) = cp then
                        criacombo(cp,capcp(cp),l,tp,w,tb3,list3)

                     else if lowercase(combo4_) = cp then
                        criacombo(cp,capcp(cp),l,tp,w,tb4,list4)



                     //cria os checks
                     else if lowercase(ck1_) = cp then
                          criacheck(cp,capcp(cp),l,tp,w)

                     else if lowercase(ck2_) = cp then
                          criacheck(cp,capcp(cp),l,tp,w)

                     else if lowercase(ck3_) = cp then
                          criacheck(cp,capcp(cp),l,tp,w)

                     else if lowercase(ck4_) = cp then
                          criacheck(cp,capcp(cp),l,tp,w)




                     else if lowercase(rd1_) = cp then //cria os radiobutton
                          criaradio(cp,capcp(cp),l,tp-12,w,rd1lst_,rd1lstv)

                     else if lowercase(rd2_) = cp then
                          criaradio(cp,capcp(cp),l,tp-12,w,rd2lst_,rd2lstv)

                     else if lowercase(rd3_) = cp then
                          criaradio(cp,capcp(cp),l,tp-12,w,rd3lst_,rd3lstv)

                     else if lowercase(rd4_) = cp then
                          criaradio(cp,capcp(cp),l,tp-12,w,rd4lst_,rd4lstv)




                     //memos
                     else if lowercase(m1_) = cp then
                          criamemo(cp,capcp(cp),tp,h1_)
                     else if lowercase(m2_) = cp then
                          criamemo(cp,capcp(cp),tp,h2_)
                     else if lowercase(m3_) = cp then
                          criamemo(cp,capcp(cp),tp,h3_)
                     else if lowercase(m4_) = cp then
                          criamemo(cp,capcp(cp),tp,h4_)




                     else begin//edits
                        if ((nummodulo = 101) and (cp='peso')) or (cp='totaldespfix') then else
                        criaedit(cp,capcp(cp), l, tp, w);
                     end;


                     // alterar o proximo topo se o campo for memo
                     if      (lowercase(m1_) = cp) then
                         tp := (tp + 3) + (18*(h1_-1))
                     else if (lowercase(m2_) = cp) then
                         tp := (tp + 3) + (18*(h2_-1))
                     else if (lowercase(m3_) = cp) then
                         tp := (tp + 3) + (18*(h3_-1))
                     else if (lowercase(m4_) = cp) then
                         tp := (tp + 3) + (18*(h4_-1));


                     w_ant := w;

                  end;
              end;

           end;
           //preenchimento automático
//           if ainc1_ <> '' then
  //            if (Fields[i].ClassName = 'TDateField') then

end;













procedure Tfcadgv.dirnfe(Sender: TObject);
begin
        fdm.OpenDialog.FileName := '';
        fdm.OpenDialog.Execute;
        tabela.edit;
        if fdm.OpenDialog.FileName <> '' then
           tabela['dirnfe'] :=substitui(ExtractFilePath(fdm.OpenDialog.FileName),'\','/');

end;


procedure Tfcadgv.exittot(Sender: TObject);
begin
        with sender as tdbedit do begin
             color := clwhite;
             if modified then
                totalizar;
        end;

end;


procedure Tfcadgv.exitpercent(Sender: TObject);
var
percent :string;
begin

        with sender as tdbedit do begin
             color := clwhite;

             if Modified = True then  begin

                if datafield = 'vrvenda' then
                   percent := 'percent'

                else if datafield = 'vratacado' then
                   percent := 'percentatacado'

                else if datafield = 'valor3' then
                   percent := 'percent3';


                 if (tabela.FieldByName(datafield).AsFloat>0) and
                     (tabela.FieldByName('vrunit').AsFloat>0) then

                    tabela[percent]:= tabela.FieldByName(datafield).AsFloat * 100 /
                                              tabela.FieldByName('vrunit').AsFloat - 100
                 else
                       tabela.FieldByName(percent).clear;

                 totalizar;
             end;
        end;
end;


procedure Tfcadgv.exitmc(Sender: TObject);
var
vrunit,despesaacessoria,icm,ipi,desctotal:double;
begin
        with sender as tdbedit do begin
             color := clwhite;
             if Modified then begin


             if responsavel = 'MC ABRASIVOS' then begin
                totunit(tabela);

               if (tabela.FieldByName('vrvenda').AsFloat>0) and
                  (tabela.FieldByName('vrunit').AsFloat>0) then

                   tabela['percent'] :=(tabela.FieldByName('vrvenda').AsFloat)* 100 /
                                        tabela.FieldByName('vrunit').AsFloat - 100

               else
                  tabela.FieldByName('percent').clear;


               if (tabela.FieldByName('vratacado').AsFloat>0) and
                  (tabela.FieldByName('vrunit').AsFloat>0) then

                  tabela.FieldByName('percentatacado').AsFloat :=
                  (tabela.FieldByName('vratacado').AsFloat) * 100 /
                  tabela.FieldByName('vrunit').AsFloat - 100

               else
                  tabela.FieldByName('percentatacado').clear;


               if (tabela.FieldByName('valor3').AsFloat>0) and
                  (tabela.FieldByName('vrunit').AsFloat>0) then

                  tabela.FieldByName('percent3').AsFloat :=
                  tabela.FieldByName('valor3').AsFloat * 100 /
                  tabela.FieldByName('vrunit').AsFloat - 100

               else
                  tabela.FieldByName('percent3').clear;
             end;

             totalizar;

        end;
      end;
end;



procedure Tfcadgv.buscacepaqui(tbz:tzquery; str,cp:string);
begin
          //ntb=tabela,     tbz=tabelazeus    str=cep    cp=campo cep(=''), ou outro

           fdm.dbcep.Disconnect;
           with fdm.cep do begin
                close;
                sql.Clear;
                sql.Add('select * from cadcep where cep = '+ quotedstr(formatnumeric(str)));
                open;
                if fdm.cep['cep'] <> null then begin
                   tbz.edit;
                   tbz['cep'+cp] := fieldbyname('cep').asstring;
                   tbz['endereco'+cp] := uppercase(tiraacento(fieldbyname('rua').asstring));
                   tbz['bairro'+cp] := uppercase(tiraacento(fieldbyname('bairro').asstring));
                   tbz['municipio'+cp] := uppercase(tiraacento(fieldbyname('cidade').asstring));
                   tbz['uf'+cp] := fieldbyname('uf').asstring;

                      if cp='' then
                         try
                          if fieldbyname('municipion').asinteger >0 then
                             tbz['municipion'] := fieldbyname('municipion').asinteger;
                        except end;
                   end;
                end;

           fdm.dbcep.Disconnect;

end;




procedure Tfcadgv.totalizar;
begin


    if (fcadg <> nil) and((chofab) and (nummodulo=20)) then totmp(tabela,nil)
                                               else totunit(tabela);

    totprodvd(tabela);


end;



procedure Tfcadgv.cnpj(Sender: TObject);
begin
        with sender as tdbedit do begin

           if length(Text) > 0 then begin
              tabela.edit;
              tabela['cnpj']:=formatacpf_cnpj(FormatNumeric(text));
           end;

           if (length(formatnumeric(text)) >= 14) then begin
              if VerCGC(text) = False then begin
                 SetFocus;
                 abort;
              end;

           end else if (length(formatnumeric(text)) < 14) and (length(formatnumeric(text)) > 0) then begin
               if VerCPF(text) = False then begin
                  SetFocus;
                  abort;
               end;
           end;

           if (length(text) = 0) and (sintegra) then begin
              setfocus;
              msg('#O programa está configurado para gerar SINTEGRA, o CNPJ ou CPF não pode ser nulo!',0);
           end;

          color := clwhite;
       end;
end;



procedure Tfcadgv.edcep(Sender: TObject; var Key: Word;  Shift: TShiftState);
begin

        if key = 13 then begin
           with sender as tdbedit do
             if (Modified) and (fdm.sg.Active=false) then
                buscacep(nil,tabela,tabela.fieldbyname('cep').AsString,'')
             else
                buscacepaqui(tabela,tabela.fieldbyname('cep').AsString,'');

           //if (nummodulo = 4) and () then
              //buscadicade(nil,tabela,tabela.fieldbyname('municipio').AsString,'');

        end;


end;






procedure Tfcadgv.preenchecli(Sender: TObject; var Key: word; Shift: TShiftState);

        procedure pcli;
        begin
             tabela.edit;
             tabela['codigo'] := fdm.sg.fieldbyname('codigo').asinteger;
             tabela['nome'] := fdm.sg.fieldbyname('nome').asstring;
             tabela['municipio'] := fdm.sg.fieldbyname('municipio').asstring;
             tabela['cnpj'] := fdm.sg.fieldbyname('cnpj').asstring;

             if nummodulo = 11 then
                             tabela['endereco'] := fdm.sg.fieldbyname('endereco').asstring +' '+
                                                         inttostr(fdm.sg.fieldbyname('numero').asinteger) + ' '+
                                                         fdm.sg.fieldbyname('complemento').asstring+ ' '+
                                                         fdm.sg.fieldbyname('bairro').asstring+ ' Cep: '+
                                                         fdm.sg.fieldbyname('cep').asstring+ ' '+
                                                         fdm.sg.fieldbyname('uf').asstring
             else begin

                 tabela['endereco'] := fdm.sg.fieldbyname('endereco').asstring;
                 tabela['numero'] := fdm.sg.fieldbyname('numero').asinteger;
                 tabela['complemento'] := fdm.sg.fieldbyname('complemento').asstring;
                 tabela['bairro'] := fdm.sg.fieldbyname('bairro').asstring;

                 tabela['cep'] := fdm.sg.fieldbyname('cep').asstring;
                 tabela['uf'] := fdm.sg.fieldbyname('uf').asstring;
                 tabela['ie'] := fdm.sg.fieldbyname('ie').asstring;
                 if fdm.sg.fieldbyname('fone').asstring <>'' then
                    tabela['fone'] := fdm.sg.fieldbyname('ddd').asstring + '-'+fdm.sg.fieldbyname('fone').asstring
                 else
                    tabela['fone'] := fdm.sg.fieldbyname('fone').asstring;
                 tabela['email_obs'] := fdm.sg.fieldbyname('email').asstring;
            end;
             

             
        end;
begin

    fechatg;

    with sender as tdbedit do begin

    if (key = 13) and
       (text <> '') then  begin

        if (Length(text)=14) and (StrIsNum(text)) then
            text:=formatacpf_cnpj(text);

      with fdm.sg do begin
           Close;
           sql.clear;
           sql.add('select * from tbcliente where '+
                   'codigo = '+quotedstr(text)+
                   ' or cnpj = '+quotedstr(text)+
                   ' or nome = ' + quotedstr(text));
           Open;
      end;

      if fdm.sg['codigo'] <> null then
         pcli

      else begin
         listagem('nome',text,'',4,0);

         if fdm.sg.Active then  pcli;

      end;
    end;
    end;


end;



procedure Tfcadgv.edcepC(Sender: TObject; var Key: Word;  Shift: TShiftState);
begin
        if key = 13 then
           with sender as tdbedit do
             if (Modified) and (fdm.sg.Active=false) then
                buscacep(nil,tabela,tabela.fieldbyname('cepcobranca').AsString,'cobranca')
             else
                buscacepaqui(tabela,tabela.fieldbyname('cep').AsString,'');                
end;

procedure Tfcadgv.edcepE(Sender: TObject; var Key: Word;  Shift: TShiftState);
begin
        if key = 13 then
           with sender as tdbedit do
             if (Modified) and (fdm.sg.Active=false) then
                buscacep(nil,tabela,tabela.fieldbyname('cepentrega').AsString,'entrega')
             else
                buscacepaqui(tabela,tabela.fieldbyname('cep').AsString,'');                
end;








procedure Tfcadgv.criacheck(cp,cap:string;l,t,w:integer);
var
ledt:TDBCheckBox;
begin

          ledt := TDBCheckBox.Create(application);
          with ledt do begin
               Parent := self;
               Left := l;
               Top := t + (pula*30);
               Width := w;
               font.Color:=$005C5047;
               Height := 11;
               Caption := cap;
               DataField := cp;
               DataSource := ds;
               ValueChecked := 'S';
               ValueUnchecked := 'N';
               Checked := true;
               ReadOnly :=  btngravar.visible = false;
          end;

end;


procedure Tfcadgv.crialbel(cap:string;l,t,w:integer);
var
ldb : tlabel;
begin

          ldb := tlabel.Create(application);
          with ldb do begin
               Parent := self;
               transparent := true;
               autosize := true;

               //p =1 o label fica a esquerda co edit ou memo...
               if p = 1 then begin
                  left :=l-2;
                  Alignment := TAlignment(1);
                  Top := t + (pula*30);
                  width := 0;
               end else begin
                  top := (t-14) + (pula*30);
                  left :=l;
                  width := w;
               end;

               caption := cap;
               font.Color:=$005C5047;

               if cap = 'Dirnfe' then begin
                  font.Style := [fsunderline,fsbold];
                  cursor := crHandPoint;
                  onclick := dirnfe;
               end;

           end;

end;


procedure Tfcadgv.criacombo(cp,cap:string;l,t,w:integer;tb,list:string);
var

ledt:TDBComboBox;
ent:string;
para:boolean;
i:integer;
begin

          if w<=40 then w := 40;

          crialbel(cap,l,t,w);

          ledt := TDBComboBox.Create(application);
          with ledt do begin
               Parent := self;
               Left := l;
               Top := t + (pula*30);
               Width := w;

               if (nummodulo=0) and
                  ((lowercase(cp)= 'codregime') or
                  (lowercase(cp)= 'ipi'))  then  else
               Style := csOwnerDrawFixed;

               BevelOuter := bvRaised;
               BevelKind := bkFlat;
               ItemHeight := 12;
               CharCase := ecUpperCase;
               DataField := cp;
               DataSource := ds;
               ReadOnly :=  btngravar.visible = false;

               //se for campo estado
               if (lowercase(cp) =  'uf') or (lowercase(cp) =  'ufcobranca')or (lowercase(cp) =  'ufentrega')  then
                  list :='  ,AC,AL,AM,AP,BA,CE,DF,ES,GO,MA,MG,MS,MT,PA,PB,'+
                         'PE,PI,PR,RJ,RN,RO,RR,RS,SC,SE,SP,TO,EX';


               //se a lista nao vir de uma tabela
               if tb='' then begin
                  ent :='';
                  para:=false;

                  for i:=1 to length(list) do begin
                      if copy(list,i,1) = ',' then
                         para:=true;

                      if not para  then
                         ent := ent + copy(list,i,1)

                  else begin
                     Items.Add(ent);
                     para := false;
                     ent:='';
                  end;

               end;
               Items.Add(ent);


            //se vir de uma tabela
            end else
                with fdm.query1 do begin
                     close;
                     sql.Clear;
                     sql.Add('Select '+list+ ' from '+tb+ ' order by '+list);
                     open;

                     while not eof do begin
                           if fieldbyname(list).AsString <>'' then
                              ledt.Items.Add(fieldbyname(list).AsString);
                           next;
                     end;
                     close;
                end;
             end;
end;









procedure Tfcadgv.criaedit(cp,cap:string;l,t,w:integer);
var
pantes:integer;
ledt:tdbedit;
ledtx:TDBText;
begin

          crialbel(cap,l,t,w);
          pantes:=p;
          if lowercase(cp) = 'obs' then p:=1;

           if (lowercase(cp) = 'data') or ((nummodulo=18)) then
              dt:=true;

          {if ((lowercase(cp) = 'codigo') or (lowercase(cp) = 'cdemp')) and

             (((nummodulo<>5)and(nummodulo<>20) and(nummodulo<>103)) or

             (((nummodulo=5) or (nummodulo=20)) and
               ((responsavel <> 'MC ABRASIVOS') and (responsavel <> 'MC ABRASIVOS')) and
              (fdm.tbconfig['codigoprodutosequencial'+fcadg.mp] = 'S'))) then begin}
             //    
             if  (((lowercase(cp) = 'codigo') or (lowercase(cp) = 'cdemp')) and
                 ((tabela.FieldByName(cp).ClassName = 'TIntegerField')or
                 (modo='alterar'))) then begin

             ledtx := TDBText.Create(application);
             with ledtx do begin
                  Parent := self;
                  Left := l;
                  Top := (t+1) + (pula*30);
                  Width := w;
                  Height := 15;
                  DataField := cp;
                  DataSource := ds;
                  color := clwhite;
             end;


          end else begin

             ledt := tdbedit.Create(application);
             with ledt do begin
                  Parent := self;
                  Left := l;
                  Top := t + (pula*30);
                  Width := w;
                  Height := 17;
                  BevelOuter := bvRaised;
                  BevelKind := bkFlat;
                  BorderStyle := bsNone;
                  ReadOnly :=  btngravar.visible = false;

                  if uppercase(cp) = 'SENHA' then
                     PasswordChar := '*';

                  if uppercase(cp) <> 'EMAIL' then
                     CharCase := ecUpperCase;

                  if (uppercase(cp) = 'CEP') and (nummodulo <> 100) then
                     OnKeyDown := edcep;

                  if uppercase(cp) = 'CEPCOBRANCA' then
                     OnKeyDown := edcepc;

                  if uppercase(cp) = 'CEPENTREGA' then
                     OnKeyDown := edcepe;


                  if (uppercase(cp) = 'IE') and(nummodulo<>100) then
                     OnExit := ieexit

                  else if (uppercase(cp) = 'CNPJ') //or (uppercase(cp) = 'CPF'))
                       and (nummodulo<>100) then OnExit := cnpj


                  // se digitar o valor mudar o percent
                  else if ((lowercase(cp) = 'vrvenda') or
                          (lowercase(cp) = 'vratacado') or
                          (lowercase(cp) = 'valor3')) and
                          ((nummodulo = 5) or (nummodulo = 20)) then
                        OnExit := exitpercent

                  else if ((lowercase(cp) = 'percent') or
                          (lowercase(cp) = 'percent3') or
                          (lowercase(cp) = 'percentatacado') or
                          (lowercase(cp) = 'ipi')) and
                          ((nummodulo = 5) or (nummodulo = 20)) then
                        OnExit := exittot

                   //mc abrasivos
                   else if (lowercase(cp) = 'vrcompra')or
                           (lowercase(cp) = 'despesaacessoria')or
                           (lowercase(cp) = 'desctotal')or
                           (lowercase(cp) = 'fracao')and
                           ((nummodulo = 5) or (nummodulo = 20))then
                   OnExit := exitmc

                  else
                    OnExit := fdm.exitdbedit;

                  if ((fcadg <> nil) and (chofab)) then
                     if (lowercase(cp) = 'imposto') or
                        (lowercase(cp) = 'despesaacessoria') or
                        (lowercase(cp) = 'frete') or
                        (lowercase(cp) = 'vrcompra') or
                        (lowercase(cp) = 'ipi') then OnExit := exittot;



                  if ((nummodulo= 100) or (nummodulo= 11)) and (cp = 'nome') then
                     OnKeyDown:= preenchecli;

                  if ((nummodulo= 5)or(nummodulo= 20)) and (lowercase(cp) = 'vrunit') then
                     ReadOnly := true;



                  DataField := cp;
                  DataSource := ds;
                  OnEnter := fdm.enterdbedit;

             end;
          end;
          p:=pantes;

end;








procedure Tfcadgv.criadbtext(cp,cap:string;l,t,w:integer;lb:boolean);
var
pantes:integer;
ledt:tdbedit;
ledtx:TDBText;
begin
          if lb then crialbel(cap,l,t,w);
          pantes:=p;
          ledtx := TDBText.Create(application);
          with ledtx do begin
              Parent := self;
              Left := l;
              Top := (t+1) + (pula*30);
              Width := w;
              Height := 15;
              DataField := cp;
              DataSource := ds;
              color := clwhite;
          end;
          p:=pantes;

end;











procedure tfcadgv.criaradio(cp,cap:string;l,t,w:integer;list,vallist:string);
var
ledt :TDBRadioGroup;
i,qcol: integer;
para:boolean;
ent:string;

begin

          ledt := TDBRadioGroup.Create(application);
          with ledt do begin
               Parent := self;
               Left := l;
               Top := t+ (pula*30);
               Width := w;
               Height := 30;
               caption := cap;
               qcol :=1;
               para:=false;
               ent :='';
               font.Color:=$005C5047;
               ReadOnly :=  btngravar.visible = false;

               for i:=1 to length(list) do begin
                  if copy(list,i,1) = ',' then
                     para:=true;

                  if not para  then
                     ent := ent + copy(list,i,1)

                  else begin
                     Items.Add(ent);
                     para := false;
                     ent:='';
                     inc(qcol);
                  end;

               end;

               Items.Add(ent);
               Columns := qcol;
               para :=false;
               ent :='';

               for i:=1 to length(vallist) do begin
                  if copy(vallist,i,1) = ',' then
                     para:=true;

                  if not para  then
                     ent := ent + copy(vallist,i,1)

                  else begin
                     values.Add(ent);
                     para := false;
                     ent:='';
                  end;

               end;
               values.Add(ent);

               DataField := cp;
               DataSource := ds;
          end;
end;



procedure Tfcadgv.criamemo(cp,cap:string;t,H:integer);
var
mem:tdbmemo;
pantes:integer;
begin

           pantes :=p;
           p:=0;
           crialbel(cap,93,t,0);
           p:=pantes;

           mem := TDBMemo.Create(self);
           with mem do begin
                Parent := self;
                Left := 93;
                Top := t + (pula*30);
                Width := 693;
                Height := 16*h;
                BevelOuter := bvRaised;
                BevelKind := bkFlat;
                BorderStyle := bsNone;
                DataField := cp;
                DataSource := ds;
                ScrollBars := ssVertical;
                OnEnter := enterdbmemo;
                OnExit := exitdbmemo;
                ReadOnly :=  btngravar.visible = false;
           end;
end;






procedure tfcadgv.Enterdbmemo(Sender: TObject);
begin
        with Sender as tdbmemo do begin
             color := clinfobk;
             keypreview := false;
        end;
end;


procedure tfcadgv.Exitdbmemo(Sender: TObject);
begin
        with Sender as tdbmemo do begin
             color := clwhite;
             keypreview := true;
        end;
end;


procedure Tfcadgv.ieExit(Sender: TObject);
begin

  with  Sender as tdbedit do begin
        color := clwhite;
        if (modified) and (text <> 'ISENTO') and (text <> '') and
           (length(formatnumeric(tabela.fieldbyname('cnpj').asstring))>11) then begin

           //if tabela.fieldbyname('uf').asstring = '' then   msg('#Escolha o estado!!!',0);

           if tabela['UF'] <> null then
           if ((tabela.fieldbyname('uf').asstring <>'TO') and
               (tabela.fieldbyname('uf').asstring <>'RO') and
               (tabela.fieldbyname('uf').asstring <>'PE'))
              and (ChkInscEstadual(formatnumeric(tabela.fieldbyname('ie').asstring),
                                            tabela.fieldbyname('uf').asstring) = false) then begin
              setfocus;
              msg('#Esta inscrição não é válida para "'+tabela.fieldbyname('uf').asstring+'"!!!',0);

           end;

        end;
  end;
end;


procedure Tfcadgv.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
        if (key = 13) then
           Perform(wm_nextdlgctl, 0,0);
        if (key = 27) then
           Perform(wm_nextdlgctl, 1,0);
end;

procedure Tfcadgv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if modo <> '' then tabela.cancel;
   fdm.tbconfig.close;
   fdm.query1.close;
   Release;
   self := nil;
end;

procedure Tfcadgv.ecodigoEnter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfcadgv.epercent3Enter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfcadgv.epercent3Exit(Sender: TObject);
begin

  with  Sender as tdbedit do
    color := clwhite;
end;

procedure Tfcadgv.evalor3Exit(Sender: TObject);
begin

  with  Sender as tdbedit do
    color := clwhite;

end;

procedure Tfcadgv.evalor3Enter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfcadgv.INSERIRExecute(Sender: TObject);

        procedure codjessiana ;
        var
                codigo:string;
        begin
                 codloc := tabela.fieldbyname('codigo').AsString;
                 codigo := msgi('Digite o codigo:',2);
                 if codigo='0' then abort;
                 selecione('select codigo from '+fcadg.nometb +' where codigo ='+ quotedstr(codigo));
                 if sqlpub.RecordCount >0 then msg('#Este código já existe.',0);

                 tabela.edit;
                 tabela['codigo']:=codigo;
                 sqlpub:=nil;
        end;

var
codigo,dup:string;

begin

        if (fcadg = nil) then abort;

        if nummodulo in [32] then
           noduplica('nomedadespesa','nomedadespesa',fcadg.nometb,uppercase(tabela.fieldbyname('nomedadespesa').AsString),'',true);

        //cliente ou funcionario
        if nummodulo in [4,6] then begin
           if not sintegra then
              noduplica('cnpj','nome',fcadg.nometb,uppercase(tabela.fieldbyname('cnpj').AsString),'',fcadg.site)
           else
              noduplica('cnpj','nome',fcadg.nometb,uppercase(tabela.fieldbyname('cnpj').AsString),'',true);

           if tabela['ie'] <> 'ISENTO' then
              noduplica('ie','nome',fcadg.nometb, uppercase(tabela.fieldbyname('ie').AsString) ,'',false);

           noduplica('nome','nome',fcadg.nometb,tabela.fieldbyname('nome').AsString ,'',false);

        end;


        if nummodulo = 7 then begin

           if tabela.FieldByName('ie').AsString <> 'ISENTO' then
              dup := ' or ie = '+ quotedstr(tabela.FieldByName('ie').AsString);

           if tabela['cnpj'] <> null then
              dup := dup + ' or cnpj = '+ quotedstr(tabela.FieldByName('cnpj').AsString);


           selecione('select nomecurto from tbfornecedor where '+
                     'nome = '+ quotedstr(tabela.FieldByName('nome').AsString)+
                     ' or nomecurto = '+ quotedstr(tabela.FieldByName('nomecurto').AsString)+dup);

           if sqlpub.RecordCount >0 then
              if msg(pchar(sqlpub.FieldByName('nomecurto').AsString + ' está cadastrado com estes dados. Continuar?'),2)=false then begin
                 sqlpub := nil;
                 abort;
              end else
                 sqlpub := nil;
        end;


        //servico
        if nummodulo = 18 then
           noduplica('descricao','descricao','tbcadastroservico',tabela.fieldbyname('descricao').AsString,'',false);

        //noduplica('codigo','codigo',fcadg.nometb,codigo,'',true);


        if (nummodulo in [4,6,7,18]) or
           ((nummodulo in [5,20]) and (tabela.fieldbyname('codigo').ClassName = 'TIntegerField')) then begin
           //m:='max';
//           if nummodulo = 4 then if fcadg.contato then  m:='min';//VITALCRED

           repeat  //verifica se alguem ja usa este codigo
              selecione('select max(codigo)as codigo from '+fcadg.nometb);
              codigo := inttostr(sqlpub.fieldbyname('codigo').AsInteger + 1);
              selecione('select chave from '+fcadg.nometb + ' where codigo = '+ quotedstr(codigo));
           until sqlpub.RecordCount = 0;

           tabela.edit;
           tabela ['codigo'] := codigo;

           sqlpub := nil;
        end;


        if nummodulo in [101,102] then codjessiana;
        Grava(tabela, nil,fcadg.nometb);

        {if (nummodulo in [4,18,7,6]) or ((nummodulo in [5,20]) and
              (tabela.FieldByName('codigo').ClassName = 'TIntegerField')) then
              dupcodigo(nummodulo);}


        tabela.sql.Clear;
        tabela.sql.add(fcadg.script + ' where codigo = ' + quotedstr(codigo));
        tabela.close;
        tabela.open;

        titgrade(fcadg.grade,nil,tabela);
        fcadg.tgradeExecute(self);


        {tabela.edit;
        if nummodulo = 4 then tabela['flagsite'] := null;

        galtera(inttostr(nummodulo),tabela.fieldbyname('codigo').AsString,'i' );

          if (nummodulo = 4) and (fcadg.site) then begin //cliente site

              vf := not conectsite;


              //gentil site
              if (not vf) and (responsavel ='10.543-167-0001-52') then
                 try
                    fcadg.gentilgravaexecute(self);
                 except vf:= true; end;



              if vf then begin
                 // tabela['flagsite'] := '0';
                 // altera(tabela, nil,fcadg.nometb);
              end;
              vf:=false;
         end;    }

end;

procedure Tfcadgv.btngravarClick(Sender: TObject);
var
i:integer;
fj:boolean;
DespFix:double;
begin

        focuscontrol(nil);
        tabela.Edit;

        if (fcadg = nil) then abort;

        if (nnull1 <> '') and (tabela[nnull1]=null) then msg('#O campo "'+nnull1+ '" deve ser preenchido.',0);
        if (nnull2 <> '') and (tabela[nnull2]=null) then msg('#O campo "'+nnull2+ '" deve ser preenchido.',0);
        if (nnull3 <> '') and (tabela[nnull3]=null) then msg('#O campo "'+nnull3+ '" deve ser preenchido.',0);
        if (nnull4 <> '') and (tabela[nnull4]=null) then msg('#O campo "'+nnull4+ '" deve ser preenchido.',0);

        try
        if modo = 'gravar' then begin
           if ndp1 <> '' then noduplica(ndp1,'nome',fcadg.nometb,uppercase(tabela.fieldbyname(ndp1).AsString),'',true);
           if ndp2 <> '' then noduplica(ndp2,'nome',fcadg.nometb,uppercase(tabela.fieldbyname(ndp2).AsString),'',true);
           if ndp3 <> '' then noduplica(ndp3,'nome',fcadg.nometb,uppercase(tabela.fieldbyname(ndp3).AsString),'',true);
           if ndp4 <> '' then noduplica(ndp4,'nome',fcadg.nometb,uppercase(tabela.fieldbyname(ndp4).AsString),'',true);
        end;
        except end;

        if nummodulo in [7,4] then
           if (tabela['cnpj']=null) and (sintegra) then
              msg('#O programa está configurado para gerar SINTEGRA, o CNPJ ou CPF não pode ser nulo!',0);


        produtoExecute(self);
        clienteExecute(self);
        funcionarioExecute(self);
        servicoExecute(self);
        fornecedorExecute(self);


        //tiraacento
        for i := 1 to tabela.FieldCount - 1 do  begin

            if lowercase(tabela.Fields[i].FieldName) = 'nome' then
               tabela['nome'] := tiraacento(tabela.fieldbyname('nome').AsString);

            if lowercase(tabela.Fields[i].FieldName) = 'nomecurto' then
               tabela['nomecurto'] := tiraacento(tabela.fieldbyname('nomecurto').AsString);

            if lowercase(tabela.Fields[i].FieldName) = 'descricao' then
               tabela['descricao'] := tiraacento(tabela.fieldbyname('descricao').AsString);

            if lowercase(tabela.Fields[i].FieldName) = 'endereco' then
               tabela['endereco'] := tiraacento(tabela.fieldbyname('endereco').AsString);

            if lowercase(tabela.Fields[i].FieldName) = 'bairro' then
               tabela['bairro'] := tiraacento(tabela.fieldbyname('bairro').AsString);

            if lowercase(tabela.Fields[i].FieldName) = 'municipio' then
               tabela['municipio'] := tiraacento(tabela.fieldbyname('municipio').AsString);

        end;


        if (sintegra) and (nummodulo in [4,7])  then begin

           fj := length(formatnumeric(tabela.fieldbyname('cnpj').AsString)) =14;

           if tabela['cnpj'] = null then msg('#Programado está configurado para emitir sintegra, o CNPJ/CPF não pode ser nulo,',0);
           if tabela['uf'] = null then msg('#Programado está configurado para emitir sintegra, o estado não pode ser nulo,',0);
           if (fj)and (tabela['ie'] = '') then msg('#Se não há inscrição, preencha com "ISENTO" ,',0);

           if (fj)and (tabela['ie'] <> 'ISENTO') then begin

              if ((tabela.fieldbyname('uf').asstring <>'TO') and
                  (tabela.fieldbyname('uf').asstring <>'RO') and
                  (tabela.fieldbyname('uf').asstring <>'PE'))
               and (ChkInscEstadual(formatnumeric(tabela.fieldbyname('ie').AsString),
                                               tabela.fieldbyname('uf').AsString) = false) then
                 msg('#Esta inscrição não é válida para "'+tabela.fieldbyname('uf').AsString+'"!!!',0);
           end;

        end;


        if (responsavel = 'SINDICATO') and (nummodulo=103) then begin
           selecione('select codigo from tbfornecedor where nomecurto = '+ quotedstr(tabela.fieldbyname('nomeempresa').AsString));
           tabela.edit;
           tabela['CdEmp'] := sqlpub.fieldbyname('codigo').AsInteger;
           sqlpub := nil;
        end;


        if (nummodulo in [5,20]) and (empsimples_) and
           (tabela.fieldbyname('cst').AsString <> '') then
           versimples(tabela.fieldbyname('cst').AsString);


        if (nummodulo in [5,4,7]) then begin
            tabela.edit;
            tabela['ctp'] :='1';
        end;

        //grava
        if modo = 'gravar' then begin

           if (responsavel = 'ARISTEM') and (nummodulo in [5])  then  begin
              tabela.edit;
              tabela['codigo'] := formatfloat('000000',strtofloat(formatnumeric(tabela.fieldbyname('codigo').asstring)));
           end;

           inserirexecute(self);

        end else if modo = 'alterar'  then begin

            if nummodulo in [5,20] then begin
               tabela.edit;
               tabela['ultalteracao'] := now();
            end;

            alterarexecute(self);
        end;


        //despfixa
        if nummodulo in [32] then begin
           selecione('select sum(ValorDaDespesa)as total from tbDespFix');
           DespFix := sqlpub.fieldbyname('total').asfloat;
           selecione('update tbDespFix  set TotalDespFix = ' + realdblstr(DespFix));
           selecione('update parametros set TotalDespFix = ' + realdblstr(DespFix)+
                     ', TotalDespFixSalEnc = TotalDespFix +  if (TotalSalEnc is null,0,TotalSalEnc)');
        end;


        modo:='';

        Close;

end;

procedure Tfcadgv.btnsairClick(Sender: TObject);
begin

   tabela.cancel;
   Close;


end;

procedure Tfcadgv.AlterarExecute(Sender: TObject);
var
chave,flag:string;
begin

        if (fcadg = nil) then abort;
        
         chave := tabela.fieldbyname('chave').AsString;

        if nummodulo in [32] then
           noduplica('nomedadespesa','nomedadespesa',fcadg.nometb,tabela.fieldbyname('nomedadespesa').AsString,chave,true);

        //cliente ou funcionario
        if nummodulo in [4,6] then begin
           noduplica('cnpj','nome',fcadg.nometb,tabela.fieldbyname('cnpj').AsString,chave,false);

           if tabela['ie'] <> 'ISENTO' then
              noduplica('ie','nome',fcadg.nometb, tabela.fieldbyname('ie').AsString ,chave,false);

           noduplica('nome','nome',fcadg.nometb,tabela.fieldbyname('nome').AsString ,chave,false);


        end;


        if nummodulo = 6 then
          selecione('update tbcliente set '+
                      ' vendedor = '+  quotedstr(tabela.fieldbyname('nome').AsString)+
                      ' where codigovendedor = '+ quotedstr(tabela.fieldbyname('codigo').AsString));

        //fornecedor
        if nummodulo = 7 then
          selecione('update tbentrada set '+
                      ' cnpj = '+  quotedstr(tabela.fieldbyname('cnpj').AsString)+
                      ' ,ie = '+  quotedstr(tabela.fieldbyname('ie').AsString)+
                      ' ,uf = '+  quotedstr(tabela.fieldbyname('uf').AsString)+
                      ' where codigo = '+ quotedstr(tabela.fieldbyname('codigo').AsString));

        //servico
        if nummodulo = 18 then
           noduplica('descricao','descricao','tbcadastroservico',tabela.fieldbyname('descricao').AsString,chave,false);


        if (chofab) and (nummodulo=20) and (tabela.Active) then atualizaprodutomp(tabela,nil);

          Altera(tabela, nil,fcadg.nometb);
          galtera(inttostr(nummodulo),tabela.fieldbyname('codigo').AsString,'a' );

          if nummodulo =4 then begin
             updatecliente('tbnf',tabela.fieldbyname('codigo').AsString);
             updatecliente('venda',tabela.fieldbyname('codigo').AsString);
          end;

end;

procedure Tfcadgv.enomeExit(Sender: TObject);
begin
        tabela.edit;
        tabela['nome'] := tiraacento(tabela.fieldbyname('nome').asstring);

        with sender as tdbedit do
             Color := clwhite;

end;

procedure Tfcadgv.emunicipioExit(Sender: TObject);
begin
        tabela.edit;
        tabela['municipio'] := tiraacento(tabela.fieldbyname('municipio').asstring);

        with sender as tdbedit do
             Color := clwhite;

end;

procedure Tfcadgv.eenderecoExit(Sender: TObject);
begin
        tabela.edit;
        tabela['endereco'] := tiraacento(tabela.fieldbyname('endereco').asstring);
        with sender as tdbedit do
             Color := clwhite;

end;

procedure Tfcadgv.ecnpjKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8,#13]) then abort;

end;

procedure Tfcadgv.TCExecute(Sender: TObject);
begin
        if btngravar.visible then btngravarClick(self);
end;

procedure Tfcadgv.enomecurtoExit(Sender: TObject);
begin
        tabela.edit;
        tabela['nomecurto'] := tiraacento(tabela.fieldbyname('nomecurto').asstring);

        with sender as tdbedit do
             Color := clwhite;

end;

procedure Tfcadgv.FormShow(Sender: TObject);
var
i:integer;
campo,endentrega:string;


procedure prod;

const ipi :string = '0,00,01,02,03,04,05,49,50,50,51,52,53,53,54,55,99';
{' 0-Não sujeito a IPI'+
',00-Entrada com recup. de crédito'+
',01-Entrada tributada com alíq zero'+
',02-Entrada isenta'+
',03-Entrada não-tributada'+
',04-Entrada imune'+
',05-Entrada com suspensão'+
',49-Outras entradas'+
',50-Saída tributada'+
',51-Saída trib com alíq zero'+
',52-Saída isenta'+
',53-Saída não-tributada'+
',54-Saída imune'+
',55-Saída com suspensão'+
',99-Outras saídas do IPI';}

const CodRegime :string =
'101 - Trib p/ Simp Nac c/ permissão/crédito'+
',102 - Trib p/ Simp Nac s/ permissão/crédito'+
',103 - Isenção do ICMS no Simp Nac p/ rec bruta'+
',201 - Trib p/ Simp Nac perm. crédito subst trib'+
',202 - Trib p/ Simp Nac sem perm/crédito subst trib'+
',203 - Isen ICMS no Simp Nac rec bruta subs trib'+
',300 - Imune'+
',400 - Não trib pelo Simples Nacional'+
',500 - ICMS cobrado por antecipação'+
',900 - Outros';


var
toiso,desc,chao,plprod:integer;
capcst,CST:string;                       
begin
                              
                 chao :=0;
                 selecione('select tipo,dirnfe from tbempresa');

                 if sqlpub.fieldbyname('tipo').AsString = 'SIMPLES NACIONAL' then
                    capcst := 'CSOSN' else capcst := 'CST';

                 gnfe_       := sqlpub.FieldByName('dirnfe').Asstring <> '';
                 empsimples_ := sqlpub.fieldbyname('tipo').AsString = 'SIMPLES NACIONAL';


                  if (iso) and (tipoempresa<>'1') then toiso := 34 else toiso :=0;
                  desc := 18;




                  if  (fcadg <> nil) and (fcadg.fam) then begin
                      criacombo('departamento','Departamento',187 , 52-toiso,150,'tbdepartamento','nome');
                      criacombo('familia','Seção',395 , 52-toiso,150,'tbfamilia','nome');

                      criacombo('grupo',      'Grupo',187 , 70-toiso,150,'tbgrupo','nome');
                      criacombo('subgrupo','SubGrupo',395 , 70-toiso,150,'tbsubgrupo','nome');
                  end else
                      criacombo('subgrupo','SubGrupo',187 , 70-toiso,358,'tbsubgrupo','nome');

                  criacombo('fabricante','Fabricante',187 , 88-toiso,150,'tbfabricante','nome');
                  criacombo('fornecedor','Marca',395 , 88-toiso,150,'tbmarca','nome');
                  criaedit('codigo','Código',187 , 110-toiso,109);

                  if  tipoempresa<>'1' then begin//adesivo
                     if (fcadg <> nil) and (fcadg.corig) then
                        criaedit('codigooriginal','Orig',340 , 109-toiso,70);

                     if (fcadg <> nil) and (fcadg.cfor) then
                        criaedit('codigofornecedor','CódFor',460 , 109-toiso,85);
                  end;

                  criaedit('codigobarras','CódBarras',187 , 128-toiso,110);

                  criaedit('NCMSH','NCMSH',460, 128-toiso,85);
                  criaedit('descricao','Descrição',187 , 147-toiso,358);

                  if (fcadg <> nil) and ((chofab) and (nummodulo=20)) then chao := 28;

                  criacombo('un','Un',187 , 194-toiso-chao,63,'tbun','un');
                  criacombo('cfop','CFOP',294 , 194-toiso-chao,50,'tbcfop','cfop');
                  criaedit('CST','CST',386 , 194-toiso-chao,46);
//                  criaedit('mva','MVA',486 , 194-toiso-chao,46);

                  if sqlpub.fieldbyname('tipo').AsString = 'SIMPLES NACIONAL' then begin
                     criacombo('nacimp','',433 , 194-toiso-chao,20,'','0=Nac,1=Estr imp dir,2=Estr merc int');
                     criadbtext('nacimp','nacimp',475 , 194-toiso-chao,5,false);
                  end else if (chofab) and (nummodulo=20 ) then
                     criaedit('cf','C.F',489 , 194-toiso-chao,55);

                 //chao de fabrica
                 if (fcadg <> nil) and (chofab) and (nummodulo=20 ) then begin

                        plprod :=18;
                        criaedit('vrcompra','Vrcompra',187 , 203,100);
                        criaedit('fracao','Qtd/Embalagem',187 , 203+plprod,100);
                        criadbtext('custocompra','Valor Unit',187 ,  203+(plprod*2),100,true);
                        criaedit('despesaacessoria','O. Despesas%',187 , 203+(plprod*3),100);
                        criaedit('frete','Frete%',187 , 203+(plprod*4),100);
                        criaedit('Imposto','ICM%',187 , 203+(plprod*5),100);

                        criaedit('IPI','IPI%/Modo',440 , 203,58);
                        criacombo('ModoIPI','',500 , 203,20,'',ipi);
                        criadbtext('custocompraunit','Custo Fin Líq',440 , 203+(plprod*1),100,true);
                        criadbtext('vrunit','Custo Fin Bruto',440 , 203+(plprod*2),100,true);
                        criadbtext('cpliq','TotalKgLts',440 , 203+(plprod*3),100,true);
                        criadbtext('totalmp','Total Mat-Prima',440 , 203+(plprod*4),100,true);
                        criaedit('vrminimo','Vr Mín Venda',440 , 203+(plprod*5),100);

                        criaedit('percent','% Varejo',650 , 203,100);
                        criaedit('vrvenda','Vr Varejo',650 , 203+(plprod*1),100);
                        criaedit('percentatacado','% Atacado',650 , 203+(plprod*2),100);
                        criaedit('vratacado','Vr Atacado',650 , 203+(plprod*3),100);
                        criaedit('percent3','% Atacado1',650 , 203+(plprod*4),100);
                        criaedit('valor3','Vr Atacado1',650 , 203+(plprod*5),100);


                                                                                       
                 end else begin

                        criacombo('imposto','ICMS',187 , 215-toiso,63,'tbicms','imposto');
                        criacheck('ativo','Compõe Preço?',253, 218-toiso,100);

                        criaedit('ipi','IPI',386 , 215-toiso,46);
                        criacheck('ativoV','Compõe?',475, 218-toiso,100);
                        criacombo('ModoIPI','',433 , 215-toiso,20,'',ipi);




                        if  tipoempresa<>'1' then begin //adesivo

                            criaedit('PIS','PIS/Modo',187 , 236-toiso,63);
                            criacombo('modoPIS','',251 , 236-toiso,20,'','01,02,03,04,06,07,08,09');
                            criaedit('confins','COFINS/Modo',386 , 236-toiso,46);
                            criacombo('modocofins','',433 , 236-toiso,20,'','01,02,03,04,06,07,08,09,99');
                            criaedit('minimo','Est. Mín',187 , 257-toiso,63);
                            criaedit('prateleira','Prat.',294 , 257-toiso,63);
                            criaedit('box','Box',386 , 257-toiso,46);
                            criaedit('item','Item',486 , 257-toiso,56);
                            criaedit('peso','Peso',186 , 276-toiso,64);

                            if responsavel = '13.097.477/0001-89' then
                               criaedit('garantia','Garant',294 , 275-toiso,63)
                            else
                               criaedit('comissao','Comi',294 , 275-toiso,63);

                            criacombo('desconto','L.D.',386 , 276-toiso,47,'tbdesconto','letra');

                            if responsavel = '13.097.477/0001-89' then
                               criacombo('pesagem','Site?',486 , 276-toiso,56,'','S,N')
                            else criacombo('pesagem','Pesar?',486 , 276-toiso,56,'','S,N');

                        end else  criaedit('tamanho','Medida',187 , 165-toiso,110);  //adesivo




                        criaedit('vrcompra','Vrcompra',668 , 70-toiso,100);
                        criaedit('fracao','Fracao',668 , 88-toiso,100);

                        if (fcadg <> nil) and(not chofab) or (nummodulo=5) then
                           criaedit('desctotal','% Desconto',668 , 106-toiso,100);

                        criaedit('despesaacessoria','% Custo Oper un',668 , 106-toiso+desc,100);
                        criaedit('vrunit','Vrunit',668 , 124-toiso+desc,100);
                        

                        if  tipoempresa<>'1' then begin //adesivo

                            if responsavel='FABIO VITRINE' then begin
                                criaedit('percentatacado','% Atacado',668 , 156-toiso+desc,100);
                                criaedit('vratacado','Vr Atacado',668 , 174-toiso+desc,100);
                                criaedit('percent','% Varejo',668 , 200-toiso+desc,100);
                                criaedit('vrvenda','Vr Varejo',668 , 218-toiso+desc,100);


                            end else begin
                                criaedit('percent','% Varejo',668 , 156-toiso+desc,100);
                                criaedit('vrvenda','Vr Varejo',668 , 174-toiso+desc,100);
                                criaedit('percentatacado','% Atacado',668 , 200-toiso+desc,100);
                                criaedit('vratacado','Vr Atacado',668 , 218-toiso+desc,100);
                            end;


                            criaedit('percent3','% Atacado1',668 , 245-toiso+desc,100);
                            criaedit('valor3','Vr Atacado1',668 , 263-toiso+desc,100);
                            criaedit('vrminimo','Vr Mín Venda',668 , 281-toiso+desc,100);
                        end;    

                        if iso then criamemo('especificacao','Especificação',265,3);
                  end;
                  //end;
                  criamemo('aplicacao','Aplicação',327,6);
                  sqlpub := nil;
end;

begin
         fdm.tbconfig.open;
         if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\cadastrog.jpg')) then
                                imageform('img',alnone, self,
                                (PChar(ExtractFilePath(ParamStr(0)) +'imagem\cadastrog.jpg')),nil);
          if btngravar.visible then
             btngravar.Glyph := btgravar;
          btnsair.Glyph := btcancelar;


          tabela.edit;        

          //preencher automaticamente
                           
          p:=0;//criar edit acima// cliente
          case nummodulo of
               4:begin

               if responsavel = 'DISK BATERIAS' then endentrega := 'End.comerc'
               else                                  endentrega := 'Endereço de Entrega';

                  pula :=0;
                  criaradio('FisJur','Fis/jur',96 , 40 ,59,'F,J','F,J');
                  criaedit('Data','Data',156 , 52,64);
                  criaedit('Codigo','Código',221 , 52,44);

                  if responsavel = '07.682.283/0001-48' then
                     criaedit('tipocliente','Tp Cli/Grupo',266 , 52,80)
                  else
                     criacombo('tipocliente','Tp Cli/Grupo',266 , 52,80,'tbtipocliente','tipocliente');


                  if responsavel = '07.682.283/0001-48' then
                     criaedit('statu','Depart.',347 ,52,55)
                  else if responsavel = '562.668.395-04' then  //comandos
                     criaedit('statu','Mensal',347 ,52,55)
                  else criacombo('statu','Status',347 ,52,55,'tbstatus','nome');

                  criaedit('nome','Nome*',402 , 52,262);
                  criaedit('nomecurto','Fantasia/Apelido',665 , 52,120);
                  criaedit('cnpj','CNPJ/CPF*',96 , 88,110);
                  criaedit('IE','IE/RG*',207 , 88,80);
                  criaedit('ddd','DDD',288 , 88,20);

                  if responsavel = 'DISK BATERIAS' then begin
                     criaedit('fone','Fone Res',309 , 88,64);
                     criaedit('fone2','Fone com',374 , 88,63);
                     criaedit('fone3','Celular',438 , 88,64);

                  end else begin
                     criaedit('fone','Fone*',309 , 88,64);
                     criaedit('fone2','Fone2',374 , 88,63);
                     criaedit('fone3','Fone3',438 , 88,64);
                  end;
                  criaedit('fax','Fax',503 , 88,64);
                  criaedit('nascimento','Nascimento',568 , 88,67);

                  if responsavel = '562.668.395-04' then  //comandos
                     criacombo('vendedor','Produto',636 , 88,150,'tbfuncionario','nome')
                  else criacombo('vendedor','Vendedor',636 , 88,150,'tbfuncionario','nome');

                  criaedit('cep','Cep',96 , 124,65);
                  criaedit('Endereco','Endereço*',162 , 124,189);
                  criaedit('numero','Núm',352 , 124,39);
                  criaedit('complemento','Complemento',392 , 124,99);
                  criaedit('Bairro','Bairro',492 , 124,117);
                  criaedit('municipio','Município*',610 , 124,136);
                  criacombo('UF','UF',748 , 124,38,'','');
                  criaedit('cepentrega','Cep',96 , 158,65);
                  criaedit('enderecoentrega',endentrega,162 , 158,189);
                  criaedit('numeroentrega','Núm',352 , 158,39);
                  criaedit('complementoentrega','Complemento',392 , 158,99);
                  criaedit('bairroentrega','Bairro',492 , 158,117);
                  criaedit('municipioentrega','Município',610 , 158,136);
                  criacombo('ufentrega','UF',748 , 158, 38, '','');
                  criaedit('cepcobranca','Cep',96 , 192,65);
                  criaedit('enderecocobranca','Endereço de Cobrança',162 , 192,189);
                  criaedit('numerocobranca','Núm',352 , 192,39);
                  criaedit('complementocobranca','Complemento',392 , 192,99);
                  criaedit('bairrocobranca','Bairro',492 , 192,117);
                  criaedit('municipiocobranca','Município',610 , 192,136);
                  criacombo('ufcobranca','UF',748 , 192,38,'','');
                  criaedit('Email','Email*',96 , 234,137);
                  criaedit('msn','MSN',234 , 234,137);
                          
                  if responsavel = '562.668.395-04' then criaedit('site','Vencimento',372 , 234,120)
                                                    else criaedit('site','Site',372 , 234,120);

                  criacombo('transportadora','Transportadora',493 , 234,142,'tbfornecedor','nome');
                  criaedit('Contato','Contato',636 , 234,82);
                  criaedit('cargo','Cargo',719 , 234,68);

                  if responsavel = '562.668.395-04' then criaedit('trabalho','TipoPgto',96 , 266,201)
                                                    else criaedit('trabalho','Trabalho',96 , 266,201);

                  criaedit('conjuge','Conjuge',298 , 266,146);
                  criaedit('referencia','Referência',446 , 266,182);
                  criaedit('vinculo','Vínculo',630 , 266,82);
                  criaedit('foneconjuge','Fone cônjuge',714 , 266,71);
                 criaradio('estadocivil','Est. Civil',96 , 283,149,'Sol,Cas,Div,Out','S,C,D,O');

                 if responsavel = '562.668.395-04' then criaedit('limitecredito','Valor             CONSIDERAR COMO LIMITE CRÉDITO:                                ESTE CLIENTE PODE COMPRAR:',247 , 297,64)
                                                   else criaedit('limitecredito','Lim/Créd     CONSIDERAR COMO LIMITE CRÉDITO:                                ESTE CLIENTE PODE COMPRAR:',247 , 297,64);


                 criacheck('laprazo','Contas a Prazo',312 , 297,103);
                 criacheck('lavulsa','Vendas Avulsas',418 , 297,110);
                 criacheck('lcheque','Cheques',530 , 297,70);
                 criacheck('vendaaprazo','A Prazo',604 , 297,60);
                 criacheck('vendacheque','Cheque',666 , 297,61);
                 criacheck('vendacartao','Cartão',728 , 297,55);
                 p:=1;
                 criaedit('obs','Obs',118 , 318,523);
                 criaedit('ICM','ICM',680 , 318,40);
                 //criacheck('fidelidade','É Cliente Fidelidade?',642 , 318,142);
                 criamemo('obs1','Outros Dados',358,5);

               end;

               //produto
               5:begin
                  iso := fdm.tbconfig['iso9001'] = 'S';
                  pula :=0;
                  p:=1;//criar edit a esquerda
                  prod;
               end;


               //funcionario
               6:begin
                 pula :=3;
                 criaedit('codigo','Código',95 , 48  ,58);
                 criaedit('nomecurto','Fantasia/Apelido*',153 , 48,161);
                 criaedit('nome','Nome*',315 , 48,336);
                 criaedit('nascimento','Nasc',652 , 48,66);
                 criaedit('cep','Cep',719 , 48,65);
                 criaedit('Endereco','Endereço',95 , 78,194);
                 criaedit('Bairro','Bairro',290 , 78,119);
                 criaedit('municipio','Cidade',410 , 78,127);
                 criacombo('UF','UF',538 , 78,42,'','');
                 criaedit('cnpj','CPF/CNPJ',581 , 78,111);
                 criaedit('ie','RG/IE',693 , 78,91);
                 criaedit('ct','Cart. Trab.',95 , 109,128);
                 criaedit('pis','PIS',224 , 109,127);
                 criaedit('titulo','Título',352 , 109,127);
                 criaedit('ddd','DDD',480 , 109,32);
                 criaedit('fone','Fone',513 , 109,113);
                 criaedit('fone2','Fone2',628 , 109,77);
                 criaedit('celular','Celular',706 , 109,78);
                 criaedit('email','Email',95 , 140,140);
                 criaedit('msn','MSN',236 , 140,151);
                 criaedit('admissao','Admissão',388 , 140,64);
                 criaedit('demissao','Demissão',453 , 140,64);
                 criacombo('funcao','Função*',518 , 140,149,'tbfuncao','funcao');
                 criaedit('entrada','Entrada',668 , 140,58);
                 criaedit('saida','Saída',727 , 140,58);
                 criaedit('salario','Salário',95 , 172,62);
                 criaedit('horas_mes','Horas/Mês',158 , 172,66);
                 criaradio('transporte','Meio Transp.',225 , 162,134,'Próprio, Outros','P,O');
                 criaedit('conjuge','Cônjuge',360 , 171,269);
                 criaedit('nascimentoconjuge','Nasc. Cônj',631 , 171,91);
                 criaedit('filho','Qtd Filhos',723 , 171,63);
                 criaradio('classe','Classe Funcionário*',95 , 197,263,'Vend,Téc,Arquit,Outros','V,T,A,O');
                 criaedit('senha','Senha Ponto',358 , 207,76);
                 criacombo('usu','Usuário',435 , 207,166,'tbusuario','nome');
                 {criaradio('tipocomissao','Calcular Comissão Baseado em',95 , 232,692,'Marg. s/ Venda,Fixa,% Vr Produto,Forma Recebto,Varejo/Atcado','M,C,P,A,V');
                 criaradio('modocalcula','Calcula ao',603 , 196,184,'Vender,Receber','1,2');
                 criaedit('vr1','Vr1',95 , 279,62);
                 criaedit('comissao','Comiss1',159 , 279,58);
                 criaedit('vr2','Vr2',227 , 279,62);
                 criaedit('comissao2','Comiss2',291 , 279,58);
                 criaedit('vr3','Vr3',360 , 279,62);
                 criaedit('comissao3','Comiss3',424 , 279,58);
                 criaedit('comissaoservico','Comissão Serviço',586 , 279,107);}
                 p:=1;
                 criaedit('obs','Obs',118 , 232,665);   //320
                 dt:=true;
               end; 


               7: begin//fornecedor
                 pula :=1;
                 if responsavel <> 'SINDICATO' then criaradio('categoria','',93 , 36,472,'Fornecedor,Transportadora,Fabricante,Ambos*','D,T,F,A');
                 criaedit('Data','Data',93 , 79,64);
                 criaedit('Codigo','Codigo',159 , 79,45);
                 criaedit('cnpj','CNPJ',205 , 79,110);
                 criaedit('nomecurto','Fantasia*',316 , 79,246);
                 criaedit('nome','Razão/Nome*',92 , 108,471);
                 criaedit('cep','Cep',93 , 138,65);
                 criaedit('Endereco','Endereço',160 , 138,245);
                 criaedit('numero','Número',407 , 138,46);
                 criaedit('complemento','Complemento',455 , 138,107);
                 criaedit('Bairro','Bairro',93 , 168,95);
                 criaedit('municipio','Cidade',190 , 168,155);
                 criacombo('UF','UF*',348 , 168,42,'','');
                 criaedit('IE','IE',391 , 168,87);
                 if responsavel <> 'SINDICATO' then criacombo('atacadista','Reg. Ataca.',479 , 168,85,'','S,N');
                 criaedit('ddd','DDD',93 , 197,29);
                 criaedit('fone','Fone',125 , 197,84);
                 criaedit('fax','Fax',212 , 197,77);
                 criaedit('ramal','Ramal',291 , 197,33);

                 if responsavel <> 'SINDICATO' then begin
                    criacombo('tipofrete','Tp Frete',327 , 197,55,'','CIF,FOB');
                    criacombo('empresa','Enquad Fiscal',383 , 197,90,'','N,PP,ME,MI');
                    criaedit('prazoentrega','Prazo Entrega',477 , 197,84);
                    criacombo('aceitatroca','Aceita Troca',92 , 229,85,'','TOTAL,PARCIAL,METADE,OUTROS');
                    criacombo('condpgto','Prazo de pagamento',182 , 229,131,'tbcondfatura','descricao');
                    criaedit('tipocobranca','Tp Cobrança',317 , 229,161);
                    criacombo('descontopgto','Desc Pgto',482 , 229,81,'','S,N');


                    zcombo := tzquery.Create(application);
                    dcombo := tdatasource.Create(application);

                    zcombo.Connection := fdm.conector ;
                    with zcombo do begin
                         sql.Add('select chave as codigo, descricao from tbconta order by descricao');
                         open;
                         dcombo.DataSet := zcombo;
                    end;

                    combos.ListSource := dcombo;
                    combos.ListField := 'codigo;descricao';
                    combos.KeyField  := 'codigo';

                    combos2.ListSource := dcombo;
                    combos2.ListField := 'codigo;descricao';
                    combos2.KeyField  := 'codigo';

                    combos3.ListSource := dcombo;
                    combos3.ListField := 'codigo;descricao';
                    combos3.KeyField  := 'codigo';

                    combos.DataField :='codconta';
                    combos2.DataField :='codconta2';
                    combos3.DataField :='codconta3';
                    pfor.top :=382;
                    pfor.Show;

                    if not planocontas then begin
                       lcombo2.Hide;
                       combos2.Hide;
                    end;

                 end;

                 criaedit('Email','E-Mail',93 , 260,285);
                 criaedit('site','Site',379 , 260,180);
                 criaedit('msn','MSN',93 , 293,285);
                 criaedit('skype','Skype',379 , 293,180);
                 p:=1;
                 criaedit('obs','Obs',121 , 330,665);
                 p:=0;
                 criaedit('nomediretor','Nome Diretor',620 , 49,165);
                 criaedit('fonediretor','Fone Diretor',620 , 78,165);
                 criaedit('celulardiretor','Celular Diretor',620 , 107,165);
                 criaedit('nomegerente','Nome Gerente',620 , 147,165);
                 criaedit('fonegerente','Fone Gerente',620 , 176,165);
                 criaedit('celulargerente','Celular Gerente',620 , 205,165);
                 criaedit('nomevendedor','Nome Vendedor',620 , 245,179);
                 criaedit('fonevendedor','Fone Vendedor',620 , 274,171);
                 criaedit('celularvendedor','Celular Vendedor',620 , 303,183);
             end;


             //servico
             18: begin
                 pula :=2;
                 criacombo('grupo','Grupo*',219 , 117,200,'tbgruposervico','nome');
                 criaedit('descricao','Descrição*',219 , 170,362);
                 criaedit('valor','Valor',219 , 202,98);
                 criaedit('comissao','Comissão',320 , 202,98);
                 criaedit('Un','Un',421 , 202,30);
                 criaedit('obs','Obs',219 , 237,369);
             end;

            20:begin
               pula :=0;
               p:=1;//criar edit a esquerda
               prod;
            end;


         end;





         if modo = 'gravar' then begin

            caption := fcadg.caption + ' - Novo Cadastro';

            if fcadg.rep then
               fcadg.replicarExecute(self)

            else begin
               tabela.Insert;

               //servico
               if nummodulo = 18 then tabela['grupo'] := 'GP';
               //fornecedor
               if nummodulo = 7 then tabela['categoria'] := 'D';

               //cliente
               if nummodulo = 4 then begin
                  tabela['FisJur'] := 'F';
                  tabela['vendaaprazo'] := 'S';
                  tabela['vendacheque'] := 'S';
                  tabela['vendacartao'] := 'S';
               end;


               //funcionario
               if nummodulo = 6 then begin
                  tabela['modocalcula'] := '1';
                  tabela['tipocomissao'] := 'C';
               end;


               if (nummodulo = 5) or (nummodulo = 20) then begin
                  tabela['fracao'] := '1';
                  tabela['un'] := 'PC';
                  tabela['cfop'] := '5.102';

                  if responsavel='47.030.085/0001-14' then begin
                     tabela['CST'] := '060';
                     tabela['cfop'] := '5.405';

                     try
                     tabela['data'] := now();
                     except end;
                  end;

                   if (tabela.fieldbyname('codigo').ClassName = 'TIntegerField') then begin
                      selecione('select max(codigo)as codigo from tbproduto'+fcadg.mp);
                      tabela['codigo'] :=  sqlpub.fieldbyname('codigo').AsInteger + 1;
                      sqlpub := nil;

                   end else begin
                       if fdm.tbconfig['codigoprodutosequencial'+fcadg.mp] = 'S' then
                         tabela['codigo'] := fdm.tbconfig.FieldByName('codigoproduto'+fcadg.mp).AsInteger + 1;

                       if (responsavel = 'ARISTEM') and (nummodulo in [5])  then begin
                          tabela['codigo'] := formatfloat('000000',strtofloat(formatnumeric(tabela.fieldbyname('codigo').asstring)));
                          tabela['ncmsh'] := '62179099';
                       end;
                   end;

               end;


            end;

            if dt then
               tabela['data'] := datetostr(now);


         end else if (modo = 'alterar') and (btngravar.visible=false) then begin
            caption := fcadg.caption + ' - Colsulta';
            btnsair.Caption := '&Sair';

         end else begin
            caption := fcadg.caption + ' - Alterar Cadastro';
            tabela.locate('chave',tabela.fieldbyname('chave').AsString,[]);
            try
                tabela.edit;
                if nummodulo = 4 then
                tabela['fone'] := formatnumeric(tabela.fieldbyname('fone').AsString);
            except end;
        end;


        //preencher automatico
          if modo = 'gravar' then begin

             for i :=1 to 6 do begin
                      if i =1 then campo := ainc1
                 else if i =2 then campo := ainc2
                 else if i =3 then campo := ainc3
                 else if i =4 then campo := ainc4
                 else if i =5 then campo := ainc5
                 else if i =6 then campo := ainc6;

                if campo <> '' then
                   if tabela.fieldbyname(campo).ClassName = 'TDateField' then
                      tabela[campo] := datetostr(now)
                   else begin
                      selecione('select max('+campo+') as numero from '+fcadg.nometb);
                      tabela[campo] := inttostr(sqlpub.Fieldbyname('numero').Asinteger + 1);
                   end;
             end;

             if sqlpub <> nil then sqlpub := nil;
          end;



end;

procedure Tfcadgv.componenteExecute(Sender: TObject);
var
i:integer;
list:tstringlist;

begin

        list := tstringlist.Create;

        for i := 0 to componentcount - 1 do begin
           if Components[i] is tdbedit then
              list.Add('          criaedit(|'+ tdbedit(Components[i]).DataField +'|,|'+
                                  uppercase(copy(tdbedit(Components[i]).DataField,1,1))+ lowercase(copy(tdbedit(Components[i]).DataField,2,100))+ '|,'+
                                     inttostr(tdbedit(Components[i]).left)+ ' , '+
                                     inttostr(tdbedit(Components[i]).top)+','+
                                     inttostr(tdbedit(Components[i]).width)+');');

           if Components[i] is TDBRadioGroup then
              list.Add('          criaradio(|'+ TDBRadioGroup(Components[i]).DataField +'|,|'+
                                  uppercase(copy(TDBRadioGroup(Components[i]).DataField,1,1))+ lowercase(copy(TDBRadioGroup(Components[i]).DataField,2,100))+ '|,'+
                                     inttostr(TDBRadioGroup(Components[i]).left)+ ' , '+
                                     inttostr(TDBRadioGroup(Components[i]).top)+','+
                                     inttostr(TDBRadioGroup(Components[i]).width)+',| .. |,| .. |);');

           if Components[i] is TDBComboBox then
              list.Add('          criacombo(|'+ TDBComboBox(Components[i]).DataField +'|,|'+
                                     TDBComboBox(Components[i]).DataField+ '|,'+
                                     inttostr(TDBComboBox(Components[i]).left)+ ' , '+
                                     inttostr(TDBComboBox(Components[i]).top)+','+
                                     inttostr(TDBComboBox(Components[i]).width)+',| .. |,| .. |);');


           if Components[i] is TDBCheckBox then
              list.Add('          criacheck(|'+ TDBCheckBox(Components[i]).DataField +'|,|'+
                                  uppercase(copy(TDBCheckBox(Components[i]).DataField,1,1))+ lowercase(copy(TDBCheckBox(Components[i]).DataField,2,100))+ '|,'+
                                     inttostr(TDBCheckBox(Components[i]).left)+ ' , '+
                                     inttostr(TDBCheckBox(Components[i]).top)+','+
                                     inttostr(TDBCheckBox(Components[i]).width)+');');

        end;

        list.SaveToFile('c:\lis.txt');
        ShellExecute(handle, 'open', PChar('c:\lis.txt'), nil, '', SW_MAXIMIZE);
        list.Free;



end;


procedure Tfcadgv.regiaoExecute(Sender: TObject);
begin

           if (tabela['uf']= 'AC') or
              (tabela['uf']= 'AM') or
              (tabela['uf']= 'AP') or
              (tabela['uf']= 'PA') or
              (tabela['uf']= 'RO') or
              (tabela['uf']= 'RR') or
              (tabela['uf']= 'TO') then
           tabela['regiao'] := 'NORTE'

           else if (tabela['uf']= 'AL') or
               (tabela['uf']= 'MA') or
               (tabela['uf']= 'BA') or
               (tabela['uf']= 'CE') or
               (tabela['uf']= 'PB') or
               (tabela['uf']= 'PE') or
               (tabela['uf']= 'PI') or
               (tabela['uf']= 'RN') or
               (tabela['uf']= 'SE') then
                tabela['regiao'] := 'NORDESTE'

           else if (tabela['uf']= 'DF') or
               (tabela['uf']= 'MS') or
               (tabela['uf']= 'MT') or
               (tabela['uf']= 'GO') then
                tabela['regiao'] := 'CENTRO OESTE'

           else if (tabela['uf']= 'MG') or
               (tabela['uf']= 'ES') or
               (tabela['uf']= 'RJ') or
               (tabela['uf']= 'SP') then
                tabela['regiao'] := 'SUDESTE'

           else if (tabela['uf']= 'PR') or
               (tabela['uf']= 'RS') or
               (tabela['uf']= 'SC') then
                tabela['regiao'] := 'SUL';
end;

procedure Tfcadgv.SpeedButton1Click(Sender: TObject);

procedure impalmax;
begin
  cabecaimpressao(self,true);
  memo1.Lines.Add('--------------------------------------------------------------------------------');
  memo1.Lines.Add('OS N: ' + tabela.fieldbyname('os').AsString + '     '+
                  'Cód/Nome: ' + tabela.fieldbyname('codigo').AsString + '  '+
                                 tabela.fieldbyname('nome').AsString );

  memo1.Lines.Add('Endereço: ' + tabela.fieldbyname('endereco').AsString + '     '+
                                 tabela.fieldbyname('numero').AsString + '  '+
                                 tabela.fieldbyname('complemento').AsString);

  memo1.Lines.Add('Bairro: ' + tabela.fieldbyname('bairro').AsString +
                  '     Cidade: '+ tabela.fieldbyname('municipio').AsString +
                  '     Cep: '+ tabela.fieldbyname('cep').AsString+
                  '     UF: '+ tabela.fieldbyname('uf').AsString);

  memo1.Lines.Add('Fone: ' + tabela.fieldbyname('fone').AsString +
                  '     CNPJ/CPF: '+tabela.fieldbyname('cnpj').AsString +
                  '     IE/RG: '+tabela.fieldbyname('ie').AsString);

  memo1.Lines.Add('DtEntrada: ' + tabela.fieldbyname('DtEntrada').AsString +
                  '     DtInforma: '+ tabela.fieldbyname('DtInforma').AsString +
                  '     DtAprova: '+ tabela.fieldbyname('DtAprova').AsString+
                  '     DtDevol: '+ tabela.fieldbyname('DtDevol').AsString);

  memo1.Lines.Add('TOTAL: ' + format('%n',[tabela.fieldbyname('total').Asfloat]));
  memo1.Lines.Add('--------------------------------------------------------------------------------');

  memo1.Lines.Add('Descrição:');
  memo1.Lines.Add(tabela.fieldbyname('descricao').AsString);
  memo1.Lines.Add('--------------------------------------------------------------------------------');
  memo1.Lines.Add('Orçamento: ');
  memo1.Lines.Add(tabela.fieldbyname('orcamento').AsString);
  memo1.Lines.Add('--------------------------------------------------------------------------------');
  memo1.Lines.Add('Histórico:');
  memo1.Lines.Add(tabela.fieldbyname('historico').AsString);
  memo1.Lines.Add('--------------------------------------------------------------------------------');
  rodapeimpressao(false,false);
end;

var
st:string;
begin

      if nummodulo = 100 then begin
         abortaacao(nil,tabela,'os','','','','',0);
         tabela.edit;
         tabela.post;
         st := tabela.fieldbyname('os').AsString;
         tabela.Filter := 'os = ' + quotedstr(st);
         tabela.Filtered := true;

         if msg('Imprime com os dados do cliente',2) then  rlcli.Show
                                                     else  rlcli.hide;
         qalmax.PreviewModal;
         tabela.Filtered := false;
         tabela.locate('os',st,[]);
         tabela.edit;
      end else
        PrintForm(self);

end;

procedure Tfcadgv.qalmaxBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
                fdm.tbempresa.open;
                i1.Picture := fmenu.imagelogo.Picture;

                r1.caption := fdm.tbempresa.fieldbyname('fantasia').AsString;

                r2.Caption := fdm.tbempresa.fieldbyname('Endereco').AsString + ' '+
                                            fdm.tbempresa.fieldbyname('numero').AsString + ' - '+
                                            fdm.tbempresa.fieldbyname('complemento').AsString + '  '+
                                            fdm.tbempresa.fieldbyname('bairro').AsString + ' - '+
                                            fdm.tbempresa.fieldbyname('municipio').AsString;

                r3.Caption := 'UF: ' + fdm.tbempresa.fieldbyname('uf').AsString + '  CEP: '+
                                        fdm.tbempresa.fieldbyname('cep').AsString + '  Fone/Fax: (' +
                                        fdm.tbempresa.fieldbyname('ddd').AsString +') '+
                                        fdm.tbempresa.fieldbyname('fone1').AsString + '   -   '+
                                        fdm.tbempresa.fieldbyname('fax').AsString;

               r4.Caption :=  'E-Mail: ' +  fdm.tbempresa.fieldbyname('email').AsString+
                              '  Site: ' +  fdm.tbempresa.fieldbyname('site').AsString;
               fdm.tbempresa.close;

               ldescricao.Lines.clear;
               ldescricao.Lines.Add(tabela.fieldbyname('descricao').AsString);
               ldescricao.Lines.Add('N. Série:' + tabela.fieldbyname('serie').AsString+
                                    '            Volt: '+tabela.fieldbyname('Volt').AsString);

end;

procedure Tfcadgv.produtoExecute(Sender: TObject);
var
nome,i,fab,criterio:string;


procedure fabio;
begin
          with fdm.Query1 do begin
             sql.clear;
             if (tabela['fabricante'] = null) or (tabela.fieldbyname('fabricante').AsString ='') then
                sql.add( 'select codigo, descricao from tbproduto'+ fcadg.mp +' where descricao = ' +
                         quotedstr(tabela.FieldByName('descricao').AsString) + criterio)

             else
                sql.add( 'select codigo, descricao from tbproduto'+ fcadg.mp +
                         ' where descricao = ' + quotedstr(tabela.FieldByName('descricao').AsString) +
                         ' and (fabricante = ' + quotedstr(tabela.FieldByName('fabricante').AsString)+
                         '  and codigofornecedor = ' + quotedstr(tabela.FieldByName('codigofornecedor').AsString)+')'
                          + criterio);
             Open;

             if not IsEmpty then
                msg('#'+FieldByName('descricao').AsString +' Já está cadastrado com o código '+FieldByName('codigo').AsString+'!' , 0);
          end;
end;

begin   

        if nummodulo in [5,20] then begin

           if(tabela.FieldByName('subgrupo').AsString='') or
             (tabela.FieldByName('descricao').AsString='') or
             (tabela.FieldByName('vrunit').AsFloat<=0) then
             MSG('#Preencha Grupo, Descrição e Valor de compra!',0);

           if (fdm.tbconfig['codigoprodutosequencial'+fcadg.mp] = 'N') and
              (tabela.FieldByName('codigo').AsString='') then
               MSG('#Preencha o código do produto!',0);

           if (tabela['ncmsh'] <> null) and (tabela['ncmsh'] <> '') then begin
               tabela['ncmsh'] := formatnumeric(tabela.fieldbyname('ncmsh').AsString);
               if length(tabela.fieldbyname('ncmsh').AsString) <>8 then
                  msg('#NCM/SH deve ter 8 caracteres numéricos!',0);
           end;


           if modo = 'alterar' then begin
              criterio := ' and chave <> ' +  quotedstr(tabela.FieldByName('chave').AsString);
              tabela['ultalteracao'] := date;
           end else
             criterio := '';


          if responsavel='FABIO VITRINE' then fabio else

          with fdm.Query1 do begin

             // verifica codigo duplicado
             if (tabela['codigo'] <> null) and
                (fdm.tbconfig['codigoprodutosequencial'+fcadg.mp] = 'N') then begin
               Close;
               sql.clear;
               sql.add( 'select codigo, descricao from tbproduto'+ fcadg.mp +' where codigo = ' +
                       quotedstr(tabela.FieldByName('codigo').AsString) + criterio);
               Open;

               if not IsEmpty then
                  msg('#'+FieldByName('descricao').AsString +' Já está cadastrado com este código interno!', 0);

             end;


             // verifica descricao duplicado
             sql.clear;
             if (tabela['fabricante'] = null) or (tabela.fieldbyname('fabricante').AsString ='') then
                sql.add( 'select codigo, descricao from tbproduto'+ fcadg.mp +' where descricao = ' +
                         quotedstr(tabela.FieldByName('descricao').AsString) + criterio)

             else
                sql.add( 'select codigo, descricao from tbproduto'+ fcadg.mp +
                         ' where descricao = ' + quotedstr(tabela.FieldByName('descricao').AsString) +
                         ' and (fabricante = ' + quotedstr(tabela.FieldByName('fabricante').AsString)+
                         '  and codigofornecedor = ' + quotedstr(tabela.FieldByName('codigofornecedor').AsString)+')'
                          + criterio);
             Open;

             if not IsEmpty then
                msg('#'+FieldByName('descricao').AsString +' Já está cadastrado com o código '+FieldByName('codigo').AsString+'!' , 0);




             // verifica codigobarras duplicado
             if (tabela['codigobarras'] <> null) and (tabela['codigobarras'] <> '') then begin
               Close;
               sql.clear;
               sql.add('select codigobarras, descricao from tbproduto'+ fcadg.mp +'  where codigobarras = ' +
                       quotedstr(tabela.FieldByName('codigobarras').AsString) + criterio);
               Open;

               if not IsEmpty then
                 msg('#'+FieldByName('descricao').AsString + ' Já está cadastrado com este código de barras!', 0);

             end;


             //descricao
             if tabela['fabricante'] <> null then
                fab := ' and fabricante = ' + quotedstr(tabela.FieldByName('fabricante').AsString);


             Close;
             sql.clear;
             sql.add( 'select codigo, descricao from tbproduto'+ fcadg.mp +'  where ' +
                       ' descricao = ' + quotedstr(tabela.FieldByName('descricao').AsString)+
                       fab + criterio);

             Open;

             // se já existir
             if not IsEmpty then
                msg('#'+FieldByName('descricao').AsString + ' Já está cadastrado no código ' +
                    FieldByName('codigo').AsString +' com o mesmo fabricante. A descrição só pode ser repetida com outro fabricante/fornecedor!',0);


             if not fcadg.fam then begin
                   //preenche os grupos
                   close;
                   SQL.clear;
                   SQL.Add( 'select grupo from tbsubgrupo'+fcadg.mp+' where nome = '+
                            quotedstr(tabela.fieldbyname('subgrupo').AsString));
                   open;
                   nome := fieldbyname('grupo').AsString;

                   close;
                   SQL.clear;
                   SQL.Add( 'select nome, secao from tbgrupo'+fcadg.mp+' where nome = '+ quotedstr(nome));
                   open;

                   nome := fieldbyname('secao').AsString;
                   tabela['grupo'] :=  fieldbyname('nome').AsString;


                   close;
                   SQL.clear;
                   SQL.Add(  'select nome,departamento from tbfamilia'+fcadg.mp+' where nome = '+  quotedstr(nome));
                   open;

                   nome := fieldbyname('departamento').AsString;
                   tabela['familia'] :=  fieldbyname('nome').AsString;

                   close;
                   SQL.clear;
                   SQL.Add(  'select nome from tbdepartamento'+fcadg.mp+' where nome = '+   quotedstr(nome));
                   open;
                   tabela['departamento'] :=  fieldbyname('nome').AsString;
             end;
          end;


          if fcadg.fam then begin // nao gravar sem grupos
                 if (tabela['departamento'] = null) or
                    (tabela['familia'] = null) or
                    (tabela['grupo'] = null) or
                    (tabela['subgrupo'] = null) then msg('#Departamento, Seção, Grupo e Subgrupo devem ser preenchidos!',0);
          end;

        if modo = 'gravar' then begin
           if (tabela.fieldbyname('codigo').ClassName = 'TIntegerField') then begin
              selecione('select max(codigo)as codigo from tbproduto'+fcadg.mp);
              tabela['codigo'] :=  sqlpub.fieldbyname('codigo').AsInteger + 1;
              sqlpub := nil;


           end else if fdm.tbconfig['codigoprodutosequencial'+fcadg.mp] = 'S' then begin
              i :=inttostr(fdm.tbconfig.FieldByName('codigoproduto'+fcadg.mp).AsInteger + 1);
              tabela['codigo'] := i;
              gravaconfig('codigoproduto'+fcadg.mp ,i);
           end;
        end;

     end;
end;

procedure Tfcadgv.clienteExecute(Sender: TObject);
begin

        if nummodulo = 103 then begin
           if modo = 'gravar' then
              selecione('select nome from tbcliente where codigo = '+ quotedstr(tabela.fieldbyname('codigo').AsString))
           else
              selecione('select nome from tbcliente where codigo = '+ quotedstr(tabela.fieldbyname('codigo').AsString)+
                        ' and chave <> '+quotedstr(tabela.fieldbyname('chave').AsString));
           if sqlpub.RecordCount >0 then msg('#'+tabela.fieldbyname('nome').AsString + '  já está cadastrado neste código',0);

        end;

        //para os cadastros fixos
        if nummodulo = 4 then begin


            if tabela.FieldByName('nome').AsString ='' then  MSG('#Nome deve ser preenchido!',0);

            if (fcadg.site) and
              ((tabela['cnpj']=null) or (tabela.FieldByName('cnpj').AsString='') or
              (tabela['email']=null) or (tabela.FieldByName('email').AsString='') or
              (tabela['ie']=null) or (tabela.FieldByName('ie').AsString='') or
              (tabela['fone']=null) or (tabela.FieldByName('fone').AsString='') or
              (tabela['endereco']=null) or (tabela.FieldByName('endereco').AsString='')) then
              msg('#Verifique o Nome, CPF/CNPJ, EI/RG, Endereço, Fone e o E-Mail',0);


           if (fcadg.nfe) and (tabela['uf']='EX')  then begin

            if (tabela['cnpj']=null) or (tabela.FieldByName('cnpj').AsString='') or
               (tabela['endereco']=null) or (tabela.FieldByName('endereco').AsString='') or
               (tabela['numero']=null) or (tabela.FieldByName('numero').AsString='') or
               (tabela['bairro']=null) or (tabela.FieldByName('bairro').AsString='') or
               (tabela['municipio']=null) or (tabela.FieldByName('municipio').AsString='') or
               (tabela['cep']=null) or (tabela.FieldByName('cep').AsString='') or
               (tabela['uf']=null) or (tabela.FieldByName('uf').AsString='') then
               msg('#Para emitir N.F.e: Nome, CPF/CNPJ e Endereço completo são necessários.',0);


              if (tabela.FieldByName('municipion').AsInteger<=0) then begin
                 buscadicade(nil,tabela,tabela.fieldbyname('municipio').AsString,'');

                 if tabela.FieldByName('municipion').AsInteger<=0 then
                    msg('#Você tem que escolher a cidade para o programa buscar o código do IBGE.',0);
              end;
           end;


        if (tabela.fieldbyname('ie').asstring <> 'ISENTO') and
           (tabela.fieldbyname('ie').asstring <> '') and
           (length(formatnumeric(tabela.fieldbyname('cnpj').asstring))>11) then begin

           if tabela.fieldbyname('uf').asstring = '' then
              msg('#Escolha o estado!!!',0);

           if ((tabela.fieldbyname('uf').asstring <>'TO') and
               (tabela.fieldbyname('uf').asstring <>'RO') and
               (tabela.fieldbyname('uf').asstring <>'PE'))
            and (ChkInscEstadual(formatnumeric(tabela.fieldbyname('ie').asstring),
                                            tabela.fieldbyname('uf').asstring) = false) then begin
              setfocus;
              msg('#Esta inscrição não é válida para "'+tabela.fieldbyname('uf').asstring+'"!!!',0);

           end;
       end;

       if tabela['vendedor'] <> null then begin
          selecione('select codigo from tbfuncionario where nome = ' + quotedstr(tabela.fieldbyname('vendedor').asstring));
          tabela.edit;
          tabela['codigovendedor'] := sqlpub.fieldbyname('codigo').asinteger;
       end;

       if tabela['uf']='EX' then begin
          tabela['cnpj'] := null;
          tabela['ie'] := null;
          tabela['municipio'] := 'EXTERIOR';
          tabela['municipion'] := 9999999;
       end;

       regiaoExecute(self);

    end;

end;

procedure Tfcadgv.funcionarioExecute(Sender: TObject);
begin
        if nummodulo = 6 then begin

           if (tabela.FieldByName('nome').AsString='')or
              (tabela.FieldByName('funcao').AsString='') or
              (tabela['classe']=null)  then
           MSG('#Nome e Função e Classe deve ser preenchidos!',0);

           with fdm.Query1 do begin
              close;
              sql.Clear;
              sql.Add('select chave from tbusuario where nome = ' +
                      quotedstr(tabela.FieldByName('usu').AsString));
              open;

              tabela['usuario'] := fieldbyname('chave').asstring;
              close;
           end;
       end;

end;

procedure Tfcadgv.fornecedorExecute(Sender: TObject);
begin

        if nummodulo = 7 then begin

           if ((combos.Text<> '') and (combos2.Text<> '')) and (combos.Text= combos2.Text) then msg('#Conta crédito está igual a débito.',0);
           if ((combos2.Text<> '') and (combos3.Text<> '')) and (combos2.Text= combos3.Text) then msg('#Conta baixa está igual a crédito.',0);

           if (responsavel = 'SINDICATO') and (tabela.FieldByName('nomecurto').AsString='')then
             msg('#Preenche Fantasia/Apelido!',0);

           if (tabela.FieldByName('nome').AsString='') or
             (tabela.FieldByName('nomecurto').AsString='') or
             (tabela.FieldByName('uf').AsString='') or
             (tabela.FieldByName('categoria').AsString='')then
             msg('#Razão, Fantasia, UF e Categoria devem ser preenchidos!',0);

        end;
end;

procedure Tfcadgv.servicoExecute(Sender: TObject);
begin
        if nummodulo = 18 then
           if (tabela.FieldByName('descricao').AsString='') or
              (tabela.FieldByName('grupo').AsString='') then
              MSG('#Descrição e Grupo devem ser preenchidos!',0);

end;

procedure Tfcadgv.RLDBText12BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
        text := tabela.fieldbyname('endereco').AsString +'  '+
                inttostr(tabela.fieldbyname('numero').AsInteger);
end;

                  //adesivo
                 { if  tipoempresa='1' then begin
                      sep :=18;
                      criacombo('subgrupo','Categoria',187 , 40,358,'tbsubgrupo','nome');
                      criacombo('fornecedor','Marca',395 , 40+sep,150,'tbmarca','nome');
                      criacombo('fabricante','Fabricante',187 , 40+sep,150,'tbfabricante','nome');
                      criaedit('codigo','Código',187 , 110-toiso,109);
                      criaedit('codigobarras','CódBarras',187 , 128-toiso,110);
                      criaedit('NCMSH','NCMSH',460, 128-toiso,85);
                      criaedit('descricao','Descrição',187 , 147-toiso,358);
                      criaedit('tamanho','Medida',187 , 165-toiso,110);

                      criacombo('imposto','ICMS',187 , 215-toiso,63,'tbicms','imposto');
                      criacheck('ativo','Compõe Preço?',253, 218-toiso,100);
                      criaedit('ipi','IPI',386 , 215-toiso,46);
                      criacheck('ativoV','Compõe?',475, 218-toiso,100);
                      criacombo('ModoIPI','',433 , 215-toiso,20,'',ipi);

                      criaedit('vrcompra','Vrcompra',668 , 70-toiso,100);
                      criaedit('fracao','Fracao',668 , 88-toiso,100);
                      criaedit('despesaacessoria','% Custo Oper un',668 , 106-toiso+desc,100);
                      criaedit('vrunit','Vrunit',668 , 124-toiso+desc,100);

                  end else begin
                  }


end.







