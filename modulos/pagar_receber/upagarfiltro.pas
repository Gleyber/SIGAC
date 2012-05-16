unit upagarfiltro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask,  Buttons, ExtCtrls,  DBClient,
  DB, Provider, Grids, DBGrids, ComCtrls, DBCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfpagarfiltro = class(TForm)
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
    dsdespesa: TDataSource;
    pdespesa: TDataSetProvider;
    tbdespesa: TClientDataSet;
    tbconta: TClientDataSet;
    pconta: TDataSetProvider;
    dsconta: TDataSource;
    etipoconta: TDBLookupComboBox;
    etipodespesa: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    dsfornecedor: TDataSource;
    pfornecedor: TDataSetProvider;
    tbfornecedor: TClientDataSet;
    ecidade: TDBLookupComboBox;
    EUF: TComboBox;
    SpeedButton1: TSpeedButton;
    rcheque: TRadioGroup;
    sfornecedor: TZQuery;
    sdespesa: TZQuery;
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
    procedure rchequeClick(Sender: TObject);
  private
    { Private declarations }
  public
  codigo:string;
    { Public declarations }
  end;

var
  fpagarfiltro: Tfpagarfiltro;

implementation

uses udm,funcoes,  upagarlocaliza;

{$R *.dfm}

procedure Tfpagarfiltro.FormCreate(Sender: TObject);
begin
        tbconta.Open;
        tbdespesa.Open;
        tbfornecedor.Open;
        MaskEdit1.Text := datetostr(now);
        MaskEdit2.Text := datetostr(now+30);
end;

procedure Tfpagarfiltro.BitBtn1Click(Sender: TObject);
var
tipodespesa,tipoconta, data, contreceb,tipodata,cidade,
  uf,  dtini,dtfin,cheque,credor :string;
begin


         if rdata.ItemIndex = 2 then RTIPO.ItemIndex := 0;

          if (maskedit1.Text <> '  /  /    ') and (maskedit2.Text <> '  /  /    ') then
          begin
            dtini := quotedstr(formatdatetime('yyyy/mm/dd', strtodate(maskedit1.Text)));
            dtfin := quotedstr(formatdatetime('yyyy/mm/dd', strtodate(maskedit2.Text)));

            if rcheque.ItemIndex = 0 then
               cheque :=' and tbpagar.ch = "S" '
            else if rcheque.ItemIndex = 1 then
               cheque :=' and tbpagar.ch is null '
            else cheque :='';

            if rdata.ItemIndex = 0 then
               tipodata :='tbpagar.dtemissao'
            else if rdata.ItemIndex = 1 then
               tipodata :='tbpagar.dtvencimento'
            else if rdata.ItemIndex = 2 then
               tipodata :='tbpagar.dtpagamento';

             data := ' and '+tipodata+' between  ' + quotedstr(dtini) + ' and ' + Quotedstr(dtfin);


        if etipoconta.Text = '' then
        else tipoconta := ' and tbconta.codigo = ' + quotedstr(etipoconta.Text);

        if etipodespesa.Text = '' then
        else tipodespesa := ' and tbdespesa.codigo = ' + quotedstr(etipodespesa.Text);

        if rtipo.ItemIndex = 0 then begin
           contreceb := ' and tbpagar.recebido > 0 ';
           fpagarlocaliza.nomecampo := 'recebido';
        end else if rtipo.ItemIndex = 1 then begin
          contreceb := ' and tbpagar.diferenca > 0 ' ;
          fpagarlocaliza.nomecampo := 'diferenca';

        end else if rtipo.ItemIndex = 2 then begin
          contreceb := ' and tbpagar.diferenca and tbpagar.dtvencimento < now()';
          fpagarlocaliza.nomecampo := 'diferenca';
        end else if rtipo.ItemIndex = 3 then begin
          contreceb := '';
          fpagarlocaliza.nomecampo := 'diferenca';
        end;


         if ecidade.Text <> '' then
            cidade := ' and tbfornecedor.municipio = '+ quotedstr(ecidade.Text);


         if euf.Text <> '' then
            uf := ' and tbfornecedor.uf = '+ quotedstr(euf.Text);

         if codigo<> '' then
            credor := ' and tbfornecedor.codigo = '+ quotedstr(codigo);

        fpagarlocaliza.sqlcli.SQL.Clear;
        fpagarlocaliza.sqlcli.sql.Add(fpagarlocaliza.script +
          data+
          tipoconta+
          tipodespesa+
          contreceb+
          cidade +
          uf+
          cheque+
          credor);

       // showmessage(fpagarlocaliza.sqlcli.CommandText);
        fpagarlocaliza.tabela.refresh;
        tbconta.Refresh;
        tbdespesa.refresh;
        fpagarlocaliza.totalExecute(self);

        end else showmessage('Digite o período!!!');

end;

procedure Tfpagarfiltro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13)  then
    Perform(wm_nextdlgctl, 0,0);
  if (key = 27)   then
    Perform(wm_nextdlgctl, 1,0);

end;

procedure Tfpagarfiltro.vr1KeyPress(Sender: TObject;
  var Key: Char);
begin

       // if key = ',' then key := '.';
        if not(key in['0'..'9',#8,',']) then abort;
end;

procedure Tfpagarfiltro.BitBtn2Click(Sender: TObject);
begin
        close;
end;

procedure Tfpagarfiltro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        tbconta.close;
        tbdespesa.close;
        tbfornecedor.close;        
        fpagarfiltro := nil;
        release;
end;

procedure Tfpagarfiltro.FormDeactivate(Sender: TObject);
begin
        height := 50;
        top :=511;
end;

procedure Tfpagarfiltro.SpeedButton1Click(Sender: TObject);
var
valor,st,campo:string;
begin

              if rdata.ItemIndex = 2 then RTIPO.ItemIndex := 0;
              
              codigo := '';


              if inputquery('Localiza Credor','Digite o código, ou o CNPJ/CPF(só números), ou as iniciais do nome do credor:',st) then else abort;

              campo :='nome';
              if StrIsfloat(st)  then
                 if length(st) > 9 then begin
                    campo :='cnpj';
                    st :=  formatacpf_cnpj(st);
                 end else
                    campo :='codigo';

              listagem(campo,st,'',7,0);

              if fdm.sg.Active then
                 codigo := fdm.sg.fieldbyname('codigo').AsString;
              fechatg;


              BitBtn1Click(self);
              codigo := '';



end;

procedure Tfpagarfiltro.rdataClick(Sender: TObject);
begin
        if rdata.ItemIndex = 2 then RTIPO.ItemIndex := 0;
        BitBtn1Click(self);        
end;

procedure Tfpagarfiltro.RTIPOClick(Sender: TObject);
begin
        BitBtn1Click(self);
end;

procedure Tfpagarfiltro.rchequeClick(Sender: TObject);
begin
        BitBtn1Click(self);    
end;

end.
