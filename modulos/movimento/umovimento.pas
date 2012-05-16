{modulo 0=movdia 2=Venda  4=Cliente  5=Produto  6=Funcionario  7=Fornecedor 8=compra 9=Cont Receb 10=Cont Pagar =18 Serviço  }
unit umovimento;

interface

uses
  rltypes,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, DBClient,  DB,
   Grids, DBGrids, ActnList, Buttons, Mask, RLReport,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls;

type
  Tfmovimento = class(TForm)
    dsvendaitem: TDataSource;
    tbvenda: TClientDataSet;
    dsvenda: TDataSource;
    pagecontrol1: TPageControl;
    Tabvenda: TTabSheet;
    Tabreceber: TTabSheet;
    PageControl2: TPageControl;
    Tabvendag: TTabSheet;
    g0: TDBGrid;
    Tabvendaitem: TTabSheet;
    g0_1: TDBGrid;
    Panel2: TPanel;
    mtbvenda: TMemo;
    mtbcaixa: TMemo;
    mtbpagar: TMemo;
    dsreceber: TDataSource;
    ActionList1: TActionList;
    receber: TAction;
    RTIPO: TRadioGroup;
    g2: TDBGrid;
    Tabvendaservico: TTabSheet;
    g0_2: TDBGrid;
    dsservico: TDataSource;
    mtbcompra: TMemo;
    mtbreceber: TMemo;
    Tabcompra: TTabSheet;
    Tabpagar: TTabSheet;
    Tabcaixa: TTabSheet;
    PageControl3: TPageControl;
    TabcompraG: TTabSheet;
    g1: TDBGrid;
    Tabcompraitem: TTabSheet;
    g1_1: TDBGrid;
    dscompra: TDataSource;
    dscompraitem: TDataSource;
    rpagar: TRadioGroup;
    g3: TDBGrid;
    venda: TAction;
    compra: TAction;
    pagar: TAction;
    dspagar: TDataSource;
    Tabcomv: TTabSheet;
    Tabcoms: TTabSheet;
    RadioGroup1: TRadioGroup;
    g5: TDBGrid;
    RadioGroup2: TRadioGroup;
    g6: TDBGrid;
    Panel4: TPanel;
    elocalizar: TEdit;
    llocalizar: TLabel;
    sqld: TZQuery;
    tbvendachave: TIntegerField;
    tbvendadata: TDateField;
    tbvendacodigo: TIntegerField;
    tbvendanome: TStringField;
    tbvendanumero: TIntegerField;
    tbvendavendedor: TIntegerField;
    tbvendatotal: TFloatField;
    tbvendadinheiro: TFloatField;
    tbvendacheque: TFloatField;
    tbvendachequepre: TFloatField;
    tbvendacartao: TFloatField;
    tbvendacartaod: TFloatField;
    tbvendamodo: TStringField;
    tbcompra: TZQuery;
    tbvendafiado: TFloatField;
    tbreceber: TZQuery;
    tbpagar: TZQuery;
    tbvendaitem: TZQuery;
    tbvendaservico: TZQuery;
    tbcompraitem: TZQuery;
    tbcomissaov: TZQuery;
    dscomissaov: TDataSource;
    tbcomissaos: TZQuery;
    dscomissaos: TDataSource;
    pcomissaov: TPanel;
    pcomissaos: TPanel;
    rvisualiza: TCheckBox;
    BitBtn2: TBitBtn;
    comissaov: TAction;
    comissaos: TAction;
    tbvendacodigovendedor: TIntegerField;
    tbvendacredito: TFloatField;
    Panel1: TPanel;
    Label1: TLabel;
    d1: TMaskEdit;
    d2: TMaskEdit;
    BitBtn1: TBitBtn;
    Tabvendac: TTabSheet;
    tbconsumo: TZQuery;
    dsconsumo: TDataSource;
    g0_3: TDBGrid;
    mobs: TDBMemo;
    tbvendacampo1: TStringField;
    tbvendacampo2: TStringField;
    tbvendacampo3: TStringField;
    tbvendacampo4: TStringField;
    tbvendacampo5: TStringField;
    tbvendacampo6: TStringField;
    tbvendacampo7: TStringField;
    tbvendacampo8: TStringField;
    tbvendaservico2: TMemoField;
    tbvendaDtFechamento: TDateField;
    tbvendaDtAprova: TDateField;
    tbvendaDtDevolucao: TDateField;
    mobs2: TDBMemo;
    tbvendaobs1: TMemoField;
    potica: TPanel;
    Shape1: TShape;
    Label48: TLabel;
    Label49: TLabel;
    Shape2: TShape;
    Label50: TLabel;
    Label51: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label60: TLabel;
    Label70: TLabel;
    eo8: TDBEdit;
    RLAngleLabel1: TRLAngleLabel;
    eo1: TDBEdit;
    eo2: TDBEdit;
    eo3: TDBEdit;
    eo4: TDBEdit;
    eo5: TDBEdit;
    eo6: TDBEdit;
    eo7: TDBEdit;
    eo9: TDBEdit;
    eo10: TDBEdit;
    eo11: TDBEdit;
    eo12: TDBEdit;
    eo13: TDBEdit;
    eo14: TDBEdit;
    eo15: TDBEdit;
    eo16: TDBEdit;
    eo17: TDBEdit;
    eo18: TDBEdit;
    eo19: TDBEdit;
    eo20: TDBEdit;
    eo21: TDBEdit;
    eo22: TDBEdit;
    eo23: TDBEdit;
    eo24: TDBEdit;
    tbvendaesf_od_p: TStringField;
    tbvendaesf_oe_p: TStringField;
    tbvendaesf_od_l: TStringField;
    tbvendaesf_oe_l: TStringField;
    tbvendacil_od_p: TStringField;
    tbvendacil_oe_p: TStringField;
    tbvendacil_od_l: TStringField;
    tbvendacil_oe_l: TStringField;
    tbvendaeixo_od_p: TStringField;
    tbvendaeixo_oe_p: TStringField;
    tbvendaeixo_od_l: TStringField;
    tbvendaeixo_oe_l: TStringField;
    tbvendadnp_od_p: TStringField;
    tbvendadnp_oe_p: TStringField;
    tbvendadnp_od_l: TStringField;
    tbvendadnp_oe_l: TStringField;
    tbvendaalt_od_p: TStringField;
    tbvendaalt_oe_p: TStringField;
    tbvendaalt_od_l: TStringField;
    tbvendaalt_oe_l: TStringField;
    tbvendaadicao_od_p: TStringField;
    tbvendaadicao_oe_p: TStringField;
    tbvendaadicao_od_l: TStringField;
    tbvendaadicao_oe_l: TStringField;
    tbvendanf: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure receberExecute(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
    procedure vendaExecute(Sender: TObject);
    procedure compraExecute(Sender: TObject);
    procedure pagarExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RTIPOClick(Sender: TObject);
    procedure rpagarClick(Sender: TObject);
    procedure g0TitleClick(Column: TColumn);
    procedure g1TitleClick(Column: TColumn);
    procedure g2TitleClick(Column: TColumn);
    procedure g3TitleClick(Column: TColumn);
    procedure TabvendaShow(Sender: TObject);
    procedure TabcompraShow(Sender: TObject);
    procedure TabreceberShow(Sender: TObject);
    procedure TabpagarShow(Sender: TObject);
    procedure TabcaixaShow(Sender: TObject);
    procedure TabcomvShow(Sender: TObject);
    procedure TabcomsShow(Sender: TObject);
    procedure TabvendagShow(Sender: TObject);
    procedure TabvendaitemShow(Sender: TObject);
    procedure TabvendaservicoShow(Sender: TObject);
    procedure TabcompraGShow(Sender: TObject);
    procedure TabcompraitemShow(Sender: TObject);
    procedure elocalizarChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure d1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure d2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure g0_2TitleClick(Column: TColumn);
    procedure g1_1TitleClick(Column: TColumn);
    procedure g5TitleClick(Column: TColumn);
    procedure g6TitleClick(Column: TColumn);
    procedure comissaovExecute(Sender: TObject);
    procedure comissaosExecute(Sender: TObject);
    procedure pagecontrol1Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure TabvendacShow(Sender: TObject);
    procedure g0_1TitleClick(Column: TColumn);
    procedure g0_3TitleClick(Column: TColumn);
  private
  pag,pagi,modulo:integer;
  servico:boolean;
    { Private declarations }
  public
  codigo:string;
    { Public declarations }



    constructor Create(AOwner: TComponent; codigo_:string; modulo_:integer); reintroduce;

  end;
var
  fmovimento: Tfmovimento;

implementation

uses udm, funcoes;

{$R *.dfm}





constructor Tfmovimento.Create(AOwner: TComponent; codigo_:string; modulo_:integer);
begin


        Inherited Create(AOwner);

        cod := '';
        selecione('select os from tbconfig');
        servico := sqlpub['os']='S';
        sqlpub:=nil;

        if tipoempresa <> 'O' then potica.Destroy;
        if not servico then Tabvendaservico.Destroy;

        if responsavel = '07.542.365/0001-97' then
           g0.Columns[3].Title.caption := 'DtInforma';

        codigo := codigo_;
        modulo:=modulo_;

        d2.Text := datetostr(now);

        case modulo of

             0:begin
                    d1.Text := datetostr(now);
                    tabvenda.Show;
                    Tabvendag.Show;
                    //Tabvendac.Destroy;
                    vendaExecute(self);
                    caption := 'Movimento do período';
              end;


             4:begin
                    g0.Columns[4].Visible :=  responsavel = '07.542.365/0001-97';
                    if servico then begin

                        mobs.DataField:= 'servico';
                        mobs.Show;
                        mobs2.DataField:= 'obs1';
                        mobs2.Show;

                        ncol := g0.Columns.Count;

                        if tipoempresa = 'P' then begin
                           criacoluna(g0,'campo1','Veículo',100);
                           criacoluna(g0,'campo8','Placa',60);
                           criacoluna(g0,'campo4','Chassi',80);
                           criacoluna(g0,'campo2','Marca_Ano',60);
                           criacoluna(g0,'campo6','Km',60);
                           criacoluna(g0,'campo3','MVS_Cor',60);

                        end else if tipoempresa = 'P' then begin
                           criacoluna(g0,'campo1','Animal',100);
                           criacoluna(g0,'campo4','Raça',80);
                           criacoluna(g0,'campo6','Peso',60);
                           criacoluna(g0,'campo3','Nascimento',60);
                        
                        end else if tipoempresa = 'E' then begin
                           criacoluna(g0,'campo1','Aparelho',100);
                           criacoluna(g0,'campo2','Marca',80);
                           criacoluna(g0,'campo3','Modelo',60);
                           criacoluna(g0,'campo4','Série',60);
                           criacoluna(g0,'campo7','Garantia',60);

                        end else if tipoempresa = 'I' then begin
                           criacoluna(g0,'campo1','Maquina',100);
                           criacoluna(g0,'campo4','Serie',80);
                           criacoluna(g0,'campo6','Cont. Final',60);
                           criacoluna(g0,'campo7','Garantia',60);


                        end else if tipoempresa = 'I' then begin
                           criacoluna(g0,'campo1','Veículo',100);
                           criacoluna(g0,'campo8','Placa',80);
                           criacoluna(g0,'campo4','Chassi',60);
                           criacoluna(g0,'campo2','Ano',60);
                       end;
                    end;


                    d1.Text := datetostr(now-30);
                    tabcompra.Destroy;
                    mtbcompra.Destroy;
                    tabpagar.Destroy;
                    mtbpagar.Destroy;
                    tabcaixa.Destroy;
                    mtbcaixa.Destroy;
                    tabvenda.Show;
                    Tabvendag.Show;
                    vendaExecute(self);
                    caption := 'Vida do cliente';
               end;

             7:begin
                    d1.Text := datetostr(now-30);
                    tabvenda.Destroy;
                    mtbvenda.Destroy;
                    tabreceber.Destroy;
                    mtbreceber.Destroy;
                    tabcaixa.Destroy;
                    mtbcaixa.Destroy;
                    Tabcomv.Destroy;
                    tabcoms.Destroy;
                    tabcompra.show;
                    tabcomprag.Show;
                    compraExecute(self);
                    caption := 'Vida do fornecedor';
               end;

             6:begin
                    d1.Text := datetostr(now-30);
                    tabcompra.Destroy;
                    mtbcompra.Destroy;
                    tabpagar.Destroy;
                    mtbpagar.Destroy;
                    tabcaixa.Destroy;
                    mtbcaixa.Destroy;
                    Tabvendac.Destroy;

                    tabvenda.Show;
                    Tabvendag.Show;
                    vendaExecute(self);
                    caption := 'Vida do funcionário';
               end;

        end;





end;





procedure Tfmovimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        tbvenda.Close;
        tbvendaitem.Close;
        tbvendaservico.Close;
        tbcompra.Close;
        tbcompraitem.Close;
        tbreceber.Close;
        tbpagar.Close;
        tbcomissaov.Close;
        tbcomissaos.Close;

        release;
        fmovimento := nil;

end;

procedure Tfmovimento.receberExecute(Sender: TObject);
var
juro,  totdoc, totjuro: double;
contreceb,dt,dtfin,Tipocontad:string;

begin
        Tipocontad    := nomelink('tbreceber.codconta','chave', 'descricao','tbconta','Tipoconta');
        contreceb :='';
        dt := formatdatetime('yyyy-mm-dd',strtodate(d1.text));
        dtfin := formatdatetime('yyyy-mm-dd',strtodate(d2.text));

        if codigo <> '' then
           cod := ' and tbcliente.codigo = ' + quotedstr(codigo);


        if rtipo.ItemIndex = 0 then
           contreceb := ' and tbreceber.recebido > 0 '
        else if rtipo.ItemIndex = 1 then
           contreceb := ' and tbreceber.diferenca > 0 '
        else if rtipo.ItemIndex = 2 then
           contreceb := ' and tbreceber.diferenca > 0 and tbreceber.dtvencimento < now()'
        else if rtipo.ItemIndex = 3 then
           contreceb := '';


    fdm.tbconfig.Open;
    juro := fdm.tbconfig.FieldByName('juro').AsFloat;
    fdm.tbconfig.Close;

    tbreceber.Close;
    tbreceber.SQL.clear;


    tbreceber.sql.add('select ' +
    ' if((TO_DAYS(now()) > TO_DAYS(tbreceber.dtvencimento)),' +
    ' (To_days(now())- To_days(tbreceber.dtvencimento)) * (' + realdblstr(juro) +
    '* tbreceber.diferenca/100) ,' + ' null) as juro,' +
    ' if((TO_DAYS(now()) > TO_DAYS(tbreceber.dtvencimento)),' +
    ' (To_days(now())- To_days(tbreceber.dtvencimento)) * (' + realdblstr(juro) +
    '* tbreceber.diferenca/100) + tbreceber.vrdocumento ,' +
    ' tbreceber.diferenca) as totalgeral, ' +
    ' if(To_days(now())- To_days(tbreceber.dtvencimento) > 0,'+
    '  To_days(now())- To_days(tbreceber.dtvencimento),0)as atrazo, '+
    ' tbreceber.chave , '+
    Tipocontad + '  ,tbreceber.documento ,  tbreceber.letra ,  tbcliente.codigo ,  tbcliente.nome ,' +
    ' tbreceber.dtemissao ,  tbreceber.dtvencimento ,  tbreceber.dtpagamento ,  '+
    ' tbreceber.vrtitulo , tbreceber.total as valor ,tbreceber.movimentopagar, tbreceber.desconto ,  tbreceber.acrescimo ,'+
    ' tbreceber.recebido ,  tbreceber.diferenca ,  tbreceber.vrdocumento  '+
    '  from tbreceber, tbcliente '+
    '  where tbreceber.dtemissao between '+ quotedstr(dt)+ ' and ' + quotedstr(dtfin)+
    ' and tbreceber.codigo = tbcliente.codigo '+ cod+ sqlempresa(1,1,'tbreceber')+ contreceb+
    ' order by dtvencimento desc');


    tbreceber.Open;

  tbreceber.First;
  totdoc := 0;
  totjuro := 0;

        while not tbreceber.EOF do  begin
             if rtipo.ItemIndex = 0 then
                totdoc := totdoc + tbreceber.FieldByName('recebido').AsFloat
             else if (rtipo.ItemIndex = 1) or (rtipo.ItemIndex = 2) then
                totdoc := totdoc + tbreceber.FieldByName('diferenca').AsFloat
             else
                totdoc := totdoc + tbreceber.FieldByName('vrdocumento').AsFloat;

             totjuro := totjuro + tbreceber.FieldByName('juro').AsFloat;
             tbreceber.Next;
        end;

        mtbreceber.Lines.Clear;
        mtbreceber.Lines.Add(posicol('Receber: Soma R$ ' , format('%n', [totdoc]),17,2));
        mtbreceber.Lines.Add(posicol('Juros R$ ' , format('%n', [totjuro]),17,2));
        mtbreceber.Lines.Add(posicol('Tot C/ Juros R$ ' , format('%n', [totjuro+totdoc]),17,2));



        (tbreceber.FieldByName('vrdocumento') as tfloatfield).DisplayFormat := '###,##0.00';
        (tbreceber.FieldByName('valor') as tfloatfield).DisplayFormat := '###,##0.00';
        (tbreceber.FieldByName('recebido') as tfloatfield).DisplayFormat := '###,##0.00';
        (tbreceber.FieldByName('diferenca') as tfloatfield).DisplayFormat := '###,##0.00';
        (tbreceber.FieldByName('juro') as tfloatfield).DisplayFormat := '###,##0.00';
        (tbreceber.FieldByName('totalgeral') as tfloatfield).DisplayFormat := '###,##0.00';


end;

procedure Tfmovimento.PageControl2Change(Sender: TObject);
var
st,cod,tb:string;
begin
        if pagecontrol2.ActivePageIndex = 1 then begin

           if tbvenda['modo'] = 'ABE' then
              tb:='vendaitem'
           else
              tb:='tbpedidoitem';

           tbvendaitem.Close;
           tbvendaitem.SQL.Clear;

           tbvendaitem.sql.add( 'select '+

                       'tbproduto.descricao, '+
                       tb+'.chave, '+
                       tb+'.codigo, '+
                       tb+'.qtd, ' +
                       tb+'.vrunit, '+
                       tb+'.descontoreal, '+

               'if ('+tb+'.descontoreal is not null, '+
                    tb+'.vrunit - '+tb+'.descontoreal,'+
                    tb+'.vrunit) as totalparcial, '+

               'if ('+tb+'.descontoreal is not null, '+
                    '('+tb+'.vrunit - '+tb+'.descontoreal) * '+
                    tb+'.qtd, '+tb+'.vrunit* '+tb+'.qtd) as total '+

               ' from tbproduto, '+tb+
               ' where '+tb+'.codigo = tbproduto.codigo and '+
               ' '+tb+'.link= '+quotedstr(tbvenda.fieldbyname('chave').asstring));
               //debugstr(tbvendaitem)  ;
               tbvendaitem.open;

              (tbvendaitem.FieldByName('total') as tfloatfield).DisplayFormat := '###,##0.00';
              (tbvendaitem.FieldByName('descontoreal') as tfloatfield).DisplayFormat := '###,##0.00';
              (tbvendaitem.FieldByName('vrunit') as tfloatfield).DisplayFormat := '###,##0.00';
              (tbvendaitem.FieldByName('totalparcial') as tfloatfield).DisplayFormat := '###,##0.00';

        end else if pagecontrol2.ActivePageIndex = 3 then begin

           if tbvenda['modo'] = 'ABE' then
              tb:='vendaservico'
           else
              tb:='tbpedidoservico';


           tbvendaservico.Close;
           tbvendaservico.SQL.Clear;

           tbvendaservico.sql.add( 'select  * from '+ tb +
                              ' where link= '+quotedstr(tbvenda.fieldbyname('chave').asstring));
           tbvendaservico.open;

           (tbvendaservico.FieldByName('total') as tfloatfield).DisplayFormat := '###,##0.00';
           (tbvendaservico.FieldByName('vrunit') as tfloatfield).DisplayFormat := '###,##0.00';


        end else  if pagecontrol2.ActivePageIndex = 2 then begin

            codloc :='1';

            st:=msgi('1 = O que o cliente compra  '+#13+'2 = Consumo geral por data',2);

            tb:='tbpedidoitem';
            if (codigo <> '') and (modulo <> 6 ) then
               cod := ' and '+tb+'.codigocliente = ' + quotedstr(codigo);


           tbconsumo.Close;
           tbconsumo.SQL.Clear;

           if st = '1' then begin
              tbconsumo.sql.add( 'select '+

                       'tbproduto.descricao, '+
                       tb+'.chave, '+
                       tb+'.codigo, '+
                       ' sum('+tb+'.qtd) as qtd, ' +

               'if ('+tb+'.descontoreal is not null, '+
                    tb+'.vrunit - '+tb+'.descontoreal,'+
                    tb+'.vrunit) as vrunit '+

               ' from tbproduto, '+tb+
               ' where '+tb+'.qtd > 0 and '+tb+'.codigo = tbproduto.codigo '+ cod+

               ' group by '+tb+'.codigo');
               g0_3.Columns[4].Visible := false;
               g0_3.Columns[5].Visible := false;
            end else begin

              tbconsumo.sql.add( 'select '+

                       'tbproduto.descricao, '+
                       tb+'.chave, '+
                       tb+'.codigo, '+
                       tb+'.qtd, ' +
                       tb+'.data, ' +
                       tb+'.numero, ' +

               'if ('+tb+'.descontoreal is not null, '+
                    tb+'.vrunit - '+tb+'.descontoreal,'+
                    tb+'.vrunit) as vrunit '+

               ' from tbproduto, '+tb+
               ' where '+tb+'.qtd > 0 and '+tb+'.codigo = tbproduto.codigo '+ cod+

               ' order by '+tb+'.data desc');
               g0_3.Columns[4].Visible := true;
               g0_3.Columns[5].Visible := true;
            end;

               //debugstr(tbconsumo)  ;
               tbconsumo.close;
               tbconsumo.open;

              (tbconsumo.FieldByName('vrunit') as tfloatfield).DisplayFormat := '###,##0.00';
        end;

end;

procedure Tfmovimento.PageControl3Change(Sender: TObject);
begin
        if pagecontrol3.ActivePageIndex = 1 then begin

            tbcompraitem.Close;
            tbcompraitem.SQL.Clear;
            tbcompraitem.sql.add('select '+

                       'tbentradaitem.chave, '+
                       'tbproduto.descricao, '+
                       'tbentradaitem.codigo, '+
                       'tbentradaitem.qtd, ' +
                       'tbentradaitem.vrunit, '+
                       'tbentradaitem.totnf AS total '+

               ' from tbproduto, tbentradaitem '+
               ' where tbentradaitem.codigo = tbproduto.codigo and '+
               ' tbentradaitem.link= '+quotedstr(tbcompra.fieldbyname('chave').asstring));
               //debugstr(tbcompraitem);

               tbcompraitem.open;
              (tbcompraitem.FieldByName('total') as tfloatfield).DisplayFormat := '###,##0.00';
              (tbcompraitem.FieldByName('vrunit') as tfloatfield).DisplayFormat := '###,##0.00';

        end;


end;

procedure Tfmovimento.vendaExecute(Sender: TObject);
var
otica,dt,dtfin,cod,ntb,md:string;
tot,qtd:double;
i:integer;
begin

         otica := ', esf_od_p , esf_oe_p , esf_od_l , esf_oe_l , cil_od_p , cil_oe_p , cil_od_l , '+
                  'cil_oe_l , eixo_od_p , eixo_oe_p , eixo_od_l , eixo_oe_l , dnp_od_p , dnp_oe_p , dnp_od_l , '+
                  'dnp_oe_l , alt_od_p , alt_oe_p , alt_od_l , alt_oe_l , adicao_od_p , adicao_oe_p , adicao_od_l , adicao_oe_l ';

        dt := formatdatetime('yyyy-mm-dd',strtodate(d1.text));
        dtfin := formatdatetime('yyyy-mm-dd',strtodate(d2.text));
        tbvenda.Close;
        tbvenda.CreateDataSet;
        tbvenda.Open;
                                   
        with sqld do begin

            if (codigo <> '') and (modulo <> 6 ) then
               cod := ' and codigo = ' + quotedstr(codigo);

            if (codigo <> '') and (modulo = 6 ) then
               cod := ' and codigovendedor = ' + quotedstr(codigo);


            for i :=1 to 2 do begin

               if i =1 then begin
                  ntb:='tbpedido';
                  md :='"FEC"';

               end else if i =2 then begin
                  ntb:='venda';
                  md :='"ABE"';
               end;

               close;
               sql.clear;
               sql.add('select '+md+' as modo, modo as md, codigo, nome, chave,'+
                    ' data,dtdevolucao,dtentrega,dtfechamento, numero, NF,codigovendedor,'+
                    ' total, dinheiro, cheque, '+
                    ' chequepre, cartao, cartaod , fiado,'+
                    ' campo1, campo2, campo3, campo4, '+
                    ' campo5, campo6, campo7, campo8, servico,obs1 '+ otica+
                    '  from '+ ntb +
                    '  where codigo >0 and data between '+ quotedstr(dt)+ ' and ' + quotedstr(dtfin)+ cod+ sqlempresa(1,1,'')+
                    ' order by data desc');
                  //  debugstr(sqld);
//             if ntb='tbpedido' then sql.SaveToFile('c:\sq.sql');
             open;
             first;

             while not eof do begin
                   if (fieldbyname('md').AsString = 'P') or
                      (fieldbyname('md').AsString = 'T') or
                      (fieldbyname('md').AsString = 'V') or
                      (fieldbyname('md').AsString = 'D') then begin
                       tbvenda.Insert;
                       tbvenda['campo1'] := fieldbyname('campo1').AsString;
                       tbvenda['campo2'] := fieldbyname('campo2').AsString;
                       tbvenda['campo3'] := fieldbyname('campo3').AsString;
                       tbvenda['campo4'] := fieldbyname('campo4').AsString;
                       tbvenda['campo5'] := fieldbyname('campo5').AsString;
                       tbvenda['campo6'] := fieldbyname('campo6').AsString;
                       tbvenda['campo7'] := fieldbyname('campo7').AsString;
                       tbvenda['campo8'] := fieldbyname('campo8').AsString;
                       tbvenda['servico'] := fieldbyname('servico').AsString;
                       tbvenda['modo'] := fieldbyname('modo').AsString;
                       tbvenda['codigo'] := fieldbyname('codigo').Asinteger;
                       tbvenda['nome'] := fieldbyname('nome').AsString;
                       tbvenda['chave'] := fieldbyname('chave').Asinteger;
                       tbvenda['nf'] := fieldbyname('nf').Asinteger;
                       tbvenda['numero'] := fieldbyname('numero').Asinteger;
                       tbvenda['data'] := fieldbyname('data').AsDateTime;
                       tbvenda['dtdevolucao'] := fieldbyname('dtdevolucao').AsDateTime;

                       if sqld['dtfechamento'] <> null then
                          tbvenda['dtfechamento'] := fieldbyname('dtfechamento').AsDateTime;

                       tbvenda['dtaprova'] := fieldbyname('dtentrega').AsDateTime;
                       tbvenda['codigovendedor'] := fieldbyname('codigovendedor').Asinteger;
                       tbvenda['total'] := fieldbyname('total').asfloat;
                       tbvenda['dinheiro'] := fieldbyname('dinheiro').asfloat;
                       tbvenda['cheque'] := fieldbyname('cheque').asfloat;
                       tbvenda['cartao'] := fieldbyname('cartao').asfloat;
                       tbvenda['cartaod'] := fieldbyname('cartaod').asfloat;
                       tbvenda['cheque'] := fieldbyname('cheque').asfloat;
                       tbvenda['chequepre'] := fieldbyname('chequepre').asfloat;
                       tbvenda['fiado'] := fieldbyname('fiado').asfloat;


                       if tipoempresa = 'O' then begin
                          tbvenda['esf_od_p'] := fieldbyname('esf_od_p').AsString;
                          tbvenda['esf_oe_p'] := fieldbyname('esf_oe_p').AsString;
                          tbvenda['esf_od_l'] := fieldbyname('esf_od_l').AsString;
                          tbvenda['esf_oe_l'] := fieldbyname('esf_oe_l').AsString;
                          tbvenda['cil_od_p'] := fieldbyname('cil_od_p').AsString;
                          tbvenda['cil_oe_p'] := fieldbyname('cil_oe_p').AsString;
                          tbvenda['cil_od_l'] := fieldbyname('cil_od_l').AsString;
                          tbvenda['cil_oe_l'] := fieldbyname('cil_oe_l').AsString;
                          tbvenda['eixo_od_p'] := fieldbyname('eixo_od_p').AsString;
                          tbvenda['eixo_oe_p'] := fieldbyname('eixo_oe_p').AsString;
                          tbvenda['eixo_od_l'] := fieldbyname('eixo_od_l').AsString;
                          tbvenda['eixo_oe_l'] := fieldbyname('eixo_oe_l').AsString;
                          tbvenda['dnp_od_p'] := fieldbyname('dnp_od_p').AsString;
                          tbvenda['dnp_oe_p'] := fieldbyname('dnp_oe_p').AsString;
                          tbvenda['dnp_od_l'] := fieldbyname('dnp_od_l').AsString;
                          tbvenda['dnp_oe_l'] := fieldbyname('dnp_oe_l').AsString;
                          tbvenda['alt_od_p'] := fieldbyname('alt_od_p').AsString;
                          tbvenda['alt_oe_p'] := fieldbyname('alt_oe_p').AsString;
                          tbvenda['alt_od_l'] := fieldbyname('alt_od_l').AsString;
                          tbvenda['alt_oe_l'] := fieldbyname('alt_oe_l').AsString;
                          tbvenda['adicao_od_p'] := fieldbyname('adicao_od_p').AsString;
                          tbvenda['adicao_oe_p'] := fieldbyname('adicao_oe_p').AsString;
                          tbvenda['adicao_od_l'] := fieldbyname('adicao_od_l').AsString;
                          tbvenda['adicao_oe_l'] := fieldbyname('adicao_oe_l').AsString;
                       end;

                       tbvenda.Post;
                    end;
                    next;
             end;
          end;

             close;

             tbvenda.First;
             tot  :=0;
             qtd:=0;

             while not tbvenda.Eof do begin
                   tot := tot + tbvenda.fieldbyname('total').asfloat;
                   qtd := qtd + 1;
                   tbvenda.next;
             end;

             mtbvenda.Lines.Clear;
             mtbvenda.Lines.Add (posicol('TOTAL VENDAS ',  format ('%n',[tot]),15,2));
             mtbvenda.Lines.Add (posicol('QUANT VENDAS ',  floattostr(qtd),15,2));

             if tot >0 then
                mtbvenda.Lines.Add (posicol('MÉDIA  VENDA ', format ('%n',[tot/qtd]),15,2));



         end;


end;

procedure Tfmovimento.compraExecute(Sender: TObject);
var
dt,dtfin:string;
qtd,tot:double;
begin

        dt := formatdatetime('yyyy-mm-dd',strtodate(d1.text));
        dtfin := formatdatetime('yyyy-mm-dd',strtodate(d2.text));


        if codigo <> '' then
           cod := ' and codigo = ' + quotedstr(codigo);

        with tbcompra do begin
             close;
             sql.Clear;
             sql.add('select chave, data, numero, codigo, nome, total, dinheiro, cheque,credito, chequepre, fiado from tbentrada '+
                    '  where data between '+ quotedstr(dt)+ ' and ' + quotedstr(dtfin)+ cod+ sqlempresa(1,1,'')+
                     ' order by data desc');
             Open;

             First;
             tot  :=0;
             qtd:=0;

             while not Eof do begin
                   tot := tot + fieldbyname('total').asfloat;
                   qtd := qtd + 1;
                   next;
             end;

         end;

             mtbcompra.Lines.Clear;
             mtbcompra.Lines.Add (posicol('TOTAL COMPRAS ',  format ('%n',[tot]),15,2));
             mtbcompra.Lines.Add (posicol('QUANT COMPRAS ',  floattostr(qtd),15,2));

             if tot >0 then
                mtbcompra.Lines.Add (posicol('MÉDIA  COMPRAS ',  format ('%n',[tot/qtd]),15,2));


        (tbcompra.FieldByName('total') as tfloatfield).DisplayFormat := '###,##0.00';
        (tbcompra.FieldByName('dinheiro') as tfloatfield).DisplayFormat := '###,##0.00';
        (tbcompra.FieldByName('cheque') as tfloatfield).DisplayFormat := '###,##0.00';
        (tbcompra.FieldByName('chequepre') as tfloatfield).DisplayFormat := '###,##0.00';
        (tbcompra.FieldByName('fiado') as tfloatfield).DisplayFormat := '###,##0.00';
end;

procedure Tfmovimento.pagarExecute(Sender: TObject);
var
contreceb,dt,dtfin,Tipocontad:string;
totdoc:double;
begin
        Tipocontad    := nomelink('tbpagar.codconta','chave', 'descricao','tbconta','Tipoconta');
        contreceb :='';
        dt := formatdatetime('yyyy-mm-dd',strtodate(d1.text));
        dtfin := formatdatetime('yyyy-mm-dd',strtodate(d2.text));

        if codigo <> '' then
           cod := ' and tbpagar.codigo = ' + quotedstr(codigo);


        if rpagar.ItemIndex = 0 then
           contreceb := ' and tbpagar.recebido > 0 '
        else if rpagar.ItemIndex = 1 then
           contreceb := ' and tbpagar.diferenca > 0 '
        else if rpagar.ItemIndex = 2 then
           contreceb := ' and (tbpagar.diferenca > 0 and tbpagar.dtvencimento < now())'
        else if rpagar.ItemIndex = 3 then
           contreceb := '';

        tbpagar.close;
        tbpagar.sql.Clear;


    tbpagar.sql.add( 'select ' +
    ' tbpagar.chave , '+  Tipocontad+
    '  ,tbpagar.documento ,  tbpagar.letra ,  tbpagar.codigo ,  tbfornecedor.nome ,' +
    ' tbpagar.dtemissao ,  tbpagar.dtvencimento ,  tbpagar.dtpagamento ,  '+
    ' tbpagar.vrtitulo , tbpagar.total , tbpagar.movimentopagar, tbpagar.desconto , '+
    ' tbpagar.acrescimo ,'+
    ' tbpagar.recebido ,  tbpagar.diferenca ,  tbpagar.vrdocumento  '+
    '  from tbpagar, tbfornecedor  '+
    '  where tbpagar.dtemissao between '+ quotedstr(dt)+ ' and ' + quotedstr(dtfin)+
    ' and tbpagar.codigo = tbfornecedor.codigo '+ cod+  contreceb+ sqlempresa(1,1,'tbpagar')+
    ' order by dtvencimento desc');

    tbpagar.Open;


  tbpagar.First;
  totdoc := 0;

  while not tbpagar.EOF do begin
    if rpagar.ItemIndex = 0 then
      totdoc := totdoc + tbpagar.FieldByName('recebido').AsFloat
    else if (rpagar.ItemIndex = 1) or (rpagar.ItemIndex = 2) then
      totdoc := totdoc + tbpagar.FieldByName('diferenca').AsFloat
    else
      totdoc := totdoc + tbpagar.FieldByName('vrdocumento').AsFloat;

    tbpagar.Next;
  end;

  mtbpagar.Lines.Clear;
  mtbpagar.Lines.Add('A PAGAR');
  mtbpagar.Lines.Add('Soma R$ ' + format('%n', [totdoc]));


    (tbpagar.FieldByName('vrdocumento') as tfloatfield).DisplayFormat := '###,##0.00';
    (tbpagar.FieldByName('total') as tfloatfield).DisplayFormat := '###,##0.00';

    (tbpagar.FieldByName('recebido') as tfloatfield).DisplayFormat := '###,##0.00';
    (tbpagar.FieldByName('diferenca') as tfloatfield).DisplayFormat := '###,##0.00';


end;

procedure Tfmovimento.BitBtn1Click(Sender: TObject);
begin
        tbvenda.Close;
        tbvendaitem.Close;
        tbvendaservico.Close;
        tbcompra.Close;
        tbcompraitem.Close;
        tbreceber.Close;
        tbpagar.Close;
        tbcomissaov.Close;
        tbcomissaos.Close;

        case pag of
             0:vendaExecute(self);
             1:compraExecute(self);
             2:receberExecute(self);
             3:pagarExecute(self);
             4:begin
                   vfcaixa(-1);
                   pagecontrol1.ActivePageIndex :=0;
               end;    
             5:comissaovExecute(self);
             6:comissaosExecute(self);
         end;

end;

procedure Tfmovimento.RTIPOClick(Sender: TObject);
begin
        receberExecute(self);
end;

procedure Tfmovimento.rpagarClick(Sender: TObject);
begin
        pagarexecute(self);
end;

procedure Tfmovimento.g0TitleClick(Column: TColumn);
begin
     indexar(Column, tbvenda, nil,elocalizar, llocalizar);
end;

procedure Tfmovimento.g1TitleClick(Column: TColumn);
begin
     indexar(Column, nil,tbcompra, elocalizar, llocalizar);
end;

procedure Tfmovimento.g2TitleClick(Column: TColumn);
begin
     indexar(Column, nil,tbreceber, elocalizar, llocalizar);
end;

procedure Tfmovimento.g3TitleClick(Column: TColumn);
begin
     indexar(Column, nil, tbpagar,elocalizar, llocalizar);
end;

procedure Tfmovimento.TabvendaShow(Sender: TObject);
begin
        pag :=0;
end;

procedure Tfmovimento.TabcompraShow(Sender: TObject);
begin
        pag :=1;
end;

procedure Tfmovimento.TabreceberShow(Sender: TObject);
begin
        pag :=2;
end;

procedure Tfmovimento.TabpagarShow(Sender: TObject);
begin
        pag :=3;
end;

procedure Tfmovimento.TabcaixaShow(Sender: TObject);
begin
        pag :=4;
end;

procedure Tfmovimento.TabcomvShow(Sender: TObject);
begin
        pag :=5;
end;

procedure Tfmovimento.TabcomsShow(Sender: TObject);
begin
        pag :=6;
end;

procedure Tfmovimento.TabvendagShow(Sender: TObject);
begin
        pagi :=0;
end;

procedure Tfmovimento.TabvendaitemShow(Sender: TObject);
begin
        pagi :=1;
end;

procedure Tfmovimento.TabvendaservicoShow(Sender: TObject);
begin
        pagi :=2;
end;

procedure Tfmovimento.TabcompraGShow(Sender: TObject);
begin
        pagi :=0;
end;

procedure Tfmovimento.TabcompraitemShow(Sender: TObject);
begin
        pagi :=1;
end;

procedure Tfmovimento.elocalizarChange(Sender: TObject);
begin
        case pag of
             0: loctabela(tbvenda,nil,elocalizar);
             1: loctabela(nil,tbcompra,elocalizar);
             2: loctabela(nil,tbreceber,elocalizar);
             3: loctabela(nil,tbpagar,elocalizar);
             4:; //loctabela(nil,tbcaixa,elocalizar);
             5: loctabela(nil,tbcomissaov,elocalizar);
             6: loctabela(nil,tbcomissaos,elocalizar);
         end;
end;

procedure Tfmovimento.BitBtn2Click(Sender: TObject);
begin

        if (pag = 0) and (pagi<>0) then begin
           case pagi of
             1:impgrade(nil,tbvendaitem,dsvendaitem,g0_1,'vidavi'+ inttostr(pagi),caption,'',rvisualiza.Checked);
             2:impgrade(nil,tbvendaservico,dsservico,g0_2,'vidavi'+ inttostr(pagi),caption,'',rvisualiza.Checked);
             3:impgrade(nil,tbconsumo,dsconsumo,g0_3,'vidavi'+ inttostr(pagi),caption,'',rvisualiza.Checked);             
            end;

        end else if (pag = 1) and (pagi<>0) then
           impgrade(nil,tbcompraitem,dscompraitem,g1_1,'vidaci'+ inttostr(pagi),caption,'',rvisualiza.Checked)


        else
        case pag of
             0:impgrade(tbvenda,nil,dsvenda,g0,'vida'+ inttostr(pag),caption,'',rvisualiza.Checked);
             1:impgrade(nil,tbcompra,dscompra,g1,'vida'+ inttostr(pag),caption,'',rvisualiza.Checked);
             2:impgrade(nil,tbreceber,dsreceber,g2,'vida'+ inttostr(pag),caption,'',rvisualiza.Checked);
             3:impgrade(nil,tbpagar,dspagar,g3,'vida'+ inttostr(pag),caption,'',rvisualiza.Checked);
             4:;//impgrade(nil,tbcaixa,dscaixa,g4,'vida'+ inttostr(pag),caption,'',rvisualiza.Checked);
             5:impgrade(nil,tbcomissaov,dscomissaov,g5,'vida'+ inttostr(pag),caption,'',rvisualiza.Checked);
             6:impgrade(nil,tbcomissaos,dscomissaos,g6,'vida'+ inttostr(pag),caption,'',rvisualiza.Checked);
         end;

end;

procedure Tfmovimento.d1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then
           d2.SetFocus;
end;

procedure Tfmovimento.d2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then
           BitBtn1Click(self);

end;

procedure Tfmovimento.g0_2TitleClick(Column: TColumn);
begin
        indexar(column,nil,tbvendaservico,elocalizar,llocalizar);
end;

procedure Tfmovimento.g1_1TitleClick(Column: TColumn);
begin
        indexar(column,nil,tbcompraitem,elocalizar,llocalizar);
end;

procedure Tfmovimento.g5TitleClick(Column: TColumn);
begin
        indexar(column,nil,tbcomissaov,elocalizar,llocalizar);
end;

procedure Tfmovimento.g6TitleClick(Column: TColumn);
begin
        indexar(column,nil,tbcomissaos,elocalizar,llocalizar);
end;

procedure Tfmovimento.comissaovExecute(Sender: TObject);
var
dt,dtfin,cod,pago:string;
venda, comissao: real;
begin

      dt := formatdatetime('yyyy-mm-dd',strtodate(d1.text));
      dtfin := formatdatetime('yyyy-mm-dd',strtodate(d2.text));

     if RadioGroup1.ItemIndex = 0 then
        pago := ' and pago = "S" '
     else if RadioGroup1.ItemIndex = 1 then
        pago := ' and pago = "N" ';


     if (codigo <> '') and (modulo = 4 ) then
         cod := ' and codigo = ' + quotedstr(codigo);


     if (codigo <> '') and (modulo = 6 ) then   
         cod := ' and nome = ' + quotedstr(codigo);

     tbcomissaov.Close;
     tbcomissaov.SQL.Clear;
     tbcomissaov.SQL.Add('select chave, Numero as Documento, Data, Total, Comissao, VrComissao,  Pago  from tbpedido '+
                        ' where VrComissao >0 and data between '+ quotedstr(dt)+ ' and ' + quotedstr(dtfin)+ cod+ pago +
                        sqlempresa(1,1,''));

     tbcomissaov.open;
     tbcomissaov.First;


        venda := 0;
        comissao := 0;

        while not tbcomissaov.Eof do begin
                  venda := venda + tbcomissaov.fieldbyname('total').AsFloat;
                  comissao := comissao + tbcomissaov.fieldbyname('VrComissao').AsFloat;

             tbcomissaov.Next;
       end;

       pcomissaov.Caption := 'Venda = ' + format('%n',[venda])+ '   -   '+
                             'Comissao = ' + format('%n',[comissao]);

     (tbcomissaov.FieldByName('total')as tfloatfield).DisplayFormat := '###,##0.00';
     (tbcomissaov.FieldByName('VrComissao')as tfloatfield).DisplayFormat := '###,##0.00';
     (tbcomissaov.FieldByName('comissao')as tfloatfield).DisplayFormat := '###,##0.00%';


end;

procedure Tfmovimento.comissaosExecute(Sender: TObject);
var
pago,dt,dtfin:string;
venda, comissao: double;
begin

      dt := formatdatetime('yyyy-mm-dd',strtodate(d1.text));
      dtfin := formatdatetime('yyyy-mm-dd',strtodate(d2.text));

     if (codigo <> '') and (modulo = 4 ) then
         cod := ' and tbpedidoservico.codigocliente = ' + quotedstr(codigo);

     if (codigo <> '') and (modulo = 6 ) then
         cod := ' and tbpedidoservico.mecanico = ' + quotedstr(codigo);


     if RadioGroup2.ItemIndex = 0 then
        pago := ' and tbpedidoservico.pago = "S" '
     else if RadioGroup2.ItemIndex = 1 then
        pago := ' and tbpedidoservico.pago = "N" ';

     tbcomissaos.Close;
     tbcomissaos.SQL.clear;

     tbcomissaos.sql.add( 'select tbpedidoservico.chave, tbcliente.nome,tbpedido.numero as doc,tbpedido.data,'+
                          '  tbpedidoservico.mecanico,tbpedidoservico.descricao,'+

                        '  if(tbpedido.descontoreal is null,0,'+
                	'   tbpedido.descontoreal*100/tbpedido.totalparcial)as desconto,'+

                         '   if(tbpedido.descontoreal is null,'+
                	 '	   tbpedidoservico.vrunit,'+
                	 '	   tbpedidoservico.vrunit- (tbpedidoservico.vrunit*'+
                	 '	   (tbpedido.descontoreal*100/tbpedido.totalparcial)/100)*'+
		         '          tbpedidoservico.qtd) as vrunit,'+

                       '	tbpedidoservico.qtd,  '+

                 ' if(tbpedido.descontoreal is null,'+
                  '   tbpedidoservico.vrunit*tbpedidoservico.qtd,'+
                  '   tbpedidoservico.vrunit- (tbpedidoservico.vrunit*'+
                  '  (tbpedido.descontoreal*100/tbpedido.totalparcial)/100)*'+
                  '   tbpedidoservico.qtd) as total,'+


                  ' tbpedidoservico.comissao,'+

               ' if(tbpedido.descontoreal is null,(tbpedidoservico.vrunit*'+
               '       tbpedidoservico.qtd)* tbpedidoservico.comissao/100,'+
               '      (tbpedidoservico.vrunit- (tbpedidoservico.vrunit*'+
               '      (tbpedido.descontoreal*100/tbpedido.totalparcial)/100) *'+
               '       tbpedidoservico.qtd)* tbpedidoservico.comissao/100)as vrcomissao '+

                        ' from tbpedidoservico, tbpedido, tbcliente '+
                        ' where tbpedido.codigo = tbcliente.codigo and '+
                        ' tbpedido.chave =tbpedidoservico.link '+
                        ' and calcular = "S"  ' +
                        ' and tbpedido.data between '+ quotedstr(dt)+ ' and ' + quotedstr(dtfin)+ cod+
                        pago+sqlempresa(1,1,'tbpedido'));


                        
     tbcomissaos.open;
     tbcomissaos.First;


        venda := 0;
        comissao := 0;

        while not tbcomissaos.Eof do begin
                  venda := venda + tbcomissaos.fieldbyname('total').AsFloat;
                  comissao := comissao + tbcomissaos.fieldbyname('vrcomissao').AsFloat;

             tbcomissaos.Next;
       end;

       pcomissaos.Caption := 'Tot Serviço = ' + format('%n',[venda])+ '   -   '+
                             'Tot Comissão = ' + format('%n',[comissao]);

     (tbcomissaos.FieldByName('vrunit')as tfloatfield).DisplayFormat := '###,##0.00';
     (tbcomissaos.FieldByName('total')as tfloatfield).DisplayFormat := '###,##0.00';
     (tbcomissaos.FieldByName('vrcomissao')as tfloatfield).DisplayFormat := '###,##0.00';
     (tbcomissaos.FieldByName('comissao')as tfloatfield).DisplayFormat := '###,##0.00%';

end;

procedure Tfmovimento.pagecontrol1Change(Sender: TObject);
begin
        case pag of
             0: if tbvenda.Active = false then vendaExecute(self);
             1: if tbcompra.Active = false then compraExecute(self);
             2: if tbreceber.Active = false then receberExecute(self);
             3: if tbpagar.Active = false then pagarExecute(self);
             4: begin vfcaixa(-1);
                      pagecontrol1.ActivePageIndex :=0;
                end;
             5: if tbcomissaov.Active = false then comissaovExecute(self);
             6: if tbcomissaos.Active = false then comissaosExecute(self);
         end;

         if pag = 0 then Tabvendag.Show;
         if pag = 1 then tabcomprag.Show;         

end;

procedure Tfmovimento.RadioGroup1Click(Sender: TObject);
begin
        comissaovExecute(self);
end;

procedure Tfmovimento.RadioGroup2Click(Sender: TObject);
begin
        comissaosExecute(self);
end;

procedure Tfmovimento.TabvendacShow(Sender: TObject);
begin
        pagi :=3;
end;

procedure Tfmovimento.g0_1TitleClick(Column: TColumn);
begin
        indexar(column,nil,tbvendaitem,elocalizar,llocalizar);
end;

procedure Tfmovimento.g0_3TitleClick(Column: TColumn);
begin
        indexar(column,nil,tbconsumo,elocalizar,llocalizar);
end;

end.
