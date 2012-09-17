unit ucadg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, ActnList, DBCtrls, ExtDlgs,  zlib,
  Inifiles,jpeg,RLReport, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,shellapi,
  DB, DBClient, Provider, RLBoleto, RLFilters, RLPDFFilter, RLSaveDialog,
  ComCtrls, Spin;



type
  Tfcadg = class(TForm)
    ds: TDataSource;
    panel2: TPanel;
    ActionList1: TActionList;
    elocalizar: TEdit;
    refazcombo: TAction;
    filtro: TAction;
    tc: TAction;
    image: TAction;
    litem: TLabel;
    tabela: TZQuery;
    menu: TPopupMenu;
    Deletados1: TMenuItem;
    btnnovo: TSpeedButton;
    btneditar: TSpeedButton;
    btnreplicar: TSpeedButton;
    btnapagar: TSpeedButton;
    btnfiltro: TSpeedButton;
    btnanotacoes: TSpeedButton;
    btnimprimir: TSpeedButton;
    btnmenu: TSpeedButton;
    llocalizar: TLabel;
    tgrade: TAction;
    Label1: TLabel;
    rvisualiza: TCheckBox;
    vimage: TDBImage;
    opendialog: TOpenPictureDialog;
    Divisao1: TMenuItem;
    EMail1: TMenuItem;
    Vida1: TMenuItem;
    replicar: TAction;
    CadastrodeAssunto1: TMenuItem;
    rativo: TRadioGroup;
    CadastrarGrupo1: TMenuItem;
    pcliente: TPanel;
    ll5: TLabel;
    l6: TDBText;
    ll6: TLabel;
    l8: TDBText;
    ll1: TLabel;
    l1: TDBText;
    l2: TDBText;
    ll2: TLabel;
    ll9: TLabel;
    l3: TDBText;
    ll3: TLabel;
    l9: TDBText;
    ll4: TLabel;
    l4: TDBText;
    Oqueoclienteconsome1: TMenuItem;
    CadastrodeAnimais1: TMenuItem;
    Cadastrodeequipamentos1: TMenuItem;
    ipoCliente1: TMenuItem;
    StatusCliente1: TMenuItem;
    CadastrodeFunes1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    gravasite: TAction;
    gentilgrava: TAction;
    gentilaltera: TAction;
    mod100: TAction;
    Label2: TLabel;
    Label8: TLabel;
    ll7: TLabel;
    l5: TDBText;
    ll8: TLabel;
    l7: TDBText;
    pcontagem: TPanel;
    DBGrid2: TDBGrid;
    rqtd: TRadioGroup;
    GroupBox1: TGroupBox;
    btnfechar: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    rcontagem: TCheckBox;
    N5: TMenuItem;
    ContagedeEstoque1: TMenuItem;
    geraentrada: TAction;
    contagem: TAction;
    AlterarValores1: TMenuItem;
    EstoquedasFiliais1: TMenuItem;
    Promoodoproduto1: TMenuItem;
    RelatriodeAcertodeEstoquesadas1: TMenuItem;
    Curvaabc1: TMenuItem;
    Listadepreos1: TMenuItem;
    Consumidores1: TMenuItem;
    Fornecedores1: TMenuItem;
    rsemelhante: TCheckBox;
    recpg: TAction;
    recpgcampos: TAction;
    FormasPgto1: TMenuItem;
    totrecpg: TAction;
    tbgrafico: TClientDataSet;
    provedor: TDataSetProvider;
    grafico: TAction;
    IncluirAlterarCEP1: TMenuItem;
    N1: TMenuItem;
    municipioibge: TMenuItem;
    Montagemdoproduto1: TMenuItem;
    mod101_102: TAction;
    mod101_: TAction;
    Cadastrarunidademedida1: TMenuItem;
    CadastrarSubGrupo1: TMenuItem;
    N6: TMenuItem;
    mrctipoconta: TMenuItem;
    mrcposicaoconta: TMenuItem;
    Panel1: TPanel;
    psemelhante: TPanel;
    Panel6: TPanel;
    Label30: TLabel;
    Label29: TLabel;
    grades: TDBGrid;
    grade: TDBGrid;
    ssemelhante: TZQuery;
    dssemelhante: TDataSource;
    mcedente: TMenuItem;
    Itensdacompra1: TMenuItem;
    mod0: TAction;
    LetradeDesconto1: TMenuItem;
    ltimasCompras1: TMenuItem;
    ICMS1: TMenuItem;
    Mostraracerto1: TMenuItem;
    mod11: TAction;
    qrecibo: TRLReport;
    RLBand1: TRLBand;
    lnome: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    ldtextenso: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel16: TRLLabel;
    RLDBMemo3: TRLDBMemo;
    RLDBMemo4: TRLDBMemo;
    RLDraw2: TRLDraw;
    m1: TRLAngleLabel;
    lnumero: TRLAngleLabel;
    lvalor: TRLAngleLabel;
    RLDraw1: TRLDraw;
    lextenso: TRLMemo;
    Passarocheque1: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Configurarcomisso1: TMenuItem;
    f4: TAction;
    NatOperao1: TMenuItem;
    Voltarochequeparanopassado1: TMenuItem;
    Substituirstrings1: TMenuItem;
    mod103: TAction;
    Dependentes1: TMenuItem;
    RLSaveDialogSetup1: TRLSaveDialogSetup;
    RLPDFFilter1: TRLPDFFilter;
    mod31: TAction;
    Gerararquivoderemessa1: TMenuItem;
    arquivoderetorno1: TMenuItem;
    Lancarascontas1: TMenuItem;
    Movimentodoproduto1: TMenuItem;
    Atualizarfiliais1: TMenuItem;
    Relatrioderetornos1: TMenuItem;
    BitBtn1: TBitBtn;
    mod32: TAction;
    Importardados1: TMenuItem;
    btelaborar: TSpeedButton;
    Veculosmensal1: TMenuItem;
    Cadastrarfabricante1: TMenuItem;
    Cadastrarmarca1: TMenuItem;
    Atualizarcentral1: TMenuItem;
    formataprod: TAction;
    dsparametro: TDataSource;
    dsrelatfinal: TDataSource;
    qcalculo: TRLReport;
    RLBand5: TRLBand;
    RLPanel3: TRLPanel;
    RLAngleLabel2: TRLAngleLabel;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel59: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLLabel37: TRLLabel;
    RLDBText26: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLLabel38: TRLLabel;
    MP_: TRLLabel;
    RLPanel6: TRLPanel;
    m1_: TRLLabel;
    gnome: TRLLabel;
    gfone: TRLLabel;
    gendereco: TRLMemo;
    i1: TImage;
    Contrato1: TMenuItem;
    N4: TMenuItem;
    N10: TMenuItem;
    mod12: TAction;
    padesivo: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    DBGrid3: TDBGrid;
    Label9: TLabel;
    Label7: TLabel;
    ltotal: TLabel;
    valoradesivo: TAction;
    tbqtd: TZQuery;
    dsqtd: TDataSource;
    tbcor: TZQuery;
    dscor: TDataSource;
    adcorte: TCheckBox;
    adnumerado: TCheckBox;
    adresina: TCheckBox;
    adcorte_: TLabel;
    adnumerado_: TLabel;
    adresina_: TLabel;
    dsprodgrade: TDataSource;
    pgradepreco: TDBGrid;
    tbprodgrade: TZQuery;
    Imprimirgradepreos1: TMenuItem;
    Label3: TLabel;
    eqtd: TSpinEdit;
    Alteraracontadedestino1: TMenuItem;
    Cdigoadicional1: TMenuItem;
    llobs: TLabel;
    lobs: TDBMemo;
    Bevel1: TBevel;
    Documentos1: TMenuItem;
    mod104: TAction;
    Cadastrarconvnio1: TMenuItem;
    contagem1: TMenuItem;
    Clienteadicional1: TMenuItem;
    Baixartudo1: TMenuItem;

    procedure salario;
    procedure atuasaldo(i:integer);
    procedure labrodape(cap,cp:string);
    function pnome(Texto:String):String;
    function snome(Texto:String):String;
    function estadouf(Ent: string): string;
    function ufestado(Ent: string): string;
    function ntbvinc(Ent: string): string;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure elocalizarChange(Sender: TObject);
    procedure elocalizarKeyPress(Sender: TObject; var Key: char);
    procedure filtroExecute(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure tcExecute(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure btnfiltroClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure elocalizarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Deletados1Click(Sender: TObject);
    procedure gradeTitleClick(Column: TColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnreplicarClick(Sender: TObject);
    procedure btnanotacoesClick(Sender: TObject);
    procedure btnmenuClick(Sender: TObject);
    procedure tgradeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure vimageClick(Sender: TObject);
    procedure tabelaAfterScroll(DataSet: TDataSet);
    procedure imageExecute(Sender: TObject);
    procedure Divisao1Click(Sender: TObject);
    procedure EMail1Click(Sender: TObject);
    procedure Vida1Click(Sender: TObject);
    procedure replicarExecute(Sender: TObject);
    procedure CadastrodeAssunto1Click(Sender: TObject);
    procedure CadastrarGrupo1Click(Sender: TObject);
    procedure ll4Click(Sender: TObject);
    procedure Oqueoclienteconsome1Click(Sender: TObject);
    procedure CadastrodeAnimais1Click(Sender: TObject);
    procedure Cadastrodeequipamentos1Click(Sender: TObject);
    procedure ipoCliente1Click(Sender: TObject);
    procedure StatusCliente1Click(Sender: TObject);
    procedure rativoClick(Sender: TObject);
    procedure CadastrodeFunes1Click(Sender: TObject);
    procedure gravasiteExecute(Sender: TObject);
    procedure gentilgravaExecute(Sender: TObject);
    procedure gentilalteraExecute(Sender: TObject);
    procedure mod100Execute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ContagedeEstoque1Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure geraentradaExecute(Sender: TObject);
    procedure btnfecharClick(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure contagemExecute(Sender: TObject);
    procedure AlterarValores1Click(Sender: TObject);
    procedure EstoquedasFiliais1Click(Sender: TObject);
    procedure Promoodoproduto1Click(Sender: TObject);
    procedure RelatriodeAcertodeEstoquesadas1Click(Sender: TObject);
    procedure Curvaabc1Click(Sender: TObject);
    procedure Listadepreos1Click(Sender: TObject);
    procedure Consumidores1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure recpgExecute(Sender: TObject);
    procedure recpgcamposExecute(Sender: TObject);
    procedure FormasPgto1Click(Sender: TObject);
    procedure gradeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure totrecpgExecute(Sender: TObject);
    procedure graficoExecute(Sender: TObject);
    procedure rsemelhanteClick(Sender: TObject);
    procedure IncluirAlterarCEP1Click(Sender: TObject);
    procedure municipioibgeClick(Sender: TObject);
    procedure mod101_102Execute(Sender: TObject);
    procedure mod101_Execute(Sender: TObject);
    procedure Cadastrarunidademedida1Click(Sender: TObject);
    procedure CadastrarSubGrupo1Click(Sender: TObject);
    procedure mrcposicaocontaClick(Sender: TObject);
    procedure mrctipocontaClick(Sender: TObject);
    procedure mcedenteClick(Sender: TObject);
    procedure gradeDblClick(Sender: TObject);
    procedure Itensdacompra1Click(Sender: TObject);
    procedure mod0Execute(Sender: TObject);
    procedure LetradeDesconto1Click(Sender: TObject);
    procedure ltimasCompras1Click(Sender: TObject);
    procedure ICMS1Click(Sender: TObject);
    procedure Mostraracerto1Click(Sender: TObject);
    procedure mod11Execute(Sender: TObject);
    procedure qreciboBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Passarocheque1Click(Sender: TObject);
    procedure Configurarcomisso1Click(Sender: TObject);
    procedure f4Execute(Sender: TObject);
    procedure NatOperao1Click(Sender: TObject);
    procedure Voltarochequeparanopassado1Click(Sender: TObject);
    procedure Substituirstrings1Click(Sender: TObject);
    procedure lobsDblClick(Sender: TObject);
    procedure mod103Execute(Sender: TObject);
    procedure Dependentes1Click(Sender: TObject);
    procedure mod31Execute(Sender: TObject);
    procedure Gerararquivoderemessa1Click(Sender: TObject);
    procedure arquivoderetorno1Click(Sender: TObject);
    procedure Lancarascontas1Click(Sender: TObject);
    procedure Movimentodoproduto1Click(Sender: TObject);
    procedure Atualizarfiliais1Click(Sender: TObject);
    procedure Relatrioderetornos1Click(Sender: TObject);
    procedure mod32Execute(Sender: TObject);
    procedure Importardados1Click(Sender: TObject);
    procedure btelaborarClick(Sender: TObject);
    procedure Veculosmensal1Click(Sender: TObject);
    procedure Cadastrarfabricante1Click(Sender: TObject);
    procedure Cadastrarmarca1Click(Sender: TObject);
    procedure Atualizarcentral1Click(Sender: TObject);
    procedure formataprodExecute(Sender: TObject);
    procedure RLDBText33BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText16BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText17BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText18BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText19BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText20BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText21BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText22BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText23BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText24BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText34BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText25BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure RLDBText29BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure qcalculoBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Contrato1Click(Sender: TObject);
    procedure mod12Execute(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure valoradesivoExecute(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure tbqtdAfterScroll(DataSet: TDataSet);
    procedure tbcorAfterScroll(DataSet: TDataSet);
    procedure adcorteClick(Sender: TObject);
    procedure Label30Click(Sender: TObject);
    procedure Label29Click(Sender: TObject);
    procedure pgradeprecoDblClick(Sender: TObject);
    procedure Imprimirgradepreos1Click(Sender: TObject);
    procedure eqtdChange(Sender: TObject);
    procedure Alteraracontadedestino1Click(Sender: TObject);
    procedure Cdigoadicional1Click(Sender: TObject);
    procedure Documentos1Click(Sender: TObject);
    procedure mod104Execute(Sender: TObject);
    procedure Cadastrarconvnio1Click(Sender: TObject);
    procedure Clienteadicional1Click(Sender: TObject);
    procedure Baixartudo1Click(Sender: TObject);
    procedure ll5DblClick(Sender: TObject);
    procedure ll3DblClick(Sender: TObject);
  private
  Dvenda,dcompra, PN,PA,PD,PC, modulo, ind, tbfolow, from,link,
  Tipocontad, Contacontabild,Tipocontac, Contacontabilc, Tipocontab, Contacontabilb:string;
  mgp,corte, numerado, resina:double;
  tblParametros,tblRelatFinal:tzquery;
  multempresa:boolean;


    { Private declarations }
  public
   nometb,script,criterio,mp:string;
   ficha,rep, contato, site, nfe, cfor, corig,fam:boolean;
   nummodulo,lab:integer;
   carencia,juro,juro2,djuro:double;

   constructor Create(AOwner: TComponent; script_, ind_:string; modulo_:integer); reintroduce;

    { Public declarations }
  end;

var
  fcadg: Tfcadg;


implementation

uses udm,mapimail,  funcoes, umanu,  ufiltrocad, uimagem,  ucadgv, uimp, ulista,  uclienteadicional;

{$R *.dfm}



constructor Tfcadg.Create(AOwner: TComponent; script_, ind_:string;modulo_:integer);
var
i:integer;
ini:tinifile;

procedure rodapeclifor;
var
fone:string;
begin
                 if nummodulo=7 then fone:= 'Fonevendedor'
                                else fone:= 'fone2';

                 labrodape('Data Cadastro','data');
                 labrodape('Ult. Movim','ultimacompra');
                 labrodape('Débito','saldo');
                 labrodape('Crédito','credito');

                 if nummodulo=4 then begin
                    labrodape('Avulsa','avulsa');
                    labrodape('Limite','limitecredito');
                    labrodape('Fone','fone');

                 end else begin
                    labrodape('Fone','fone');
                    labrodape('Fone2',fone);
                    labrodape('RG/IE','ie');
                 end;

                 labrodape('CPF/CNPJ','cnpj');
                 labrodape('E-MAIL','email');
                 lobs.DataField :='obs';


end;


procedure prod;
begin
                 lobs.DataField :='aplicacao';
                 llobs.Caption := 'Aplicação';
                 labrodape('Últ. Venda','ultimavenda');
                 labrodape('Últ. Compra','ultimacompra');
                 labrodape('Peso','peso');
                 labrodape('ICMS','imposto');
                 labrodape('IPI','ipi');
                 labrodape('Estoque','estoque');
                 labrodape('Est. Mín.','minimo');
                 labrodape('CFOP','cfop');
                 labrodape('CST','cst');
//                 prodape.Height := prodape.Height*2;
end;


begin


          Inherited Create(AOwner);


          lab:=1;
          btnnovo.Glyph := btcadastrar;
          btneditar.Glyph := btalterar;
          btnreplicar.Glyph := btreplicar;
          btnapagar.Glyph := btapagar;
          btnfiltro.Glyph := btfiltro;
          btnanotacoes.Glyph := btanotacoes;
          btnimprimir.Glyph := btimprimir;
          btnmenu.Glyph := btmenu;


          if copy(ind_,1,1)='#' then begin
             if modulo_ =4 then
                contato := true;
             ind_ := copy(ind_,2,100);
          end;


          fdm.tbconfig.Open;

          multempresa := fdm.tbconfig['multempresa'] = 'S';
          site := fdm.tbconfig['site'] = 'S';
          Ini := TInifile.Create(conf_local);
          nfe := Ini.ReadString('dir', 'caminho', '') <> '';
          ini.Free;

          nummodulo := modulo_;

          if nummodulo in[104] then btnreplicar.Caption := 'Ficha (F4)';

          if nummodulo in[9,10] then begin
             Tipocontad    := nomelink('r.codconta','chave', 'descricao','tbconta','Tipoconta');
             Contacontabild:= nomelink('r.codconta','chave', 'contacontabil','tbconta','Contacontabil');
             Tipocontac    := nomelink('r.codconta2','chave', 'descricao','tbconta','Tipoconta_C');
             Contacontabilc:= nomelink('r.codconta2','chave', 'contacontabil','tbconta','Contacontabil_C');
             Tipocontab    := nomelink('r.codconta3','chave', 'descricao','tbconta','Tipoconta_B');
             Contacontabilb:= nomelink('r.codconta3','chave', 'contacontabil','tbconta','Contacontabil_B');
          end;


          if (nummodulo=5) or(nummodulo=20) then begin
             for i :=1 to fdm.tbconfig.fieldbyname('decimaisvenda').AsInteger do
                 Dvenda := Dvenda + '0';

             for i :=1 to fdm.tbconfig.fieldbyname('decimaiscompra').AsInteger do
                 Dcompra := Dcompra + '0';
          end;
                              
          Cadastrarconvnio1.Visible := nummodulo in[104];
          Cadastrarfabricante1.Visible := nummodulo in[5,20];
          Cadastrarmarca1.Visible := nummodulo in[5,20];
          Cdigoadicional1.Visible := nummodulo in[5,20];
          Contrato1.Visible := nummodulo in[4];

          try
          Veculosmensal1.Visible := (fdm.tbconfig.FieldByName('estacionamento').AsString = 'S') and (nummodulo in[4]);
          except Veculosmensal1.Visible := false end;
          btelaborar.Visible := (nummodulo in[5]) and (chofab);
          Importardados1.Visible := (nummodulo in[5]) and (responsavel = '13.097.477/0001-89');
          Relatrioderetornos1.Visible := nummodulo in[4];
          Clienteadicional1.Visible := (nummodulo in[4]) and (responsavel = 'FABIO VITRINE');
          Atualizarfiliais1.Visible := nummodulo in[5,20,4,7];
          Documentos1.Visible := nummodulo in[4,7,6];
          Gerararquivoderemessa1.Visible := nummodulo in[9];
          arquivoderetorno1.Visible := nummodulo in[9];
          Configurarcomisso1.Visible := nummodulo in[6];
          IncluirAlterarCEP1.Visible := nummodulo in[4,7,6,103];
          municipioibge.Visible := nummodulo in[4,7,6];
          Atualizarcentral1.Visible := (nummodulo in[4]) and (fileexists(servpath + 'central.txt'));
          Lancarascontas1.Visible := (nummodulo in[4]) and (responsavel = '562.668.395-04');

          CadastrodeAnimais1.Visible := (fdm.tbconfig['tipoempresa'] = 'P') and (nummodulo=4);
          Cadastrodeequipamentos1.Visible := ((fdm.tbconfig['tipoempresa'] = 'E') or
                                            (fdm.tbconfig['tipoempresa'] = 'I') or
                                            (fdm.tbconfig['tipoempresa'] = 'A'))and (nummodulo=4);

          //5=produto 20 materiaprima
          Montagemdoproduto1.Visible := ((nummodulo=5) or (nummodulo=101)) and (fdm.tbconfig['materiaprima']='S');
          fdm.tbconfig.close;
          Substituirstrings1.Visible := (nummodulo=5) or(nummodulo=20);
          ltimasCompras1.Visible := (nummodulo=5) or(nummodulo=20);
          LetradeDesconto1.Visible := (nummodulo=5) or(nummodulo=20);
          ICMS1.Visible := (nummodulo=5) or(nummodulo=20);
          CadastrarSubGrupo1.Visible := nummodulo in[5,20,101];

          Listadepreos1.Visible := (nummodulo=5) or(nummodulo=20);
          Consumidores1.Visible := (nummodulo=5) or(nummodulo=20);
          Fornecedores1.Visible := (nummodulo=5) or(nummodulo=20);
          EstoquedasFiliais1.Visible := (nummodulo=5) or(nummodulo=20);
          AlterarValores1.Visible := (nummodulo=5) or(nummodulo=20);
          ContagedeEstoque1.Visible :=  (nummodulo=5) or(nummodulo=20);// or (nummodulo=102)or (nummodulo=101) ;
          RelatriodeAcertodeEstoquesadas1.Visible :=  (nummodulo=5) or(nummodulo=20);
          NatOperao1.Visible :=  (nummodulo=5) or(nummodulo=20);
          Promoodoproduto1.Visible :=  (nummodulo=5) or(nummodulo=20);
          Movimentodoproduto1.Visible :=  (nummodulo in [5,20]);
          Cadastrarunidademedida1.Visible :=   (nummodulo=5) or(nummodulo=20)or(nummodulo=101) or(nummodulo=102);
          FormasPgto1.Visible := nummodulo in[7];
          Curvaabc1.Visible := nummodulo in[4,5,21,7];
          Voltarochequeparanopassado1.Visible :=  nummodulo =9;
          Passarocheque1.Visible :=  nummodulo =9;
          //Deletados1.Visible :=  (nummodulo <>9) and (nummodulo <>10);
          Mostraracerto1.Visible :=  (nummodulo =9) or (nummodulo =10);
          Divisao1.Visible := nummodulo =7;
          EMail1.Visible := nummodulo in[4,6,7,9];
          Vida1.Visible := nummodulo in[4,6,7];
          CadastrodeAssunto1.Visible := nummodulo in[4,6,7,103];
          CadastrarGrupo1.Visible  := nummodulo =18;
          Oqueoclienteconsome1.Visible := nummodulo = 4;
          ipoCliente1.Visible := (nummodulo = 4) or (nummodulo = 103);
          StatusCliente1.Visible := nummodulo in [4,104];
          CadastrodeFunes1.Visible := nummodulo = 6;

          mrctipoconta.Visible := nummodulo in[9,10];
          mrcposicaoconta.Visible := nummodulo in[9,10];
          Alteraracontadedestino1.Visible := nummodulo in[9,10];
          mcedente.visible := nummodulo in[9];
          Itensdacompra1.Visible := nummodulo in[9,10];
          Dependentes1.Visible := nummodulo in[103];
          //associarcontas1.Visible := nummodulo in[103];
          Imprimirgradepreos1.Visible := nummodulo in[5];

          //pg e recbto
          if nummodulo in[9,10] then  begin
             rsemelhante.Caption := 'Outros dados';
             btnreplicar.Caption := 'Baixar (F4)';
             btnanotacoes.Caption:= 'Estornar (F7)';
             rativo.Show;
             btnnovo.Caption := 'Nova Conta (F2)';
          end;
          //recbto
          if nummodulo in[9] then begin
             rativo.Items.Add('Cheque');
             rativo.Items.Add('Devolvido');
             rativo.Items.Add('Passado');
             rativo.Items.Add('Cartão');
             rativo.Items.Add('A prazo');
             rativo.Items.Add('Todos');
             rativo.Columns :=6;
             rativo.ItemIndex :=5;
          end;
          //pg
          if nummodulo in[10] then begin
             rativo.Items.Add('Cheque');
             rativo.Items.Add('Cartão');
             rativo.Items.Add('A prazo');
             rativo.Items.Add('Todos');
             rativo.Columns :=4;
             rativo.ItemIndex :=3;
          end;

          modulo := capmodulo(inttostr(nummodulo));
          nometb := captb(inttostr(nummodulo));

          case modulo_ of
               0:caption := 'DADOS DA EMPRESA';

               4:begin
                 caption := 'CADASTRO DE CLIENTES';
                 tbfolow :='tbfollowup';
                 vida1.Caption := 'Vida Cliente';

                 rodapeclifor;
               end;

               5:begin
                 caption := 'CADASTRO DE PRODUTOS';
                 prod;

                 padesivo.Height := 164;

                 pgradepreco.Height := 101;
                 pgradepreco.Visible := gradepreco;
                 tbprodgrade.Active := gradepreco;
                 Imprimirgradepreos1.Visible := gradepreco;

                 if gradepreco then begin
                    ncol:=0;
                    criacoluna(pgradepreco,'Descricao','Descrição (Grade de preços)',250);
                    criacoluna(pgradepreco,'VrCompra','Vr Compra',70);
                    criacoluna(pgradepreco,'Valor','Vr Varejo',70);
                    criacoluna(pgradepreco,'Estoque','Estoque',50);
                    (tbprodgrade.fieldbyname('valor')  as tfloatfield).displayformat := '###,##0.000';
                    (tbprodgrade.fieldbyname('vrcompra')  as tfloatfield).displayformat := '###,##0.000';
                 end;

                 if tipoempresa <> '1' then rsemelhante.Show
                                       else padesivo.Show;

                 if tipoempresa = '1' then begin
                    tbcor.Open;
                    tbqtd.Open;
                    (tbqtd.fieldbyname('valor')  as tfloatfield).displayformat := '###,##0.0000';
                    (tbqtd.fieldbyname('vrcorte')  as tfloatfield).displayformat := '###,##0.0000';

                    Ini := TInifile.Create(conf_global);
                    corte    := tbqtd.fieldbyname('vrcorte').AsFloat; //Ini.ReadFloat( 'adesivoc','corte',0);
                    numerado := Ini.ReadFloat( 'adesivoc','numerado',0);
                    resina   := Ini.ReadFloat( 'adesivoc','resina',0);
                    ini.Free;

                    adcorte_.Caption := '+' + format('%n',[tbqtd.fieldbyname('vrcorte').AsFloat])+' R$';
                    adnumerado_.Caption := '+' + format('%n',[numerado])+'%';
                    adresina_.Caption := '+' + format('%n',[resina])+'%';

                 end;

               end;



               7:begin
                 if responsavel = 'SINDICATO' then  caption :=  'CADASTRO DE EMPRESAS'
                 else                               caption :=  'CADASTRO DE FORNECEDOR';
                 tbfolow :='tbfollowupf';
                 lobs.DataField :='obs';
                 vida1.Caption := 'Vida Fornecedor';
                 rodapeclifor;
               end;


               6:begin
                 caption :=  'CADASTRO DE FUNCIONÁRIO';
                 tbfolow :='tbfollowupt';
                 lobs.DataField :='obs';
                 vida1.Caption := 'Vida Funcionário';
               end;

               9:begin
                 caption :=  'MANUTENÇÃO DE CONTAS A RECEBER/RECEBIDAS';
                 lobs.DataField :='obs';

                 rsemelhante.show;
                 fdm.tbconfig.open;
                 juro := fdm.tbconfig.fieldbyname('juro').AsFloat;
                 juro2 := fdm.tbconfig.fieldbyname('jurospc').AsFloat;

                 if juro2 <=0 then
                    juro2 := juro;

                 carencia := fdm.tbconfig.fieldbyname('carencia').AsFloat;
                 djuro := fdm.tbconfig.fieldbyname('djuro').AsFloat;
                 fdm.tbconfig.close;


                 labrodape('Tipo Conta','tipoconta');
                 labrodape('Tipo','Tipo');
                 labrodape('Débito Cli','DebCliente');
                 labrodape('Emissão','dtemissao');
                 labrodape('Avulsa','Avulsa');
                 labrodape('Posição Conta','posicaoconta');
                 labrodape('Banco','Banco');
                 labrodape('Agência','Agencia');
                 labrodape('Conta','Conta');
               end;


               10:begin
                 caption :=  'MANUTENÇÃO DE CONTAS A PAGAR/PAGAS';
                 lobs.DataField :='obs';

                 rsemelhante.show;
                 labrodape('Emissão','dtemissao');
                 labrodape('Vencto','dtvencimento');
                 labrodape('Tipo Conta','tipoconta');
                 labrodape('Conta Contábil','contacontabil');
                 labrodape('Tipo','Tipo');
                 labrodape('Débito For','DebFor');
                 labrodape('Banco','Banco');
                 labrodape('Agência','Agencia');
                 labrodape('Conta','Conta');

               end;


               11:
                 caption :=  'RECIBO';


               18:begin
                // if application.Title ='Empresarial_Net' then
                 caption :=  'CADASTRO DE SERVIÇO';
                 lobs.DataField :='obs';
                 tbfolow :='tbfollowups';
               end;


               25:begin
                 caption :=  'CADASTRO DE CEDENTE';
               end;


               100:begin
                 caption :=  'Emissão de OS';
               end;

               101:begin
                 caption :=  'Cadastro de Produto';
               end;

               102:begin
                 caption :=  'Cadastro de Matéria-Prima';
               end;

               103:begin
                 caption :=  'Cadastro de Sócios';
                 tbfolow :='tbfollowup';
               end;

               20:begin
                 caption := 'CADASTRO DE MATÉRIA-PRIMA';
                 mp:='mp';
                 prod;
               end;

               33:caption :='Salários';

               104: caption :='Cadastro de clientes';


          end;


          if modulo = '' then  modulo := 'cadastro';

          script := script_;

          if (nummodulo = 4) and (script = '') then script := Cadcliente;

          ind := ind_;
          tabela.IndexFieldNames := ind;

          imagepanel('imagemenu1', altop, panel2, '',menucad);
          imagepanel('im2', altop, pcliente, '',menucad);

          elocalizar.OnExit:=fdm.Exitedit;
          elocalizar.Onenter:=fdm.Enteredit;

          if modulo_ in[5,20] then begin
             selecione('select count(chave)as qtd from tbfamilia'+mp);
             fam := sqlpub.FieldByName('qtd').AsFloat >1;
             sqlpub:=nil;
          end;
          formataprodExecute(self);


end;

procedure Tfcadg.atuasaldo(i:integer);
var st,campo:string;
limite:double;
begin
          if nummodulo = 4 then campo := 'saldo';
          if nummodulo = 9 then campo := 'DebCliente';

          if i = 1 then saldocliente(tabela.fieldbyname('codigo').AsString);
          if i = 2 then saldoavulsa(tabela.fieldbyname('codigo').AsString);

          st := tabela.fieldbyname('chave').AsString;
          tabela.RevertRecord;
          tabela.Locate('chave',st,[]);

          selecione('select limitecredito from tbcliente where codigo = ' + quotedstr(tabela.fieldbyname('codigo').AsString));

          if sqlpub.fieldbyname('limitecredito').asfloat >0 then
             limite := sqlpub.fieldbyname('limitecredito').asfloat -
                       tabela.fieldbyname(campo).asfloat -
                       tabela.fieldbyname('avulsa').asfloat
          else limite :=0;


          msg('Conta  /  Cheque      =    ' + format('%n',[tabela.fieldbyname(campo).asfloat])+#13+
              'Venda  Avulsa      =    ' + format('%n',[tabela.fieldbyname('avulsa').asfloat])+#13+
              'Limite Crédito    =    ' + format('%n',[sqlpub.fieldbyname('limitecredito').asfloat])+#13+
              '-----------------------------------------'+#13+
              'Limite Restante      =    ' + format('%n',[limite]) ,0);
          sqlpub := nil;
end;


procedure Tfcadg.salario;
var
loc:string;
begin
        if nummodulo in [33] then begin
           loc := tabela.fieldbyname('chave').asstring;
           periodo2('salario',loc,'','','','',210,790,1);
           filtroexecute(self);
           tabela.Locate('chave',loc,[]);
           abort;
        end;

end;


function Tfcadg.ntbvinc(Ent: string): string;
begin
           ent := lowercase(ent);
           if (ent = 'nomecurto') or
              (ent = 'endereco') or
              (ent = 'numero') or
              (ent = 'complemento') or
              (ent = 'bairro') or
              (ent = 'municipio') or
              (ent = 'cep') or
              (ent = 'uf') or
              (ent = 'enderecocobranca') or
              (ent = 'numerocobranca') or
              (ent = 'complementocobranca') or
              (ent = 'bairrocobranca') or
              (ent = 'municipiocobranca') or
              (ent = 'cepcobranca') or
              (ent = 'ufcobranca') or
              (ent = 'cnpj') or
              (ent = 'ie') or
              (ent = 'ddd') or
              (ent = 'fone') or
              (ent = 'fax') or
              (ent = 'fone2') or
              (ent = 'fone3') then

              result := 'c.'
              else
              result := 'r.';
end;

procedure tfcadg.labrodape(cap,cp:string);
begin
     pcliente.Show;
     case lab of

          1: begin
                ll1.show;
                ll1.Caption := cap;
                l1.DataField := cp;
             end;

          2: begin
                ll2.show;
                ll2.Caption := cap;
                l2.DataField := cp;
             end;

          3: begin
                ll3.show;
                ll3.Caption := cap;
                l3.DataField := cp;
             end;

          4: begin
                ll4.show;
                ll4.Caption := cap;
                l4.DataField := cp;
             end;

          5: begin
                ll5.show;
                ll5.Caption := cap;
                l5.DataField := cp;
             end;

          6: begin
                ll6.show;
                ll6.Caption := cap;
                l6.DataField := cp;
             end;

          7: begin
                ll7.show;
                ll7.Caption := cap;
                l7.DataField := cp;
             end;

          8: begin
                ll8.show;
                ll8.Caption := cap;
                l8.DataField := cp;
             end;

          9: begin
                ll9.show;
                ll9.Caption := cap;
                l9.DataField := cp;
             end;
     end;

         inc(lab);
end;


function tfcadg.pnome(Texto:String):String;
var
  I,J : Integer;
  t:string;
  st:boolean;
begin
  st:= false;
  I := length(Texto);
  J:=1;
  t:='';

  while J<=I do begin

        if Copy(Texto,J,1)=' ' then
           st := true;

        if not st then
           t:= t + Copy(Texto,J,1);

        inc(j);
  end;

  Result := t;
end;




function tfcadg.snome(Texto:String):String;
var
  I,J : Integer;
  t:string;
  st:boolean;
begin
  st:= false;
  I := length(Texto);
  J:=1;
  t:='';

  while J<=I do begin

        if st then
           t:= t + Copy(Texto,J,1);

        if Copy(Texto,J,1)=' ' then
           st := true;

        inc(j);
  end;

  Result := t;
end;




function tfcadg.ufestado(Ent: string): string;
begin

          ent := lowercase(ent);

               if ent = 'acre' then result := 'AC'
          else if ent = 'alagoas' then result := 'AL'
          else if ent = 'amazonas' then result := 'AM'
          else if ent = 'amapa' then result := 'AP'
          else if ent = 'bahia' then result := 'BA'
          else if ent = 'ceara' then result := 'CE'
          else if ent = 'distrito federal' then result := 'DF'
          else if ent = 'espirito santo' then result := 'ES'
          else if ent = 'goias' then result := 'GO'
          else if ent = 'maranhao' then result := 'MA'
          else if ent = 'minas gerais' then result := 'MG'
          else if ent = 'mato grosso do sul' then result := 'MS'
          else if ent = 'mato grosso' then result := 'MT'
          else if ent = 'para' then result := 'PA'
          else if ent = 'paraiba' then result := 'PB'
          else if ent = 'pernambuco' then result := 'PE'
          else if ent = 'piaui' then result := 'PI'
          else if ent = 'parana' then result := 'PR'
          else if ent = 'rio de janeiro' then result := 'RJ'
          else if ent = 'rio grande do norte' then result := 'RN'
          else if ent = 'rondonia' then result := 'RO'
          else if ent = 'roraima' then result := 'RR'
          else if ent = 'rio grande do sul' then result := 'RS'
          else if ent = 'santa catarina' then result := 'SC'
          else if ent = 'sergipe' then result := 'SE'
          else if ent = 'sao paulo' then result := 'SP'
          else if ent = 'tocantins' then result := 'TO'
          else result := ent;


end;


function tfcadg.estadouf(Ent: string): string;
begin

          ent := lowercase(ent);

               if ent = 'AC' then result := 'acre'
          else if ent = 'AL' then result := 'alagoas'
          else if ent = 'AM' then result := 'amazonas'
          else if ent = 'AP' then result := 'amapa'
          else if ent = 'BA' then result := 'bahia'
          else if ent = 'CE' then result := 'ceara'
          else if ent = 'DF' then result := 'distrito federal'
          else if ent = 'ES' then result := 'espirito santo'
          else if ent = 'GO' then result := 'goias'
          else if ent = 'MA' then result := 'maranhao'
          else if ent = 'MG' then result := 'minas gerais'
          else if ent = 'MS' then result := 'mato grosso do sul'
          else if ent = 'MT' then result := 'mato grosso'
          else if ent = 'PA' then result := 'para'
          else if ent = 'PB' then result := 'paraiba'
          else if ent = 'PE' then result := 'pernambuco'
          else if ent = 'PI' then result := 'piaui'
          else if ent = 'PR' then result := 'parana'
          else if ent = 'RJ' then result := 'rio de janeiro'
          else if ent = 'RN' then result := 'rio grande do norte'
          else if ent = 'RO' then result := 'rondonia'
          else if ent = 'RR' then result := 'roraima'
          else if ent = 'RS' then result := 'rio grande do sul'
          else if ent = 'SC' then result := 'santa catarina'
          else if ent = 'SE' then result := 'sergipe'
          else if ent = 'SP' then result := 'sao paulo'
          else if ent = 'TO' then result := 'tocantins'
          else result := uppercase(ent);


end;


procedure Tfcadg.FormClose(Sender: TObject; var Action: TCloseAction);
begin


      try
         grade.Columns.SaveToFile(substitui(servpath+'imagem/'+inttostr(nummodulo)+'.txt','/','\'));
      except end;


      if ffiltrocad <> nil then   ffiltrocad.Close;
      if fimagem <> nil then   fimagem.Close;

      tabela.Close;

      Release;
      fcadg := nil;

end;

procedure Tfcadg.DBGrid1TitleClick(Column: TColumn);
begin

     indexar(Column, nil,tabela,elocalizar, llocalizar);

end;

procedure Tfcadg.elocalizarChange(Sender: TObject);
begin
        loctabela(nil,tabela,elocalizar);

        if tabela.Active then
           litem.Caption := inttostr(tabela.RecordCount)+ ' Itens';

end;

procedure Tfcadg.elocalizarKeyPress(Sender: TObject; var Key: char);
begin
           if (tabela.fieldbyname(indtz(tabela.IndexFieldNames)).ClassName = 'TIntegerField') or
              (tabela.fieldbyname(indtz(tabela.IndexFieldNames)).ClassName = 'TFloatField')  then
              if not (key in ['0'..'9', #8,',']) then abort;

           if (tabela.fieldbyname(indtz(tabela.IndexFieldNames)).ClassName = 'TDateField')  then
              if not (key in ['0'..'9', #8,'/']) then abort;
end;

procedure Tfcadg.filtroExecute(Sender: TObject);

  procedure refazgrade;
  begin
          if ((nummodulo <> 9) and(nummodulo <> 10)) then
          if fileexists(substitui(servpath+'imagem/'+inttostr(nummodulo)+'.txt','/','\')) then
             try
                grade.Columns.LoadFromFile(substitui(servpath+'imagem/'+inttostr(nummodulo)+'.txt','/','\'));
             except end;
  end;


var
  localizar,filtro,flag,tblink,termfios: string;
  i,j:integer;

begin
        if nummodulo in [38] then flag := '(flag2 <> "D" or flag2 ="0")'//montagem
                             else flag := '(flag  <> "D" or flag is null)';
        link:='';


        //receber e pagar
        if nummodulo in [9,10] then begin
           flag := '(r.flag <> "D" or r.flag is null)';
           tblink := ntbvinc(ind);

           if rsemelhante.Checked then
              link := ' and c.codigo = r.codigo ';

           flag := flag+ ' and r.diferenca > 0 ' +sqlempresa(1,1,'');

           if nummodulo = 9 then
              case rativo.ItemIndex of
                   0: flag := flag + ' and r.ch="S" ' ;
                   1: flag := flag + ' and r.ch="D" ' ;
                   2: flag := flag + ' and r.ch="P" ' ;
                   3: flag := flag + ' and r.ch="C" ' ;
                   4: flag := flag + ' and r.ch is null';
              end;

           if nummodulo = 10 then
              case rativo.ItemIndex of
                   0: flag := flag + ' and r.ch="S" ' ;
                   1: flag := flag + ' and r.ch="C" ' ;
                   2: flag := flag + ' and r.ch is null';
              end;


           //pg e recebe
           recpgcamposexecute(self);


        end;



        tabela.Filtered := false;
        llocalizar.Caption := 'Localizar ' + ind + '(A~Z)';

        filtro := '';

        if (responsavel = '12.347.804/0001-40') and (nummodulo=5) then  termfios :='%';

        localizar:=  quotedstr(termfios + elocalizar.Text + '%');

        filtro := ' where ' + flag + link + ' and ' + tblink + ind + ' like ' + localizar;

        {if nummodulo = 4 then
        if contato then
           filtro := filtro+' and ctp is not null '
        else
           filtro := filtro+ ' and ctp is null ';}


        tabela.sql.Clear;
        if criterio <>'' then filtro := ' where r.chave > 0 ';

        tabela.sql.add(script + filtro + criterio);
        //debugstr(tabela);

        tabela.close;
//        try
        tabela.open;
//        except debugstr(tabela);
//        end;



        if nummodulo in [5] then
           rsemelhante.Checked := false;

        imageExecute(self);
//        formatarexecute(self);

        titgrade(grade,nil,tabela);
        try
            tgradeExecute(self);
        except end;

        formataprodexecute(self);


        if tabela.Active then begin
           litem.Caption := '|        '+inttostr(tabela.RecordCount)+ ' Item(ns)        |';

           if nummodulo in [9,10] then totrecpgExecute(self);
        end;


         mod101_Execute(self);
         refazgrade;


         //se erros deletar a config da grade para exibir todas as colunas
         i:=0;
         for j := 0 to grade.Columns.Count-1 do
             if grade.Columns[j].Visible then inc(i);

          if i <= 2 then begin

             if fileexists(substitui(servpath+'imagem/'+inttostr(nummodulo)+'.txt','/','\')) then
                deletefile(substitui(servpath+'imagem/'+inttostr(nummodulo)+'.txt','/','\'));

             if FileExists(ExtractFilePath(ParamStr(0))+'imagem\'+nometb+'.cds') then
                deletefile(ExtractFilePath(ParamStr(0))+'imagem\'+nometb+'.cds');

              while grade.Columns.Count > 1 do grade.Columns[0].Destroy;
              grade.Columns[0].Destroy;
              tabela.Close;
              tabela.Open;
              titgrade(grade,nil,tabela);

          end;

          for j := 0 to grade.Columns.Count-1 do
              grade.Columns[j].Title.Caption := capcp(grade.Columns[j].Title.Caption);

end;

procedure Tfcadg.btnnovoClick(Sender: TObject);

begin
        elocalizar.SetFocus;
        permissao(PN,'PN',modulo);

        if nummodulo in [38] then begin
           periodo2('montagem','','','','','',565,808,1);
           tabela.Refresh;
        end;

        if nummodulo in [9,10] then fmenu.caixafechadoexecute(self);

        salario;

        if nummodulo in [0] then mod0Execute(self)

        else if nummodulo in[4,5,20,18,7,6] then begin
           application.CreateForm(tfcadgv,fcadgv);
           fcadgv.nummodulo :=  nummodulo;

       end else if nummodulo in [9,10] then recpgExecute(self)

        else if nummodulo in [11] then  mod11Execute(self)

        else if nummodulo in [12] then  mod12Execute(self)

        else if nummodulo in [31] then  mod31Execute(self)

        else if nummodulo in [32] then  mod32Execute(self)

        else if nummodulo =100 then  mod100Execute(self)

        else if nummodulo =103 then mod103Execute(self)

        else if nummodulo =104 then mod104Execute(self)

        else if nummodulo in[101,102] then mod101_102Execute(self);


        if nummodulo in [9,10,38] then
        else begin

           if (nummodulo=5) or(nummodulo=20) then begin//produto
              if grade.Columns[3].Visible = true then cfor :=true;
              if grade.Columns[4].Visible = true then corig :=true;
           end;

           fcadgv.modo := 'gravar';
           fcadgv.ds := ds;
           fcadgv.tabela := tabela;
           fcadgv.ShowModal;

           if nummodulo in [0] then criaestoquee;

           rep := false;
        end;

end;

procedure Tfcadg.btneditarClick(Sender: TObject);
var
loc,ch,ct,m38:string;
begin
        elocalizar.SetFocus;
        if not ficha then permissao(PA,'PA',modulo);

        abortaacao(nil,tabela,'chave','','','','',0);

        if nummodulo in [38] then begin
           if ficha then m38 := '1';
           periodo2('montagem',tabela.fieldbyname('chave').AsString ,m38,'','','',565,808,1);
           tabela.Refresh;
        end;

        salario;

        if nummodulo in [0] then mod0Execute(self)

        //pagar/receber
        else if nummodulo in[9,10] then begin

           if      tabela['ch']=null then ch:='3'
           else if tabela['ch']='C' then  ch:='1'
           else                           ch:='2';

           if nummodulo =9 then ct :='1' else  ct :='2';
           loc:= tabela.fieldbyname('chave').AsString;

           if tabela.fieldbyname('diferenca').AsFloat <=0 then
              msg('#Esta conta já foi recebida.',0);

           periodo2('recpg',ct,ch,'','','',200,535,0);

           tabela.Cancel;
           tabela.Refresh;
           tabela.Locate('chave',loc,[]);


        end else if nummodulo in [11] then  mod11Execute(self)
        else if nummodulo in [12] then  mod12Execute(self)

        else if nummodulo in [31] then  mod31Execute(self)

        else if nummodulo in [32] then  mod32Execute(self)

        //produto,cli,funcion, fornec,servico
        else if nummodulo in[4,5,20,6,7,18] then begin
           application.CreateForm(tfcadgv,fcadgv);
           fcadgv.nummodulo :=  nummodulo;

        //almax
        end else if nummodulo =100 then  mod100Execute(self)

        else if nummodulo =103 then  mod103Execute(self)

        else if nummodulo =104 then  mod104Execute(self)

        else if nummodulo in[101,102] then  mod101_102Execute(self);

        if nummodulo in [9,10,38] then
        else begin
           fcadgv.modo := 'alterar';

           if (nummodulo=5) or(nummodulo=20) then begin//produto
              if grade.Columns[3].Visible = true then cfor :=true;
              if grade.Columns[4].Visible = true then corig :=true;
           end;

           fcadgv.btngravar.visible := not ficha;
           fcadgv.ds := ds;
           fcadgv.tabela := tabela;
           fcadgv.ShowModal;
           ficha := false;
        end;
end;

procedure Tfcadg.tcExecute(Sender: TObject);
begin
          btnnovoClick(self);
end;

procedure Tfcadg.btnapagarClick(Sender: TObject);
var st,contad, contac,flag2:string;
begin

        elocalizar.SetFocus;

        permissao(PD,'PD',capmodulo(inttostr(nummodulo)));
        abortaacao(nil,tabela,'chave','','','','',0);


        //nao deixa deletar
        if nummodulo in [9,10] then begin

           if      tabela['modulo'] = '2' then st := 'uma venda'
           else if tabela['modulo'] = '28' then st := 'um acerto venda'
           else if tabela['modulo'] = '8' then st := 'uma compra'
           else if tabela['modulo'] = '27' then st := 'um acerto compra';

           if (tabela['modulo'] = '2') or (tabela['modulo'] = '28') or
              (tabela['modulo'] = '8') or (tabela['modulo'] = '27') then
           msg('#Esta conta foi gerada de '+st+', estorne-a antes de deletar.',0);

           if tabela.fieldbyname('recebido').AsFloat >0 then msg('#Esta conta já foi baixada, estorne-a antes de deletar.',0);


        end;

        

        if msg('Deseja apagar o(s) item(ns) selecionado(s) ',2) then begin

           if Pred(grade.SelectedRows.Count) < 0 then msg('#Selecione o(s) item(ns).',0);
           filtrar(grade,nil,tabela,'chave');

           if nummodulo in [38] then flag2 := 'flag2 = "D"'
                                else flag2 := 'flag = "D"';

           tabela.First;
           while not tabela.Eof do begin

                 if (planocontas) and (nummodulo in [9,10]) then begin
                    contad := combotb2('','','','');
                    contac := codloc;
                    if contad='' then abort;
                    alimentaconta(contad, contac, '', '', '', date, tabela.fieldbyname('diferenca').AsFloat);
                 end;

                 with fdm.query1 do begin
                      Close;
                      sql.Clear;
                      sql.add( 'update '+nometb+' set '+flag2+' where chave = ' + QuotedStr(tabela.FieldByName('chave').AsString));
                      execsql;
                 end;

                 if nummodulo in [9,10] then begin
                    galtera(inttostr(nummodulo),tabela.fieldbyname('chave').asstring,'d');

                    if nummodulo in [10] then saldofornecedor(TABELA.FIELDBYNAME('CODIGO').ASSTRING)
                    else if nummodulo in [9] then saldocliente(TABELA.FIELDBYNAME('CODIGO').ASSTRING);

                 end else
                    galtera(inttostr(nummodulo),tabela.fieldbyname('codigo').asstring,'d');

                 tabela.Next;
             end;

             tabela.Filtered := false;
             tabela.cancel;
             tabela.refresh;
             imageexecute(self);
          end;
end;

procedure Tfcadg.btnimprimirClick(Sender: TObject);
                      
                   
        procedure etqemp;
        var
        j,i:integer;
        imp:string;
        begin

                i := strtoint(msgi('Digite a quantidade:',2));

                fdm.Query1.SQL.Clear;
                fdm.Query1.SQL.add('select  nome, endereco, bairro, numero, complemento, municipio, cep, uf from tbcliente where chave is null limit 0,0 ');
                fdm.tbquery1.Close;
                fdm.tbquery1.open;

                for j := 1 to i do begin
                    fdm.tbquery1.Insert;
                    fdm.tbquery1['nome']:= tabela.fieldbyname('nome').AsString ;
                    fdm.tbquery1['endereco']:= tabela.fieldbyname('endereco').AsString ;
                    fdm.tbquery1['bairro']:= tabela.fieldbyname('bairro').AsString ;
                    fdm.tbquery1['numero']:= tabela.fieldbyname('numero').Asinteger ;
                    fdm.tbquery1['complemento']:= tabela.fieldbyname('complemento').AsString ;
                    fdm.tbquery1['municipio']:= tabela.fieldbyname('municipio').AsString ;
                    fdm.tbquery1['cep']:= tabela.fieldbyname('cep').AsString ;
                    fdm.tbquery1['uf']:= tabela.fieldbyname('uf').AsString ;
                    fdm.tbquery1.Post;
                end;

                configimp(fdm.tbquery1,nil,2,false);
                fdm.tbquery1.close;
        end;



        procedure conta_dia;
        var scr,imp,dt,ntb,cp:string;

        begin

             codloc:='1';
             imp:=msgi('Exibir por data de:' + #13 + #13 +
                       '1 = Vencimento'+#13+
                       '2 = Emissão. . . .'+#13+
                       '3 = Pagamento .',2);

             cp := ' sum(diferenca) as Total ';

             if      imp='2' then dt :='DtEmissao'
             else if imp='3' then dt :='DtPagamento'
             else                 dt :='DtVencimento';

             if imp='3' then cp := ' sum(recebido) as Total ';

             scr:='';
             tabela.First;
             tabela.DisableControls;
             while not tabela.Eof do begin
                   if scr = '' then
                      scr := ' where chave = '+ quotedstr(tabela.fieldbyname('chave').AsString)
                   else
                      scr := scr + ' or chave = '+ quotedstr(tabela.fieldbyname('chave').AsString);
                   tabela.Next;
             end;
             tabela.EnableControls;

             with fdm.Query1 do begin
                  close;
                  sql.Clear;
                  sql.Add('select chave, '+
                          ' tipoconta as Conta, '+
                          dt+ ', extract(day from '+dt+') as Dia, '+
                          cp+
                          ' from '+nometb+ scr +sqlempresa(1,1,'')+
                          '  group by tipoconta, '+dt+
                          '  order by tipoconta, '+dt );
             end;

             //debugstr(fdm.Query1);

            fdm.tbquery1.close;
            fdm.tbquery1.Open;
            fdm.tbquery1.IndexFieldNames := dt;
            (fdm.tbquery1.FieldByName('total')  as tfloatfield).displayformat := '###,##0.00';
            fimp:=tfimp.Create(self,fdm.dsquery1,fdm.tbquery1,nil,'pggp',caption+' POR DIA','');
            fdm.tbquery1.IndexFieldNames := '';
            
            criacheck('Conta','Conta',0,20,0,true,true,true,true,true,false);
            criacheck(dt,dt,0,10,0,false,false,false,false,false,false);
            criacheck('Dia','Dia',0,6,0,false,false,false,false,false,false);
            criacheck('Total','Total',0,20,1,false,false,false,false,true,true);
            fimp.showmodal;
            qtdlinha:=0;
            fdm.tbquery1.close;

        end;





        procedure ccobranca;
        var
           i:integer;
           ind,dad:string;
        begin

           dad :=dad+#13;
           dad :='Obs: Caso já tenha efetuado o pagamento favor desconsiderar este aviso.';
           dad :=dad+#13;
           dad :=dad+#13;
           dad :=dad+#13+'Atenciosamente:';
           dad :=dad+#13+'_____________________________';
           dad :=dad+#13+fantasiaempresa;
           dad :=dad+#13+'Departamento de crédito e cobrança.';


            fimp:=tfimp.Create(self,ds,nil,tabela,'receberC', 'Carta de Cobrança',dad);

            criacheck('dtemissao','Emissão',0,10,0,true,true,true,true,true,false);
            criacheck('dtvencimento','Vencto',0,10,0,true,true,true,true,true,false);
            criacheck('Documento','Doc',0,9,0,false,false,false,false,true,false);
            criacheck('letra','L',0,2,0,false,false,false,false,false,false);
            criacheck('diferenca','Valor',0,9,1,false,false,false,false,true,true);
            criacheck('juro','Juros',0,9,1,false,false,false,false,true,true);
            criacheck('totalgeral','Tot/Juros',0,9,1,false,false,false,false,true,true);

           fimp.r6.Lines.Add('Ilmo(s) Sr(s).');
           fimp.r6.Lines.Add(tabela.fieldbyname('nome').AsString +
                                     ' ('+tabela.fieldbyname('nomecurto').AsString +')');

           fimp.r6.Lines.Add('CNPJ/CPF: '+ tabela.fieldbyname('cnpj').AsString + '  IE: '+
                                  tabela.fieldbyname('ie').AsString);

           fimp.r6.Lines.Add('End: '+tabela.fieldbyname('Endereco').AsString + '  '+
                                  tabela.fieldbyname('numero').AsString + ' '+
                                  tabela.fieldbyname('complemento').AsString);

           fimp.r6.Lines.Add(tabela.fieldbyname('municipio').AsString + ' - '+
                                  tabela.fieldbyname('bairro').AsString + ' Cep: '+
                                  tabela.fieldbyname('cep').AsString + ' - '+
                                  tabela.fieldbyname('uf').AsString +
                                  ' Fone: '+ tabela.fieldbyname('Fone').AsString);


            ind:= tabela.IndexFieldNames;
            fimp.showmodal;
            qtdlinha:=0;
            if ind <> '' then
            tabela.IndexFieldNames := ind  ;
        end;




      procedure impMargContrib(tp:integer);
      var
      script:string;
      MargemContPer, ConsumoMatPrimaPer,  FaturamentoBrutoPer:double;
      begin                                      

                 script := 'select chave, codigo, descricao, qtd as QtdProd, vrunit as CustoFinal, VrVenda, '+
                       ' PctgEncargosVenda as Perc_Enc, EncargosVenda as Encargo,'+
                       ' MargemContUnitaria as MgContUn, FaturamentoBrutoPer as FatBrutoPer,'+
                       ' ConsumoMatPrimaPer as ConsMat_Prima, EncargosVendaper as Enc_Vendas,'+
                       ' MargemContPer as Mg_Contrib_Pond, PctgMargemContPond as Marg_Cont_Coef '+
                       ' from tbproduto' ;



                 if tp = 2 then
                    with fdm.Query1 do begin
                         sql.Clear;
                         sql.Add(script+ ' where (qtd >0 and qtd is not null)');
                         open;
                         first;

                         MargemContPer :=0;
                         ConsumoMatPrimaPer:=0;
                         FaturamentoBrutoPer:=0;

                         while not eof do begin
                               MargemContPer := MargemContPer + fieldbyname('Mg_Contrib_Pond').asfloat;
                               FaturamentoBrutoPer := FaturamentoBrutoPer + fieldbyname('FatBrutoPer').asfloat;
                               ConsumoMatPrimaPer := ConsumoMatPrimaPer + fieldbyname('ConsMat_Prima').asfloat;
                               Next;
                         end;

                         close;


                         tblRelatFinal := tzquery.Create(application);
                         with tblRelatFinal do begin

                              Connection := fdm.conector;
                              sql.Add('select  sum(VrVenda) as TPrecoVenda, '+
                                   'sum(Qtd) as TQtdeConsumirVender, '+
                                   'sum(EncargosVendaper) as TPctgEncargosVenda, '+
                                   'sum(EncargosVenda) as TEncargosVenda,'+
                                   'sum(MargemContUnitaria) as TMargemContUnitaria,'+
                                   'sum(FaturamentoBrutoPer) as TFaturamentoBrutoPer,'+
                                   'sum(ConsumoMatPrimaPer) as TConsumoMatPrimaPer,'+
                                   'sum(EncargosVendaper) as TEncargosVendaPer, '+
                                   'sum(MargemContPer) as TMargemContPer,'+
                                   'sum(PctgMargemContPond) as TPctgMargemContPond '+
                                   ' from tbproduto');
                              open;
                              formatacptabela(nil,tblRelatFinal,2);
                              dsrelatfinal.DataSet := tblRelatFinal;
                         end;


                         tblParametros := tzquery.Create(application);
                         with tblParametros do begin
                              Connection := fdm.conector;
                              sql.Add('select * from parametros');
                              open;
                              formatacptabela(nil,tblParametros,2);
                              dsparametro.DataSet := tblParametros;
                         end;


                         if (MargemContPer <>0 ) and  (FaturamentoBrutoPer <>0) then begin
                            MP_.Caption := format('%n',[MargemContPer/FaturamentoBrutoPer]);
                            mgp := MargemContPer/FaturamentoBrutoPer  ;
                        end else MP_.Caption:= '0,00';

                         qcalculo.PreviewModal;
                         tblRelatFinal.Destroy;
                         tblParametros.Destroy;

                    end;



                 // if (MargemContPer <>0) and  (FaturamentoBrutoPer <> 0) then   freports.TG11.text := format('%n',[MargemContPer/FaturamentoBrutoPer])
                 if tp = 1 then
                    relatorio('','','descricao',
                               script,
                               '','',' and (qtd >0 and qtd is not null) ',
                               'QtdProd', 'CustoFinal','VrVenda', 'Perc_Enc','Encargo','MgContUn','FatBrutoPer','ConsMat_Prima', 'Enc_Vendas','Mg_Contrib_Pond','Marg_Cont_Coef','','','','', '','','',
                               nometb,
                               'Relatório de Resultados',
                               nometb+'chaofab',0,0);


                 abort;

      end;






var
loc,imp,doc,ficha:string;
begin                     

        abortaacao(nil,tabela,'chave','','','','',0);

        if nummodulo in [0,4,5,20,6,7] then doc := '5 = Imprime etiqueta '+#13;

        if nummodulo in [0,4,6,7] then doc := doc + '   6 = Configura etiqueta '+#13;


        if nummodulo in [4,5,6,7,20] then
           ficha:='1 = Imprime ficha(s)'+#13+
                  '                2 = Imprime ficha em branco '+#13;

        //receber
        if nummodulo in [9] then
           doc := '5 = Docs/Outros         '+#13;
        //pagar
        if nummodulo in [10] then
           doc := '5 = Contas                   '+#13;

        //pagar
        if nummodulo in [11] then
           doc := '5 = Recibo                   '+#13;

       if (nummodulo in[5]) and (chofab) then
          doc := doc +  '6 = Marg Contrib. Unit'+#13+
                        '7 = Rel. de Resultados';

        codloc := '3';
        imp:=msgi('Digite uma opção de impressão:' + #13 + #13 +
              ficha+
              '3 = Imprime seleção '+#13+
              '4 = Gráfico                   '+#13+
              doc, 2);


        if (nummodulo in[5]) and (chofab) and (imp='6') then impMargContrib(1); //Marg Contrib. Unit produto
        if (nummodulo in[5]) and (chofab) and (imp='7') then impMargContrib(2); //Marg Contrib. Unit produto


        if not strtoint(imp) in [1..6] then abort;

        loc:= tabela.fieldbyname('chave').AsString;
        filtrar(grade,nil,tabela,'chave');


        if (nummodulo in [5,20]) and (imp='5') then geraetiqueta(tabela,'estoque');

        if imp ='1' then
           impficha(self,nil,nil,tabela,ds,nil,grade,'LISTAGEM DE '+uppercase(modulo),false,false);

        if imp ='2' then
           impficha(self,nil,nil,tabela,ds,nil,grade,' - Preencha os dados',true,false);

        if imp = '3' then
           impgrade(nil,tabela,ds,grade,name+inttostr(nummodulo), 'LISTAGEM DE '+uppercase(modulo),'',rvisualiza.Checked);
           filtrar(grade,nil,tabela,'chave');
        if imp = '4' then
           graficoExecute(self);


        //empresa
        if (nummodulo in [0]) and (imp = '5') then etqemp;

        if (nummodulo in [4,6,7]) and (imp = '5') and (doc <>'') then
           configimp(nil,tabela,2,false);


        if (nummodulo in [4,6,7]) and (imp = '6') and (doc <>'') then
           configimp(nil,tabela,2,true);


       if (nummodulo in [11]) and
          (imp='5') then begin
          
          tabela.Filter := 'chave = '+quotedstr(tabela.fieldbyname('chave').AsString);
          tabela.Filtered := true;
          qrecibo.PreviewModal;
       end;   


       if (nummodulo in [9,10]) and
          (rsemelhante.Checked = false) and
          (imp='5') then begin

             msg('Marque "Outros Dados" antes de imprimir o boleto.'+#13+#13+
                 'O programa vai fazer, para você. Selecione as parcelas novamente, e clique em imprimir.' ,0);
             tabela.Filtered := false;
             rsemelhante.Checked := true;
             tabela.Locate('chave',loc,[]);
             abort;
       end;









       //a receber
       if (nummodulo in [9]) and (imp='5') then begin
          codloc:='1';
          imp:=msgi('Digite uma opção de impressão:' + #13 + #13 +
                    '1 = Boleto (emissão própria) . . .'+#13+
                    '2 = Boleto (formulário contínuo)'+#13+
                    '3 = Duplicata  . . . . . . . . . . . . . . . . . '+#13+
                    '4 = Carnê  . . . . . . . . . . . . . . . . . . . '+#13+
                    '5 = N. Promissória . . . . . . . . . . . .'+#13+
                    '6 = Carta de Cobrança . . . . . . . . '+#13+
                    '7 = Contas agrupadas por dia . . ', 2);

             if not strtoint(imp) in [1..7] then abort;

             if imp = '1' then geraboleto(tabela,0,'tbreceber',true)

             else if imp = '2' then begin

                  codloc :='1';
                  imp:=msgi('Digite uma opção:' + #13 + #13 +
                            '1 = Imprime..'+#13+
                            '2 = Configura', 2);

                  if imp='2' then
                     configimp(nil,tabela,0,true)
                  else
                     configimp(nil,tabela,0,false);
              

             end else if imp = '3' then begin
                vrpub := tabela.fieldbyname('diferenca').AsFloat;
                configimp(nil,tabela,strtoint(imp),false);
                vrpub:=0;

                
             end else if imp = '4' then
                configimp(nil,tabela,strtoint(imp),false)

             else if imp = '5' then
                configimp(nil,tabela,strtoint(imp),false)

             else if imp = '6' then
                  ccobranca

             else if imp = '7' then
                  conta_dia;

          end;









       //a pagar
       if (nummodulo in [10]) and (imp='5') then
          conta_dia;



        tabela.Filtered := false;
        tabela.Locate('chave',loc,[]);
        imageExecute(self);

end;

procedure Tfcadg.btnfiltroClick(Sender: TObject);
var
i,j:integer;
begin

     elocalizar.SetFocus;
     elocalizar.Clear;


     if nummodulo in [9,10] then begin
        periodo2('frecpg',inttostr(nummodulo),'','','','',350,327,0);
        totrecpgExecute(self);
     

     end else begin

           if ffiltrocad = nil then begin
              ffiltrocad:=tffiltrocad.Create(self,nil,tabela,nometb,nometb,grade,nummodulo);
              i:=0;

              ffiltrocad.rel := true;
              ffiltrocad.script := script;



              if  nummodulo = 4 then begin
                      criaRa('fisjur','Física','Jurídica','','','','','',i);
                      i:=i+25;
              end;

              for j:=0 to grade.Columns.Count-1 do begin


                   if lowercase(grade.Columns[j].FieldName) = 'estadocivil' then begin
                      criaRa('estadocivil','Solt','Cas','Div','Out','','','',i);
                      i:=i+30;
                   end;


                   if lowercase(grade.Columns[j].FieldName) = 'data' then begin
                      criaMa('data','Data De: ',i,2);
                      i:=i+20;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'dtvencimento' then begin
                      criaMa('dtvencimento','Vencto De: ',i,2);
                      i:=i+20;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'dtemissao' then begin
                      criaMa('dtemissao','Emissão De: ',i,2);
                      i:=i+20;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'dtpagamento' then begin
                      criaMa('dtpagamento','Pagos De: ',i,2);
                      i:=i+20;
                   end;


                   if lowercase(grade.Columns[j].FieldName) = 'ultimacompra' then begin
                      i:=i+20;
                      criaMa('ultimacompra','Compras de:',i,2);
                      i:=i+20;
                      criaMa('hhultimacompra','Sem Movim. Desde :',i,1);
                      i:=i+20;
                      criaMa('hhhultimacompra','Com Movim. Desde :',i,1);
                      i:=i+22;
                   end;


                   if lowercase(grade.Columns[j].FieldName) = 'tipocliente' then begin
                      criaMCh('tipocliente','Tipo Cliente: ', 'tbtipocliente','tipocliente',i);
                      i:=i+22;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'municipio' then begin
                      criaMCh('municipio','Cidade: ',nometb,'municipio',i);
                      i:=i+22;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'bairro' then begin
                      criaMCh('bairro','Bairro: ',nometb,'bairro',i);
                      i:=i+22;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'cep' then begin
                      criaMCh('cep','Cep: ',nometb,'cep',i);
                      i:=i+22;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'uf' then begin
                      criaMCh('uf','Estado: ',nometb,'uf',i);
                      i:=i+22;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'nascimento' then begin
                      criaMCh('nascimento','Nascidos mês de: ',nometb,'',i);
                      i:=i+22;

                   end;   
                   if lowercase(grade.Columns[j].FieldName) = 'nascimento' then begin
                      criaMCh('dnascimento','Nascidos dia: ',nometb,'',i);
                      i:=i+22;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'nascimento' then begin
                      criaMCh('vendedor','Vendedor: ',nometb,'vendedor',i);
                      i:=i+22;
                   end;
                   if lowercase(grade.Columns[j].FieldName) = 'nome' then begin
                      criaMCh('nome','Nome: ',nometb,'nome',i);
                      i:=i+22;
                   end;

                    if lowercase(grade.Columns[j].FieldName) = 'banco' then begin
                      i:=i+22;
                      criaMCh('banco','Banco: ',nometb,'banco',i);
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'agencia' then begin
                      i:=i+22;
                      criaMCh('agencia','Agência: ',nometb,'agencia',i);
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'conta' then begin
                      criaMCh('conta','Conta: ',nometb,'conta',i);
                      i:=i+22;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'dc' then begin
                      criaMCh('DC','DC: ',nometb,'DC',i);
                      i:=i+22;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'usuario' then begin
                      criaMCh('usuario','Usuário: ',nometb,'usuario',i);
                      i:=i+22;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'fabricante' then begin
                      criaMCh('fabricante','Fabricante: ',nometb,'fabricante',i);
                      i:=i+22;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'fabricante' then begin
                      criaMCh('fornecedor','Marca: ',nometb,'fornecedor',i);
                      i:=i+22;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'departamento' then begin
                      criaMCh('departamento','Departamento: ',nometb,'departamento',i);
                      i:=i+22;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'familia' then begin
                      criaMCh('familia','Seção: ',nometb,'familia',i);
                      i:=i+22;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'grupo' then begin
                      criaMCh('grupo','Grupo: ',nometb,'grupo',i);
                      i:=i+22;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'subgrupo' then begin
                      criaMCh('subgrupo','Subgrupo: ',nometb,'subgrupo',i);
                      i:=i+22;
                   end;

                   if lowercase(grade.Columns[j].FieldName) = 'descricao' then begin
                      criaMCh('descricao','Descrição: ',nometb,'descricao',i);
                      i:=i+22;
                   end;                   


                   end;
                   try
                      ffiltrocad.Showmodal;
                   except end;

                      end else
                      try
                      ffiltrocad.Showmodal;
                      except end;

              titgrade(grade,nil,tabela);
              tgradeExecute(self);

              if tabela.Active then
                 litem.Caption := inttostr(tabela.RecordCount)+ ' Itens';
           end;

end;

procedure Tfcadg.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 39 then
  begin
    SendMessage(grade.Handle, WM_HSCROLL, SB_LINERIGHT, 0);
    Abort;
  end;

  //esquerda
  if key = 37 then
  begin
    SendMessage(grade.Handle, WM_HSCROLL, SB_LINELEFT, 0);
    Abort;
  end;

end;

procedure Tfcadg.elocalizarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

          if key = 13 then
             //termcabos

             if (pcontagem.Visible) and(responsavel = '12.347.804/0001-40') and (nummodulo=5) and
                (indtz(tabela.IndexFieldNames) = 'descricao') then begin
                filtroexecute(self);
                if elocalizar.Text <> '' then contagemexecute(self);
                elocalizar.Clear;

             end else if pcontagem.Visible then
                contagemexecute(self)
             else
                filtroexecute(self);

          if (key = 40) or (key = 34)  then
              tabela.Next;
          if (key = 38) or (key = 33) then
              tabela.prior;

end;

procedure Tfcadg.Deletados1Click(Sender: TObject);
var prod :string;
begin

        if nummodulo = 38 then prod := '#';

        listagem('codigo','','#'+prod,nummodulo,0);

end;

procedure Tfcadg.gradeTitleClick(Column: TColumn);
begin
        indexar(column,nil,tabela,elocalizar,llocalizar);
        ind := Column.FieldName;
        tabela.First;
end;

procedure Tfcadg.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

        case key of
             vk_f1 : Label1Click(self);
             vk_f2 : btnnovoClick(self);
             vk_f3 : btneditarClick(self);
             vk_f4 : btnreplicarClick(self);
             vk_f5 : btnapagarClick(self);
             vk_f6 : btnfiltroClick(self);
             vk_f7 : btnanotacoesClick(self);
             vk_f8 : btnimprimirClick(self);
             vk_f9 : btnmenuClick(self);
             vk_f10 : begin
                         if nummodulo = 5 then periodo2('consultaprod',tabela.fieldbyname('codigo').AsString ,'','','','',450,560,0)
                         else begin
                            ficha := true;
                            btneditarClick(self);
                            tabela.Cancel;
                         end;   
                      end;

             vk_f11 : begin
                         application.CreateForm(tfimagem,fimagem);
                         fimagem.vimage.Picture :=  vimage.Picture;
                         fimagem.Show;
                      end;

             vk_f12 : if btelaborar.Visible then btelaborarclick(self);

        end;

end;

procedure Tfcadg.btnreplicarClick(Sender: TObject);
var
campo,st,pas,codconta3,movimento:string;


        procedure recebe;
           var tbrc:string;
        begin

            if nummodulo=9 then tbrc:='tbreceber'
            else if nummodulo=10 then tbrc:='tbpagar';

            recpgto(tbrc,tabela.fieldbyname('codigo').asstring);
        end;



        procedure baixarcpg;
           var tbrc,codigo:string;
        begin

          abortaacao(nil,tabela,'chave','','','','',0);

          if nummodulo=9 then tbrc:='tbreceber'
          else if nummodulo=10 then tbrc:='tbpagar';

          if tabela.fieldbyname('diferenca').AsFloat <=0 then
             msg('#Esta conta já foi baixada!',0);




         //passados

         if tabela['ch'] = 'P' then begin
             codloc :='1';
             st := msgi('O que deseja fazer?'+#13+#13+#13+
                        '1=Receber o cheque . . .'+#13+
                        '2=Enviar para Devolvido',2);

             if (st <>'1') and (st<>'2') then abort;

             if st = '1' then recebe;

             if st = '2' then
                selecione('update '+tbrc+' set ch = "D" where chave ='+
                           quotedstr(tabela.fieldbyname('chave').AsString));

         end;


         //cheques devolvidos e contas
         if (tabela['ch'] = 'D') or
            (tabela['ch'] = 'C') or
            (tabela['ch'] = null) then
            recebe;


          //cheques em aberto
          if tabela['ch'] = 'S' then begin

             codloc :='1';
             st := msgi('O que deseja fazer?'+#13+#13+#13+
                        '1 = Receber o cheque . . '+#13+
                        '2 = Passar o cheque . . . ' + #13+
                        '3 = Enviar para Devolvido',2);

             if (st <>'1') and (st<>'2')and (st<>'3') then abort;

             if st = '1' then recebe;

             if st = '3' then
                selecione('update '+tbrc+' set ch = "D" where chave ='+
                           quotedstr(tabela.fieldbyname('chave').AsString));

             if st = '2' then begin

                if msg('Passar para fornecedor/funcionário? ',2) then begin

                  codigo := msgi('Digite (só números): O Código, ou o CNPJ/CPF ou o Fone, ou as iniciais do nome para pesquisa',0);
                  listagem(achacp('nome',codigo),st,'',7,0);

                 if fdm.sg.Active then
                    codigo := fdm.sg.fieldbyname('nome').AsString;

                 fechatg;
                 if codigo = '' then abort;

                end else
                codigo := msgi('Digite o nome:',0);

                with fdm.query1 do begin
                     close;
                     sql.clear;
                     sql.add(  'update '+tbrc+' set'+
                                    ' ch = "P" '+
                                    ' ,passado =  '+quotedstr(uppercase(codigo))+
                                    ' ,datapassado = now() '+
                                    ' where chave ='+ quotedstr(tabela.fieldbyname('chave').AsString));
                     execsql;
                end;
             end;
             codigo :='';
             rativo.ItemIndex :=2;
         end;
         tabela.Filtered := false;
         filtroExecute(self);
      end;

begin

        if nummodulo in [38] then abort;
        if nummodulo in [33] then abort;

        if nummodulo in [104] then begin
           abortaacao(nil,tabela,'chave','','','','',0);
           self.Hide;
           periodo2('prontuario',tabela.fieldbyname('chave').AsString ,'','','','',489,673,2);
           ncol:=0;
           self.show;

        end else if nummodulo in [9] then  baixarcpg

        else if nummodulo in [10] then begin
           recebe;
           tabela.Filtered := false;
           filtroExecute(self);

        end else begin

          abortaacao(nil,tabela,'chave','','','','',0);
          elocalizar.SetFocus;
          rep := true;
          btnnovoClick(self);
       end;
end;

procedure Tfcadg.btnanotacoesClick(Sender: TObject);
var
loc,movimentopagar,ct : string;
begin

       if nummodulo in [9,10] then begin
          if tabela.FieldByName('recebido').AsFloat<=0 then
             msg('#Para abortar uma conta é preciso que a mesma já tenha sido recebida/paga!',0);

           senhagerencial('ABORTAR CONTA',
                          'DIGITE A SENHA GERENCIAL PARA LIBERAR:',
                          'ABORTAR CONTA ENCERRADA');

           GALTERA(inttostr(nummodulo),tabela.fieldbyname('chave').asstring,'s');

           case nummodulo of
                9: ct :='acertoreceber';
                10: ct :='acertopagar';
           end;

            //link,modulo,codigocliente
            deletaconta(tabela.FieldByName('movimentopagar').AsString,ct,
                        tabela.FieldByName('codigo').AsString,'');

           if tabela['movimentopagar'] = null then
              movimentopagar:=' where chave = ' + quotedstr(tabela.fieldbyname('chave').AsString)
           else
             movimentopagar:=' where movimentopagar = ' + quotedstr(tabela.fieldbyname('movimentopagar').AsString);


           selecione('update '+nometb+' set dtpagamento= null, recebido = 0, movimentopagar = null,'+
                     ' diferenca = total,vrdocumento=total, acrescimo = 0 , desconto = 0 '+ movimentopagar);

           if fileexists((ExtractFilePath(ParamStr(0)) + 'Contas\'+nometb + tabela.fieldbyname('movimentopagar').AsString+'.txt')) then
              deletefile(ExtractFilePath(ParamStr(0))  + 'Contas\'+nometb + tabela.fieldbyname('movimentopagar').AsString+'.txt');

           case nummodulo of
                9:  saldocliente(tabela.fieldbyname('codigo').AsString);
                10: saldofornecedor(tabela.fieldbyname('codigo').AsString);
           end;

           loc := tabela.fieldbyname('chave').asstring;
           tabela.Cancel;
           tabela.refresh;
           totrecpgExecute(self);
           tabela.Locate('chave',loc,[]);
           msg('Conta estornada!',0);


        end else begin

            if tbfolow='' then
                msg('#Opção não disponível!',0);

            abortaacao(nil,tabela,'chave','','','','',0);
            Acesso1('cadastro');

            cadp (tbfolow, '', 'ANOTAÇÕES '+caption,
                  '','',
                  'assunto','tbassunto','assunto',
                  '','','',
                  '','','',
                  'data',
                  'hora',
                  'assunto',
                  'historico',
                  0,tabela.fieldbyname('chave').AsInteger );
        end;
end;

procedure Tfcadg.btnmenuClick(Sender: TObject);
begin
                menu.Popup(btnmenu.left+100,btnmenu.top+30);
end;

procedure Tfcadg.tgradeExecute(Sender: TObject);
begin

        //campos da grade
        if FileExists(ExtractFilePath(ParamStr(0))+'imagem\'+nometb+'.cds') then begin
           fdm.tb.FileName := ExtractFilePath(ParamStr(0))+'imagem\'+nometb+'.cds';
           fdm.tb.Open;

         fdm.tb.First;


         try
         while not fdm.tb.Eof do begin
               if fdm.tb['x']= 'X' then
                  grade.Columns[fdm.tb.RecNo].Visible := true
               else
                  grade.Columns[fdm.tb.RecNo].Visible := false;
               fdm.tb.Next;
         end;

         except
             deletefile(ExtractFilePath(ParamStr(0))+'imagem\'+nometb+'.cds');
             close;
         end;

         grade.Repaint;
         fdm.tb.close;
       end;

end;

procedure Tfcadg.FormCreate(Sender: TObject);
begin

          PN := sqlacesso.fieldbyname('inserir').AsString;
          PA :=sqlacesso.fieldbyname('alterar').AsString;
          PD := sqlacesso.fieldbyname('apagar').AsString;
          PC := sqlacesso.fieldbyname('consultar').AsString;
          sqlacesso.Destroy;

          elocalizar.Text := '  ';
          filtroexecute(self);
          elocalizar.Text := '%';
          titgrade(grade,nil,tabela);

          if nummodulo in [9,10] then else
          if fileexists(substitui(servpath+'imagem/'+inttostr(nummodulo)+'.txt','/','\')) then
             try
                grade.Columns.LoadFromFile(substitui(servpath+'imagem/'+inttostr(nummodulo)+'.txt','/','\'));
             except end;


          btnnovo.Font.Color := clwhite;
          btneditar.Font.Color := clwhite;
          btnreplicar.Font.Color := clwhite;
          btnapagar.Font.Color := clwhite;
          btnfiltro.Font.Color := clwhite;
          btnanotacoes.Font.Color := clwhite;
          btnimprimir.Font.Color := clwhite;
          btnmenu.Font.Color := clwhite;
          formataprodExecute(self);

end;

procedure Tfcadg.Label1Click(Sender: TObject);
var
list:tstringlist;
begin
         list :=  tstringlist.Create;

         list.Add('FILTRO ESPECIAL:' );
         list.Add(' ');
         list.Add('1-Você pode fazer um filtro especial digitando assim:');
         list.Add(' ');
         list.Add('Primeiro clique no nome da coluna que quer filtrar, observe se a rodem ficou de "A~Z".');
         list.Add('Digite:   %PALAVRA1%PALAVRA2%PALAVRA3   -   Depois tecle ENTER.');
         list.Add(' ');
         list.Add('Para outros tipos de filtros, tecle F6.');

         list.Add(' ');
         list.Add(' ');
         list.Add('2-Tecle F10 para ver a ficha completa.');

         list.Add(' ');
         list.Add(' ');
         list.Add('3-Tecle F11 para ver a imagem em tamanho grande.');

         list.SaveToFile('c:\ajuda.txt');
         ShellExecute(Handle, 'open', PChar('c:\ajuda.txt'), nil, '', SW_MAXIMIZE);
         list.Free;
end;

procedure Tfcadg.vimageClick(Sender: TObject);
var
modulo_,cimage:string;
ini:tinifile;
begin


        abortaacao(nil,tabela,'chave','','','','',0);

        Ini := TInifile.Create(conf_local);
        opendialog.InitialDir := Ini.ReadString('imgcad', 'imgcad', 'c:\');
        ini.Free;


        if nummodulo=9 then modulo_ :='cliente'
        else if nummodulo=10 then modulo_ :='fornecedor'
        else if nummodulo=0 then  modulo_ := ''
        else modulo_ := modulo;

        if not DirectoryExists(servpath + 'imagem\'+modulo_+'\') then
           ForceDirectories(servpath + 'imagem\'+modulo_+'\');


        opendialog.FileName := '';
        opendialog.Execute;

        if opendialog.FileName <> '' then begin
           vimage.Picture.LoadFromFile(opendialog.FileName);

        if vimage.Picture <> nil then
           vimage.Picture.SaveToFile(servpath +  'imagem\'+modulo_+'\' + tabela.FieldByName('codigo').AsString + '.jpg');


        opendialog.FileName := '';
        Ini := TInifile.Create(conf_local);
        Ini.WriteString('imgcad', 'imgcad', ExtractFilePath(opendialog.FileName));
        ini.Free;


        end;

end;

procedure Tfcadg.tabelaAfterScroll(DataSet: TDataSet);
begin
        imageExecute(self);
        if nummodulo in [5] then rsemelhante.Checked := false;
end;

procedure Tfcadg.imageExecute(Sender: TObject);
var
modulo_:string;
begin

        if Active then begin

            valoradesivoExecute(self);

            if nummodulo=9 then modulo_ :='cliente'
            else if nummodulo=10 then modulo_ :='fornecedor'
            else if nummodulo=0 then modulo_ :=''
            else modulo_ := modulo;

            try

                if fileexists(servpath + 'imagem\'+modulo_+'\' +
                   tabela.FieldByName('codigo').AsString + '.jpg') then

                   vimage.Picture.loadfromFile(servpath +
                               'imagem\'+modulo_+'\' + tabela.FieldByName('codigo').AsString + '.jpg')

                else vimage.Picture := nil;
                if (fimagem <> nil) and (fimagem.Visible) then
                   fimagem.vimage.Picture := vimage.Picture;

             except
                msg('O formato desta imagem não é válido.',0);
             end;


         end;


end;

procedure Tfcadg.Divisao1Click(Sender: TObject);
begin
         cadp ('tbdivisao', 'select * from tbdivisao where link = ' +
                            quotedstr(tabela.fieldbyname('chave').AsString),'',

              'nome','codigo',           //campos que nao devem duplicar
              '','','',        //combo1(campo,tabela,nomecampotabela)
              '','','',        //combo2(campo,tabela,nomecampotabela)
              '','','',
              'codigo',              //campo auto incremento
              '',              //campo auto incremento
              '',                       //campo que nao ser nulo
              '',
              2,tabela.fieldbyname('chave').AsInteger);   //onde vai comecar a criar os campos + link

end;

procedure Tfcadg.EMail1Click(Sender: TObject);
var
loc,nome,email:string;
tf:boolean;
j,codigo:integer;
list :tstringlist;
tot:double;
ini:tinifile;

procedure limpa;
begin
      codigo :=tabela.fieldbyname('codigo').AsInteger;
      nome   :=tabela.fieldbyname('nome').AsString;
      email  :=tabela.fieldbyname('email').AsString;
      tot:=0;
      list.Clear;
end;

procedure cabeca;
begin
     list.Add('Ilmo(s) Sr(s).');
     list.Add(inttostr(codigo) + ' - ' + nome);
     list.Add('');
     list.Add(text);
     list.Add('');
     list.Add(compstr('-------------------','-------------------'));
     list.Add(compstr('Vencimento:', 'Valor:'));
     list.Add(compstr('-------------------','-------------------'));     

end;

procedure rodape;
begin
     list.Add(compstr('-------------------','-------------------'));
     list.Add(compstr('TOTAL',format('%n',[tot])));
     list.Add('');
     list.Add('');
     list.Add('Obs: Caso já tenha efetuado o pagamento favor desconsiderar este aviso.');
     list.Add('');
     list.Add('');

     list.Add('Atenciosamente:');
     list.Add('');
     list.Add(fantasiaempresa);
     list.Add('--------------------------------------');
     list.Add('Departamento de crédito e cobrança.');
end;
procedure insere;
begin
      list.Add(compstr(tabela.fieldbyname('dtvencimento').AsString, format('%n', [tabela.fieldbyname('total').asfloat])));
      tot := tot + tabela.fieldbyname('total').asfloat;

end;


begin

      abortaacao(nil,tabela,'chave','','','','',0);

      if (nummodulo in [9]) and (rsemelhante.Checked = false) then msg('#Marque "outros dados".',0);


      loc:= tabela.fieldbyname('chave').AsString;
      tabela.IndexFieldNames := 'codigo';
      llocalizar.Caption := 'Localizar código (A~Z)';
      filtrar(grade,nil,tabela,'chave');

      if tabela.RecordCount = 1 then tf := false
                                else tf := true;

      if nummodulo in [9] then begin
         tabela.First;

         numcoluna :=40;
         list   := tstringlist.Create;
         Ini    := TInifile.Create(conf_global);
         codloc := Ini.ReadString('emailboleto', 'emailboleto', '');
         text := msgi('Digite o texto para o cabeçalho:',0);
         Ini.WriteString('emailboleto', 'emailboleto',text);
         ini.Free;

         limpa;
         cabeca;


         j:=1;


         while not tabela.Eof do begin
                 // showmessage(inttostr(codigo)+'-'+tabela.fieldbyname('codigo').AsString);

             if tabela.fieldbyname('email').AsString <> '' then begin
                 if codigo = tabela.fieldbyname('codigo').AsInteger then begin

                    insere;

                end else begin
                    rodape;
                    sendMail(nome,
                             email,
                             fantasiaempresa,
                             email,
                             fantasiaempresa+'   -   Vencimentos:',
                             list.Text,
                             '',false);
                    inc(j);
                    limpa;
                    cabeca;
                    insere;

                end;

             end;
             tabela.Next;

         end;


         if (list.Count <=0) and(j>1) then begin
            limpa;
            cabeca;
            list.Add('');
            list.Add(compstr(tabela.fieldbyname('dtvencimento').AsString,
               format('%n', [tabela.fieldbyname('total').asfloat])));
            rodape;

         end else begin
            //list.Add(compstr(tabela.fieldbyname('dtvencimento').AsString,
              // format('%n', [tabela.fieldbyname('total').asfloat])));
            //tot := tot + tabela.fieldbyname('total').asfloat;
            rodape;
         end;

         //if j >1 then
         sendMail(nome,
                 email,
                 fantasiaempresa,
                 email,
                 fantasiaempresa+'   -   Vencimentos:',
                 list.Text,
                 '',false);


      end else//se nao for contas a receber

      fdm.email(tabela.fieldbyname('email').AsString,
                  tabela.fieldbyname('codigo').AsString,
                  tabela.fieldbyname('nome').AsString,
                  'Código ' +tabela.fieldbyname('codigo').AsString,
                  '', tabela, tf);

        tabela.Filtered := false;
        tabela.Locate('chave',loc,[]);

end;

procedure Tfcadg.Vida1Click(Sender: TObject);
begin
       abortaacao(nil,tabela,'chave','','','','',0);
       vidamov(tabela.fieldbyname('codigo').AsString,nummodulo);
end;

procedure Tfcadg.replicarExecute(Sender: TObject);
var
i:integer;
ntb:tclientdataset;
begin

       ntb :=  tclientdataset.Create(application);

       for i:=0 to grade.Columns.Count-1 do

              if ((tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TFloatField')or
                 (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TIntegerField')) then
                  ntb.FieldDefs.Add(grade.Columns[i].FieldName, ftFloat, 0, False)

              else if (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TStringField') then
                  ntb.FieldDefs.Add(grade.Columns[i].FieldName, ftString, 255, False)

              else if (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TDateTimeField') then
                  ntb.FieldDefs.Add(grade.Columns[i].FieldName, ftDateTime, 0, False)

              else if (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TMemoField') then
                  ntb.FieldDefs.Add(grade.Columns[i].FieldName, ftFmtMemo, 0, False);

           ntb.CreateDataSet;
           ntb.Open;
           ntb.Insert;


         for i:=0 to grade.Columns.Count-1 do
           if ((tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TFloatField')or
              (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TIntegerField')) then
              ntb[grade.Columns[i].FieldName] := tabela.fieldbyname(grade.Columns[i].FieldName).asfloat

           else if ((tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TStringField') or
                    (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TMemoField')) then
                ntb[grade.Columns[i].FieldName] := tabela.fieldbyname(grade.Columns[i].FieldName).asstring

           else if (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TDateTimeField') then
                ntb[grade.Columns[i].FieldName] := tabela.fieldbyname(grade.Columns[i].FieldName).AsDateTime;

           ntb.Post;
           //ds.DataSet := ntb;
           //abort;

         tabela.Insert;
         for i:=0 to grade.Columns.Count-1 do begin

           if (lowercase(grade.Columns[i].FieldName) <> 'chave') and
              (lowercase(grade.Columns[i].FieldName) <> 'data') and
              (lowercase(grade.Columns[i].FieldName) <> 'codigo') and
              (lowercase(grade.Columns[i].FieldName) <> 'estoque') then


           if ((tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TFloatField')or
              (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TIntegerField')) then
              tabela[grade.Columns[i].FieldName] := ntb.fieldbyname(grade.Columns[i].FieldName).asfloat

           else if ((tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TStringField') or
                    (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TMemoField')) then
                tabela[grade.Columns[i].FieldName] := ntb.fieldbyname(grade.Columns[i].FieldName).asstring

           else if (tabela.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TDateTimeField') then
                tabela[grade.Columns[i].FieldName] := ntb.fieldbyname(grade.Columns[i].FieldName).AsDateTime;


           end;

           ntb.Destroy;
           rep := false;

end;

procedure Tfcadg.CadastrodeAssunto1Click(Sender: TObject);
begin
         cadp ('tbassunto', '', 'ASSUNTO',
              'assunto','assunto',
              '','','',
              '','','',
              '','','',
              '',
              '',
              '',
              '',
              3,0 );

end;

procedure Tfcadg.CadastrarGrupo1Click(Sender: TObject);
begin
         cadp ('tbgruposervico', '','',       //tabela que vai usar ou cod sql na 2ª + titulo
              'nome','',                //campos que nao devem duplicar
              '','','',                 //combo1(campo,tabela,nomecampotabela)
              '','','',                 //combo2(campo,tabela,nomecampotabela)
              '','','',
              '',                       //campo auto incremento
              '',                       //campo auto incremento
              '',                       //campo que nao ser nulo
              '',
              3,0);                       //onde vai comecar a criar os campos + link

end;

procedure Tfcadg.ll4Click(Sender: TObject);
var
loc,st:string;
begin


          if ll4.Caption <> 'Crédito' then abort;

          abortaacao(nil,tabela,'chave','','','','',0);

           senhagerencial('ALTERAR CRÉDITO',
                          'DIGITE A SENHA GERENCIAL PARA LIBERAR:',
                          'ALTERAR O CREDITO');

           st := msgi('Digite o novo crédito:',2);

          if StrIsFloat(st) = False then
             msg('#O valor digitado não é um número válido!',0);


          selecione('update '+nometb+' set credito = '+ realdblstr(strtofloat(st))+
                          ' where chave = '+quotedstr(tabela.fieldbyname('chave').AsString));

          loc := tabela.fieldbyname('chave').asstring;
          tabela.Refresh;
          tabela.Locate('chave',loc,[]);

end;

procedure Tfcadg.Oqueoclienteconsome1Click(Sender: TObject);
var
imp:string;
begin

        abortaacao(nil,tabela,'chave','','','','',0);

          imp :='1';
          if inputquery('Consumo', 'Digite uma opção:' + #13 + #13 +
                            '1 = Última compra' + #13 +
                            '2 = Produtos consumidos (agrupa qtd)'+#13+
                            '3 = Produtos consumidos (por data)'+#13+
                            'Esc = Cancela '
                           , imp) then  else abort;

          fdm.comsumo(tabela.fieldbyname('codigo').AsString,'tbpedido','tbpedidoitem',imp,'');

end;

procedure Tfcadg.CadastrodeAnimais1Click(Sender: TObject);
begin
         cadp ('tbanimal', '', '',
              'codigo','',
              '','','',
              '','','',
              '','','',
              'data',
              'codigo',
              'nome',
              'obs',
              0,tabela.fieldbyname('chave').asinteger);

end;

procedure Tfcadg.Cadastrodeequipamentos1Click(Sender: TObject);
begin
         cadp ('tbmaquina', '', '',
              'serie','',
              '','','',
              '','','',
              '','','',
              '',
              '',
              '',
              '',
              1,tabela.fieldbyname('chave').asinteger);

end;

procedure Tfcadg.ipoCliente1Click(Sender: TObject);
begin
         cadp ('tbtipocliente', '', '',
              'tipocliente','',
              'fidelidade','','S,N',
              '','','',
              '','','',
              '',
              '',
              '',
              '',
              2,0);

end;

procedure Tfcadg.StatusCliente1Click(Sender: TObject);
begin
         cadp ('tbstatus', '', '',      //tabela que vai usar ou cod sql na 2ª + titulo
              'nome','',           //campos que nao devem duplicar
              '','','',                 //combo1(campo,tabela,nomecampotabela)
              '','','',                 //combo2(campo,tabela,nomecampotabela)
              '','','',
              '',                     //campo auto incremento
              '',                       //campo auto incremento
              '',                       //campo que nao ser nulo
              '',
              3,0);                       //onde vai comecar a criar os campos

end;

procedure Tfcadg.rativoClick(Sender: TObject);
begin
        if active then begin
           filtroexecute(self);
           elocalizar.SetFocus;
           Baixartudo1.Visible :=  (nummodulo in[9]) and (rativo.ItemIndex in [0..2]);
        end;
end;

procedure Tfcadg.CadastrodeFunes1Click(Sender: TObject);
begin
         cadp ('tbfuncao', '', '',      //tabela que vai usar ou cod sql na 2ª + titulo
              'funcao','',           //campos que nao devem duplicar
              '','','',                 //combo1(campo,tabela,nomecampotabela)
              '','','',                 //combo2(campo,tabela,nomecampotabela)
              '','','',
              '',                     //campo auto incremento
              '',                       //campo auto incremento
              '',                       //campo que nao ser nulo
              '',
              3,0);                       //onde vai comecar a criar os campos + link

end;

procedure Tfcadg.gravasiteExecute(Sender: TObject);
begin

              if responsavel ='10.543-167-0001-52' then begin
                  if not fdm.snet2.Locate('cnpj', tabela.fieldbyname('cnpj').AsString,[]) then
                     gentilgravaexecute(self)
                  else
                     gentilalteraExecute(self);
             end;
end;

procedure Tfcadg.gentilgravaExecute(Sender: TObject);
var
 chave,aniv,id:string;
begin

                 if tabela['Nascimento'] <> null then
                    aniv := ','+  quotedstr(formatdatetime('yyyy-mm-dd',tabela.fieldbyname('Nascimento').Asdatetime))
                 else
                    aniv := ',now() ';

                  with fdm.snet do begin
                       close;
                       sql.Clear;
                       sql.Add('insert into customers( '+
                               ' chave '+
                               ', customers_dob'+
                               //', customers_gender'+
                               ', customers_firstname'+
                               ', customers_lastname'+
                               ', customers_email_address'+
                               ', customers_password'+
                               ', customers_telephone'+
                               ', customers_fax ) values('+

                              quotedstr(tabela.fieldbyname('chave').AsString)+
                              aniv +
                              //',"m"'+
                              ','+quotedstr(pnome(tabela.fieldbyname('nome').AsString))+
                              ','+quotedstr(Snome(tabela.fieldbyname('nome').AsString))+
                              ','+quotedstr(tabela.fieldbyname('email').AsString)+
                              ',"79495df5d46849811c64d57e7d5b3a29:31"'+
                              ','+ quotedstr(tabela.fieldbyname('ddd').AsString + ' '+
                                             tabela.fieldbyname('fone').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('ddd').AsString + ' '+
                                             tabela.fieldbyname('fax').AsString)+ ')');
                       //debugstr(fdm.snet);
                       try
                          execsql;
                       except
                          fdm.conectnet.Disconnect;
                          execsql;
                       end;

                       sql.Clear;
                       sql.Add('select customers_id from customers where chave = '+
                                quotedstr(tabela.fieldbyname('chave').AsString));
                       try
                          open;
                       except
                          fdm.conectnet.Disconnect;
                          open;
                       end;
                       chave := fieldbyname('customers_id').AsString;
                       close;



                       //dtconta
                       sql.Clear;
                       sql.Add('insert into customers_info(customers_info_id, customers_info_date_account_created)'+
                               'values ( '+quotedstr(chave)+', now())');
                       try
                          execsql;
                       except
                          fdm.conectnet.Disconnect;
                          execsql;
                       end;



                       sql.Clear;
                       sql.Add('insert into address_book( '+
                               ' customers_id '+
                               //', entry_gender'+
                               ', entry_firstname'+
                               ', entry_lastname'+
                               ', entry_street_address'+
                               ',entry_num '+
                               ',entry_compl '+
                               ', entry_suburb'+
                               ', entry_postcode'+
                               ', entry_city'+
                               ', entry_state'+
                               ', entry_country_id'+
                               ', entry_street_address2'+
                               ', entry_street_address3) values('+

                                   quotedstr(chave)+
                              //',"m"'+
                              ','+ quotedstr(pnome(tabela.fieldbyname('nome').AsString))+
                              ','+ quotedstr(snome(tabela.fieldbyname('nome').AsString))+
                              ','+quotedstr(tabela.fieldbyname('endereco').AsString)+
                              ','+quotedstr(tabela.fieldbyname('numero').AsString)+
                              ','+quotedstr(tabela.fieldbyname('complemento').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('bairro').AsString)+
                              ','+ quotedstr(formatnumeric(tabela.fieldbyname('cep').AsString))+
                              ','+ quotedstr(tabela.fieldbyname('municipio').AsString)+
                              ','+ quotedstr(estadouf(tabela.fieldbyname('uf').AsString))+
                              ','+ quotedstr('30')+
                              ','+ quotedstr(tabela.fieldbyname('cnpj').AsString)+
                              ','+ quotedstr(tabela.fieldbyname('ie').AsString) +')');

                       try
                          execsql;
                       except
                          fdm.conectnet.Disconnect;
                          execsql;
                       end;



                       //customers_default_address_id da customers
                       sql.Clear;
                       sql.Add('select address_book_id from address_book where customers_id = '+ quotedstr(chave));
                       try
                          open;
                       except
                          fdm.conectnet.Disconnect;
                          open;
                       end;

                      id := fieldbyname('address_book_id').asstring;
                      close;

                      sql.Clear;
                      sql.Add('update customers set customers_default_address_id = '+ quotedstr(id) +
                           ' where customers_id = '+quotedstr(chave));
                       try
                          execsql;
                       except
                          fdm.conectnet.Disconnect;
                          execsql;
                       end;

                  end;

end;             

procedure Tfcadg.gentilalteraExecute(Sender: TObject);
var
aniv:string;
begin
                 if tabela['Nascimento'] <> null then
                    aniv := ',customers.customers_dob='+ quotedstr(formatdatetime('yyyy-mm-dd',tabela.fieldbyname('Nascimento').Asdatetime))
                 else
                    aniv := ',customers.customers_dob = now()  ';

                  with fdm.snet do begin
                      close;
                      sql.Clear;
                      sql.Add('update customers, address_book set '+
                                ' customers.customers_firstname='+ quotedstr(pnome(tabela.fieldbyname('nome').AsString))+
                                ' , customers.customers_lastname='+ quotedstr(snome(tabela.fieldbyname('nome').AsString))+
                                aniv +
                                ',customers.customers_email_address='+ quotedstr(tabela.fieldbyname('email').AsString)+
                                ',customers.customers_telephone ='+ quotedstr(tabela.fieldbyname('ddd').AsString + ' '+
                                             tabela.fieldbyname('fone').AsString)+
                                ',customers.customers_fax ='+ quotedstr(tabela.fieldbyname('ddd').AsString + ' '+
                                                   tabela.fieldbyname('fax').AsString)+
                                ',address_book.entry_firstname='+ quotedstr(pnome(tabela.fieldbyname('nome').AsString))+
                                ',address_book.entry_lastname='+ quotedstr(snome(tabela.fieldbyname('nome').AsString))+
                                ',address_book.entry_street_address ='+ quotedstr(tabela.fieldbyname('endereco').AsString)+
                                ',address_book.entry_num ='+ quotedstr(tabela.fieldbyname('numero').AsString)+
                                ',address_book.entry_compl ='+ quotedstr(tabela.fieldbyname('complemento').AsString)+
                                ',address_book.entry_suburb ='+ quotedstr(tabela.fieldbyname('bairro').AsString)+
                                ',address_book.entry_postcode='+ quotedstr(formatnumeric(tabela.fieldbyname('cep').AsString))+
                                ',address_book.entry_city='+ quotedstr(tabela.fieldbyname('municipio').AsString)+
                                ',address_book.entry_state='+ quotedstr(estadouf(tabela.fieldbyname('uf').AsString))+
                                ',address_book.entry_street_address2 ='+ quotedstr(tabela.fieldbyname('cnpj').AsString)+
                                ',address_book.entry_street_address3='+ quotedstr(tabela.fieldbyname('ie').AsString)+
                                ' where customers.customers_id = address_book .customers_id '+
                                ' and entry_street_address2 ='+quotedstr(tabela.fieldbyname('cnpj').AsString));

                       try
                          execsql;
                       except
                          fdm.conectnet.Disconnect;
                          execsql;
                       end;
                    end;

end;

procedure Tfcadg.mod100Execute(Sender: TObject);
begin
             fcadgv:=tfcadgv.Create(application,
                'os','codigo','','', //campos que nao pode ser nulos
                'os','','','', //campos que nao deve duplicar
                'os', 'dtentrada', '','', '', '', //campos que deve preencher automaticamente
                'volt', '', '127v,220v', //combo1, tabela,  campo tabela/lista
                '', '', '', //combo2
                '', '', '', //combo3
                '', '', '', //combo4

                '' ,'', '','' , //checks list (4)

                '' ,'', '', //crupo radio, lista, valor campo
                '' ,'', '', //2
                '' ,'', '', //3
                '' ,'', '', //4

                'Descricao','Orcamento','CondPgto','Historico',2,2,2,2,ds,tabela,nummodulo); //memo1,2,2,3 e 4 e qtd de linhas/altura

end;

procedure Tfcadg.Button1Click(Sender: TObject);
begin

end;



{        st :='';
        selecione('select * from tbclientev order by nome');

        while not sqlpub.Eof do begin

           if sqlpub['cnpj']<> null then
              if not tabela.Locate('cnpj',sqlpub.fieldbyname('cnpj').AsString,[]) then
                 if not tabela.Locate('nome',sqlpub.fieldbyname('nome').AsString,[]) then
                    st := st +' or codigo = ' + quotedstr(sqlpub.fieldbyname('nome').AsString);
           sqlpub.next;
        end;
}
procedure Tfcadg.ContagedeEstoque1Click(Sender: TObject);
begin
          if pcontagem.Visible then
             msg('#Já está em contagem de estoque',0);

            rsemelhante.Checked := false;

          senhagerencial('Contagem de estoque','#', 'CONTAR ESTOQUE!');

          selecione( 'update '+nometb+' set estoqueAntes = '+
                     ' if(estoque is null,0, estoque) '+
                     ' where (estoqueAntes = 0 or estoqueAntes is null)');
          pcontagem.Show;
          tabela.close;
          elocalizar.Clear;
          filtroExecute(self);
          grade.Options := grade.Options + [dgrowselect];

end;

procedure Tfcadg.SpeedButton14Click(Sender: TObject);
var
gera,tit,codigo: string;
sai,ent:boolean;
ini:tinifile;
begin


      if rcontagem.Checked then
         tit := 'Deseja efetivar a contagem do estoque e "ZERAR O ESTOQUE NÃO CONTADO"?'
      else
         tit := 'Deseja efetivar a contagem do estoque? ';

      if not msg(tit,2) then abort;

      fdm.tbconfig.Open;
      codigo:=tabela.fieldbyname('codigo').AsString;


      //se for zerar os nao contados
      if rcontagem.Checked then
          selecione('update  '+nometb+'  set ' +
                       ' estoquedepois = 0 '+
                       ', divergencia = estoqueAntes - estoquedepois ' +
                       ', contado = "S" ' +
                       ' where (contado is null or contado ="N" or contado = "")');

          geraentradaexecute(self);

          selecione('update  '+nometb+'  set '+
                           ' estoque = if(contado ="S" , estoquedepois,0), '+
                           ' estoquedepois=null,'+
                           ' estoqueantes = null, '+
                           ' divergencia = null, '+
                           ' contado = null where contado ="S" ' );

          selecione('update  '+nometb+'  set '+
                    ' estoquedepois=null,'+
                    ' estoqueantes = null, '+
                    ' divergencia = null, '+
                    ' contado = null' );

          elocalizar.Clear;
          filtroExecute(self);

          pcontagem.Hide;

          galtera('11','0','i');
          contprod:=false;
          fdm.tbconfig.close;
          msg('Contagem efetuada!!!',0);
          grade.Options := grade.Options - [dgrowselect];

end;

procedure Tfcadg.geraentradaExecute(Sender: TObject);
var
chave:string;
begin

            chave := inttostr(fdm.numnota(mp,false));

            with fdm.Query1 do begin
                 Close;
                 close;
                 sql.clear;
                 sql.add( 'insert into tbentrada'+mp+' (data,datanota, codigo,nome,numero,modo,emp,avulso) values('+
                         ' now(),now(), "1","CONTAGEM ESTOQUE",'+quotedstr(chave)+',"F",'+inttostr(emp)+',"N")');
                 execsql;

                 Close;
                 sql.clear;
                 sql.add(  'select chave from tbentrada'+mp+' where numero = ' + quotedstr(chave)+sqlempresa(1,1,''));
                 open;
                 chave := fieldbyname('chave').AsString;


                close;
                sql.clear;
                sql.add('insert into tbentradaitem'+mp+' (data,codigo,descricao,qtd,cnt,emp,link) '+
                               '(select now(), codigo '+
                               ', descricao'+
                               ', divergencia *(-1)'+
                               ',"0"'+
                               ','+inttostr(emp)+
                               ', '+ quotedstr(chave)+
                               ' from  '+nometb+'  where divergencia<>0)');
                try
                  execsql;
                except end;
         end;

end;

procedure Tfcadg.btnfecharClick(Sender: TObject);
begin
        pcontagem.Hide;
end;

procedure Tfcadg.SpeedButton13Click(Sender: TObject);
begin
          if not msg('Deseja cancelar a contagem do estoque?', 2) then abort;

          selecione( 'update  '+nometb+'  set  estoqueantes = null,  '+
                     'estoquedepois = null, divergencia = null,contado=null');

          elocalizar.Clear;
          filtroExecute(self);

          msg('Contagem cancelada!', 0);
          elocalizar.SetFocus;
          pcontagem.Hide;
          contprod := false;
          grade.Options := grade.Options - [dgrowselect];

end;

procedure Tfcadg.contagemExecute(Sender: TObject);
var
indice,st,scr: string;
quantidade:double;

      procedure estm;
      var
         sq:tzquery;
         nomes,ST:string;
      begin
               sq :=  tzquery.Create(application);
               with sq do begin
                    Connection := fdm.conector ;

                    sql.add('select chave,nome,cnpj from tbempresa where (flag <> "D" or flag is null) order by chave');
                    open;

                    if RecordCount >= 2 then begin

                        nomes :='';
                        while not EOF do begin
                          nomes := 'Estoque Geral = '+ (tabela.FieldByName('estoquedepois').AsString)+#13+#13+
                                   copy(FieldByName('chave').AsString +
                                   '        =  ' + FieldByName('nome').AsString,1,40) +#13+
                                   'CNPJ =  '+ FieldByName('CNPJ').AsString+#13;

                          st := msgi('DIGITE A QUANTIDADE PARA A EMPRESA:'+#13+#13+nomes,2);

                          if StrIsFloat(st) = False then msg('#O valor digitado não é um número válido!',0);

                          selecione('update tbproduto'+mp+ ' set estoque'+FieldByName('chave').AsString +
                                    ' = '+realdblstr(strtofloat(st))+ ' where chave = '+quotedstr(tabela.fieldbyname('chave').AsString));

                          Next;
                        end;

                    end;

               end;
          end;
begin


        indice := indtz(tabela.IndexFieldNames);

        abortaacao(nil,tabela,'chave','','','','',0);
        quantidade := 0;

        if (uppercase(indice) = 'CODIGO')  and
           (elocalizar.Text <> tabela.FieldByName('codigo').AsString) then begin
           elocalizar.Clear;
           msg('#Código interno digitado não localizado.',0);
        end;

        if (uppercase(indice) = 'CODIGOBARRAS')  and
           (elocalizar.Text <> tabela.FieldByName('codigobarras').AsString) then begin
           elocalizar.Clear;
           msg('#Código de Barras digitado não localizado.',0);
        end;

        tabela.Edit;
        if (rqtd.ItemIndex = 1) or(rqtd.ItemIndex = 2) then begin
           quantidade := strtofloat(msgi('Digite a quantidade:',2));

           if rqtd.ItemIndex = 1 then begin
              tabela['estoquedepois'] := quantidade;
              scr := 'estoquedepois = '+realdblstr(quantidade);
           end else begin
              scr := 'estoquedepois = if(estoquedepois is null, 1, estoquedepois + '+realdblstr(quantidade)+' )';
              tabela['estoquedepois'] := tabela.fieldbyname('estoquedepois').AsFloat + quantidade;
           end;

        end else begin
            quantidade := 1;
           scr := 'estoquedepois = if(estoquedepois is null, 1, estoquedepois + 1 )';
           tabela['estoquedepois'] := tabela.fieldbyname('estoquedepois').AsFloat + 1;
       end;


        tabela['divergencia'] := tabela.fieldbyname('estoqueAntes').AsFloat -
                                 tabela.fieldbyname('estoquedepois').AsFloat;
        tabela['contado'] := 'S';
        //tabela.Post;


         st := tabela.FieldByName('codigo').AsString;
         selecione( 'update  '+nometb+'  set ' +
                     scr +
                    ', divergencia = estoqueAntes - estoquedepois' +
                    ', contado = "S" ' +
                    ' where codigo = ' + quotedstr(st));
        if indtz(tabela.IndexFieldNames) = 'descricao' then else
        elocalizar.Clear;
        contprod:=true;
        if multempresa then estm;
end;

procedure Tfcadg.AlterarValores1Click(Sender: TObject);
begin
           codloc :='';
           abortaacao(nil,tabela,'chave','','','','',0);
           periodo2('atualizaprod','atualiza','','','','',308,377,0);
           tabela.Refresh;
end;

procedure Tfcadg.EstoquedasFiliais1Click(Sender: TObject);
begin
             if tabela['chave']<> null then
                estoquefilial(tabela.fieldbyname('codigo').AsString)
             else
                estoquefilial('');
end;

procedure Tfcadg.Promoodoproduto1Click(Sender: TObject);
var
loc:string;
begin
          loc := tabela.fieldbyname('codigo').asstring;
           codloc :='';
           abortaacao(nil,tabela,'chave','','','','',0);
           periodo2('atualizaprod','','','','','',308,377,0);
           tabela.Refresh;
           tabela.locate('codigo',loc,[]);
end;

procedure Tfcadg.RelatriodeAcertodeEstoquesadas1Click(Sender: TObject);
begin
              relatorio('','tbentradaitem'+mp+'.Data','Codigo',
                        'select tbentradaitem'+mp+'.chave, tbentradaitem'+mp+'.Data, tbentradaitem'+mp+'.Codigo,'+
                        ' tbentradaitem'+mp+'.descricao, tbentradaitem'+mp+'.Qtd,  '+nometb+'.Vrunit,'+
                        nometb+'.vrunit*tbentradaitem'+mp+'.qtd as Total ',
                        ' from tbentradaitem'+mp+', '+nometb,
                        ' and tbentradaitem'+mp+'.codigo = '+nometb+'.codigo  and tbentradaitem'+mp+
                        '.cnt = "0" '+sqlempresa(1,1,'tbentradaitem'),
                        '',
                        'Total','','','','', '','','','','', '','','','','','','','',
                        'tbentradaitem'+mp,
                        'Acerto de estoque',
                        'cest',0,0);

end;

procedure Tfcadg.Curvaabc1Click(Sender: TObject);
begin
           periodo2('curva','',inttostr(nummodulo),'','','',179,368,0);
end;

procedure Tfcadg.Listadepreos1Click(Sender: TObject);
begin

                 relatorio('','','descricao',
                       'select chave, Codigo, Descricao,VrVenda, VrAtacado, Valor3 as VrAtacado1,Estoque, Fracao as Qtd_Cx,'+
                       ' Familia, Grupo, Subgrupo, Fabricante as Fornecedor from '+nometb,

                       '', '','','','','','','', '','','','','','','', '','','','','','',
                      nometb,
                      'Lista de preços',
                      nometb+'list',0,0);
end;

procedure Tfcadg.Consumidores1Click(Sender: TObject);
begin
        with fdm.Query1 do begin
             sql.Clear;
             sql.add('select tbpedidoitem.chave, tbpedidoitem.Data , sum(tbpedidoitem.qtd) as Qtd, tbpedidoitem.VrUnit, tbpedidoitem.Descontoreal as Desconto, tbcliente.Nome, tbcliente.DDD,tbcliente.Fone,tbcliente.Email '+
                     ' from tbpedidoitem, tbcliente' +
                     ' where tbpedidoitem.codigocliente = tbcliente.codigo '+
                     ' and tbpedidoitem.codigo = ' + quotedstr(tabela.FieldByName('codigo').AsString)+ sqlempresa(1,1,'tbpedidoitem')+
                     ' group by tbpedidoitem.codigocliente, tbpedidoitem.Data, tbpedidoitem.VrUnit, tbpedidoitem.Descontoreal '+
                     ' order by tbpedidoitem.Data desc,  tbcliente.Nome ');

//             debugstr(fdm.query1);
             fdm.tbquery1.close;
             fdm.tbquery1.Open;
        end;

        reltb(fdm.tbquery1,'consumo' ,'Consumidores: '+tabela.FieldByName('descricao').AsString,'','','','','','','','','','','','','');
        fdm.tbquery1.close;

end;

procedure Tfcadg.Fornecedores1Click(Sender: TObject);
begin
  with fdm.query1 do
  begin
    Close;
    sql.clear;
    sql.add( 'select '+
                   ' tbentradaitem'+mp+'.chave,tbentrada'+mp+'.Codigo, tbentrada'+mp+'.Nome, tbentradaitem'+mp+'.Data, tbentradaitem'+mp+'.VrUnit, '+
                   ' tbentradaitem'+mp+'.Frete,tbentradaitem'+mp+'.IPI, tbentradaitem'+mp+'.ICM '+
                   ' from tbentradaitem'+mp+',tbentrada'+mp+
                   ' where tbentradaitem'+mp+'.cnt is null and tbentradaitem'+mp+'.link = tbentrada'+mp+'.chave '+
                   ' and tbentradaitem'+mp+'.codigo = ' + quotedstr(tabela.fieldbyname('codigo').AsString)+sqlempresa(1,1,'tbentrada')+
                   ' group by tbentrada'+mp+'.nome order by tbentradaitem'+mp+'.data');
  end;

    fdm.tbquery1.close;
    fdm.tbquery1.open;
    (fdm.tbquery1.FieldByName('vrunit') as tfloatfield).displayformat := '###,##0.000';
    (fdm.tbquery1.FieldByName('icm') as tfloatfield).displayformat := '###,##0.000';
    (fdm.tbquery1.FieldByName('ipi') as tfloatfield).displayformat := '###,##0.000';
    (fdm.tbquery1.FieldByName('Frete') as tfloatfield).displayformat := '###,##0.000';
    reltb(fdm.tbquery1,'Fornecedores de: '+ tabela.fieldbyname('codigo').AsString +
          ' - '+tabela.fieldbyname('descricao').AsString,'','','','','','','''','','','','','','','');
    fdm.tbquery1.close;

end;

procedure Tfcadg.recpgExecute(Sender: TObject);
var
codigo,tipo,nconta,total:string;
nmod:integer;
begin


        case nummodulo of
             9: nmod := 4; //loc cli
             10: nmod := 7;// loc forn
        end;

        codigo := msgi('Digite (só números): O Código, ou o CNPJ/CPF ou o Fone, ou as iniciais do nome para pesquisa',0);
        listagem(achacp('nome',codigo),codigo,'',nmod,0);

        if fdm.sg.Active = false then abort;

        codigo := fdm.sg.fieldbyname('codigo').AsString;
        fechatg;

        nconta := msgi('Digite uma opção: Que tipo de conta deseja gerar?' + #13 + #13 +
                       '1 = Cartão  ' + #13 +
                       '2 = Cheque'+ #13 +
                       '3 = A prazo ' ,2);

        if  not (strtoint(nconta) in [1..3]) then abort;

        case nummodulo of
             9 : tipo :='1';
             10: tipo :='2';
        end;

        total := msgi('Digite o valor total',2); if total = '' then abort;
        vf := false;
        contarecpg(strtoint(codigo),strtoint(tipo),strtoint(nconta),0,strtofloat(total),0, 0,date,'','');

        if vf then begin
            ind :='codigo';
            elocalizar.Text := codigo;
            rativo.ItemIndex := rativo.Columns+1;
            keybd_event(13, 0, 0, 0);
            GALTERA(inttostr(nummodulo),codloc,'i');
            codloc :='';
        end;


        case nummodulo of
             9: saldocliente(codigo);
            10: saldofornecedor(codigo);
        end;

        vf := false;
end;

procedure Tfcadg.recpgcamposExecute(Sender: TObject);
var
campos,tp:string;
begin

         if nummodulo = 10 then begin
            if rsemelhante.Checked then begin
               campos := ' c.nomecurto, c.endereco, c.numero, c.complemento, c.bairro, '+
                         ' c.municipio, c.cep, c.uf, c.cnpj, c.ie, c.ddd, c.fone, c.fax, ';

               from :=' tbpagar as r, tbfornecedor as c';
            end else  from :=' tbpagar as r ';


            script :=' select r.chave, '+
                       'r.chave as Num, r.codigo,r.nome, '+
                       ' r.dtemissao,r.dtvencimento,r.vrdocumento,'+
                       ' r.desconto,r.acrescimo,r.total,r.recebido,r.diferenca,'+

                        ' r.Mora, r.vrtitulo,r.dtpagamento,r.Saldo as DebFor,   '+

                        tipocontad+','+Contacontabild+','+
                        tipocontac+','+Contacontabilc+','+
                        tipocontab+','+Contacontabilb+','+

                        ' if(r.ch="S","CHEQUE", if (r.ch="C","CARTAO",'+
                          ' if(r.ch IS NULL,"A PRAZO",r.ch))) as Tipo,'+

                        ' r.documento, r.letra,'+ campos+' r.ch,r.cheque,'+
                        ' r.banco,r.agencia,r.conta,r.movimentopagar,r.linkvenda, r.modulo, r.obs from '+from;
         end;


         if nummodulo = 9 then begin
            if rsemelhante.Checked then begin
               campos := ' c.nomecurto, c.endereco, c.numero, c.complemento, c.bairro, '+
                         ' c.municipio, c.cep, c.uf, c.enderecocobranca, c.numerocobranca, '+
                         ' c.complementocobranca, c.bairrocobranca, c.municipiocobranca, '+
                         ' c.cepcobranca, c.ufcobranca, c.cnpj, c.ie, c.ddd, c.fone, c.fax, c.fone2, c.fone3,c.email,';

               from :=' tbreceber as r, tbcliente as c';
            end else  from :=' tbreceber as r ';
                             
            script :=' select r.chave, '+

                       'r.chave as Num,NF, r.codigo,r.nome, '+

                       ' r.dtemissao,r.dtvencimento,r.vrdocumento,'+
                       ' r.desconto,r.acrescimo,r.total,r.recebido,r.diferenca,'+

                        '    if(TO_DAYS(now()) > TO_DAYS(r.dtvencimento+'+realdblstr(carencia)+'),'+
                        '        To_days(now()) - To_days(r.dtvencimento),null) as Dia, '+

                        'if(To_days(now())- To_days(r.dtvencimento)<'+
                          realdblstr(djuro)+','+realdblstr(juro)+','+realdblstr(juro2)+') as aliq, '+

                        '    if((To_days(now())- To_days(r.dtvencimento))<'+   realdblstr(djuro)+','+
                                realdblstr(juro)+','+realdblstr(juro2)+')*r.diferenca/100 as juro_dia, '+

                        '    if((TO_DAYS(now()) > TO_DAYS(r.dtvencimento+'+realdblstr(carencia)+')),'+
                        '             (To_days(now())- To_days(r.dtvencimento)) *'+
                        '    	 (if(To_days(now())- To_days(r.dtvencimento)<'+
                                     realdblstr(djuro)+','+realdblstr(juro)+','+realdblstr(juro2)+') * '+
                        '    	 r.diferenca/100), null) as juro, '+

                        '    if((TO_DAYS(now()) > TO_DAYS(r.dtvencimento+'+realdblstr(carencia)+')),'+
                        '             (To_days(now())- To_days(r.dtvencimento)) *'+
                        '    	 (if(To_days(now())- To_days(r.dtvencimento)<'+
                                     realdblstr(djuro)+','+realdblstr(juro)+','+realdblstr(juro2)+') * '+
                        '    	 r.diferenca/100)+r.diferenca, r.diferenca) as totalgeral, '+

                        ' r.Saldo as DebCliente,r.Avulsa, r.vrtitulo,r.dtpagamento, '+
                        ' r.codconta,'+tipocontad+','+Contacontabild+',r.codconta2,'+tipocontac+','+ Contacontabilc+
                        ',r.codconta3,'+tipocontab+','+Contacontabilb+ ','+


                        ' if(r.ch="S","CHEQUE", if (r.ch="P","CHEQ PASS", if (r.ch="D","CHEQ DEV", if (r.ch="C","CARTAO",'+
                          ' if(r.ch IS NULL,"A PRAZO",r.ch))))) as Tipo,'+

                        ' r.documento, r.letra,r.posicaoconta,'+ campos+' r.ch,r.cheque,'+
                        ' r.banco,r.agencia,r.conta,r.nboleto,r.vendedor,r.comissao,'+
                        ' r.passado,r.datapassado,r.movimentopagar,r.linkvenda, r.modulo, r.obs from '+from;
         end;

end;

procedure Tfcadg.FormasPgto1Click(Sender: TObject);
begin
         cadp ('tbcondfatura', 'select chave, descricao, Conta, codigo, comissao,  venc1, venc2, venc3, venc4, venc5, venc6, tipopgto from tbcondfatura ', '',
              'codigo','descricao',
              'Conta','tbconta','descricao',
              'tipopgto','','A VISTA,A PRAZO,CART D,CART C,CHEQUE',
              '','','',
              'codigo',
              '',
              '',
              '',
              2,0);

end;

procedure Tfcadg.gradeDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

      if (nummodulo in[9,10]) and ((Column.FieldName = 'dtvencimento') or
         (Column.FieldName = 'codigo'))  then

        with grade.Canvas do  begin

//          if tabela['dtpagamento']= null then
  //           Font.Color := clblack
         // else
           if (tabela.FieldByName('diferenca').AsFloat >0) and
                  (tabela.FieldByName('recebido').AsFloat >0) then
             Font.Color := $00005100

          else if(tabela.FieldByName('recebido').AsFloat >0) then
             Font.Color := clblue

          else if (nummodulo in[10]) and ((tabela.FieldByName('dtvencimento').AsDateTime < date)and
              (tabela['dtpagamento']= null)) and
              (tabela.FieldByName('diferenca').AsFloat >=0) then
              Font.Color := clred

          else if (nummodulo in[9]) and (((tabela.FieldByName('dtvencimento').AsDateTime +carencia) < date)and
              (tabela['dtpagamento']= null)) and
              (tabela.FieldByName('diferenca').AsFloat >=0) then
              Font.Color := clred;


      FillRect(Rect);
      TextOut(Rect.Left+2,Rect.Top+2,Column.Field.DisplayText);
      end;
      
end;

procedure Tfcadg.totrecpgExecute(Sender: TObject);
var
tot, arec,rec:double;
pr:string;
begin

    tabela.First;
    tabela.DisableControls;
    tot :=0;
    arec:=0;
    rec:=0;

    while not tabela.Eof do begin
          tot := tot + tabela.fieldbyname('total').AsFloat;
          arec := arec + tabela.fieldbyname('diferenca').AsFloat;
          rec := rec + tabela.fieldbyname('recebido').AsFloat;
          tabela.Next;
    end;
    tabela.First;

    tabela.EnableControls;

    if nummodulo = 9 then
       pr :='RECEBIDO'
    else pr :='PAGO';

    litem.Caption := '|        '+inttostr(tabela.RecordCount) + ' ITEM(NS):'+
                     '        |        TOTAL = ' + format('%n',[tot])+
                     '        |        NÃO '+pr+' = ' + format('%n',[arec])+
                     '        |        '+pr+' = ' + format('%n',[rec])+'        |';

end;

procedure Tfcadg.graficoExecute(Sender: TObject);
var
j,i:integer;
ct,ind,nomes,st:string;
tbgraf:tclientdataset;
begin


      tbgrafico.close;
      tbgrafico.Open;
      tbgrafico.IndexFieldNames := indtz(tabela.IndexFieldNames);

      tbgraf :=  tclientdataset.Create(application);
      tbgraf := tbgrafico;

      if tbgraf.IndexFieldNames='' then
         ind := tbgraf.IndexName
      else
         ind := tbgraf.IndexFieldNames ;

      i:=1;
      j:=length(ind);
      //nome do campo
      while i<=j do begin
            if ct <> ';' then
               ct := copy(ind,i,1);

            if ct <> ';' then
               nomes := nomes + copy(ind,i,1);

            inc(i);
      end;

      ind := nomes;
      nomes :='';

      for i:=0 to grade.Columns.Count-1 do
         if (tbgraf.fieldbyname(grade.Columns[i].FieldName).ClassName = 'TFloatField') and  
            (grade.Columns[i].Visible) then
             nomes := nomes + #13 + inttostr(i-1) + ' = '+ grade.Columns[i].Title.Caption;


              if nomes = '' then
                 msg('#Não existe campo numérico para montar um gráfico!',0);


              st:=msgi('O gráfico será montado por dois campos:'+#13+ #13+
                       'Campo da grade ordenado ('+tbgraf.IndexFieldNames+
                       ') + o campo numérico digitado abaixo:'+#13+nomes,0);

              if st='' then abort;
              try
                 if tbgraf.fieldbyname(grade.Columns[strtoint(st)+1].FieldName).ClassName <> 'TFloatField' then
                    msg('#Digite corretamente!',0);
              except msg('#Digite corretamente!',0);
              end;



              fdm.gerafrafico(tbgraf,ind,
                              grade.Columns[strtoint(st)+1].FieldName,
                              caption + ' POR '+uppercase(ind) +
                              ' E '+ uppercase(grade.Columns[strtoint(st)+1].FieldName));
             tbgraf:=nil;
             tbgrafico.Close;


end;

procedure Tfcadg.rsemelhanteClick(Sender: TObject);
begin

      if (active) and (pcontagem.Visible =false) and(nummodulo in [5])then begin
         if rsemelhante.Checked then begin
            if grades.Columns.Count <=1 then begin

                ncol:=0;
                criacoluna(grades,'codigo','Cód Interno',80);
                criacoluna(grades,'Descricao','Descrição dos produtos semelhantes',250);
                criacoluna(grades,'Vrvenda','Varejo',70);
                criacoluna(grades,'vratacado','Atacado',70);
                criacoluna(grades,'valor3','Atacado2',70);
                criacoluna(grades,'VrPromocao','VrPromoção',70);
                criacoluna(grades,'Estoque','Estoque',50);

            end;
            psemelhante.Show;
            psemelhante.Height :=101;
            pcliente.Hide;

            with ssemelhante do begin
                 close;
                 sql.Clear;
                 sql.Add('select tbsemelhante.link, tbsemelhante.chave,tbproduto.codigo,'+
                         'tbproduto.descricao,tbproduto.vrvenda,tbproduto.vratacado,tbproduto.valor3, tbproduto.vrpromocao from tbproduto, tbsemelhante '+
                         ' where tbsemelhante.link = tbproduto.chave '+
                         ' and tbsemelhante.codigo = '+ quotedstr(tabela.fieldbyname('codigo').AsString)+
                         ' order by tbsemelhante.codigo');

                 open;
                 (ssemelhante.fieldbyname('vrvenda')  as tfloatfield).displayformat := '###,##0.'+ Dvenda;
                 (ssemelhante.fieldbyname('vratacado')  as tfloatfield).displayformat := '###,##0.'+ Dvenda;
                 (ssemelhante.fieldbyname('valor3')  as tfloatfield).displayformat := '###,##0.'+ Dvenda;
                 (ssemelhante.fieldbyname('vrpromocao')  as tfloatfield).displayformat := '###,##0.'+ Dvenda;

            end;

         end else begin
            psemelhante.Hide;
            pcliente.Show;
         end;


        //pg e receber
        end else if (active) and(nummodulo in [9,10]) then begin
           filtroexecute(self);
           elocalizar.SetFocus;
        end;
end;

procedure Tfcadg.IncluirAlterarCEP1Click(Sender: TObject);
begin
        if flista = nil then cepibge(24,1)
        else msg('Para cadastrar, feche tudo, e no menu principal, cadastro escolha Cep/IBGE.',0);
end;

procedure Tfcadg.municipioibgeClick(Sender: TObject);
begin
        cepibge(23,1);
end;

procedure Tfcadg.mod101_102Execute(Sender: TObject);
const ipi :string =
' 0'+
',00'+
',01'+
',02'+
',03'+
',04'+
',05'+
',49'+
',50'+
',51'+
',52'+
',53'+
',54'+
',55'+
',99';



begin
             fcadgv:=tfcadgv.Create(application,
                'codigo','descricao','','', //campos que nao pode ser nulos
                'codigo','descricao','','', //campos que nao deve duplicar
                'codigo', '', '','', '', '', //campos que deve preencher automaticamente
                'ModoIPI', '', ipi, //combo1, tabela,  campo tabela/lista
                'grupo', 'tbgrupo', 'nome', //combo2
                '', '', '', //combo3
                '', '', '', //combo4

                '' ,'', '','' , //checks list (4)

                '' ,'', '', //crupo radio, lista, valor campo
                '' ,'', '', //2
                '' ,'', '', //3
                '' ,'', '', //4

                'aplicacao','','','',3,0,0,0,ds,tabela,nummodulo); //memo1,2,2,3 e 4 e qtd de linhas/altura

end;

procedure Tfcadg.mod101_Execute(Sender: TObject);
begin
        if (responsavel = '04.605.305/0001-88')
           and ((nummodulo=101)or(nummodulo=102)) then begin
           //grade.Columns[7].Title.caption :='Total';
           //grade.Columns[8].Title.caption :='Qt. carga';
        end;
end;

procedure Tfcadg.Cadastrarunidademedida1Click(Sender: TObject);
begin
         cadp ('tbun', '','',       //fprodutolocaliza.tabela que vai usar ou cod sql na 2ª + titulo
              'un','',           //campos que nao devem duplicar
              '','','',                 //combo1(campo,fprodutolocaliza.tabela,nomecampotabela)
              '','','',                 //combo2(campo,fprodutolocaliza.tabela,nomecampotabela)
              '','','',
              '',                     //campo auto incremento
              '',                       //campo auto incremento
              '',                       //campo que nao ser nulo
              '',
              3,0);                       //onde vai comecar a criar os campos + link

end;

procedure Tfcadg.CadastrarSubGrupo1Click(Sender: TObject);
var
imp:integer;
ndup,cp,tbg,nmg,cpsite,combo:string;
begin

        codloc := '4';
        imp:= strtoint(msgi('Digite uma opção para cadastrar/alterar:' + #13 + #13 +
                   '1 = Departamento'+#13+
                   '2 = Seção . . . . . . . '+#13+
                   '3 = Grupo. . . . . . . '+#13+
                   '4 = Subgrupo. . . . ', 2));

        if (imp <1) and (imp>4) then abort;

        case imp of
             1: begin
                   tbg :='tbDepartamento';
                   cpsite := ',visivel,posicao';
                   combo  := 'visivel';
                end;

             2: begin
                   tbg :='tbFamilia';
                   nmg :='tbDepartamento';
                   cpsite := ',visivel,posicao';
                   combo  := 'visivel';
                end;


             3: begin
                tbg :='tbGrupo';
                nmg :='tbFamilia';
             end;

             4: begin
                tbg :='tbSubgrupo';
                nmg :='tbGrupo';
             end;
        end;

        if nmg <>'' then begin
           cp := ','+ copy(nmg,3,15);
           ndup := copy(nmg,3,15);

           if imp =3 then begin
              ndup := 'secao';
              cp   := ',secao';
           end;   
        end;

            cadp (tbg, 'select chave, nome, codigo '+cp+ cpsite+' from '+tbg, copy(tbg,3,15),
                  'nome','codigo',
                  ndup,nmg,'nome',
                  combo,'','S,N',
                  '','','',
                  'codigo',
                  '',
                  ndup,
                  '',
                  2,0);


end;

procedure Tfcadg.mrcposicaocontaClick(Sender: TObject);
begin
         cadp ('tbcontaposicao', '', '',
              'descricao','',
              '','','',
              '','','',
              '','','',
              'codigo',
              '',
              '',
              '',
              3,0);

end;

procedure Tfcadg.mrctipocontaClick(Sender: TObject);
begin

             cadplanocontas;
             Tipocontad    := nomelink('r.codconta','chave', 'descricao','tbconta','Tipoconta');
             Contacontabild:= nomelink('r.codconta','chave', 'contacontabil','tbconta','Contacontabil');
             Tipocontac    := nomelink('r.codconta2','chave', 'descricao','tbconta','Tipoconta_C');
             Contacontabilc:= nomelink('r.codconta2','chave', 'contacontabil','tbconta','Contacontabil_C');
             Tipocontab    := nomelink('r.codconta3','chave', 'descricao','tbconta','Tipoconta_B');
             Contacontabilb:= nomelink('r.codconta3','chave', 'contacontabil','tbconta','Contacontabil_B');
end;

procedure Tfcadg.mcedenteClick(Sender: TObject);
begin
        cadg('select * from tbcedente','Banco', 31);
        //periodo2('cedente','','',237,739,0);
end;

procedure Tfcadg.gradeDblClick(Sender: TObject);
var
dados,campo,where,str,st:string;
begin

            if (grade.SelectedField.FieldName='codigo') and (responsavel='FABIO VITRINE') and (nummodulo = 5) then begin


                str := msgi('Alterar código do produto'+#13+#13+'Digite o novo código.',0);

                selecione('select codigo from tbproduto where codigo = ' + quotedstr(str));
                if sqlpub['codigo'] <> null then msg('#Código já existe.',0);

                st := msgi('Digite a senha do responsavel.',0);
                if uppercase(st) <> 'AHA00230' then msg('Não liberado!!!',0);


                selecione('update tbproduto set codigo = ' + quotedstr(str) + ' where chave  = '+
                          quotedstr(tabela.fieldbyname('chave').AsString));
                tabela.edit;
                tabela['codigo'] := str;

               abort;
            end;

        if nummodulo in[9,10] then begin
           where := '';
           campo  := grade.SelectedField.FieldName;
           if (tabela.fieldbyname(campo).ClassName = 'TDateField') then abort;
           codloc := tabela.fieldbyname(grade.SelectedField.FieldName).AsString;

           elocalizar.Clear;
           if nummodulo in[9] then rativo.ItemIndex :=5;
           if nummodulo in[10] then rativo.ItemIndex :=3;
           rsemelhante.Checked := false;

           dados := msgi('Pesquisar:'+#13+#13+ 'Digite o(a) '+campo+' e tecle Enter:',0);



           if (tabela.fieldbyname(campo).ClassName = 'TIntegerField') or
              (tabela.fieldbyname(campo).ClassName = 'TFloatField') then
                where := ' where ' + campo +' = '+ quotedstr(dados)
           else where :=  ' where ' + campo +' like '+ quotedstr(uppercase('%'+dados)+'%');

           if where <> '' then where  :=  where + ' and (r.flag <> "D" or r.flag is null) '+sqlempresa(1,1,'r');

           tabela.SQL.Clear;
           tabela.sql.add(script + where);

           tabela.close;
           tabela.open;
           imageExecute(self);
           titgrade(grade,nil,tabela);


        end else btneditarClick(self);
end;

procedure Tfcadg.Itensdacompra1Click(Sender: TObject);
begin
      abortaacao(nil,tabela,'chave','','','','',0);

      if nummodulo = 10 then begin
         if (tabela['modulo'] <> null) and (tabela['modulo'] = '27') then msg('Esta conta foi gerada de compras avulsas.',0)
         else itemcompra(tabela.FieldByName('documento').AsString, tabela.FieldByName('linkvenda').AsString)

      end else if nummodulo = 9 then begin
         if (tabela['modulo'] <> null) and (tabela['modulo'] = '28') then msg('Esta conta foi gerada de vendas avulsas.',0)
         else veritem('','tbpedidoitem','tbpedidoservico','tbpedidolocacao',tabela.fieldbyname('linkvenda').AsString,'');
      end;

end;

procedure Tfcadg.mod0Execute(Sender: TObject);

begin

             //2 - Simples Nacional - excesso de sublimite da receita bruta

             fcadgv:=tfcadgv.Create(application,
                'emp','uf','cnpj','cep', //campos que nao pode ser nulos
                'nome','emp','','', //campos que nao deve duplicar
                'codigo', 'emp', '','', '', '', //campos que deve preencher automaticamente
                'tipo', '', 'SIMPLES NACIONAL,SIMPLES NACIONAL EX,NORMAL', //combo1, tabela,  campo tabela/lista
                'emp', '', '1,2,3,4,5', //combo2
                'legenda', '', 'S,N', //combo3
                '', '', '', //combo4

                '' ,'', '','' , //checks list (4)

                '' ,'', '', //crupo radio, lista, valor campo
                '' ,'', '', //2
                '' ,'', '', //3
                '' ,'', '', //4

                '','','','',0,0,0,0,ds,tabela,nummodulo);

end;

procedure Tfcadg.LetradeDesconto1Click(Sender: TObject);
begin
         cadp ('tbdesconto', '','',       //fprodutolocaliza.tabela que vai usar ou cod sql na 2ª + titulo
              'letra','desconto',           //campos que nao devem duplicar
              '','','',                 //combo1(campo,fprodutolocaliza.tabela,nomecampotabela)
              '','','',                 //combo2(campo,fprodutolocaliza.tabela,nomecampotabela)
              '','','',
              '',                     //campo auto incremento
              '',                       //campo auto incremento
              '',                       //campo que nao ser nulo
              '',
              3,0);                       //onde vai comecar a criar os campos + link

end;

procedure Tfcadg.ltimasCompras1Click(Sender: TObject);
begin
        ultcompra(tabela.fieldbyname('codigo').asstring,mp);
end;

procedure Tfcadg.ICMS1Click(Sender: TObject);
begin

         cadp ('tbicms', 'select chave, descricao, imposto, IndEcf, SitTribut, SitTributaria from tbicms', '',
              'descricao','',
              'SitTribut','','ICMS,Subst,Isento,N Incid,ISSQN',
              '','','',
              '','','',
              '',
              '',
              'SitTribut',
              '',
              1,0);

end;

procedure Tfcadg.Mostraracerto1Click(Sender: TObject);
var
cam:string;
begin
        abortaacao(nil,tabela,'chave','','','','',0);
        if tabela['movimentopagar'] =null then msg('#Não houve acerto.',0);

        cam := servpath + 'Contas\tbreceber' +
                      tabela.fieldbyname('movimentopagar').AsString+'.txt';

        if fileexists(cam) then ShellExecute(Handle, 'open', pchar(cam), nil, '', Sw_Show)

        else                    msg('Acerto não localizado!', 0);

end;

procedure Tfcadg.mod11Execute(Sender: TObject);
begin
             fcadgv:=tfcadgv.Create(application,
                'valor','nome','','', //campos que nao pode ser nulos
                'numero','','','', //campos que nao deve duplicar
                'data', 'numero', '','', '', '', //campos que deve preencher automaticamente
                '', '', '', //combo1, tabela,  campo tabela/lista
                '', '', '', //combo2
                '', '', '', //combo3
                '', '', '', //combo4

                '' ,'', '','' , //checks list (4)

                '' ,'', '', //crupo radio, lista, valor campo
                '' ,'', '', //2
                '' ,'', '', //3
                '' ,'', '', //4

                '','','','',0,0,0,0,ds,tabela,nummodulo); //memo1,2,2,3 e 4 e qtd de linhas/altura

end;

procedure Tfcadg.qreciboBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
                ldtextenso.Caption := tabela.fieldbyname('municipio').asstring+
                                      ', ' + formatdatetime('dd',tabela.fieldbyname('data').AsDateTime) +
                                      ' DE ' + formatdatetime('mmmm',tabela.fieldbyname('data').AsDateTime)+
                                      ' DE ' + formatdatetime('yyyy',tabela.fieldbyname('data').AsDateTime);
                lextenso.Lines.Clear;
                lextenso.Lines.Add('****** ' + extenso(tabela.FieldByName('valor').AsFloat,'Real','Reais')+' ******');
                lvalor.Caption :='R$ '+ format('%n',[tabela.fieldbyname('valor').Asfloat]);
                lnumero.Caption := formatfloat('000000',tabela.fieldbyname('numero').Asfloat) ;
end;

procedure Tfcadg.Passarocheque1Click(Sender: TObject);
var
codigo,st, tbrc:string;
begin
                abortaacao(nil,tabela,'chave','','','','',0);
                if nummodulo=9 then tbrc:='tbreceber'
                else if nummodulo=10 then tbrc:='tbpagar';

                if (tabela['ch'] <> 'S') and (tabela['ch']='D') and (tabela['ch']='P') then msg('Não é cheque.',0);

                if msg('Passar para fornecedor/funcionário? ',2) then begin

                   codigo := msgi('Digite (só números): O Código, ou o CNPJ/CPF ou o Fone, ou as iniciais do nome para pesquisa',0);
                   listagem(achacp('nome',codigo),st,'',7,0);

                   if fdm.sg.Active then
                      codigo := fdm.sg.fieldbyname('nome').AsString;

                   fechatg;
                   if codigo = '' then abort;

                   end else
                   codigo := msgi('Digite o nome:',0);

                   selecione('update '+tbrc+' set'+
                            ' ch = "P" '+
                            ' ,passado =  '+quotedstr(uppercase(codigo))+
                            ' ,datapassado = now() '+
                            ' where chave ='+ quotedstr(tabela.fieldbyname('chave').AsString));

             rativo.ItemIndex :=2;
             st := tabela.fieldbyname('chave').AsString;
             tabela.cancel;
             tabela.refresh;
             tabela.Locate('chave',st,[]);
end;

procedure Tfcadg.Configurarcomisso1Click(Sender: TObject);
begin
        abortaacao(nil,tabela,'chave','','','','',0);
        vf:=false;
        periodo2('comifun','','','','','',180,670,0);
        if vf then altera(tabela, nil,nometb)
        else       tabela.Cancel;
        vf:=false;
end;

procedure Tfcadg.f4Execute(Sender: TObject);
begin
        btnreplicarClick(self);
end;

procedure Tfcadg.NatOperao1Click(Sender: TObject);
begin
         cadp ('tbcfop', '', '',
              'CFOP','natoperacao',
              '','','',
              '','','',
              '','','',
              '',
              '',
              'CFOP',
              '',
              2,0);
end;

procedure Tfcadg.Voltarochequeparanopassado1Click(Sender: TObject);
var
codigo,st, tbrc:string;
begin

             abortaacao(nil,tabela,'chave','','','','',0);
             if (tabela['ch'] <> 'P') and  (tabela['ch'] <> 'D') then
                msg('#Esta função serve apenas para cheques passados e devoldidos.',0);

             if msg('Voltar o cheque para não passado? ',2) then begin

                   if nummodulo=9 then tbrc:='tbreceber'
                   else if nummodulo=10 then tbrc:='tbpagar';
                   st := tabela.fieldbyname('chave').AsString;

                   selecione('update '+tbrc+' set'+
                            ' ch = "S" '+
                            ' ,passado =  null'+
                            ' ,datapassado = null '+
                            ' where chave ='+ quotedstr(st));

             rativo.ItemIndex :=0;
             tabela.cancel;
             tabela.refresh;
             tabela.Locate('chave',st,[]);
          end;

end;

procedure Tfcadg.Substituirstrings1Click(Sender: TObject);
var
st1,st2:string;
begin

        senhagerencial('ALTERAR DESCRIÇÃO',
                       'DIGITE A SENHA GERENCIAL PARA LIBERAR:',
                       'Esta operação altera a descrição dos produtos');

        st1 := uppercase(msgi('Digite a palavra que deseja alterar:', 0));
        st2 := uppercase(tiraacento(msgi('Alterar '+st1+' por:', 0)));
        selecione('update tbproduto'+mp+' set descricao = replace(descricao, '+ quotedstr(st1) +','+ quotedstr(st2)+ ')');
        tabela.Cancel;
        tabela.Refresh;

end;

procedure Tfcadg.lobsDblClick(Sender: TObject);
var
valor:string;
begin
        if nummodulo in [5,20] then
        with sender as tdbmemo do begin
             valor := msgi('Digite o nome para pesquisa:',0);

             with tabela do begin
                  sql.Clear;
                  sql.Add( script + ' where flag is null and ' + datafield +' like '+ quotedstr('%'+valor+'%'));
                  open;
             end;
             titgrade(grade,nil,tabela);
             formataprodExecute(self);

        end;

end;

procedure Tfcadg.mod103Execute(Sender: TObject);
begin
             fcadgv:=tfcadgv.Create(application,
                'nome','CodEmp','nomeempresa','', //campos que nao pode ser nulos
                'cnpj','ie','ctp','', //campos que nao deve duplicar
                'codigo', 'data', '','', '', '', //campos que deve preencher automaticamente
                'estadocivil', '', 'S,C,D,O', //combo1, tabela,  campo tabela/lista
                'sexo', '', 'M,F', //combo2
                'nomeempresa', 'tbfornecedor', 'nomecurto', //combo3
                'tipocliente', 'tbtipocliente', 'tipocliente', //combo4

                '' ,'', '','' , //checks list (4)

                '' ,'', '', //crupo radio, lista, valor campo
                '' ,'', '', //2
                '' ,'', '', //3
                '' ,'', '', //4

                'Obs1','','','',6,0,0,0,ds,tabela,nummodulo); //memo1,2,2,3 e 4 e qtd de linhas/altura


end;

procedure Tfcadg.Dependentes1Click(Sender: TObject);
begin
         abortaacao(nil,tabela,'chave','','','','',0);
         cadp ('tbdependente', '', '',
              '','',
              'sexo','','M,F',
              'parentesco','','FILH,ESPO,OUTR',
              '','','',
              '',
              '',
              '',
              '',
              2,tabela.fieldbyname('chave').asinteger);
end;

procedure Tfcadg.mod31Execute(Sender: TObject);
const especie:string = 'edDuplicataServico,edDuplicataMercantil';

      {'edAluguel,edApoliceSeguro,edCheque,edContrato,edContribuicaoConfederativa,'+
      'edCosseguros,edDividaAtivaEstado,edDividaAtivaMunicipio,edDividaAtivaUniao,edDuplicataMercantialIndicacao,'+
      'edDuplicataMercantil,edDuplicataRural,edDuplicataServico,edDuplicataServicoIndicacao,edFatura,'+
      'edLetraCambio,edMensalidadeEscolar,edNotaCreditoComercial,edNotaCreditoExportacao,edNotaCreditoIndustrial,'+
      'edNotaCreditoRural,edNotaDebito,edNotaPromissoria,edNotaPromissoriaRural,edNotaSeguro,edOutros,'+
      'edParcelaConsorcio,edRecibo,edTriplicataMercantil,edTriplicataServico,edWarrant';}
begin



             fcadgv:=tfcadgv.Create(application,
                '','','','', //campos que nao pode ser nulos
                '','','','', //campos que nao deve duplicar
                'codigo', '', '','', '', '', //campos que deve preencher automaticamente
                'banco', '', '001 - Banco do Brasil,033 - Santander Banespa,104 - Caixa Economica,'+
                             '237 - Banco Bradesco,275 - Banco Real,341 - Banco Itau,399 - Banco HSBC,'+
                             '409 - Banco Unicanco,748 - Sicred,756 - Bancoob',
                'especie', '', especie,
                //'','','',
                'formato', '', 'CNAB240,CNAB400', //combo3
              //  'protestar', '', '0 = NAO PROTESTAR,1 = PROTESTAR DIAS CORRIDOS,2 = PROTESTAR DIAS UTEIS,3 = UTILIZAR PERFIL CEDENTE', //combo3
                //'Layout', '', 'blPadrao,blCarne', //combo3
                'emissaoboleto', '', 'ClienteEmite,BancoEmite,BancoReemite,BancoNaoReemite', //combo4

                'instrucao' ,'', '','' , //checks list (4)

                '' ,'', '', //crupo radio, lista, valor campo
                '' ,'', '', //2
                '' ,'', '', //3
                '' ,'', '', //4

                '','','','',0,0,0,0,ds,tabela,nummodulo);


end;

procedure Tfcadg.Gerararquivoderemessa1Click(Sender: TObject);

var
i:integer;
dir,loc:string;
begin
        if rsemelhante.Checked=false then msg('#Clique "Outros Dados" antes de gerar.',0);
        //listagem('Banco','','',31,0);
        //if fdm.sg.Active = false then abort;

        loc:= tabela.fieldbyname('chave').AsString;
        filtrar(grade,nil,tabela,'chave');

        fdm.RLBRemessa1.Titulos.Clear;

        geraboleto(tabela,1,'tbreceber',true);

        fdm.RLBRemessa1.DataArquivo := Date; //É a data que o arquivo está sendo gerado
        fdm.RLBRemessa1.NomeArquivo := FormatDateTime('yyyymmdd',Date)+'.REM'; // Apenas o nome do arquivo, alguns bancos ipulam regras e outros não
        fdm.RLBRemessa1.NumeroArquivo := tabela.fieldbyname('nboleto').AsInteger;  //Sequencia númerica de quandos arquivos já foram gerados para este banco
        fdm.RLBRemessa1.TipoMovimento := tmRemessa;

        dir := servpath+'remessa';
        if not DirectoryExists(dir) then ForceDirectories(substitui(dir,'/','\'));

        if lista = nil then begin
           //fdm.RLBRemessa1.LayoutArquivo := laCNAB400;
           fdm.RLBRemessa1.NomeArquivo := substitui(dir+'\'+fdm.RLBRemessa1.NomeArquivo,'/','\');    // Apenas colocando um caminho para o arquivo
           fdm.RLBRemessa1.GerarRemessa;
        end else lista.SaveToFile(pchar(substitui(dir+'\'+fdm.RLBRemessa1.NomeArquivo,'/','\')));

        ShellExecute(Handle, 'open', pchar(substitui(dir,'/','\')), nil, '', Sw_Show);
        if lista <> nil then lista := nil;


        //for i := 0 to fdm.RLBRemessa1.Relatorio.Count-1 do  Memo1.Lines.Add(fdm.RLBRemessa1.Relatorio.Strings[i]);
        fdm.RLBRemessa1.Titulos.Clear;
        fdm.RLBTitulo1.ClearRecords;

        tabela.Filtered := false;
        tabela.Locate('chave',loc,[]);

end;

procedure Tfcadg.arquivoderetorno1Click(Sender: TObject);

var i: integer;
NossoNumero,codigo,nome :string;
desconto, acrescimo,total : double;
dt :tdate;
list : tstringlist;
begin

       fdm.OpenDialog.FileName  :=  '';
       fdm.OpenDialog.Title := 'Selecione';
       fdm.OpenDialog.DefaultExt := '*.txt';
       fdm.OpenDialog.Filter := 'Arquivos(*.TXT)|*.TXT|Todos os Arquivos (*.*)|*.*';

       if fdm.OpenDialog.Execute then fdm.RLBRemessa1.NomeArquivo := fdm.OpenDialog.FileName;
       fdm.RLBRemessa1.LerRetorno; // aqui é feita a leitura e enchimento da lista "Titulos" (zera tudo primeiro)

       // Pode também visualizar o Relatório Gerado pelo componente
       //for i := 0 to fdm.RLBRemessa1.Relatorio.Count-1 do m2.Lines.Add(fdm.RLBRemessa1.Relatorio.Strings[i]);
       //sql.Add('select "S" as baixar, codigo,nome, chave as nossonumero,desconto,acrescimo,total,dtpagamento from tbreceber where chave <0');

       list := tstringlist.Create;
       list.Add('Codigo	'+'Nome	'+'NossoNumero	'+'Desconto	'+'Acréscimo	'+'Total	'+'Data	'+'Baixado?	Ocorrência');

       for i := 0 to fdm.RLBRemessa1.Titulos.Count-1 do begin
           //RLBRemessa1.Titulos[i].NossoNumero+'-'+RLBRemessa1.Titulos[i].DigitoNossoNumero;
           codigo     := fdm.RLBRemessa1.Titulos[i].SeuNumero;
           nome       := fdm.RLBRemessa1.Titulos[i].Sacado.Nome;
           NossoNumero:= fdm.RLBRemessa1.Titulos[i].NossoNumero;
           desconto   := fdm.RLBRemessa1.Titulos[i].ValorDesconto;
           acrescimo  := fdm.RLBRemessa1.Titulos[i].ValorMoraJuros;
           total      := fdm.RLBRemessa1.Titulos[i].ValorDocumento -Desconto+acrescimo ;
           dt         := fdm.RLBRemessa1.Titulos[i].DataBaixa;
           if dt <  strtodate('01/01/2000') then dt := now();
           //showmessage(fdm.RLBRemessa1.Titulos[i].Sacado.Nome +'----'+  fdm.RLBRemessa1.Titulos[i].OcorrenciaOriginal);

           if //(dt > strtodate('01/01/2000'))and
              (fdm.RLBRemessa1.Titulos[i].OcorrenciaOriginal <>'02') 
              //and (fdm.RLBRemessa1.Titulos[i].OcorrenciaOriginal <>'03')
              then begin
               selecione('update tbreceber set '+
                          ' diferenca   = 0'+
                          ', recebido   = '+ realdblstr(total)+
                          ', acrescimo  = '+ realdblstr(acrescimo)+
                          ', desconto   = '+ realdblstr(desconto)+
                          ', total      = '+ realdblstr(total)+
                          ', dtpagamento= '+ quotedstr(formatdatetime('yyyy-mm-dd',dt))+
                          ' where diferenca >0 and chave ='+ quotedstr(codigo));
                    list.Add(codigo+'	'+nome+'	'+NossoNumero+'	'+floattostr(desconto)+'	'+floattostr(acrescimo)+'	'+floattostr(total)+'	'+datetostr(dt)+'	'+'S	'+fdm.RLBRemessa1.Titulos[i].OcorrenciaOriginal);
           end else list.Add(codigo+'	'+nome+'	'+NossoNumero+'	'+floattostr(desconto)+'	'+floattostr(acrescimo)+'	'+floattostr(total)+'	'+datetostr(dt)+'	'+'N	'+fdm.RLBRemessa1.Titulos[i].OcorrenciaOriginal);


           if codigo <> '' then saldocliente(codigo);

          //showmessage('N nomero: '+ NossoNumero+'     Desc: '+floattostr(Desconto)+'     Juros: '+floattostr(acrescimo)+'     total: '+floattostr(total)+'     dtpgto: '+datetostr(dt));
       end;

       msg('Baixado!!!',0);
       list.SaveToFile('c:\impboleto.xls');
       ShellExecute(Handle, 'open', PChar('c:\impboleto.xls'), nil, '', SW_MAXIMIZE);
       list.Free;

end;

procedure Tfcadg.Lancarascontas1Click(Sender: TObject);
var dia,i: integer;
dt:tdate;
begin

    selecione('select max(chave)as chave from tbreceber '+sqlempresa(1,1,''));
    i:=sqlpub.fieldbyname('chave').asinteger + 1;

    tabela.First;
    while not tabela.eof do begin
          // verifica se a conta já foi lançada este mês
          selecione('select chave from tbreceber '+
                    ' where codigo = ' + quotedstr(tabela.fieldbyname('codigo').AsString)+
                    sqlempresa(1,1,'')+
                    ' and extract(month from dtvencimento )= '+ quotedstr(formatdatetime('mm',date))+
                    ' and extract(year  from dtvencimento) = '+ quotedstr(formatdatetime('yyyy',date)));

          dia:=0;
          try dia := strtoint(tabela.fieldbyname('site').AsString); except end;
          if (dia >28) and (formatdatetime('mm',date)='02') then dia := 28;

          if (sqlpub.RecordCount <=0) and (dia >0) and (tabela['statu']='S') and (tabela.fieldbyname('limitecredito').AsFloat>0) then begin

             dt := strtodate(formatfloat('00',dia)+'/'+ formatdatetime('mm',date) +'/'+ formatdatetime('yyyy',date));

             selecione('Insert into tbreceber( '+
                       'posicaoconta, tipoconta, documento,  codigo, nome, '+
                       ' dtemissao, dtvencimento, diferenca, vrtitulo, vrdocumento,  total,  '+
                       ' usuario, tpconta)  values('+

                       '"EMP"'+
                       ',"MENSALIDADE"'+
                       ','+ inttostr(i)+
                       ','+quotedstr(tabela.fieldbyname('codigo').AsString)+
                       ','+quotedstr(tabela.fieldbyname('nome').AsString)+
                       ',now()'+
                       ','+quotedstr(formatdatetime('yyyy-mm-dd',dt))+
                       ','+realdblstr(tabela.fieldbyname('limitecredito').AsFloat)+
                       ','+realdblstr(tabela.fieldbyname('limitecredito').AsFloat)+
                       ','+realdblstr(tabela.fieldbyname('limitecredito').AsFloat)+
                       ','+realdblstr(tabela.fieldbyname('limitecredito').AsFloat)+
                       ','+ inttostr(usuariolink)+
                       ',1)');
              inc(i);



          end;
          tabela.Next;

    end;

end;

procedure Tfcadg.Movimentodoproduto1Click(Sender: TObject);
begin
      abortaacao(nil,tabela,'chave','','','','',0);
      fdm.Movprod(tabela.fieldbyname('codigo').AsString,mp);
end;

procedure Tfcadg.Atualizarfiliais1Click(Sender: TObject);
var
natua,msgerr,cap,tpatua,seltb,crit,selfilial,where,cpfilial,selcli,selfor,selprod,precobom,garantia,duplicado:string;
jacad,site:boolean;
dep,sec:tzquery;
                                  

      procedure vduplica;
      begin
           with fdm.snet2 do begin
                sql.Clear;
                sql.Add('update '+nometb+' set cnpj = null where flag = "D"');
                execsql;

                sql.Clear;
                sql.Add('select cnpj, count(cnpj)as qtd from '+nometb+' where (flag <> "D" or flag is null) and  cnpj is not null group by cnpj order by qtd desc');
                open;
           end;

           duplicado :='';
           while not fdm.snet2.eof do begin
                 if fdm.snet2.FieldByName('qtd').AsFloat>1 then
                    duplicado := duplicado + 'CNPJ/CPF: ' + fdm.snet2.FieldByName('CNPJ').AsString+#13;
                 fdm.snet2.Next;
           end;

           if duplicado <> '' then  msg('#Empresa: '+fdm.tg.fieldbyname('NOME').AsString+#13+#13+
                                        'Duplicado(s):'+#13+#13+duplicado+#13+'Corrija-o(s) antes.',0);

           selecione2('update '+nometb+' set cnpj = null where flag = "D"');
           selecione2('select cnpj, count(cnpj)as qtd from '+nometb+' where (flag <> "D" or flag is null) and  cnpj is not null group by cnpj order by qtd desc');

           duplicado :='';
           while not sqlpub2.eof do begin
                 if sqlpub2.FieldByName('qtd').AsFloat>1 then
                    duplicado := duplicado + 'CNPJ/CPF: ' +sqlpub2.FieldByName('CNPJ').AsString+#13;
                 sqlpub2.Next;
           end;

           if duplicado <> '' then  msg('#Empresa Local:'+#13+#13+'Duplicado(s):'+#13+#13+duplicado+#13+'Corrija-o(s) antes.',0);

      end;


      procedure psiteid;
      begin

          sqlpub.edit;
          if dep.Locate('categoria', sqlpub.fieldbyname('categoria').AsString,[]) then
             sqlpub['categoriaid'] := dep.fieldbyname('categoriaid').AsInteger;

          if sec.Locate('subcategoria', sqlpub.fieldbyname('subcategoria').AsString,[]) then
             sqlpub['subcategoriaid'] := sec.fieldbyname('subid').AsInteger;
      end;


      procedure categoria;
      begin
           if site then begin

              with fdm.snet2 do begin
                   close;

                   sql.Clear;
                   sql.Add('delete from categoria');
                   execsql;

                   sql.Clear;
                   sql.Add('delete from subcategoria');
                   execsql;
              end;



              dep :=  tzquery.Create(application);
              with dep do begin
                    Connection := fdm.conector ;
                    //categoria
                    sql.Clear;
                    sql.Add('select chave, codigo as categoriaid, nome as categoria, visivel,posicao from tbdepartamento order by posicao,codigo');
                    open;

                    while not dep.eof do begin
                          gravafilial(dep,'categoria');
                          dep.Next;
                    end;
              end;

              //subcategoria
              sec :=  tzquery.Create(application);
              with sec do begin
                    Connection := fdm.conector ;
                    sql.Clear;
                    sql.Add('select chave, codigo as subid, nome as subcategoria, departamento as categoria, visivel,posicao from tbfamilia order by posicao,codigo');
                    open;

                    while not sec.eof do begin
                          gravafilial(sec,'subcategoria');
                          sec.Next;
                    end;
               end;
         end;
      end;

      procedure cnpjduplicado(crit:string;i:integer);
      begin  //evitar atualizar erradamente

             if i = 0 then begin
                   //verifica internamente
                   with fdm.Query2 do begin
                        close;
                        sql.Clear;
                        sql.Add('select cnpj, count(cnpj)as qtd from '+nometb+' where cnpj is not null and (flag <> "D" or flag is null) '+crit+' group by cnpj order by qtd desc');
                        //debugstr(fdm.Query2);
                        open;


                        if FieldByName('qtd').AsInteger >1 then begin
                           msg('Tem '+FieldByName('qtd').AsString+' registros com: '+fieldbyname('cnpj').AsString +#13+'Resolva antes de atualizar',0);
                           close;
                           abort;
                        end;
                        close;
                   end;

             end else begin//verifica na filial

                   with fdm.snet2 do begin
                        close;
                        sql.Clear;
                        sql.Add('select cnpj, count(cnpj)as qtd from '+nometb+' where cnpj is not null and (flag <> "D" or flag is null) '+crit+' group by cnpj order by qtd desc');
                        open;
                        //debugstr(fdm.snet2);

                        if FieldByName('qtd').AsInteger >1 then begin
                           msg('Tem '+FieldByName('qtd').AsString+' registros com: '+fieldbyname('cnpj').AsString + ' em '+
                                fdm.tg.fieldbyname('nome').AsString+ #13+'Resolva antes de atualizar',0);
                           close;
                           fdm.snet.Close;
                           fdm.snet2.Close;
                           fdm.conectnet.Disconnect;
                           abort;
                        end;
                        close;
                   end;
             end;
      end;




      procedure conecta;
      begin
          site := copy(fdm.tg.fieldbyname('nome').AsString,1,4) = 'SITE';

          if ativanet(fdm.tg.fieldbyname('endereco').AsString,fdm.tg.fieldbyname('banco').AsString,
                   fdm.tg.fieldbyname('usuario').AsString,fdm.tg.fieldbyname('senha').AsString) =false then
                   natua := natua + fdm.tg.fieldbyname('nome').AsString;
      end;



      procedure seltabelas;
      var
      seldel :string;
      begin

             seldel := ' and (flag <> "D" or flag is null) ';

             if site then cpfilial :=  'produtoid'
                     else cpfilial :=  'codigo';

             if (tpatua = '1') and (nummodulo in [5,20]) then
                  where := ' where codigo = '+ quotedstr(tabela.fieldbyname('codigo').AsString)
             else if (tpatua = '1') and (nummodulo in [4,7]) then
                  where := ' where cnpj = '+  quotedstr(tabela.fieldbyname('cnpj').AsString)  + seldel

             else if (tpatua = '2') and (nummodulo in [5,20]) then
                  where := '  where codigo is not null '
             else if (tpatua = '2') and (nummodulo in [4,7]) then
                  where := '  where cnpj is not null '+ seldel;


             if nummodulo in [5,20] then begin//produto
                if not site then
                   selfilial :='select codigo,estoque,ultimavenda,ultimacompra from '+nometb+ where


                else begin // se for site
                     if tpatua = '1' then
                          selfilial :='select produtoid as codigo from produto where produtoid = '+ quotedstr(tabela.fieldbyname('codigo').AsString)
                     else selfilial :='select produtoid as codigo from produto ';

                     selecione('select chave, codigo as produtoid, descricao as produto, aplicacao as descricao, familia as subcategoria, '+
                               ' valor3-valor3 as  subcategoriaid, departamento as categoria , valor3-valor3 as categoriaid, peso, valor3 as  valor1, '+
                               ' vratacado as valor2, promocao, if (flag="D","0", if(pesagem ="N","N","S")) as disponivel_loja,  fornecedor as marca, codigo,'+
                               ' codigo as posicao_vitrine, garantia from '+nometb + where);
                end;


             end else if nummodulo in [4,7] then //cli e for
                selfilial := 'select chave,saldo,credito,ultimacompra,codigo,cnpj from '+nometb +where;


             if not site then selecione('select '+seltb+' from ' + nometb +  where +  precobom);
             //verifica duplicado
             if nummodulo in [4,7] then
                if tpatua = '1' then cnpjduplicado(' and cnpj = '+  quotedstr(sqlpub.fieldbyname('cnpj').AsString),0)
                                else cnpjduplicado('',0);
      end;

begin

selcli:= 'chave,data,codigo,tipocliente,nomecurto,nome,endereco,numero,'+
      'complemento,bairro,municipio,cep,uf,nascimento,cnpj,ie,ddd,fone,fax,'+
      'ramal,contato,cargo,email,site,condpgto,enderecoentrega,enderecocobranca,transportadora,'+
      'saldo,ultimacompra,valor,doc,precoespecial,obs,referencia,ndocumento,juro,fone2,'+
      'fone3,municipiocobranca,cepcobranca,ufcobranca,hora,filial,usuario,credito,atualizadoem,'+
      'vendedor,codigovelho,np,debito,fidelidade,pontos,cheque,avulsa,flag,FisJur,statu,'+
      'estadocivil,bairrocobranca,vendaaprazo,vendacheque,vendacartao,limitecredito,lavulsa,laprazo,'+
      'lcheque,obs1,msn,skype,trabalho,conjuge,vinculo,foneconjuge,ctp,numerocobranca,'+
      'complementocobranca,skape,regiao,numeroentrega,complementoentrega,bairroentrega,municipioentrega,cepentrega,'+
      'ufentrega,municipion,codigovendedor ';

selfor:='chave,data,codigo,tipocliente,nomecurto,nome,tipo,endereco,numero,complemento,bairro,municipio,cep,'+
      'uf,nascimento,cnpj,ie,ddd,fone,fax,ramal,nomediretor,nomegerente,email,site,condpgto,transportadora,saldo,'+
      'ultimacompra,valor,doc,obs,categoria,fone2,comissao,credito,atacadista,tipofrete,aceitatroca,tipocobranca,'+
      'prazoentrega,classificacao,descontopgto,divisao,divisaonome,fonediretor,celulardiretor,fonegerente,celulargerente,'+
      'nomevendedor,fonevendedor,celularvendedor,empresa,aliquota,flag,obs1,msn,skype,municipion,CurvaQtd,CurvaValor,IniCurva,'+
      'FinCurva,dtvenda ';     

selprod:= 'chave,codigo,codigobarras,descricao,un,vrunit,vrcompra,fracao,percent,vrvenda,vrpromocao,validade,'+
      'imposto,minimo,data,fabricante,familia,grupo,subgrupo,promocao,exibir,ultimavenda,reducaobasecalc,prazoentrega,'+
      'codigofornecedor,ipi,codigooriginal,prateleira,box,item,cf,st,iniciopromocao,aplicacao,desconto,contado,especie,tamanho,'+
      'cor,percentatacado,vratacado,peso,comissao,valor3,percent3,pesagem,departamento,fornecedor,ultimacompra,nacimp,dtcadastro,'+
      'CST,mva,pis,confins,maximo,obs1,ncmsh,nfe,especificacao,cmedioa,ModoIPI,ultalteracao,vrminimo,garantia ';


       fechatg;
       case nummodulo of
               4: seltb := selcli;
            5,20: seltb := selprod;
               7: seltb := selfor;
       end;

       if (nummodulo = 5) and (responsavel ='LOJAOPRECOBOM') then  precobom := ' and codigo > 1000';

       codloc :='';
       vf:=false;
       periodo2('atuafiliais','','','','','',307,449,0);
       if (fdm.tg.Active = false) or (fdm.tg.RecordCount = 0) or (vf=false) then abort;
       vf:=false;

       if (codloc ='1') then begin
          abortaacao(nil,tabela,'chave','','','','',0);

          if (nummodulo in[4,7]) and ((tabela['cnpj'] = null) or (tabela['cnpj'] = '')) then
              msg('#CNPJ/CPF não cadastrado, não foi atualizado.',0);

       end;
       tpatua := codloc;

       natua :='';
       msgerr:='';
       //filtrar(grade,nil,tabela,'chave');
       cap := caption;

       natua :='';
       fdm.tg.First;
       while not fdm.tg.Eof do begin

             if uppercase(fdm.tg['atualiza']) = 'S' then begin

                conecta;

                if fdm.ConectNet.Connected = true then begin

                    seltabelas;

                    if nummodulo in [4,7] then vduplica;


                    with fdm.snet do begin
                         close;
                         sql.Clear;
                         sql.Add(selfilial);
                         open;
                    end;

                    if nummodulo in [5,20] then categoria;

                    sqlpub.First;
                    while not sqlpub.Eof do begin
                        sqlpub.edit;
                        caption := '..... ATUALIZANDO '+ fdm.tg.fieldbyname('NOME').AsString+'..... ESPERE...      ' +
                                   inttostr(sqlpub.RecNo) +'    DE    '+  inttostr(sqlpub.RecordCount);
                        update;

                        //se produto
                        if nummodulo in [5,20] then begin
                            if fdm.snet.Locate('codigo',sqlpub.fieldbyname('codigo').AsString,[]) then begin

                                  if not site then begin
                                     //sqlpub['estoque']      := fdm.snet.fieldbyname('estoque').AsFloat;
                                     sqlpub['ultimavenda']  := fdm.snet.fieldbyname('ultimavenda').AsDateTime;
                                     sqlpub['ultimacompra'] := fdm.snet.fieldbyname('ultimacompra').AsDateTime;

                                  end else psiteid;

                                  if not site then alterafilial(sqlpub,nometb,'codigo')
                                              else alterafilial(sqlpub,'produto','produtoid');

                               end else begin

                                   if not site then begin
                                      //sqlpub['estoque']     := null;
                                      sqlpub['ultimavenda'] := null;
                                      sqlpub['ultimacompra']:= null;

                                   end else psiteid;

                                   if not site then gravafilial(sqlpub,nometb)
                                               else gravafilial(sqlpub,'produto');
                            end;
                        end;

                      //cli e for
                      if nummodulo in [4,7] then begin

                         if tpatua = '1' then
                              cnpjduplicado(' and cnpj = '+  quotedstr(sqlpub.fieldbyname('cnpj').AsString),1)
                         else cnpjduplicado('',1);


                           if fdm.snet.Locate('cnpj',sqlpub.fieldbyname('cnpj').AsString,[]) then begin
                              sqlpub['codigo']       := fdm.snet.fieldbyname('codigo').AsInteger;
                              sqlpub['saldo']        := fdm.snet.fieldbyname('saldo').AsFloat;
                              sqlpub['credito']      := fdm.snet.fieldbyname('credito').AsFloat;
                              sqlpub['ultimacompra'] := fdm.snet.fieldbyname('ultimacompra').AsDateTime;
                              alterafilial(sqlpub,nometb,'cnpj');

                           end else begin

                               //ver se ja existe alguem cadastrado com este codigo
                               with fdm.snet2 do begin
                                  close;
                                  sql.Clear;
                                  sql.Add('select codigo from '+nometb+' where (flag <> "D" or flag is null)  and cnpj = '+  quotedstr(sqlpub.fieldbyname('cnpj').AsString));
                                  open;

                                  if RecordCount >0 then begin
                                      close;
                                      sql.Clear;
                                      sql.Add('select max(codigo) as codigo from '+nometb);
                                      open;
                                      sqlpub.edit;
                                      sqlpub['codigo'] := fieldbyname('codigo').AsInteger+1;
                                  end;
                               end;

                               sqlpub['saldo']       := null;
                               sqlpub['credito']     := null;
                               sqlpub['ultimacompra']:= null;
                               gravafilial(sqlpub,nometb);
                           end;

                    end;

                    sqlpub.Next;
                  end;
                end;
             end;

       fdm.tg.Next;
       end;





       fdm.tg.close;
       fdm.snet.Close;
       fdm.conectnet.Connected := false;
       caption := cap;
       cursor := crdefault;

       if natua <> '' then msgerr := 'Loja(s) não atualizada(s):'+#13+#13+natua+#13+#13+'Não foi possível conectar!'
       else begin

            if tpatua = '1' then
                 selecione('update ' + nometb + ' set ctp = null where chave = '+quotedstr(tabela.fieldbyname('chave').AsString))
            else selecione('update ' + nometb + ' set ctp = null ');
       end;

       msg('Operação realizada!'+#13+#13+msgerr,0);       
       tabela.Filtered := false;

end;

procedure Tfcadg.Relatrioderetornos1Click(Sender: TObject);
begin
                 relatorio('','tbfollowup.retorno','nome',

                                        'select tbfollowup.chave, tbfollowup.data,tbfollowup.assunto, '+
                                        'tbfollowup.retorno, tbcliente.nome, tbcliente.Vendedor ',

                                        ' from tbfollowup, tbcliente ',

                                        ' and tbfollowup.link=tbcliente.chave  ',

                                        '','','','','','', '','','','','','','', '','','','','','',
                                            'tbfollowup',
                                            'Retorno de Clientes',
                                            'tbcliente',0,0);

end;

procedure Tfcadg.mod32Execute(Sender: TObject);
begin
             //despfixa
             fcadgv:=tfcadgv.Create(application,
                'NomeDaDespesa','ValorDaDespesa','','', //campos que nao pode ser nulos
                'NomeDaDespesa','','','', //campos que nao deve duplicar
                'codigo', '', '','', '', '', //campos que deve preencher automaticamente
                '', '', '',
                '', '', '',
                '', '', '', //combo3
                '', '', '', //combo4

                '' ,'', '','' , //checks list (4)

                '' ,'', '', //crupo radio, lista, valor campo
                '' ,'', '', //2
                '' ,'', '', //3
                '' ,'', '', //4

                '','','','',0,0,0,0,ds,tabela,nummodulo);
end;

procedure Tfcadg.Importardados1Click(Sender: TObject);
var list:tstringlist;


      function pegatb: string;
      var
        Bruto,text: string;
        cont,i,j,camp: integer;
        


             procedure gravatb;
             begin
                  
                  case camp of
                      1: fdm.tbQuery1['codigo']   := text;
                      2: fdm.tbQuery1['codigooriginal']:= text;
                      3: fdm.tbQuery1['ncmsh']:= text;
                      4: fdm.tbQuery1['descricao']:= text;
                      5: begin
                         try
                         fdm.tbQuery1['vrunit']:= strtofloat(substitui(Text,'.',''));
                         except end;
                         //showmessage(text);
                         end;
                      6: fdm.tbQuery1['fabricante']:= text;
                      7: fdm.tbQuery1['fornecedor']:= text;
                      8: fdm.tbQuery1['departamento']:= text;
                      9: fdm.tbQuery1['familia']:= text;
                      10: fdm.tbQuery1['grupo']:= text;
                      11: fdm.tbQuery1['subgrupo']:= text;
                      12: fdm.tbQuery1['garantia']:= text;
                  end;
                 // showmessage(inttostr(camp));
             end;

      begin

        i:=1;
        camp :=1;
        //list := tstringlist.Create;
        //list.LoadFromFile('c:\dado.txt');

        for j:=0 to List.Count-1 do  begin
            bruto := List[j];
            fdm.tbQuery1.Insert;
            i:=1;
            for cont := 0 to length(Bruto) do begin

                if copy(bruto,cont,1) = '	' then begin
                   i:=0;
                   gravatb;
                   inc(camp);
                end else i:=1;


                if i = 0 then begin
                   text :='';
                   //camp :=1;
                end;

                if copy(bruto,cont+1,1)<> '	' then
                   text := text + copy(bruto,cont+1,1);
            end;

            gravatb;
            text :='';
            camp :=1;
        end;

      end;

begin


       fdm.OpenDialog.FileName  :=  '';
       fdm.OpenDialog.Title := 'Selecione';
       fdm.OpenDialog.DefaultExt := '*.txt';
       fdm.OpenDialog.Filter := 'Arquivos(*.TXT)|*.TXT|Todos os Arquivos (*.*)|*.*';

       if fdm.OpenDialog.Execute then begin
          list := tstringlist.Create;
          list.LoadFromFile(fdm.OpenDialog.FileName);
          //list.Text := substitui(list.Text,'.','');
          //list.Text := substitui(list.Text ,',','.');
          //list.SaveToFile(fdm.OpenDialog.FileName);

          if not msg('Deseja atualizar os preços por esta lista?',2) then abort;


          with fdm.Query1 do begin
               sql.Clear;
               sql.Add('select codigo,codigooriginal,ncmsh,descricao,vrunit,fabricante,fornecedor,departamento,'+
                       'familia,grupo,subgrupo,garantia from tbproduto limit 0');
          end;
          fdm.tbquery1.Close;
          fdm.tbquery1.Open;

          pegatb;

          fdm.tbquery1.First;
          while not fdm.tbquery1.Eof do begin
                try
                if fdm.tbquery1.fieldbyname('codigo').AsInteger <>0  then
                   
                   selecione('update tbproduto set ultalteracao=now() '+

                             ' ,codigooriginal = '+quotedstr(fdm.tbquery1.fieldbyname('codigooriginal').AsString)+
                             ' ,ncmsh = '+quotedstr(fdm.tbquery1.fieldbyname('ncmsh').AsString)+
                             ' ,descricao = '+quotedstr(fdm.tbquery1.fieldbyname('descricao').AsString)+
                             ' ,vrunit = '+realdblstr(fdm.tbquery1.fieldbyname('vrunit').asfloat)+
                             ' ,fabricante= '+quotedstr(fdm.tbquery1.fieldbyname('fabricante').AsString)+
                             ' ,fornecedor = '+quotedstr(fdm.tbquery1.fieldbyname('fornecedor').AsString)+
                             ' ,departamento = '+quotedstr(fdm.tbquery1.fieldbyname('departamento').AsString)+
                             ' ,familia = '+quotedstr(fdm.tbquery1.fieldbyname('familia').AsString)+
                             ' ,grupo = '+quotedstr(fdm.tbquery1.fieldbyname('grupo').AsString)+
                             ' ,subgrupo = '+quotedstr(fdm.tbquery1.fieldbyname('subgrupo').AsString)+
                             ' ,garantia = '+quotedstr(fdm.tbquery1.fieldbyname('garantia').AsString)+
                             ' where codigo = '+ quotedstr(fdm.tbquery1.fieldbyname('codigo').AsString));
                   except  end;
                fdm.tbquery1.Next;
          end;

          selecione('update tbproduto set '+
                    '  vrcompra   = vrunit*fracao'+
                    ' ,vrvenda    = vrunit + (vrunit*percent/100)'+
                    ' ,vratacado  = vrunit + (vrunit*percentatacado/100)'+
                    ' ,valor3     = vrunit + (vrunit*percent3/100)');

          //deletefile(fdm.OpenDialog.FileName);
          list.Destroy;

          fdm.tbquery1.Close;
          filtroexecute(self);
          msg('Atualizado.',0);
        end;


end;

procedure Tfcadg.btelaborarClick(Sender: TObject);
var
loc:string;
begin
        if (nummodulo in [5]) and (chofab) then begin
           abortaacao(nil,tabela,'chave','','','','',0);
           loc := tabela.fieldbyname('chave').asstring;
           periodo2('elaborar',loc,'','','','',175,711,1);
           filtroexecute(self);
           tabela.Locate('chave',loc,[]);
        end;
end;

procedure Tfcadg.Veculosmensal1Click(Sender: TObject);
begin
            abortaacao(nil,tabela,'chave','','','','',0);
            cadp ('tbmovmensal', 'select * from tbmovmensal', 'Veículo(s): '+tabela.fieldbyname('nome').AsString,
                  '','placa',
                  'periodo','','D,L,N',
                  'Mens_Conv','','M,C',
                  '','','',
                  'data',
                  'codigo',
                  'placa',
                  '',
                  2,tabela.fieldbyname('chave').AsInteger);

end;

procedure Tfcadg.Cadastrarfabricante1Click(Sender: TObject);
begin
         cadp ('tbfabricante', 'select chave, nome from tbfabricante', '',
              'nome','',
              '','','',
              '','','',
              '','','',
              '',
              '',
              'nome',
              '',
              3,0);

         selecione('update tbfabricante set codigo = chave');


end;

procedure Tfcadg.Cadastrarmarca1Click(Sender: TObject);
begin
         cadp ('tbmarca', 'select chave, nome from tbmarca', '',
              'nome','',
              '','','',
              '','','',
              '','','',
              '',
              '',
              'nome',
              '',
              3,0);

         selecione('update tbmarca set codigo = chave');
end;

procedure Tfcadg.Atualizarcentral1Click(Sender: TObject);
const
scr:string = 'chave,data,codigo,tipocliente,nomecurto,nome,endereco,numero,'+
                'complemento,bairro,municipio,cep,uf,nascimento,cnpj,ie,ddd,fone,fax,'+
                'ramal,contato,cargo,email,site,condpgto,enderecoentrega,enderecocobranca,transportadora,'+
                'saldo,ultimacompra,valor,doc,precoespecial,obs,referencia,ndocumento,juro,fone2,'+
                'fone3,municipiocobranca,cepcobranca,ufcobranca,hora,filial,usuario,credito,atualizadoem,'+
                'vendedor,codigovelho,np,debito,fidelidade,pontos,cheque,avulsa,flag,FisJur,statu,'+
                'estadocivil,bairrocobranca,vendaaprazo,vendacheque,vendacartao,limitecredito,lavulsa,laprazo,'+
                'lcheque,obs1,msn,skype,trabalho,conjuge,vinculo,foneconjuge,ctp,numerocobranca,'+
                'complementocobranca,skape,regiao,numeroentrega,complementoentrega,bairroentrega,municipioentrega,cepentrega,'+
                'ufentrega,municipion,codigovendedor from tbcliente ';

var
cap,natua,scrloc:string;

      procedure conecta;
      begin
          if ativanet(fdm.sg.fieldbyname('endereco').AsString,fdm.sg.fieldbyname('banco').AsString,
                   fdm.sg.fieldbyname('usuario').AsString,fdm.sg.fieldbyname('senha').AsString) =false then
                   natua := natua + fdm.sg.fieldbyname('nome').AsString;
      end;

begin

       natua :='';
       with fdm.sg do begin
            sql.Clear;
            sql.Add('select "S" as atualiza, nome, ip as endereco, banco, usuario, senha from tbfiliais order by nome');
            open;

            if recordcount <=0 then begin
               msg('Não há filiais cadastradas.',0);
               close;
               abort;
            end;
       end;


       cap := caption;

       fdm.sg.First;
       while not fdm.sg.Eof do begin

                conecta;

                if fdm.ConectNet.Connected = true then begin

                   selecione('select cnpj from tbcliente where cnpj is not null');
                   scrloc:='';
                   sqlpub.First;
                   while not sqlpub.Eof do begin
                         scrloc:=scrloc+' and cnpj <> '+quotedstr(sqlpub.fieldbyname('cnpj').AsString);
                         sqlpub.Next;
                   end;

                   with fdm.snet do begin
                         close;
                         sql.Clear;
                         sql.Add('select '+scr+ ' where (cnpj is not null and cnpj <>"") ' +scrloc +' group by cnpj');
                         //debugstr(fdm.snet);
                         open;
                         //showmessage(inttostr(fdm.snet.RecordCount));

                         first;
                         while not eof do begin

                               caption := '..... ATUALIZANDO CENTRAL DE "'+ fdm.sg.fieldbyname('NOME').AsString+'"..... ESPERE...      ' +
                                          inttostr(fdm.snet.RecNo) +'    DE    '+  inttostr(fdm.snet.RecordCount);
                               update;

                               selecione('select max(codigo)as codigo from tbcliente');
                               fdm.snet.edit;
                               fdm.snet['codigo'] := sqlpub.fieldbyname('codigo').AsInteger + 1;
                               grava(nil,fdm.snet,'tbcliente');
                               fdm.snet.Cancel;
                               fdm.snet.Next;
                         end;
                         
                   end;
                 end;

       fdm.sg.Next;
       end;

       caption := cap;
       if natua <> '' then msg('Não atualizado:'+#13+#13+natua,0)
                      else msg('Atualizado.',0);
       fdm.sg.close;

       if msg('Deseja atualizar filiais?',2) then Atualizarfiliais1Click(self);

end;

procedure Tfcadg.formataprodExecute(Sender: TObject);
begin
        if ((nummodulo=5) or(nummodulo=20)) and (tabela.Active) then begin
           (tabela.fieldbyname('vrcompra')  as tfloatfield).displayformat := '###,##0.'+ Dcompra;
           (tabela.fieldbyname('vrunit')  as tfloatfield).displayformat := '###,##0.'+ Dcompra;

            if tipoempresa <>'1' then begin
              (tabela.fieldbyname('vrvenda')  as tfloatfield).displayformat := '###,##0.'+ Dvenda;
              (tabela.fieldbyname('vratacado')  as tfloatfield).displayformat := '###,##0.'+ Dvenda;
              (tabela.fieldbyname('valor3')  as tfloatfield).displayformat := '###,##0.'+ Dvenda;
           end;
        end;

        if ((chofab) or(nummodulo=20)) and (tabela.Active) then    formatacptabela(nil,tabela,4);
end;

procedure Tfcadg.RLDBText33BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
        if (mgp <>0) and (tblParametros.fieldbyname('TotalDespFixSalEnc').asfloat<>0) then
           text := format('%n',[tblParametros.fieldbyname('TotalDespFixSalEnc').asfloat /mgp])
        else text :='0,00';

end;

procedure Tfcadg.RLDBText16BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
        text := format('%n',[(tblParametros.fieldbyname('PISPar').asfloat *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100]);

end;

procedure Tfcadg.RLDBText17BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
        text := format('%n',[(tblParametros.fieldbyname('COFINSPar').asfloat  *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat )/100]);

end;

procedure Tfcadg.RLDBText18BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
        text := format('%n',[(tblParametros.fieldbyname('COFINSPar').asfloat  *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat )/100]);

end;

procedure Tfcadg.RLDBText19BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
        text := format('%n',[(tblParametros.fieldbyname('SIMPLESPar').asfloat  *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat )/100]);

end;

procedure Tfcadg.RLDBText20BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
        text := format('%n',[(tblParametros.fieldbyname('FretePar').asfloat *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100]);

end;

procedure Tfcadg.RLDBText21BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
        text := format('%n',[(tblParametros.fieldbyname('ComissaoPar').asfloat  *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat )/100]);

end;

procedure Tfcadg.RLDBText22BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
        text := format('%n',[(tblParametros.fieldbyname('JurosPar').asfloat *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100]);

end;

procedure Tfcadg.RLDBText23BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
        text := format('%n',[(tblParametros.fieldbyname('Outros1Par').asfloat *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100]);

end;

procedure Tfcadg.RLDBText24BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
        text := format('%n',[(tblParametros.fieldbyname('Outros2Par').asfloat  *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat )/100]);

end;

procedure Tfcadg.RLDBText34BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
          text := format('%n',[tblparametros.fieldbyname('ICMPar').asfloat+
                  tblparametros.fieldbyname('PISPar').asfloat+
                  tblparametros.fieldbyname('COFINSPar').asfloat+
                  tblparametros.fieldbyname('ContribSocialPar').asfloat+
                  tblparametros.fieldbyname('SIMPLESPar').asfloat+
                  tblparametros.fieldbyname('FretePar').asfloat+
                  tblparametros.fieldbyname('ComissaoPar').asfloat+
                  tblparametros.fieldbyname('JurosPar').asfloat+
                  tblparametros.fieldbyname('Outros1Par').asfloat+
                  tblparametros.fieldbyname('Outros2Par').asfloat]);
end;

procedure Tfcadg.RLDBText25BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
        text := format('%n',[((tblParametros.fieldbyname('ICMPar').asfloat *
                  tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat) / 100)+
                  (((tblParametros.fieldbyname('PISPar').asfloat *
                  tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100)+
                  ((tblParametros.fieldbyname('COFINSPar').asfloat *
                  tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100)+
                  ((tblParametros.fieldbyname('ContribSocialPar').asfloat *
                  tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100)+
                  ((tblParametros.fieldbyname('SIMPLESPar').asfloat *
                  tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100)+
                  ((tblParametros.fieldbyname('FretePar').asfloat *
                  tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100)+
                  ((tblParametros.fieldbyname('ComissaoPar').asfloat *
                  tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100)+
                  ((tblParametros.fieldbyname('JurosPar').asfloat *
                  tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100)+
                  ((tblParametros.fieldbyname('Outros1Par').asfloat *
                  tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100)+
                  ((tblParametros.fieldbyname('Outros2Par').asfloat *
                  tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100))]);
end;

procedure Tfcadg.RLDBText29BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
        text := format('%n',[(tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat -
                              tblRelatFinal.fieldbyname('TConsumoMatPrimaPer').asfloat -
                              (((tblParametros.fieldbyname('ICMPar').asfloat *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat) / 100)+
                              (((tblParametros.fieldbyname('PISPar').asfloat *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100)+
                              ((tblParametros.fieldbyname('COFINSPar').asfloat *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100)+
                              ((tblParametros.fieldbyname('ContribSocialPar').asfloat *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100)+
                              ((tblParametros.fieldbyname('SIMPLESPar').asfloat *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100)+
                              ((tblParametros.fieldbyname('FretePar').asfloat *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100)+
                              ((tblParametros.fieldbyname('ComissaoPar').asfloat *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100)+
                              ((tblParametros.fieldbyname('JurosPar').asfloat *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100)+
                              ((tblParametros.fieldbyname('Outros1Par').asfloat *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100)+
                              ((tblParametros.fieldbyname('Outros2Par').asfloat *
                              tblRelatFinal.fieldbyname('TFaturamentoBrutoPer').asfloat)/100)))) -
                              tblparametros.fieldbyname('TotalDespFix').asfloat -
                              tblparametros.fieldbyname('TotalSalEnc').asfloat]);

end;

procedure Tfcadg.qcalculoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
                fdm.tbempresa.Open;
                m1_.caption := fdm.tbempresa.fieldbyname('fantasia').AsString;
                m1_.Height :=25;


                i1.Picture := fmenu.imagelogo.Picture;
                if not fileexists(servpath + 'imagem\' +
                   fdm.tbempresa.FieldByName('codigo').AsString + '.jpg') then
                   i1.Destroy
                else RLPanel6.Margins.LeftMargin :=2;

                if fdm.tbempresa['email'] <> null then
                   email := '  E-Mail: ' + fdm.tbempresa.fieldbyname('email').AsString;

                if fdm.tbempresa['site'] <> null then
                   email := email + '  Site: ' + fdm.tbempresa.fieldbyname('site').AsString;

                gnome.Caption := fdm.tbempresa.fieldbyname('nome').AsString;

                gfone.Caption :=  'Fone/Fax: (' +fdm.tbempresa.fieldbyname('ddd').AsString +') '+
                                        fdm.tbempresa.fieldbyname('fone1').AsString + '   -   '+
                                        fdm.tbempresa.fieldbyname('fax').AsString;

                gendereco.Lines.Add(fdm.tbempresa.fieldbyname('Endereco').AsString + ' - '+
                                     fdm.tbempresa.fieldbyname('numero').AsString + '   '+
                                     fdm.tbempresa.fieldbyname('Complemento').AsString + ' - '+
                                     fdm.tbempresa.fieldbyname('bairro').AsString + ' - '+
                                     '  CEP: '+ fdm.tbempresa.fieldbyname('cep').AsString   + ' - '+
                                     fdm.tbempresa.fieldbyname('municipio').AsString+  ' - '+
                                     fdm.tbempresa.fieldbyname('uf').AsString +'   '+ email);



end;

procedure Tfcadg.Contrato1Click(Sender: TObject);
var
list:trichedit;
begin
          list := trichedit.Create(application);
          list.Font.Name := 'Arial';
          list.Font.Size :=10;
          list.Parent    := self;
          list.Visible   := false;
          list.Width     :=800;

          list.lines.add('Instrumento Particular de Contrato');
          list.lines.add(' ');
          list.lines.add(' ');

          list.lines.add('De Um lado: '+
                                    tabela.fieldbyname('nome').AsString + ' CPF '+
                                    tabela.fieldbyname('cnpj').AsString + ' Endereço: '+
                                    tabela.fieldbyname('endereco').AsString + ' Nº '+
                                    inttostr(tabela.fieldbyname('numero').AsInteger) + ' '+
                                    tabela.fieldbyname('complemento').AsString + ' Bairro '+
                                    tabela.fieldbyname('bairro').AsString + ' Município '+
                                    tabela.fieldbyname('municipio').AsString + ' Cep '+
                                    tabela.fieldbyname('cep').AsString + ' UF '+
                                    tabela.fieldbyname('uf').AsString + ' '+
                                   'aqui denominado credenciado');
         list.lines.add(' ');

         fdm.tbempresa.Open;

         list.lines.add('Do outro Lado: '+
                                    fdm.tbempresa.fieldbyname('nome').AsString +
                                    ', CNPJ ' +  fdm.tbempresa.fieldbyname('cnpj').AsString +
                                    ' localizado a ' +
                                    fdm.tbempresa.fieldbyname('endereco').AsString + ' nº '+
                                    fdm.tbempresa.fieldbyname('numero').AsString + ' '+
                                    fdm.tbempresa.fieldbyname('Complemento').AsString + ' Bairro '+
                                    fdm.tbempresa.fieldbyname('bairro').AsString + ' Município '+
                                    fdm.tbempresa.fieldbyname('municipio').AsString + ' Cep '+
                                    fdm.tbempresa.fieldbyname('cep').AsString + ' UF '+
                                    fdm.tbempresa.fieldbyname('uf').AsString +
                                    ', aqui denominado ' +
                                    fdm.tbempresa.fieldbyname('fantasia').AsString);

          list.lines.add('Objeto do Contrato: credenciamento de compra a prazo no '+
                                   fdm.tbempresa.fieldbyname('fantasia').AsString + '.');

          list.lines.add('1.   - O ' + fdm.tbempresa.fieldbyname('fantasia').AsString +
                                   ', habilita o credenciado e pessoa(s) por este autorizado (a) a adquirir mercadoria em qualquer de suas '+
                                   'lojas, até o valor limite, por este estabelecido. O valor limite será reajustado periodicamente de forma a atualizar o poder aquisitivo do credenciado.');
          list.lines.add('2.   - O credenciado e pessoa(s) por ele autorizado (a) deverá (ão)  apresentar um documento de identidade no ato da compra.');
          list.lines.add('3.   - As autorizações de débito referente as mercadorias serão assinadas pelo credenciado ou por pessoa (s) por ele autorizada (s) , reconhecendo o débito como líquido e certo.');
          list.lines.add('4.   - O credenciado é responsável pela autenticidade de sua assinatura, bem como da(s) pessoa( s) por ele autorizada (s).');
          list.lines.add('5.   - São também de responsabilidade do credenciado, perdas e danos decorrentes do uso indevido e abusivo  do crédito concedido.');
          list.lines.add('6.   - O credenciado ou pessoa por este autorizada, receberá no ato da compra um boleto constando valor da compra, bem como seu respectivo vencimento.');
          list.lines.add('7.   - O pagamento poderá ser realizado no próprio ' +
                                   fdm.tbempresa.fieldbyname('fantasia').AsString + ', ou na rede de agências bancárias.');
          list.lines.add('8.   - O credenciado autoriza ao ' + fdm.tbempresa.fieldbyname('fantasia').AsString +
                                   ' a debitar-lhe os custos de financiamento correspondente ao saldo devedor.');

          list.lines.add('9.   - O  não cumprimento de qualquer dos termos avançados neste instrumento, sujeitará a parte inadimplente, constituída em mora após notificação judicial ou extra-judicial ao pagamento da ');
          list.lines.add(' multa correspondente a 10% do valor do contrato, a época, atualizado monetariamente, de acordo com os índices que servir de base para atualização dos depósitos e, cadernetas de poupança, ou outro índice que vier a substituí-lo mais juros de 1% ao mês.');

          list.lines.add('10.    - O saldo devedor residual facultará ao '+
                                   fdm.tbempresa.fieldbyname('fantasia').AsString +
                                   ', a sacar a nota promissória objeto deste contrato, com os encargos devidos.');
          list.lines.add('11.   - Em caso de inadimplência do credenciado por prazo superior a trinta dias, fica desde já ciente que seu nome será registrado (negativado)  junto ao Serviço de Proteção ao Crédito (SPC).');

          list.lines.add('12.   - As partes contratantes obrigam a seus herdeiros e sucessores o fiel cumprimento deste contrato,e elegem o foro da comarca de Camaçari,');
          list.lines.add('a fim de dirimir qualsquer dúvidas ou litígios decorrentes deste instrumento, renunciando a qualquer outro, por mais privilegiado que seja, cabendo ainda a parte perdedora da questão o pagamento das despesas processuais e honorários dos advogados.');
          list.lines.add('');

          list.lines.add('Por fim declaram os contratantes que leram, entenderam e aceitam o presente contrato, com todas as suas claúsulas e condições,');
          list.lines.add('porque o mesmo consubstancia tudo quanto foi livremente acordado, assinando o presente instrumento, juntamente com as duas testemunhas abaixo assinado, em vias de igual teor, e para um só efeito.');

          list.lines.add('');
          list.lines.add('');

          list.lines.add('                                        '+
                                   fdm.tbempresa.fieldbyname('municipio').AsString+', '+
                                   formatdatetime('dd',date)+' de '+
                                   formatdatetime('mmmm',date)+ ' de '+
                                   formatdatetime('yyyy',date));
          list.lines.add('');
          list.lines.add('');

          list.lines.add(fdm.tbempresa.fieldbyname('fantasia').AsString);

          list.lines.add('');
          list.lines.add('');

          list.lines.add('Credenciado');

          list.lines.add('');
          list.lines.add('');

          list.lines.add('                                        Testemunhas                                Testemunhas');


          list.Lines.SaveToFile('c:\contrato.doc');
          ShellExecute(Handle, 'open', PChar('c:\contrato.doc'), nil, '', SW_MAXIMIZE);

end;

procedure Tfcadg.mod12Execute(Sender: TObject);
begin
             //despfixa
             fcadgv:=tfcadgv.Create(application,
                'cnpj','endereco','municipion','cpf', //campos que nao pode ser nulos
                'nome','','','', //campos que nao deve duplicar
                'codigo', '', '','', '', '', //campos que deve preencher automaticamente
                '', '', '',
                '', '', '',
                '', '', '', //combo3
                '', '', '', //combo4

                '' ,'', '','' , //checks list (4)

                '' ,'', '', //crupo radio, lista, valor campo
                '' ,'', '', //2
                '' ,'', '', //3
                '' ,'', '', //4

                '','','','',0,0,0,0,ds,tabela,nummodulo);

end;

procedure Tfcadg.Label5Click(Sender: TObject);
begin
            abortaacao(nil,tabela,'chave','','','','',0);
            cadp ('tbprodqtd', 'select chave, link, de, a, valor,vrcorte from tbprodqtd', 'Grade de valores',
                  '','',
                  '','','',
                  '','','',
                  '','','',
                  '',
                  'valor',
                  '',
                  '',
                  3,tabela.fieldbyname('chave').AsInteger );
            tbqtd.Refresh;

end;

procedure Tfcadg.Label6Click(Sender: TObject);
begin
            abortaacao(nil,tabela,'chave','','','','',0);
            cadp ('tbprodcor', '', 'Grade de cores',
                  '','',
                  '','','',
                  '','','',
                  '','','',
                  '',
                  'acrescimo',
                  '',
                  '',
                  3,tabela.fieldbyname('chave').AsInteger );
            tbcor.Refresh;
end;

procedure Tfcadg.valoradesivoExecute(Sender: TObject);
var
tot,corte_,numerado_,resina_:double;
begin
       if tbqtd.Active then begin
          adcorte_.Caption := '+' + format('%n',[tbqtd.fieldbyname('vrcorte').AsFloat])+' R$';
          corte := tbqtd.fieldbyname('vrcorte').AsFloat;
       end;

       if (tipoempresa = '1') and (tbqtd.Active) then begin
          tot := tbqtd.fieldbyname('valor').AsFloat +
                 (tbqtd.fieldbyname('valor').AsFloat  *
                  tbcor.fieldbyname('acrescimo').AsFloat/100);

          try    tot := tot * eqtd.Value;
          except tot := tot * 1;
          end;

          //if adcorte.Checked then tot := tot + tbqtd.fieldbyname('vrcorte').AsFloat;
          if adcorte.Checked    then corte_    := corte               else corte_ :=0;
          if adnumerado.Checked then numerado_ := tot * numerado /100 else numerado_ :=0;
          if adresina.Checked   then resina_   := tot * resina /100   else resina_ :=0;

          if (tabela.Active) and (tabela.RecordCount >0) then
             ltotal.Caption := formatfloat('###,##0.0000',tot+numerado_+resina_+corte_)
          else ltotal.Caption := '0,0000';

       end;

end;

procedure Tfcadg.Label9Click(Sender: TObject);
var
ini:tinifile;

begin
      abortaacao(nil,tabela,'chave','','','','',0);

     // corte    := strtofloat(msgi('Corte: Digite percentagem do acréscimo sobre valor:', 2));
      numerado := strtofloat(msgi('Numerado: Digite percentagem do acréscimo sobre valor:', 2));
      resina   := strtofloat(msgi('Resina: Digite percentagem do acréscimo sobre valor:', 2));

      Ini := TInifile.Create(conf_global);
      //Ini.Writefloat( 'adesivoc','corte',corte);
      Ini.Writefloat( 'adesivoc','numerado',numerado);
      Ini.Writefloat( 'adesivoc','resina',resina);
      ini.Free;

      //adcorte_.Caption := '+' + format('%n',[corte])+'%';
      adnumerado_.Caption := '+' + format('%n',[numerado])+'%';
      adresina_.Caption := '+' + format('%n',[resina])+'%';
end;

procedure Tfcadg.tbqtdAfterScroll(DataSet: TDataSet);
begin
      valoradesivoExecute(self);
end;

procedure Tfcadg.tbcorAfterScroll(DataSet: TDataSet);
begin
      valoradesivoExecute(self);
end;

procedure Tfcadg.adcorteClick(Sender: TObject);
begin
      valoradesivoExecute(self);
end;

procedure Tfcadg.Label30Click(Sender: TObject);
begin
      abortaacao(nil,ssemelhante,'chave','','','','',0);

      if not msg('Deseja excluir?',2) then abort;

      selecione('delete from tbsemelhante where chave = '+
                quotedstr(ssemelhante.fieldbyname('chave').AsString));
      ssemelhante.Refresh;
end;

procedure Tfcadg.Label29Click(Sender: TObject);
var
str,campo:string;
begin
        abortaacao(nil,tabela,'chave','','','','',0);

        str := msgi('Digite o código ou a descricao do produto',0);

        if StrIsfloat(str)  then
           campo :='codigo'
        else
        campo := 'descricao';

        listagem(campo,str,'',5,0);

        if fdm.sg.Active then begin
           if (ssemelhante.Locate('link',fdm.sg.fieldbyname('chave').AsString,[])) or
              (fdm.sg.fieldbyname('codigo').AsString = tabela.fieldbyname('codigo').AsString) then
              msg('#Este produto já está na lista de semelhantes.',0);

           selecione('insert into tbsemelhante (link,codigo) values(' +
                         quotedstr(fdm.sg.fieldbyname('chave').AsString)+
                     ','+quotedstr(tabela.fieldbyname('codigo').AsString)+')');
           ssemelhante.Refresh;
           fechatg;
        end;

end;

procedure Tfcadg.pgradeprecoDblClick(Sender: TObject);
var
str:string;

begin

            abortaacao(nil,tabela,'chave','','','','',0);

            if pgradepreco.SelectedIndex <2 then
               
               cadp ('tbprodgrade', 'select chave, link, descricao, vrcompra, valor, estoque from tbprodgrade', 'Grade de produtos',
                      '','',
                      '','','',
                      '','','',
                      '','','',
                      '',
                      'valor',
                      '',
                      '',
                      3,tabela.fieldbyname('chave').AsInteger)



            else begin

                abortaacao(nil,tabela,'chave','','','','',0);
                str := msgi('Digite a quantidade do estoque:',0);

                if StrIsFloat(str) = False then msg('#O valor digitado não é um número válido!',0);

                   selecione('update tbprodgrade set estoque = ' + realdblstr(strtofloat(str)) +
                             ' where chave= '+ quotedstr(tbprodgrade.fieldbyname('chave').AsString));

            end;

            tbprodgrade.Refresh;
end;

procedure Tfcadg.Imprimirgradepreos1Click(Sender: TObject);
begin

          with fdm.Query1 do begin
               sql.Clear;
               sql.add('Select g.Chave,p.codigo,p.codigobarras,p.codigofornecedor,p.codigooriginal,p.NCMSH,p.descricao,'+
                        ' g.descricao as Descitem, g.Valor, p.Estoque, g.estoque as estoqueitem, '+
                        ' p.CFOP,p.CST,p.NacImp, p.CF,p.Imposto,p.IPI,p.PIS,p.confins,'+
                        ' p.fabricante,p.fornecedor,p.departamento,p.familia,p.grupo,p.subgrupo from tbproduto p, tbprodgrade g'+
                        ' where (p.flag <> "D" or p.flag is null) and g.link=p.chave order by p.descricao');
          end;
          fdm.tbquery1.Close;
          fdm.tbquery1.open;

          fdm.tbquery1.Open;
          fdm.tbquery1.IndexFieldNames := 'descricao';

          reltb(fdm.tbquery1,'Grade de Produtos','','Valor','','','','','','','','','','','','');

          fdm.tbquery1.close;
          fdm.tbquery1.IndexFieldNames := '';


end;

procedure Tfcadg.eqtdChange(Sender: TObject);
begin
      tbqtd.Locate('de',floattostr(eqtd.Value),[lopartialkey]);
      valoradesivoExecute(self);
end;

procedure Tfcadg.Alteraracontadedestino1Click(Sender: TObject);
var
conta,str,loc:string;
begin

        abortaacao(nil,tabela,'chave','','','','',0);
        if Pred(grade.SelectedRows.Count) < 0 then msg('#Selecione os registros.',0);

        conta := combotb('tbconta','descricao','chave','Creditar nesta conta:','');

        if conta = '' then abort;

        loc:= tabela.fieldbyname('chave').AsString;
        filtrar(grade,nil,tabela,'chave');

        str :='';
        tabela.First;
        while not tabela.Eof do begin
              if str = '' then str := ' where (chave = '+ quotedstr(tabela.fieldbyname('chave').AsString)
              else str := str +       ' or  chave = '+ quotedstr(tabela.fieldbyname('chave').AsString);
              tabela.Next;
        end;
        if str<>'' then str := str + ') ';

        selecione('update ' + nometb + ' set codconta2 = '+quotedstr(conta) +str);
        tabela.Filtered := false;
        tabela.Cancel;
        tabela.Refresh;
        tabela.Locate('chave',loc,[]);
end;

procedure Tfcadg.Cdigoadicional1Click(Sender: TObject);
begin
         abortaacao(nil,tabela,'codigo','','','','',0);
         cadp ('tbcodadicional','','Códigos Adicionais',
              'codigo','codigo',
              '','','',
              '','','',
              '','','',
              '',
              '',
              '',
              '',
              3,tabela.fieldbyname('codigo').AsInteger);
end;

procedure Tfcadg.Documentos1Click(Sender: TObject);
begin
        permissao(PN,'PN',modulo);
        abortaacao(nil,tabela,'chave','','','','',0);
        editor(tabela.fieldbyname('chave').AsInteger, nummodulo,0,0,0,'','','');
end;

procedure Tfcadg.mod104Execute(Sender: TObject);
begin
             fcadgv:=tfcadgv.Create(application,
                'nome','','','', //campos que nao pode ser nulos
                'cnpj','ie','','', //campos que nao deve duplicar
                'codigo', 'data', '','', '', '', //campos que deve preencher automaticamente
                'estadocivil', '', 'S,C,D,O', //combo1, tabela,  campo tabela/lista
                'sexo', '', 'M,F', //combo2
                'instrucao', '', 'PRE,PRIMARIO COMP,PRIMARIO INCOMP,SECUNDARIO COMP,SECUNDARIO INCOMP,UNIVERSITARIO', //combo3
                '', '', '', //combo4

                '' ,'', '','' , //checks list (4)

                '' ,'', '', //crupo radio, lista, valor campo
                '' ,'', '', //2
                '' ,'', '', //3
                '' ,'', '', //4

                'Obs1','','','',6,0,0,0,ds,tabela,nummodulo); //memo1,2,2,3 e 4 e qtd de linhas/altura

end;

procedure Tfcadg.Cadastrarconvnio1Click(Sender: TObject);
begin
            cadp ('tbconv', '', 'Cadastro de convênio',
                  'nome','',
                  '','','',
                  '','','',
                  '','','',
                  '',
                  '',
                  'nome',
                  'obs',
                  2,0);

end;

procedure Tfcadg.Clienteadicional1Click(Sender: TObject);
begin

        permissao(PA,'PA',modulo);
        abortaacao(nil,tabela,'chave','','','','',0);
        application.CreateForm(tfclienteadicional,fclienteadicional);
        fclienteadicional.caption := 'CADASTRO DE CLIENTE ADICIONAL: '+tabela.fieldbyname('nome').asstring ;
        codloc := tabela.fieldbyname('codigo').asstring;
        fclienteadicional.showmodal;
        codloc :='';
end;

procedure Tfcadg.Baixartudo1Click(Sender: TObject);
var
tot:double;
mov:integer;
dc,codconta2:string;
begin
        if Pred(grade.SelectedRows.Count) < 0 then msg('#Selecione o(s) item(ns).',0);
        if msg('Deseja baixar o(s) cheque(s) selecionado(s) ',2) then begin
           filtrar(grade,nil,tabela,'chave');

           tot:=0;
           tabela.First;
           while not tabela.Eof do begin
                 tot := tot + tabela.fieldbyname('diferenca').AsFloat;
                 tabela.Next;
           end;


          abreconfig('movimentoreceber','tbconfig');
          mov := strtoint(valorconfig) + 1;

          if planocontas then
             alimentaconta(tabela.fieldbyname('codconta').AsString ,
                        tabela.fieldbyname('codconta3').AsString,'',
                        inttostr(nummodulo),
                        inttostr(mov),
                        date,
                        tot)



          else begin
             codconta2 := combotb('tbconta','descricao','chave','Informe a conta de destino para o valor:', tabela.fieldbyname('codconta2').AsString);
             if codconta2 = '' then abort;
             if modulo = '9' then dc := 'C' else dc := 'D';
             gravabancovr(strtoint(codconta2) ,dc, inttostr(MOV), 'BAIXA MANUAL', inttostr(nummodulo), 'CH',tot,mov);
        end;

        gravaconfig('movimentoreceber',inttostr(mov));

           tabela.First;
           while not tabela.Eof do begin
                 selecione('update tbreceber set recebido = total, diferenca = 0 where chave = '+quotedstr(tabela.fieldbyname('chave').AsString));
                 tabela.Next;
           end;
           tabela.Cancel;
           tabela.Refresh;

     end;

end;

procedure Tfcadg.ll5DblClick(Sender: TObject);
begin

      if ((nummodulo=4) or (nummodulo=9)) and
         (ll5.Caption = 'Avulsa') and
         (tabela['chave']<> null) then
          atuasaldo(2);
end;

procedure Tfcadg.ll3DblClick(Sender: TObject);
begin

      if ((nummodulo=4) or (nummodulo=9)) and
         (tabela['chave']<> null) then atuasaldo(1);

end;


end.
