unit uacerto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, StdCtrls, DBCtrls, Mask, Buttons, ActnList, DB,
  DBClient, math, inifiles, ExtCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tfacerto = class(TForm)
    ActionList1: TActionList;
    ptotal: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    LACRESCIMO: TLabel;
    Bevel4: TBevel;
    epeca: TDBEdit;
    edescontoreal: TDBEdit;
    edescontopercent: TDBEdit;
    eacrescimo: TDBEdit;
    etotalpedido: TDBEdit;
    ltotal: TLabel;
    Bevel1: TBevel;
    Bevel6: TBevel;
    ptickts: TPanel;
    lvrtransp: TLabel;
    ltickts: TLabel;
    evltransp: TDBEdit;
    etikets: TDBEdit;
    Label3: TLabel;
    Panel1: TPanel;
    etroco: TDBEdit;
    ltroco: TLabel;
    Label6: TLabel;
    erecebido: TDBEdit;
    Bevel2: TBevel;
    Bevel5: TBevel;
    Bevel10: TBevel;
    btnfinalizar: TSpeedButton;
    btncancelar: TSpeedButton;
    tabela: TClientDataSet;
    tabelacodigo: TIntegerField;
    tabelanome: TStringField;
    tabelatotalparcial: TFloatField;
    tabeladescontoReal: TFloatField;
    tabeladescontoPercent: TFloatField;
    tabelatotal: TFloatField;
    tabeladinheiro: TFloatField;
    tabelacheque: TFloatField;
    tabelachequepre: TFloatField;
    tabelacartao: TFloatField;
    tabelacartaod: TFloatField;
    tabelatickts: TFloatField;
    tabelavltransp: TFloatField;
    tabelafiado: TFloatField;
    tabelarecebido: TFloatField;
    tabelatroco: TFloatField;
    tabelaacrescimo: TFloatField;
    ds: TDataSource;
    localizarcliente: TAction;
    fidelidade: TAction;
    tabeladata: TDateField;
    tabelanumero: TStringField;
    tabelacredito: TFloatField;
    totalizar: TAction;
    tabelatipodesconto: TStringField;
    caixa: TAction;
    tabelanomecartao: TStringField;
    acertovenda: TAction;
    tabelalinkvenda: TIntegerField;
    precebimento: TPanel;
    Label14: TLabel;
    Label13: TLabel;
    Bevel12: TBevel;
    ECARTAO: TDBEdit;
    ecartaod: TDBEdit;
    Panel4: TPanel;
    Label9: TLabel;
    Label8: TLabel;
    lcheque: TLabel;
    Label15: TLabel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel13: TBevel;
    edinheiro: TDBEdit;
    echeque: TDBEdit;
    echequepre: TDBEdit;
    efiado: TDBEdit;
    SpeedButton2: TSpeedButton;
    chequeterceiro: TAction;
    tabelachequeterceiro: TFloatField;
    tabelafiltro: TMemoField;
    lcredito: TLabel;
    ecredito: TDBEdit;
    Bevel9: TBevel;
    acertopedido: TAction;
    tabelavendedor: TStringField;
    acertobalcao: TAction;
    clisemcadastro: TAction;
    atualizacheque: TAction;
    frete: TAction;
    acertoentrada: TAction;
    acertopagar_receber: TAction;
    tabelafiltropagar: TMemoField;
    tabelamodo: TStringField;
    tabelanlancamento: TIntegerField;
    comissao: TAction;
    tabelaformapgto: TStringField;
    tbcomissao: TClientDataSet;
    tbcomissaochave: TIntegerField;
    tbcomissaodocumento: TStringField;
    tbcomissaodtemissao: TDateField;
    tbcomissaonome: TStringField;
    tbcomissaovrvenda: TFloatField;
    tbcomissaomargem: TFloatField;
    tbcomissaocomissao: TFloatField;
    tbcomissaototalcomissao: TFloatField;
    tbcomissaopago: TStringField;
    tbcomissaomodalidade: TStringField;
    tabeladocumento: TStringField;
    tabelaobs: TStringField;
    verificadesconto: TAction;
    creditotrocofor: TAction;
    acertofuncionario: TAction;
    rconvenio: TCheckBox;
    convenio: TAction;
    tabelanomeconvenio: TStringField;
    tabelaconvenio: TFloatField;
    inserecredito: TAction;
    LFRETE: TLabel;
    BFRETE: TBevel;
    efrete: TDBEdit;
    tabelafrete: TFloatField;
    gravavenda: TAction;
    tabelacodigovendedor: TIntegerField;
    tabelatd: TStringField;
    tabelaavulso: TStringField;
    tabelavaloricmsS: TFloatField;
    tabelachave: TIntegerField;
    tabelachavepedido: TIntegerField;
    tbcomissaolinkvenda: TIntegerField;
    tbcomissaomodulo: TStringField;
    tbcomissaousuario: TIntegerField;
    tbcomissaocodigocliente: TIntegerField;
    parcvenda: TAction;
    brword: TAction;
    acresdesc: TAction;
    tabelatotalpeca: TFloatField;
    tbcomissaocodigo: TIntegerField;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText1: TStaticText;
    StaticText7: TStaticText;
    Image2: TImage;
    llocaliza: TLabel;
    lclisemcadastro: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    Image1: TImage;
    tabelavaloricmsubstituicao: TFloatField;
    acrescimopercent: TDBEdit;
    Label5: TLabel;
    tabelaacrescimopercent: TFloatField;
    tabelavrcouvert: TFloatField;
    tipo: TAction;
    tabelatipovenda: TStringField;

    procedure gconta(cptb:string);
    procedure edescontorealExit(Sender: TObject);
    procedure erecebidoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure edinheiroExit(Sender: TObject);
    procedure echequeExit(Sender: TObject);
    procedure echequepreExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ECARTAOExit(Sender: TObject);
    procedure ecartaodExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eacrescimoExit(Sender: TObject);
    procedure ecreditoExit(Sender: TObject);
    procedure btnfinalizarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure localizarclienteExecute(Sender: TObject);
    procedure fidelidadeExecute(Sender: TObject);
    procedure totalizarExecute(Sender: TObject);
    procedure epecaEnter(Sender: TObject);
    procedure epecaExit(Sender: TObject);
    procedure etotalpedidoExit(Sender: TObject);
    procedure efiadoExit(Sender: TObject);
    procedure etiketsExit(Sender: TObject);
    procedure evltranspExit(Sender: TObject);
    procedure etrocoExit(Sender: TObject);
    procedure acertovendaExecute(Sender: TObject);
    procedure erecebidoKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure chequeterceiroExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure acertopedidoExecute(Sender: TObject);
    procedure caixaExecute(Sender: TObject);
    procedure acertobalcaoExecute(Sender: TObject);
    procedure clisemcadastroExecute(Sender: TObject);
    procedure atualizachequeExecute(Sender: TObject);
    procedure freteExecute(Sender: TObject);
    procedure acertoentradaExecute(Sender: TObject);
    procedure acertopagar_receberExecute(Sender: TObject);
    procedure comissaoExecute(Sender: TObject);
    procedure verificadescontoExecute(Sender: TObject);
    procedure creditotrocoforExecute(Sender: TObject);
    procedure acertofuncionarioExecute(Sender: TObject);
    procedure convenioExecute(Sender: TObject);
    procedure inserecreditoExecute(Sender: TObject);
    procedure efreteEnter(Sender: TObject);
    procedure efreteExit(Sender: TObject);
    procedure gravavendaExecute(Sender: TObject);
    procedure parcvendaExecute(Sender: TObject);
    procedure brwordExecute(Sender: TObject);
    procedure acresdescExecute(Sender: TObject);
    procedure edescontorealKeyPress(Sender: TObject; var Key: Char);
    procedure rconvenioClick(Sender: TObject);
    procedure edescontopercentExit(Sender: TObject);
    procedure acrescimopercentExit(Sender: TObject);
  private
    creditodesc, percent, margem: double;
    codigobalcao:integer;
    sqld: tzquery;
    abatecredito, modocalcula,comissprod: string;
    del:boolean;
    { Private declarations }
  public
    percentcomissao, totalreceber,descrat: double;
    letra, controle, codigo, modulo: string;
    fecha,freteconta, aprazo, chequepre, cartao, Cbanco: boolean;
    tbform, tbformi, tbformd, tbforms, tbformpp, tbforml: tzquery;

    { Public declarations }
  end;

var
  facerto: Tfacerto;

implementation

uses funcoes, udm, umanu, uecf_imp_, uecf_aux_, uecf_, uparcelado;

{$R *.dfm}






procedure Tfacerto.edescontorealExit(Sender: TObject);
var

  desc, descP: double;
  tipo: string;
begin
  fdm.tbconfig.Open;

  edescontoreal.Color := $00EAFFFF;

  if edescontoreal.Modified = True then
  begin
    tabela.Edit;
    tabela['total'] := tabela.FieldByName('totalparcial').AsFloat;

    if tabela.FieldByName('total').AsFloat>0 then
      tabela['descontopercent'] :=tabela.FieldByName('descontoreal').AsFloat * 100 /
                                  tabela.FieldByName('total').AsFloat
    else tabela['descontopercent'] := null;

    if (tabela.FieldByName('descontopercent').AsFloat >
      fdm.tbconfig.FieldByName('desconto').AsFloat) or
      (controle = 'acertoreceber') or
      (controle = 'refinanciamento') then
    begin
      // para o desconto 2(com senha)
      if tabela.FieldByName('descontopercent').AsFloat <=
        fdm.tbconfig.FieldByName('desconto2').AsFloat then
        tipo := '*'
      else
        tipo := '';

      desc := tabela.FieldByName('descontoreal').AsFloat;
      descP := tabela.FieldByName('descontopercent').AsFloat;

      tabela.FieldByName('descontoreal').Clear;
      tabela.FieldByName('descontopercent').Clear;

      if (controle <> 'acertopagar') and
        (controle <> 'acertocompra') and
        (controle <> 'devolver') and
        (controle <> 'entrada1') and
        (controle <> 'entrada') then

        senhagerencial(tipo + 'DESCONTO SUPERIOR',
          'DIGITE A SENHA PARA LIBERAR:',
          'DESCONTO SUPERIOR NÃO PERMITIDO')

      else if (controle = 'acertoreceber') or
        (controle = 'refinanciamento') or
        (controle = 'acertochequeR') then
        senhagerencial('DESCONTO RECEBIMENTO',
          'DIGITE A SENHA GERENCIAL PARA LIBERAR:',
          'DESCONTO EM CONTA RECEBIDA');


      tabela.edit;
      tabela['descontoreal'] := desc;
      tabela['descontopercent'] := descP;
    end;

    vf := False;

    if (tabela.FieldByName('descontoreal').AsFloat > 0) and
      (controle = 'pedido') then
    begin
      tabela.Edit;
      //if Application.MessageBox('O desconto é até o vencimento? ', 'Confirme', mb_yesno +
        //MB_DEFBUTTON2 + MB_ICONQUESTION) = idYes then tabela['tipodesconto'] := 'S'
      //else
        tabela['tipodesconto'] := 'N';
    end
    else
      tabela.FieldByName('tipodesconto').Clear;

    totalizarexecute(self);
    edescontopercent.Modified := False;
  end;



  edescontoreal.Modified := False;
end;

procedure Tfacerto.erecebidoExit(Sender: TObject);
begin
  if erecebido.Modified = True then
    totalizarexecute(self);

  erecebido.Color := $00EAFFFF;
end;

procedure Tfacerto.FormKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);

var
cp:string;
begin           

      if key = 27 then Close;
      if key = vk_insert then
        btnfinalizarClick(self);

      if (key = 13) or (key = vk_down) then
        Perform(wm_nextdlgctl, 0,0);
      if key = vk_up then
        Perform(wm_nextdlgctl, 1,0);

      if (key in [113]) and (ecredito.ReadOnly=true) then abort;
      if (key in [116]) and (echequepre.ReadOnly=true) then abort;
      if (key in [115]) and (echeque.ReadOnly=true) then abort;
      if (key in [117]) and (efiado.ReadOnly=true) then abort;
      if (key in [119]) and (ecartaod.ReadOnly=true) then abort;
      if (key in [118]) and (ecartao.ReadOnly=true) then abort;

      if (key in [118..119]) and (precebimento.Visible=false) then abort;

      if key in [113..119] then begin
         tabela.edit;
         tabela['credito']:= null;
         tabela['dinheiro']:= null;
         tabela['cheque']:= null;
         tabela['chequepre']:= null;
         tabela['fiado']:= null;
         tabela['cartao']:= null;
         tabela['cartaod']:= null;
         tabela['tickts']:= null;
         tabela['vltransp']:= null;

         if      key = 113 then cp := 'credito'
         else if key = 114 then cp := 'dinheiro'
         else if key = 115 then cp := 'cheque'
         else if key = 116 then cp := 'chequepre'
         else if key = 117 then cp := 'fiado'
         else if key = 118 then cp := 'cartao'
         else if key = 119 then cp := 'cartaod';

         if      key = 113 then ecredito.SetFocus
         else if key = 114 then edinheiro.SetFocus
         else if key = 115 then echeque.SetFocus
         else if key = 116 then echequepre.SetFocus
         else if key = 117 then efiado.SetFocus
         else if key = 118 then ECARTAO.SetFocus
         else if key = 119 then ecartaod.SetFocus;


         totalizarexecute(self);

         tabela[cp] := tabela.fieldbyname('total').AsFloat;
         totalizarexecute(self);
      end;

      key :=0;

end;

procedure Tfacerto.edinheiroExit(Sender: TObject);
begin
        edinheiro.Color := $00EAFFFF;
        if edinheiro.Modified = True then
           totalizarexecute(self);
end;

procedure Tfacerto.echequeExit(Sender: TObject);
begin
  if echeque.Modified = True then
    totalizarexecute(self);

  echeque.Color := $00EAFFFF;
end;

procedure Tfacerto.echequepreExit(Sender: TObject);
begin
  if echequepre.Modified = True then
    totalizarexecute(self);
  echequepre.Color := $00EAFFFF;
end;

procedure Tfacerto.FormShow(Sender: TObject);
var
  sql: tzquery;
begin


        if (controle <> 'entrada') and (controle <> 'entrada1')then
        begin
          lfrete.Hide;
          efrete.Hide;
          bfrete.Hide;
          ltotal.top := 85;
          etotalpedido.top := 89;
          ptotal.Height := 120;
        end;

        totalizarExecute(self);

        if (controle = 'balcao') or
           (controle = 'balcaoN') or
          (controle = 'pedido') or
          (controle = 'acertoreceber') or
          (controle = 'devolver') or
          (controle = 'acertochequeR') then begin
          inserecreditoExecute(self);
          fdm.tbconfig.Open;
          codigobalcao := fdm.tbconfig.FieldByName('codigobalcao').AsInteger;
        end;

        rconvenio.Visible := ((controle = 'balcao') or
          (controle = 'acertoreceber') or
          (controle = 'pedido')) and
          (responsavel = 'MAURICIO');

        // credito form
        if (controle = 'entrada') or  (controle = 'entrada1') or(controle = 'acertopagar') or (controle = 'devolver') then
        begin
                sql :=  tzquery.Create(application);
                sql.Connection := fdm.conector ;

           with sql do
          begin
                sql.clear;
                sql.add( 'select credito from tbfornecedor where codigo =' +
                         quotedstr(tabela.FieldByName('codigo').AsString));

            Open;


            if FieldByName('credito').AsFloat > 0 then
              if msg('Você tem um crédito de  ' + format('%n', [FieldByName('credito').AsFloat]) +
                     '. Deseja usá-lo?',2) then begin
                tabela.Edit;

                if tabela.FieldByName('total').AsFloat > FieldByName('credito').AsFloat then
                   tabela['credito'] := FieldByName('credito').AsFloat
                else
                   tabela['credito'] :=tabela.FieldByName('total').AsFloat;

              end;
          end;
        end;


        fdm.tbconfig.Open;

        verificadescontoexecute(self);

        if (controle = 'balcao') or(controle = 'balcaoN') then 
        begin
          llocaliza.Show;
          lclisemcadastro.Show;
        end;



        if (controle = 'acertocompra') or
          (controle = 'acertopagar') or
          (controle = 'funcionario') or
          (controle = 'devolver') or
          (controle = 'entrada1') or
          (controle = 'entrada') then
        begin
          lcheque.Caption := 'Cheq Terceiro';
      //    echequepre.DataField := 'chequeterceiro';
          echequepre.ReadOnly := True;
          echequepre.Width := 188;
        end;


        if (fdm.tbconfig['tickts'] = 'S') and
          (controle <> 'acertovenda') and
          (controle <> 'acertopagar') and
          (controle <> 'funcionario') and
          (controle <> 'acertochequeR') and
          (controle <> 'acertoreceber') and
          (controle <> 'refinanciamento') and
          (controle <> 'devolver') and
          (controle <> 'orcamento') and
          (controle <> 'entrada1') and
          (controle <> 'entrada') then
        else
          ptickts.Visible := False;


        precebimento.Visible := (controle = 'acertovenda') or (controle = 'pedido') or
                                (controle = 'balcao')or(controle = 'balcaoN') or
                                (controle = 'acertoreceber') or (controle = 'orc');

        if controle = 'orcamento' then
          Panel4.Hide;

        fdm.tbconfig.open;
        if (controle = 'devolver') and (fdm.tbconfig['vendaavulsa'] = 'N') then
          efiado.ReadOnly := True;

        if controle = 'devolver' then
        begin
          edescontoreal.ReadOnly := True;
          edescontopercent.ReadOnly := True;
          eacrescimo.ReadOnly := True;
        end;


        if active then
        edescontoreal.SetFocus;
        edescontoreal.Modified:= false;


        if tabela['data'] = null then
             tabela['data'] := date;

        totalizarExecute(self);

        if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\menu3.jpg')) then begin
          image1.Picture.LoadFromFile(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\menu3.jpg'));
          Image2.Picture.LoadFromFile(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\menu3.jpg'));
        end;  


        caption := tabela.fieldbyname('codigo').AsString + '  -  ' +
                   tabela.fieldbyname('nome').AsString;

end;

procedure Tfacerto.ECARTAOExit(Sender: TObject);
begin
  if ecartao.Modified = True then
    totalizarexecute(self);
  ECARTAO.Color := $00EAFFFF;
end;

procedure Tfacerto.ecartaodExit(Sender: TObject);
begin
  if ecartaod.Modified = True then
    totalizarexecute(self);

  ecartaod.Color := $00EAFFFF;
end;

procedure Tfacerto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cht:=false;
  fdm.tbconfig.Close;
  facerto := nil;
  Release;
end;

procedure Tfacerto.eacrescimoExit(Sender: TObject);
begin
        eacrescimo.Color := $00EAFFFF;

        if eacrescimo.Modified = True then   begin
           tabela.Edit;
           tabela['total'] := tabela.FieldByName('totalparcial').AsFloat;

           if tabela.FieldByName('total').AsFloat>0 then
              tabela['acrescimopercent'] :=tabela.FieldByName('acrescimo').AsFloat * 100 /
                                           tabela.FieldByName('total').AsFloat
           else tabela['acrescimopercent'] := null;
           totalizarexecute(self);
           acrescimopercent.Modified := False;
         end;
         eacrescimo.Modified := False;

end;

procedure Tfacerto.ecreditoExit(Sender: TObject);
begin
  ecredito.Color := $00EAFFFF;
  if ecredito.Modified = True then
    totalizarexecute(self);
end;

procedure Tfacerto.btnfinalizarClick(Sender: TObject);
var
  tipo, st,codconta: string;
begin

        contanaoconfig;

        if active then  focuscontrol(nil);

        if controle = 'restaurante' then begin
           msg('Você precisa de liberação, para encerrar a venda.',0);
           close;
           abort;
        end;

        if ((controle = 'balcao') or
           (controle = 'balcaoN') or
           (controle = 'pedido') or
           (controle = 'acertoreceber') or
           (controle = 'acertochequeR')) and
           (tabela['codigo']=codigobalcao) and
           (tabela.FieldByName('fiado').AsFloat>0) then
           msg('#Não é permitido fazer venda à prazo para consumidor balcão.',0);


  if tabela.FieldByName('dinheiro').AsFloat >0 then cxdiario;

  if ((controle = 'acertopagar') or
      (controle = 'acertoreceber') or
      (controle = 'acertochequeR')) and
     ((tabela.FieldByName('descontoreal').AsFloat>0) or
        (tabela.FieldByName('acrescimo').AsFloat>0)) and
     (tabela.FieldByName('troco').AsFloat<0) then
     msg('#Para dar desconto ou acréscimo precisa receber o valor integral.',0);



  if (controle = 'orcamento') or (controle = 'orc') then  begin

    if tabela.FieldByName('descontoreal').AsFloat <> descrat then
       acresdescExecute(self);

    if tabela.FieldByName('acrescimo').AsFloat > 0 then
      tbform['acrescimo'] := tabela.FieldByName('acrescimo').AsFloat
    else tbform['acrescimo'] := null;

    if tabela.FieldByName('fiado').AsFloat > 0 then
      tbform['fiado'] := tabela.FieldByName('fiado').AsFloat
    else tbform['fiado'] := null;

    if tabela.FieldByName('chequepre').AsFloat > 0 then
      tbform['chequepre'] := tabela.FieldByName('chequepre').AsFloat
    else tbform['chequepre'] := null;

    if tabela.FieldByName('cartao').AsFloat > 0 then
      tbform['cartao'] := tabela.FieldByName('cartao').AsFloat
    else tbform['cartao'] := null;


    if tabela.FieldByName('dinheiro').AsFloat > 0 then
        tbform['dinheiro'] := tabela.FieldByName('dinheiro').AsFloat
    else tbform['dinheiro'] := null;



  end  else if ((roundto(tabela.FieldByName('recebido').AsFloat, - 2) <
    roundto(tabela.FieldByName('total').AsFloat, - 2)) and
    ((controle <> 'acertopagar') and
    (controle <> 'acertoreceber') and
    (controle <> 'acertochequeR'))) or
    ((tabela.FieldByName('recebido').AsFloat <= 0) and
    (tabela.FieldByName('total').AsFloat > 0)) then
  begin
    msg('Quantia recebida insuficiente, verifique. ',0);
        if active then
    erecebido.SetFocus;
    abort;
  end;



  if (controle <> 'orcamento') then begin

      {if (not fecha) and (msg('Finalizar operação:'+#13+#13+'Deseja encerrar?', 2) = false) then begin
         vf:=false;
         abort;
      end;}

    if ((tabela.FieldByName('chequepre').AsFloat > 0) or
      (tabela.FieldByName('fiado').AsFloat > 0) or
      (tabela.FieldByName('cheque').AsFloat > 0)) and
      (tabela['codigo'] = null) then
      localizarclienteexecute(self);

    ST := '';


    if (controle <> 'acertochequeR') and
       (controle <> 'acertoreceber') and
       (controle <> 'balcaoN') and
       (controle <> 'entrada1') and
       (controle <> 'acertopagar') and
       (controle <> 'entrada') then
         deletaconta(tabela.FieldByName('linkvenda').AsString, controle,
                       tabela.FieldByName('codigo').AsString,
                       tabela.FieldByName('documento').AsString);


    if   (controle = 'balcaoN') and (del) then begin
         deletaconta(tabela.FieldByName('linkvenda').AsString, controle,
                       tabela.FieldByName('codigo').AsString,
                       tabela.FieldByName('documento').AsString);
         del:= false;
    end;
    del:=true;


    freteExecute(self);

    if (responsavel = 'FABIO VITRINE') and (modulo = '2') then begin
       tbform.Edit;
       tbform['avulso'] := 'S';
       
    end else

    if tabela.FieldByName('fiado').AsFloat > 0 then  gconta('fiado');


    if tabela.FieldByName('cartao').AsFloat > 0 then gconta('cartao');

    if tabela.FieldByName('cartaod').AsFloat > 0 then gconta('cartaod');

    if (tabela.FieldByName('chequepre').AsFloat > 0) and
       ((modulo <>'8') and (modulo <>'10') and (modulo <>'27')) then  gconta('chequepre');

    if tabela.FieldByName('cheque').AsFloat > 0 then gconta('cheque');

    if (tabela.FieldByName('chequepre').AsFloat > 0) and ((modulo ='8') or (modulo ='10') or
       (modulo ='27') or (controle = 'devolver'))  then atualizachequeExecute(self);

    if (tabela.FieldByName('dinheiro').AsFloat > 0) then
    begin


      if (not planocontas) and ((controle = 'entrada')  or (controle = 'entrada1') or (controle = 'acertopagar') or (controle = 'devolver') or
         (controle = 'acertocompra') or (controle = 'funcionario')) then

      begin
          tipo := '1';
        if inputquery('Pagamento', 'O pagamento em dinheiro deve sair (Digite uma opção):' +
          #13 + #13 +
          '1 = Do Caixa Atual' + #13 +
          '2 = De uma Conta', tipo) then
        else
          abort;

        if tipo = '2' then begin


           codconta := combotb('tbconta','descricao','chave','Vai tirar o valor da conta:', '');
           if codconta = '' then abort;
           gravabancovr(strtoint(codconta),'D', tabela.FieldByName('documento').AsString,
                        'PGTO CONTA', modulo, 'DI',
                        tabela.FieldByName('dinheiro').AsFloat - tabela.FieldByName('troco').AsFloat,
                        tabela.FieldByName('linkvenda').AsInteger);


        end

        else if tipo = '1' then caixaexecute(self);
      end;
    end;


    if (controle = 'acertochequeR') or
       (controle = 'acertoreceber') then
       caixaexecute(self);


    if (controle <> 'entrada') and
      (controle <> 'entrada1') and
      (controle <> 'acertopagar') and
      (controle <> 'acertochequeR') and
      (controle <> 'acertoreceber') and
      (controle <> 'acertocompra') and
      //(controle <> 'devolver') and
      (controle <> 'funcionario') then
      caixaExecute(self);

//    if (controle = 'devolver') and      (tabela.FieldByName('chequepre').AsFloat > 0) then      atualizachequeExecute(self);

    acertovendaExecute(self);
    acertopedidoExecute(self);
    acertobalcaoExecute(self);
    acertoentradaExecute(self);
//    acertoentrada1Execute(self);
    acertopagar_receberExecute(self);
    creditoTrocoForexecute(self);
    acertofuncionarioexecute(self);

    if tabela['avulso'] = 'S' then
      saldoavulsa(tabela.FieldByName('codigo').AsString);

    vf := True;
    Close;



  end
  else
    Close;


end;

procedure Tfacerto.btncancelarClick(Sender: TObject);
begin
  vf := False;
  Close;
end;

procedure Tfacerto.localizarclienteExecute(Sender: TObject);
var
  st,campo: string;
  sql: tzquery;
begin
  if (controle = 'balcao') or (controle = 'balcaoN') then begin
       if inputquery('Localiza','Digite o código ou o nome',st) then else abort;

           if StrIsfloat(st)  then
              campo :='codigo'
           else
              campo := 'nome';

           listagem(campo,st,'',4,0);


      if fdm.sg.Active then begin
         tabela.edit;
         tabela['codigo'] := fdm.sg.FieldByName('codigo').AsString;
         tabela['nome'] := fdm.sg.FieldByName('nome').AsString;

         caption := tabela.fieldbyname('codigo').AsString + '  -  ' +
                    tabela.fieldbyname('nome').AsString;


         tabela.post;
      end;

      fechatg;

      inserecreditoExecute(self);


      //Ou o cliente foi selecionado, no inicio da venda, ou inputQuery não foi falso.
      if (tabela['codigo'] <> null) and (controle = 'balcao')then
      begin

          sql :=  tzquery.Create(application);
          sql.Connection := fdm.conector ;


        with sql do
        begin

          sql.clear;
          sql.add('update vendaitem set' +
            ' nome = ' + quotedstr(tabela.FieldByName('nome').AsString) +
            ' ,codigocliente = ' + quotedstr(tabela.FieldByName('codigo').AsString) +
            ' where link = ' + quotedstr(tbform.FieldByName('chave').AsString));
          execsql;

          sql.clear;
          sql.add( 'update venda set' +
            ' nome = ' + quotedstr(tabela.FieldByName('nome').AsString) +
            ', codigo = ' + quotedstr(tabela.FieldByName('codigo').AsString) +
            ' where chave = ' + quotedstr(tbform.FieldByName('chave').AsString));
          execsql;
          Destroy;
        end;
      end;
    end;

end;

procedure Tfacerto.fidelidadeExecute(Sender: TObject);
var
  sql: tzquery;
  ponto, valor: double;
  anterior: integer;
  subgrupo: string;
begin

          sql :=  tzquery.Create(application);
          sql.Connection := fdm.conector ;


         with sql do
         begin

          sql.clear;
          sql.add( 'select fidelidade from tbcliente where codigo = ' +
                   quotedstr(tbform.FieldByName('codigo').AsString));
    Open;

    if fieldbyname('fidelidade').asstring = 'S' then
    begin
      tbformi.First;
      tbformi.DisableControls;
      valor := 0;

      while not tbformi.EOF do
      begin
        //

        Close;
          sql.clear;
          sql.add( 'select subgrupo from tbproduto where codigo = ' +
          quotedstr(tbformi.FieldByName('codigo').AsString));
        Open;
        subgrupo := FieldByName('subgrupo').AsString;

        Close;
          sql.clear;
          sql.add( 'select fidelidade from tbsubgrupo where nome = ' +
                  quotedstr(subgrupo));
        Open;

        if fieldbyname('fidelidade').AsString = 'S' then
          valor := valor + tbformi.FieldByName('total').AsFloat;
        tbformi.Next;
      end;

      tbformi.EnableControls;


      if valor > 0 then 
      begin
        Close;
          sql.clear;
          sql.add('select ponto from tbfidelidadep where ' +
                  'de <= ' + realdblstr(valor) + ' order by ate desc');
        Open;


        ponto := FieldByName('ponto').AsInteger;

        if ponto > 0 then
          if controle = 'balcao' then
             vrpub := FieldByName('ponto').asinteger;


        Close;
          sql.clear;
          sql.add('select ponto,codigo from tbfidelidadesoma ' +
                  ' where codigo = ' + quotedstr(tabela.FieldByName('codigo').AsString));
        Open;

        anterior := FieldByName('ponto').AsInteger;

        if fieldbyname('codigo').AsString <> null then 
        begin
          Close;

          sql.clear;
          sql.add('update tbfidelidadesoma set ponto = ' +
            realdblstr(ponto + anterior) + ' where codigo = ' +
            quotedstr(tabela.FieldByName('codigo').AsString))
        end 
        else 
        begin
          Close;
          sql.clear;
          sql.add('insert into tbfidelidadesoma ' +
            ' set ponto = ' + realdblstr(ponto) +
            ' ,codigo = ' + quotedstr(tabela.FieldByName('codigo').AsString));
        end;

        execsql;
      end;
    end;



    Destroy;
  end;
end;

procedure Tfacerto.totalizarExecute(Sender: TObject);
var
  desconto, frete: real;
begin
  if freteconta then
    frete := 0
  else
    frete := tabela.FieldByName('frete').AsFloat;

  if responsavel='12.347.804/0001-40' then frete := tabela.FieldByName('frete').AsFloat;

  if (controle = 'pedido') and (tabela['tipodesconto'] = 'S') then
    desconto := 0
  else
    desconto := tabela.FieldByName('descontoreal').AsFloat;

  tabela.edit;

  tabela['total'] := tabela.FieldByName('totalparcial').AsFloat -
    desconto + frete + tabela.FieldByName('acrescimo').AsFloat+
    tabela.FieldByName('vrcouvert').AsFloat+
    tabela.FieldByName('valoricmsubstituicao').AsFloat;
  //                           showmessage(floattostr(tabela.fieldbyname('total').AsFloat));

  if controle <> 'entrada' then frete := 0;

  tabela['recebido'] := roundto(tabela.FieldByName('credito').AsFloat +
    tabela.FieldByName('dinheiro').AsFloat +
    tabela.FieldByName('cheque').AsFloat +
    tabela.FieldByName('chequepre').AsFloat +
    tabela.FieldByName('cartao').AsFloat +
    tabela.FieldByName('cartaod').AsFloat +
    tabela.FieldByName('fiado').AsFloat +
    tabela.FieldByName('tickts').AsFloat +
    tabela.FieldByName('vltransp').AsFloat +
    frete, - 2);

  tabela['troco'] := roundto(tabela.FieldByName('recebido').AsFloat -
    tabela.FieldByName('total').AsFloat, - 2);

  //     SHOWMESSAGE(tabela.fieldbyname('recebido').ASSTRING);
  //    SHOWMESSAGE(tabela.fieldbyname('total').ASSTRING);

  if tabela.FieldByName('troco').AsFloat < 0 then
    ltroco.Caption := 'Faltam '
  else
    ltroco.Caption := 'TROCO';
end;

procedure Tfacerto.epecaEnter(Sender: TObject);
begin
  with Sender as tdbedit do
    Color := clwhite;
end;

procedure Tfacerto.epecaExit(Sender: TObject);
begin
  epeca.Color := $00EAFFFF;
  if epeca.Modified then
    totalizarexecute(self);

  if (controle = 'acertoreceber') and
    (epeca.Modified = True) and
    (totalreceber <> tabela.FieldByName('totalparcial').AsFloat) then 
  begin
    tabela.FieldByName('acrescimo').Clear;
    tabela.FieldByName('descontoreal').Clear;
    tabela.FieldByName('descontopercent').Clear;                 
    totalizarexecute(self);
    epeca.Modified := False;
  end;
end;

procedure Tfacerto.etotalpedidoExit(Sender: TObject);
begin
  etotalpedido.Color := $00EAFFFF;
end;

procedure Tfacerto.efiadoExit(Sender: TObject);
begin
  if efiado.Modified = True then
    totalizarexecute(self);
  efiado.Color := $00EAFFFF;
end;

procedure Tfacerto.etiketsExit(Sender: TObject);
begin
  if etikets.Modified = True then
    totalizarexecute(self);
  etikets.Color := $00EAFFFF;
end;

procedure Tfacerto.evltranspExit(Sender: TObject);
begin
  if evltransp.Modified = True then
    totalizarexecute(self);
  evltransp.Color := $00EAFFFF;
end;

procedure Tfacerto.etrocoExit(Sender: TObject);
begin
  etroco.Color := $00EAFFFF;
end;

procedure Tfacerto.acertovendaExecute(Sender: TObject);
var
 tbfat: string;
begin

        if (controle = 'acertovenda') or (controle = 'acertocompra') then  begin

           if controle = 'acertocompra' then tbfat := 'tbacertocompra'
           else tbfat := 'tbacertovenda';

           selecione('delete from '+tbfat+' where numero =' +
                     quotedstr(tabela.FieldByName('linkvenda').AsString));

           selecione('insert into ' + tbfat+
                     ' (data,numero,caixa,usuario,codigo,nome,documento,modulo,soma,desconto,total,dinheiro,troco,' +
                     'fiado,chequepre,cheque,cartao,cartaod,acrescimo,emp,credito) values(' +
                     ' now(),' +
                      quotedstr(tabela.FieldByName('linkvenda').AsString) + ' ,' +
                      quotedstr(fdm.tbcaixagrupo.FieldByName('chave').AsString) + ' ,' +
                      inttostr(usuariolink) + ' ,' +                      
                      quotedstr(tabela['codigo']) + ' ,' +
                      quotedstr(tabela['nome']) + ' ,' +
                      quotedstr(tabela['documento']) + ' ,' +
                      quotedstr(modulo)+ ' ,' +
                      realdblstr(tabela.FieldByName('descontoreal').AsFloat +
                      tabela.FieldByName('total').AsFloat) + ',' +
                      realdblstr(tabela.FieldByName('descontoreal').AsFloat) + ',' +
                      realdblstr(tabela.FieldByName('total').AsFloat) + ',' +
                      realdblstr(tabela.FieldByName('dinheiro').AsFloat) + ',' +
                      realdblstr(tabela.FieldByName('troco').AsFloat) + ',' +
                      realdblstr(tabela.FieldByName('fiado').AsFloat) + ',' +
                      realdblstr(tabela.FieldByName('chequepre').AsFloat) + ',' +
                      realdblstr(tabela.FieldByName('cheque').AsFloat) + ',' +
                      realdblstr(tabela.FieldByName('cartao').AsFloat) + ',' +
                      realdblstr(tabela.FieldByName('cartaod').AsFloat) + ',' +
                      realdblstr(tabela.FieldByName('acrescimo').AsFloat) + ',' +
                      inttostr(emp) + ',' +
                      realdblstr(tabela.FieldByName('credito').AsFloat)+ ')');



           if tbfat = 'tbacertovenda' then begin
              selecione('update tbcliente set ' +
                     ' credito = credito -' + realdblstr(tabela.FieldByName('credito').AsFloat) +
                     ' ,debito = debito -' + realdblstr(tabela.FieldByName('acrescimo').AsFloat) +
                     ' where codigo = ' + quotedstr(tabela.FieldByName('codigo').AsString));
              saldoavulsa(tabela.FieldByName('codigo').AsString);
           end;


           //gera titulo a vista
           if tabela.fieldbyname('dinheiro').AsFloat-tabela.fieldbyname('troco').AsFloat <>0 then begin

              selecione('select numero, codigo,nome, data as dtfechamento, caixa, usuario, numero as chave, emp, '+
                        ' if(troco is not null,if (dinheiro is not null, dinheiro,0)-troco,dinheiro) as Dinheiro '+
                        ' from '+tbfat+' where numero = ' + quotedstr(tabela.FieldByName('linkvenda').AsString));

              if controle = 'acertocompra' then insererecpg('tbpagar', sqlpub,'27',true)
                                           else insererecpg('tbreceber', sqlpub,'28',true);
           end;


//           if tbfat = 'tbacertocompra' then    atualizachequeexecute(self);

        vf:=true;
  end;
end;

procedure Tfacerto.erecebidoKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if key = 13 then
    btnfinalizarclick(self);
end;

procedure Tfacerto.chequeterceiroExecute(Sender: TObject);
begin
  if (controle = 'acertocompra') or
    (controle = 'acertopagar') or
    (controle = 'funcionario') or
    (controle = 'devolver') or
    (controle = 'entrada1') or
    (controle = 'entrada') then
  begin

           {with fdm.Query1 do begin
                close;
                sql.Clear;
                sql.Add('select chave, DtEmissao, DtVencimento, VrDocumento as Valor, '+
                        ' Cheque as Numero, Agencia, chequeconta as Conta, Codigo, '+
                        ' Nome from tbreceber where diferenca > 0 and ch="S"');
                fdm.tbquery1.Close;
                fdm.tbquery1.open;

               (fdm.tbquery1.FieldByName('valor') as tfloatfield).displayformat := '###,##0.00';
                fdm.tbquery1.FieldByName('Nome').DisplayWidth :=30;
                fdm.tbquery1.FieldByName('Numero').DisplayWidth :=10;
                fdm.tbquery1.FieldByName('Conta').DisplayWidth :=10;

               fdm.tbquery1.IndexFieldNames :='DtVencimento';
               vrpub := tabela.fieldbyname('total').AsFloat;
               cht:=false;
               reltb(fdm.tbquery1,'Listagem de cheques','','Valor','','','','','','','','','','','','');
                           }

              vrpub := tabela.fieldbyname('total').AsFloat;
              cht:=false;
              periodo2('passacheque','','','','','',490,750,2);

               if cht then begin
                  tabela.edit;
                  tabela['chequepre'] := vrpub;
                  totalizarexecute(self);
               end;

               vrpub :=0;
               fdm.tbquery1.close;

  end;
end;

procedure Tfacerto.SpeedButton2Click(Sender: TObject);
begin
        chts :='';
        chequeterceiroexecute(self);
        fdm.tbquery1.IndexFieldNames := '';
end;

procedure Tfacerto.acertopedidoExecute(Sender: TObject);
var
  somacredito, dt, loc, st, comissaoservico, comissaovendedor: string;
  dev,margem: real;
begin

  if (controle = 'pedido') or (controle = 'devolver') then  begin
    if controle = 'devolver' then
      dev := -1
    else
      dev := 1;


    tbform.edit;


    tbform['tipodesconto'] := tabela.FieldByName('tipodesconto').AsString;

    tbform['recebido'] := tabela.FieldByName('recebido').AsFloat;
    tbform['troco'] := tabela.FieldByName('troco').AsFloat;

    if tabela.FieldByName('acrescimo').AsFloat > 0 then
      tbform['acrescimo'] := tabela.FieldByName('acrescimo').AsFloat * dev
    else
      tbform.FieldByName('acrescimo').Clear;

    if tabela.FieldByName('credito').AsFloat > 0 then
      tbform['credito'] := tabela.FieldByName('credito').AsFloat * dev
    else
      tbform.FieldByName('credito').Clear;

    if tabela.FieldByName('dinheiro').AsFloat > 0 then
      tbform['dinheiro'] := (tabela.FieldByName('dinheiro').AsFloat {-
        tabela.FieldByName('troco').AsFloat}) * dev
    else
      tbform.FieldByName('dinheiro').Clear;


    if tabela.FieldByName('cartao').AsFloat > 0 then
      tbform['cartao'] := tabela.FieldByName('cartao').AsFloat * dev
    else
      tbform.FieldByName('cartao').Clear;

    if tabela.FieldByName('cartaod').AsFloat > 0 then
      tbform['cartaod'] := tabela.FieldByName('cartaod').AsFloat * dev
    else
      tbform.FieldByName('cartaod').Clear;

    if tabela.FieldByName('cheque').AsFloat > 0 then
      tbform['cheque'] := tabela.FieldByName('cheque').AsFloat * dev
    else
      tbform.FieldByName('cheque').Clear;

    if tabela.FieldByName('chequepre').AsFloat > 0 then
      tbform['chequepre'] := tabela.FieldByName('chequepre').AsFloat * dev
    else
      tbform.FieldByName('chequepre').Clear;

    if tabela.FieldByName('fiado').AsFloat > 0 then
      tbform['fiado'] := tabela.FieldByName('fiado').AsFloat * dev
    else
      tbform.FieldByName('fiado').Clear;

    if tabela.FieldByName('descontoreal').AsFloat > 0 then begin
      tbform['descontoreal'] := tabela.FieldByName('descontoreal').AsFloat * dev;

      if responsavel <> '12.347.804/0001-40' then
         inputquery('Desconto', 'Qual o motivo do desconto',st);

      tbform['obs'] := uppercase(st) + ' - '+tbform.fieldbyname('obs').AsString;
    end else
      tbform.FieldByName('descontoreal').Clear;

    if tabela.FieldByName('descontopercent').AsFloat > 0 then
      tbform['descontopercent'] := tabela.FieldByName('descontopercent').AsFloat * dev
    else
      tbform.FieldByName('descontopercent').Clear;

    acresdescExecute(self);

    if controle = 'pedido' then  fidelidadeExecute(self);



    if controle = 'pedido' then
      GALTERA('2', tabela.FieldByName('numero').AsString, 'e')
    else if controle = 'devolver' then
      GALTERA('2', tabela.FieldByName('numero').AsString, 'e');

    dt := formatdatetime('yyyy/mm/dd', tabela.FieldByName('data').AsDateTime);

    // soma ao credito uma devolucao
    if (tabela.FieldByName('credito').AsFloat > 0) and (controle = 'devolver') then
        somacredito := ', credito = if(credito is not null ,credito + ' +
        realdblstr(tabela.FieldByName('credito').AsFloat) + ', ' +
        realdblstr(tabela.FieldByName('credito').AsFloat) + ')';


        selecione( 'update tbcliente set ' +
                   'ultimacompra = ' + quotedstr(dt) +
                   ', doc = "PED "' + quotedstr(tabela.FieldByName('numero').AsString) +
                   ', valor = ' + realdblstr(tabela.FieldByName('total').AsFloat) +
                   abatecredito +
                   somacredito +
                   ' where codigo =' + quotedstr(tabela.FieldByName('codigo').AsString));

        selecione('select comissaoservico, comissaovendedor from tbconfig');
        comissaoservico := sqlpub.fieldbyname('comissaoservico').asstring;
        comissaovendedor := sqlpub.fieldbyname('comissaovendedor').asstring;
        sqlpub:=nil;

        if comissaoservico = 'S' then
        selecione('update tbpedidoservico set calcular = "S", data = now() where link = ' +
                   quotedstr(tbform.FieldByName('chave').AsString));

        if comissaovendedor = 'S' then   comissaoExecute(self);

    gravavendaexecute(self);

    selecione('update tbcomissao, tbpedido set tbpedido.comissao = tbcomissao.comissao,'+
              ' tbpedido.vrcomissao = tbcomissao.totalcomissao '+
              ' where tbpedido.chave = tbcomissao.linkvenda and tbpedido.chave ='+
              quotedstr(tabela.fieldbyname('linkvenda').AsString));

    selecione('delete from tbcomissao where linkvenda='+ quotedstr(tabela.fieldbyname('linkvenda').AsString));

    if comissprod <> '' then//acetar comissao dos itens produto
       selecione(comissprod);

    comissprod :='';
    vf:=true;


  end;
end;

procedure Tfacerto.caixaExecute(Sender: TObject);
var
  desconto: real;
  rec, recebimento,tipo,codconta: string;    
begin
  if tabela.FieldByName('total').AsFloat > 0 then  begin

    if (controle = 'acertovenda') or
      (tabela.FieldByName('dinheiro').AsFloat > 0) or
      (controle = 'pedido') or
      (controle = 'acertochequeR') or
      //(controle = 'acertoreceber') or
      (controle = 'balcaoN') or
      (controle = 'balcao') then begin

      fdm.tbentradacaixa.Close;
      fdm.tbentradacaixa.CreateDataSet;
      fdm.tbentradacaixa.Open;
      fdm.tbentradacaixa.Insert;
                                 
      // informacoes generica do caixa
      fdm.tbentradacaixa['linkvenda'] := tabela.FieldByName('linkvenda').AsInteger;
      fdm.tbentradacaixa['modulo'] := modulo;
      fdm.tbentradacaixa['documento'] := tabela.FieldByName('documento').AsString;
      fdm.tbentradacaixa['link'] := fdm.tbcaixagrupo['chave'];
      fdm.tbentradacaixa['descricao'] := tabela.FieldByName('documento').AsString;
      fdm.tbentradacaixa['data'] := datetostr(now);
      fdm.tbentradacaixa['hora'] := timetostr(now);

      if (controle = 'pedido') or  (controle = 'balcao') or
        (length(tabela.FieldByName('vendedor').AsString) <= 0) then
        fdm.tbentradacaixa['usuario'] := usuario
      else
        fdm.tbentradacaixa['usuario'] := tabela.FieldByName('vendedor').AsString;


      // caixa pagamento compra
      if (controle = 'acertocompra') or
        (controle = 'funcionario') or
        (controle = 'devolver') or
        (controle = 'acertopagar') or
        (controle = 'entrada1') or
        (controle = 'entrada') then
      begin
        if controle <> 'acertopagar' then
          fdm.tbentradacaixa['dinheiro'] := tabela.FieldByName('dinheiro').AsFloat -
                                            tabela.FieldByName('troco').AsFloat

        else
          fdm.tbentradacaixa['dinheiro'] := tabela.FieldByName('dinheiro').AsFloat;
      end
      else
      begin
        // caixa recebimento venda

        if (controle = 'acertochequeR') or (controle = 'acertoreceber') then
            fdm.tbentradacaixa['juro'] := tabela.FieldByName('acrescimo').AsFloat;


        if (controle = 'pedido') or
          (controle = 'balcao') or
          (controle = 'balcaoN') then
        begin
          fdm.tbentradacaixa['totalparcial'] := tabela.FieldByName('totalparcial').AsFloat;

          if tabela['tipodesconto'] = 'N' then
            desconto := tabela.FieldByName('descontoreal').AsFloat
          else
            desconto := 0;

          if controle = 'pedido' then
            fdm.tbentradacaixa['desconto'] := desconto
          else
            fdm.tbentradacaixa['desconto'] := tabela.FieldByName('descontoreal').AsFloat;

          fdm.tbentradacaixa['acrescimo'] := tabela.FieldByName('acrescimo').AsFloat;
          fdm.tbentradacaixa['total'] := tabela.FieldByName('total').AsFloat;
        end;



        if tabela.FieldByName('fiado').AsFloat > 0 then
        begin
          fdm.tbentradacaixa['fiado'] := tabela.FieldByName('fiado').AsFloat;
          recebimento := 'A PRAZO';
        end;



        if tabela.FieldByName('cartao').AsFloat > 0 then
        begin
          fdm.tbentradacaixa['cartao'] := tabela.FieldByName('cartao').AsFloat;
          fdm.tbentradacaixa['nomecartaoc'] := tabela.FieldByName('nomecartao').AsString;

          if recebimento = '' then
            recebimento := 'CARTAO C '
          else
            recebimento := recebimento + ', CARTAO C ';
        end;

        if tabela.FieldByName('cartaod').AsFloat > 0 then
        begin
          fdm.tbentradacaixa['cartaod'] := tabela.FieldByName('cartaod').AsFloat;
          fdm.tbentradacaixa['nomecartaod'] := tabela.FieldByName('nomecartao').AsString;
          if recebimento = '' then
            recebimento := 'CARTAO D '
          else
            recebimento := recebimento + ', CARTAO D ';
        end;


        if tabela.FieldByName('credito').AsFloat > 0 then
        begin
          fdm.tbentradacaixa['credito'] := tabela.FieldByName('credito').AsFloat;
          if recebimento = '' then
            recebimento := 'CREDITO '
          else
            recebimento := recebimento + ', CREDITO ';
        end;


        if tabela.FieldByName('chequepre').AsFloat > 0 then
        begin
          fdm.tbentradacaixa['chequepre'] := tabela.FieldByName('chequepre').AsFloat;
          if recebimento = '' then
            recebimento := 'CHEQUE PRE '
          else
            recebimento := recebimento + ', CHEQUE PRE ';
        end;

        if tabela.FieldByName('cheque').AsFloat > 0 then
        begin
          fdm.tbentradacaixa['cheque'] := tabela.FieldByName('cheque').AsFloat;
          if recebimento = '' then
            recebimento := 'CHEQUE '
          else
            recebimento := recebimento + ', CHEQUE ';
        end;



        if tabela.FieldByName('vltransp').AsFloat > 0 then
        begin
          fdm.tbentradacaixa['vltransp'] := tabela.FieldByName('vltransp').AsFloat;
          if recebimento = '' then
            recebimento := 'VALE TRSNSP. '
          else
            recebimento := recebimento + ', VALE TRSNSP. ';
        end;

        if tabela.FieldByName('tickts').AsFloat > 0 then
        begin
          fdm.tbentradacaixa['tickts'] := tabela.FieldByName('tickts').AsFloat;
          if recebimento = '' then
            recebimento := 'TICKTS '
          else
            recebimento := recebimento + ', TICKTS ';
        end;

        rec := '1';
        if ((controle = 'acertochequeR') or
           (controle = 'acertoreceber')) and
           (tabela.FieldByName('dinheiro').AsFloat>0)  then


               if inputquery('Recebimento em dinheiro', 'Enviar o valor para (Digite uma opção):' +
                   #13 + #13 +
                   '1 = O Caixa Atual' + #13 +
                   '2 = Escolher uma Conta', rec) then  else abort;

                   if rec = '2' then begin

                      if not planocontas then begin

                         codconta := combotb('tbconta','descricao','chave','Vai enviar o valor para a conta:', '');
                         if codconta = '' then abort;
                         gravabancovr(strtoint(codconta),'C', tabela.FieldByName('documento').AsString,
                                      'RECBTO CONTA', modulo, 'DI',
                                      tabela.FieldByName('dinheiro').AsFloat - tabela.FieldByName('troco').AsFloat,
                                      tabela.FieldByName('linkvenda').AsInteger);



                      end;

                      fparcelado.cxconta:=true;
                   end;



        if (tabela.FieldByName('dinheiro').AsFloat > 0) or
          (tabela.FieldByName('troco').AsFloat > 0) then
        begin
          if rconvenio.Checked then
          begin
            fdm.tbentradacaixa['convenio'] := tabela.FieldByName('dinheiro').AsFloat -
                                               tabela.FieldByName('troco').AsFloat;
            fdm.tbentradacaixa['nomeconvenio'] := tabela.FieldByName('nomeconvenio').AsString;
          end
          else if (tabela.FieldByName('troco').AsFloat > 0) and (rec='1') then
            fdm.tbentradacaixa['dinheiro'] := tabela.FieldByName('dinheiro').AsFloat -
                                              tabela.FieldByName('troco').AsFloat
          else if rec = '1' then
            fdm.tbentradacaixa['dinheiro'] := tabela.FieldByName('dinheiro').AsFloat;


          if (tabela.FieldByName('dinheiro').AsFloat -
             tabela.FieldByName('troco').AsFloat) < 0 then

            fdm.tbentradacaixa['descricao'] := uppercase(controle) +
              tabela.FieldByName('numero').AsString + ' /TROCO'

         ELSE if rec='2' then
             fdm.tbentradacaixa['descricao']:='DIN=BANCO'

          else if recebimento = '' then
            recebimento := 'DINHEIRO '
          else
            recebimento := recebimento + ', DINHEIRO ';
        end;

        fdm.tbentradacaixa['cliente'] := copy(tabela.FieldByName('nome').AsString, 1,15) + ': ' + recebimento;
      end;




      if (controle = 'acertovenda') or
        (controle = 'pedido') or
        (controle = 'balcao') or
        (controle = 'balcaoN') then
        tipo := 'VENDA'

      else if (controle = 'acertoreceber') then
        tipo := 'RECEB'

      else if (controle = 'acertopagar') or
        (controle = 'acertocompra') or
        (controle = 'entrada') or
        (controle = 'entrada1') or
        (controle = 'devolver') or
        (controle = 'funcionario') then
        tipo := 'SAIDA'

      else if (controle = 'acertochequeR') then
        tipo := 'CHEQ_REC';


      fdm.tbentradacaixa['tipo'] := tipo;
      fdm.tbentradacaixa['emp'] := emp;
      tabela['modo'] := 'CAIXA';
      if (controle = 'acertoreceber') and (rec='2') then else
      grava(fdm.tbentradacaixa, nil,'tbentradacaixa');
      brwordExecute(self);
      fdm.tbentradacaixa.Close;
    end;
  end;
end;

procedure Tfacerto.acertobalcaoExecute(Sender: TObject);
var
  dt, loc,chave: string;
    di:double;
begin


  if controle = 'balcao' then  begin
    tbform.edit;
    tbform['codigo'] := tabela.FieldByName('codigo').AsInteger;
    tbform['nome'] := tabela.FieldByName('nome').AsString;

    tbform['recebido'] := tabela.FieldByName('recebido').AsFloat;
    tbform['troco'] := tabela.FieldByName('troco').AsFloat;

    if tabela.FieldByName('acrescimo').AsFloat > 0 then
      tbform['acrescimo'] := tabela.FieldByName('acrescimo').AsFloat
    else
      tbform.FieldByName('acrescimo').Clear;

    if tabela.FieldByName('credito').AsFloat > 0 then
      tbform['credito'] := tabela.FieldByName('credito').AsFloat
    else
      tbform.FieldByName('credito').Clear;

    if (tabela.FieldByName('dinheiro').AsFloat > 0) and
      (rconvenio.Checked = False) then
      tbform['dinheiro'] := tabela.FieldByName('dinheiro').AsFloat
    else
      tbform.FieldByName('dinheiro').Clear;

    if (tabela.FieldByName('dinheiro').AsFloat > 0) and
      (rconvenio.Checked = True) then
      tbform['convenio'] := tabela.FieldByName('dinheiro').AsFloat
    else
      tbform.FieldByName('convenio').Clear;


    if tabela.FieldByName('cartao').AsFloat > 0 then
      tbform['cartao'] := tabela.FieldByName('cartao').AsFloat
    else
      tbform.FieldByName('cartao').Clear;

    if tabela.FieldByName('cartaod').AsFloat > 0 then
      tbform['cartaod'] := tabela.FieldByName('cartaod').AsFloat
    else
      tbform.FieldByName('cartaod').Clear;

    if tabela.FieldByName('cheque').AsFloat > 0 then
      tbform['cheque'] := tabela.FieldByName('cheque').AsFloat
    else
      tbform.FieldByName('cheque').Clear;

    if tabela.FieldByName('chequepre').AsFloat > 0 then
      tbform['chequepre'] := tabela.FieldByName('chequepre').AsFloat
    else
      tbform.FieldByName('chequepre').Clear;

    if tabela.FieldByName('fiado').AsFloat > 0 then
      tbform['fiado'] := tabela.FieldByName('fiado').AsFloat
    else
      tbform.FieldByName('fiado').Clear;



    if tabela.FieldByName('descontoreal').AsFloat > 0 then
      tbform['descontoreal'] := tabela.FieldByName('descontoreal').AsFloat
    else
      tbform.FieldByName('descontoreal').Clear;

    if tabela.FieldByName('descontopercent').AsFloat > 0 then
      tbform['descontopercent'] := tabela.FieldByName('descontopercent').AsFloat
    else
      tbform.FieldByName('descontopercent').Clear;

    acresdescExecute(self);

    altera(tbform, nil,'venda');
    tbform.cancel;
    tbform.refresh;

    //totbalcao(tbform,tbformi);
    fidelidadeExecute(self);


    if (ImpFiscal) and
      (not ImprimeECF_(tbform.fieldbyname('cnpj').AsString, 'balcao',
      tbform.fieldbyname('nome').AsString,
      tbform.fieldbyname('fone').AsString,
      tbform.fieldbyname('endereco').AsString,
      tbform, tbformi)) then
    begin
      deletaconta(tabela.FieldByName('linkvenda').AsString, 'balcao',
        tabela.FieldByName('codigo').AsString,
        tabela.FieldByName('documento').AsString);
      Abort;
    end;

    dt := formatdatetime('yyyy/mm/dd', tabela.FieldByName('data').AsDateTime);


         if (impfiscal) and (tbform.FieldByName('descontoreal').AsFloat >0) then begin

             with fdm.Query2 do begin
                  close;
                  sql.Clear;
                  sql.add('select sum(total)as total,chave from tbecfitem where numdocumento= '+
                          quotedstr(tbform.fieldbyname('numero').AsString)+ ' group by link');
                  open;

                  if tbform.fieldbyname('descontoreal').AsFloat >0 then
                     di := tbform.fieldbyname('descontoreal').AsFloat/fieldbyname('total').AsFloat;

                  chave := fieldbyname('chave').AsString;

                  close;
                  sql.Clear;
                  sql.add('update tbecfitem set desconto2 = (total * '+ realdblstr(di)+')/qtd '+
                          ' where numdocumento = '+ quotedstr(tbform.fieldbyname('numero').AsString));
                  execsql;

                  sql.Clear;
                  sql.add('select sum(desconto2*qtd)as total from tbecfitem where numdocumento = '+
                           quotedstr(tbform.fieldbyname('numero').AsString));
                  open;

                  if FieldByName('total').AsFloat <>
                     tbform.fieldbyname('descontoreal').AsFloat then begin

                  di := tbform.fieldbyname('descontoreal').AsFloat - FieldByName('total').AsFloat;

                  close;
                  sql.Clear;
                  sql.add('update tbecfitem set desconto2 = desconto2 + ('+ realdblstr(di)+ '/qtd) ' +
                          ' where chave = '+ quotedstr(chave));
                  execsql;

               end;

                  sql.Clear;
                  sql.add('update tbecfitem set total = (vrunit- desconto-desconto2) * qtd '+
                          ' where numdocumento = '+ quotedstr(tbform.fieldbyname('numero').AsString));
                  execsql;

            end;
         end;

            with fdm.query2 do
            begin
              Close;
                sql.Clear;
                sql.add( 'update tbcliente set ' +
                         'ultimacompra = ' + quotedstr(dt) +
                         ', doc = "BAL "' + quotedstr(tabela.FieldByName('numero').AsString) +
                         ', valor = ' + realdblstr(tabela.FieldByName('total').AsFloat) +
                         abatecredito +
                         ' where codigo =' + quotedstr(tabela.FieldByName('codigo').AsString));

              execsql;
            end;

            fdm.tbconfig.Open;
            if (controle = 'devolver') and (tabela['td'] = '2') then
            else if fdm.tbconfig['comissaobalcao'] = 'S' then  comissaoExecute(self);

            gravavendaExecute(self);

            selecione('update tbcomissao, tbpedido set tbpedido.comissao = tbcomissao.comissao,'+
                      ' tbpedido.vrcomissao = tbcomissao.totalcomissao '+
                      ' where tbpedido.chave = tbcomissao.linkvenda and tbpedido.chave ='+
                      quotedstr(tabela.fieldbyname('linkvenda').AsString));

            selecione('delete from tbcomissao where linkvenda='+ quotedstr(tabela.fieldbyname('linkvenda').AsString));


            vf := true;
  end;

end;

procedure Tfacerto.clisemcadastroExecute(Sender: TObject);
var
  st: string;
begin
  if (controle = 'balcao') or (controle = 'balcaoN') then
    if inputquery('Nome Cliente', 'Digite o nome do cliente', st) then
    begin
      tabela.edit;
      tabela['nome'] := uppercase(st);
      tabela.FieldByName('codigo').Clear;
    end;
end;

procedure Tfacerto.atualizachequeExecute(Sender: TObject);
var
codconta:string;
begin
           if cht then begin

              while codconta = '' do
                    codconta := combotb('tbconta','descricao','chave','Informe a conta para baixa do cheque:', codconta);

              selecione('update tbreceber set '+
                        ' ch = "P" ' +
                        ',codconta3 = ' + quotedstr(codconta) +
                        ',passado = ' + quotedstr(tabela.FieldByName('nome').AsString) +
                        ',datapassado = now() ' + chts);
              chts :='';
               if fileexists(PChar(servpath + '\imagem\cheque.cds')) then
                  deleteFile(PChar(servpath + '\imagem\cheque.cds'));
           end;



end;

procedure Tfacerto.freteExecute(Sender: TObject);
var
st,campo:string;
begin
  if responsavel<>'12.347.804/0001-40' then
  if freteconta then  begin
    if (tabela.FieldByName('frete').AsFloat > 0) and
      (Application.MessageBox('Gerar conta a pagar do frete?', 'Encerramento',
      mb_yesno + MB_ICONQUESTION) = mrYes) then  begin

      if tabela['codigo'] = null then
         msg('#Credor não identificado. Verifique!', 0);


                if inputquery('Localiza','Digite o código ou o nome',st) then else abort;

                if StrIsfloat(st)  then
                   campo :='codigo'
                else
                   campo := 'nome';

              listagem(campo,st,'',7,0);


      if fdm.sg.Active then
         codigo := fdm.sg.fieldbyname('codigo').AsString
      else codigo :='';
      fechatg;

      if codigo <> '' then  gconta('frete');

      codigo := '';
    end;


    if (tabela.FieldByName('acrescimo').AsFloat > 0) and
      (Application.MessageBox('Gerar conta a pagar do acréscimo?', 'Encerramento',
      mb_yesno + MB_ICONQUESTION) = mrYes) then
    begin
      if tabela['codigo'] = null then
         msg('#Credor não identificado. Verifique!', 0);


                if inputquery('Localiza','Digite o código ou o nome',st) then else abort;

                if StrIsfloat(st)  then
                   campo :='codigo'
                else
                   campo := 'nome';

              listagem(campo,st,'',7,0);


      if fdm.sg.Active then
         codigo := fdm.sg.fieldbyname('codigo').AsString
      else codigo :='';
      fechatg;

      if codigo <> '' then  gconta('frete');

      codigo := '';
    end;
  end;
end;

procedure Tfacerto.acertoentradaExecute(Sender: TObject);
var
  dt, loc,st: string;
begin

  if (controle = 'entrada') or (controle = 'entrada1') then begin
    tbform.edit;

    if tabela.FieldByName('frete').AsFloat > 0 then
           tbform['frete'] := tabela.FieldByName('frete').AsFloat
    else
          tbform.FieldByName('frete').Clear;


    if tabela.FieldByName('acrescimo').AsFloat > 0 then
          tbform['acrescimo'] := tabela.FieldByName('acrescimo').AsFloat
    else
          tbform.FieldByName('acrescimo').Clear;

    if tabela.FieldByName('valoricmsS').AsFloat > 0 then
          tbform['valoricmsS'] := tabela.FieldByName('valoricmsS').AsFloat
    else
          tbform.FieldByName('valoricmsS').Clear;

    if tabela.FieldByName('dinheiro').AsFloat > 0 then
          tbform['dinheiro'] := tabela.FieldByName('dinheiro').AsFloat
    else
          tbform.FieldByName('dinheiro').Clear;

    if tabela.FieldByName('credito').AsFloat > 0 then
          tbform['credito'] := tabela.FieldByName('credito').AsFloat
    else
          tbform.FieldByName('credito').Clear;

    if tabela.FieldByName('cheque').AsFloat > 0 then
          tbform['cheque'] := tabela.FieldByName('cheque').AsFloat
    else
          tbform.FieldByName('cheque').Clear;


    if tabela.FieldByName('chequepre').AsFloat > 0 then
          tbform['chequepre'] := tabela.FieldByName('chequepre').AsFloat
    else
          tbform.FieldByName('chequepre').Clear;


    if tabela.FieldByName('fiado').AsFloat > 0 then
          tbform['fiado'] := tabela.FieldByName('fiado').AsFloat
    else
          tbform.FieldByName('fiado').Clear;


    if tabela.FieldByName('descontoreal').AsFloat > 0 then begin
          tbform['descontoreal'] := tabela.FieldByName('descontoreal').AsFloat;

      inputquery('Desconto', 'Qual o motivo do desconto',st);
          tbform['obs'] := uppercase(st) + ' - '+    tbform.fieldbyname('obs').AsString;

    end else
          tbform.FieldByName('descontoreal').Clear;

    if tabela.FieldByName('descontopercent').AsFloat > 0 then
          tbform['descontopercent'] := tabela.FieldByName('descontopercent').AsFloat
    else
          tbform.FieldByName('descontopercent').Clear;

    tbform['acertado'] := 'S';

    dt := formatdatetime('yyyy/mm/dd', tbform.FieldByName('data').AsDateTime);


    galtera('8', tabela.FieldByName('numero').AsString, 'e');

    selecione( 'update tbfornecedor set ' +
               'ultimacompra = ' + quotedstr(dt) +
               ', doc = "E "' + quotedstr(tbform.FieldByName('numero').AsString) +
               ', valor = ' + realdblstr(tabela.FieldByName('total').AsFloat) +
               ', credito =  if (credito is null , 0, credito - ' + realdblstr(tabela.fieldbyname('credito').asfloat)+ ')'+
               ' where codigo =' + quotedstr(tbform.FieldByName('codigo').AsString));


//    atualizachequeExecute(self);
    vf:=true;

  end;

end;

procedure Tfacerto.acertopagar_receberExecute(Sender: TObject);
var
  pgto: string;
  total: double;
begin

  if (controle = 'acertopagar') or
    (controle = 'acertoreceber') or
    (controle = 'acertochequeR') then
  begin
    total := 0;


    if tabela.FieldByName('dinheiro').AsFloat > 0 then
    begin
      if tabela.FieldByName('troco').AsFloat > 0 then
        total := total + tabela.FieldByName('dinheiro').AsFloat - tabela.FieldByName('troco').AsFloat
      else
        total := total + tabela.FieldByName('dinheiro').AsFloat;

      pgto := 'DINHEIRO';
    end;

    if tabela.FieldByName('cheque').AsFloat > 0 then 
    begin
      total := total + tabela.FieldByName('cheque').AsFloat;
      if pgto = '' then
        pgto := 'CHEQUE'
      else
        pgto := pgto + ', CHEQUE';
    end;



    if tabela.FieldByName('cartao').AsFloat > 0 then 
    begin
      total := total + tabela.FieldByName('cartao').AsFloat;
      if pgto = '' then
        pgto := 'CARTAO C.'
      else
        pgto := pgto + ', CARTAO C.';
    end;

    if tabela.FieldByName('cartaoD').AsFloat > 0 then 
    begin
      total := total + tabela.FieldByName('cartaoD').AsFloat;
      if pgto = '' then
        pgto := 'CARTAO D.'
      else
        pgto := pgto + ', CARTAO D.';
    end;



    if (tabela.FieldByName('chequepre').AsFloat > 0) then  begin
      total := total + tabela.FieldByName('chequepre').AsFloat;
      if pgto = '' then
        pgto := 'CHEQUE TERCEIRO'
      else
        pgto := pgto + ', CHEQUE TERCEIRO';
    end;

    
    if tabela.FieldByName('credito').AsFloat > 0 then 
    begin
      total := total + tabela.FieldByName('credito').AsFloat;
      if pgto = '' then
        pgto := 'CREDITO'
      else
        pgto := pgto + ', CREDITO';
    end;
    //inputquery('Descrição do pagamento','Digite a descrição:',pgto);


    fparcelado.obs := pgto;

    if tabela.FieldByName('troco').AsFloat >= 0 then
       fparcelado.bxtudo :=true;

   if tabela.FieldByName('troco').AsFloat <= 0 then
       fparcelado.totalrecebido := total
   else
      fparcelado.totalrecebido := tabela.FieldByName('total').AsFloat;


    if tabela.FieldByName('troco').AsFloat > 0 then
       fparcelado.troco := tabela.FieldByName('troco').AsFloat;

    fparcelado.descontopercent := tabela.FieldByName('descontoreal').AsFloat * 100 /
      (total - tabela.FieldByName('acrescimo').AsFloat +
      tabela.FieldByName('descontoreal').AsFloat);
    fparcelado.descontoreal := tabela.FieldByName('descontoreal').AsFloat;
    fparcelado.jurototal := tabela.FieldByName('acrescimo').AsFloat;
    fparcelado.juropercent := tabela.FieldByName('acrescimo').AsFloat * 100 /
      (total - tabela.FieldByName('acrescimo').AsFloat +
      tabela.FieldByName('descontoreal').AsFloat);

    fparcelado.credito := tabela.FieldByName('credito').AsFloat;
    fparcelado.dinheiro := tabela.FieldByName('dinheiro').AsFloat;
    fparcelado.cheque := tabela.FieldByName('cheque').AsFloat +
      tabela.FieldByName('chequepre').AsFloat;
    fparcelado.cartao := tabela.FieldByName('cartao').AsFloat +
      tabela.FieldByName('cartaod').AsFloat;


    if (controle = 'acertochequeR') or (controle = 'acertoreceber') then 
    begin
      with fdm.query2 do 
      begin
        Close;
                sql.Clear;
                sql.add(  'update tbcliente set ' +
          ' credito = credito - ' + realdblstr(creditodesc) +
          ' where codigo =' + quotedstr(tabela.FieldByName('codigo').AsString));

        execsql;
      end;
    end;

    fparcelado.rec_pago := True;
    if percentcomissao > 0 then
      comissaoexecute(self);
  end;

end;

procedure Tfacerto.comissaoExecute(Sender: TObject);
var              
  vendedor,sq: string;
  procedure calcula;
  var
    valortotal: double;
  begin
    if percentcomissao > 0 then
      valortotal := tabela.FieldByName('recebido').AsFloat

    else if modocalcula = '2' then
      valortotal := tabela.FieldByName('total').AsFloat -
                    tabela.FieldByName('fiado').AsFloat -
                    tabela.FieldByName('chequepre').AsFloat-
                    tabela.FieldByName('cartao').AsFloat-
                    tabela.FieldByName('cartaod').AsFloat
    else
      valortotal := tabela.FieldByName('total').AsFloat;

    if valortotal > 0 then
    begin
      if controle = 'devolver' then
        valortotal := valortotal * (-1);

      tbcomissao.CreateDataSet;
      tbcomissao.Open;
      tbcomissao.Insert;

      tbcomissao['usuario'] := usuarioLink;
      tbcomissao['linkvenda'] := tabela.FieldByName('linkvenda').AsInteger;
      tbcomissao['modulo'] := modulo;
      tbcomissao['modalidade'] := tabela.FieldByName('formapgto').AsString;
      tbcomissao['documento'] := tabela.FieldByName('documento').AsString;
      tbcomissao['codigocliente'] := tabela.FieldByName('codigo').asinteger;
      if tabela['data'] <> null then
        tbcomissao['dtemissao'] := tabela.FieldByName('data').AsDateTime
      else
        tbcomissao['dtemissao'] := datetostr(now);
      tbcomissao['codigo'] := vendedor;
      tbcomissao['vrvenda'] := valortotal;
      tbcomissao['margem'] := margem;
      tbcomissao['comissao'] := percent;
      tbcomissao['totalcomissao'] := percent * valortotal / 100;
      tbcomissao['pago'] := 'N';

      grava(tbcomissao, nil,'tbcomissao');
      tbcomissao.Close;
    end;
  end;

  
var
  fam, c1, c2, c3, c4, c5, v1, v2, v3, v4, v5, custo, total: double;
  i: integer;
  tipocomissao, st: string;

begin
        selecione('delete from tbcomissao where documento = ' +
                   quotedstr(tabela.FieldByName('documento').AsString));


  if (responsavel = 'TELEMARK') and
    (fdm.tbconfig.FieldByName('percent').AsFloat > 0) then
  begin
    percent := fdm.tbconfig.FieldByName('percent').AsFloat;
    vendedor := '1';
    calcula;
  end;

  percent := 0;
  margem := 0;
  vendedor := tabela.FieldByName('codigovendedor').AsString;

  // comissao em contas a receber
  if percentcomissao > 0 then
  begin
    percent := percentcomissao;
    calcula;
  end
  else
  begin

         sqld :=  tzquery.Create(application);
         sqld.Connection := fdm.conector ;



    with sqld do
    begin
      Close;
          sql.clear;
          sql.add('select vr1,vr2,vr3,vr4,vr5,comissao, comissao2, comissao3,' +
                     ' comissao4, comissao5, tipocomissao,modocalcula ' +
                     ' from tbfuncionario where codigo = ' +
                     quotedstr(tabela.FieldByName('codigovendedor').AsString));
      Open;

      // armazena valores
      modocalcula := FieldByName('modocalcula').AsString;
      if modocalcula = '' then modocalcula := '1';
      tipocomissao := FieldByName('tipocomissao').AsString;
      C1 := FieldByName('comissao').AsFloat;
      C2 := FieldByName('comissao2').AsFloat;
      C3 := FieldByName('comissao3').AsFloat;
      C4 := FieldByName('comissao4').AsFloat;
      C5 := FieldByName('comissao5').AsFloat;
      V1 := FieldByName('vr1').AsFloat;
      V2 := FieldByName('vr2').AsFloat;
      V3 := FieldByName('vr3').AsFloat;
      V4 := FieldByName('vr4').AsFloat;
      V5 := FieldByName('vr5').AsFloat;



      // SE NA VENDA FOI ESCOLHIDO O VENDEDOR
      if (tabela['vendedor'] <> null) and
        (tabela.FieldByName('total').AsFloat > 0) then  begin






          //comissao sobre a mergem da venda
          if tipocomissao = 'M' then   begin
             tbformi.DisableControls;
             tbformi.First;
             custo := 0;

            for i := 1 to tbformi.RecordCount do
            begin
              custo := custo + (tbformi.FieldByName('custo').AsFloat *
                tbformi.FieldByName('qtd').AsFloat);
              tbformi.Next;
            end;
            tbformi.EnableControls;

            if custo = 0 then custo := 1;
            //margem
            margem := (tabela.FieldByName('total').AsFloat * 100 / custo) - 100;


            if      (V5>0) and (margem >= V5) then  percent := C5
            else if (V4>0) and (margem >= V4) then  percent := C4
            else if (V3>0) and (margem >= V3) then  percent := C3
            else if (V2>0) and (margem >= V2) then  percent := C2
            else if (V1>0) and (margem >= V1) then  percent := C1
            else if margem <= V1 then begin

            senhagerencial('VENDA', 'DIGITE A SENHA GERENCIAL:','MARGEM ABAIXO DO PROGRAMADO!');

              st := msgi('Comissão: Digite a comissão do vendedor em percentagem (Ex: 10,5):', 2);
              percent := strtofloat(st);
            end;

            calcula;
          end




          //comissao sobre a desconto da venda
          else if tipocomissao = 'D' then   begin
            margem := tabela.FieldByName('descontopercent').AsFloat;

            if      (V1>=0) and (margem <= V1) then  percent := C1
            else if (V2>0) and (margem <= V2) then  percent := C2
            else if (V3>0) and (margem <= V3) then  percent := C3
            else if (V4>0) and (margem <= V4) then  percent := C4
            else if (V5>0) and (margem <= V5) then  percent := C5
            else if margem >= V5 then begin

                 senhagerencial('VENDA', 'DIGITE A SENHA GERENCIAL:','DESCONTO ACIMA DO PROGRAMADO!');

              st := msgi('Comissão: Digite a comissão do vendedor em percentagem (Ex: 10,5):', 2);
              percent := strtofloat(st);
            end;

            calcula;

          end
          





          //comissao sobre produto
          else if tipocomissao = 'P' then  begin
              tbformi.Open;
              tbformi.First;
              tbformi.DisableControls;
              total := 0;

              while not tbformi.EOF do  begin
                Close;

                sql.clear;
                sql.add( 'select comissao,familia from tbproduto where codigo = ' +
                         quotedstr(tbformi.FieldByName('codigo').AsString));
                Open;


                if responsavel = '04.425.748/0001-97' then
                begin
                  with fdm.query2 do
                  begin
                    Close;
                     sql.clear;
                    if tbform.FieldByName('fisjur').AsString = 'J' then

                       sql.add( 'select comJ as com from tbfamilia where nome = ' +
                                quotedstr(sqld.FieldByName('familia').AsString))
                    else
                       sql.add('select comF as com from tbfamilia where nome = ' +
                                 quotedstr(sqld.FieldByName('familia').AsString));
                    Open;
                    fam := FieldByName('com').AsFloat;
                    Close;
                  end;

                  total := total + tbformi.FieldByName('total').AsFloat * fam / 100;
                end
                else if FieldByName('comissao').AsFloat > 0 then
                  total := total + tbformi.FieldByName('total').AsFloat *
                           FieldByName('comissao').AsFloat / 100;
                tbformi.Next;
              end;

              if tabela.FieldByName('descontopercent').AsFloat > 0 then
                total := total - (total * tabela.FieldByName('descontopercent').AsFloat / 100);

              tbformi.EnableControls;

              if total > 0 then  begin
                percent := total * 100 / tabela.FieldByName('total').AsFloat;
                calcula;
                comissprod := 'update tbpedidoitem as i,tbproduto as p set i.comissao = p.comissao '+
                              ' where i.codigo = p.codigo and i.link = '+quotedstr(tabela.fieldbyname('linkvenda').AsString);
               end;

          end






          // comissao por tipo de venda (a vista, a prazo)
          else if tipocomissao = 'A' then
          begin
            with fdm.query2 do  begin
                 close;
                 sql.Clear;
                 sql.add('select comissao from tbcondfatura where descricao=' +
                             quotedstr(tabela.FieldByName('formapgto').AsString));
                Open;
                  

              if FieldByName('comissao').AsFloat > 0 then
                percent := FieldByName('comissao').AsFloat;

              if percent > 0 then
                calcula;
              Close;
            end;

          //comissao varejo/atacado
          end else if tipocomissao = 'V' then begin
              if tabela['tipovenda'] = 'V' then percent := C1
                                      else percent := C2;
              calcula;


          //comissao fixa
          end else if tipocomissao = 'C' then begin
            percent := C1;
            calcula;
          end;

        end;
        Destroy;
      end;
  end;
end;

procedure Tfacerto.verificadescontoExecute(Sender: TObject);
var
  st, imp: string;
  desconto: real;
begin
  if ((controle = 'pedido') or
    (controle = 'balcao')or
    (controle = 'balcaoN')) and
    (responsavel <> 'FABIO VITRINE') then 
  begin
    tabela.edit;

    if (fdm.tbconfig.FieldByName('descontoavista').AsFloat > 0) or
      (fdm.tbconfig.FieldByName('descontoaprazo').AsFloat > 0) then 
    begin
      if fdm.tbconfig.FieldByName('descontoavista').AsFloat > 0 then
        desconto := fdm.tbconfig.FieldByName('descontoavista').AsFloat

      else if fdm.tbconfig.FieldByName('descontoaprazo').AsFloat > 0 then
        desconto := fdm.tbconfig.FieldByName('descontoaprazo').AsFloat;


      if (fdm.tbconfig.FieldByName('descontoavista').AsFloat > 0) and
        (fdm.tbconfig.FieldByName('descontoaprazo').AsFloat > 0) then 
      begin
        imp := '1';
        if inputquery('Desconto Programado', PChar('Como será a venda?' + #13 + #13 +
          '1 = À Vista' + #13 +
          '2 = Para ' + fdm.tbconfig.FieldByName('descontoaprazoqtd').AsString + ' Dias ' + #13 +
          'Esc = Outros'), imp) then 
        begin
          if imp = '1' then
            tabela['descontopercent'] := fdm.tbconfig.FieldByName('descontoavista').AsFloat
          else if imp = '2' then
            tabela['descontopercent'] := fdm.tbconfig.FieldByName('descontoaprazo').AsFloat;
        end;
      end 
      else 
        tabela['descontopercent'] := desconto;
    end;

    if tabela.FieldByName('descontopercent').AsFloat > 0 then
      tabela['descontoreal'] := tabela.FieldByName('descontopercent').AsFloat *
        (tabela.FieldByName('totalparcial').AsFloat -
        tabela.FieldByName('credito').AsFloat) / 100;
  end;
end;

procedure Tfacerto.creditotrocoforExecute(Sender: TObject);
begin
        // troco/credito
        if (controle = 'entrada') or (controle = 'acertopagar') then begin

           selecione( 'update tbfornecedor set credito = 0 where credito is null ' +
                      ' and codigo = ' + quotedstr(tabela.FieldByName('codigo').AsString));

           if (tabela.FieldByName('troco').AsFloat > 0)
              and (Application.MessageBox('Gerar um crédito do troco?', 'Troco',
                                         mb_yesno + MB_ICONQUESTION) = mrYes) then
                  selecione( 'update tbfornecedor set' +
                             ' credito = credito + ' + realdblstr(tabela.FieldByName('troco').AsFloat) +
                             ' where codigo = ' + quotedstr(tabela.FieldByName('codigo').AsString));

            if tabela.FieldByName('credito').AsFloat > 0 then
               selecione('update tbfornecedor set' +
                         ' credito = credito - ' + realdblstr(tabela.FieldByName('credito').AsFloat) +
                         ' where codigo = ' + quotedstr(tabela.FieldByName('codigo').AsString));
  end;
end;



procedure Tfacerto.acertofuncionarioExecute(Sender: TObject);
begin
  if controle = 'funcionario' then 
  begin
//    atualizachequeExecute(self);
  end;
end;

procedure Tfacerto.convenioExecute(Sender: TObject);
begin
  if ((controle = 'balcao') or
    (controle = 'acertoreceber') or
    (controle = 'pedido')) and
    (responsavel = 'MAURICIO') then 
  begin
    rconvenio.Checked := False;
    rconvenio.Checked := True;
  end;
end;

procedure Tfacerto.inserecreditoExecute(Sender: TObject);
var
  sql: tzquery;
begin
  if (responsavel = 'FABIO VITRINE') and
    ((controle <> 'acertoreceber') and
    (controle <> 'acertochequeR')) or
    (controle = 'devolver') then
  else 
  begin
          sql :=  tzquery.Create(application);
          sql.Connection := fdm.conector ;

    with sql do
    begin
          sql.clear;
          sql.add('select credito from tbcliente ' + ' where codigo = ' +
                  quotedstr(tabela.FieldByName('codigo').AsString));
      Open;

      if FieldByName('credito').AsFloat > 0 then
      begin
        if Application.MessageBox(PChar('Este cliente possui um crédito de ' +
          FieldByName('credito').AsString +
          ' reais. Deseja abater este valor?'),
          'Confirme', 4 + MB_ICONQUESTION) = idYes then
        begin
          tabela.Edit;

          if (tabela.FieldByName('total').AsFloat +
            tabela.FieldByName('credito').AsFloat) >=
            FieldByName('credito').AsFloat then
          begin
            tabela['credito'] := tabela.FieldByName('credito').AsFloat +
              FieldByName('credito').AsFloat;
            creditodesc := FieldByName('credito').AsFloat;
          end
          else
          begin
            creditodesc := tabela.FieldByName('total').AsFloat -
              tabela.FieldByName('credito').AsFloat;
            tabela['credito'] := tabela.FieldByName('total').AsFloat;
          end;

          abatecredito := ' , credito = credito - ' + realdblstr(creditodesc);
        end;
      end;

      totalizarexecute(self);


      Destroy;
    end;
  end;
end;

procedure Tfacerto.efreteEnter(Sender: TObject);
begin
  with Sender as tdbedit do
    Color := $00F9FFFF;
end;

procedure Tfacerto.efreteExit(Sender: TObject);
begin
  efrete.Color := $00EAFFFF;

  if efrete.Modified = True then 
  begin
    totalizarexecute(self);
    efrete.Modified := False;
  end;
end;

procedure Tfacerto.gravavendaExecute(Sender: TObject);
var      
  ini :tinifile;
  sqlvenda: tzquery;
  vendal,custo,fiado, cartaod, cartao, chequepre, cheque, credito, troco, dinheiro, acrescimo,vrlocacao,
  descontoreal,vrcouvert, totalpeca, totalservico, devolucao, campo1, campo2, campo3,valoricmsubstituicao,
  campo4, campo5, campo6, campo7, campo8,campo9, servico, obs1, tipo, comprador,
  tm1, tm2, tm3, tamanho, cor, especificacao,nometabela, nometabelaitem,nometabelaitemD, orcamento, nf, dtentrega, dtdevolucao,
  chavedevolucao, chavedevolucao1,vrcomissao,comissao,dtentregue,datadevolucao,ecf,chavepedido,num,chave,otica: string;
         

  quantidade: double;
  // serve para tbitem, troca e devolucao
  procedure tbitem;
  begin


    if controle = 'pedido' then begin
       if (tbformi.Active) and
         (tbformi['dtentregue']<> null) then
          dtentregue:= '   , ' + quotedstr(formatdatetime('yyyy-mm-dd',tbformi.FieldByName('dtentregue').AsDateTime))
       else dtentregue:= '   , null ';


       if (nometabelaitemD ='tbpedidoitem') and ((tbformi.Active) and (tbformi['datadevolucao']<> null)) then
          datadevolucao:= '   , ' + quotedstr(formatdatetime('yyyy-mm-dd',tbformi.FieldByName('datadevolucao').AsDateTime))
       else datadevolucao:= '   , null ';

       if (nometabelaitemD ='tbpedidolocacao') and ((tbforml.Active) and (tbforml['datadevolucao']<> null)) then
          datadevolucao:= '   , ' + quotedstr(formatdatetime('yyyy-mm-dd',tbforml.FieldByName('datadevolucao').AsDateTime))
       else datadevolucao:= '   , null ';

     end else  begin
         dtentregue:= '   , null ';
         datadevolucao:= '   , null ';
     end;


    sqlvenda.close;
    sqlvenda.sql.Clear;
    sqlvenda.sql.add(' insert into ' + nometabelaitemD +
      '( codigo' +

      '   ,item' +
      '   ,emp' +
      '   ,status' +
      '   ,nome' +
      '   ,codigocliente ' +
      '   ,codigovendedor ' +
      '   ,tipoestoque ' +
      '   ,modo ' +
      '   ,cnt ' +
      '   ,bonificacao ' +
      '   ,tipovenda ' +
      '   ,qtd ' +
      '   ,vrunit' +
      '   ,total' +
      '   ,vrminimo' +      
      '   ,custo' +
      '   ,cmedio' +
      '   ,custol' +
      '   ,descontoReal' +
      '   ,acrescimo' +
      '   ,vendal' +
      '   ,imposto' +
//      '   ,comissao' +
      '   ,comissao2' +
      '   ,numero' +
      '   ,reducaobasecalc' +
      '   ,pis' +
      '   ,prazo' +
      '   ,link' +
      '   ,data' +
      '   ,datadevolucao' +
      '   ,dtentregue' +
      '   ,defeito' +
      '   ,defeitoN' +
      '   ,chavedevolucao' +
      '   ,chavegrade' +      
      '   ,contagem' +
      tm1 +
      tm2 +
      tm3 +
      tamanho +
      especificacao+
      cor +

      ')' +
      // valores
      '(select ' +
      '    codigo' +
      '   ,item' +
      '   ,emp' +
      '   ,status' +
      '   ,nome' +
      '   , ' + quotedstr(tbform.FieldByName('codigo').AsString) +
      '   , ' + quotedstr(tbform.FieldByName('codigovendedor').AsString) +
      '   , ' + quotedstr(tbform.FieldByName('tipoestoque').AsString) +
      '   ,modo' +
      '   ,cnt ' +
      '   ,bonificacao' +
      '   ,tipovenda ' +
      '   ,qtd *' + floattostr(quantidade) +
      '   ,vrunit' +
      '   ,total' +
      '   ,vrminimo' +
      '   ,custo' +
      '   ,cmedio' +
      '   ,custol' +
      '   ,descontoReal' +
      '   ,acrescimo' +
      '   ,vendal' +
      '   ,imposto' +
     // '   ,comissao' +
      '   ,comissao2' +
      '   ,' + quotedstr(tbform.FieldByName('numero').AsString)+
      '   ,reducaobasecalc' +
      '   ,pis' +
      '   ,prazo' +
      '   ,' + quotedstr(tbform.FieldByName('chavepedido').AsString) +
      '   , ' + quotedstr(formatdatetime('yyyy-mm-dd',tbform.FieldByName('data').AsDateTime)) +
      datadevolucao+
      dtentregue +
      '   ,defeito ' +
      '   ,defeitoN ' +
      '   ,chavedevolucao ' +
      '   ,chavegrade ' +
      '   ,contagem ' +
      tm1 +
      tm2 +
      tm3 +
      tamanho +
      especificacao+
      cor +
      
      ' from ' + nometabelaitem + ' where link =' +
      quotedstr(tbform.FieldByName('chave').AsString) + ' )');
    
    sqlvenda.execsql;
  end;

begin

        //verifica se o n. da venda está reservado    
        if modulo='2' then begin
           chavepedido := tbform.fieldbyname('chavepedido').AsString;
           selecione('select numero from tbpedido where chave = ' + quotedstr(chavepedido));

           //se a venda nao for encontrada
           if  tbform['numero'] <> sqlpub['numero'] then begin

               selecione('select max(numero)as numero from tbpedido');
               num := IntToStr(sqlpub.FieldByName('numero').AsInteger + 1);
               selecione('insert into tbpedido (numero) values (' + num + ')');
               selecione('select chave from tbpedido where numero = '+quotedstr(num));
               chave := sqlpub.FieldByName('chave').AsString;
               sqlpub := nil;
               tbform.edit;
               tbform['numero'] := num;
               tbform['chavepedido'] := chave;

           end else sqlpub := nil;
        end;


        

        if (impfiscal) and(tbform['nf']=null) then
             with fdm.query2 do begin
               close;
                sql.Clear;
                sql.add( 'select num_cupom from tbEcf where numdocumento=' +
                               quotedstr(tbform.FieldByName('numero').AsString));
               Open;
               nf := ', nf = ' + quotedstr(FieldByName('num_cupom').asstring);
               close;
             end;

          sqlvenda :=  tzquery.Create(application);
          sqlvenda.Connection := fdm.conector ;

  with sqlvenda do
  begin

    nometabela := 'tbpedido';
    if controle = 'pedido' then begin
      tm1 := ', tm1 ';
      tm2 := ', tm2 ';
      tm3 := ', tm3 ';
      tamanho := ', tamanho ';
      especificacao := ', especificacao ';
      cor := ', cor ';

    end;


    if tbformi <> nil then begin
      quantidade := 1;
      nometabelaitem := 'vendaitem';
      nometabelaitemD:= 'tbpedidoitem';
      tbitem;
    end;


    if (tbformd <> nil) or (tbformi <> nil) then
    begin
      quantidade := -1;
      nometabelaitem := 'vendadevolucao';
      nometabelaitemD:= 'tbpedidoitem';
      tbitem;
    end;


    if tbforml <> nil then begin
      quantidade := 1;
      nometabelaitem := 'vendalocacao';
      nometabelaitemD:= 'tbpedidolocacao';
      tbitem;
    end;

    // peças pendentes

    if (tbformpp <> nil) and (tbformpp.Active) then begin
      tbformpp.First;
      tbformpp.DisableControls;

      while not tbformpp.EOF do
      begin
          sql.clear;
          sql.add( 'insert into tbpecapendente (link, codigo, ' +
          ' qtd, vrunit) values (' +
          quotedstr(tbform.FieldByName('chavepedido').AsString) +
          ' , ' + quotedstr(tbformpp.FieldByName('codigo').AsString) +
          ' , ' + realdblstr(tbformpp.FieldByName('qtd').AsFloat) +
          ' , ' + realdblstr(tbformpp.FieldByName('vrunit').AsFloat) + ')');

        execsql;
        tbformpp.Next;
      end;
      tbformpp.EnableControls;
    end;



    // transfere os servicos
    if (tbforms <> nil) and (tbforms.Active)  then  begin
      tbforms.First;
      tbforms.DisableControls;

      while not tbforms.EOF do
      begin
          sql.clear;
          sql.add( 'insert into tbpedidoservico(link,emp, codigo,descricao, codigocliente,numero,' +
          'data, dtentrega, hora, horaentrega, qtd, vrunit, mecanico,nome, comissao,pago,calcular) values (' +
          quotedstr(tbform.FieldByName('chavepedido').AsString) +
          ' , ' + quotedstr(tbforms.FieldByName('emp').AsString) +
          ' , ' + quotedstr(tbforms.FieldByName('codigo').AsString) +
          ' , ' + quotedstr(tbforms.FieldByName('descricao').AsString) +
          ' , ' + quotedstr(tbform.FieldByName('codigo').AsString) +
          ' , ' + quotedstr(tbform.FieldByName('numero').AsString) +
          ' , ' + quotedstr(formatdatetime('yyyy/mm/dd', tbforms.FieldByName('data').AsDateTime)) +
          ' , ' + quotedstr(formatdatetime('yyyy/mm/dd', tbforms.FieldByName('dtentrega').AsDateTime)) +
          ' , ' + quotedstr(tbforms.FieldByName('hora').AsString) +
          ' , ' + quotedstr(tbforms.FieldByName('horaentrega').AsString) +
          ' , ' + realdblstr(tbforms.FieldByName('qtd').AsFloat) +
          ' , ' + realdblstr(tbforms.FieldByName('vrunit').AsFloat) +
          ' , ' + quotedstr(tbforms.FieldByName('mecanico').AsString) +
          ' , ' + quotedstr(tbforms.FieldByName('nome').AsString) +
          ' , ' + quotedstr(tbforms.FieldByName('comissao').AsString) +
          ' , ' + quotedstr(tbforms.FieldByName('pago').AsString) +
          ' , ' + quotedstr(tbforms.FieldByName('calcular').AsString) + ')');
        // edit1.text := commandtext;
        execsql;
        tbforms.Next;
      end;
      tbforms.EnableControls;
    end;


   if (responsavel = 'ADRIANA CONFECCAO') then begin
      if (tbform.FieldByName('vrcomissao').AsFloat>0) then
          vrcomissao := ', vrcomissao = ' + realdblstr(tbform.FieldByName('vrcomissao').AsFloat);

      if (tbform.FieldByName('comissao').AsFloat>0) then
          comissao := ', comissao = ' + realdblstr(tbform.FieldByName('comissao').AsFloat);
   end;

    // campos do pedido
    if tbform.FieldByName('devolucao').AsFloat <> 0 then
      devolucao := ', devolucao = ' + realdblstr(tbform.FieldByName('devolucao').AsFloat);

      if tbform.FieldByName('totalpeca').AsFloat <> 0 then
         totalpeca := ', totalpeca = ' + realdblstr(tbform.FieldByName('totalpeca').AsFloat);

      if tbform.FieldByName('valoricmsubstituicao').AsFloat <> 0 then
         valoricmsubstituicao := ', valoricmsubstituicao = ' + realdblstr(tbform.FieldByName('valoricmsubstituicao').AsFloat);

    if impfiscal then begin
       Ini := TIniFile.Create(conf_local);
       ecf := ' , ecf = '+ quotedstr(Ini.Readstring('ImpFiscal', 'NumSerieECF' , ''));
       ini.Free;
    end;


    if controle = 'pedido' then  begin
      // campos do pedido
      if tbform.FieldByName('totalservico').AsFloat <> 0 then
        totalservico := ', totalservico = ' + realdblstr(tbform.FieldByName('totalservico').AsFloat);

      if tbform.FieldByName('vrlocacao').AsFloat <> 0 then
        vrlocacao := ', vrlocacao = ' + realdblstr(tbform.FieldByName('vrlocacao').AsFloat);

      campo1 := ', campo1 = ' + quotedstr(tbform.FieldByName('campo1').AsString);
      campo2 := ', campo2 = ' + quotedstr(tbform.FieldByName('campo2').AsString);
      campo3 := ', campo3 = ' + quotedstr(tbform.FieldByName('campo3').AsString);
      campo4 := ', campo4 = ' + quotedstr(tbform.FieldByName('campo4').AsString);
      campo5 := ', campo5 = ' + quotedstr(tbform.FieldByName('campo5').AsString);
      campo6 := ', campo6 = ' + quotedstr(tbform.FieldByName('campo6').AsString);
      campo7 := ', campo7 = ' + quotedstr(tbform.FieldByName('campo7').AsString);
      campo8 := ', campo8 = ' + quotedstr(tbform.FieldByName('campo8').AsString);


      if tbform['dtentrega']<> null then
         dtentrega := ', dtentrega = ' + quotedstr(formatdatetime('yyyy/mm/dd', tbform.FieldByName('dtentrega').AsDateTime));

      if tbform['dtdevolucao']<> null then
         dtdevolucao := ', dtdevolucao = ' + quotedstr(formatdatetime('yyyy/mm/dd', tbform.FieldByName('dtdevolucao').AsDateTime));

      if tbform.FieldByName('campo9').AsInteger >0 then
         campo9 := ', campo9 = ' + quotedstr(tbform.FieldByName('campo9').AsString);

      servico := ', servico = ' + quotedstr(tbform.FieldByName('servico').AsString);
      obs1 := ', obs1 = ' + quotedstr(tbform.FieldByName('obs1').AsString);
      tipo := ', tipo = ' + quotedstr(tbform.FieldByName('tipo').AsString);
      comprador := ', comprador = ' + quotedstr(tbform.FieldByName('comprador').AsString);

      if tbform.FieldByName('orcamento').AsInteger > 0 then
        orcamento := ', orcamento = ' + tbform.FieldByName('orcamento').AsString;
    end;

    if tbform.FieldByName('vrcouvert').AsFloat <> 0 then
      vrcouvert := ', vrcouvert = ' + realdblstr(tbform.FieldByName('vrcouvert').AsFloat);

    if tbform.FieldByName('descontoreal').AsFloat <> 0 then
      descontoreal := ', descontoreal = ' + realdblstr(tbform.FieldByName('descontoreal').AsFloat);

    if tbform.FieldByName('acrescimo').AsFloat <> 0 then
      acrescimo := ', acrescimo = ' + realdblstr(tbform.FieldByName('acrescimo').AsFloat);

    if tbform.FieldByName('dinheiro').AsFloat <> 0 then
      dinheiro := ', dinheiro = ' + realdblstr(tbform.FieldByName('dinheiro').AsFloat);

    if tbform.FieldByName('troco').AsFloat <> 0 then
      troco := ', troco = ' + realdblstr(tbform.FieldByName('troco').AsFloat);

    if tbform.FieldByName('credito').AsFloat <> 0 then
      credito := ', credito = ' + realdblstr(tbform.FieldByName('credito').AsFloat);

    if tbform.FieldByName('cheque').AsFloat <> 0 then
      cheque := ', cheque = ' + realdblstr(tbform.FieldByName('cheque').AsFloat);

    if tbform.FieldByName('chequepre').AsFloat <> 0 then
      chequepre := ', chequepre = ' + realdblstr(tbform.FieldByName('chequepre').AsFloat);

    if tbform.FieldByName('cartao').AsFloat <> 0 then
      cartao := ', cartao = ' + realdblstr(tbform.FieldByName('cartao').AsFloat);

    if tbform.FieldByName('cartaod').AsFloat <> 0 then
      cartaod := ', cartaod = ' + realdblstr(tbform.FieldByName('cartaod').AsFloat);

    if tbform.FieldByName('fiado').AsFloat <> 0 then
      fiado := ', fiado = ' + realdblstr(tbform.FieldByName('fiado').AsFloat);

    if tbform.FieldByName('vendal').AsFloat <> 0 then
       vendal := ', vendal = ' + realdblstr(tbform.FieldByName('vendal').AsFloat);

    if tbform.FieldByName('total').AsFloat <> 0 then
       custo := ', custo = ' + realdblstr(tbform.FieldByName('custo').AsFloat)
    else custo := ', custo = 0';

    if codloc <> '' then
       nf := ', nf = ' + quotedstr(codloc);

    codloc :='';

    if tbform.FieldByName('nf').AsFloat > 0 then
       nf := ', nf = ' + realdblstr(tbform.FieldByName('nf').AsInteger);

    if (tipoempresa = 'O') and (controle <> 'balcao') then
       otica := ', esf_od_p = ' + quotedstr(tbform.FieldByName('esf_od_p').AsString)+
                ', esf_oe_p = ' + quotedstr(tbform.FieldByName('esf_oe_p').AsString)+
                ', esf_od_l = ' + quotedstr(tbform.FieldByName('esf_od_l').AsString)+
                ', esf_oe_l = ' + quotedstr(tbform.FieldByName('esf_oe_l').AsString)+
                ', cil_od_p = ' + quotedstr(tbform.FieldByName('cil_od_p').AsString)+
                ', cil_oe_p = ' + quotedstr(tbform.FieldByName('cil_oe_p').AsString)+
                ', cil_od_l = ' + quotedstr(tbform.FieldByName('cil_od_l').AsString)+
                ', cil_oe_l = ' + quotedstr(tbform.FieldByName('cil_oe_l').AsString)+
                ', eixo_od_p = ' + quotedstr(tbform.FieldByName('eixo_od_p').AsString)+
                ', eixo_oe_p = ' + quotedstr(tbform.FieldByName('eixo_oe_p').AsString)+
                ', eixo_od_l = ' + quotedstr(tbform.FieldByName('eixo_od_l').AsString)+
                ', eixo_oe_l = ' + quotedstr(tbform.FieldByName('eixo_oe_l').AsString)+
                ', dnp_od_p = ' + quotedstr(tbform.FieldByName('dnp_od_p').AsString)+
                ', dnp_oe_p = ' + quotedstr(tbform.FieldByName('dnp_oe_p').AsString)+
                ', dnp_od_l = ' + quotedstr(tbform.FieldByName('dnp_od_l').AsString)+
                ', dnp_oe_l = ' + quotedstr(tbform.FieldByName('dnp_oe_l').AsString)+
                ', alt_od_p = ' + quotedstr(tbform.FieldByName('alt_od_p').AsString)+
                ', alt_oe_p = ' + quotedstr(tbform.FieldByName('alt_oe_p').AsString)+
                ', alt_od_l = ' + quotedstr(tbform.FieldByName('alt_od_l').AsString)+
                ', alt_oe_l = ' + quotedstr(tbform.FieldByName('alt_oe_l').AsString)+
                ', adicao_od_p = ' + quotedstr(tbform.FieldByName('adicao_od_p').AsString)+
                ', adicao_oe_p = ' + quotedstr(tbform.FieldByName('adicao_oe_p').AsString)+
                ', adicao_od_l = ' + quotedstr(tbform.FieldByName('adicao_od_l').AsString)+
                ', adicao_oe_l = ' + quotedstr(tbform.FieldByName('adicao_oe_l').AsString);


    // transfere alguns dados para a tabela pedido para relatorio
          sql.clear;
          sql.add( 'update ' + nometabela + ' set ' +

      '  caixa = ' + quotedstr(fdm.tbcaixagrupo.FieldByName('chave').AsString) +
      ', emp = ' + quotedstr(tbform.FieldByName('emp').AsString) +
      ', consig = ' + quotedstr(tbform.FieldByName('consig').AsString) +
      ', usuario = ' + inttostr(usuariolink) +
      ', nome = ' + quotedstr(tbform.FieldByName('nome').AsString) +
      ', obs = ' + quotedstr(tbform.FieldByName('obs').AsString) +
      ', status = ' + quotedstr(tbform.FieldByName('status').AsString) +
      ', linkcaixa = ' + quotedstr(fdm.tbcaixagrupo.FieldByName('chave').AsString) +
      ', tipodesconto = ' + quotedstr(tbform.FieldByName('tipodesconto').AsString) +
      ', tipoestoque = ' + quotedstr(tbform.FieldByName('tipoestoque').AsString) +
      ', tipovenda = ' + quotedstr(tbform.FieldByName('tipovenda').AsString) +
      ', avulso = ' + quotedstr(tbform.FieldByName('avulso').AsString) +
      ', modo = ' + quotedstr(tbform.FieldByName('modo').AsString) +
      ', td = ' + quotedstr(tbform.FieldByName('td').AsString) +
      ', codigo = ' + quotedstr(tbform.FieldByName('codigo').AsString) +
      ' , data = ' + quotedstr(formatdatetime('yyyy/mm/dd', tbform.FieldByName('data').AsDateTime)) +
      ' , dtfechamento = now()'+
        dtentrega+
        dtdevolucao+
      ', numero = ' + quotedstr(tbform.FieldByName('numero').AsString) +
      ', spedido = ' + quotedstr(tbform.FieldByName('spedido').AsString) +
      ', codigovendedor = ' + quotedstr(tbform.FieldByName('codigovendedor').AsString) +
      ', totalparcial = ' + realdblstr(tbform.FieldByName('totalparcial').AsFloat) +
      ', total = ' + realdblstr(tabela.FieldByName('total').AsFloat) +
      ', totalitem = ' + realdblstr(tbform.FieldByName('totalitem').AsFloat) +
      custo+
      ', custol = ' + realdblstr(tbform.FieldByName('custol').AsFloat) +
      ', fisjur = ' + quotedstr(tbform.FieldByName('fisjur').AsString) +
      fiado +
      vendal +
      devolucao +
      cartaod +
      cartao +
      chequepre +
      cheque +
      credito +
      troco +
      dinheiro +
      acrescimo +
      valoricmsubstituicao+
      descontoreal +
      vrcouvert+
      totalpeca +
      totalservico +
      vrlocacao +
      vrcomissao+
      comissao+
      campo1 +
      campo2 +
      campo3 +
      campo4 +
      campo5 +
      campo6 +
      campo7 +
      campo8 +
      campo9 +
      servico +
      obs1 +
      tipo +
      comprador +
      nf +
      ecf +
      otica+
      ' where numero = ' + quotedstr(tbform.FieldByName('numero').AsString));

    //debugstr(sqlvenda);
    execsql;

    fdm.comadrianaExecute(self,tbform.fieldbyname('chavepedido').AsString);


      Destroy;
  end;
end;

procedure Tfacerto.parcvendaExecute(Sender: TObject);
var
tot:double;
i,j:integer;
tpconta : string;

        procedure preenche(dia:integer);
        var
        valor:double;
        tipopgto,tpc:string;
        begin

           tpc := 'null';
           if tabela.fieldbyname('fiado').AsFloat >0  then tipopgto := 'fiado' else
           if tabela.fieldbyname('cartao').AsFloat >0 then  tipopgto := 'cartao' else
           if tabela.fieldbyname('cartaod').AsFloat >0 then  tipopgto := 'cartaod' else
           if tabela.fieldbyname('chequepre').AsFloat >0 then begin
              tipopgto := 'chequepre' ;
              tpc := quotedstr('S');
           end;

           if (tabela.fieldbyname('cartao').AsFloat >0) or(tabela.fieldbyname('cartaod').AsFloat >0) then  tpc := quotedstr('C');

             tot := tot + roundto(tabela.fieldbyname(tipopgto).AsFloat/j,-2);
             if i=j then
                valor := roundto(tabela.fieldbyname(tipopgto).AsFloat/j,-2)+
                         (tabela.fieldbyname('total').AsFloat-
                          tabela.fieldbyname('dinheiro').AsFloat-tot)
             else valor := roundto(tabela.fieldbyname(tipopgto).AsFloat/j,-2);



             selecione('Insert into tbreceber('+
                       ' ch,codconta, documento, letra, codigo,nome, '+
                       ' dtemissao, dtvencimento, vrtitulo, vrdocumento, '+
                       ' diferenca, total, caixa, linkvenda, modulo, tpconta) '+
                       ' values( '+

                       tpc+
                       ', '+quotedstr(tpconta)+
                       ', '+quotedstr(tabela.fieldbyname('documento').AsString)+
                       ', '+quotedstr(inttostr(i))+
                       ', '+quotedstr(tabela.fieldbyname('codigo').AsString)+
                       ', '+quotedstr(tabela.fieldbyname('nome').AsString)+
                       ', '+quotedstr(formatdatetime('yyyy-mm-dd',tabela.fieldbyname('data').AsDateTime))+
                       ', '+quotedstr(formatdatetime('yyyy-mm-dd',now() + dia))+
                       ', '+realdblstr(tabela.fieldbyname('total').AsFloat)+
                       ', '+realdblstr(valor)+
                       ', '+realdblstr(valor)+
                       ', '+realdblstr(valor)+
                       ', '+quotedstr(fdm.tbcaixagrupo.fieldbyname('chave').asstring)+
                       ', '+quotedstr(tabela.fieldbyname('linkvenda').asstring)+
                       ', '+quotedstr(modulo)+
                       ', 1)');

        end;


begin

        if (controle='pedido') and (fecha) then begin

           with fdm.query2 do begin
                close;
                sql.Clear;
                sql.add('select * from tbcondfatura where descricao = '+
                         quotedstr(tbform.fieldbyname('formapgto').AsString));
                open;
                tpconta := fieldbyname('conta').asstring;

                selecione2('select chave from tbconta where descricao = '+ quotedstr(tpconta));
                tpconta := sqlpub2.fieldbyname('chave').asstring;
                sqlpub2 := nil;

               tot :=0;
               j:=0;
               if fieldbyname('venc1').AsInteger > 0 then inc(j);
               if fieldbyname('venc2').AsInteger > 0 then inc(j);
               if fieldbyname('venc3').AsInteger > 0 then inc(j);
               if fieldbyname('venc4').AsInteger > 0 then inc(j);
               if fieldbyname('venc5').AsInteger > 0 then inc(j);
               if fieldbyname('venc6').AsInteger > 0 then inc(j);

               i:=1;

               if fieldbyname('venc1').AsInteger > 0 then begin
                  preenche(fieldbyname('venc1').AsInteger);
                  inc(i);
               end;

               if fieldbyname('venc2').AsInteger > 0 then begin
                  preenche(fieldbyname('venc2').AsInteger);
                  inc(i);
               end;

               if fieldbyname('venc3').AsInteger > 0 then begin
                  preenche(fieldbyname('venc3').AsInteger);
                  inc(i);
               end;

               if fieldbyname('venc4').AsInteger > 0 then begin
                  preenche(fieldbyname('venc4').AsInteger);
                  inc(i);
               end;

               if fieldbyname('venc5').AsInteger > 0 then begin
                  preenche(fieldbyname('venc5').AsInteger);
                  inc(i);
               end;

               if fieldbyname('venc6').AsInteger > 0 then begin
                  preenche(fieldbyname('venc6').AsInteger);
                  inc(i);
               end;

              close;
           end;

        end;


end;

procedure Tfacerto.brwordExecute(Sender: TObject);
var
tbf,tipoconta:string;
begin

        if controle = 'pedido' then begin
           tbf := 'tbreceber';
           tipoconta := '"CAIXA"';
        end else if controle = 'entrada1' then begin
           tbf := 'tbpagar';
           tipoconta := '"1"';
        end;


        if responsavel = 'BR WORD' then
           selecione('INSERT INTO '+tbf+' (tipoconta, tpconta, documento, codigo,  '+
                  'dtemissao, dtvencimento, dtpagamento, vrtitulo, vrdocumento, total, '+
                  'recebido, diferenca,   modulo, linkvenda) VALUES ('+
                  tipoconta+
                  ',"1"'+
                  ','+quotedstr(tabela.fieldbyname('documento').AsString) +
                  ','+quotedstr(tabela.fieldbyname('codigo').AsString) +
                  ',now(),now(),now()'+
                  ','+realdblstr(tabela.fieldbyname('dinheiro').asfloat)+
                  ','+realdblstr(tabela.fieldbyname('dinheiro').asfloat)+
                  ','+realdblstr(tabela.fieldbyname('dinheiro').asfloat)+
                  ','+realdblstr(tabela.fieldbyname('dinheiro').asfloat)+
                  ',0'+
                  ','+quotedstr(modulo)+
                  ','+quotedstr(tabela.fieldbyname('codigo').AsString)+')');
end;

procedure Tfacerto.acresdescExecute(Sender: TObject);
var
valor:double;
atua:boolean;
tb,chave,descp:string;
begin

     //casamedico                                  eletrica sp
     if (responsavel <> '02.176.757/0001-66') and (responsavel <> '47.030.085/0001-14') then begin
        tb := 'vendaitem';
        chave := quotedstr(tabela.fieldbyname('chave').AsString);
        descp := ', descontopercent= descontoreal * 100 / vrunit '+
                 ', totalparcial = vrunit - descontoreal '+
                 ', total =totalparcial * qtd ';

     if (descrat <>tabela.fieldbyname('descontoreal').AsFloat)and
        (tabela.fieldbyname('totalpeca').AsFloat>0) then begin
        atua:=true;
        valor := tabela.fieldbyname('descontoreal').AsFloat/
                 tabela.fieldbyname('totalpeca').AsFloat;

        selecione('update '+tb+' set descontoreal = ' +
                  realdblstr(valor) + '* (vrunit) '+
                  descp+
                  ' where link = ' + chave +
                  ' and qtd > 0 ');

     end;

     if (tabela.fieldbyname('acrescimo').AsFloat <>0) and
        (tabela.fieldbyname('totalpeca').AsFloat>0) then begin
        atua:=true;
        valor := tabela.fieldbyname('acrescimo').AsFloat/
                 tabela.fieldbyname('totalpeca').AsFloat;

        selecione('update '+tb+' set acrescimo = ' +
                  realdblstr(valor) + '* (vrunit) ' +
                  ' where link = ' + chave+
                  ' and qtd > 0 ');
     end;

     if atua then
        selecione('update '+tb+' set total = '+
                 ' qtd * (vrunit - if(descontoreal>0,descontoreal,0) + '+
                 ' if(acrescimo>0,acrescimo,0)) '+
                 ' where link = ' + quotedstr(tabela.fieldbyname('linkvenda').AsString)+
                 ' and qtd > 0 ');

      if (controle = 'pedido') or (controle = 'balcao') then begin
         tbformi.Close;
         tbformi.Open;
      end;
   end;
end;

procedure Tfacerto.edescontorealKeyPress(Sender: TObject; var Key: Char);
begin
        if (key in['.']) then abort;
end;

procedure Tfacerto.rconvenioClick(Sender: TObject);
begin
        convenioExecute(self);
end;


procedure Tfacerto.gconta(cptb:string);
var
CarCheqPraz,pgrec,codclifor:integer;
comisvendedor:double;
doc,credcli,comissaobalcao,comissaovendedor,vendaavulsa,compraavulsa:string;
begin

       if tabela['codigo'] = null then
            msg('#Gerar conta para quem?',0);


                                                       //entrada acumulada
        if (controle = 'devolver') or (modulo='8') or (modulo='27') or (modulo='10') then
             pgrec:= 2//pagar
        else pgrec:= 1;//receber

        cptb:= lowercase(cptb);
        if (cptb = 'cartao') or (cptb = 'cartaod')then        CarCheqPraz :=1
        else if (cptb = 'cheque') or (cptb = 'chequepre')then CarCheqPraz :=2
        else                                                  CarCheqPraz :=3;//aprazo

        //verifica se o cliente pode comprar a prazo
        if pgrec = 1 then
           if CarCheqPraz = 1 then      credcli := 'vendacartao'
           else if CarCheqPraz = 2 then credcli := 'vendacheque'
           else                         credcli := 'vendaaprazo';

        comisvendedor:=0;
        if modocalcula = '2' then comisvendedor := percent;


        if (controle <> 'devolver') and (strtoint(modulo) in [2,28]) then begin //venda e acerto venda
           selecione('select '+credcli+' as cred from tbcliente where codigo = ' +
                      quotedstr(tabela.FieldByName('codigo').AsString));

           if sqlpub['cred'] = 'N' then begin
                 sqlpub:=nil;
                 senhagerencial('VENDA '+uppercase(credcli), ' CLIENTE COM RESTRINÇÕES - DIGITE A SENHA GERENCIAL:',
                                'VENDA '+uppercase(credcli)+' BLOQUEADA ');
           end else sqlpub:=nil;

           inadiplente(tabela.FieldByName('codigo').AsString, uppercase(controle));
           verificacredito(tabela.FieldByName('codigo').AsString , 'A PRAZO',tabela.FieldByName(cptb).AsFloat);
      end;


      if strtoint(modulo) in [8] then begin//ENTRADA
          selecione('select compraavulsa from tbconfig');
          compraavulsa:= sqlpub.fieldbyname('compraavulsa').asstring;
          sqlpub:=nil;
      end;

      if strtoint(modulo) in [2,9,28] then begin//so receber
          selecione('select comissaobalcao,comissaovendedor,vendaavulsa from tbconfig');
          comissaobalcao := sqlpub.fieldbyname('comissaobalcao').asstring;
          comissaovendedor := sqlpub.fieldbyname('comissaovendedor').asstring;
          vendaavulsa := sqlpub.fieldbyname('vendaavulsa').asstring;
          sqlpub:=nil;

          if CarCheqPraz in[2..3] then
              if (controle = 'devolver') and (tabela['td'] = '2') then
              else if ((((controle = 'balcao')or(controle = 'balcaoN')) and
                         (comissaobalcao = 'S')) or
                (((controle = 'pedido') or (controle = 'devolver')) and
                (comissaovendedor = 'S'))) then
                comissaoExecute(self);
      end;


      if (((vendaavulsa = 'S') and (modulo='2')) or ((compraavulsa = 'S') and(codigo='') and (modulo='8')))and
         (active) and (CarCheqPraz = 3) and (tabela['codigo']<> codigobalcao) and
         (msg('Acumular o valor a prazo para acertar depois?', 2)) then begin

         tbform['avulso'] := 'S';
         tabela.edit;
         tabela['avulso'] := 'S';

      end else begin

      if controle = 'devolver' then msg('#Operação não permitida.',0);

         if fecha then
            parcvendaExecute(self)

         else begin

              
              if codigo <> '' then //frete ativo para compra
                 codclifor := strtoint(codigo)
              else codclifor := tabela.fieldbyname('codigo').AsInteger ;


             vf:=false;
             if tabela.fieldbyname('documento').asstring ='' then
                doc := tabela.fieldbyname('numero').asstring
             else doc := tabela.fieldbyname('documento').asstring;

             contarecpg(codclifor,pgrec,CarCheqPraz,
                        tabela.fieldbyname('linkvenda').AsInteger,
                        tabela.fieldbyname(cptb).asfloat,
                        comisvendedor,
                        tabela.fieldbyname('codigovendedor').AsInteger,
                        tabela.fieldbyname('data').asdatetime,
                        doc,modulo);

             

             codloc :='';           
             if vf = False then abort;
          end;

      end;

end;


procedure Tfacerto.edescontopercentExit(Sender: TObject);
var

  desc, descp: double;
  tipo: string;
begin
  fdm.tbconfig.Open;
  edescontopercent.Color := $00EAFFFF;

  if edescontopercent.Modified = True then
  begin
    tabela.Edit;
    tabela['descontoreal'] := tabela.FieldByName('descontopercent').AsFloat *
      (tabela.FieldByName('totalparcial').AsFloat -
      tabela.FieldByName('credito').AsFloat) / 100;


    if (tabela.FieldByName('descontopercent').AsFloat >
      fdm.tbconfig.FieldByName('desconto').AsFloat) or
      (controle = 'acertoreceber') or
      (controle = 'refinanciamento') then 
    begin
      // para o desconto 2(com senha)
      if tabela.FieldByName('descontopercent').AsFloat <=
        fdm.tbconfig.FieldByName('desconto2').AsFloat then
        tipo := '*'
      else 
        tipo := '';

      desc := tabela.FieldByName('descontoreal').AsFloat;
      descP := tabela.FieldByName('descontopercent').AsFloat;

      tabela.FieldByName('descontoreal').Clear;
      tabela.FieldByName('descontopercent').Clear;

      if (controle <> 'acertopagar') or
        (controle <> 'acertocompra') or
        (controle <> 'devolver') or
        (controle <> 'entrada1') or
        (controle <> 'entrada') then
        senhagerencial(tipo + 'DESCONTO SUPERIOR',
          'DIGITE A SENHA PARA LIBERAR:',
          'DESCONTO SUPERIOR NÃO PERMITIDO')

      else if (controle = 'acertoreceber') or
        (controle = 'refinanciamento') or
        (controle = 'acertochequeR') then
        senhagerencial('DESCONTO RECEBIMENTO',
          'DIGITE A SENHA GERENCIAL PARA LIBERAR:',
          'DESCONTO EM CONTA RECEBIDA');
      tabela.edit;
      tabela['descontoreal'] := desc;
      tabela['descontopercent'] := descP;
    end;


    vf := False;
    tabela.Edit;

    if (tabela.FieldByName('descontoreal').AsFloat > 0) and
      (controle = 'pedido') then 
    begin
      //if Application.MessageBox('O desconto é até o vencimento? ', 'Confirme', mb_yesno +
        //MB_DEFBUTTON2 + MB_ICONQUESTION) = idYes then tabela['tipodesconto'] := 'S'
      //else
        tabela['tipodesconto'] := 'N';
    end
    else
      tabela.FieldByName('tipodesconto').Clear;

    totalizarexecute(self);
    edescontoreal.Modified := False;
  end;

  edescontopercent.Modified := False;


end;

procedure Tfacerto.acrescimopercentExit(Sender: TObject);
begin
        acrescimopercent.Color := $00EAFFFF;

        if acrescimopercent.Modified = True then
        begin
          tabela.Edit;
          tabela['acrescimo'] := tabela.FieldByName('acrescimopercent').AsFloat *
                                 (tabela.FieldByName('totalparcial').AsFloat -
                                  tabela.FieldByName('credito').AsFloat) / 100;
          totalizarexecute(self);
          eacrescimo.Modified := False;
        end;

        acrescimopercent.Modified := False;


end;

end.


