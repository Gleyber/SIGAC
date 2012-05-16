unit uimpressora;

interface

uses
  inifiles, printers, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Spin, ActnList, jpeg, DB, DBClient,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfimpressora = class(TForm)
    cimpressao: TComboBox;
    Label6: TLabel;
    SpinEdit1: TSpinEdit;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    ActionList1: TActionList;
    pedidovenda: TAction;
    duplicata: TAction;
    fatura: TAction;
    cartacartorio: TAction;
    promissoria: TAction;
    notamousart: TAction;
    chequeemitido: TAction;
    cartajuridica: TAction;
    boleto: TAction;
    chequerecebido: TAction;
    cartao: TAction;
    Label1: TLabel;
    Label2: TLabel;
    notadiskbaterias: TAction;
    autenticar: TAction;
    consignada: TAction;
    procedure cimpressaoDropDown(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cimpressaoKeyPress(Sender: TObject; var Key: Char);
    procedure cimpressaoEnter(Sender: TObject);
    procedure cimpressaoExit(Sender: TObject);
    procedure cimpressaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpinEdit1Enter(Sender: TObject);
    procedure SpinEdit1Exit(Sender: TObject);
    procedure duplicataExecute(Sender: TObject);
    procedure cartacartorioExecute(Sender: TObject);
    procedure notamousartExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chequeemitidoExecute(Sender: TObject);
    procedure cartajuridicaExecute(Sender: TObject);
    procedure notadiskbateriasExecute(Sender: TObject);
    procedure autenticarExecute(Sender: TObject);
    procedure faturaExecute(Sender: TObject);
    procedure pedidovendaExecute(Sender: TObject);
    procedure consignadaExecute(Sender: TObject);
  private
  tb1,tb2,tb3,tb4,tb5:tzquery;
  endentrega: string;
  modulo :integer;
    { Private declarations }
  public
  controle: string;
  valor:real;
    { Public declarations }

constructor Create(AOwner: TComponent; tb1_, tb2_, tb3_, tb4_,tb5_:tzquery;modulo_:integer); reintroduce;

  end;

var
  fimpressora: Tfimpressora;
  i:integer;
implementation

uses umanu, udm,  impmat, funcoes;

{$R *.dfm}



constructor Tfimpressora.Create(AOwner: TComponent; tb1_, tb2_, tb3_, tb4_, tb5_:tzquery;modulo_:integer);
begin

        Inherited Create(AOwner);

        if tb1_ <> nil then begin
           tb1 := tzquery.create(application);
           tb1 := tb1_;
        end;

        if tb2_ <> nil then begin
           tb2 := tzquery.create(application);
           tb2 := tb2_;
        end;

        if tb3_ <> nil then begin
           tb3 := tzquery.create(application);
           tb3 := tb3_;
        end;

        if tb4_ <> nil then begin
           tb4 := tzquery.create(application);
           tb4 := tb4_;
        end;


        if tb5_ <> nil then begin
           tb5 := tzquery.create(application);
           tb5 := tb5_;
        end;
        modulo := modulo_;
end;



procedure Tfimpressora.cimpressaoDropDown(Sender: TObject);
var i:integer;
begin



      Cimpressao.Items.Clear;

      Cimpressao.Items.Add('LPT1');
      Cimpressao.Items.Add('LPT2');
      Cimpressao.Items.Add('LPT3');
      Cimpressao.Items.Add('LPT4');
      Cimpressao.Items.Add('COM1');
      Cimpressao.Items.Add('COM2');
      Cimpressao.Items.Add('COM3');
      Cimpressao.Items.Add('COM4');
      Cimpressao.Items.Add('USB');



      Cimpressao.Items.Add('IMPRESSORA PADRAO DO WINDOWS');


        For I:= 1 to Printer.Printers.Count do
        Begin


      if Pos('\\', printer.Printers.Strings[I-1]) > 0 Then
        Cimpressao.Items.Add(Copy(printer.Printers.Strings[I-1],
        Pos('\\', printer.Printers.Strings[I-1]),
        length(printer.Printers.Strings[I-1]) -
        Pos('\\', printer.Printers.Strings[I-1]) + 1));
    end;


end;

procedure Tfimpressora.BitBtn1Click(Sender: TObject);

var
  Ini :TInifile;
  i:integer;
begin

  if controle = 'nota' then  portaimpressao := 'nota'
  else if controle = 'boleto' then  portaimpressao := 'boleto'
  else  portaimpressao := 'todos';


  Ini := TInifile.Create(conf_local);

  if controle = 'nota' then
     Ini.WriteString('impNfiscal', 'cimpressaoN', cimpressao.Text)
  else   if controle = 'boleto' then
     Ini.WriteString('impNfiscal', 'cimpressaoB', cimpressao.Text)
  else
     Ini.WriteString('impNfiscal', 'cimpressaoG', cimpressao.Text);

  Ini.Free;


    if (modulo=2) and (responsavel = 'RIBERCRYL') then
        inputquery('Endereço Entrega', 'Digite o endereço de entrega:', endentrega);


   for i := 1 to spinedit1.Value do begin


           if modulo=2 then pedidovendaExecute(self)
           else if modulo = 0 then consignadaExecute(self);

           if controle = 'duplicata' then
              duplicataexecute(self);
           if controle = 'cartacartorio' then
              cartacartorioexecute(self);
           if controle = 'fatura' then
              faturaexecute(self);

           if modulo=29 then begin
              fdm.tbconfig.Open;
              if responsavel = 'DISK BATERIAS' then
                 notadiskbateriasexecute(self);
           end;


           if controle = 'chequeemitido' then
              chequeemitidoexecute(self);
           if controle = 'cartajuridica' then
              cartajuridicaexecute(self);
           if controle = 'autenticar' then
              autenticarexecute(self);
              

   end;

     portaimpressao := '';
     close;


end;

procedure Tfimpressora.BitBtn3Click(Sender: TObject);
begin

      close;
      
end;

procedure Tfimpressora.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if (key = 13) or (key = vk_down) then
    Perform(wm_nextdlgctl, 0,0);
  if  (key = vk_up) then
    Perform(wm_nextdlgctl, 1,0);

   if key = 27 then close;

end;

procedure Tfimpressora.cimpressaoKeyPress(Sender: TObject; var Key: Char);
begin
        if not (key in[#38,#40,#13]) then abort;
end;

procedure Tfimpressora.cimpressaoEnter(Sender: TObject);
begin
        keypreview := false;
        cimpressao.Color := clinfobk;

end;

procedure Tfimpressora.cimpressaoExit(Sender: TObject);
begin
        keypreview := true;
        cimpressao.Color := clwhite;        
end;

procedure Tfimpressora.cimpressaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

           if key = 13 then
              BitBtn1.SetFocus;

        if key = 27 then bitbtn3.SetFocus;
end;


procedure Tfimpressora.SpinEdit1Enter(Sender: TObject);
begin
      SpinEdit1.Color := clinfobk;
end;

procedure Tfimpressora.SpinEdit1Exit(Sender: TObject);
begin
      SpinEdit1.Color := clwhite;
end;

procedure Tfimpressora.duplicataExecute(Sender: TObject);
const
colunas = 200 ;
linhas = 42 ;
              var
  Imp: TImpMat;
  lin, L,j:integer;

begin


	  Imp := TImpMat.Create(Self);
   	  try
	    Imp.ControleServico := true;
	    Imp.Acentuacao := acANSI;
	    Imp.ImprimeLinhasFinais := false;
	    Imp.LimpaBuffer;
	    Imp.Colunas := colunas;
            imp.Linhas := linhas;

     	    Imp.PoeStr(1, 1, #0#27#64);
     	    Imp.PoeStr(2, 1, #27#48);
            fdm.tbempresa.open;
            tracalinha(78,'=');
            Imp.PoeStr(3,3,linha);

	    Imp.PoeStr(4,18 ,#27#14+ fdm.tbempresa.fieldbyname('nome').AsString);

	    Imp.PoeStr(6,1 ,#27#18+ 'Endereço: '+ fdm.tbempresa.fieldbyname('endereco').AsString+
                                            ' - '+ fdm.tbempresa.fieldbyname('municipio').AsString+
                                            ' Cep: '+ fdm.tbempresa.fieldbyname('cep').AsString +
                                            ' UF: '+ fdm.tbempresa.fieldbyname('uf').AsString);
	    Imp.PoeStr(7,1 ,'Fones: ('+ fdm.tbempresa.fieldbyname('ddd').AsString+
                                    ')'+ fdm.tbempresa.fieldbyname('fone1').AsString +
                                    ' ' + fdm.tbempresa.fieldbyname('fax').AsString+
                                    ' CNPJ: '+ fdm.tbempresa.fieldbyname('cnpj').AsString+
                                    ' IE: '+ fdm.tbempresa.fieldbyname('IE').AsString);

            imp.PoeStr(42,4, #27#83#1 + '  -  (16)3975-2014');
            fdm.tbempresa.Close;

            tracalinha(80,'-');
            imp.PoeStr(9,1,#27#84+linha);


            imp.PoeStr(11,1,#27#18+linha);
            Imp.PoeStr(12,12 ,'FATURA DUPLICATA ');
            Imp.PoeStr(12,34 ,'|');
            Imp.PoeStr(12,35 ,'D U P L I C A T A ');
            Imp.PoeStr(12,63 ,'|');
            Imp.PoeStr(12,67 ,'VENCIMENTO');
            imp.PoeStr(13,1,#27#18+linha);

            Imp.PoeStr(14,7 ,'Número');
            Imp.PoeStr(14, 16,'|');
            Imp.PoeStr(14,23 ,'Valor ');
            Imp.PoeStr(14, 34,'|');
            Imp.PoeStr(14,38 ,'Nº. de Ordem');
            Imp.PoeStr(14, 53,'|');
            Imp.PoeStr(14,55 ,'Valor ');
            Imp.PoeStr(14, 65,'|');
            Imp.PoeStr(16, 67,'|');
            Imp.PoeStr(16, 66,'  USO INST.');

            imp.PoeStr(17,1,#27#18+linha);
            Imp.PoeStr(17, 65,'    FINANCEIRA   ');

            imp.PoeStr(18,65,'|');
            imp.PoeStr(19,65,'|');
            imp.PoeStr(20,65,'|');

            fdm.tbconfig.Open;

            tracalinha(60,'-');
            imp.PoeStr(21,20,#27#18+linha);
            imp.PoeStr(22,20,'|');
            imp.PoeStr(23,20,'|');
            imp.PoeStr(24,20,'|');
            imp.PoeStr(25,20,'|');
            imp.PoeStr(26,20,'|');
            imp.PoeStr(27,20,'|');
            imp.PoeStr(28,20,'|');
            imp.PoeStr(30,20,'|');
            imp.PoeStr(31,20,'|');


            imp.PoeStr(38,3,'_____________________     ____________________  Em:__/__/____');
            imp.PoeStr(39,8,#27#48#15+'Assinatura do Emitente');
            imp.PoeStr(39,58,#27#48#15+'Ass. do(s) Sacado(s)');
            tracalinha(78,'=');
            imp.PoeStr(41,3,#27#18+linha);

            //linhas laterais



       Imp.ImprimeJob;
       finally
       Imp.Free;

    end;


end;

procedure Tfimpressora.cartacartorioExecute(Sender: TObject);
const

linhas = 66 ;
colunas = 80;
              var
  Imp: TImpMat;
  lin, L,j:integer;

begin


{	  Imp := TImpMat.Create(Self);
   	  try
	    Imp.ControleServico := true;
	    Imp.Acentuacao := acANSI;
	    Imp.ImprimeLinhasFinais := false;
	    Imp.LimpaBuffer;
            imp.Linhas := linhas;
            imp.Colunas := colunas;
            //linhas laterais

            fdm.tbempresa.Open;

             	    Imp.PoeStr(1, 1, #0#27#64);
             Imp.PoeStr(3,7,#27#18+'ILMO SR. TABELIÃO DO CARTÓRIO DE PROTESTO E LETRAS E TÍTULOS DA COMARCA');
             Imp.PoeStr(4,1,'DE '+ fdm.tbempresa.fieldbyname('municipio').AsString + ' '+
                             fdm.tbempresa.fieldbyname('uf').AsString);

             Imp.PoeStr(7,12,'A firma '+ fdm.tbempresa.fieldbyname('nome').AsString  + ', com sede na cidade de ' +
                              fdm.tbempresa.fieldbyname('municipio').AsString+' '+
                            ' '+fdm.tbempresa.fieldbyname('uf').AsString);

             Imp.PoeStr(8,1,'na '+  fdm.tbempresa.fieldbyname('endereco').AsString  +', portador do CNPJ '+
                            fdm.tbempresa.fieldbyname('cnpj').AsString  +' e');

             Imp.PoeStr(9,1,'Insc.Estadual '+  fdm.tbempresa.fieldbyname('ie').AsString
                            +' vem através deste solicitar a fineza de PROTESTAR,');

             Imp.PoeStr(10,1,'por falta de pagamento, o título abaixo mencionado de acordo com a lei nº 5.474');
             Imp.PoeStr(11,1,'de 18/07/1968 alterada pelo (Decreto Lei nº 436 de 27/01/1969) e Lei 9492 de ');
             Imp.PoeStr(12,1,'10/07/1997.');
             Imp.PoeStr(13,12,'Declaramos, ainda que está em nosso poder para oportuno uso');
             Imp.PoeStr(14,1,'sendo necessário o canhoto de entrega da mercadoria, a nota fiscal e a fatura.');

             Imp.PoeStr(16,7,'ESPÉCIE: ' + fdm.tbcartacartorio.fieldbyname('especie').AsString);

             Imp.PoeStr(18,7,'POR INDICAÇÃO');           

             Imp.PoeStr(20,7,'Título '+fdm.tbcartacartorio.fieldbyname('titulo').AsString);

             Imp.PoeStr(22,7,'DEVEDOR: '+fdm.tbcartacartorio.fieldbyname('nome').AsString);
             Imp.PoeStr(23,7,'ENDEREÇO: '+fdm.tbcartacartorio.fieldbyname('endereco').AsString + ' '+
                            fdm.tbcartacartorio.fieldbyname('bairro').AsString);
             Imp.PoeStr(24,7,'CPF: '+fdm.tbcartacartorio.fieldbyname('cnpj').AsString);
             Imp.PoeStr(25,7,'['+fdm.tbcartacartorio.fieldbyname('municipio').AsString+']'+
                            '   ['+fdm.tbcartacartorio.fieldbyname('uf').AsString+']');
             Imp.PoeStr(26,7,'PRAÇA PAGAMENTO: ['+fdm.tbcartacartorio.fieldbyname('municipio').AsString+']'+
                            '   ['+fdm.tbcartacartorio.fieldbyname('uf').AsString+']');

             Imp.PoeStr(28,7,'Nº TÍTULO: '+fdm.tbcartacartorio.fieldbyname('ntitulo').AsString);
             Imp.PoeStr(29,7,'Emissão: '+fdm.tbcartacartorio.fieldbyname('emissao').AsString);
             Imp.PoeStr(30,7,'Vencimento: '+fdm.tbcartacartorio.fieldbyname('vencimento').AsString);

             Imp.PoeStr(32,7,'Valor do Título:  '+ formatfloat('###,##0.00',fdm.tbcartacartorio.fieldbyname('valor').Asfloat));






             Imp.PoeStr(37,7,'['+fdm.tbempresa.fieldbyname('municipio').AsString+']'+
                            ' ['+fdm.tbempresa.fieldbyname('uf').AsString+']'+
                             '_'+ formatdatetime('dd',date)+
                             ' DE '+formatdatetime('mmmm',date)+
                             ' DE '+ formatdatetime('yyyy',date));

             Imp.PoeStr(39,60,'ATENCIOSAMENTE,');



             Imp.PoeStr(42,54,'_________________________');
             Imp.PoeStr(43,57, fdm.tbempresa.fieldbyname('nome').AsString + '.');
             Imp.PoeStr(44,56, 'CNPJ: ' + fdm.tbempresa.fieldbyname('cnpj').AsString);
             fdm.tbempresa.Close;

       Imp.ImprimeJob;
       finally
       Imp.Free;

    end;
 }

end;

procedure Tfimpressora.notamousartExecute(Sender: TObject);

var
  Imp: TImpMat;
  entsai,pagina,i,j, L, linha, controle: integer;
begin
                      {
        pagina := fnota.tbnotaitem.RecordCount div 10;

        if fnota.tbnotaitem.RecordCount mod 10 > 0 then

       pagina := pagina + 1;

       if pagina = 0 then pagina := 1;

        if fnota.eentrada.ItemIndex = 0 then
           entsai := 82
        else
           entsai := 96;


        fdm.tbempresa.Open;

        j:=1;
        fnota.tbnotaitem.First;
        fnota.tbnotaitem.DisableControls;

        for i := 1 to pagina do begin

	  Imp := TImpMat.Create(Self);
	  try
	    Imp.ControleServico := true;
	    Imp.Acentuacao := acANSI;
	    Imp.ImprimeLinhasFinais := true;
	    Imp.LimpaBuffer;
	    Imp.Colunas := 140;
           // if i >= 2 then imp.linhas := 68
           // else
            imp.Linhas := 68;


            fdm.tbempresa.open;
//       	    Imp.PoeStr(1, 1, #0#27#64);
	    Imp.PoeStr(1, 1, #27#48#15);
	    Imp.PoeStr(6,1 , 'Endereco: '+ fdm.tbempresa.fieldbyname('endereco').AsString);
	    Imp.PoeStr(6,41 ,' / Bairro: '+ fdm.tbempresa.fieldbyname('bairro').AsString);
	    Imp.PoeStr(7,1 ,'Cidade: '+ fdm.tbempresa.fieldbyname('municipio').AsString);
	    Imp.PoeStr(7,21 ,' / Cep: '+ fdm.tbempresa.fieldbyname('cep').AsString+
                             ' / UF: '+ fdm.tbempresa.fieldbyname('uf').AsString);
	    Imp.PoeStr(8,1 ,'Fone/Fax: ('+ fdm.tbempresa.fieldbyname('ddd').AsString);
	    Imp.PoeStr(8,14 ,')'+ fdm.tbempresa.fieldbyname('fone1').AsString);
	    Imp.PoeStr(8,28 , fdm.tbempresa.fieldbyname('fax').AsString);
            fdm.tbempresa.Close;


    	    Imp.PoeStr(3,entsai , 'X');
            if fnota.tbnota['numero'] <> null then begin
        	    Imp.PoeStr(3,119 , formatfloat('000000',fnota.tbnota.fieldbyname('numero').Asfloat));
        	    Imp.PoeStr(3,131 , formatfloat('000000',fnota.tbnota.fieldbyname('numero').Asfloat));
            end;
            Imp.PoeStr(5,82 , '(FOLHA : '+ inttostr(j) +'/'+ inttostr(pagina) +')');
	    Imp.PoeStr(8,82 , fnota.tbnota.fieldbyname('cnpjempresa').AsString);
	    Imp.PoeStr(10,82 ,  fnota.tbnota.fieldbyname('ieempresa').AsString);
	    Imp.PoeStr(10,1 , fnota.tbnota.fieldbyname('natoperacao').AsString);
            Imp.PoeStr(10,41 , fnota.tbnota.fieldbyname('cfop').AsString);
            Imp.PoeStr(10,50 , fnota.tbnota.fieldbyname('strib').AsString);
            Imp.PoeStr(13,1 , fnota.tbnota.fieldbyname('nome').AsString);
            Imp.PoeStr(13,79 , fnota.tbnota.fieldbyname('cnpj').AsString);
            Imp.PoeStr(13,113 , fnota.tbnota.fieldbyname('data').AsString);
            Imp.PoeStr(15,1 , fnota.tbnota.fieldbyname('endereco').AsString);
            Imp.PoeStr(15,65 , fnota.tbnota.fieldbyname('bairro').AsString);
            Imp.PoeStr(15,97 , fnota.tbnota.fieldbyname('cep').AsString);
            Imp.PoeStr(15,113 , fnota.tbnota.fieldbyname('dsaida').AsString);
            Imp.PoeStr(17,1 , fnota.tbnota.fieldbyname('municipio').AsString);
            Imp.PoeStr(17,50 , fnota.tbnota.fieldbyname('fone').AsString);
            Imp.PoeStr(17,74 , fnota.tbnota.fieldbyname('uf').AsString);
            Imp.PoeStr(17,79 , fnota.tbnota.fieldbyname('ie').AsString);
            Imp.PoeStr(17,109 , fnota.tbnota.fieldbyname('hsaida').AsString);

            fdm.tbconfig.Open;
            Imp.PoeStr(57,1 , fnota.tbnota.fieldbyname('dadosadicionaisnota1').AsString);
            Imp.PoeStr(58,1 , fnota.tbnota.fieldbyname('dadosadicionaisnota2').AsString);
            Imp.PoeStr(59,1 , fdm.tbconfig.fieldbyname('dadosadicionaisnota3').AsString);
            Imp.PoeStr(60,1 , fdm.tbconfig.fieldbyname('dadosadicionaisnota4').AsString);
            Imp.PoeStr(61,1 , fdm.tbconfig.fieldbyname('dadosadicionaisnota5').AsString);
            Imp.PoeStr(62,1 , fdm.tbconfig.fieldbyname('dadosadicionaisnota6').AsString);
            Imp.PoeStr(63,1 , fdm.tbconfig.fieldbyname('dadosadicionaisnota7').AsString);
            Imp.PoeStr(64,1 , fdm.tbconfig.fieldbyname('dadosadicionaisnota8').AsString);
            if fnota.tbnota['obs'] <> null then
                Imp.PoeStr(64,1 ,'OBS: ' + fnota.tbnota.fieldbyname('obs').AsString);
            if fnota.tbnota.FieldByName('desconto').asfloat > 0 then
                Imp.PoeStr(36,40 ,'DESCONTO DE  ' + formatfloat('###,##0.00',fnota.tbnota.fieldbyname('desconto').Asfloat));

            fdm.tbconfig.Close;

         if j = pagina then begin

            // duplicata deve imprimir apenas na ultima pagina
            Imp.PoeStr(21,19 , fnota.tbnota.fieldbyname('dup1').AsString);
            Imp.PoeStr(22,19 , fnota.tbnota.fieldbyname('dup2').AsString);
            Imp.PoeStr(23,19 , fnota.tbnota.fieldbyname('dup3').AsString);
            Imp.PoeStr(21,37 , fnota.tbnota.fieldbyname('vencimento1').AsString);
            Imp.PoeStr(22,37 , fnota.tbnota.fieldbyname('vencimento2').AsString);
            Imp.PoeStr(23,37 , fnota.tbnota.fieldbyname('vencimento3').AsString);
            if fnota.tbnota['valor1'] <> null then
                    Imp.PoeStr(21,56 , direita('',formatfloat('###,##0.00',fnota.tbnota.fieldbyname('valor1').Asfloat),11));
            if fnota.tbnota['valor2'] <> null then
                    Imp.PoeStr(22, 56, direita('',formatfloat('###,##0.00',fnota.tbnota.fieldbyname('valor2').Asfloat),11));
            if fnota.tbnota['valor3'] <> null then
                Imp.PoeStr(23, 56, direita('',formatfloat('###,##0.00',fnota.tbnota.fieldbyname('valor3').Asfloat),11));
            Imp.PoeStr(21,74 , fnota.tbnota.fieldbyname('dup4').AsString);
            Imp.PoeStr(22,74 , fnota.tbnota.fieldbyname('dup5').AsString);
            Imp.PoeStr(23,74 , fnota.tbnota.fieldbyname('dup6').AsString);
            Imp.PoeStr(21,93 , fnota.tbnota.fieldbyname('vencimento4').AsString);
            Imp.PoeStr(22,93 , fnota.tbnota.fieldbyname('vencimento5').AsString);
            Imp.PoeStr(23,93 , fnota.tbnota.fieldbyname('vencimento6').AsString);
            if fnota.tbnota['valor4'] <> null then
                    Imp.PoeStr(21,112 , direita('',formatfloat('###,##0.00',fnota.tbnota.fieldbyname('valor4').Asfloat),11));
            if fnota.tbnota['valor5'] <> null then
                    Imp.PoeStr(22,112, direita('',formatfloat('###,##0.00',fnota.tbnota.fieldbyname('valor5').Asfloat),11));
            if fnota.tbnota['valor6'] <> null then
                    Imp.PoeStr(23,112, direita('',formatfloat('###,##0.00',fnota.tbnota.fieldbyname('valor6').Asfloat),11));

            // transportadora imprime na última página

            Imp.PoeStr(50,1 , fnota.tbnota.fieldbyname('tnome').AsString);
            Imp.PoeStr(50,75 , fnota.tbnota.fieldbyname('freteconta').AsString);
            Imp.PoeStr(50,79 , fnota.tbnota.fieldbyname('placaveiculo').AsString);
            Imp.PoeStr(50,92 , fnota.tbnota.fieldbyname('ufveiculo').AsString);
            Imp.PoeStr(50,98 , fnota.tbnota.fieldbyname('tcnpj').AsString);
            Imp.PoeStr(50,6 , fnota.tbnota.fieldbyname('tendereco').AsString);
            Imp.PoeStr(50,62 , fnota.tbnota.fieldbyname('tmunicipio').AsString);
            Imp.PoeStr(50,92 , fnota.tbnota.fieldbyname('tuf').AsString);
            Imp.PoeStr(50,98 , fnota.tbnota.fieldbyname('tie').AsString);
            Imp.PoeStr(54,1 , fnota.tbnota.fieldbyname('qtd').AsString);
            Imp.PoeStr(54,16 , fnota.tbnota.fieldbyname('especie').AsString);
            Imp.PoeStr(54,41 , fnota.tbnota.fieldbyname('marca').AsString);
            Imp.PoeStr(54,62 , fnota.tbnota.fieldbyname('pedido').AsString);
            Imp.PoeStr(54,82 , fnota.tbnota.fieldbyname('pesob').AsString);
            Imp.PoeStr(54,104 , fnota.tbnota.fieldbyname('pesol').AsString);
            Imp.PoeStr(40,1 , fnota.tbnota.fieldbyname('codigoservico1').asstring);
            Imp.PoeStr(41,1 , fnota.tbnota.fieldbyname('codigoservico2').asstring);
            Imp.PoeStr(42,1 , fnota.tbnota.fieldbyname('codigoservico3').asstring);
            Imp.PoeStr(40,50, fnota.tbnota.fieldbyname('codigoservico4').asstring);
            Imp.PoeStr(41,50, fnota.tbnota.fieldbyname('codigoservico5').asstring);
            Imp.PoeStr(42,50, fnota.tbnota.fieldbyname('codigoservico6').asstring);
            Imp.PoeStr(40,8 , copy(fnota.tbnota.fieldbyname('servico1').AsString,1,28));
            Imp.PoeStr(41,8 , copy(fnota.tbnota.fieldbyname('servico2').AsString,1,28));
            Imp.PoeStr(42,8 , copy(fnota.tbnota.fieldbyname('servico3').AsString,1,28));
            Imp.PoeStr(40,58 , fnota.tbnota.fieldbyname('servico4').AsString);
            Imp.PoeStr(41,58 , fnota.tbnota.fieldbyname('servico5').AsString);
            Imp.PoeStr(42,58 , fnota.tbnota.fieldbyname('servico6').AsString);
            if fnota.tbnota['vrservico1'] <> null then
                 Imp.PoeStr(40, 37, direita('',formatfloat('###,##0.00',fnota.tbnota.fieldbyname('vrservico1').asfloat),11));
            if fnota.tbnota['vrservico2'] <> null then
                    Imp.PoeStr(41, 37, direita('',formatfloat('###,##0.00',fnota.tbnota.fieldbyname('vrservico2').asfloat),11));
            if fnota.tbnota['vrservico3'] <> null then
                Imp.PoeStr(42, 37, direita('',formatfloat('###,##0.00',fnota.tbnota.fieldbyname('vrservico3').asfloat),11));
            if fnota.tbnota['vrservico4'] <> null then
                    Imp.PoeStr(40, 81, direita('',formatfloat('###,##0.00',fnota.tbnota.fieldbyname('vrservico4').asfloat),11));
            if fnota.tbnota['vrservico5'] <> null then
                    Imp.PoeStr(41, 81, direita('',formatfloat('###,##0.00',fnota.tbnota.fieldbyname('vrservico5').asfloat),11));
            if fnota.tbnota['vrservico6'] <> null then
            Imp.PoeStr(42, 81, direita('',formatfloat('###,##0.00',fnota.tbnota.fieldbyname('vrservico6').asfloat),11));
            Imp.PoeStr(40,96 , fnota.tbnota.fieldbyname('inscricaomunicipal').AsString);
            if fnota.tbnota['valoriss'] <> null then
                    Imp.PoeStr(40, 112, direita('',formatfloat('###,##0.00',fnota.tbnota.fieldbyname('valoriss').asfloat),11));
            if fnota.tbnota['totalservico'] <> null then
                    Imp.PoeStr(42, 112, direita('',formatfloat('###,##0.00',fnota.tbnota.fieldbyname('totalservico').asfloat),11));

            // totais

            if fnota.tbnota['valorproduto'] <> null then
                    Imp.PoeStr(45,112 , formatfloat('###,##0.00',fnota.tbnota.fieldbyname('valorproduto').Asfloat));
            if fnota.tbnota['total'       ] <> null then
                    Imp.PoeStr(47,112 , formatfloat('###,##0.00',fnota.tbnota.fieldbyname('total').Asfloat));
            if fnota.tbnota['basecalcicms'] <> null then
                    Imp.PoeStr(45,8 , formatfloat('###,##0.00',fnota.tbnota.fieldbyname('basecalcicms').Asfloat));
            if fnota.tbnota['valoricms'] <> null then
                Imp.PoeStr(45,35 , formatfloat('###,##0.00',fnota.tbnota.fieldbyname('valoricms').Asfloat));
            if fnota.tbnota['valoripi'] <> null then
                Imp.PoeStr(47,87 , formatfloat('###,##0.00',fnota.tbnota.fieldbyname('valoripi').Asfloat));
            if fnota.tbnota['frete'] <> null then
                Imp.PoeStr(47,6 , formatfloat('###,##0.00',fnota.tbnota.fieldbyname('frete').Asfloat));
            if fnota.tbnota['seguro'] <> null then
                   Imp.PoeStr(47, 35, formatfloat('###,##0.00',fnota.tbnota.fieldbyname('seguro').Asfloat));
            if fnota.tbnota['despesaacessoria'] <> null then
                    Imp.PoeStr(47, 61, formatfloat('###,##0.00',fnota.tbnota.fieldbyname('despesaacessoria').Asfloat));

           end else begin


                Imp.PoeStr(45,112 , 'XXXXX');
                Imp.PoeStr(47,112 , 'XXXXX');
                Imp.PoeStr(45,8 , 'XXXXX');
                Imp.PoeStr(45,35 , 'XXXXX');
                Imp.PoeStr(47,87 , 'XXXXX');
                Imp.PoeStr(47,6 , 'XXXXX');
                Imp.PoeStr(47, 35, 'XXXXX');
                Imp.PoeStr(47, 61, 'XXXXX');
         end;


         // se não for a última página
         if j < pagina then begin
               controle := 1;
               L:=26;

               while controle <= 10 do begin

                  if fnota.tbnotaitem['qtd'] <> null then
                          Imp.PoeStr(L,77, direita('',formatfloat('###,##0.00',fnota.tbnotaitem.fieldbyname('qtd').Asfloat),11));
                  if fnota.tbnotaitem['vrunit'] <> null then
                          Imp.PoeStr(L,90, direita('',formatfloat('###,##0.00',fnota.tbnotaitem.fieldbyname('vrunit').Asfloat),11));
                  if fnota.tbnotaitem['vrtotal'] <> null then
                          Imp.PoeStr(L,108, direita('',formatfloat('###,##0.00',fnota.tbnotaitem.fieldbyname('vrtotal').Asfloat),11));

                  Imp.PoeStr(L,1, fnota.tbnotaitem.fieldbyname('codigooriginal').AsString);
                  Imp.PoeStr(L,21, fnota.tbnotaitem.fieldbyname('descricao').AsString);
                  Imp.PoeStr(L,65, fnota.tbnotaitem.fieldbyname('cf').AsString);
                  Imp.PoeStr(L,70, fnota.tbnotaitem.fieldbyname('st').AsString);
                  Imp.PoeStr(L,76, fnota.tbnotaitem.fieldbyname('un').AsString);
                  Imp.PoeStr(L,122, fnota.tbnotaitem.fieldbyname('icm').Asstring);
                  fnota.tbnotaitem.Next;
                  controle := controle + 1;
                  L := L + 1;
               end;
           end;


         if j = pagina then begin
                L:=26;

               while not fnota.tbnotaitem.Eof do begin

                  if fnota.tbnotaitem['qtd'] <> null then
                          Imp.PoeStr(L,77, direita('',formatfloat('###,##0.00',fnota.tbnotaitem.fieldbyname('qtd').Asfloat),11));
                  if fnota.tbnotaitem['vrunit'] <> null then
                          Imp.PoeStr(L,90, direita('',formatfloat('###,##0.00',fnota.tbnotaitem.fieldbyname('vrunit').Asfloat),11));
                  if fnota.tbnotaitem['vrtotal'] <> null then
                          Imp.PoeStr(L,108, direita('',formatfloat('###,##0.00',fnota.tbnotaitem.fieldbyname('vrtotal').Asfloat),11));

                  Imp.PoeStr(L,1, fnota.tbnotaitem.fieldbyname('codigooriginal').AsString);
                  Imp.PoeStr(L,21, fnota.tbnotaitem.fieldbyname('descricao').AsString);
                  Imp.PoeStr(L,65, fnota.tbnotaitem.fieldbyname('cf').AsString);
                  Imp.PoeStr(L,70, fnota.tbnotaitem.fieldbyname('st').AsString);
                  Imp.PoeStr(L,76, fnota.tbnotaitem.fieldbyname('un').AsString);
                  Imp.PoeStr(L,122, fnota.tbnotaitem.fieldbyname('icm').Asstring);

                  fnota.tbnotaitem.Next;
                  L := L + 1;
               end;
           end;



	    Imp.ImprimeJob;
           j := j + 1;
	  finally
	   Imp.Free;
	  end;
      end;

         fnota.tbnotaitem.EnableControls;

         fnota.tbnota.Edit;
         fnota.tbnota['modo1'] := 'IMPRESSA';
         altera(fnota.tbnota,nil,'tbnota');
         fnota.tbnota.Cancel;
         fnota.tbnota.Refresh;
                       }
end;

procedure Tfimpressora.FormShow(Sender: TObject);
var
ini :tinifile;
begin


  spinedit1.Enabled := controle <> 'nota';

  if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\menu1.jpg')) then
     imageform('imageimpressora',alTOP, fimpressora, (PChar(ExtractFilePath(ParamStr(0)) +'imagem\menu1.jpg')),nil);


  Ini := TInifile.Create(conf_local);
  if controle = 'nota' then
     cimpressao.text := Ini.ReadString('impNfiscal', 'cimpressaoN', cimpressao.Text)
  else if controle = 'boleto' then
     cimpressao.text := Ini.ReadString('impNfiscal', 'cimpressaoB', cimpressao.Text)
  else
     cimpressao.text := Ini.ReadString('impNfiscal', 'cimpressaoG', cimpressao.Text);
  SpinEdit1.Value := Ini.ReadInteger('impNfiscal', 'qlin', SpinEdit1.value);
  ini.free;

  cimpressaoDropDown(self);

end;

procedure Tfimpressora.chequeemitidoExecute(Sender: TObject);
const
colunas = 200 ;
              var
  Imp: TImpMat;
  linhas, lin, L,j:integer;

begin



          linhas :=  15;

	  Imp := TImpMat.Create(Self);
   	  try
	    Imp.ControleServico := true;
	    Imp.Acentuacao := acANSI;
	    Imp.ImprimeLinhasFinais := true;
	    Imp.LimpaBuffer;
	    Imp.Colunas := colunas;
            imp.Linhas := linhas;

        	    Imp.PoeStr(1, 1, #0#27#64);




       Imp.ImprimeJob;
       finally
       Imp.Free;

    end;



end;

procedure Tfimpressora.cartajuridicaExecute(Sender: TObject);
const

linhas = 60 ;
colunas = 80;
              var
  Imp: TImpMat;
  lin, L,j,CONT:integer;

begin



	  Imp := TImpMat.Create(Self);
   	  try
	    Imp.ControleServico := true;
	    Imp.Acentuacao := acANSI;
	    Imp.ImprimeLinhasFinais := false;
	    Imp.LimpaBuffer;
            imp.Linhas := linhas;
            imp.Colunas := colunas;


            fdm.tbempresa.open;
         	    Imp.PoeStr(1, 1, #0#27#64);
            Imp.PoeStr(3,10 ,#27#71+ fdm.tbempresa.fieldbyname('nome').AsString);

	    Imp.PoeStr(4,10 ,#27#72+ 'Endereço: '+ fdm.tbempresa.fieldbyname('endereco').AsString+ ' -' + fdm.tbempresa.fieldbyname('bairro').AsString);
            Imp.PoeStr(5,10,    'Cep: '+ fdm.tbempresa.fieldbyname('cep').AsString +
                       '   '+ fdm.tbempresa.fieldbyname('municipio').AsString+
                       'UF: '+ fdm.tbempresa.fieldbyname('uf').AsString);
            Imp.PoeStr(6,10,'CNPJ: '+ fdm.tbempresa.fieldbyname('cnpj').AsString);
            Imp.PoeStr(7,10,  'IE: '+ fdm.tbempresa.fieldbyname('IE').AsString);

            fdm.query2.open;

            Imp.PoeStr(10,27, #27#14 + 'DECLARAÇÃO');


            Imp.PoeStr(13,10,#27#18+ 'A');
        Imp.PoeStr(14,10, fdm.query2.fieldbyname('nome').asstring);
        Imp.PoeStr(15,10,fdm.query2.fieldbyname('cnpj').asstring + '_________________________________');

        Fdm.tbempresa.open;


       Imp.PoeStr(17,10,fdm.tbempresa.fieldbyname('nome').asstring +', com sede na ' +
       fdm.tbempresa.fieldbyname('endereco').asstring);

       Imp.PoeStr(18,2,fdm.tbempresa.fieldbyname('bairro').asstring+
                  ', na cidade de ' + fdm.tbempresa.fieldbyname('municipio').asstring +'/'+
                  fdm.tbempresa.fieldbyname('uf').asstring+ ', incrita no CNPJ');

       Imp.PoeStr(19,2,'sob o nº ' + fdm.tbempresa.fieldbyname('cnpj').asstring+'. DECLARA a '+
                  fdm.query2.fieldbyname('nome').asstring+',');

       Imp.PoeStr(20,2,'com sede '+fdm.query2.fieldbyname('endereco').asstring + ' '+
                     fdm.query2.fieldbyname('numero').asstring  + ' '+
                     fdm.query2.fieldbyname('bairro').asstring  + ' '+
                     fdm.query2.fieldbyname('uf').asstring + ', para fins de não');

       Imp.PoeStr(21,2,'incidência na fonte CSLL, da Confins e da contribuição para o ');

       Imp.PoeStr(22,2,'PIS/Pasep, a que se refere o art.30 da Lei nº 10.833 de 29 de dezembro de');

       Imp.PoeStr(23,2,'2003, que é regularmente inscrita no sistema Integrado de Pagamento de');

       Imp.PoeStr(24,2,'imposto e Contribuições das Microempresas e das Empresas de Pequeno Porte');

       Imp.PoeStr(25,2,'(Simples), nos termos da Lei nº 9.317 de 05 de dezembro de 1996.');

       Imp.PoeStr(27,2,'Para esse efeito a declarante informa que:');

       Imp.PoeStr(28,2,'I)     Preenche os seguintes requisitos:');

       Imp.PoeStr(29,2,'a)	Conserva em boa ordem, pelo prazo de cinco anos, contando a data de');

       Imp.PoeStr(30,2,'emissão, os documentos que comprovam a origem de suas receitas e a');

       Imp.PoeStr(31,2, 'efetivação de suas despesas, bem assim a realização de quaisquer outros');

       Imp.PoeStr(32,2,'atos ou operações que venham a modificar sua situação patrimonial');

       Imp.PoeStr(34,2,'b)	Apresenta anualmente Declaração de Informações Econômico-Fiscais da');

       Imp.PoeStr(35,2,'Pessoa Jurídica (DIPJ), em conformidade com disposto em ato da');

       Imp.PoeStr(36,2, 'Secretaria da Receita Federal');

       Imp.PoeStr(38,2,'II)	O signatário é representante legal desta empresa, assumindo o');

       Imp.PoeStr(39,2, 'compromisso de informar à Secretaria da Receita Federal e à pessoa');

       Imp.PoeStr(40,2,'Jurídica pagadora, imediatamente, eventual desenquadramento da presente');

       Imp.PoeStr(41,2,'situação e está em ciente de que a falsidade na prestação destas informações,');

       Imp.PoeStr(42,2,'em prejuízo do disposto no art. 32 da Lei nº 9.430 de 1996, o sujeitará,');

       Imp.PoeStr(43,2,'juntamente com as demais pessoas que para ela concorrem às penalidades');

       Imp.PoeStr(44,2,'prevista na legislação criminal e tributária, relativa à falsidade');

       Imp.PoeStr(45,2,'ideológicas (art. 299 do Código Penal) e ao crime contra ordem tributária');

       Imp.PoeStr(46,2,'(art. 1º da Lei nº 8.137 de 27 de dezembro de 1990).');

       Imp.PoeStr(49,36,fdm.tbempresa.fieldbyname('municipio').asstring +', _____ de _______________ de _____.');

       Imp.PoeStr(53,40,'___________________________');
       Imp.PoeStr(54,40, fdm.tbempresa.fieldbyname('nome').asstring);
       Imp.PoeStr(55,40, fdm.tbempresa.fieldbyname('cnpj').asstring);
       Imp.PoeStr(56,40,fdm.tbempresa.fieldbyname('ie').asstring);
       Imp.PoeStr(57,40, '('+fdm.tbempresa.fieldbyname('ddd').asstring+')'+fdm.tbempresa.fieldbyname('fone1').asstring);

        fdm.tbempresa.Close;
        fdm.query2.Close;

       Imp.ImprimeJob;
       finally
       Imp.Free;

    end;



end;

procedure Tfimpressora.notadiskbateriasExecute(Sender: TObject);
var
  Imp: TImpMat;
  entsai,pagina,i,j, L, linha, controle: integer;
begin

        pagina := tb2.RecordCount div 14;

        if tb2.RecordCount mod 14 > 0 then

       pagina := pagina + 1;

       if pagina = 0 then pagina := 1;

//        if eentrada.ItemIndex = 0 then
  //         entsai := 74
    //    else
           entsai := 85;


        fdm.tbempresa.Open;

        j:=1;
        tb2.First;
        tb2.DisableControls;

        for i := 1 to pagina do begin

	  Imp := TImpMat.Create(Self);
	  try
	    Imp.ControleServico := true;
	    Imp.Acentuacao := acANSI;
	    Imp.ImprimeLinhasFinais := true;
	    Imp.LimpaBuffer;
	    Imp.Colunas := 115;
           // if i >= 2 then imp.linhas := 68
           // else
            imp.Linhas := 68;


       	    Imp.PoeStr(1, 1, #27#48#15);

    	    Imp.PoeStr(4,entsai , 'X');
            if tb1['numero'] <> null then begin
        	    Imp.PoeStr(4,102 , formatfloat('000000',tb1.fieldbyname('numero').Asfloat));
        	    Imp.PoeStr(64,102 , formatfloat('000000',tb1.fieldbyname('numero').Asfloat));
            end;
            if pagina > 1 then
               Imp.PoeStr(6,71 , '(FOLHA : '+ inttostr(j) +'/'+ inttostr(pagina) +')');

            L:=9;

	    Imp.PoeStr(L,2 , tb1.fieldbyname('natoperacao').AsString);
            Imp.PoeStr(L,37 , tb1.fieldbyname('cfop').AsString);
            Imp.PoeStr(L,49 , tb1.fieldbyname('strib').AsString);

            L:=L+3;

            Imp.PoeStr(L,2 , tb1.fieldbyname('nome').AsString);
            Imp.PoeStr(L,73 , tb1.fieldbyname('cnpj').AsString);
            Imp.PoeStr(L,102 , tb1.fieldbyname('data').AsString);

            L:=L+2;

            Imp.PoeStr(L,2 , tb1.fieldbyname('endereco').AsString);
            Imp.PoeStr(L,53 , tb1.fieldbyname('bairro').AsString);
            Imp.PoeStr(L,85 , tb1.fieldbyname('cep').AsString);
            Imp.PoeStr(L,102 , tb1.fieldbyname('dsaida').AsString);

            L:=L+2;

            Imp.PoeStr(L,2 , tb1.fieldbyname('municipio').AsString);
            Imp.PoeStr(L,55 , tb1.fieldbyname('fone').AsString);
            Imp.PoeStr(L,67 , tb1.fieldbyname('uf').AsString);
            Imp.PoeStr(L,77 , tb1.fieldbyname('ie').AsString);
            Imp.PoeStr(L,102 , tb1.fieldbyname('hsaida').AsString);

            fdm.tbconfig.Open;

            L:=55;

            Imp.PoeStr(L,2 , 'EMPRESA DE PEQUENO PORTE, LEI 10.086/98');
            L:=56;
            Imp.PoeStr(L,2 , 'ALÍQUOTA 2.1526% = ' +
                      floattostr(tb1.fieldbyname('total').AsFloat * 2.1526/100) + '  ICMS');

            if tb1['obs'] <> null then
                Imp.PoeStr(L+8,2 ,'OBS: ' + tb1.fieldbyname('obs').AsString);

            if tb1.FieldByName('desconto').asfloat > 0 then
                Imp.PoeStr(38,11 ,'DESCONTO DE  ' + formatfloat('###,##0.00',tb1.fieldbyname('desconto').Asfloat));

            fdm.tbconfig.Close;

         if j = pagina then begin

            // duplicata deve imprimir apenas na ultima pagina

            L:=18;

            Imp.PoeStr(L,2 , 'Nº  :');
            Imp.PoeStr(L+1,2 , 'Venc:');
            Imp.PoeStr(L+2,2 , 'Vr  :');

            Imp.PoeStr(L,9 , tb1.fieldbyname('dup1').AsString);
            Imp.PoeStr(L+1,9 , tb1.fieldbyname('vencimento1').AsString);
            if tb1['valor1'] <> null then
               Imp.PoeStr(L+2,9, formatfloat('###,##0.00',tb1.fieldbyname('valor1').Asfloat));

            Imp.PoeStr(L,23 , tb1.fieldbyname('dup2').AsString);
            Imp.PoeStr(L+1,23 , tb1.fieldbyname('vencimento2').AsString);
            if tb1['valor2'] <> null then
               Imp.PoeStr(L+2,23, formatfloat('###,##0.00',tb1.fieldbyname('valor2').Asfloat));

            Imp.PoeStr(L,37 , tb1.fieldbyname('dup3').AsString);
            Imp.PoeStr(L+1,37 , tb1.fieldbyname('vencimento3').AsString);
            if tb1['valor3'] <> null then
               Imp.PoeStr(L+2,37, formatfloat('###,##0.00',tb1.fieldbyname('valor3').Asfloat));


            Imp.PoeStr(L,51 , tb1.fieldbyname('dup4').AsString);
            Imp.PoeStr(L+1,51 , tb1.fieldbyname('vencimento4').AsString);
            if tb1['valor4'] <> null then
               Imp.PoeStr(L+2,51, formatfloat('###,##0.00',tb1.fieldbyname('valor4').Asfloat));

            Imp.PoeStr(L,66 , tb1.fieldbyname('dup5').AsString);
            Imp.PoeStr(L+1,66 , tb1.fieldbyname('vencimento5').AsString);
            if tb1['valor5'] <> null then
               Imp.PoeStr(L+2,66, formatfloat('###,##0.00',tb1.fieldbyname('valor5').Asfloat));

            Imp.PoeStr(L,80 , tb1.fieldbyname('dup6').AsString);
            Imp.PoeStr(L+1,80 , tb1.fieldbyname('vencimento6').AsString);
            if tb1['valor6'] <> null then
               Imp.PoeStr(L+2,80,formatfloat('###,##0.00',tb1.fieldbyname('valor6').Asfloat));

            // transportadora imprime na última página

            L:=46;

            Imp.PoeStr(L,2 , tb1.fieldbyname('tnome').AsString);
            Imp.PoeStr(L,68 , tb1.fieldbyname('freteconta').AsString);
            Imp.PoeStr(L,73 , tb1.fieldbyname('placaveiculo').AsString);
            Imp.PoeStr(L,85 , tb1.fieldbyname('ufveiculo').AsString);
            Imp.PoeStr(L,91 , tb1.fieldbyname('tcnpj').AsString);

            L:=L + 2;

            Imp.PoeStr(L,2 , tb1.fieldbyname('tendereco').AsString);
            Imp.PoeStr(L,57 , tb1.fieldbyname('tmunicipio').AsString);
            Imp.PoeStr(L,85 , tb1.fieldbyname('tuf').AsString);
            Imp.PoeStr(L,91 , tb1.fieldbyname('tie').AsString);

            L:=L + 2;

            Imp.PoeStr(L,2 , tb1.fieldbyname('qtd').AsString);
            Imp.PoeStr(L,14 , tb1.fieldbyname('especie').AsString);
            Imp.PoeStr(L,36 , tb1.fieldbyname('marca').AsString);
            Imp.PoeStr(L,56 , tb1.fieldbyname('pedido').AsString);
            Imp.PoeStr(L,74 , tb1.fieldbyname('pesob').AsString);
            Imp.PoeStr(L,96 , tb1.fieldbyname('pesol').AsString);
            // totais

            L:=41;

            if tb1['valorproduto'] <> null then
                    Imp.PoeStr(L,94 , formatfloat('###,##0.00',tb1.fieldbyname('valorproduto').Asfloat));
            if tb1['total'       ] <> null then
                    Imp.PoeStr(L+2,94 , formatfloat('###,##0.00',tb1.fieldbyname('total').Asfloat));
            if tb1['basecalcicms'] <> null then
                    Imp.PoeStr(L,8 , formatfloat('###,##0.00',tb1.fieldbyname('basecalcicms').Asfloat));
            if tb1['valoricms'] <> null then
                Imp.PoeStr(L,25 , formatfloat('###,##0.00',tb1.fieldbyname('valoricms').Asfloat));
            if tb1['valoripi'] <> null then
                Imp.PoeStr(L+2,74 , formatfloat('###,##0.00',tb1.fieldbyname('valoripi').Asfloat));
            if tb1['frete'] <> null then
                Imp.PoeStr(L+2,8 , formatfloat('###,##0.00',tb1.fieldbyname('frete').Asfloat));
            if tb1['seguro'] <> null then
                   Imp.PoeStr(L+2, 34, formatfloat('###,##0.00',tb1.fieldbyname('seguro').Asfloat));
            if tb1['despesaacessoria'] <> null then
                    Imp.PoeStr(L+2, 50, formatfloat('###,##0.00',tb1.fieldbyname('despesaacessoria').Asfloat));

           end else begin

                L:=41;
                Imp.PoeStr(L,94 , 'XXXXX');
                Imp.PoeStr(L,8 , 'XXXXX');
                Imp.PoeStr(L,25 , 'XXXXX');
                Imp.PoeStr(L+2,38 , 'XXXXX');
                Imp.PoeStr(L+2,8 , 'XXXXX');
                Imp.PoeStr(L+2, 34, 'XXXXX');
                Imp.PoeStr(L+2, 50, 'XXXXX');
         end;


         // se não for a última página
         if j < pagina then begin
               controle := 1;
               L:=24;

               while controle <= 14 do begin

                  if tb2['qtd'] <> null then
                          Imp.PoeStr(L,69, direita('',formatfloat('###,##0.00',tb2.fieldbyname('qtd').Asfloat),11));
                  if tb2['vrunit'] <> null then
                          Imp.PoeStr(L,82, direita('',formatfloat('###,##0.00',tb2.fieldbyname('vrunit').Asfloat),11));
                  if tb2['vrtotal'] <> null then
                          Imp.PoeStr(L,96, direita('',formatfloat('###,##0.00',tb2.fieldbyname('vrtotal').Asfloat),11));

                  Imp.PoeStr(L,2, tb2.fieldbyname('codigo').AsString);
                  Imp.PoeStr(L,11, tb2.fieldbyname('descricao').AsString);
                  Imp.PoeStr(L,65, tb2.fieldbyname('st').AsString);
                  Imp.PoeStr(L,70, tb2.fieldbyname('un').AsString);
                  Imp.PoeStr(L,110, tb2.fieldbyname('icm').Asstring);
                  tb2.Next;
                  controle := controle + 1;
                  L := L + 1;
               end;
           end;


         if j = pagina then begin
                L:=24;

               while not tb2.Eof do begin

                  if tb2['qtd'] <> null then
                          Imp.PoeStr(L,69, direita('',formatfloat('###,##0.00',tb2.fieldbyname('qtd').Asfloat),11));
                  if tb2['vrunit'] <> null then
                          Imp.PoeStr(L,82, direita('',formatfloat('###,##0.00',tb2.fieldbyname('vrunit').Asfloat),11));
                  if tb2['vrtotal'] <> null then
                          Imp.PoeStr(L,96, direita('',formatfloat('###,##0.00',tb2.fieldbyname('vrtotal').Asfloat),11));

                  Imp.PoeStr(L,2, tb2.fieldbyname('codigo').AsString);
                  Imp.PoeStr(L,11, tb2.fieldbyname('descricao').AsString);
                  Imp.PoeStr(L,65, tb2.fieldbyname('st').AsString);
                  Imp.PoeStr(L,70, tb2.fieldbyname('un').AsString);
                  Imp.PoeStr(L,110, tb2.fieldbyname('icm').Asstring);

                  tb2.Next;
                  L := L + 1;
               end;
           end;



	    Imp.ImprimeJob;
           j := j + 1;
	  finally
	   Imp.Free;
	  end;
      end;

         tb2.EnableControls;

         tb1.Edit;
         tb1['modo1'] := 'IMPRESSA';
         altera(tb1,nil,'tb1');
         tb1.Cancel;
         tb1.Refresh;


end;

procedure Tfimpressora.autenticarExecute(Sender: TObject);
const
colunas = 78 ;
linhas = 2 ;

  var
  Imp: TImpMat;
  codigo:string;
begin



            Imp := TImpMat.Create(Self);
	    Imp.ControleServico := true;
	    Imp.Acentuacao := acANSI;
	    Imp.ImprimeLinhasFinais := false;
	    Imp.LimpaBuffer;
	    Imp.Colunas := colunas;
            imp.Linhas := linhas;
            portaimpressao := 'todos';

            codigo := formatdatetime('dd',date) +
                      formatdatetime('mm',date) +
                      formatdatetime('yyyy',date);

	    imp.PoeStr(2,2,#27#48#15 + 'AUTENTICAÇÃO: '+
                       encodepreco(strtofloat(codigo)) + ' '+
                       '  '+datetostr(now)+ ' '+
                       '  '+  formatfloat('###,##0.00',valor));

       Imp.ImprimeJob;
       Imp.free;

end;

procedure Tfimpressora.faturaExecute(Sender: TObject);
const

linhas = 52 ;
colunas = 200;
              var
  Imp: TImpMat;
  lin, L,j,tamanho:integer;

begin

         {
	  Imp := TImpMat.Create(Self);
   	  try
	    Imp.ControleServico := true;
	    Imp.Acentuacao := acANSI;
	    Imp.ImprimeLinhasFinais := false;
	    Imp.LimpaBuffer;
            imp.Linhas := linhas;
            imp.Colunas := colunas;
            //linhas laterais

          	    Imp.PoeStr(1, 1, #0#27#64);

             lin:=3;
             for j := 1 to (linhas-3) do begin
                 Imp.PoeStr(lin,1 ,#27#18+'|');
                 if lin = 4 then
                    Imp.PoeStr(lin,84 ,#27#18+'|')
                 else
                   Imp.PoeStr(lin,80 ,#27#18+'|');
                 lin:=lin+1;
             end;

             lin:=7;
             for j := 1 to 27 do begin
                 Imp.PoeStr(lin,43 ,'|');
                 Imp.PoeStr(lin,54 ,'|');
                 Imp.PoeStr(lin,67 ,'|');
                 lin:=lin+1;
             end;


             lin:=14;
             for j := 1 to 12 do begin
                 Imp.PoeStr(lin,13 ,'|');
                 Imp.PoeStr(lin,24 ,'|');
                 lin:=lin+1;
             end;



            tracalinha(76,'=');
            Imp.PoeStr(3,4,#27#18+ linha);

	    Imp.PoeStr(4,10 ,#27#71+ fdm.tbempresa.fieldbyname('nome').AsString);

	    Imp.PoeStr(6,4 , fdm.tbempresa.fieldbyname('endereco').AsString);
	    Imp.PoeStr(7,4, fdm.tbempresa.fieldbyname('municipio').AsString+
                           ' - '+ fdm.tbempresa.fieldbyname('uf').AsString);
	    Imp.PoeStr(8,4 ,'CNPJ: '+ fdm.tbempresa.fieldbyname('cnpj').AsString);
	    Imp.PoeStr(9,4 ,'IE: '+ fdm.tbempresa.fieldbyname('IE').AsString);
	    Imp.PoeStr(10,4 ,'Fone/Fax: ('+ fdm.tbempresa.fieldbyname('ddd').AsString +
                              ') '+ fdm.tbempresa.fieldbyname('fone1').AsString +
                              ' - '+fdm.tbempresa.fieldbyname('fax').AsString);
            fdm.tbempresa.Close;

            tracalinha(38,'-');
            imp.PoeStr(11,4,linha);
            imp.PoeStr(12,9,'Desdobramento das Duplicatas');
            imp.PoeStr(13,4,linha);
            imp.PoeStr(14,4,'Movimento');
            imp.PoeStr(14,14,'Vencimento');
            imp.PoeStr(14,29,'Valor ');
            imp.PoeStr(15,4,linha);

            ffatura.tbaprazo.DisableControls;
            ffatura.tbaprazo.First;

            l:=16;


            while not ffatura.tbaprazo.Eof do begin

               imp.PoeStr(l,5,copy(ffatura.tbaprazo.fieldbyname('ndocumento').Asstring,3,13));
               imp.PoeStr(l,14,ffatura.tbaprazo.fieldbyname('dtvencimento').AsString);
               imp.PoeStr(l,29,direita('',formatfloat('###,##0.00',ffatura.tbaprazo.fieldbyname('vrdocumento').Asfloat),11));
               l:=l+1;
               ffatura.tbaprazo.Next;
            end;

            ffatura.tbaprazo.EnableControls;


            imp.PoeStr(28,4,linha);
            imp.PoeStr(29,14,'F  A  T  U  R  A' );
            imp.PoeStr(30,4,linha);
            imp.PoeStr(31,7,'Valor          |' );
            imp.PoeStr(31,33,'Número' );
            imp.PoeStr(32,4,linha);
            imp.PoeStr(33,10, direita('',formatfloat('###,##0.00',ffatura.tbfatura.fieldbyname('total').asfloat),11));
            tamanho := length(ffatura.tbaprazo.fieldbyname('ndocumento').asstring);
            imp.PoeStr(33,33, copy(ffatura.tbfatura.fieldbyname('numero').asstring,3,(tamanho-4)));



	    Imp.PoeStr(4,46 ,#27#72+'Emissão: '+ ffatura.tbfatura.fieldbyname('data').AsString);
            tracalinha(36,'-');
            imp.PoeStr(5,44,linha);

            Imp.PoeStr(6,50 ,'RELAÇÃO DE NOTAS FISCAIS');
            imp.PoeStr(7,44,linha);
            Imp.PoeStr(8,47 ,'Data ');
            Imp.PoeStr(8,59 ,'Número');
            Imp.PoeStr(8,70 ,'Valor ');
            imp.PoeStr(9,44,linha);


            ffatura.tbitem.DisableControls;
            ffatura.tbitem.First;

            l:=10;

            while not ffatura.tbitem.Eof do begin

               imp.PoeStr(l,44,ffatura.tbitem.fieldbyname('data').asstring);
               imp.PoeStr(l,56,formatfloat('000000',ffatura.tbitem.fieldbyname('numero').asfloat));
               imp.PoeStr(l,69,direita('',formatfloat('###,##0.00',ffatura.tbitem.fieldbyname('fiado').Asfloat),11));
               l:=l+1;
               ffatura.tbitem.Next;
            end;

            ffatura.tbitem.EnableControls;


            with fdm.query1 do begin
                 close;
             sql.clear;
             sql.add(  'select nome,codigo,fone,endereco,municipio,cep,uf, municipiocobranca,'+
                                ' ufcobranca, cepcobranca,enderecocobranca,cnpj,ie from tbcliente where codigo ='+
                                quotedstr(ffatura.tbfatura.fieldbyname('codigo').AsString));
                 open;

            tracalinha(76,'-');
            Imp.PoeStr(34,4,linha);
            Imp.PoeStr(35,4 ,'PORTADOR:' + fieldbyname('nome').Asstring);
            Imp.PoeStr(36,4 ,'Cliente:' + formatfloat('000000',fieldbyname('codigo').Asfloat));
            Imp.PoeStr(37,4,linha);

            imp.PoeStr(38,4,'Sacado   : '+ FieldByName('nome').AsString +
                             '       Telefone   : '+ FieldByName('fone').AsString);
            imp.PoeStr(339,4,'Endereço : '+ FieldByName('endereco').AsString);
            imp.PoeStr(40,4,'Município: '+ FieldByName('municipio').AsString +
                            '  Cep: '+ FieldByName('cep').AsString+
                            '  UF: '+ FieldByName('uf').AsString);
            imp.PoeStr(41,4,'Pça Pgto.: '+ FieldByName('municipiocobranca').AsString + ' - '+
                                           FieldByName('ufcobranca').AsString +
                                            ' / '+ FieldByName('cepcobranca').AsString);
            imp.PoeStr(42,4,'Endereço : '+ FieldByName('enderecocobranca').AsString + ' - ' +
                            FieldByName('municipiocobranca').AsString + ' - ' +
                            FieldByName('ufcobranca').AsString);

            imp.PoeStr(43,4,'CPF/CGC  : '+ FieldByName('cnpj').AsString +
                            '    RG/I.E: '+ FieldByName('ie').AsString);

                    close;
            end;

            imp.PoeStr(44,4,#27#18+linha);
            imp.PoeStr(45,4,'Vr. por Extenso');
            imp.PoeStr(46,4,#27#15 + extenso(ffatura.tbfatura.fieldbyname('total').asfloat,'Real','Reais')+' *******');
            imp.PoeStr(47,4,#27#18+linha);

            fdm.tbconfig.Open;
            imp.PoeStr(48,4, fdm.tbconfig.FieldByName('instrucoesfatura1').AsString);
            imp.PoeStr(49,4, fdm.tbconfig.FieldByName('instrucoesfatura1').AsString);
            imp.PoeStr(50,4, fdm.tbconfig.FieldByName('instrucoesfatura1').AsString);
            fdm.tbconfig.Close;

            imp.PoeStr(51,4,#27#18+linha);


       imp.PoeStr(52,3, #27#15 + ' desenvolvido por: (16)3975-2014');
       Imp.ImprimeJob;
       finally
       Imp.Free;

    end;

          }


end;

procedure Tfimpressora.pedidovendaExecute(Sender: TObject);
var

Imp: TImpMat;
tdev:double;
colunas, linhas, ultlinha,Lin,limp, qtlin, ptot, pvrunit, pqtd:INTEGER;
tipo,cnpjemp, cnpjcli, fone2, contato,Dvenda,fabricante,rodape:string;
impfabricante:boolean;
sqld:tzquery;
ini:tinifile;
list:tmemo;

               


        procedure impitem(tbimp:tzquery;tit:string);
        begin
            //itens venda
               inc(limp);
               imp.PoeStr(limp,30, #27#71+ tit);
               inc(limp);

               if tit = 'ITENS LOCADOS:' then
                 imp.PoeStr(limp,1,#27#72+'I/Cód/Devolver/Descrição')
               else
                 imp.PoeStr(limp,1,#27#72+'I/Cód/Descrição');

               imp.PoeStr(limp,pqtd+2,direita('','Qtd',5));
               imp.PoeStr(limp,pvrunit+2,direita('','Unit.',8));
               imp.PoeStr(limp,ptot+2,direita('','Total',11));

               tbimp.DisableControls;
               tbimp.First;

               inc(limp);
               imp.PoeStr(limp,1, linha);
               tdev:=0;

               while not tbimp.EOF do
               begin

               if tit = 'DEVOLUÇÃO:' then tdev := tdev + tbimp.fieldbyname('qtd').asfloat;

               inc(limp);
               imp.PoeStr(limp,1,inttostr(tbimp.RecNo));
               imp.PoeStr(limp,4,copy(tbimp.FieldByName('codigo').Asstring,1,6));

               if (impfabricante) and (tbimp['fabricante'] <> null) then
                  fabricante :=  ' - '+tbimp.fieldbyname('fabricante').AsString
               else fabricante :='';

               if tit = 'ITENS LOCADOS:' then
                  imp.PoeStr(limp,11,copy(tbimp.FieldByName('datadevolucao').AsString+'  '+tbimp.FieldByName('descricao').AsString+fabricante,1,43))
               else
                  imp.PoeStr(limp,11,copy(tbimp.FieldByName('descricao').AsString+fabricante,1,43));

               imp.PoeStr(limp,pqtd-2,direita('',tbimp.FieldByName('qtd').AsString,5));
               imp.PoeStr(limp,pvrunit,direita('',formatfloat('###,##0.'+dvenda,tbimp.FieldByName('vrunit').Asfloat),8));
               imp.PoeStr(limp,ptot,   direita('',formatfloat('###,##0.'+dvenda,tbimp.FieldByName('vrunit').Asfloat*tbimp.FieldByName('qtd').Asfloat),11));

               {if responsavel = '10.588.181/0001-72' then
                  imp.PoeStr(limp,ptot,   direita('',formatfloat('###,##0.'+dvenda,tbimp.FieldByName('total').Asfloat-
                                                                                tbimp.FieldByName('descontoreal').Asfloat),11))
               else
                  imp.PoeStr(limp,ptot,   direita('',formatfloat('###,##0.'+dvenda,tbimp.FieldByName('total').Asfloat),11));}

               tbimp.Next;
              end;

              tbimp.EnableControls;
          end;


begin
      Ini := TInifile.Create(conf_local);
      Ini.WriteInteger('impNfiscal', 'qlin', SpinEdit1.value);
      ini.Free;

      Dvenda := '';
      fdm.tbconfig.Open;
      impfabricante  :=  fdm.tbconfig.FieldByName('fabricanteimpressao').AsString = 'S';

      if tb1['modo']='O' then rodape := fdm.tbconfig.FieldByName('rodapeOrc').AsString
      else                    rodape := fdm.tbconfig.FieldByName('rodape').AsString;

      list := Tmemo.Create(application);
      if rodape <> '' then begin
         
         list.Width := 600;
         list.Visible := False;
         list.Parent := self;
         list.Lines.Add(rodape);
      end;

      fdm.tbconfig.edit;
      for i := 1 to fdm.tbconfig.FieldByName('decimaisvenda').AsInteger do  Dvenda := Dvenda + '0';


        sqld := tzquery.Create(application);
        with sqld do begin
             sqld.Connection := fdm.conector;
             sql.add(' select tbreceber.vrdocumento, '+
                     ' tbreceber.dtvencimento, '+
                     ' tbreceber.tipoconta'+
                     ' from tbreceber '+
                     ' where ch is null and (tbreceber.modulo ="P" or tbreceber.modulo ="2" ) '+
                     ' and tbreceber.linkvenda = '+ quotedstr(tb1.fieldbyname('chavepedido').AsString)+
                     ' order by tbreceber.linkvenda, tbreceber.dtvencimento ');

                  Open;
        end;


        colunas := 80 ;
        qtlin   :=13 ;

        if rodape <> '' then qtlin :=  qtlin + 2 + list.Lines.Count;
        if sqld.RecordCount >0 then  qtlin :=  qtlin +  sqld.RecordCount +3;


       if tb1.fieldbyname('descontoreal').asfloat> 0 then inc(qtlin);
       if tb1.fieldbyname('acrescimo').asfloat> 0 then    inc(qtlin);
       if tb1.fieldbyname('devolucao').asfloat> 0 then    inc(qtlin);
       if tb1.fieldbyname('totalservico').asfloat> 0 then inc(qtlin);
       if (tb1.fieldbyname('acrescimo').asfloat >0) or
          (tb1.fieldbyname('descontoreal').asfloat>0) or
          (tb1.fieldbyname('devolucao').asfloat>0) or
          (tb1.fieldbyname('totalservico').asfloat>0) then inc(qtlin);
       if tb1.FieldByName('credito').Asfloat >0 then       inc(qtlin);
       if tb1.FieldByName('dinheiro').Asfloat >0 then      inc(qtlin);
       if (tb1.FieldByName('cheque').Asfloat >0) or
          (tb1.FieldByName('chequepre').Asfloat >0) then inc(qtlin);
       if tb1.FieldByName('cartao').Asfloat >0 then inc(qtlin);
       if tb1.FieldByName('cartaod').Asfloat >0 then inc(qtlin);
       if tb1.FieldByName('fiado').Asfloat >0 then inc(qtlin);
       if tb1.FieldByName('troco').Asfloat >0 then inc(qtlin);

       if (tb2 <> nil) and (tb2.Active) and (tb2.RecordCount>0) then
           qtlin := qtlin + 3 + tb2.RecordCount;

       if (tb3 <> nil) and (tb3.Active) and (tb3.RecordCount>0) then
          qtlin := qtlin + 4 + tb3.RecordCount;

       if (tb4 <> nil) and (tb4.Active) and (tb4.RecordCount>0) then
          qtlin := qtlin + 4 + tb4.RecordCount;

       if (tb5 <> nil) and (tb5.Active) and (tb5.RecordCount>0) then
          qtlin := qtlin + 5 + tb5.RecordCount;


        fdm.tbempresa.open;

        if  cnpjie  then
             if fdm.tbempresa['cnpj'] <> null then
                cnpjemp :=' CNPJ: '+ fdm.tbempresa.fieldbyname('cnpj').AsString+
                          ' IE: '+ fdm.tbempresa.fieldbyname('IE').AsString;

        selecione('select fone2, contato from tbcliente where codigo = '+
                  quotedstr(tb1.FieldByName('codigo').Asstring));

        fone2 := sqlpub.fieldbyname('fone2').AsString;
        contato := sqlpub.fieldbyname('contato').AsString;

	  Imp := TImpMat.Create(Self);
          Imp.Colunas := colunas;

          if qtlin <=40 then                         linhas :=40
          else if (qtlin >40) and (qtlin <=80) then  linhas :=80
          else if (qtlin >80) and (qtlin <=120) then linhas :=120
          else if (qtlin >120)                  then linhas :=160;

          imp.Linhas := linhas;
          Imp.ControleServico := false;
          Imp.Acentuacao := acANSI;
          Imp.ImprimeLinhasFinais := false;
          Imp.LimpaBuffer;



            //tracalinha(colunas-2,'=');
            if qtlin <=33 then                   Imp.PoeStr(1, 1, #27+#67+#33)
            else if (qtlin >33) and (qtlin <=66) then Imp.PoeStr(1, 1, #27+#67+#66)
            else if (qtlin >66) and (qtlin <=99) then Imp.PoeStr(1, 1, #27+#67+#99)
            else if (qtlin >99)                  then Imp.PoeStr(1, 1, #27+#67+#132);

            limp :=1;

      if responsavel <> '65.468.076/0001-91' then//jcnc
	    Imp.PoeStr(limp,18 ,#27#71+ fdm.tbempresa.fieldbyname('nome').AsString );

            if tb1['modo']='O' then
               tipo := 'ORÇAMENTO N. '
            else if (tb4 <> nil) and (tb4.Active) and (tb4.RecordCount>0) then
               tipo := 'OS N. '
            else
               tipo := 'PEDIDO N. ';


      if responsavel <> '65.468.076/0001-91' then begin  //jcnc
                inc(limp);//2
          Imp.PoeStr(limp,1 , #27#72+'End.: '+ fdm.tbempresa.fieldbyname('endereco').AsString+' '+
                                                  fdm.tbempresa.fieldbyname('numero').AsString + '   '+
                                                  fdm.tbempresa.fieldbyname('Complemento').AsString +'    '+
                                                '  '+ fdm.tbempresa.fieldbyname('municipio').AsString+
                                                ' Cep: '+ fdm.tbempresa.fieldbyname('cep').AsString +
                                                ' UF: '+ fdm.tbempresa.fieldbyname('uf').AsString);
                inc(limp);//3
          Imp.PoeStr(limp,1 ,'Fones: ('+ fdm.tbempresa.fieldbyname('ddd').AsString+
                                        ')'+ fdm.tbempresa.fieldbyname('fone1').AsString +
                                        ' ' + fdm.tbempresa.fieldbyname('fax').AsString+ cnpjemp);
      end;


            inc(limp);//4
	    Imp.PoeStr(limp,1 , #27#71 +tipo+  formatfloat('000000', tb1.FieldByName('numero').AsFloat));
	    Imp.PoeStr(limp,33 , #27#72+Datetimetostr(now) + '  - Vendedor: '+tb1.FieldByName('vendedor').AsString );
            inc(limp);//4
            tracalinha(colunas-2,'-');
            imp.PoeStr(limp,1,linha);

            inc(limp);//6

            imp.PoeStr(limp,1,'Cliente  : '+ tb1.FieldByName('codigo').Asstring+' - ');
            imp.PoeStr(limp,19,tb1.FieldByName('nome').Asstring +  ' - ('+tb1.FieldByName('nomecurto').Asstring+')');

            if length(formatnumeric(tb1.FieldByName('cnpj').Asstring))=14 then begin
               inc(limp);//7
               imp.PoeStr(limp,1,'CNPJ     : '+ tb1.FieldByName('cnpj').Asstring);
               imp.PoeStr(limp,34,'I.E.: '+ tb1.FieldByName('ie').Asstring);
            end;
            inc(limp);//8
            imp.PoeStr(limp,1,'Endereço : '+ tb1.FieldByName('endereco').Asstring);
            imp.PoeStr(limp,50,'Bairro: '+ tb1.FieldByName('bairro').Asstring);
            inc(limp); //9

            imp.PoeStr(limp,1,'Município: '+ tb1.FieldByName('municipio').Asstring);
            imp.PoeStr(limp,35,'Cep: '+ tb1.FieldByName('cep').Asstring);
            imp.PoeStr(limp,52,'Fone: '+ tb1.FieldByName('fone').Asstring );

            if responsavel = 'RIBERCRYL' then begin
                inc(limp);
                imp.PoeStr(limp,1,'Email: '+ tb1.FieldByName('email').Asstring);
                imp.PoeStr(limp,35,'Contato: '+ contato);
                imp.PoeStr(limp,50,'Fone: '+ fone2);

               if endentrega <> '' then begin
                  imp.PoeStr(limp,1,'End. Entrega: '+ endentrega);
                  inc(limp); //10

               end;
            end;

            if tb1.FieldByName('obs').Asstring <> '' then begin
                inc(limp);  //11
                imp.PoeStr(limp,1,'Obs: '+ tb1.FieldByName('obs').Asstring);
            end;

            inc(limp);//12
            imp.PoeStr(limp,1,linha);

            pqtd    := 55;
            pvrunit := 60;
            ptot    := 68;




            if (tb2 <> nil) and (tb2.Active) and (tb2.RecordCount>0) then
               impitem(tb2,'RELAÇÃO DE ITENS:');


            //devolucao
            if (tb3 <> nil) and (tb3.Active) and (tb3.RecordCount>0) then
                impitem(tb3,'DEVOLUÇÃO:');


            //servico
            if (tb4 <> nil) and (tb4.Active) and (tb4.RecordCount>0) then
               impitem(tb4,'SERVIÇOS:');

            //locacao
            if (tb5 <> nil) and (tb5.Active) and (tb5.RecordCount>0) then
               impitem(tb5,'ITENS LOCADOS:');


       inc(limp);  //12
       imp.PoeStr(limp,1,linha);
       inc(limp);
       if responsavel<>'12.347.804/0001-40' then//termcabos
          imp.PoeStr(limp,1, #27#71+'Total Itens: '+tb1.FieldByName('totalitem').Asstring);
       imp.PoeStr(limp,47, 'Total dos Itens');
       imp.PoeStr(limp,ptot, direita('',formatfloat('###,##0.00',tb1.FieldByName('totalpeca').Asfloat),13));


       if tb1.fieldbyname('descontoreal').asfloat> 0 then begin
          inc(limp);
          imp.PoeStr(limp,45, 'Desconto ......');
          imp.PoeStr(limp,ptot-2, direita('',formatfloat('###,##0.00',tb1.FieldByName('descontoreal').Asfloat),13));
       end;

       if tb1.fieldbyname('acrescimo').asfloat> 0 then begin
          inc(limp);
          imp.PoeStr(limp,45, 'Acréscimo .....');
          imp.PoeStr(limp,ptot-2, direita('',formatfloat('###,##0.00',tb1.FieldByName('acrescimo').Asfloat),13));
       end;

       if tb1.fieldbyname('devolucao').asfloat> 0 then begin
          inc(limp);
          imp.PoeStr(limp,1, #27#71+'Total Itens: '+floattostr(tdev));
          imp.PoeStr(limp,47, 'Devolução .....');
          imp.PoeStr(limp,ptot, direita('',formatfloat('###,##0.00',tb1.FieldByName('devolucao').Asfloat),13));
       end;


       if tb1.fieldbyname('totalservico').asfloat> 0 then begin
          inc(limp);
          imp.PoeStr(limp,45, 'Serviço .......');
          imp.PoeStr(limp,ptot-2, direita('',formatfloat('###,##0.00',tb1.FieldByName('totalservico').Asfloat),13));
       end;


       if (tb1.fieldbyname('acrescimo').asfloat >0) or
          (tb1.fieldbyname('descontoreal').asfloat>0) or
          (tb1.fieldbyname('devolucao').asfloat>0) or
          (tb1.fieldbyname('totalservico').asfloat>0) then begin
          inc(limp);
          imp.PoeStr(limp,45, 'Total .........');
          imp.PoeStr(limp,ptot-2, direita('',formatfloat('###,##0.00',tb1.FieldByName('total').Asfloat),13));
       end;




       inc(limp);
       if tb1.FieldByName('credito').Asfloat >0 then begin
          inc(limp);
          imp.PoeStr(limp,45, 'Crédito .......');
          imp.PoeStr(limp,ptot-2, direita('',formatfloat('###,##0.00',tb1.FieldByName('total').Asfloat),13));
       end;

       if tb1.FieldByName('dinheiro').Asfloat >0 then begin
          inc(limp);
          imp.PoeStr(limp,45, 'Dinheiro ......');
          imp.PoeStr(limp,ptot-2, direita('',formatfloat('###,##0.00',tb1.FieldByName('Dinheiro').Asfloat),13));
       end;

       if (tb1.FieldByName('cheque').Asfloat >0) or (tb1.FieldByName('chequepre').Asfloat >0) then begin
          inc(limp);
          imp.PoeStr(limp,45, 'Cheque ........');
          imp.PoeStr(limp,ptot-2, direita('',formatfloat('###,##0.00',tb1.FieldByName('cheque').Asfloat+tb1.FieldByName('chequepre').Asfloat),13));
       end;

       if tb1.FieldByName('cartao').Asfloat >0 then begin
          inc(limp);
          imp.PoeStr(limp,45, 'Cartao C ......');
          imp.PoeStr(limp,ptot-2, direita('',formatfloat('###,##0.00',tb1.FieldByName('cartao').Asfloat),13));
       end;

       if tb1.FieldByName('cartaod').Asfloat >0 then begin
          inc(limp);
          imp.PoeStr(limp,45, 'Cartao D ......');
          imp.PoeStr(limp,ptot-2, direita('',formatfloat('###,##0.00',tb1.FieldByName('cartaod').Asfloat),13));
       end;

       if tb1.FieldByName('fiado').Asfloat >0 then begin
          inc(limp);
          imp.PoeStr(limp,45, 'A Prazo .......');
          imp.PoeStr(limp,ptot-2, direita('',formatfloat('###,##0.00',tb1.FieldByName('fiado').Asfloat),13));
       end;

       if tb1.FieldByName('troco').Asfloat >0 then begin
          inc(limp);
          imp.PoeStr(limp,45, 'Troco .........');
          imp.PoeStr(limp,ptot-2, direita('',formatfloat('###,##0.00',tb1.FieldByName('troco').Asfloat),13));
       end;

       if sqld.RecordCount >0 then begin
          inc(limp);
          sqld.First;
          while not sqld.Eof do begin
               inc(limp);
               imp.PoeStr(limp,41, 'Vencimento: ' + sqld.FieldByName('dtvencimento').AsString);
               imp.PoeStr(limp,ptot-2, direita('',formatfloat('###,##0.00',sqld.FieldByName('vrdocumento').Asfloat),13));
               sqld.Next;
          end;
       end;


       sqld.Destroy;
       inc(limp);
       imp.PoeStr(limp,1, #27#72 +'Ass:....................Data__/__/____');

       if fdm.tbconfig.FieldByName('prazovendanormal').AsInteger >0 then begin
          inc(limp);
          inc(limp);
          imp.PoeStr(limp,1, 'Obs: Prazo Troca = ' +inttostr(fdm.tbconfig.FieldByName('prazovendanormal').AsInteger) +
                    ' dias ('+floattostr(fdm.tbconfig.FieldByName('percentvendanormal').AsFloat)+ '% do total).' );
       end;

       if rodape <> '' then begin
          inc(limp);
          inc(limp);
          for i:=0 to list.Lines.Count do begin
              Imp.PoeStr(limp,1, list.Lines[i]);
              inc(limp);
          end;
       end;

       list.Destroy;
       fdm.tbconfig.close;
       Imp.ImprimeJob;
       Imp.Free;

end;


procedure Tfimpressora.consignadaExecute(Sender: TObject);
var

Imp: TImpMat;
colunas, linhas, ultlinha,Lin,limp, qtlin, ptot, pvrunit, pqtd, dtal :INTEGER;
tipo,cnpjemp, cnpjcli, fone2, contato,Dvenda,fabricante:string;
dev:boolean;
ini:tinifile;
vdq,vdv, dvq, dvv :double;

begin
                     
      Ini := TInifile.Create(conf_local);
      Ini.WriteInteger('impNfiscal', 'qlin', SpinEdit1.value);
      ini.Free;

      Dvenda := '';
      fdm.tbconfig.Open;


      fdm.tbconfig.edit;
      for i := 1 to fdm.tbconfig.FieldByName('decimaisvenda').AsInteger do  Dvenda := Dvenda + '0';


      colunas := 80 ;
      qtlin := 22 + tb1.RecordCount;
      fdm.tbempresa.open;

      if  cnpjie  then
           if fdm.tbempresa['cnpj'] <> null then
              cnpjemp :=' CNPJ: '+ fdm.tbempresa.fieldbyname('cnpj').AsString+
                        ' IE: '+ fdm.tbempresa.fieldbyname('IE').AsString;

      selecione('select * from tbcliente where codigo = ' + quotedstr(tb1.fieldbyname('codigocliente').AsString));
      fone2 := sqlpub.fieldbyname('fone2').AsString;
      contato := sqlpub.fieldbyname('contato').AsString;


	    Imp := TImpMat.Create(Self);
      Imp.Colunas := colunas;


    if qtlin <=40 then                         linhas :=40
    else if (qtlin >40) and (qtlin <=80) then  linhas :=80
    else if (qtlin >80) and (qtlin <=120) then linhas :=120
    else if (qtlin >120)                  then linhas :=160;

    imp.Linhas := linhas;
    Imp.ControleServico := false;
    Imp.Acentuacao := acANSI;
    Imp.ImprimeLinhasFinais := false;
    Imp.LimpaBuffer;



      //tracalinha(colunas-2,'=');
      if qtlin <=33 then                   Imp.PoeStr(1, 1, #27+#67+#33)
      else if (qtlin >33) and (qtlin <=66) then Imp.PoeStr(1, 1, #27+#67+#66)
      else if (qtlin >66) and (qtlin <=99) then Imp.PoeStr(1, 1, #27+#67+#99)
      else if (qtlin >99)                  then Imp.PoeStr(1, 1, #27+#67+#132);

      limp :=1;
	    Imp.PoeStr(limp,18 ,#27#71+ fdm.tbempresa.fieldbyname('nome').AsString );

      tipo := 'VENDA CONSIGNADA';

      inc(limp);//2
	    Imp.PoeStr(limp,1 , #27#72+'End.: '+ fdm.tbempresa.fieldbyname('endereco').AsString+' '+
                                              fdm.tbempresa.fieldbyname('numero').AsString + '   '+
                                              fdm.tbempresa.fieldbyname('Complemento').AsString +'    '+
                                            '  '+ fdm.tbempresa.fieldbyname('municipio').AsString+
                                            ' Cep: '+ fdm.tbempresa.fieldbyname('cep').AsString +
                                            ' UF: '+ fdm.tbempresa.fieldbyname('uf').AsString);
      inc(limp);//3
	    Imp.PoeStr(limp,1 ,'Fones: ('+ fdm.tbempresa.fieldbyname('ddd').AsString+
                                    ')'+ fdm.tbempresa.fieldbyname('fone1').AsString +
                                    ' ' + fdm.tbempresa.fieldbyname('fax').AsString+ cnpjemp);
      inc(limp);//4
	    Imp.PoeStr(limp,1 , #27#71 +tipo);
	    Imp.PoeStr(limp,33 , #27#72+Datetimetostr(now) + '  - Vendedor: '+tb1.FieldByName('fabricante').AsString );
      inc(limp);//4
      tracalinha(colunas-2,'-');
      imp.PoeStr(limp,1,linha);

      inc(limp);//6

      imp.PoeStr(limp,1,'Cliente  : '+ sqlpub.FieldByName('codigo').Asstring+' - ');
      imp.PoeStr(limp,19,sqlpub.FieldByName('nome').Asstring +  ' - ('+sqlpub.FieldByName('nomecurto').Asstring+')');

      if length(formatnumeric(sqlpub.FieldByName('cnpj').Asstring))=14 then begin
         inc(limp);//7
         imp.PoeStr(limp,1,'CNPJ     : '+ sqlpub.FieldByName('cnpj').Asstring);
         imp.PoeStr(limp,34,'I.E.: '+ sqlpub.FieldByName('ie').Asstring);
      end;
      inc(limp);//8
      imp.PoeStr(limp,1,'Endereço : '+ sqlpub.FieldByName('endereco').Asstring);
      imp.PoeStr(limp,50,'Bairro: '+ sqlpub.FieldByName('bairro').Asstring);
      inc(limp); //9

      imp.PoeStr(limp,1,'Município: '+ sqlpub.FieldByName('municipio').Asstring);
      imp.PoeStr(limp,35,'Cep: '+ sqlpub.FieldByName('cep').Asstring);
      imp.PoeStr(limp,52,'Fone: '+ sqlpub.FieldByName('fone').Asstring );

      inc(limp);//12
      imp.PoeStr(limp,1,linha);

      dtal    := 44;
      pqtd    := 55;
      pvrunit := 60;
      ptot    := 68;


      //itens venda
         inc(limp);
         imp.PoeStr(limp,30, #27#71+ 'RELAÇÃO DE ITENS:');
         inc(limp);
         imp.PoeStr(limp,1,#27#72+'I/Cód/Descrição');
         imp.PoeStr(limp,dtal+2,direita('','Data',10));
         imp.PoeStr(limp,pqtd+2,direita('','Qtd',5));
         imp.PoeStr(limp,pvrunit+2,direita('','Unit.',8));
         imp.PoeStr(limp,ptot+2,direita('','Total',11));

         tb1.DisableControls;
         tb1.First;

         inc(limp);
         imp.PoeStr(limp,1, linha);

         vdq :=0;
         vdv :=0;
         dvq :=0;
         dvv :=0;


         while not tb1.EOF do begin

         if tb1.FieldByName('qtd').AsFloat >0 then begin
               inc(limp);
               imp.PoeStr(limp,1,inttostr(tb1.RecNo));
               imp.PoeStr(limp,4,copy(tb1.FieldByName('codigo').Asstring,1,6));

               imp.PoeStr(limp,11,copy(tb1.FieldByName('descricao').AsString,1,43));
               imp.PoeStr(limp,dtal,direita('',tb1.FieldByName('data').AsString,5));
               imp.PoeStr(limp,pqtd,direita('',tb1.FieldByName('qtd').AsString,5));
               imp.PoeStr(limp,pvrunit,direita('',formatfloat('###,##0.'+dvenda,tb1.FieldByName('vrunit').Asfloat),8));
               imp.PoeStr(limp,ptot,   direita('',formatfloat('###,##0.'+dvenda,tb1.FieldByName('total').Asfloat),11));

               vdq := vdq + tb1.fieldbyname('qtd').AsFloat;
               vdv := vdv + tb1.fieldbyname('qtd').AsFloat * tb1.fieldbyname('vrunit').AsFloat;
         end;

         if tb1.fieldbyname('custol').AsFloat >0 then dev := true;

         tb1.Next;
        end;

        tb1.EnableControls;

       inc(limp);  //12
       imp.PoeStr(limp,1,linha);
       inc(limp);
       imp.PoeStr(limp,50, compstr('Qtd Consignada = ',floattostr(vdq)));
       inc(limp);
       imp.PoeStr(limp,50, compstr('Tot Consignada = ',formatfloat('###,##0.00',vdv)));






       if  dev then begin//devolucao

          //itens venda
             inc(limp);
             inc(limp);

             imp.PoeStr(limp,30, #27#71+ 'RELAÇÃO DE DEVOLUÇÕES:');
             inc(limp);
             imp.PoeStr(limp,1,#27#72+'I/Cód/Descrição');
             imp.PoeStr(limp,dtal+2,direita('','DtDev',10));
             imp.PoeStr(limp,pqtd+2,direita('','Qtd',5));
             imp.PoeStr(limp,pvrunit+2,direita('','Unit.',8));
             imp.PoeStr(limp,ptot+2,direita('','Total',11));

             tb1.DisableControls;
             tb1.First;

             inc(limp);
             imp.PoeStr(limp,1, linha);

             while not tb1.EOF do begin

             if tb1.FieldByName('custol').AsFloat >0 then begin
                   inc(limp);
                   imp.PoeStr(limp,1,inttostr(tb1.RecNo));
                   imp.PoeStr(limp,4,copy(tb1.FieldByName('codigo').Asstring,1,6));

                   imp.PoeStr(limp,11,copy(tb1.FieldByName('descricao').AsString,1,43));
                   imp.PoeStr(limp,dtal,direita('',tb1.FieldByName('datadevolucao').AsString,5));
                   imp.PoeStr(limp,pqtd,direita('',tb1.FieldByName('custol').AsString,5));
                   imp.PoeStr(limp,pvrunit,direita('',formatfloat('###,##0.'+dvenda,tb1.FieldByName('vrunit').Asfloat),8));
                   imp.PoeStr(limp,ptot,   direita('',formatfloat('###,##0.'+dvenda,tb1.FieldByName('custol').Asfloat*tb1.FieldByName('vrunit').Asfloat),11));

                   dvq := dvq + tb1.fieldbyname('custol').AsFloat;
                   dvv := dvv + tb1.fieldbyname('custol').AsFloat * tb1.fieldbyname('vrunit').AsFloat;


             end;      
             tb1.Next;
            end;

            tb1.EnableControls;

           inc(limp);  //12
           imp.PoeStr(limp,1,linha);

           inc(limp);
           imp.PoeStr(limp,50, compstr('Qtd Devolvido  = ',floattostr(dvq)));
           inc(limp);
           imp.PoeStr(limp,50, compstr('Tot Devolvido  = ',formatfloat('###,##0.00',dvv)));
       end;

       inc(limp);
       imp.PoeStr(limp,1, #27#72 +'Ass:....................Data__/__/____');


       fdm.tbconfig.close;
       Imp.ImprimeJob;
       Imp.Free;

end;

end.




