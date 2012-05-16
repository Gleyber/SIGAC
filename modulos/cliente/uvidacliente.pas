unit uvidacliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, FMTBcd, StdCtrls, ExtCtrls, DBClient, Provider, DB,
  SqlExpr, Grids, DBGrids, ActnList, Buttons, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  Tfvidacliente = class(TForm)
    dspedidoitem: TDataSource;
    ppedidoitem: TDataSetProvider;
    venda: TClientDataSet;
    provedor: TDataSetProvider;
    ds: TDataSource;
    vendaitem: TClientDataSet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    dbgrid1: TDBGrid;
    TabSheet4: TTabSheet;
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    m1: TMemo;
    m3: TMemo;
    preceber: TDataSetProvider;
    tbreceber: TClientDataSet;
    dsreceber: TDataSource;
    ActionList1: TActionList;
    contas: TAction;
    gridbalcao: TDBGrid;
    TabSheet5: TTabSheet;
    DBGrid3: TDBGrid;
    dsservico: TDataSource;
    pservico: TDataSetProvider;
    tbservico: TClientDataSet;
    Panel1: TPanel;
    totalizar: TAction;
    Panel3: TPanel;
    RTIPO: TRadioGroup;
    bfiltro: TRadioGroup;
    m2: TMemo;
    BitBtn1: TBitBtn;
    rtpvenda: TRadioGroup;
    vendas: TAction;
    sql: TZQuery;
    spedidoitem: TZQuery;
    sservico: TZQuery;
    sreceber: TZQuery;
    rcp: TCheckBox;
    TabSheet6: TTabSheet;
    RadioGroup1: TRadioGroup;
    gridmesas: TDBGrid;
    Panel4: TPanel;
    TabSheet7: TTabSheet;
    RadioGroup2: TRadioGroup;
    DBGrid4: TDBGrid;
    Panel5: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure contasExecute(Sender: TObject);
    procedure RTIPOClick(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure totalizarExecute(Sender: TObject);
    procedure bfiltroClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbgrid1TitleClick(Column: TColumn);
    procedure gridbalcaoTitleClick(Column: TColumn);
    procedure vendasExecute(Sender: TObject);
    procedure rtpvendaClick(Sender: TObject);
  private
  ntb,nome:string;
    { Private declarations }
  public
  codigo:string;
    { Public declarations }
  end;

var
  fvidacliente: Tfvidacliente;

implementation

uses udm, ucadastrop,funcoes, uimp;

{$R *.dfm}

procedure Tfvidacliente.FormShow(Sender: TObject);

begin
        tabsheet3.Show;
        tabsheet1.Show;

             fdm.tbconfig.open;
             if fdm.tbconfig['OS']='N' then tabsheet5.Destroy;
             fdm.tbconfig.close;

        vendasExecute(SELF);

end;

procedure Tfvidacliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        venda.Close;
        vendaitem.Close;

end;

procedure Tfvidacliente.contasExecute(Sender: TObject);
var
mora:real;
contreceb:string;
begin

  if rtipo.ItemIndex = 0 then
    contreceb := ' and recebido > 0 '
  else if rtipo.ItemIndex = 1 then
    contreceb := ' and diferenca > 0 '
  else if rtipo.ItemIndex = 2 then
    contreceb := ' and diferenca > 0 and dtvencimento < now()'
  else if rtipo.ItemIndex = 3 then
    contreceb := '';


   if bfiltro.ItemIndex = 0 then
     contreceb := contreceb  + ' and tbreceber.ch="S" '
  else if bfiltro.ItemIndex = 1 then
     contreceb := contreceb  + ' and tbreceber.ch="D" '
  else if bfiltro.ItemIndex = 2 then
     contreceb := contreceb  + ' and tbreceber.ch="P" '
  else if bfiltro.ItemIndex = 3 then
     contreceb := contreceb  + ' and tbreceber.ch="C" '
  else if bfiltro.ItemIndex = 4 then
     contreceb := contreceb  + ' and tbreceber.ch is null';


    fdm.tbconfig.Open;
    mora := fdm.tbconfig.FieldByName('juro').AsFloat;
    fdm.tbconfig.Close;

    sreceber.sql.Clear;
    sreceber.sql.add('select tbreceber.chave, ' +

            ' if((TO_DAYS(now()) > TO_DAYS(tbreceber.dtvencimento)),' +
            ' (To_days(now())- To_days(tbreceber.dtvencimento)) * (' + realdblstr(mora) +
            '* tbreceber.diferenca/100) ,' + ' null) as juro,' +

            ' if((TO_DAYS(now()) > TO_DAYS(tbreceber.dtvencimento)),' +
            ' (To_days(now())- To_days(tbreceber.dtvencimento)) * (' + realdblstr(mora) +
            '* tbreceber.diferenca/100) + tbreceber.vrdocumento ,' +
            ' tbreceber.diferenca) as totalgeral, ' +

          'tbreceber.codigo,'+
          'tbreceber.chave,'+
          'tbreceber.tipoconta,'+
          'tbreceber.documento,'+
          'tbreceber.letra,'+
          'tbreceber.dtemissao,'+
          'tbreceber.dtvencimento,'+
          'tbreceber.dtpagamento, '+
          'tbreceber.vrdocumento,'+
          'tbreceber.acrescimo,'+
          'tbreceber.desconto,'+
          'tbreceber.total,'+
          'tbreceber.recebido,'+
          'tbreceber.diferenca'+
          ' from tbreceber'+
          ' where tbreceber.codigo = '+quotedstr(codigo)+
          contreceb+
          ' order by tbreceber.dtvencimento desc');

    tbreceber.close;
    tbreceber.Open;

    (tbreceber.FieldByName('vrdocumento') as tfloatfield).DisplayFormat := '###,##0.00';
    (tbreceber.FieldByName('total') as tfloatfield).DisplayFormat := '###,##0.00';

    (tbreceber.FieldByName('recebido') as tfloatfield).DisplayFormat := '###,##0.00';
    (tbreceber.FieldByName('diferenca') as tfloatfield).DisplayFormat := '###,##0.00';

    (tbreceber.FieldByName('juro') as tfloatfield).DisplayFormat := '###,##0.00';
    (tbreceber.FieldByName('totalgeral') as tfloatfield).DisplayFormat := '###,##0.00';
    totalizarExecute(self);

end;

procedure Tfvidacliente.RTIPOClick(Sender: TObject);
begin
        contasExecute(self);
end;

procedure Tfvidacliente.PageControl2Change(Sender: TObject);
var
mp:string;
begin
        if pagecontrol2.ActivePageIndex = 1 then begin

//           if venda['tipoestoque'] = '3' then
  //            mp := 'MP';

            spedidoitem.SQL.Clear;
            spedidoitem.sql.add('select '+ ntb+'item.chave, '+

                       'tbproduto'+mp+'.descricao, '+
                       ntb+'item.codigo, '+
                       ntb+'item.qtd, ' +
                       ntb+'item.vrunit, '+
                       ntb+'item.descontoreal, '+

               'if ('+ntb+'item.descontoreal is not null, '+
                    ntb+'item.vrunit - '+ntb+'item.descontoreal,'+
                    ntb+'item.vrunit) as totalparcial, '+

               'if ('+ntb+'item.descontoreal is not null, '+
                    '('+ntb+'item.vrunit - '+ntb+'item.descontoreal) * '+
                    ntb+'item.qtd, '+ntb+'item.vrunit* '+ntb+'item.qtd) as total '+

               ' from tbproduto'+mp+', '+ntb+'item '+
               ' where '+ntb+'item.codigo = tbproduto'+mp+'.codigo and '+
               ntb+'item.link= '+quotedstr(venda.fieldbyname('chave').asstring));
               vendaitem.Close;
               vendaitem.open;
               //showmessage(spedidoitem.commandtext);
        end

        else if (pagecontrol2.ActivePageIndex = 2) and (ntb='tbpedido') then begin


            sservico.sql.add('select * from  '+ ntb+'.servico '+
                                  ' where link= '+quotedstr(venda.fieldbyname('chave').asstring));
               tbservico.Close;
               tbservico.open;
               //showmessage(spedidoitem.commandtext);
        end;



end;

procedure Tfvidacliente.PageControl1Change(Sender: TObject);
begin
        if  PageControl1.ActivePageIndex = 1 then
            contasExecute(self);
end;

procedure Tfvidacliente.totalizarExecute(Sender: TObject);
var
  totdoc, totjuro: double;
begin

  tbreceber.DisableControls;
  tbreceber.First;
  totdoc := 0;
  totjuro := 0;

  while not tbreceber.EOF do
  begin
    if rtipo.ItemIndex = 0 then
      totdoc := totdoc + tbreceber.FieldByName('recebido').AsFloat
    else if (rtipo.ItemIndex = 1) or (rtipo.ItemIndex = 2) then
      totdoc := totdoc + tbreceber.FieldByName('diferenca').AsFloat
    else
      totdoc := totdoc + tbreceber.FieldByName('total').AsFloat;

    totjuro := totjuro + tbreceber.FieldByName('juro').AsFloat;
    tbreceber.Next;
  end;

  panel1.Caption := 'Soma R$ ' + format('%n', [totdoc]) +
                    '       Juros R$ ' + format('%n', [totjuro]) +
                    '       Total C/ Juros R$ ' + format('%n', [totjuro+totdoc]);

  tbreceber.EnableControls;

end;

procedure Tfvidacliente.bfiltroClick(Sender: TObject);
begin
        contasExecute(self);
end;

procedure Tfvidacliente.BitBtn1Click(Sender: TObject);
begin

      if pagecontrol1.ActivePageIndex = 0 then begin
         if pagecontrol2.ActivePageIndex = 0 then
            impgrade(venda,nil,ds,dbgrid1,'vvendas', nome + ' - Vendas ' + rtpvenda.Items[rtpvenda.itemindex] ,'',rcp.Checked)
         else if pagecontrol2.ActivePageIndex = 1 then
            impgrade(vendaitem,nil,dspedidoitem,DBGrid2,'vvendaitem', nome + ' - Vendas ' + rtpvenda.Items[rtpvenda.itemindex] ,'',rcp.Checked)
         else if pagecontrol2.ActivePageIndex = 2 then
            impgrade(tbservico,nil,dsservico,DBGrid3,'vvendaservico', nome + ' - Vendas ' + rtpvenda.Items[rtpvenda.itemindex] ,'',rcp.Checked);

      end else
            impgrade(tbreceber,nil,dsreceber,gridbalcao,'vcontas', nome + ' - A Receber ' ,'',rcp.Checked);

end;

procedure Tfvidacliente.dbgrid1TitleClick(Column: TColumn);
begin
        venda.IndexFieldNames := column.FieldName;
end;

procedure Tfvidacliente.gridbalcaoTitleClick(Column: TColumn);
begin
        tbreceber.IndexFieldNames := column.FieldName;
end;

procedure Tfvidacliente.vendasExecute(Sender: TObject);
var
total:double;
dt1,dt2:tdate;
qtd,dias:integer;
dtini:string;
scr:string;
begin

        case rtpvenda.ItemIndex of
             0: ntb:='tbpedido';
             1:begin
                  ntb:='venda';
                  scr := ' and '+ntb+'.modo = "O"';
               end;

             2:begin
                  ntb:='venda';
                  scr := ' and '+ntb+'.modo <> "O"';
               end;
        end;

        sql.sql.Clear;
        sql.sql.add( 'select tbcliente.nome, '+
                     ' tbcliente.endereco, tbcliente.numero, tbcliente.complemento,'+
                     ' tbcliente.bairro, tbcliente.municipio, tbcliente.uf,  tbcliente.ddd,  '+
                     ' tbcliente.fone,  tbcliente.email, tbcliente.limitecredito,'+
                     ' tbcliente.vendaaprazo,tbcliente.vendacheque,tbcliente.vendacartao, '+
                     ntb+'.* from '+ntb+', tbcliente where '+
                           ' tbcliente.codigo='+ntb+'.codigo '+
                           ' and '+ntb+'.codigo = '+ quotedstr(codigo)+ scr+
                           ' order by '+ntb+'.data desc');
        venda.close;
        venda.Open;
        nome := venda.fieldbyname('nome').asstring;

        dt2 := venda.fieldbyname('data').AsDateTime;
        venda.Last;
        dt1 := venda.fieldbyname('data').AsDateTime;

        venda.First;
        qtd :=0;
        total :=0;

        venda.DisableControls;
        while not venda.Eof do begin
              total := total + venda.fieldbyname('total').asfloat;
              inc(qtd);
              venda.Next;
        end;

        venda.First;
        venda.EnableControls;

        with venda do begin
             m1.Lines.Clear;
             m1.Lines.Add ('Código/Nome: '+ fieldbyname('codigo').AsString + ' '+
                            fieldbyname('nome').AsString);

             m1.Lines.Add ('End.: '+ fieldbyname('endereco').AsString + ' '+
                             fieldbyname('numero').AsString + ' '+
                             fieldbyname('complemento').AsString);

             m1.Lines.Add ('Bairro/Cid.: '+ fieldbyname('bairro').AsString + ' - ' +
                             fieldbyname('municipio').AsString + ' - '+
                             fieldbyname('uf').AsString);
             m1.Lines.Add ('Fone: ('+ fieldbyname('ddd').AsString + ') ' +
                             fieldbyname('fone').AsString + '   -   E-Mail:'+
                             fieldbyname('email').AsString);

             m2.Lines.Add ('Compra Cheque '+ fieldbyname('vendacheque').AsString);
             m2.Lines.Add ('Compra Cartão '+ fieldbyname('vendacartao').AsString);
             m2.Lines.Add ('Compra A Prazo '+ fieldbyname('vendaaprazo').AsString);
             m2.Lines.Add ('Limite: '+ format('%n',[fieldbyname('limitecredito').Asfloat]));

             m2.Lines.Add ('Tot Compras:'+ format('%n',[total]));
             m3.Lines.Add ('Qtd Compras:'+ inttostr(qtd));
             if total>0 then
                m3.Lines.Add ('Média:'+ format('%n',[total/qtd]))
             else
                m3.Lines.Add ('Média: 0');

            m3.Lines.Add ('1ª Compra:'+ datetostr(dt1));
            m3.Lines.Add ('Ult Compra:'+ datetostr(dt2));

            dias := trunc( dt1 - dt2);
            if dias >= 30 then begin
               m3.Lines.Add(compstr('MÉD/30d: ' ,floattostr(total/dias*30)));
               dtini := formatdatetime('yyyy/mm/dd', date-30);

               fdm.Query1.close;
               fdm.Query1.sql.clear;
               fdm.Query1.sql.add( 'select sum(total) as total from '+ntb+' where codigo = '+
                               quotedstr(codigo)+' and data between ' + quotedstr(dtini) + ' and now() ');
               fdm.Query1.open;
               m3.Lines.Add(compstr('ÚLT 30 DIAS: ' , format('%n',[fdm.Query1.fieldbyname('total').asfloat])));
            end;   

       end;
end;

procedure Tfvidacliente.rtpvendaClick(Sender: TObject);
begin
        vendasExecute(self);        
end;

end.


