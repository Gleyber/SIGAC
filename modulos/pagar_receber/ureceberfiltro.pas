unit ureceberfiltro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,  Buttons, ExtCtrls,  DBClient,
  DB, Provider, Grids, DBGrids, ComCtrls, DBCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfreceberfiltro = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label25: TLabel;
    Label11: TLabel;
    rdata: TRadioGroup;
    RTIPO: TRadioGroup;
    Label17: TLabel;
    MaskEdit1: TMaskEdit;
    Label24: TLabel;
    MaskEdit2: TMaskEdit;
    euf: TComboBox;
    SpeedButton1: TSpeedButton;
    bfiltro: TRadioGroup;
    Label3: TLabel;
    Label4: TLabel;
    emunicipio: TComboBox;
    ebairro: TComboBox;
    evendedor: TComboBox;
    Label5: TLabel;
    etipoconta: TDBLookupComboBox;
    Label6: TLabel;
    econtaposicao: TDBLookupComboBox;
    dscontaem: TDataSource;
    pcontaem: TDataSetProvider;
    tbcontaem: TClientDataSet;
    tbconta: TClientDataSet;
    pconta: TDataSetProvider;
    dsconta: TDataSource;
    scontaem: TZQuery;
    sconta: TZQuery;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure vr1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure rdataClick(Sender: TObject);
    procedure RTIPOClick(Sender: TObject);
    procedure bfiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
  codigo:string;
    { Public declarations }
  end;

var
  freceberfiltro: Tfreceberfiltro;

implementation

uses udm,funcoes,   ureceberlocaliza;

{$R *.dfm}

procedure Tfreceberfiltro.FormCreate(Sender: TObject);
begin
        MaskEdit1.Text := datetostr(now);
        MaskEdit2.Text := datetostr(now+30);
        tbcontaem.Open;
        tbconta.Open;

        with fdm.query1 do begin
             close;
              sql.clear;
              sql.add(  'select distinct vendedor as nome from tbreceber '+
                            ' where vendedor is not null order by vendedor');
             open;

             while not eof do begin
                   evendedor.Items.Add(fieldbyname('nome').AsString);
                 next;
             end;


             close;
              sql.clear;
              sql.add(  'select distinct tbcliente.bairro as nome from tbcliente, tbreceber '+
                            ' where tbcliente.codigo = tbreceber.codigo '+
                            ' and tbcliente.bairro is not null order by tbcliente.bairro');
             open;

             while not eof do begin
                   ebairro.Items.Add(fieldbyname('nome').AsString);
                 next;
             end;


             close;
              sql.clear;
              sql.add(  'select distinct tbcliente.municipio as nome from tbcliente, tbreceber '+
                            ' where tbcliente.codigo = tbreceber.codigo '+
                            ' and tbcliente.municipio is not null order by tbcliente.municipio');
             open;

             while not eof do begin
                   emunicipio.Items.Add(fieldbyname('nome').AsString);
                 next;
             end;

            close;
        end;

end;

procedure Tfreceberfiltro.BitBtn1Click(Sender: TObject);
var
contaposicao,tipoconta, data, contreceb,tipodata,cidade,
  uf,  dtini,dtfin,filtro,cliente,bairro,vendedor :string;
begin


         if rdata.ItemIndex = 2 then RTIPO.ItemIndex := 0;

          if (maskedit1.Text <> '  /  /    ') and (maskedit2.Text <> '  /  /    ') then
          begin
            dtini := quotedstr(formatdatetime('yyyy/mm/dd', strtodate(maskedit1.Text)));
            dtfin := quotedstr(formatdatetime('yyyy/mm/dd', strtodate(maskedit2.Text)));


  if bfiltro.ItemIndex = 0 then
     filtro := filtro  + ' and tbreceber.ch="S" '
  else if bfiltro.ItemIndex = 1 then
     filtro := filtro  + ' and tbreceber.ch="D" '
  else if bfiltro.ItemIndex = 2 then
     filtro := filtro  + ' and tbreceber.ch="P" '
  else if bfiltro.ItemIndex = 3 then
     filtro := filtro  + ' and tbreceber.ch="C" '
  else if bfiltro.ItemIndex = 4 then
     filtro := filtro  + ' and tbreceber.ch is null';

            if rdata.ItemIndex = 0 then
               tipodata :='tbreceber.dtemissao'
            else if rdata.ItemIndex = 1 then
               tipodata :='tbreceber.dtvencimento'
            else if rdata.ItemIndex = 2 then
               tipodata :='tbreceber.dtpagamento';

             data := ' and '+tipodata+' between  ' + quotedstr(dtini) + ' and ' + Quotedstr(dtfin);


        if etipoconta.Text = '' then
        else tipoconta := ' and tbreceber.tipoconta = ' + quotedstr(etipoconta.Text);

        if econtaposicao.Text = '' then
        else contaposicao := ' and tbreceber.posicaoconta = ' + quotedstr(econtaposicao.Text);

        if rtipo.ItemIndex = 0 then
           contreceb := ' and tbreceber.recebido > 0 '
        else if rtipo.ItemIndex = 1 then
          contreceb := ' and tbreceber.diferenca > 0 '
         else if rtipo.ItemIndex = 2 then
          contreceb := ' and tbreceber.diferenca and tbreceber.dtvencimento < now()'
         else if rtipo.ItemIndex = 3 then
          contreceb := '';


         if evendedor.Text <> '' then
            vendedor := ' and tbreceber.vendedor = '+ quotedstr(evendedor.Text);

         if ebairro.Text <> '' then
            bairro := ' and tbcliente.bairro = '+ quotedstr(ebairro.Text);

         if emunicipio.Text <> '' then
            cidade := ' and tbcliente.municipio = '+ quotedstr(emunicipio.Text);

         if euf.Text <> '' then
            uf := ' and tbcliente.uf = '+ quotedstr(euf.Text);

         if codigo<> '' then
            cliente := ' and tbcliente.codigo = '+ quotedstr(codigo);

        freceberlocaliza.sqlcli.sql.clear;
        freceberlocaliza.sqlcli.sql.Add(freceberlocaliza.script +
          data+
          tipoconta+
          contaposicao+
          contreceb+
          cidade +
          uf+
          filtro+
          cliente+
          vendedor+
          bairro);

       // showmessage(fpagarlocaliza.sqlcli.CommandText);
        freceberlocaliza.tabela.close;
        freceberlocaliza.tabela.open;
        freceberlocaliza.formatarExecute(self);
        tbconta.Refresh;
        tbcontaem.refresh;
        freceberlocaliza.totalExecute(self);

        end else showmessage('Digite o período!!!');

end;

procedure Tfreceberfiltro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13)  then
    Perform(wm_nextdlgctl, 0,0);
  if (key = 27)   then
    Perform(wm_nextdlgctl, 1,0);

end;

procedure Tfreceberfiltro.vr1KeyPress(Sender: TObject;
  var Key: Char);
begin

       // if key = ',' then key := '.';
        if not(key in['0'..'9',#8,',']) then abort;
end;

procedure Tfreceberfiltro.BitBtn2Click(Sender: TObject);
begin
        close;
end;

procedure Tfreceberfiltro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        tbcontaem.close;
        tbconta.close;
        freceberfiltro := nil;
        release;
end;

procedure Tfreceberfiltro.FormDeactivate(Sender: TObject);
begin
        height := 50;
        top :=511;
end;

procedure Tfreceberfiltro.SpeedButton1Click(Sender: TObject);
var
valor,st,campo:string;
begin

              if rdata.ItemIndex = 2 then RTIPO.ItemIndex := 0;

              codigo := '';


              if inputquery('Localiza Cliente','Digite o código, ou o CNPJ/CPF(só números), ou as iniciais do nome do cliente:',st) then else abort;

              campo :='nome';
              if StrIsfloat(st)  then
                 if length(st) > 9 then begin
                    campo :='cnpj';
                    st :=  formatacpf_cnpj(st);
                 end else
                    campo :='codigo';

              listagem(campo,st,'',4,0);
              if fdm.sg.Active then
                 codigo := fdm.sg.fieldbyname('codigo').AsString
              else
                 codigo :='';
                 fechatg;
              BitBtn1Click(self);
              codigo := '';
end;

procedure Tfreceberfiltro.rdataClick(Sender: TObject);
begin
        if rdata.ItemIndex = 2 then RTIPO.ItemIndex := 0;
        BitBtn1Click(self);
end;

procedure Tfreceberfiltro.RTIPOClick(Sender: TObject);
begin
        BitBtn1Click(self);
end;

procedure Tfreceberfiltro.bfiltroClick(Sender: TObject);
begin
        BitBtn1Click(self);    
end;

end.
