unit uetprod;

interface

uses
  inifiles, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, RLReport, Buttons, ExtCtrls, Grids, DBGrids,
  RLBarcode, StdCtrls, ActnList, Spin,RLDraftFilter, ComCtrls, DBCtrls,
  Mask, dbcgrids, jpeg, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfetqprod = class(TForm)
    ds: TDataSource;
    ActionList1: TActionList;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label3: TLabel;
    grade: TDBGrid;
    tabela: TClientDataSet;
    tabelacodigo: TStringField;
    tabelacodigofornecedor: TStringField;
    tabelafabricante: TStringField;
    tabelacodigooriginal: TStringField;
    tabelacodigobarras: TStringField;
    tabeladescricao: TStringField;
    Label4: TLabel;
    Bevel7: TBevel;
    Bevel6: TBevel;
    Label17: TLabel;
    Label18: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    qetiqueta: TRLReport;
    qcoluna: TRLDetailGrid;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    tbg: TClientDataSet;
    dsg: TDataSource;
    tbgaltura: TFloatField;
    tbglargura: TFloatField;
    tbgesquerda: TFloatField;
    tbgdireita: TFloatField;
    tbgtopo: TFloatField;
    tbgrodape: TFloatField;
    tbgalturaE: TFloatField;
    tbgqtdcolona: TIntegerField;
    tbgespacocoluna: TFloatField;
    tbgalturabarra: TFloatField;
    tbghbarra: TFloatField;
    tbgvbarra: TFloatField;
    tbgtamanhorodape: TFloatField;
    tbghrodape: TFloatField;
    tbgvrodape: TFloatField;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText1: TDBText;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    tbgnome: TStringField;
    btnnovo: TBitBtn;
    btndeletar: TBitBtn;
    config: TAction;
    tbgtextorodape: TMemoField;
    etextorodape: TDBMemo;
    btnimp: TBitBtn;
    gravar: TAction;
    tbgimpbarra: TBooleanField;
    tbgcodbar: TStringField;
    combo: TDBComboBox;
    rtipocod: TDBRadioGroup;
    tbgtipocod: TStringField;
    efonteempresa: TDBEdit;
    evempresa: TDBEdit;
    ehempresa: TDBEdit;
    etamanhoempresa: TDBEdit;
    efonterodape: TDBEdit;
    evrodape: TDBEdit;
    ehrodape: TDBEdit;
    etamanhorodape: TDBEdit;
    evbarra: TDBEdit;
    ehbarra: TDBEdit;
    ealturabarra: TDBEdit;
    eespacocoluna: TDBEdit;
    eqtdcoluna: TDBEdit;
    ealturaE: TDBEdit;
    erodape: TDBEdit;
    etopo: TDBEdit;
    edireita: TDBEdit;
    eesquerda: TDBEdit;
    elargura: TDBEdit;
    ealtura: TDBEdit;
    Rimpbarra: TDBCheckBox;
    rimprodape: TDBCheckBox;
    rnegritorodape: TDBCheckBox;
    rnegritoempresa: TDBCheckBox;
    rimpempresa: TDBCheckBox;
    tbgimpempresa: TBooleanField;
    tbgtamanhoempresa: TFloatField;
    tbghempresa: TFloatField;
    tbgvempresa: TFloatField;
    tbgfonteempresa: TFloatField;
    tbgnegritoempresa: TBooleanField;
    tbgimprodape: TBooleanField;
    tbgnegritorodape: TBooleanField;
    tbgfonterodape: TFloatField;
    bloqueio: TAction;
    btnalterar: TBitBtn;
    btndelitem: TBitBtn;
    btnzerar: TBitBtn;
    tabelaValidade: TStringField;
    tabelalote: TStringField;
    tabelavrunit: TFloatField;
    Label2: TLabel;
    edescricao: TEdit;
    tabelalink: TStringField;
    evempresaL: TDBEdit;
    ehempresaL: TDBEdit;
    etamanhoempresaL: TDBEdit;
    rimpempresaL: TDBCheckBox;
    tbgimpempresaL: TBooleanField;
    tbgtamanhoempresaL: TFloatField;
    tbghempresaL: TFloatField;
    tbgvempresaL: TFloatField;
    rdata: TDBCheckBox;
    rcodigo: TDBCheckBox;
    rcodigooriginal: TDBCheckBox;
    rcodigofornecedor: TDBCheckBox;
    rdescricao: TDBCheckBox;
    rcodigobarras: TDBCheckBox;
    Label19: TLabel;
    DBEdit75: TDBEdit;
    Label20: TLabel;
    DBEdit76: TDBEdit;
    Label21: TLabel;
    DBEdit77: TDBEdit;
    Label22: TLabel;
    DBEdit78: TDBEdit;
    rdataN: TDBCheckBox;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    rcodigon: TDBCheckBox;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
    rcodigofornecedorn: TDBCheckBox;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    rcodigooriginaln: TDBCheckBox;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    rcodigobarran: TDBCheckBox;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    rdescricaon: TDBCheckBox;
    rvrunit: TDBCheckBox;
    rvrvenda: TDBCheckBox;
    rnetiqueta: TDBCheckBox;
    rvratacado: TDBCheckBox;
    rvalidade: TDBCheckBox;
    rlote: TDBCheckBox;
    DBEdit99: TDBEdit;
    DBEdit100: TDBEdit;
    DBEdit101: TDBEdit;
    DBEdit102: TDBEdit;
    rvrunitn: TDBCheckBox;
    DBEdit103: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit105: TDBEdit;
    DBEdit106: TDBEdit;
    rvrvarejon: TDBCheckBox;
    DBEdit107: TDBEdit;
    DBEdit108: TDBEdit;
    DBEdit109: TDBEdit;
    DBEdit110: TDBEdit;
    rvratacadon: TDBCheckBox;
    DBEdit111: TDBEdit;
    DBEdit112: TDBEdit;
    DBEdit113: TDBEdit;
    DBEdit114: TDBEdit;
    rnetiquetan: TDBCheckBox;
    DBEdit115: TDBEdit;
    DBEdit116: TDBEdit;
    DBEdit117: TDBEdit;
    DBEdit118: TDBEdit;
    rloten: TDBCheckBox;
    DBEdit119: TDBEdit;
    DBEdit120: TDBEdit;
    DBEdit121: TDBEdit;
    DBEdit122: TDBEdit;
    rValidaden: TDBCheckBox;
    Label40: TLabel;
    rvrunite: TDBCheckBox;
    rvrvarejoe: TDBCheckBox;
    rvratacadoe: TDBCheckBox;
    Label42: TLabel;
    rfabricante: TDBCheckBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    rfabricanten: TDBCheckBox;
    StaticText3: TStaticText;
    painel: TPanel;
    barras: TRLDBBarcode;
    lrodape: TRLDBMemo;
    lempresal: TRLImage;
    lempresa: TRLLabel;
    tbgdata: TBooleanField;
    tbgdataT: TFloatField;
    tbgdatah: TFloatField;
    tbgdatav: TFloatField;
    tbgdataF: TFloatField;
    tbgcodigo: TBooleanField;
    tbgcodigot: TFloatField;
    tbgcodigoh: TFloatField;
    tbgcodigov: TFloatField;
    tbgcodigof: TFloatField;
    tbgcodigofornecedor: TBooleanField;
    tbgcodigofornecedort: TFloatField;
    tbgcodigofornecedorh: TFloatField;
    tbgcodigofornecedorv: TFloatField;
    tbgcodigofornecedorf: TFloatField;
    tbgcodigooriginal: TBooleanField;
    tbgcodigooriginalt: TFloatField;
    tbgcodigooriginalh: TFloatField;
    tbgcodigooriginalv: TFloatField;
    tbgcodigooriginalf: TFloatField;
    tbgcodigobarras: TBooleanField;
    tbgcodigobarrast: TFloatField;
    tbgcodigobarrash: TFloatField;
    tbgcodigobarrasv: TFloatField;
    tbgcodigobarrasf: TFloatField;
    tbgdescricao: TBooleanField;
    tbgdescricaoT: TFloatField;
    tbgdescricaoh: TFloatField;
    tbgdescricaov: TFloatField;
    tbgdescricaof: TFloatField;
    tbgfabricante: TBooleanField;
    tbgfabricantet: TFloatField;
    tbgfabricanteh: TFloatField;
    tbgfabricantev: TFloatField;
    tbgfabricantef: TFloatField;
    tbgvrunit: TBooleanField;
    tbgvrunitt: TFloatField;
    tbgvrunith: TFloatField;
    tbgvrunitv: TFloatField;
    tbgvrunitf: TFloatField;
    tbgvrvarejo: TBooleanField;
    tbgvrvarejot: TFloatField;
    tbgvrvarejoh: TFloatField;
    tbgvrvarejov: TFloatField;
    tbgvrvarejof: TFloatField;
    tbgvratacadot: TFloatField;
    tbgvratacadoh: TFloatField;
    tbgvratacadov: TFloatField;
    tbgvratacadof: TFloatField;
    tbgvratacado: TBooleanField;
    tbgnetiqueta: TBooleanField;
    tbgnetiquetat: TFloatField;
    tbgnetiquetah: TFloatField;
    tbgnetiquetav: TFloatField;
    tbgnetiquetaf: TFloatField;
    tbglote: TBooleanField;
    tbglotet: TFloatField;
    tbgloteh: TFloatField;
    tbglotev: TFloatField;
    tbglotef: TFloatField;
    tbgValidadef: TFloatField;
    tbgValidadev: TFloatField;
    tbgValidadeh: TFloatField;
    tbgValidadet: TFloatField;
    tbgValidade: TBooleanField;
    tbgdatan: TBooleanField;
    tbgcodigon: TBooleanField;
    tbgcodigofornecedorn: TBooleanField;
    tbgcodigooriginaln: TBooleanField;
    tbgcodigobarrasn: TBooleanField;
    tbgdescricaon: TBooleanField;
    tbgfabricanten: TBooleanField;
    tbgvrunitn: TBooleanField;
    tbgvrvarejon: TBooleanField;
    tbgvratacadon: TBooleanField;
    tbgnetiquetan: TBooleanField;
    tbgvrunite: TBooleanField;
    tbgloten: TBooleanField;
    tbgValidaden: TBooleanField;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label1: TLabel;
    tbgdataa: TFloatField;
    tbgcodigoa: TFloatField;
    tbgcodigofornecedora: TFloatField;
    tbgcodigooriginala: TFloatField;
    tbgcodigobarrasa: TFloatField;
    tbgdescricaoa: TFloatField;
    tbgfabricantea: TFloatField;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    tbgvrunita: TFloatField;
    tbgvrvarejoa: TFloatField;
    tbgvratacadoa: TFloatField;
    tbgnetiquetaa: TFloatField;
    tbglotea: TFloatField;
    tbgValidadea: TFloatField;
    tbgtamanhoempresaa: TFloatField;
    tbgtamanhoempresaLa: TFloatField;
    tbgtamanhorodapea: TFloatField;
    ldata: TRLDBText;
    tabelanetiqueta: TStringField;
    tabeladata: TDateField;
    tpbarcode: TAction;
    tabelaqtd: TIntegerField;
    criagrade: TAction;
    parent: TAction;
    lcodigo: TRLDBText;
    lcodigofornecedor: TRLDBText;
    lcodigooriginal: TRLDBText;
    lcodigobarras: TRLDBText;
    lfabricante: TRLDBText;
    lvrunit: TRLDBText;
    lvrvarejo: TRLDBText;
    lvratacado: TRLDBText;
    lnetiqueta: TRLDBText;
    llote: TRLDBText;
    lvalidade: TRLDBText;
    Label11: TLabel;
    Label12: TLabel;
    tbitem: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    DateField1: TDateField;
    dsitem: TDataSource;
    eval: TEdit;
    elote: TEdit;
    Bevel1: TBevel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    tbgvrvarejoe: TBooleanField;
    tbgvratacadoe: TBooleanField;
    tbitemvrunit: TStringField;
    Label9: TLabel;
    Label10: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    eini: TSpinEdit;
    rmargem: TCheckBox;
    tbitemchave: TIntegerField;
    SpeedButton3: TSpeedButton;
    tabeladividir: TIntegerField;
    tabelavratacado: TFloatField;
    tabelavrvenda: TFloatField;
    tabelavratacado1: TFloatField;
    tabelavrpromocao: TFloatField;
    tbitemvrvenda: TStringField;
    tbitemvratacado: TStringField;
    tbitemvratacado1: TStringField;
    tbitemvrpromocao: TStringField;
    argox: TCheckBox;
    FTable: TClientDataSet;
    FTablecodigo: TStringField;
    FTabledescricao: TStringField;
    FTablevrvenda: TStringField;
    FTableqtd: TIntegerField;
    Label15: TLabel;
    rvrunitf: TDBCheckBox;
    rvrvarejof: TDBCheckBox;
    rvratacadof: TDBCheckBox;
    tbgvrunitf_: TBooleanField;
    tbgvrvarejof_: TBooleanField;
    tbgvratacadof_: TBooleanField;
    ldescricao: TRLDBMemo;
    tpcod: TCheckBox;

    procedure preenche(nometb:tclientdataset;tz:tzquery;qtd:integer);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edescricaoEnter(Sender: TObject);
    procedure edescricaoExit(Sender: TObject);
    procedure comboKeyPress(Sender: TObject; var Key: Char);
    procedure configExecute(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btndeletarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure etextorodapeEnter(Sender: TObject);
    procedure btnimpClick(Sender: TObject);
    procedure gravarExecute(Sender: TObject);
    procedure comboChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure edescricaoChange(Sender: TObject);
    procedure gradeTitleClick(Column: TColumn);
    procedure rimpempresaClick(Sender: TObject);
    procedure ealturaExit(Sender: TObject);
    procedure rdataClick(Sender: TObject);
    procedure tpbarcodeExecute(Sender: TObject);
    procedure criagradeExecute(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure parentExecute(Sender: TObject);
    procedure DBCtrlGrid1Click(Sender: TObject);
    procedure btndelitemClick(Sender: TObject);
    procedure etextorodapeExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ldataBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure qcolunaBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
      VCinterno,
      VCBarras,
      VCFornecedor,
      VCOriginal: boolean;

      indice:string;

    { Private declarations }
  public
  codigoproduto:string;
    { Public declarations }
  end;

var
  fetqprod: Tfetqprod;

implementation

uses  umanu, udm,funcoes, uimpterm;

{$R *.dfm}


procedure Tfetqprod.preenche(nometb:tclientdataset;tz:tzquery;qtd:integer);
var
st :string;
begin

     if qtd >0 then
        st := inttostr(qtd)
     else
        st :='1';

     if inputquery('Quantidade','Digite a quantidade de etiqueta:',st) then else abort;

        if StrIsInteger(st) = false then begin
           showmessage('Digite um número válido!!!');
           abort;
        end;

        if nometb <> nil then begin
             tabela.Insert;
             tabela['codigo'] := nometb.fieldbyname('codigo').AsString;
             tabela['codigofornecedor'] := nometb.fieldbyname('codigofornecedor').AsString;
             tabela['codigooriginal'] := nometb.fieldbyname('codigooriginal').AsString;
             tabela['codigobarras'] := nometb.fieldbyname('codigobarras').AsString;
             tabela['descricao'] := nometb.fieldbyname('descricao').AsString;
             tabela['vrunit'] :=  nometb.fieldbyname('vrunit').asfloat;

             selecione('select vrvenda, vratacado from tbproduto where codigo ='+quotedstr(nometb.fieldbyname('codigo').AsString));
             tabela['vrvenda'] :=  sqlpub.fieldbyname('vrvenda').asfloat;
             tabela['vratacado'] := sqlpub.fieldbyname('vratacado').asfloat;
             tabela['fabricante'] :=sqlpub.fieldbyname('fabricante').asstring;
             sqlpub := nil;

          end;


        if tz <> nil then begin
             tabela.Insert;
             tabela['codigo'] := tz.fieldbyname('codigo').AsString;
             tabela['codigofornecedor'] := tz.fieldbyname('codigofornecedor').AsString;
             tabela['codigooriginal'] := tz.fieldbyname('codigooriginal').AsString;
             tabela['codigobarras'] := tz.fieldbyname('codigobarras').AsString;
             tabela['descricao'] := tz.fieldbyname('descricao').AsString;
             tabela['vrunit'] :=  tz.fieldbyname('vrunit').asfloat;

             selecione('select vrvenda, vratacado,fabricante from tbproduto where codigo ='+quotedstr(tz.fieldbyname('codigo').AsString));
             tabela['vrvenda'] :=  sqlpub.fieldbyname('vrvenda').asfloat;
             tabela['vratacado'] := sqlpub.fieldbyname('vratacado').asfloat;
             tabela['fabricante'] :=sqlpub.fieldbyname('fabricante').asstring;

             sqlpub := nil;
             fechatg;
          end;


         tabela['data'] := datetostr(now);
         tabela['qtd'] := st;

         if eval.Text <> '' then
            tabela['validade'] := eval.Text;

         if elote.Text <> '' then
            tabela['lote'] := elote.Text;

         tabela.Post;

end;


procedure Tfetqprod.FormClose(Sender: TObject; var Action: TCloseAction);
var
ini:tinifile;
begin

          if tbg['altura'] <> null then begin
             tbg.edit;
             tbg.Post;

             if tbg.RecordCount >0 then
                tbg.SaveToFile(servpath + 'imagem\etqG.cds');
          end;

          tabela.SaveToFile(servpath + 'imagem\cds.cds');

          Ini := TInifile.Create(conf_local);
          ini.WriteBool('etq', 'tpcod', tpcod.Checked);
          ini.free;

          fetqprod := nil;
          release;

end;

procedure Tfetqprod.edescricaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  codInterno,codbarras , codfor,codoriginal:string;

begin

        if (key = 13 ) and (edescricao.Text <> '') then begin

            if tbg.RecordCount <=0 then
               msg('#Você não tem um padrão, precisa criar, em configurações!!!',0);

      if VCinterno then
         codInterno:= ' or codigo = ' + quotedstr(edescricao.Text)
      else
         codInterno :='';

      if VCBarras then
         codbarras:= ' or codigobarras = ' + quotedstr(edescricao.Text)
      else
         codbarras :='';

      if VCFornecedor then
         codfor:= ' or codigofornecedor = ' + quotedstr(edescricao.Text)
      else
         codfor :='';


      if VCOriginal then
         codoriginal:= ' or codigooriginal = ' + quotedstr(edescricao.Text)
      else
         codoriginal :='';


           with fdm.sg do begin
                close;
                SQL.clear;
                SQL.Add(  'select * from tbproduto where '+
                               ' descricao = ' + quotedstr(edescricao.Text) +
                               codinterno+
                               codoriginal+
                               codfor +
                               codbarras);
               open;
           end;

           if fdm.sg['codigo'] <> null then begin
              preenche(nil,fdm.sg,1);
              edescricao.SetFocus;
              edescricao.Clear;

           end else begin
             listagem('descricao',edescricao.Text,'',5,0);

         if fdm.sg.Active then begin
            preenche(nil,fdm.sg,1);
            edescricao.SetFocus;
            edescricao.Clear;
        end;
        end;
      end;


end;

procedure Tfetqprod.edescricaoEnter(Sender: TObject);
begin
       edescricao.Color := clinfobk;

end;

procedure Tfetqprod.edescricaoExit(Sender: TObject);
begin
       edescricao.Color := clwhite;
end;

procedure Tfetqprod.comboKeyPress(Sender: TObject; var Key: Char);
begin
        abort;
end;

procedure Tfetqprod.configExecute(Sender: TObject);
begin

        parentExecute(self);
        //////pagina
        qetiqueta.PageSetup.PaperHeight :=  tbg.fieldbyname('altura').AsFloat;
        qetiqueta.PageSetup.PaperWidth := tbg.fieldbyname('largura').AsFloat;

        qetiqueta.Margins.LeftMargin := tbg.fieldbyname('esquerda').AsFloat;
        qetiqueta.Margins.RightMargin := tbg.fieldbyname('direita').AsFloat;
        qetiqueta.Margins.TopMargin :=tbg.fieldbyname('topo').AsFloat;
        qetiqueta.Margins.BottomMargin := tbg.fieldbyname('rodape').AsFloat;

        //colunas
        qcoluna.Height := tbg.fieldbyname('alturae').asinteger;
        qcoluna.ColCount := tbg.fieldbyname('qtdcolona').asinteger;
        qcoluna.ColSpacing := tbg.fieldbyname('espacocoluna').AsFloat;

        //campos

        ldata.Width :=  tbg.fieldbyname('datat').asinteger;
        ldata.Height :=  tbg.fieldbyname('dataa').asinteger;
        ldata.Left :=  tbg.fieldbyname('datah').asinteger;
        ldata.top :=   tbg.fieldbyname('datav').asinteger;
        ldata.Font.Size :=  tbg.fieldbyname('dataF').asinteger ;

        if rdatan.Checked then
           ldata.Font.Style := ldata.Font.Style + [fsbold]
        else
           ldata.Font.Style := ldata.Font.Style - [fsbold];


        lcodigo.Width :=  tbg.fieldbyname('codigot').asinteger;
        lcodigo.Height :=  tbg.fieldbyname('codigoa').asinteger;
        lcodigo.Left :=  tbg.fieldbyname('codigoh').asinteger;
        lcodigo.top :=   tbg.fieldbyname('codigov').asinteger;
        lcodigo.Font.Size :=  tbg.fieldbyname('codigof').asinteger ;

        if rcodigon.Checked then
           lcodigo.Font.Style := lcodigo.Font.Style + [fsbold]
        else
           lcodigo.Font.Style := lcodigo.Font.Style - [fsbold];


        lcodigofornecedor.Width :=  tbg.fieldbyname('codigofornecedort').asinteger;
        lcodigofornecedor.Height :=  tbg.fieldbyname('codigofornecedora').asinteger;
        lcodigofornecedor.Left :=  tbg.fieldbyname('codigofornecedorh').asinteger;
        lcodigofornecedor.top :=   tbg.fieldbyname('codigofornecedorv').asinteger;
        lcodigofornecedor.Font.Size :=  tbg.fieldbyname('codigofornecedorf').asinteger ;

        if rcodigofornecedorn.Checked then
           lcodigofornecedor.Font.Style := lcodigofornecedor.Font.Style + [fsbold]
        else
           lcodigofornecedor.Font.Style := lcodigofornecedor.Font.Style - [fsbold];


        lcodigooriginal.Width :=  tbg.fieldbyname('codigooriginalt').asinteger;
        lcodigooriginal.Height :=  tbg.fieldbyname('codigooriginala').asinteger;
        lcodigooriginal.Left :=  tbg.fieldbyname('codigooriginalh').asinteger;
        lcodigooriginal.top :=   tbg.fieldbyname('codigooriginalv').asinteger;
        lcodigooriginal.Font.Size :=  tbg.fieldbyname('codigooriginalf').asinteger ;

        if rcodigooriginaln.Checked then
           lcodigooriginal.Font.Style := lcodigooriginal.Font.Style + [fsbold]
        else
           lcodigooriginal.Font.Style := lcodigooriginal.Font.Style - [fsbold];


        lcodigobarras.Width :=  tbg.fieldbyname('codigobarrast').asinteger;
        lcodigobarras.Height :=  tbg.fieldbyname('codigobarrasa').asinteger;
        lcodigobarras.Left :=  tbg.fieldbyname('codigobarrash').asinteger;
        lcodigobarras.top :=   tbg.fieldbyname('codigobarrasv').asinteger;
        lcodigobarras.Font.Size :=  tbg.fieldbyname('codigobarrasf').asinteger ;

        if rcodigobarran.Checked then
           lcodigobarras.Font.Style := lcodigobarras.Font.Style + [fsbold]
        else
           lcodigobarras.Font.Style := lcodigobarras.Font.Style - [fsbold];

        ldescricao.Width :=  tbg.fieldbyname('descricaoT').asinteger;
        ldescricao.Height :=  tbg.fieldbyname('descricaoa').asinteger;
        ldescricao.Left :=  tbg.fieldbyname('descricaoh').asinteger;
        ldescricao.top :=   tbg.fieldbyname('descricaov').asinteger;
        ldescricao.Font.Size :=  tbg.fieldbyname('descricaof').asinteger ;

        if rdescricaon.Checked then
           ldescricao.Font.Style := ldescricao.Font.Style + [fsbold]
        else
           ldescricao.Font.Style := ldescricao.Font.Style - [fsbold];


        lfabricante.Width :=  tbg.fieldbyname('fabricantet').asinteger;
        lfabricante.Height :=  tbg.fieldbyname('fabricantea').asinteger;
        lfabricante.Left :=  tbg.fieldbyname('fabricanteh').asinteger;
        lfabricante.top :=   tbg.fieldbyname('fabricantev').asinteger;
        lfabricante.Font.Size :=  tbg.fieldbyname('fabricantef').asinteger ;

        if rfabricanten.Checked then
           lfabricante.Font.Style := lfabricante.Font.Style + [fsbold]
        else
           lfabricante.Font.Style := lfabricante.Font.Style - [fsbold];


        lvrunit.Width :=  tbg.fieldbyname('vrunitt').asinteger;
        lvrunit.Height :=  tbg.fieldbyname('vrunita').asinteger;
        lvrunit.Left :=  tbg.fieldbyname('vrunith').asinteger;
        lvrunit.top :=   tbg.fieldbyname('vrunitv').asinteger;
        lvrunit.Font.Size :=  tbg.fieldbyname('vrunitf').asinteger ;

        if rvrunitn.Checked then
           lvrunit.Font.Style := lvrunit.Font.Style + [fsbold]
        else
           lvrunit.Font.Style := lvrunit.Font.Style - [fsbold];

        lvrvarejo.Width :=  tbg.fieldbyname('vrvarejot').asinteger;
        lvrvarejo.Height :=  tbg.fieldbyname('vrvarejoa').asinteger;
        lvrvarejo.Left :=  tbg.fieldbyname('vrvarejoh').asinteger;
        lvrvarejo.top :=   tbg.fieldbyname('vrvarejov').asinteger;
        lvrvarejo.Font.Size :=  tbg.fieldbyname('vrvarejof').asinteger ;

        if rvrvarejon.Checked then
           lvrvarejo.Font.Style := lvrvarejo.Font.Style + [fsbold]
        else
           lvrvarejo.Font.Style := lvrvarejo.Font.Style - [fsbold];


        lvratacado.Width :=  tbg.fieldbyname('vratacadot').asinteger;
        lvratacado.Height :=  tbg.fieldbyname('vratacadoa').asinteger;
        lvratacado.Left :=  tbg.fieldbyname('vratacadoh').asinteger;
        lvratacado.top :=   tbg.fieldbyname('vratacadov').asinteger;
        lvratacado.Font.Size :=  tbg.fieldbyname('vratacadof').asinteger ;

        if rvratacadon.Checked then
           lvratacado.Font.Style := lvratacado.Font.Style + [fsbold]
        else
           lvratacado.Font.Style := lvratacado.Font.Style - [fsbold];


        lnetiqueta.Width :=  tbg.fieldbyname('netiquetat').asinteger;
        lnetiqueta.Height :=  tbg.fieldbyname('netiquetaa').asinteger;
        lnetiqueta.Left :=  tbg.fieldbyname('netiquetah').asinteger;
        lnetiqueta.top :=   tbg.fieldbyname('netiquetav').asinteger;
        lnetiqueta.Font.Size :=  tbg.fieldbyname('netiquetaf').asinteger ;

        if rnetiquetan.Checked then
           lnetiqueta.Font.Style := lnetiqueta.Font.Style + [fsbold]
        else
           lnetiqueta.Font.Style := lnetiqueta.Font.Style - [fsbold];


        llote.Width :=  tbg.fieldbyname('lotet').asinteger;
        llote.Height :=  tbg.fieldbyname('lotea').asinteger;
        llote.Left :=  tbg.fieldbyname('loteh').asinteger;
        llote.top :=   tbg.fieldbyname('lotev').asinteger;
        llote.Font.Size :=  tbg.fieldbyname('lotef').asinteger ;

        if rloten.Checked then
           llote.Font.Style := llote.Font.Style + [fsbold]
        else
           llote.Font.Style := llote.Font.Style - [fsbold];



        lValidade.Width :=  tbg.fieldbyname('Validadet').asinteger;
        lValidade.Height :=  tbg.fieldbyname('Validadea').asinteger;
        lValidade.Left :=  tbg.fieldbyname('Validadeh').asinteger;
        lValidade.top :=   tbg.fieldbyname('Validadev').asinteger;
        lValidade.Font.Size :=  tbg.fieldbyname('Validadef').asinteger ;

        if rValidaden.Checked then
           lValidade.Font.Style := lValidade.Font.Style + [fsbold]
        else
           lValidade.Font.Style := lValidade.Font.Style - [fsbold];


        lempresa.Width :=  tbg.fieldbyname('tamanhoempresa').asinteger;
        lempresa.Height :=  tbg.fieldbyname('tamanhoempresaa').asinteger;
        lempresa.Left :=  tbg.fieldbyname('hempresa').asinteger;
        lempresa.top :=   tbg.fieldbyname('vempresa').asinteger;
        lempresa.Font.Size :=  tbg.fieldbyname('fonteempresa').asinteger ;

        if rnegritoempresa.Checked then
           lempresa.Font.Style := lempresa.Font.Style + [fsbold]
        else
           lempresa.Font.Style := lempresa.Font.Style - [fsbold];


        lempresaL.Width :=  tbg.fieldbyname('tamanhoempresaL').asinteger;
        lempresaL.Height :=  tbg.fieldbyname('tamanhoempresaLa').asinteger;
        lempresaL.Left :=  tbg.fieldbyname('hempresaL').asinteger;
        lempresaL.top :=   tbg.fieldbyname('vempresaL').asinteger;

        lempresaL.Picture := fmenu.imagelogo.Picture;

        lrodape.Width := tbg.fieldbyname('tamanhorodape').asinteger;
        lrodape.Height := tbg.fieldbyname('tamanhorodapea').asinteger;
        lrodape.Left :=   tbg.fieldbyname('hrodape').asinteger;
        lrodape.top :=  tbg.fieldbyname('vrodape').asinteger;
        lrodape.Font.Size := tbg.fieldbyname('fonterodape').asinteger ;

        if rnegritorodape.Checked then
           lrodape.Font.Style := lrodape.Font.Style + [fsbold]
        else
           lrodape.Font.Style := lrodape.Font.Style - [fsbold];

        barras.Height :=tbg.fieldbyname('alturabarra').asinteger;
        barras.Left := tbg.fieldbyname('hbarra').asinteger;
        barras.Top := tbg.fieldbyname('vbarra').asinteger;

end;

procedure Tfetqprod.btnnovoClick(Sender: TObject);
var
st:string;
begin

        if inputquery('Nome da Etiqueta','Digite o nome deste padrão (até 10 carecteres):',st) then else abort;

        if length(st) <1 then begin
           showmessage('Você precisa digitar um nome para esta etiqueta!!!');
           abort;
        end;

        if tbg.locate('nome',st,[]) then begin
           showmessage('Este padrão já existe, digite outro!!!');
           abort;
        end;


        tbg.Insert;
        tbg['nome'] := st;
        tbg['codbar'] := 'bcCodaBar';
        tbg['altura'] := 270;
        tbg['largura']:= 210;
        tbg['esquerda']:=0;
        tbg['direita']:=0;
        tbg['topo']:=0;
        tbg['rodape']:=0;

        tbg['alturae']:= 190;
        tbg['qtdcolona']:=5;
        tbg['espacocoluna']:=1;

        tbg['codbar'] := 'bcCodaBar';
        tbg['tipocod']:='codigobarras';
        tbg['alturabarra']:=71;
        tbg['hbarra']:=0;
        tbg['vbarra']:=0;

        tbg['tamanhorodape']:=146;
        tbg['hrodape']:= 0;
        tbg['vrodape']:=0;
        tbg['fonterodape']:=8;

        tbg['tamanhoempresa']:=146;
        tbg['hempresa']:=0;
        tbg['vempresa']:=0;
        tbg['fonteempresa']:=8;

        tbg['improdape']:=false;
        tbg['negritorodape'] := false;
        tbg['impbarra']:=false;
        tbg['impempresa'] := false;
        tbg['negritoempresa']:=false;
        tbg['impempresaL'] := false;

        tbg['tamanhoempresaL'] := 130;
        tbg['hempresaL']:=0;
        tbg['vempresaL']:=0;



        ////////////////tbp check

          tbg['data']:=false;
          tbg['codigo']:=false;
          tbg['codigofornecedor']:=false;
          tbg['codigooriginal']:=false;
          tbg['codigobarras']:=false;
          tbg['descricao']:=false;
          tbg['fabricante']:=false;
          tbg['vrunit']:=false;
          tbg['dataN']:=false;
          tbg['codigon']:=false;
          tbg['codigofornecedorn']:=false;
          tbg['codigooriginaln']:=false;
          tbg['codigobarrasn']:=false;
          tbg['descricaon']:=false;
          tbg['fabricanten']:=false;
          tbg['vrunitn']:=false;
          tbg['vrunite']:=false;
          tbg['vrvarejo']:=false;
          tbg['vratacado']:=false;
          tbg['netiqueta']:=false;
          tbg['lote']:=false;
          tbg['Validade']:=false;
          tbg['vrvarejon']:=false;
          tbg['vratacadon']:=false;
          tbg['netiquetan']:=false;
          tbg['loten']:=false;
          tbg['Validaden']:=false;
          tbg['vrvarejoe']:=false;
          tbg['vratacadoe']:=false;

          ////////////////////tbg tm
          tbg['datat']:=146;
          tbg['codigot']:=146;
          tbg['codigofornecedort']:=146;
          tbg['codigooriginalt']:=146;
          tbg['codigobarrast']:=146;
          tbg['descricaoT']:=146;
          tbg['fabricantet']:=146;
          tbg['vrunitt']:=146;
          tbg['vrvarejot']:=146;
          tbg['vratacadot']:=146;
          tbg['netiquetat']:=146;
          tbg['lotet']:=146;
          tbg['Validadet']:=146;

         ////////// posicao h e v

          tbg['datah']:=0;
          tbg['codigoh']:=0;
          tbg['codigofornecedorh']:=0;
          tbg['codigooriginalh']:=0;
          tbg['codigobarrash']:=0;
          tbg['descricaoh']:=0;
          tbg['fabricanteh']:=0;
          tbg['vrunith']:=0;
          tbg['vrvarejoh']:=0;
          tbg['vratacadoh']:=0;
          tbg['netiquetah']:=0;
          tbg['loteh']:=0;
          tbg['Validadeh']:=0;

          tbg['datav']:=0;
          tbg['codigov']:=0;
          tbg['codigofornecedorv']:=0;
          tbg['codigooriginalv']:=0;
          tbg['codigobarrasv']:=0;
          tbg['descricaov']:=0;
          tbg['fabricantev']:=0;
          tbg['vrunitv']:=0;
          tbg['vrvarejov']:=0;
          tbg['vratacadov']:=0;
          tbg['netiquetav']:=0;
          tbg['lotev']:=0;
          tbg['Validadev']:=0;

          /////////////altura

          tbg['dataa']:=15;
          tbg['codigoa']:=15;
          tbg['codigofornecedora']:=15;
          tbg['codigooriginala']:=15;
          tbg['codigobarrasa']:=15;
          tbg['descricaoa']:=15;
          tbg['fabricantea']:=15;
          tbg['vrunita']:=15;
          tbg['vrvarejoa']:=15;
          tbg['vratacadoa']:=15;
          tbg['netiquetaa']:=15;
          tbg['lotea']:=15;
          tbg['Validadea']:=15;
          tbg['tamanhoempresaa']:=15;
          tbg['tamanhoempresaLa']:=43;
          tbg['tamanhorodapea']:=15;


          ///////// fonte
          tbg['dataF']:=8;
          tbg['codigof']:=8;
          tbg['codigofornecedorf']:=8;
          tbg['codigooriginalf']:=8;
          tbg['codigobarrasf']:=8;
          tbg['descricaof']:=8;
          tbg['fabricantef']:=8;
          tbg['vrunitf']:=8;
          tbg['vrvarejof']:=8;
          tbg['vratacadof']:=8;
          tbg['netiquetaf']:=8;
          tbg['lotef']:=8;
          tbg['Validadef']:=8;

          tbg.post;
          configexecute(self);

          ativar(fetqprod);
          edescricao.Enabled := true;
          grade.Enabled := true;
          eval.Enabled := true;
          elote.Enabled := true;

end;

procedure Tfetqprod.btndeletarClick(Sender: TObject);
begin

      if Application.MessageBox('Ao excluir este padrão não poderá mais recuperá-lo, deseja continuar? ',
                            'Confirme', 4 + MB_ICONQUESTION) = idYes then begin

        tbg.Delete;
        configexecute(self);
      end


end;

procedure Tfetqprod.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13)  then
    Perform(wm_nextdlgctl, 0,0);
  if (key = 27)  then
    Perform(wm_nextdlgctl, 1,0);

end;

procedure Tfetqprod.etextorodapeEnter(Sender: TObject);
begin
        keypreview := false;
end;

procedure Tfetqprod.btnimpClick(Sender: TObject);
var
i:integer;
margem:double;
begin


        abortaacao(tabela,nil,'codigo','','','','',0);

        if tpcod.Checked then barras.ShowText := boCode
                         else barras.ShowText := bonone;
                              
        lempresal.picture := fmenu.imagelogo.picture;
        lempresa.Caption := fantasiaempresa ;

        barras.DataField :=  tbg.fieldbyname('tipocod').AsString;
        tpbarcodeexecute(self);

        tbitem.CreateDataSet;
        tbitem.Open;

        for i := 2 to eini.Value do begin
             tbitem.insert;
             tbitem['chave'] := tbitem.RecordCount ;
             tbitem.Post;
        end;

        tabela.Close;
        tabela.open;

       filtrar (grade,tabela,nil,'codigo');

       ftable.CreateDataSet;

        tabela.First;
        while not tabela.Eof do begin

             if argox.Checked = true then begin
                ftable.insert;
                case rtipocod.ItemIndex of
                     0: ftable['codigo'] := tabela.fieldbyname('codigobarras').AsString;
                     1: ftable['codigo'] := tabela.fieldbyname('codigo').AsString;
                     2: ftable['codigo'] := tabela.fieldbyname('codigooriginal').AsString;
                     3: ftable['codigo'] := tabela.fieldbyname('codigofornecedor').AsString;
                end;

                ftable['descricao'] := tabela.fieldbyname('descricao').AsString;
                ftable['vrvenda'] :=  format('%n',[tabela.fieldbyname('vrvenda').asfloat]);
                ftable['qtd'] :=  tabela.fieldbyname('qtd').AsInteger;
                ftable.Post;

            end else begin

            for i := 1 to tabela.fieldbyname('qtd').AsInteger do begin
                tbitem.insert;
                tbitem['codigo'] := tabela.fieldbyname('codigo').AsString;
                tbitem['codigofornecedor'] := tabela.fieldbyname('codigofornecedor').AsString;
                tbitem['codigooriginal'] := tabela.fieldbyname('codigooriginal').AsString;
                tbitem['codigobarras'] := tabela.fieldbyname('codigobarras').AsString;
                tbitem['descricao'] := tabela.fieldbyname('descricao').AsString;
                tbitem['validade'] := tabela.fieldbyname('validade').AsString;                


                if rvrunite.Checked then
                   tbitem['vrunit'] :=  encodepreco(tabela.fieldbyname('vrunit').asfloat)

                else
                   tbitem['vrunit'] :=  format('%n',[tabela.fieldbyname('vrunit').asfloat]);

                if (not rvrunite.Checked) and(rvrunitf.Checked) then
                   tbitem['vrunit'] :=  FormatNumeric(format('%n',[tbitem.fieldbyname('vrunit').asfloat]));




                if rvrvarejoe.Checked then
                   tbitem['vrvenda'] :=  encodepreco(tabela.fieldbyname('vrvenda').asfloat)
               else if (tabela['dividir']=null) or (tabela['dividir']=1) then
                   tbitem['vrvenda'] :=  format('%n',[tabela.fieldbyname('vrvenda').asfloat])

               else
                   tbitem['vrvenda'] := tabela.fieldbyname('dividir').AsString +' X '+
                                        format('%n',[tabela.fieldbyname('vrvenda').asfloat/tabela.fieldbyname('dividir').asfloat ]);
//                                        + ' = ' + format('%n',[tabela.fieldbyname('vrvenda').asfloat]);

                if (not rvrvarejoe.Checked) and(rvrvarejof.Checked) then
                   tbitem['vrvenda'] :=  FormatNumeric(format('%n',[tbitem.fieldbyname('vrvenda').asfloat]));


                if rvratacadoe.Checked then
                   tbitem['vratacado'] :=  encodepreco(tabela.fieldbyname('vratacado').asfloat)
               else if (tabela['dividir']=null) or (tabela['dividir']=1) then
                   tbitem['vratacado'] :=  format('%n',[tabela.fieldbyname('vratacado').asfloat])
                else
                  tbitem['vratacado'] := tabela.fieldbyname('dividir').AsString +' x '+
                                        format('%n',[tabela.fieldbyname('vratacado').asfloat/
                                                     tabela.fieldbyname('dividir').asfloat ])+
                                        ' = ' + format('%n',[tabela.fieldbyname('vratacado').asfloat]);

                if (not rvratacadoe.Checked) and(rvratacadof.Checked) then
                   tbitem['vratacado'] :=  FormatNumeric(format('%n',[tbitem.fieldbyname('vratacado').asfloat]));

                if responsavel = 'ARISTEM' then
                   tbitem['vrvenda'] :=  FormatNumeric(tbitem.fieldbyname('vrvenda').AsString)+'28'+
                                         FormatNumeric(tbitem.fieldbyname('vratacado').AsString);


                tbitem['fabricante'] :=tabela.fieldbyname('fabricante').asstring;
                tbitem['data'] := tabela.fieldbyname('data').AsDateTime;
                tbitem['netiqueta'] := inttostr(i) + '/'+ inttostr(tabela.fieldbyname('qtd').AsInteger);
                tbitem['chave'] := tbitem.RecordCount;
             end;


         end;
         tabela.Next;
         end;
         tabela.Filtered := false;
         margem:=qetiqueta.Margins.topmargin;

        if rmargem.Checked then
           qetiqueta.Margins.topmargin :=0;
        tbitem.IndexFieldNames := 'chave';

             if argox.Checked = false then
                qetiqueta.PreviewModal
             else begin
                fimpterm:=tfimpterm.Create(application,ftable);
                fimpterm.showmodal;
             end;




        qetiqueta.Margins.topmargin :=margem;

        ftable.Close;
        tbitem.close;
end;

procedure Tfetqprod.gravarExecute(Sender: TObject);
begin
{          tbg.Edit;
          tbg['altura'] := ealtura.Text;
          tbg['largura'] := elargura.Text;
          tbg['esquerda'] := eesquerda.Text;
          tbg['direita'] := edireita.Text;
          tbg['topo'] := etopo.Text;
          tbg['rodape'] := erodape.Text;
          tbg['alturaE'] := ealturaE.value;
          tbg['qtdcolona'] := eqtdcolona.value;
          tbg['espacocoluna'] := eespacocoluna.value;
          tbg['impbarra'] := Rimpbarra.Checked ;
          tbg['codbar'] := ecodbar.text;
          tbg['alturabarra'] := ealturabarra.value;
          tbg['hbarra'] := ehbarra.value;
          tbg['vbarra'] := evbarra.value;
          tbg['rtipocod'] := ealtura.value;
          tbg[''] := ealtura.value;
          tbg[''] := ealtura.value;
          tbg[''] := ealtura.value;
          tbg[''] := ealtura.value;
          tbg[''] := ealtura.value;
          tbg[''] := ealtura.value;
          tbg[''] := ealtura.value;}

          tbg.SaveToFile(servpath + 'imagem\etqG.cds');
          tbg.close;
end;

procedure Tfetqprod.comboChange(Sender: TObject);
begin
        configexecute(self);
end;

procedure Tfetqprod.FormShow(Sender: TObject);
var
ini:tinifile;
begin

      fdm.tbconfig.open;
    // criterio para localizar

      if application.Title = 'Custo' then
         VCinterno := true
      else begin
       VCinterno   := fdm.tbconfig['VCinterno'] = 'S';
       VCBarras    := fdm.tbconfig['VCBarras'] = 'S';
       VCFornecedor:= fdm.tbconfig['VCFornecedor'] = 'S';
       VCOriginal:= fdm.tbconfig['VCOriginal'] = 'S';
     end;

      fdm.tbconfig.close;
      tabsheet1.Show;
      configexecute(self);
      criagradeExecute(self);
      edescricao.SetFocus;
      indice := 'descricao';

      Ini := TInifile.Create(conf_local);
      tpcod.Checked := Ini.ReadBool('etq', 'tpcod', False);
      ini.free;



end;

procedure Tfetqprod.btnalterarClick(Sender: TObject);
var
st:string;
begin

        if inputquery('Nome da Etiqueta','Digite o novo nome deste padrão (até 10 carecteres):',st) then else abort;

        if length(st) <1 then begin
           showmessage('Você precisa digitar um nome para esta etiqueta!!!');
           abort;
        end;

        if tbg.locate('nome',st,[]) then begin
           showmessage('Este padrão já existe, digite outro!!!');
           abort;
        end;


        tbg.Insert;
        tbg['nome'] := st;
        tbg.post;

end;

procedure Tfetqprod.PageControl1Change(Sender: TObject);
begin

        btnnovo.enabled :=   PageControl1.ActivePageIndex =1;
        btnalterar.enabled :=PageControl1.ActivePageIndex =1;
        btndeletar.enabled :=PageControl1.ActivePageIndex =1;

        btndelitem.enabled :=PageControl1.ActivePageIndex =0;
        btnzerar.enabled :=  PageControl1.ActivePageIndex =0;

        keypreview :=  PageControl1.ActivePageIndex =1;

        if  PageControl1.ActivePageIndex =0  then begin
            edescricao.SetFocus;
            criagradeExecute(self);
        end;

end;

procedure Tfetqprod.BitBtn2Click(Sender: TObject);
begin
                 abortaacao(tabela,nil,'codigo','','','','',0);

        if msg('',1) then  begin

                 tabela.cancel;
                 tabela.EmptyDataSet;

          end;

             edescricao.SetFocus;  

end;

procedure Tfetqprod.edescricaoChange(Sender: TObject);
begin

           tabela.Locate(indice,edescricao.Text, [loPartialKey]);

           tabela.Locate('link;'+indice, VarArrayOf([
                        tabela.fieldbyname('link').asstring ,
                         edescricao.text]), [loPartialKey]);
end;

procedure Tfetqprod.gradeTitleClick(Column: TColumn);
begin

        tabela.IndexFieldNames := 'link;'+column.FieldName;

        Label2.Caption := 'Localizar por '+ column.FieldName ;

end;

procedure Tfetqprod.rimpempresaClick(Sender: TObject);
begin
        with sender as tdbcheckbox do
           if fetqprod.Active then
             if checked then begin
                lempresa.Width :=145;
                lempresa.Left :=0;
                lempresa.Top := 0;
                lempresa.Font.Size :=8;
                lempresa.Font.Style := lempresa.Font.Style-[fsbold];

                tbg.edit;
                tbg['tamanhoempresa']:= 145;
                tbg['hempresa']:= 0;
                tbg['vempresa']:= 0;
                tbg['fonteempresa']:= 8;

                lempresa.Caption := fantasiaempresa;
             end

             else begin
                lempresa.Top := -100;
                lempresa.Caption :='';
             end;

end;

procedure Tfetqprod.ealturaExit(Sender: TObject);
begin
        with sender as tdbedit do
             if modified then
                 configExecute(self);

end;

procedure Tfetqprod.rdataClick(Sender: TObject);
begin
        configexecute(self);
end;

procedure Tfetqprod.tpbarcodeExecute(Sender: TObject);
begin
	if combo.text ='bcCodaBar' then barras.BarcodeType :=bcCodaBar
	else if combo.text ='bcCode128A' then barras.BarcodeType :=bcCode128A
	else if combo.text ='bcCode128B' then barras.BarcodeType :=bcCode128B
	else if combo.text ='bcCode128' then barras.BarcodeType :=bcCode128C
	else if combo.text ='bcCode2OF5Industry' then barras.BarcodeType :=	bcCode2OF5Industry
	else if combo.text ='bcCode2OF5Interleaved' then barras.BarcodeType :=		bcCode2OF5Interleaved
	else if combo.text ='bcCode2OF5Matrix' then barras.BarcodeType :=	bcCode2OF5Matrix
	else if combo.text ='bcCode39' then barras.BarcodeType :=	bcCode39
	else if combo.text ='bcCode39Extended' then barras.BarcodeType :=	bcCode39Extended
	else if combo.text ='bcCode93' then barras.BarcodeType :=	bcCode93
	else if combo.text ='bcCode93Extended' then barras.BarcodeType :=	bcCode93Extended
	else if combo.text ='bcEAN128A' then barras.BarcodeType :=bcEAN128A
	else if combo.text ='bcEAN128B' then barras.BarcodeType :=bcEAN128B
	else if combo.text ='bcEAN128C' then barras.BarcodeType :=bcEAN128C
	else if combo.text ='bcEAN13' then barras.BarcodeType :=bcEAN13
	else if combo.text ='bcEAN8' then barras.BarcodeType :=bcEAN8
	else if combo.text ='bcMSI' then barras.BarcodeType :=bcMSI
	else if combo.text ='bcPostNet' then barras.BarcodeType :=bcPostNet
	else if combo.text ='bcUPC_A' then barras.BarcodeType :=	bcUPC_A
	else if combo.text ='bcUPC_E0' then barras.BarcodeType :=	bcUPC_E0
	else if combo.text ='bcUPC_E1' then barras.BarcodeType :=	bcUPC_E1
	else if combo.text ='bcUPC_Supp2' then barras.BarcodeType :=bcUPC_Supp2
	else if combo.text ='bcUPC_Supp5' then barras.BarcodeType :=bcUPC_Supp5 ;


end;

procedure Tfetqprod.criagradeExecute(Sender: TObject);
var
i:integer;
begin

        i:= grade.Columns.Count-1;

        while i>2 do begin
             grade.Columns[i].Destroy;
             i :=i-1;
        end;

        i:=3;

        if rdata.Checked then begin
           grade.Columns.Add;
           grade.Columns[i].FieldName := 'Data';
           grade.Columns[i].Title.Caption := 'Data';
           grade.Columns[i].Width := 72;
           i:=i+1;
        end;

        if rcodigofornecedor.Checked then begin
           grade.Columns.Add;
           grade.Columns[i].FieldName := 'codigofornecedor';
           grade.Columns[i].Title.Caption := 'CódFor';
           grade.Columns[i].Width := 55;
           i:=i+1;
        end;

        if rcodigooriginal.Checked then begin
           grade.Columns.Add;
           grade.Columns[i].FieldName := 'codigooriginal';
           grade.Columns[i].Title.Caption := 'CódOrig';
           grade.Columns[i].Width := 60;
           i:=i+1;
        end;

        if rcodigobarras.Checked then begin
           grade.Columns.Add;
           grade.Columns[i].FieldName := 'codigobarras';
           grade.Columns[i].Title.Caption := 'CódBarra';
           grade.Columns[i].Width := 100;
           i:=i+1;
        end;



        if rfabricante.Checked then begin
           grade.Columns.Add;
           grade.Columns[i].FieldName := 'Fabricante';
           grade.Columns[i].Title.Caption := 'Fabricante';
           grade.Columns[i].Width := 100;
           i:=i+1;
        end;

        if rvrunit.Checked then begin
           grade.Columns.Add;
           grade.Columns[i].FieldName := 'vrunit';
           grade.Columns[i].Title.Caption := 'VrCompra';
           grade.Columns[i].Width := 64;
           i:=i+1;
        end;

        if rvrvenda.Checked then begin
           grade.Columns.Add;
           grade.Columns[i].FieldName := 'vrvenda';
           grade.Columns[i].Title.Caption := 'VrVarejo';
           grade.Columns[i].Width := 64;
           i:=i+1;
        end;

        if rvratacado.Checked then begin
           grade.Columns.Add;
           grade.Columns[i].FieldName := 'vratacado';
           grade.Columns[i].Title.Caption := 'VrAtacado';
           grade.Columns[i].Width := 64;
           i:=i+1;
        end;

        if rlote.Checked then begin
           grade.Columns.Add;
           grade.Columns[i].FieldName := 'lote';
           grade.Columns[i].Title.Caption := 'Lote';
           grade.Columns[i].Width := 50;
           i:=i+1;
        end;


        if rvalidade.Checked then begin
           grade.Columns.Add;
           grade.Columns[i].FieldName := 'validade';
           grade.Columns[i].Title.Caption := 'Validade';
           grade.Columns[i].Width := 50;
           i:=i+1;
        end;


           grade.Columns.Add;
           grade.Columns[i].FieldName := 'dividir';
           grade.Columns[i].Title.Caption := 'Dividir Preço';
           grade.Columns[i].Width := 100;


end;

procedure Tfetqprod.Label2Click(Sender: TObject);
begin
criagradeExecute(self);
end;

procedure Tfetqprod.parentExecute(Sender: TObject);
begin
        if rdata.Checked then
           ldata.Parent := qcoluna
        else
           ldata.Parent := painel;


        if rcodigo.Checked then
           lcodigo.Parent := qcoluna
        else
           lcodigo.Parent := painel;


        if rcodigofornecedor.Checked then
           lcodigofornecedor.Parent := qcoluna
        else
           lcodigofornecedor.Parent := painel;

        if rcodigooriginal.Checked then
           lcodigooriginal.Parent := qcoluna
        else
           lcodigooriginal.Parent := painel;

        if rcodigobarras.Checked then
           lcodigobarras.Parent := qcoluna
        else
           lcodigobarras.Parent := painel;

        if rdescricao.Checked then
           ldescricao.Parent := qcoluna
        else
           ldescricao.Parent := painel;

        if rfabricante.Checked then
           lfabricante.Parent := qcoluna
        else
           lfabricante.Parent := painel;

        if rvrunit.Checked then
           lvrunit.Parent := qcoluna
        else
           lvrunit.Parent := painel;

        if rvrvenda.Checked then
           lvrvarejo.Parent := qcoluna
        else
           lvrvarejo.Parent := painel;

        if rvratacado.Checked then
           lvratacado.Parent := qcoluna
        else
           lvratacado.Parent := painel;

        if rnetiqueta.Checked then
           lnetiqueta.Parent := qcoluna
        else
           lnetiqueta.Parent := painel;

        if rlote.Checked then
           llote.Parent := qcoluna
        else
           llote.Parent := painel;

        if rvalidade.Checked then
           lvalidade.Parent := qcoluna
        else
           lvalidade.Parent := painel;


        if rimpempresa.Checked then
           lempresa.Parent := qcoluna
        else
           lempresa.Parent := painel;

        if rimpempresaL.Checked then
           lempresal.Parent := qcoluna
        else
           lempresal.Parent := painel;

        if rimprodape.Checked then
           lrodape.Parent := qcoluna
        else
           lrodape.Parent := painel;

        if Rimpbarra.Checked then
           barras.Parent := qcoluna
        else
           barras.Parent := painel;

end;

procedure Tfetqprod.DBCtrlGrid1Click(Sender: TObject);
begin
        criagradeExecute(self);
end;

procedure Tfetqprod.btndelitemClick(Sender: TObject);
begin
          abortaacao(tabela,nil,'codigo','','','','',0);

        if msg('',1) then  begin
             tabela.cancel;
             tabela.Delete;
             tabela.cancel;
          end;   
             edescricao.SetFocus;

end;

procedure Tfetqprod.etextorodapeExit(Sender: TObject);
begin
        keypreview := true;
end;

procedure Tfetqprod.SpeedButton1Click(Sender: TObject);
var
  i: integer;
begin

  tbg.edit;

  for i := 0 to componentcount - 1 do
    if Components[i] is tdbedit then
       if tdbedit(Components[i]).Focused then
          tbg[tdbedit(Components[i]).DataField] := tbg.fieldbyname(tdbedit(Components[i]).DataField).AsFloat +1;

  configexecute(self);

end;

procedure Tfetqprod.SpeedButton2Click(Sender: TObject);
var
  i: integer;
begin

  tbg.edit;

  for i := 0 to componentcount - 1 do
    if Components[i] is tdbedit then
       if tdbedit(Components[i]).Focused then
          tbg[tdbedit(Components[i]).DataField] := tbg.fieldbyname(tdbedit(Components[i]).DataField).AsFloat -1;

  configexecute(self);
end;

procedure Tfetqprod.FormCreate(Sender: TObject);
begin
    if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\menu3.jpg')) then
      imagepanel('imagepeca', altop, panel1, (PChar(ExtractFilePath(ParamStr(0)) + 'imagem\menu3.jpg')), nil);


        if fileexists (servpath+ 'imagem\etqG.cds') then begin
              tbg.FileName :=servpath + 'imagem\etqG.cds';

              try
                 tbg.open;

              // se der erro
              except
                deletefile(servpath + 'imagem\etqG.cds');
                close;
              end;

           end
           else begin

              tbg.CreateDataSet;
              tbg.open;

        end;

           if fileexists (servpath + 'imagem\etqProd.cds') then begin
              tabela.FileName :=servpath + 'imagem\etqProd.cds';

              try
                 tabela.open;

              // se der erro
              except
                deletefile(servpath + 'imagem\etqG.cds');
                close;
              end;



           end
           else begin
              tabela.CreateDataSet;
              tabela.open;
           end;

           if tbg.RecordCount <=0 then
              desativar(fetqprod);

end;

procedure Tfetqprod.SpeedButton3Click(Sender: TObject);
var
st:string;
begin

        st :='2';
        if inputquery('Dividir o preço', 'Dividir em quantas vezes?', st) then else abort;

        if StrIsinteger(st) = False then
        begin
           Application.MessageBox('O valor digitado não é um número inteiro válido!',
                                  'Erro', 0 + MB_ICONerror);
           abort;
        end;

        tabela.Edit;
        tabela['dividir'] := st;
        tabela.Post;
end;

procedure Tfetqprod.ldataBeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
      if  tbitem['codigo'] <> null then
         text := formatdatetime('ddmmyy',tabela.fieldbyname('data').AsDateTime);

end;

procedure Tfetqprod.qcolunaBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
        if tbitem['codigo'] = null then begin
          lempresal.picture := nil;
          lempresa.Caption := '' ;
        end else begin
          lempresal.picture := fmenu.imagelogo.picture;
          lempresa.Caption := fantasiaempresa ;
        end;  

end;

end.

