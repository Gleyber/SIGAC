unit upedido;

interface

uses  inifiles, math, printers, Db, Windows, SysUtils, Classes,
  Graphics, Forms, Controls, StdCtrls,
  dialogs, Buttons, Mask, DBCtrls, jpeg, Grids, DBGrids,
  ToolWin, Messages, variants, ActnList, ExtDlgs,
  DBClient, ComCtrls, HTTPApp, HTTPProd, RLReport,
  RLFilters, RLDraftFilter,  Provider, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractTable, ExtCtrls,shellapi;

type
  Tfpedido = class(TForm)
    ActionList1: TActionList;
    novo: TAction;
    inserir: TAction;
    alterar: TAction;
    hbotao: TAction;
    dhbotao: TAction;
    formatar: TAction;
    novogrupo: TAction;
    inserirgrupo: TAction;
    alterargrupo: TAction;
    hbotaogrupo: TAction;
    dhbotaogrupo: TAction;
    totalitem: TAction;
    totalizar: TAction;
    preenchercliente: TAction;
    preencherproduto: TAction;
    combomecanico: TAction;
    estoqueminimo: TAction;
    imprimir: TAction;
    receber: TAction;
    refazcombo: TAction;
    ativarlocal: TAction;
    tcins: TAction;
    preencherservico: TAction;
    novoS: TAction;
    alterarS: TAction;
    inserirS: TAction;
    totalS: TAction;
    combos: TAction;
    tccotacao: TAction;
    tcobs: TAction;
    nota: TAction;
    verificadesconto: TAction;
    devolver: TAction;
    pedidomail: TAction;
    botoesform: TAction;
    pmenu: TPanel;
    btnatualizartudo: TSpeedButton;
    btncancelargrupo: TSpeedButton;
    btnnovogrupo: TSpeedButton;
    btneditargrupo: TSpeedButton;
    btngravargrupo: TSpeedButton;
    btnapagargrupo: TSpeedButton;
    btnimprimir: TSpeedButton;
    btnVoltarGrupo: TSpeedButton;
    btnAvancarGrupo: TSpeedButton;
    btnultimogrupo: TSpeedButton;
    btnprimeirogrupo: TSpeedButton;
    btnreceber: TSpeedButton;
    Panel5: TPanel;
    Label4: TLabel;
    Label27: TLabel;
    Label19: TLabel;
    Label35: TLabel;
    Label10: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    edata: TDBEdit;
    enumero: TDBEdit;
    enome: TDBEdit;
    evendedor: TDBComboBox;
    pmecanico: TPanel;
    Label12: TLabel;
    Label25: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label56: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit16: TDBEdit;
    DBEdit19: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit31: TDBEdit;
    pinformatica: TPanel;
    l3: TLabel;
    l6: TLabel;
    l2: TLabel;
    l4: TLabel;
    l1: TLabel;
    l5: TLabel;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    prodape: TPanel;
    ltotalpeca: TLabel;
    ltotalgeral: TLabel;
    Splitter1: TSplitter;
    lservico: TLabel;
    PageControl1: TPageControl;
    Tabitem: TTabSheet;
    DBGrid1: TDBGrid;
    ppeca: TPanel;
    btnapagar: TSpeedButton;
    btncancelar: TSpeedButton;
    btngravar: TSpeedButton;
    btneditar: TSpeedButton;
    btnnovo: TSpeedButton;
    Label13: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    Label23: TLabel;
    Label29: TLabel;
    Label11: TLabel;
    edescricao: TDBEdit;
    eqtd: TDBEdit;
    evrunit: TDBEdit;
    edescontoreal: TDBEdit;
    edescontopercent: TDBEdit;
    etotalparcial: TDBEdit;
    etotal: TDBEdit;
    Tabservico: TTabSheet;
    Splitter31: TSplitter;
    Splitter30: TSplitter;
    Splitter29: TSplitter;
    Splitter16: TSplitter;
    Splitter10: TSplitter;
    Splitter18: TSplitter;
    Splitter40: TSplitter;
    DBGrid2: TDBGrid;
    pservico: TPanel;
    btnapagarS: TSpeedButton;
    btncancelarS: TSpeedButton;
    btngravarS: TSpeedButton;
    btneditarS: TSpeedButton;
    btnnovoS: TSpeedButton;
    Label7: TLabel;
    Label33: TLabel;
    Label38: TLabel;
    Label41: TLabel;
    Label43: TLabel;
    etotalS: TDBEdit;
    evrunitS: TDBEdit;
    edescricaoS: TDBEdit;
    eqtdS: TDBEdit;
    emecanico: TDBComboBox;
    Splitter12: TSplitter;
    Splitter13: TSplitter;
    Splitter14: TSplitter;
    Splitter15: TSplitter;
    Splitter17: TSplitter;
    Splitter19: TSplitter;
    Splitter21: TSplitter;
    peletronica: TPanel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    eserie: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    eentrega: TDBEdit;
    lentrega: TLabel;
    etamanho: TDBEdit;
    ltamanho: TLabel;
    lcor: TLabel;
    ecor: TDBEdit;
    Label57: TLabel;
    lfpgto: TLabel;
    etm1: TDBEdit;
    etm2: TDBEdit;
    etm3: TDBEdit;
    lqtditem: TLabel;
    ir: TAction;
    vir: TAction;
    panimal: TPanel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    enomeanimal: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    Label69: TLabel;
    preencheequipamento: TAction;
    CFPgto: TDBComboBox;
    baixaestoque: TAction;
    lqtd: TLabel;
    qtdleitor: TAction;
    EOBS: TDBEdit;
    lobs: TLabel;
    tabpp: TTabSheet;
    ppecapp: TPanel;
    edescricaopp: TDBEdit;
    eqtdpp: TDBEdit;
    evrunitpp: TDBEdit;
    etotalpp: TDBEdit;
    Label1: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    btnnovopp: TSpeedButton;
    btnapagarpp: TSpeedButton;
    btneditarpp: TSpeedButton;
    btngravarpp: TSpeedButton;
    btncancelarpp: TSpeedButton;
    DBGrid3: TDBGrid;
    dspp: TDataSource;
    eqtditem: TDBText;
    etotalgeral: TDBText;
    epeca: TDBText;
    ltservico: TDBText;
    inserirpp: TAction;
    alterarpp: TAction;
    preencherprodutopp: TAction;
    totalitempp: TAction;
    DBEdit1: TDBEdit;
    Label20: TLabel;
    dspedidoitem: TDataSource;
    dspedido: TDataSource;
    dspedidoservico: TDataSource;
    lorcamento2: TLabel;
    eorcamento: TDBEdit;
    fecharvenda: TAction;
    margem: TAction;
    ecomprador: TDBComboBox;
    Tabdevolucao: TTabSheet;
    panelD: TPanel;
    btnnovoD: TSpeedButton;
    btneditarD: TSpeedButton;
    btngravarD: TSpeedButton;
    btnapagarD: TSpeedButton;
    btncancelarD: TSpeedButton;
    dsdevolucao: TDataSource;
    Label6: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label30: TLabel;
    ltamanhod: TLabel;
    lcord: TLabel;
    edescricaod: TDBEdit;
    eqtdd: TDBEdit;
    evrunitd: TDBEdit;
    etotald: TDBEdit;
    etamanhod: TDBEdit;
    ecord: TDBEdit;
    etm1d: TDBEdit;
    etm2d: TDBEdit;
    etm3d: TDBEdit;
    DBGrid4: TDBGrid;
    preenchedescricao: TAction;
    lcomprador: TLabel;
    Label24: TLabel;
    combo: TComboBox;
    Splitter8: TSplitter;
    StaticText1: TStaticText;
    ltdevolvido: TDBText;
    ldevolvido: TLabel;
    lqtdPP: TLabel;
    lqtdD: TLabel;
    desativalocal: TAction;
    tituloform: TAction;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    btnbd: TSpeedButton;
    evalidade: TDBEdit;
    lvalidade: TLabel;
    Label9: TLabel;
    egarantia: TDBComboBox;
    lestoque: TLabel;
    efone: TDBEdit;
    Label26: TLabel;
    Label28: TLabel;
    DBText1: TDBText;
    Label34: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    venda: TZQuery;
    vendaitem: TZQuery;
    vendaservico: TZQuery;
    tbdevolucao: TZQuery;
    tbpp: TZQuery;
    Label36: TLabel;
    DBEdit9: TDBEdit;
    Label39: TLabel;
    ecodigo: TDBEdit;
    rn: TRadioGroup;
    Label37: TLabel;
    cborderm: TComboBox;
    SpeedButton2: TSpeedButton;
    eicm: TDBEdit;
    Label40: TLabel;
    DBText4: TDBText;
    lorc: TLabel;
    novoorc: TAction;
    saldocliente: TAction;
    servicosprestados: TAction;
    expexcel: TAction;
    Label42: TLabel;
    DBText5: TDBText;
    Label44: TLabel;
    DBText6: TDBText;
    btnobsservico: TSpeedButton;
    eaprova: TDBEdit;
    laprova: TLabel;
    kitcalc: TAction;
    atuatb: TAction;
    edescricaog: TDBMemo;
    f12_clibalcao: TAction;
    delitem: TAction;
    f6: TAction;
    DBText7: TDBText;
    Label45: TLabel;
    piso: TPanel;
    edtentregue: TDBEdit;
    Label46: TLabel;
    elocalizacao: TDBEdit;
    Label47: TLabel;
    eespecificacao: TDBMemo;
    importarvenda: TAction;
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
    f11_clicad: TAction;
    SpeedButton1: TSpeedButton;
    btconsignada: TBitBtn;
    SpeedButton3: TSpeedButton;
    lmg: TLabel;
    margemitem: TAction;
    BitBtn1: TBitBtn;
    tablocacao: TTabSheet;
    panell: TPanel;
    Label70: TLabel;
    Label71: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    btnnovol: TSpeedButton;
    btnapagarl: TSpeedButton;
    btneditarl: TSpeedButton;
    btngravarl: TSpeedButton;
    btncancelarl: TSpeedButton;
    lqtdL: TLabel;
    edescricaol: TDBEdit;
    eqtdl: TDBEdit;
    evrunitl: TDBEdit;
    etotall: TDBEdit;
    DBGrid5: TDBGrid;
    tblocacao: TZQuery;
    dslocacao: TDataSource;
    totaliteml: TAction;
    lloc: TLabel;
    eloc: TDBText;
    Label82: TLabel;
    edevolucaol: TDBEdit;
    edtentregas: TDBEdit;
    Label83: TLabel;
    Label84: TLabel;
    ehoraentregas: TDBEdit;
    biciclobike: TAction;

    procedure permissaovenda;
    procedure chamatb(campo,st,tb:string;modulo:integer);
    procedure EnterEdit(Sender: TObject);
    procedure ExitEdit(Sender: TObject);
    procedure localiza(campo: string);
    procedure fazvenda(tecla:integer);



    procedure btnnovogrupoClick(Sender: TObject);
    procedure btngravargrupoClick(Sender: TObject);
    procedure btncancelargrupoClick(Sender: TObject);
    procedure btnapagargrupoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure novoExecute(Sender: TObject);
    procedure btneditargrupoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure inserirExecute(Sender: TObject);
    procedure dhbotaoExecute(Sender: TObject);
    procedure hbotaoExecute(Sender: TObject);
    procedure alterarExecute(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure formatarExecute(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure enumeroEnter(Sender: TObject);
    procedure enumeroExit(Sender: TObject);
    procedure evrcompraKeyPress(Sender: TObject; var Key: char);
    procedure eipiKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure eclfiscalKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure estributariaKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure eunKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure evrcompraKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure evrvendaKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure btnprimeirogrupoClick(Sender: TObject);
    procedure btnVoltarGrupoClick(Sender: TObject);
    procedure btnAvancarGrupoClick(Sender: TObject);
    procedure btnultimogrupoClick(Sender: TObject);
    procedure novogrupoExecute(Sender: TObject);
    procedure inserirgrupoExecute(Sender: TObject);
    procedure alterargrupoExecute(Sender: TObject);
    procedure hbotaogrupoExecute(Sender: TObject);
    procedure dhbotaogrupoExecute(Sender: TObject);
    procedure btnatualizartudoClick(Sender: TObject);
    procedure totalitemExecute(Sender: TObject);
    procedure totalizarExecute(Sender: TObject);
    procedure eobsEnter(Sender: TObject);
    procedure eobsExit(Sender: TObject);
    procedure preencherclienteExecute(Sender: TObject);
    procedure preencherprodutoExecute(Sender: TObject);
    procedure Label35Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure lorcamento2Click(Sender: TObject);
    procedure eccodigoExit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure enomeKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure etotalparcialEnter(Sender: TObject);
    procedure etotalpedidoExit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure estoqueminimoExecute(Sender: TObject);
    procedure imprimirExecute(Sender: TObject);
    procedure receberExecute(Sender: TObject);
    procedure btnreceberClick(Sender: TObject);
    procedure comboCloseUp(Sender: TObject);
    procedure comboEnter(Sender: TObject);
    procedure comboExit(Sender: TObject);
    procedure comboKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure refazcomboExecute(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure ecomissaoEnter(Sender: TObject);
    procedure ecomissaoExit(Sender: TObject);
    procedure ativarlocalExecute(Sender: TObject);
    procedure tcinsExecute(Sender: TObject);
    procedure TabservicoShow(Sender: TObject);
    procedure TabitemShow(Sender: TObject);
    procedure emecanicoClick(Sender: TObject);
    procedure preencherservicoExecute(Sender: TObject);
    procedure novoSExecute(Sender: TObject);
    procedure alterarSExecute(Sender: TObject);
    procedure inserirSExecute(Sender: TObject);
    procedure btncancelarSClick(Sender: TObject);
    procedure btngravarSClick(Sender: TObject);
    procedure btnnovoSClick(Sender: TObject);
    procedure btneditarSClick(Sender: TObject);
    procedure btnapagarSClick(Sender: TObject);
    procedure totalSExecute(Sender: TObject);
    procedure eqtdSExit(Sender: TObject);
    procedure evrunitSExit(Sender: TObject);
    procedure emecanicoEnter(Sender: TObject);
    procedure emecanicoExit(Sender: TObject);
    procedure edescricaoSKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure emecanicoKeyPress(Sender: TObject; var Key: char);
    procedure emecanicoKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure evendedorKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure combosExecute(Sender: TObject);
    procedure evendedorEnter(Sender: TObject);
    procedure evendedorExit(Sender: TObject);
    procedure Label59Click(Sender: TObject);
    procedure btnobsservicoClick(Sender: TObject);
    procedure tcobsExecute(Sender: TObject);
    procedure verificadescontoExecute(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure DBComboBox1KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: char);
    procedure Label25Click(Sender: TObject);
    procedure botoesformExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure irExecute(Sender: TObject);
    procedure virExecute(Sender: TObject);
    procedure l1Click(Sender: TObject);
    procedure Label77Click(Sender: TObject);
    procedure enomeanimalKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure preencheequipamentoExecute(Sender: TObject);
    procedure baixaestoqueExecute(Sender: TObject);
    procedure qtdleitorExecute(Sender: TObject);
    procedure CFPgtoKeyPress(Sender: TObject; var Key: char);
    procedure inserirppExecute(Sender: TObject);
    procedure alterarppExecute(Sender: TObject);
    procedure preencherprodutoppExecute(Sender: TObject);
    procedure totalitemppExecute(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: char);
    procedure vendaAfterScroll(DataSet: TDataSet);
    procedure vendaAfterEdit(DataSet: TDataSet);
    procedure vendaitem1AfterEdit(DataSet: TDataSet);
    procedure vendaservicoAfterEdit(DataSet: TDataSet);
    procedure CFPgtoEnter(Sender: TObject);
    procedure CFPgtoExit(Sender: TObject);
    procedure CFPgtoKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure fecharvendaExecute(Sender: TObject);
    procedure tabppShow(Sender: TObject);
    procedure margemExecute(Sender: TObject);
    procedure ecompradorEnter(Sender: TObject);
    procedure ecompradorExit(Sender: TObject);
    procedure ecompradorKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure btnapagarDClick(Sender: TObject);
    procedure btncancelarDClick(Sender: TObject);
    procedure btngravarDClick(Sender: TObject);
    procedure btneditarDClick(Sender: TObject);
    procedure btnnovoDClick(Sender: TObject);
    procedure preenchedescricaoExecute(Sender: TObject);
    procedure edescricaoKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure edescricaodKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure etm1dExit(Sender: TObject);
    procedure etm1Exit(Sender: TObject);
    procedure etm3Exit(Sender: TObject);
    procedure etm3dExit(Sender: TObject);
    procedure eqtdExit(Sender: TObject);
    procedure eqtddExit(Sender: TObject);
    procedure edescontorealExit(Sender: TObject);
    procedure edescontopercentExit(Sender: TObject);
    procedure etotaldExit(Sender: TObject);
    procedure evrunitExit(Sender: TObject);
    procedure evrunitdExit(Sender: TObject);
    procedure TabdevolucaoShow(Sender: TObject);
    procedure etm2Exit(Sender: TObject);
    procedure etm2dExit(Sender: TObject);
    procedure lcompradorClick(Sender: TObject);
    procedure Label24Click(Sender: TObject);
    procedure desativalocalExecute(Sender: TObject);
    procedure tituloformExecute(Sender: TObject);
    procedure etotaldKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure btnbdClick(Sender: TObject);
    procedure comboDropDown(Sender: TObject);
    procedure Label28Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure efoneEnter(Sender: TObject);
    procedure cbordermClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure etotalExit(Sender: TObject);
    procedure eicmExit(Sender: TObject);
    procedure eicmKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure etotalparcialExit(Sender: TObject);
    procedure novoorcExecute(Sender: TObject);
    procedure lorcClick(Sender: TObject);
    procedure saldoclienteExecute(Sender: TObject);
    procedure servicosprestadosExecute(Sender: TObject);
    procedure expexcelExecute(Sender: TObject);
    procedure Label42Click(Sender: TObject);
    procedure eserieKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kitcalcExecute(Sender: TObject);
    procedure atuatbExecute(Sender: TObject);
    procedure f12_clibalcaoExecute(Sender: TObject);
    procedure delitemExecute(Sender: TObject);
    procedure lfpgtoClick(Sender: TObject);
    procedure Label39Click(Sender: TObject);
    procedure f6Execute(Sender: TObject);
    procedure edescricaogEnter(Sender: TObject);
    procedure edescricaogExit(Sender: TObject);
    procedure eespecificacaoExit(Sender: TObject);
    procedure eespecificacaoEnter(Sender: TObject);
    procedure edtentregueExit(Sender: TObject);
    procedure edtentregueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure importarvendaExecute(Sender: TObject);
    procedure enumeroDblClick(Sender: TObject);
    procedure DBEdit16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure f11_clicadExecute(Sender: TObject);
    procedure btconsignadaClick(Sender: TObject);
    procedure vendaitemAfterScroll(DataSet: TDataSet);
    procedure margemitemExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edescricaoppKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edescricaolKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eqtdppExit(Sender: TObject);
    procedure evrunitppExit(Sender: TObject);
    procedure evrunitlExit(Sender: TObject);
    procedure btnnovoppClick(Sender: TObject);
    procedure btnnovolClick(Sender: TObject);
    procedure btneditarppClick(Sender: TObject);
    procedure btneditarlClick(Sender: TObject);
    procedure btngravarppClick(Sender: TObject);
    procedure btngravarlClick(Sender: TObject);
    procedure btncancelarppClick(Sender: TObject);
    procedure btncancelarlClick(Sender: TObject);
    procedure btnapagarppClick(Sender: TObject);
    procedure btnapagarlClick(Sender: TObject);
    procedure tablocacaoShow(Sender: TObject);
    procedure totalitemlExecute(Sender: TObject);
    procedure DBText7Click(Sender: TObject);
    procedure eqtdlExit(Sender: TObject);
    procedure edevolucaolKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure biciclobikeExecute(Sender: TObject);
  private

    min,est,qtdprod, quantidade: real;
    carencia, validade,decimais, Show, prazo,codigobalcao, codprodG: integer;
    vencimento, FormaPgto, codprod,
    Dvenda,Dcompra,pagina, PA, PD, gravargrupo, gravarS, gravar, gravarpp, gravarl, scmod,txtdig: string;


    avisaminimo,
    calccusto,
    estoqueorcamento,
    VCinterno,
    VCBarras,
    VCFornecedor,
    VCOriginal,
    leitor,
    trocanegativa,
    trocaautorizada,
    comissaoservico,
    valor3, atacado, varejo, custo, promocao,caixa,siscaixa,couvert,locacao: boolean;


    { Private declarations }
  public

    tbitem: tzquery;
    balcao, codigoimpressao, modulo, PN, MP,PC, ModoS, modogrupo, modo, modopp,modol, npedido: string;

    cotacao,
    peca,
    devolucao,
    troca,
    entrega,
    servico,
    perguntafecha,
    pecapendente,comissao2,iso,impdados: boolean;

    { Public declarations }
  end;

var
  fpedido: Tfpedido;

implementation

uses uacerto, udm, funcoes, umanu,  uecf_imp_, uecf_aux_,uecf_, uipedido;

{$R *.dfm}



procedure Tfpedido.fazvenda(tecla:integer);
var
codigo:string;
begin
      if peca then begin
         pagecontrol1.ActivePageIndex := 0;


      if tecla = 11 then begin
         codigo := msgi('Digite (só números): O Código, ou o CNPJ/CPF ou o Fone, ou as iniciais do nome para pesquisa',0);
         listagem(achacp('nome',codigo),codigo,'',4,0);
         if fdm.sg.Active=false then abort;
      end;

      if tecla = 11 then codigobalcao := fdm.sg.fieldbyname('codigo').AsInteger;

      btnnovogrupoclick(self);
      venda.edit;

      venda['codigo'] := codigobalcao;


      fechatg;

       with fdm.sg do begin
            fechatg;
            sql.Add('select * from tbcliente where codigo = ' + quotedstr(inttostr(codigobalcao)));
            open;
       end;

       preencherclienteExecute(self);
       btngravargrupoclick(self);
       btnnovoClick(self);
       keypreview := True;
       edescricao.SetFocus;
       if tecla = 11 then codigobalcao :=0;
    end;

end;



procedure Tfpedido.permissaovenda;
begin
  if (not atacado) and (not varejo) and (not custo) and (not valor3) then
     msg('#Você não tem permissão para vender, chame o gerente.',0);
end;



procedure Tfpedido.chamatb(campo,st,tb:string;modulo:integer);
var
criterio:string;
begin
        fechatg;
                with fdm.sg do begin
             close;
             sql.Clear;
             sql.add( 'select chave from tbcliente where codigo = '+
                      quotedstr(venda.FieldByName('codigo').AsString) );
             open;
             criterio := ' and link = ' + quotedstr(FieldByName('chave').AsString);
             close;

             sql.Clear;

             if (peletronica.Visible) or (pmecanico.Visible) then
                sql.Add('select * from tbmaquina where serie = ' + quotedstr(st)+criterio);

             if panimal.Visible then
                sql.Add('select * from tbanimal where nome = ' + quotedstr(st)+
                        ' or codigo = '+quotedstr(st)+criterio);

             open;

             if fdm.sg.RecordCount >0 then
                preencheequipamentoexecute(self)
             else begin
                listagem(campo,st,tb+criterio,modulo,0);

                if fdm.sg.Active then
                   preencheequipamentoexecute(self);

             end;
          end;

end;


procedure Tfpedido.localiza(campo: string);
begin
  abortar(edata);
  if peca then
    abortar(edescricao);
  if servico then
    abortar(edescricaoS);
  if pecapendente then
    abortar(edescricaopp);
  if devolucao then
    abortar(edescricaoD);

    loccampo(nil,venda,campo,'','','');

end;


procedure Tfpedido.Exitedit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clwhite;
end;


procedure Tfpedido.Enteredit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfpedido.btnnovogrupoClick(Sender: TObject);
begin

        if ImpFiscal and Concumitante and (venda.fieldbyname('modo').AsString='P') then
           msg('#É necessário resolver a venda antes de abrir uma nova.',0);

        if peca then
           btncancelarclick(self);
        btncancelarsclick(self);
        btncancelarppclick(self);
        btncancelarDclick(self);

        btncancelargrupoclick(self);

        permissao(PN, 'PN', modulo);

        novogrupoExecute(self);

        if fpedido.Active = True then
           if efone.Enabled = True then
              enome.SetFocus;

        vendaitem.Cancel;
        modogrupo := 'M';
end;

procedure Tfpedido.btngravargrupoClick(Sender: TObject);
begin
  if fpedido.active = True then
    focuscontrol(nil);

  venda.Edit;

  if venda.FieldByName('data').AsDateTime < strtodate('01/12/1900') then msg('#Data inválida.',0);

  if gravargrupo = 'novo' then
    inserirgrupoExecute(self)
  else if gravargrupo = 'alterar' then
    alterargrupoExecute(self);

  hbotaogrupoexecute(self);
  desativar(fpedido);

  modogrupo := 'N';
  modo := 'N';
end;

procedure Tfpedido.btncancelargrupoClick(Sender: TObject);
var
  sqlD: tzquery;
  nometabela: string;
begin



  if balcao = 'B' then
    nometabela := 'tbpedido'
  else
    nometabela := 'tbpedido';

  if venda['codigo'] = null then
  begin
    sqlD := tzquery.Create(self);

    with sqlD do
    begin
      Connection := fdm.Conector;
      sql.Clear;
      sql.Add('delete from venda where chave = ' +
              quotedstr(venda.FieldByName('chave').AsString));
      execsql;
      sql.Clear;
      sql.Add( 'delete from ' + nometabela + ' where chave = ' +
             quotedstr(venda.FieldByName('chavepedido').AsString));
      execsql;

      Destroy;
    end;


  end;

  hbotaogrupoexecute(self);
  desativar(fpedido);

  modogrupo := 'N';
  btnatualizartudoClick(self);

end;

procedure Tfpedido.btnapagargrupoClick(Sender: TObject);
begin
        permissaovenda;

       if (responsavel= 'RIBERCRYL') and (vendaitem.RecordCount>0 ) then
          msg('#Primeiro apague os itens, para voltarem para o estoque!',0);

        if (vendaitem.Active) and (vendaitem.FieldByName('cnt').AsString ='X') then
            msg('#Este pedido é um acerto de estoque, não pode ser deletado.',0);

        if (venda['td'] = '1') and (venda.fieldbyname('devolucao').AsFloat>0) then
           msg('#Delete, antes, as devoluções',0);

        if peca then
           btncancelarClick(self);
        if servico = True then
           btncancelarSClick(self);

        permissao(PD, 'PD', modulo);

        if venda['chave'] = null then  begin
           refazcomboexecute(self);
           msg('#Você não tem registro selecionado para deletar!',0);
        end;

        if msg('',1) then begin

             if (modulo = 'ORCAMENTO') or
                (modulo = 'AVALIACAO') then begin
                selecione( 'delete from venda where chave = '+ inttostr(venda.fieldbyname('chave').AsInteger));
                selecione( 'delete from vendaitem where link = '+ inttostr(venda.fieldbyname('chave').AsInteger));
                selecione( 'delete from vendaservico where link = '+ inttostr(venda.fieldbyname('chave').AsInteger));
                selecione( 'delete from vendadevolucao where link = '+ inttostr(venda.fieldbyname('chave').AsInteger));

             end else  cancelavenda(venda.fieldbyname('chave').AsInteger,0);

           venda.cancel;
           venda.refresh;
           tituloformexecute(self);

        end;   

end;

procedure Tfpedido.FormShow(Sender: TObject);
var
  i: integer;
  imagem: timage;
  script,serial: string;
begin

  if Show = 1 then begin
               
        selecione('select * from tbusuario where chave = ' +  quotedstr(inttostr(usuariolink)));
        atacado  := sqlpub['atacado'] = 'S';
        varejo   := sqlpub['varejo'] = 'S';
        custo    := sqlpub['custo'] = 'S';
        valor3   := sqlpub['valor3'] = 'S';
        promocao := sqlpub['promocao'] = 'S';
        caixa    := sqlpub['caixa'] = 'S';
        sqlpub   := nil;

  ecodigo.ReadOnly := true;

  lorc.Visible :=  modulo = 'ORCAMENTO';
  if modulo = 'ORCAMENTO' then caption := 'ORÇAMENTO';
  if modulo = 'TROCA' then caption := 'TROCA';
  if modulo = 'DEVOLUCAO' then caption := 'DEVOLUÇÃO';
  if modulo = 'CONSIGNADA' then caption := 'CONSIGNADA';
  if modulo = 'AVALIACAO' then caption := 'AVALIAÇÃO';


  dbgrid1.Columns[dbgrid1.Columns.Count-1].Visible := modulo = 'ORCAMENTO';


  fdm.tbconfig.Open;
  carencia := fdm.tbconfig.fieldbyname('carencia').AsInteger;
  comissao2 := fdm.tbconfig.FieldByName('comissao2').AsString = 'S';
  couvert := fdm.tbconfig.FieldByName('vrcouvert').asfloat >0;
  btconsignada.Visible :=  (fdm.tbconfig['consignada'] = 'S') and (modulo = 'PEDIDO');


  Dvenda := '';
  Dcompra := '';
  for i := 1 to fdm.tbconfig.FieldByName('decimaisvenda').AsInteger do Dvenda := Dvenda + '0';
  for i := 1 to fdm.tbconfig.FieldByName('decimaiscompra').AsInteger do Dcompra := Dcompra + '0';

    i:=0;

    Show := Show + 1;

    codigobalcao := fdm.tbconfig.FieldByName('codigobalcao').AsInteger;

    Label34.Visible := responsavel = 'RIBERCRYL';

    {begin ECF}
    if (modulo = 'PEDIDO') or (modulo = 'TROCA') then
      if ImpFiscal and Concumitante and ImpEcfPedido then
      begin
        btnnovo.Left := btneditar.Left;
        btneditar.Visible := False;
      end;
    {end ECF}



    imagem := timage.Create(self);
    Parent := fpedido;


    avisaminimo := fdm.tbconfig['avisaminimo'] = 'S';
    calccusto := fdm.tbconfig['calccusto'] = 'S';
    validade := fdm.tbconfig.FieldByName('validade').asinteger;

    devolucao := modulo = 'DEVOLUCAO';
    troca := modulo = 'TROCA';


    entrega := (fdm.tbconfig.FieldByName('entrega').AsString = 'S') and
      (balcao <> 'B') and
      ((modulo = 'PEDIDO') or (modulo = 'TROCA'));

    perguntafecha := fdm.tbconfig.FieldByName('perguntafecha').AsString = 'S';

    evrunit.ReadOnly := (fdm.tbconfig.FieldByName('Alteravrunit').AsString = 'N');
    iso := fdm.tbconfig['iso9001'] = 'S';
    piso.Visible := iso;

    if (fdm.tbconfig['os'] = 'S') and ((modulo = 'PEDIDO') or
      (modulo = 'ORCAMENTO') or (modulo = 'TROCA')) then
    begin
      servico := True;
      comissaoservico := False;

      //if modulo = 'PEDIDO' then
        if fdm.tbconfig['comissaoservico'] = 'S' then
           comissaoservico := True;

      if fdm.tbconfig['pecapendente'] = 'S' then
        pecapendente := True
      else
        tabpp.Destroy;
    end
    else
    begin
      tabservico.Destroy;
      tabpp.Destroy;
    end;

    if ((devolucao) and (not peca)) then locacao := false;
    if not locacao then begin
       tablocacao.Destroy;
       lloc.Hide;
       eloc.Hide;
    end;

    peca := devolucao = False;

    lservico.Visible := servico;
    ltservico.Visible := servico;


    if peca = False then
      tabitem.Destroy
    else
      btnbd.Visible := responsavel = 'RP DISTRIBUIDORA';

    trocanegativa := (troca) and (fdm.tbconfig['trocanegativa'] = 'S');

    // para avisar se atrasado
    if modulo = 'CONSIGNADA' then
      prazo := fdm.tbconfig.FieldByName('prazovendaconsignada').AsInteger
    else if modulo = 'AVALIACAO' then
      prazo := fdm.tbconfig.FieldByName('prova').AsInteger
    else
      prazo := 0;


    if (devolucao = False) and (troca = False) then begin
       Tabdevolucao.Destroy;
       ltdevolvido.Hide;
       ldevolvido.Hide;
    end;




    if modulo = 'ORCAMENTO' then begin

      estoqueorcamento := fdm.tbconfig['venderestoqueorcamento'] = 'S';
      lvalidade.Show;
      evalidade.Show;
      Label44.Font.Style := Label44.Font.Style + [fsunderline];
      Label42.Font.Style := Label44.Font.Style + [fsunderline];

    end else CFPgto.Width := 188;

    if balcao = 'B' then
      script := ' and balcao = ' + quotedstr(balcao)
    else
      script := ' and (balcao is null or balcao = "")';

    if (caixa) and (modulo <> 'ORCAMENTO') and
       (modulo <> 'CONSIGNADA') and (modulo <> 'AVALIACAO') then
          serial := ' serial = "0"'
    else  serial := ' serial = ' + quotedstr(GetIP);

    if (responsavel = '09.101.029/0001-34') or (responsavel = '07.153.037/0001-07') then  serial :=' serial is not null ';

    venda.sql.clear;
    venda.sql.add( 'select * from venda where ' + serial+
               ' and modo = ' + quotedstr(copy(modulo, 1,1)) +  script+sqlempresa(1,1,''));
//        debugstr(venda);
    scmod :=' and modo = ' + quotedstr(copy(modulo, 1,1)) + script+sqlempresa(1,1,'');

    venda.close;
    venda.Open;
    venda.Last;

    vendaitem.Active := peca;
    vendaservico.Active := servico;
    tbpp.Active := pecapendente;
    tbdevolucao.Active := (devolucao) or (troca);
    tblocacao.Active := locacao;
    formatarexecute(self);

    if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\menu3.jpg')) then
      imagem.Picture.LoadFromFile((PChar(ExtractFilePath(ParamStr(0)) + 'imagem\menu3.jpg')));

    if imagem.Picture <> nil then
    begin
//      imagepanel('imagerodape', altop, prodape, '', imagem);
      imagepanel('imagemenu', alclient, pmenu, '', imagem);

      if peca then
        imagepanel('imagepeca', alclient, ppeca, '', imagem);

      if servico then
        imagepanel('imageservico', altop, pservico, '', imagem);

      if pecapendente then
        imagepanel('imagepp', altop, ppecapp, '', imagem);

      if (troca) or (devolucao) then
        imagepanel('imageD', altop, panelD, '', imagem);

      if locacao then
        imagepanel('imagel', altop, panell, '', imagem);

      imagem.Destroy;
    end;


    // ativa os campos adicionais de cada loja
    if (modulo = 'PEDIDO') or (modulo = 'ORCAMENTO') or (modulo = 'TROCA')then
    begin
      pmecanico.Visible := tipoempresa = 'A';
      peletronica.Visible := tipoempresa = 'E';
      pinformatica.Visible := tipoempresa = 'I';
      panimal.Visible := tipoempresa = 'P';
      potica.Visible := tipoempresa = 'O';
      if potica.Visible then potica.Height :=61;
    end;


    //P=pedido, O= orcamento, C=consignada
    if modulo = 'PEDIDO' then
    begin
//      lorcamento1.Show;
  //    lorcamento2.Show;
    //  eorcamento.Show;
    end 
    else if (modulo = 'ORCAMENTO') or (modulo = 'CONSIGNADA') or (modulo = 'AVALIACAO') then
      btnreceber.Caption := 'Gerar Venda (F2)';


    if responsavel = 'ATACADAO DOS PISOS NALDO' then
    begin
      edescricao.Width := 309;
      ltamanho.Caption := 'Caixa';
      ltamanho.Show;
      etamanho.Show;
      etamanho.ReadOnly := True;

      if modulo = 'PEDIDO' then
        CFPgto.ReadOnly := True;
    end;


    for i := 0 to componentcount - 1 do
    begin
      if Components[i] is tdbedit then  
      begin
        // não mudar o evento destes
        if (tdbedit(Components[i]).Name = 'etm1') or
          (tdbedit(Components[i]).Name = 'etm2') or
          (tdbedit(Components[i]).Name = 'etm3') or
          (tdbedit(Components[i]).Name = 'eqtd') or
          (tdbedit(Components[i]).Name = 'evrunit') or
          (tdbedit(Components[i]).Name = 'edescontoreal') or
          (tdbedit(Components[i]).Name = 'edescontopercent') or
          (tdbedit(Components[i]).Name = 'eqtdS') or
          (tdbedit(Components[i]).Name = 'evrunitS') or
          (tdbedit(Components[i]).Name = 'eqtdpp') or
          (tdbedit(Components[i]).Name = 'etm1d') or
          (tdbedit(Components[i]).Name = 'etm2d') or
          (tdbedit(Components[i]).Name = 'etm3d') or
          (tdbedit(Components[i]).Name = 'eqtdd') or
          (tdbedit(Components[i]).Name = 'eqtdl') or
          (tdbedit(Components[i]).Name = 'evrunitl') or

          //(tdbedit(Components[i]).Name = 'efone') or
          (tdbedit(Components[i]).Name = 'evrunitd') then
        else
          tdbedit(Components[i]).OnExit := exitedit;

        tdbedit(Components[i]).OnEnter := enteredit;
      end;
    end;
    refazcomboexecute(self);

    if pagecontrol1.PageCount = 1 then
      pagecontrol1.TabWidth := 1;


    // se for devolucao
    if modulo = 'DEVOLUCAO' then
    begin
      tabdevolucao.Show;
      lservico.hide;
      ltservico.hide;
      ltotalpeca.hide;
      epeca.hide;
      ltotalgeral.hide;
      etotalgeral.hide;
      lqtditem.hide;
      eqtditem.hide;
      Label44.hide;
      DBText6.hide;
      DBText5.hide;
      Label42.hide;
      ldevolvido.Left := 709;
      ltdevolvido.Left := 709;
      CFPgto.hide;
      lfpgto.hide;
      lcomprador.hide;
      ecomprador.Hide;
      lobs.Left := 4;
      EOBS.Left := 4;
    end
    else if troca then
      tabdevolucao.Show
    else
      tabitem.Show;


       combosexecute(self);

       if responsavel = 'ARAUTO' then begin

          lentrega.Caption := 'Agendar';
          lentrega.Cursor :=crHandPoint;
          lentrega.Font.Style :=  lentrega.Font.Style +[fsunderline];
          lentrega.Font.Color :=clblue;
       end;



  venda.edit;
  venda.cancel;

  end;


  if codloc <> '' then
     venda.Locate('orcamento',codloc,[])
  else begin
     venda.IndexFieldNames:='numero';
     venda.Last;
  end;

  codloc :='';

        //almax
        //laprova.Visible :=  responsavel = '07.542.365/0001-97';
        //eaprova.Visible :=  responsavel = '07.542.365/0001-97';

  if responsavel = '07.542.365/0001-97' then begin
     lorcamento2.Caption := 'DtInforma';
     eorcamento.DataField := 'dtfechamento';
  end;

  btnobsservico.Visible := servico;

     Label45.visible := responsavel = '00.409.614/0001-21';
     DBText7.visible := responsavel = '00.409.614/0001-21';


     

     btconsignada.Top := pagecontrol1.Top + 1;
     fdm.tbconfig.Close;



end;

procedure Tfpedido.novoExecute(Sender: TObject);
var
  mensagem: string;
begin
  if responsavel = 'ATACADAO DOS PISOS NALDO' then
    mensagem := 'Preencha o cabeçalho e a forma de pagamento!!!'
  else
    mensagem := 'Preencha o cabeçalho!!!';


  if (venda['codigo'] = null) or
    ((responsavel = 'ATACADAO DOS PISOS NALDO') and (CFPgto.Text = '')) then
        msg('#'+mensagem,0);

  gravar := 'novo';

  ativarlocalexecute(self);


  tbitem.Insert;

  tbitem['data'] := datetostr(now);
  tbitem['numero'] := venda.fieldbyname('numero').AsString;

  if tbitem = vendaitem then
     tbitem['item'] :=  inttostr(vendaitem.RecordCount+1);

  if tbitem <> tbPP then begin
    tbitem['hora'] := timetostr(now);
    tbitem['tipoestoque'] := venda['tipoestoque'];

  end;

  dhbotaoexecute(self);
  if pagina = '0' then
     cborderm.ItemIndex :=0;

   
end;

procedure Tfpedido.btneditargrupoClick(Sender: TObject);
begin


        permissaovenda;

  if peca then
      btncancelarclick(self);
  btncancelarsclick(self);
  btncancelarppclick(self);
  btncancelarDclick(self);

  permissao(PA, 'PA', modulo);

        abortaacao(nil,venda,'chave','','','','',0);

  vendaitem.Cancel;
  gravargrupo := 'alterar';

  ativar(fpedido);
  desativalocalExecute(self);


  if (edata.Enabled = True) and (fpedido.Active = True) then
    edata.SetFocus;

  dhbotaogrupoexecute(self);
end;

procedure Tfpedido.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  if (modo = 'M') or (modogrupo = 'M') or (modoS = 'M') then
  begin
    case application.MessageBox('Deseja salvar as alterações?',
      'Sair', mb_yesnocancel + MB_ICONQUESTION) of

      idYes:
        begin
          if pagecontrol1.ActivePageIndex = 0 then
          begin
            btneditarclick(self);
            btngravarclick(self);
          end;

          btneditargrupoclick(self);
          btngravargrupoclick(self);

          if pagecontrol1.ActivePageIndex = 0 then 
          begin
            btneditarSclick(self);
            btngravarSclick(self);
          end;

          canclose := True;
        end;

      idNo:
        begin
          if peca then
             btncancelarclick(self);
          btncancelargrupoclick(self);
          btncancelarSclick(self);

          canclose := True;
        end;

      idCancel:
        canclose := False;
    end;
  end;
end;

procedure Tfpedido.inserirExecute(Sender: TObject);
var
  marcador, codigo, nometabela: string;
  qtd: real;
  sqlD: tzquery;
begin
  if pagina = '0' then nometabela := 'vendaitem';
  if pagina = '1' then nometabela := 'vendaservico';
  if pagina = '2' then nometabela := 'vendapp';
  if pagina = '3' then nometabela := 'vendadevolucao';
  if pagina = '4' then nometabela := 'vendalocacao';

  marcador := tbitem.FieldByName('codigo').AsString;

  if (tbitem['codigo'] = null) or
    (tbitem['total'] = NULL) then
     msg('#Verifique se o produto está cadastrado e se o total é maior que 0(zero)!',0);

{  // troca de tamanho so pelo mesmo codigo form
  if (troca) and (venda['td'] = '3') and (pagina = '0') then
      if not tbdevolucao.Locate('codigofornecedor',
             tbitem.fieldbyname('codigofornecedor').AsString,[]) then begin
             Application.MessageBox('O produto só pode ser trocado, por outro produto, com o mesmo código do fornecedor!',
                                    'Erro', 0 + MB_ICONerror);
             abort;
  end;
 }

  // troca de tamanho (VERIFICA SE COMPROU)
  if (troca) and (venda['td'] = '3') and (pagina = '3') then
  begin
    with fdm.query2 do
    begin
      Close;
                sql.Clear;
                sql.add( 'select codigo from tbpedidoitem where codigo = ' +
                         quotedstr(tbitem.FieldByName('codigo').AsString) +
                         ' and codigocliente = ' + quotedstr(venda.FieldByName('codigo').AsString));
      Open;

      if fdm.query2['codigo'] = null then
         msg('#Este produto não foi vendido, verifique!',0);

    end;
  end;

  {begin ECF} // se for pedido
  if (pagina = '0') and ((modulo = 'PEDIDO') or (modulo = 'TROCA')) then
    if (ImpFiscal) and (Concumitante) and (ImpECFPedido) then
    begin
      CheckECFConcumitante;

      if (not fdm.TbEcf.Active) then
        AbreCupomConcumitante(venda.FieldByName('cnpj').AsString, 'pedido', venda, vendaitem);

      CheckTbECF;

      sqlD := tzquery.Create(self);

      with sqlD do
      begin
        Connection := fdm.Conector;
        sql.clear;
        sql.add( 'select count(chave) as numitem from tbEcfItem where link=' +
                  fdm.tbECF.FieldByName('chave').AsString);
        Open;
        vendaitem['numitem'] := FieldByName('numitem').AsInteger + 1;
        Destroy;
      end;
      VendeItemECFConcumitante(venda, vendaitem);
    end;
  {end ECF}



  if pagina = '3' then
    alimentaestoque(tbitem.FieldByName('codigo').AsString,
                    tbitem.FieldByName('qtd').AsFloat,
                    venda.FieldByName('tipoestoque').AsString,
                    tbitem.FieldByName('chavegrade').AsInteger)


  else if ((pagina = '0') or (pagina='4')) and ((modulo = 'PEDIDO') or
    (modulo = 'CONSIGNADA') or (modulo = 'AVALIACAO') or
    (modulo = 'TROCA') or estoqueorcamento) then
  begin
    estoqueminimoexecute(self);

    if estoqueorcamento = False then
      alimentaestoque(tbitem.FieldByName('codigo').AsString,
        tbitem.FieldByName('qtd').AsFloat * (-1),
        venda.FieldByName('tipoestoque').AsString,
        tbitem.FieldByName('chavegrade').AsInteger);

       if responsavel= 'RIBERCRYL' then
           with fdm.query2 do  begin
                Close;
                sql.Clear;
                sql.add( 'update tbentitem set usado = if (usado is null, '+
                               realdblstr(vendaitem.fieldbyname('qtd').AsFloat)+
                               ', usado + '+realdblstr(vendaitem.fieldbyname('qtd').AsFloat)+'), '+
                               ' diferenca = qtd - usado '+
                               ' where chave = '+  quotedstr(vendaitem.fieldbyname('chavedevolucao').AsString));
                execsql;
           end;
  end;


  sqlD := tzquery.Create(self);
  with sqlD do
  begin
    Connection := fdm.Conector;
        sql.clear;
        sql.add( 'select codigo from ' + nometabela + ' where ' +
              ' link = ' + quotedstr(tbitem.FieldByName('link').AsString) +
              ' and modo = ' + quotedstr(tbitem.FieldByName('modo').AsString) +
              ' and codigo = ' + quotedstr(tbitem.FieldByName('codigo').AsString) +
              ' and vrunit = ' + realdblstr(roundto(tbitem.FieldByName('vrunit').AsFloat,-2)));

    Open;
    codigo := FieldByName('codigo').AsString;
    Destroy;
  end;


  if (codigo='') or (ImpFiscal and Concumitante and ImpECFPedido) or
    (responsavel = 'FUTURE SERVICE') or (responsavel = 'RIBERCRYL') or (responsavel = '05.038.326/0001-21') or
     ((responsavel = '47.030.085/0001-14') and//electricasp
      (vendaitem['codigo'] = '90903'))or
     (responsavel = '10.413.451/0001-04') or (pagina='4') then
    Grava(tbitem, nil,nometabela)
  else
  begin
    qtd := tbitem.FieldByName('qtd').AsFloat;
    tbitem.Cancel;
    tbitem.Locate('codigo', codigo, []);
    tbitem.Edit;
    tbitem['qtd'] := tbitem.FieldByName('qtd').AsFloat + qtd;
    totalitemexecute(self);
    altera(tbitem, nil,nometabela)
  end;


   if pagina = '0' then
     if (avisaminimo) and (min > 0) and (impdados = false) then
        if (est - tbitem.FieldByName('qtd').AsFloat) <= min then
           msg('Estoque Mínimo:'+#13+#13+' Em Estoque  = '+ floattostr(est)+ #13+ 'Est. Mínimo = '+format('%n',[min]), 0);

  min:=0;
  est:=0;

  tbitem.close;
  tbitem.open;
  formatarexecute(self);

  totalizarexecute(self);
  tbitem.Locate('codigo', marcador, []);
end;

procedure Tfpedido.dhbotaoExecute(Sender: TObject);
begin
  btnimprimir.Enabled := False;

  if pagina = '0' then
  begin
    btnnovo.Enabled := False;
    btnbd.Enabled := False;
    btneditar.Enabled := False;
    btnapagar.Enabled := False;
    btngravar.Enabled := True;
    btncancelar.Enabled := True;
  end
  else if pagina = '1' then
  begin
    btnnovoS.Enabled := False;
    btneditarS.Enabled := False;
    btnapagarS.Enabled := False;
    btngravarS.Enabled := True;
    btncancelarS.Enabled := True;
  end
  else if pagina = '2' then
  begin
    btnnovoPP.Enabled := False;
    btneditarPP.Enabled := False;
    btnapagarPP.Enabled := False;
    btngravarPP.Enabled := True;
    btncancelarPP.Enabled := True;
  end
  else if pagina = '3' then
  begin
    btnnovoD.Enabled := False;
    btneditarD.Enabled := False;
    btnapagarD.Enabled := False;
    btngravarD.Enabled := True;
    btncancelarD.Enabled := True;
  end
  else if pagina = '4' then
  begin
    btnnovol.Enabled := False;
    btneditarl.Enabled := False;
    btnapagarl.Enabled := False;
    btngravarl.Enabled := True;
    btncancelarl.Enabled := True;
  end;

end;

procedure Tfpedido.hbotaoExecute(Sender: TObject);
begin
  btnimprimir.Enabled := True;

  if pagina = '0' then 
  begin
    btnnovo.Enabled := True;
    btnbd.Enabled := True;
    btneditar.Enabled := True;
    btnapagar.Enabled := True;
    btngravar.Enabled := False;
    btncancelar.Enabled := False;
  end
  else if pagina = '1' then
  begin
    btnnovoS.Enabled := True;
    btneditarS.Enabled := True;
    btnapagarS.Enabled := True;
    btngravarS.Enabled := False;
    btncancelarS.Enabled := False;
  end
  else if pagina = '2' then
  begin
    btnnovoPP.Enabled := True;
    btneditarPP.Enabled := True;
    btnapagarPP.Enabled := True;
    btngravarPP.Enabled := False;
    btncancelarPP.Enabled := False;
  end
  else if pagina = '3' then
  begin
    btnnovoD.Enabled := True;
    btneditarD.Enabled := True;
    btnapagarD.Enabled := True;
    btngravarD.Enabled := False;
    btncancelarD.Enabled := False;
  end
  else if pagina = '4' then
  begin
    btnnovol.Enabled := True;
    btneditarl.Enabled := True;
    btnapagarl.Enabled := True;
    btngravarl.Enabled := False;
    btncancelarl.Enabled := False;
  end;

end;

procedure Tfpedido.alterarExecute(Sender: TObject);
var
  loc, nometabela: string;
begin
        if (tbitem['codigo'] = null) or
           (tbitem['total'] = NULL) then
           msg('#Verifique se o produto está cadastrado e se o total é maior que 0(zero)!',0);

  loc := tbitem.FieldByName('chave').AsString;

  if pagina = '3' then begin
    alimentaestoque(codprod,
                    qtdprod * (-1),
                    venda.FieldByName('tipoestoque').AsString,
                    codprodG);

    alimentaestoque(tbitem.FieldByName('codigo').AsString,
                    tbitem.FieldByName('qtd').AsFloat,
                    venda.FieldByName('tipoestoque').AsString,
                    tbitem.FieldByName('chavegrade').AsInteger);
  end
  else if ((pagina = '0') or (pagina = '4')) and ((modulo = 'PEDIDO') or
    (modulo = 'CONSIGNADA') or (modulo = 'AVALIACAO') or
    (modulo = 'TROCA')) then
  begin
    alimentaestoque(codprod,qtdprod, venda.FieldByName('tipoestoque').AsString,codprodG);


    alimentaestoque(tbitem.FieldByName('codigo').AsString,
                    tbitem.FieldByName('qtd').AsFloat * (-1),
                    venda.FieldByName('tipoestoque').AsString,
                    tbitem.FieldByName('chavegrade').AsInteger);
  end;

  if pagina = '0' then nometabela := 'vendaitem';
  if pagina = '1' then nometabela := 'vendaservico';
  if pagina = '2' then nometabela := 'vendapp';
  if pagina = '3' then nometabela := 'vendadevolucao';
  if pagina = '4' then nometabela := 'vendalocacao';

  altera(tbitem, nil,nometabela);
  min:=0;
  est:=0;
  tbitem.close;
  tbitem.open;
  formatarexecute(self);
  totalizarexecute(self);

  tbitem.Locate('chave', loc, []);
end;

procedure Tfpedido.btnimprimirClick(Sender: TObject);
var
  impred, st, imp, loc, ec, chamado, tecnico, defeito, solicitante,exp,nometb: string;
  Ini :TInifile;
begin

        permissaovenda;

  abortaacao(nil,venda,'chave','','','','',0);

  if (servico) and ((modulo = 'PEDIDO') or (modulo = 'TROCA')) then
    st := '4 = Imprime OS (P/ Técnico)' + #13
  else
    st := '';

  if servico then
    chamado := '5 = Chamado Técnico' + #13
  else
    chamado := '';


  if (ImpFiscal) and (not ImpECFPedido) and (not Concumitante) then
    ec := '6 = Finaliza Cupom Fiscal'#13
  else
    ec := '';


  if responsavel = 'MAURICIO' then
    imp := '1'
  else   if responsavel = 'FABIO VITRINE' then
    imp := '3'
  else imp := '3';

  if responsavel <> '04.425.748/0001-97' then
     impred := '3 = Tamanho Reduzido' + #13 ;

   if responsavel = 'RIBERCRYL' then
      imp :='8';

      st := st+ '8 = Impressão texto'+#13;

      Ini := TInifile.Create(conf_local);
      imp := Ini.ReadString('impNfiscal', 'pedido', '8');

        if inputquery('Imprimir', 'Digite uma opção de impressão:' + #13 + #13 +
                      '1 = Imprime cupom' + #13 +
                      '2 = Imprime Padrão' + #13 +
                      impred+
                      st +
                      chamado +
                      ec +
                      //'7 = Exporta...' + #13 +
                      '9 = Exporta para excel' + #13 +
                      '10 = Formato proposta' + #13 +
                      'Esc = Abandona impressão', imp) then begin;


        Ini.WriteString('impNfiscal', 'pedido', imp);
        Ini.Free;


    if imp = '9' then begin
       expexcelExecute(self);
       abort;
    end;

    //if imp = '8' then begin
      // imptxt(venda,vendaitem,tbdevolucao,vendaservico,2);
//       fmenu.impressora('pedido');
    //end;


    if (imp = '2') or (imp='3') or (imp='8') or (imp='10') or (imp='11')then
        imppedido(venda.FieldByName('chave').AsString,'venda',imp);

    if (st = '') and ((imp = '4') or (imp = '5')) then imp := '';
   //                   (imp = '2') or (imp = '3') or (imp = '10') or
    if (imp = '4') or  (imp = '5') or (imp = '7') then
    begin
      fdm.tbempresa.Open;
      //if (iso) and (imp = '2') then periodo2('iso','','',320,500,0);


      if fipedido <> nil then begin
         fipedido:=nil;
         //fipedido.Release;
      end;

      application.CreateForm(tfipedido, fipedido);
      fipedido.criapedidoExecute(self);

      fipedido.ltcod1.DataField := codigoimpressao;
      fipedido.ltcod2.DataField := codigoimpressao;
      fipedido.ltcod3.DataField := codigoimpressao;
      fipedido.ltcod5.DataField := codigoimpressao;

      loc := venda.FieldByName('chave').AsString;
      venda.Filter := 'chave = ' + quotedstr(venda.FieldByName('chave').AsString);
      venda.Filtered := True;
      fipedido.dspedido.DataSet := venda;

      fipedido.pitemc.DataSet := vendaitem;
      fipedido.tbitem.Open;
      fipedido.dspedidoitem.DataSet := fipedido.tbitem;
      //fipedido.dspedidoitem.DataSet := vendaitem;

      fipedido.pdev.DataSet := tbdevolucao;
      fipedido.tbdev.Open;
      fipedido.dsdevolucao.DataSet := fipedido.tbdev;
      //fipedido.dsdevolucao.DataSet := tbdevolucao;

      fipedido.dspedidoservico.DataSet := vendaservico;
      fipedido.dspp.DataSet := tbpp;
      fipedido.tbaprazo.MasterSource := dspedido;
      fipedido.imp := imp;
      fipedido.configexecute(self);
    end;

    if imp = '5' then
    begin
      inputquery('Nome Técnico', 'Digite o nome do técnico:', tecnico);
      inputquery('Defeito', 'Digite o defeito:', defeito);
      inputquery('Nome', 'Digite o nome do solicitante:', solicitante);
      fipedido.ltecnico.Caption := 'Técnico: ' + tecnico;
      fipedido.ldefeito.Caption := 'Defeito: ' + defeito;
      fipedido.lsolicitante.Caption := 'Solicitante: ' + solicitante;
      fipedido.chamadoExecute(self);
      fipedido.qchamado.PreviewModal;
    end;



    if imp = '1' then imprimirexecute(self);


    {if imp = '2' then
    begin
      tmpapel(fipedido.qpedido);
      fipedido.qpedido.previewmodal;

    end;

    if imp = '10' then begin
         vf:=false;
         periodo2('tabplanalmed',venda.fieldbyname('codigovendedor').AsString,'','','',265,498,0);
         if vf then begin

            exp:='1';
            inputquery('Formato', 'Digite uma opção:' + #13 + #13 +
                       '1 = Imprime' + #13 +
                       '2 = Exporta', exp);
            if (exp <> '1') and (exp <> '2') then exp := '1';


            if exp = '1' then fipedido.qpedido10.PreviewModal else
               exportarRL(fipedido.qpedido10, enome.text,venda.fieldbyname('email').asstring)

         end;

         vf:=false;   
    end;



    if (imp = '7') or (imp = '9') then begin
       exp :='2';
       inputquery('Formato', 'Digite uma opção:' + #13 + #13 +
                  '1 = Exporta Tamanho Reduzido' + #13 +
                  '2 = Exporta Tamanho Padrão', exp);
       if (exp <> '1') and (imp = '2') then exp := '2';

       fipedido.RLBand5.Height :=18;

       if exp = '1' then
          exportarRL(fipedido.qpedidoreduzido, enome.text,venda.fieldbyname('email').asstring)

       else if exp = '2' then
          exportarRL(fipedido.qpedido,enome.text,venda.fieldbyname('email').asstring);

    end;



    if imp = '3' then
    begin
      fipedido.qpedidoreduzido.PreviewModal;
      //if responsavel = 'FABIO VITRINE' then
      // fipedido.qpromissoria.previewmodal;
    end; }

    if (imp = '4') and ((modulo = 'PEDIDO') or (modulo = 'TROCA')) then
    begin
      fipedido.qpedido.Prepare;
      tmpapel(fipedido.qpedido);
      fipedido.qpedido.previewmodal;
    end;


    if (ec = '') and (imp = '6') then imp := '';
    if (imp = '6') then begin

       impecf:= false;
        vendaitem.First;
        while not vendaitem.Eof do begin
              if vendaitem.fieldbyname('total').AsFloat <=0 then
                 impecf := true;
                 vendaitem.Next;
        end;
        vendaitem.First;

        if impecf then msg('#Não podes enviar produto com total 0(zero) para a impressora.',0);

        venda.edit;
        venda['descontoreal'] := null;
        venda['acrescimo'] := null;
        nometb:='venda';
             selecione( 'select tbproduto.codigo,tbproduto.descricao,tbproduto.un, 0 as descontoreal, '+

                                'if ('+ nometb+'item.acrescimo is null,0, '+ nometb+'item.acrescimo) +' +
                                 nometb+'item.vrunit - if ('+ nometb+'item.descontoreal is null,0, '+ nometb+'item.descontoreal)as vrunit, '+


                                   nometb+'item.qtd*('+
                                   'if ('+ nometb+'item.acrescimo is null,0, '+ nometb+'item.acrescimo) +' +
                                    nometb+'item.vrunit - if ('+ nometb+'item.descontoreal is null,0, '+ nometb+'item.descontoreal)) as total, '+
                                   ' tbproduto.imposto,'+
                                   ' tbproduto.reducaobasecalc,'+
                                   ' tbproduto.cf,tbproduto.st, '+nometb+'item.qtd '+
                                   ' from tbproduto, '+nometb+'item'+
                                   ' where tbproduto.codigo = '+ nometb+'item.codigo '+
                                   ' and  '+nometb+'item.qtd > 0 and ' +
                                   nometb+'item.link='+quotedstr(venda.fieldbyname('chave').AsString));

        ImprimeECF_(venda.FieldByName('cnpj').AsString, 'pedido',
                    fpedido.venda.FieldByName('nome').AsString, fpedido.venda.FieldByName('fone').AsString,
                    fpedido.venda.FieldByName('endereco').AsString, venda, sqlpub);
        venda.Cancel;
        sqlpub := nil;

    end;


    if (imp = '2') or (imp = '3') or (imp = '4') or (imp = '7')or (imp = '8')or (imp = '10') then
    begin
      fdm.tbempresa.Close;
      venda.Filtered := False;
      venda.locate('chave', loc, []);
      if fipedido <> nil then begin
         fipedido.Close;
         fipedido.Release;
      end;
      fdm.tbquery1.Close;
    end;
  end;
end;

procedure Tfpedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  tbdevolucao.Close;
  vendaitem.Close;
  vendaservico.Close;
  venda.Close;  
  fpedido := nil;
  Release;
end;

procedure Tfpedido.formatarExecute(Sender: TObject);
begin

  venda.FieldByName('data').EditMask := '99/99/9999';
  venda.FieldByName('dtentrega').EditMask := '99/99/9999';
  venda.FieldByName('dtdevolucao').EditMask := '99/99/9999';
  venda.FieldByName('dtfechamento').EditMask := '99/99/9999';
  (venda.FieldByName('numero') as tintegerfield).displayformat := '000000';
  (venda.FieldByName('orcamento') as tintegerfield).displayformat := '000000';
  (venda.FieldByName('codigo') as tintegerfield).displayformat := '000000';
  (venda.FieldByName('totalpeca') as tfloatfield).displayformat := '###,##0.' + Dvenda;
  (venda.FieldByName('totalservico') as tfloatfield).displayformat := '###,##0.' + Dvenda;
  (venda.FieldByName('totalparcial') as tfloatfield).displayformat := '###,##0.' + Dvenda;
  (venda.FieldByName('descontoreal') as tfloatfield).displayformat := '###,##0.' + Dvenda;
  (venda.FieldByName('descontopercent') as tfloatfield).displayformat := '##0.' + Dvenda + '%';
  (venda.FieldByName('total') as tfloatfield).displayformat := '###,##0.' + Dvenda;
  (venda.FieldByName('acrescimo') as tfloatfield).displayformat := '###,##0.' + Dvenda;
  (venda.FieldByName('credito') as tfloatfield).displayformat := '###,##0.' + Dvenda;
  (venda.FieldByName('totalipi') as tfloatfield).displayformat := '###,##0.' + Dvenda;
  (venda.FieldByName('devolucao') as tfloatfield).displayformat := '###,##0.' + Dvenda;
  (venda.FieldByName('valoricmsubstituicao') as tfloatfield).displayformat := '###,##0.' + Dvenda;
  (venda.FieldByName('custo') as tfloatfield).displayformat := '###,##0.' + Dvenda;
  (venda.FieldByName('vrlocacao') as tfloatfield).displayformat := '###,##0.' + Dvenda;  


  if peca then
  begin
    (vendaitem.FieldByName('vrunit') as tfloatfield).displayformat := '###,##0.' + Dvenda;
    (vendaitem.FieldByName('vripi') as tfloatfield).displayformat := '###,##0.' + Dvenda;
    (vendaitem.FieldByName('total') as tfloatfield).displayformat := '###,##0.' + Dvenda;
    (vendaitem.FieldByName('totalparcial') as tfloatfield).displayformat := '###,##0.' + Dvenda;
    (vendaitem.FieldByName('descontoreal') as tfloatfield).displayformat := '###,##0.00000000';
    (vendaitem.FieldByName('descontopercent') as tfloatfield).displayformat := '###,##0.' + Dvenda + '%';
    (vendaitem.FieldByName('ipi') as tfloatfield).displayformat := '###,##0.' + Dvenda + '%';

  end;

  if servico then
  begin

    (vendaservico.FieldByName('vrunit') as tfloatfield).displayformat := '###,##0.' + Dvenda;
    (vendaservico.FieldByName('total') as tfloatfield).displayformat := '###,##0.' + Dvenda;
    vendaservico.FieldByName('dtentrega').EditMask := '99/99/9999';
    vendaservico.FieldByName('horaentrega').EditMask := '99:99';
  end;

  if pecapendente then
  begin

    (tbpp.FieldByName('vrunit') as tfloatfield).displayformat := '###,##0.' + Dvenda;
    (tbpp.FieldByName('total') as tfloatfield).displayformat := '###,##0.' + Dvenda;

  end;

  if (devolucao) or (troca) then
  begin
    tbdevolucao.open;
    (tbdevolucao.FieldByName('vrunit') as tfloatfield).displayformat := '###,##0.' + Dvenda;
    (tbdevolucao.FieldByName('total') as tfloatfield).displayformat := '###,##0.' + Dvenda;
  end;

  if locacao then
  begin
    tblocacao.open;
    (tblocacao.FieldByName('vrunit') as tfloatfield).displayformat := '###,##0.' + Dvenda;
    (tblocacao.FieldByName('total') as tfloatfield).displayformat := '###,##0.' + Dvenda;
    tblocacao.FieldByName('datadevolucao').EditMask := '99/99/9999';
  end;
end;

procedure Tfpedido.btnnovoClick(Sender: TObject);

  procedure novoitem;
  begin
    novoexecute(self);
    modo := 'M';
    if edescricao.Enabled = True then
      edescricao.SetFocus;
  end;
var
  st: string;
begin


        permissaovenda;

  abortaacao(nil,venda,'codigo','','','','',0);
  permissao(PN, 'PN', modulo);
  vendaitem.EnableControls;             


    if responsavel = 'RIBERCRYL' then begin
       periodo2('entrada','v','','','','',380,785,0);

       if fdm.sg.Active then begin
          novoitem;
          preencherprodutoExecute(self);
          fechatg;
          vendaitem['qtd'] := vrpub;
          vendaitem['chavedevolucao'] := fdm.tg.fieldbyname('chave').AsString;
          vendaitem['dtentregue'] := fdm.tg.fieldbyname('fabricacao').AsString;
          vendaitem['datadevolucao'] := fdm.tg.fieldbyname('validade').AsString;
          vendaitem['tamanho'] := fdm.tg.fieldbyname('lote').AsString;
          vendaitem['tm2'] := vrpub2;
          vendaitem['tm3'] := vrpub2;
        
          vrpub:=0;
          vrpub2:=0;
          fdm.tg.Close;
          eqtd.Enabled := false;
          edescricao.Enabled := false;
          keypreview := true;
          evrunit.setfocus;
          if vendaitem.FieldByName('qtd').AsFloat <=0 then
             btncancelarclick(self);
       end;

    end else begin

  st := '';
  if tipoempresa = 'Z' then
  begin
       novoExecute(self);
//       application.CreateForm(tfadesivopreco,fadesivopreco);
  //     fadesivopreco.showmodal;

       if vendaitem['codigo'] <> null then
          btngravarClick(self)
       else
        btncancelarClick(self);
  end
  else
    novoitem;
  end;
end;

procedure Tfpedido.btneditarClick(Sender: TObject);
begin

        permissaovenda;
  permissao(PA, 'PA', modulo);

        if vendaitem.FieldByName('chave').AsString = '' then
           msg('#Você não tem registro selecionado para editar!',0);

  vendaitem.EnableControls;
  gravar := 'alterar';

  codprod  := vendaitem.FieldByName('codigo').AsString;
  codprodG := vendaitem.FieldByName('chavegrade').AsInteger;
  qtdprod := vendaitem.FieldByName('qtd').AsFloat;

  ativarlocalexecute(self);
  if (eqtd.Enabled = True) and (pagecontrol1.ActivePageIndex = 0) then
    eqtd.SetFocus;

  dhbotaoexecute(self);
  if responsavel= 'RIBERCRYL' then begin
     eqtd.Enabled := false;
     edescricao.Enabled := false;
  end;   


end;

procedure Tfpedido.btngravarClick(Sender: TObject);
var
campo:string;
begin
          if edescricao.Enabled = True then
            edescricao.SetFocus;

          if responsavel = '47.030.085/0001-14' then evrunit.ReadOnly := true;

          if (responsavel = 'ATACADAO DOS PISOS NALDO') and
            (vendaitem['tamanho'] = null) then
             msg('#A quantidade está incorreta, a quantidade de caixas deve ser um número inteiro.!',0);

          verificadescontoExecute(self);

         //Não permitir valor abaixo do cadastro
         if (responsavel = 'PERPECAS') then begin
            if venda['tipovenda']='V' then
               campo := 'vrvenda'
            else if venda['tipovenda']='A' then
               campo := 'vratacado'
            else campo := 'valor3';

            selecione('select '+campo +' from tbproduto where codigo = ' +
                      quotedstr(vendaitem.fieldbyname('codigo').AsString));

            if sqlpub.FieldByName(campo).AsFloat >
               (vendaitem.FieldByName('vrunit').AsFloat+0.1) then
               senhagerencial(modulo,'DIGITE A SENHA GERENCIAL:',
                              'VALOR MENOR QUE NO CADASTRO!');
            sqlpub:=nil;

         end;

         vendaitem.edit;
         if modulo = 'ORCAMENTO' then
            vendaitem['gerar'] := vendaitem.fieldbyname('qtd').AsFloat
         else vendaitem['gerar'] := null;


         if (vendaitem.fieldbyname('vrminimo').AsFloat >0) and
            (vendaitem.fieldbyname('vrunit').AsFloat <
             vendaitem.fieldbyname('vrminimo').AsFloat) then
             senhagerencial(modulo,'DIGITE A SENHA GERENCIAL:',
                           'VALOR MENOR QUE O PERMITIDO: '+formatfloat('##0.00',vendaitem.fieldbyname('vrminimo').AsFloat));


          if gravar = 'novo' then
            inserirExecute(self)

          else if gravar = 'alterar' then
            alterarExecute(self);


          lestoque.Hide;
          hbotaoexecute(self);
          desativar(fpedido);

          modo := 'N';
          modogrupo := 'N';
end;

procedure Tfpedido.btncancelarClick(Sender: TObject);
begin
  vendaitem.cancel;
  desativar(fpedido);

  quantidade := 0;
  lqtd.Caption := 'F10 =  DIGITA A QUANTIDADE';

  hbotaoexecute(self);
  modo := 'N';
  modogrupo := 'N';
    lestoque.Hide;
end;

procedure Tfpedido.btnapagarClick(Sender: TObject);
var
  sqld: tzquery;
begin

  permissaovenda;
  permissao(PD, 'PD', modulo);

  abortaacao(nil,vendaitem,'chave','','','','',0);

        if msg('',1) then  begin
          if (modulo = 'PEDIDO') or (modulo = 'TROCA') then
            if (ImpFiscal) and (Concumitante) and (ImpECFPedido) then  begin
               CheckECFConcumitante;
               CheckTbECF;
               if Ecf_Concumitante.CheckCupomAberto then
                  Ecf_Concumitante.cancelaitem(vendaitem.FieldByName('numitem').AsString);

        sqlD := tzquery.Create(self);
        with sqlD do
        begin
          connection := fdm.conector;
          sql.clear;
          sql.add( 'update tbEcfItem set status="C", imposto=0, ' +
                'SitTributaria="CANC" where numitem=' +
                    vendaitem.FieldByName('numitem').AsString +
                    ' and link=' + fdm.tbecf.FieldByName('chave').AsString);
          ExecSQL();
          Destroy;
        end;
      end;


    codprod := vendaitem.FieldByName('codigo').AsString;
    qtdprod := vendaitem.FieldByName('qtd').AsFloat;


    if (modulo = 'PEDIDO') or (modulo = 'CONSIGNADA') or (modulo = 'AVALIACAO') or (modulo = 'TROCA') then
      alimentaestoque(codprod, qtdprod, venda.FieldByName('tipoestoque').AsString,
                      vendaitem.FieldByName('chavegrade').AsInteger);

    sqlD := tzquery.Create(self);
    with sqlD do
    begin
      Connection := fdm.Conector;
        sql.clear;
        sql.add( 'delete from vendaitem where chave = ' +
                quotedstr(vendaitem.FieldByName('chave').AsString));
      execsql;


       if responsavel= 'RIBERCRYL' then begin
          sql.clear;
          sql.add( 'update tbentitem set usado = usado - '+realdblstr(vendaitem.fieldbyname('qtd').AsFloat)+
                               ', diferenca = qtd - usado  '+
                               ' where chave = '+  quotedstr(vendaitem.fieldbyname('chavedevolucao').AsString));
          execsql;
       end;

      Destroy;
    end;


  tbitem.close;
  tbitem.open;
  formatarexecute(self);
    totalizarexecute(self);


  end;
end;

procedure Tfpedido.enumeroEnter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfpedido.enumeroExit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clwhite;
end;

procedure Tfpedido.evrcompraKeyPress(Sender: TObject; var Key: char);
begin
  if not (key in ['0'..'9', #8, ',']) then 
    abort;
end;

procedure Tfpedido.eipiKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if (key = 13) and (gravar <> 'nenhum') then 
  begin
    keypreview := False;
    btngravarClick(self);

    if gravar = 'novo' then
      btnnovoClick(self);
  end;
end;

procedure Tfpedido.eclfiscalKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if keypreview = False then
    keypreview := True;
end;

procedure Tfpedido.estributariaKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if keypreview = False then
    keypreview := True;
end;

procedure Tfpedido.eunKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if keypreview = False then
    keypreview := True;
end;

procedure Tfpedido.evrcompraKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if keypreview = False then
    keypreview := True;
end;

procedure Tfpedido.evrvendaKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if keypreview = False then
    keypreview := True;
end;

procedure Tfpedido.btnprimeirogrupoClick(Sender: TObject);
begin
  abortar(edata);

  if peca then
    abortar(edescricao);

  if servico then
    abortar(edescricaos);

  if pecapendente then
    abortar(edescricaopp);

  if (devolucao) or (troca) then
    abortar(edescricaoD);

  venda.First;

  btncancelarSClick(self);
  if (venda['tipo'] = 'V') and (peca) then
    tabitem.Show;

end;

procedure Tfpedido.btnVoltarGrupoClick(Sender: TObject);
begin
  abortar(edata);

  if peca then
    abortar(edescricao);

  if servico then
    abortar(edescricaos);

  if pecapendente then
    abortar(edescricaopp);

  if (devolucao) or (troca) then
    abortar(edescricaoD);
  venda.Prior;

  btncancelarSClick(self);
  if (venda['tipo'] = 'V') and (peca) then
   tabitem.Show;

end;

procedure Tfpedido.btnAvancarGrupoClick(Sender: TObject);
begin
  abortar(edata);
  if peca then
    abortar(edescricao);

  if servico then
    abortar(edescricaos);

  if pecapendente then
    abortar(edescricaopp);

  if (devolucao) or (troca) then
    abortar(edescricaoD);

  venda.Next;

  btncancelarSClick(self);
  if (venda['tipo'] = 'V') and (peca) then
    tabitem.Show;

end;

procedure Tfpedido.btnultimogrupoClick(Sender: TObject);
begin
  abortar(edata);

  if peca then
    abortar(edescricao);

  if servico then
    abortar(edescricaos);

  if pecapendente then
    abortar(edescricaopp);

  if (devolucao) or (troca) then
    abortar(edescricaoD);


  venda.Last;

  btncancelarSClick(self);

  if (venda['tipo'] = 'V') and (peca) then
    tabitem.Show;
end;

procedure Tfpedido.novogrupoExecute(Sender: TObject);
var
  st, texto, chave, Vvarejo, Vatacado, Vcusto, Vpromocao, vitrine, vvalor3, tipovenda, td, nometabela: string;
  A, V, C, P, A3: boolean;

  cont: integer;
  sqld:tzquery;
  ini:tinifile;
begin

             

  // somente para troca ou devolucao
  if ((troca) or (devolucao))and (Active)  then
  begin
    if responsavel = 'FABIO VITRINE' then
      vitrine := #13 + '3 = Troca de Tamanho';


    if (troca) then
      texto := '1 = Troca de Carimbo (Obedece a configuração)' + #13 +
               '2 = Troca Autorizada (Solicita senha gerencial)' + vitrine
    else if devolucao then
      texto := '1 = Devolução Padrão (Obedece a configuração)' + #13 +
               '2 = Devolução Autorizada (Solicita senha gerencial)';

      Ini := TInifile.Create(conf_local);
      td := Ini.ReadString('td', 'td', '2');
      ini.Free;

      if inputquery(modulo, 'Digite uma opção:' + #13 + #13 + texto, td) then else abort;
      if (td <> '1') and (td <> '2') and (td <> '3') then abort;
      if (responsavel <> 'FABIO VITRINE') and (troca) and (td = '3') then abort;

      Ini := TInifile.Create(conf_local);
      Ini.WriteString('td', 'td', td);
      ini.Free;

  end;


  if cotacao = False then
    baixaestoqueExecute(self)
  else
    venda.Insert;


      // negociebrasil
        if (atacado) or(varejo) or (custo) or (valor3) then  begin
          st := '';

          if Varejo then    begin
            Vvarejo := 'V = Venda Varejo' + #13;
            V := True;
          end;


          if Atacado then   begin
            Vatacado := 'A = Venda Atacado' + #13;
            A := True;
          end;

          if custo then  begin
            Vcusto := 'C = Venda Custo/Transferência' + #13;
            C := True;
          end;

          if valor3 then begin
            vvalor3 := '3 = Valor Atacado 1';
            A3 := True;
          end;

          if promocao then
          begin
            vpromocao := #13 + 'P = Promoção';
            P := True;
          end;


          cont := 0;
          if varejo then cont := cont + 1;
          if atacado then cont := cont + 1;
          if valor3 then cont := cont + 1;
          if atacado then cont := cont + 1;
          if custo then cont := cont + 1;

          if impdados then tipovenda := 'V';

          if cont > 1 then  begin

            Ini := TInifile.Create(conf_local);
            tipovenda := Ini.ReadString('tipovenda', 'tipovenda', 'V');
            ini.Free;


            if responsavel <> '13.097.477/0001-89' then
            if not impdados then
            if inputquery('Valores',  PChar('Usar o valor:' + #13 + #13 +
                          vvarejo + vatacado + vcusto + vvalor3 + vpromocao), tipovenda) then begin

            Ini := TInifile.Create(conf_local);
            Ini.WriteString('tipovenda', 'tipovenda', tipovenda);
            ini.Free;


            end else begin
              venda.cancel;
              fdm.tbconfig.Close;
              abort;
            end;
          end

          else if Varejo then
            tipovenda := 'V'
          else if Atacado then
            tipovenda := 'A'
          else if custo  then
            tipovenda := 'C'
          else if valor3 then
            tipovenda := '3'
          else if promocao  then
            tipovenda := 'P';

          tipovenda := uppercase(tipovenda);

          if ((tipovenda = 'V') and (V = False)) or
            ((tipovenda = 'A') and (A = False)) or
            ((tipovenda = 'C') and (C = False)) or
            ((tipovenda = '3') and (A3 = False)) or
            ((tipovenda = 'P') and (P = False)) then
          begin
            venda.cancel;
            abort;
          end;



          if (tipovenda <> 'V') and (tipovenda <> 'A') and (tipovenda <> 'C') and
            (tipovenda <> '3') and (tipovenda <> 'P') then
          begin
            Application.MessageBox('Escolha a forma correta!',
              'Erro', 0 + MB_ICONerror);
            abort;
            venda.cancel;
            fdm.tbconfig.Close;
          end;







    gravargrupo := 'novo';
    ativar(fpedido);
    desativalocalExecute(self);


    sqld := tzquery.Create(self);
    with sqld do  begin
         Connection := fdm.conector;

      // loca o numero e grava para nao ser usado por outro usuario
      if (modulo = 'PEDIDO') or (troca) or (devolucao) then
      begin
        if balcao = 'B' then
          nometabela := 'tbpedido'
        else
          nometabela := 'tbpedido';

        sql.clear;
        sql.add( 'select max(numero)as numero from ' + nometabela);
        Open;
        st := IntToStr(FieldByName('numero').AsInteger + 1);

        Close;
        sql.clear;
        sql.add( 'insert into ' + nometabela + ' (numero) values (' + st +')');

        execsql;

        Close;
        sql.clear;
        sql.add( 'select chave from ' + nometabela + ' where numero =' + quotedstr(st));
        Open;
        chave := IntToStr(FieldByName('chave').AsInteger);
      end

      else if modulo = 'ORCAMENTO' then
      begin
        fdm.tbconfig.Open;
        st := IntToStr(fdm.tbconfig.FieldByName('norcamento').AsInteger + 1);
        Close;
        sql.clear;
        sql.add( 'update tbconfig set norcamento  = ' + quotedstr(st));
        execsql;
      end
      else if modulo = 'AVALIACAO' then
      begin
        fdm.tbconfig.Open;
        st := IntToStr(fdm.tbconfig.FieldByName('nprova').AsInteger + 1);
        Close;
        sql.clear;
        sql.add( 'update tbconfig set nprova  = ' + quotedstr(st));
        execsql;
      end
      else if modulo = 'CONSIGNADA' then
      begin
        fdm.tbconfig.Open;
        st := IntToStr(fdm.tbconfig.FieldByName('nconsignada').AsInteger + 1);
        Close;
        sql.clear;
        sql.add( 'update tbconfig set nconsignada  = ' + quotedstr(st));
        execsql;
      end;

      Destroy;
    end;



    if validade> 0 then
       venda['validade'] := validade;
//    else

    //if responsavel <> '07.542.365/0001-97' then
      // venda['dtfechamento'] := datetostr(now);

    venda['data'] := datetostr(now);
    venda['modo'] := copy(modulo, 1,1);
    if balcao = 'B' then
      venda['balcao'] := balcao;
    venda['avulso'] := 'N';
    venda['entregue'] := 'S';
    venda['modulo'] := 'P';
    venda['td'] := td;

    venda['serial'] := getip;
    if (caixa) and(modulo <> 'ORCAMENTO') and
       (modulo <> 'CONSIGNADA') and (modulo <> 'AVALIACAO') then
       venda['serial'] :='0';

    venda['FISJUR'] := 'J';

    if (modulo = 'PEDIDO') or (troca) or (devolucao) then
      venda['chavepedido'] := chave;

    if servico = True then
      venda['tipo'] := 'O'
    else
      venda['tipo'] := 'V';

    venda['tipovenda'] := tipovenda;
    venda['numero'] := st;
    venda['emp'] := emp;

    {begin ECF}
    //Se for ECF: Concumitante...

    if (modulo = 'PEDIDO') or (troca) then
      if (ImpFiscal) and (Concumitante) and (ImpECFPedido) then
      begin
        //Verifica se já foi criado, senão cria
        CheckECFConcumitante;
      end;
    {end ECF}

    GALTERA('2', venda.FieldByName('numero').AsString, 'i');
    grava(venda, nil,'venda');


    venda.Cancel ;
    venda.Refresh;
    venda.Locate('numero', st, []);

    gravargrupo := 'alterar';


    fdm.query1.Close;

    dhbotaogrupoexecute(self);
  end
  else
  begin
    msg('Você não tem permissão para vender, chame o gerente!',0);
    venda.cancel;
    modogrupo := 'N';
    modo := 'N';
    modoS := 'N';

    fdm.tbconfig.Close;
  end;
end;

procedure Tfpedido.inserirgrupoExecute(Sender: TObject);
var
  marcador: string;
  sqld: tzquery;
begin
  marcador := enumero.Text;

  sqld := tzquery.Create(self);
  sqld.Connection := fdm.Conector;

  with sqld do
  begin
    Close;
    sql.clear;
    sql.add( 'select numero from venda where numero = ' + quotedstr(enumero.Text));
    Open;



    if SQLd['numero'] <> null then
    begin
      Close;
      sql.clear;
      sql.add( 'select max(numero) as numero from venda');
      Open;

      venda.Edit;
      venda['numero'] := FieldByName('numero').AsInteger + 1;
    end;
    Destroy;
  end;

  if (enome.Text = '') or (enumero.Text = '') then
      msg('#Os campos: Número, Nome  não podem ser nulo!',0);


  Grava(venda, nil,'venda');

  marcador := venda.FieldByName('numero').AsString;
  venda.cancel;
  venda.refresh;
  venda.Locate('numero', marcador, []);
  
end;

procedure Tfpedido.alterargrupoExecute(Sender: TObject);
var
  nometabela,  loc: string;
  ini: tinifile;
  sqld: tzquery;
  somadia,  avulsoprazo,dias, qtddia: integer;
begin
  if venda['codigo'] = null then msg('#Este cliente não está cadastrado',0);

  // se vencer sábado ou domingo
  if DiaSemana(date) = 'SEGUNDA' then
    somadia := 2
  else
    somadia := 0;

  // verifica consignada e prova vencida e não deixa abrir outra sem senha
  if ((modulo = 'CONSIGNADA') or (modulo = 'AVALIACAO')) and
    (prazo > 0) and (venda.FieldByName('total').AsFloat <= 0) then
  begin
    with fdm.query1 do
    begin
      Close;
             sql.clear;
             sql.add(  'select data from venda where codigo =' +
        quotedstr(venda.FieldByName('codigo').AsString) +
        ' and modo = ' + quotedstr(copy(modulo, 1,1)) +
        ' order by data ');
      Open;

      if fdm.query1['data'] <> null then
        qtddia := trunc(date - FieldByName('data').AsDateTime)
      else
        qtddia := 0;

      Close;

      if qtddia > (prazo + somadia) then  senhagerencial(modulo,
          'DIGITE A SENHA GERENCIAL:',  modulo + ' EM ABERTO (VENCIDA)!');
    end;
  end;

  fdm.tbconfig.Open;
  avulsoprazo := fdm.tbconfig.FieldByName('avulsoprazo').AsInteger;

  if modulo = 'PEDIDO' then
  begin
    // os da mesma placa em aberto
    if (servico) and
      (tipoempresa = 'A') and
      (venda['campo8'] <> null) then
    begin
      with fdm.query1 do
      begin
        Close;
             sql.clear;
             sql.add(  'select numero from venda where modo = "A" and campo8=' +
          quotedstr(venda.FieldByName('campo8').AsString) + ' and numero <> ' +
          quotedstr(venda.FieldByName('numero').AsString));
        Open;


        if fdm.query1['numero'] <> null then begin
           msg('Já existe uma OS com esta placa em aberto!',0);
          fdm.tbconfig.Close;
          abort;

        end;
      end;
    end;


    // garantia
    if (servico) and
      (tipoempresa = 'E') and
      (venda['campo4'] <> null) then
    begin
      with fdm.query1 do
      begin
        Close;
             sql.clear;
             sql.add(  'select numero,data,campo7 from tbpedido where campo4 =' +
          quotedstr(venda.FieldByName('campo4').AsString) + ' and numero <> ' +
          quotedstr(venda.FieldByName('numero').AsString));
        Open;

        dias := 0;


        if (fdm.query1['campo7'] <>null) and (fdm.query1['campo7'] <>'')  then
        begin
          dias := StrToInt(fdm.query1.FieldByName('campo7').AsString);

          if fdm.query1.FieldByName('data').AsDateTime + dias >= date then 
          begin
            Application.MessageBox(PChar('Este equipamento está na garantia, consulte a OS Nº ' +
              fdm.query1.FieldByName('numero').AsString),
              'Erro', 0 + MB_ICONerror);
            abort;
            fdm.tbconfig.Close;
          end;
        end;
      end;
    end;
  end;


  fdm.tbconfig.Close;

  if (venda.FieldByName('total').AsFloat >= 0) and (cotacao = False) and
    ((modulo = 'PEDIDO') or (modulo = 'TROCA')) then
  begin
    sqld := tzquery.Create(self);
    sqld.Connection := fdm.conector;

    inadiplente(venda.FieldByName('codigo').AsString, modulo);

    if balcao = 'B' then
      nometabela := 'venda'
    else
      nometabela := 'tbpedido';

    with sqld do
    begin
      Close;
      sql.clear;
      sql.add( 'select data,numero from ' + nometabela + ' where avulso ="S" and' +
                ' codigo = ' + quotedstr(venda.FieldByName('codigo').AsString) +
                ' order by data ');
      Open;


      if sqld['data'] <> null then
        if sqld.FieldByName('data').AsDateTime + avulsoprazo + somadia < date then
        begin
          senhagerencial(modulo,
            'ACERTO(S) EM ATRAZO - VENDA Nº' + sqld.FieldByName('numero').AsString +
            ' - DT.EMISSÃO: ' + sqld.FieldByName('data').AsString,
            'ACERTOS EM ABERTO A MAIS DE ' + IntToStr(avulsoprazo) + ' DIAS!');
          Destroy;
        end
        else
          Destroy;
    end;
  end;




  loc := venda.FieldByName('chave').AsString;

  with fdm.query1 do
  begin
    Close;
             sql.clear;
             sql.add(  'select codigo from tbfuncionario where nome =' +
                     quotedstr(venda.FieldByName('vendedor').AsString));
    Open;
    venda.edit;
    if FieldByName('codigo').AsInteger > 0 then
      venda['codigovendedor'] := FieldByName('codigo').AsInteger
    else 
      venda['codigovendedor'] := null;
    Close;

    if (peca) and (vendaitem.RecordCount > 0) then
    begin
        sql.clear;
        sql.add(  'update vendaitem set ' +
                'codigocliente = ' + quotedstr(venda.FieldByName('codigo').AsString) +
                ', codigovendedor =' + quotedstr(venda.FieldByName('codigovendedor').AsString) +
                ', doc =' + quotedstr(venda.FieldByName('codigo').AsString) +
                ', numero =' + quotedstr(venda.FieldByName('numero').AsString) +
                ', data =' + quotedstr(formatdatetime('yyyy-mm-dd', venda.FieldByName('data').AsDateTime)) +
                ' where link = ' + quotedstr(venda.FieldByName('chave').AsString) +
                ' and modo = ' + quotedstr(copy(modulo, 1,1)));
      //showmessage(commandtext);
      execsql;
    end;

    if ((troca) or (devolucao)) and (tbdevolucao.RecordCount > 0) then
    begin

        sql.clear;
        sql.add(  'update vendadevolucao set ' +
                'codigocliente = ' + quotedstr(venda.FieldByName('codigo').AsString) +
                ', codigovendedor =' + quotedstr(venda.FieldByName('codigovendedor').AsString) +
                ', numero =' + quotedstr(venda.FieldByName('numero').AsString) +
                ', data =' + quotedstr(formatdatetime('yyyy-mm-dd', venda.FieldByName('data').AsDateTime)) +
                ' where link = ' + quotedstr(venda.FieldByName('chave').AsString));
      execsql;
    end;

    if (locacao) and (tblocacao.RecordCount > 0) then
    begin

        sql.clear;
        sql.add(  'update vendalocacao set ' +
                'codigocliente = ' + quotedstr(venda.FieldByName('codigo').AsString) +
                ', codigovendedor =' + quotedstr(venda.FieldByName('codigovendedor').AsString) +
                ', numero =' + quotedstr(venda.FieldByName('numero').AsString) +
                ', data =' + quotedstr(formatdatetime('yyyy-mm-dd', venda.FieldByName('data').AsDateTime)) +
                ' where link = ' + quotedstr(venda.FieldByName('chave').AsString));
      execsql;
    end;


  end;


  altera(venda, nil,'venda');

  loc := venda.FieldByName('chave').AsString;

  tbdevolucao.Close;

  vendaitem.close;
  venda.close;
  venda.open;
  vendaitem.open;

  if devolucao then
     tbdevolucao.open;

  formatarexecute(self);

  venda.Locate('chave', loc, []);
end;

procedure Tfpedido.hbotaogrupoExecute(Sender: TObject);
begin
  btnnovogrupo.Enabled := True;
  btneditargrupo.Enabled := True;
  btnapagargrupo.Enabled := True;
  btnatualizartudo.Enabled := True;
  btngravargrupo.Enabled := False;
  btncancelargrupo.Enabled := False;
  btnimprimir.Enabled := True;

  if peca then 
  begin
    btnnovo.Enabled := True;
    btnbd.Enabled := True;
    btneditar.Enabled := True;
    btnapagar.Enabled := True;
    btngravar.Enabled := False;
    btncancelar.Enabled := False;
  end;

  if servico then
  begin
    btnnovos.Enabled := True;
    btneditars.Enabled := True;
    btnapagars.Enabled := True;
    btngravars.Enabled := False;
    btncancelars.Enabled := False;
    btnobsservico.Enabled := True;
  end;

  if pecapendente then
  begin
    btnnovoPP.Enabled := True;
    btneditarPP.Enabled := True;
    btnapagarPP.Enabled := True;
    btngravarPP.Enabled := False;
    btncancelarPP.Enabled := False;
  end;

  if (devolucao) or (troca) then
  begin
    btnnovod.Enabled := True;
    btneditard.Enabled := True;
    btnapagard.Enabled := True;
    btngravard.Enabled := False;
    btncancelard.Enabled := False;
  end;
end;

procedure Tfpedido.dhbotaogrupoExecute(Sender: TObject);
begin
  btnnovogrupo.Enabled := False;
  btneditargrupo.Enabled := False;
  btnapagargrupo.Enabled := False;
  btnatualizartudo.Enabled := False;
  btngravargrupo.Enabled := True;
  btncancelargrupo.Enabled := True;
  btnimprimir.Enabled := False;

  if peca then 
  begin
    btnnovo.Enabled := False;
    btnbd.Enabled := False;
    btneditar.Enabled := False;
    btnapagar.Enabled := False;
    btngravar.Enabled := False;
    btncancelar.Enabled := False;
  end;

  if servico then
  begin
    btnnovos.Enabled := False;
    btneditars.Enabled := False;
    btnapagars.Enabled := False;
    btngravars.Enabled := False;
    btncancelars.Enabled := False;
    btnobsservico.Enabled := False;
  end;

  if pecapendente then
  begin
    btnnovoPP.Enabled := False;
    btneditarPP.Enabled := False;
    btnapagarPP.Enabled := False;
    btngravarPP.Enabled := False;
    btncancelarPP.Enabled := False;
  end;

  if (devolucao) or (troca) then
  begin
    btnnovod.Enabled := False;
    btneditard.Enabled := False;
    btnapagard.Enabled := False;
    btngravard.Enabled := False;
    btncancelard.Enabled := False;
  end;
end;

procedure Tfpedido.btnatualizartudoClick(Sender: TObject);
var
  loc: string;
begin

        if codloc  <> '' then loc := codloc
       else loc := venda.FieldByName('numero').AsString;

        if pagina = '0' then
        try
        DBGrid1.DataSource := nil;
        except end;

        atuatbexecute(self);

        if codloc  <> '' then totalizarexecute(self);

        if venda.RecordCount > 0 then venda.locate('numero', loc, []);

        codloc:='';
        if pagina = '0' then DBGrid1.DataSource :=dspedidoitem;

end;


procedure Tfpedido.totalitemExecute(Sender: TObject);
var
  tm1, tm2, tm3, tamanho, tmnaldo,icms: real;
  Round_num, Trunc_num: extended;
  valornaldo: string;
begin

              
  if tipoempresa = '9' then
  begin
    if (tbitem.FieldByName('tm1').AsFloat > 0) then
      tm1 := tbitem.FieldByName('tm1').AsFloat;

    if (tbitem.FieldByName('tm2').AsFloat > 0) then
      tm2 := tbitem.FieldByName('tm2').AsFloat
    else
      tm2 := 1;

    if (tbitem.FieldByName('tm3').AsFloat > 0) then
      tm3 := tbitem.FieldByName('tm3').AsFloat
    else
      tm3 := 1;

    if (tbitem.FieldByName('tm1').AsFloat > 0) and
      (tbitem.FieldByName('tm2').AsFloat > 0) and
      (tbitem.FieldByName('tm3').AsFloat > 0) then
      tbitem['tamanho'] := floattostr(tm1 * tm2 * tm3) + 'M³'

    else if ((tbitem.FieldByName('tm1').AsFloat > 0) and
      (tbitem.FieldByName('tm2').AsFloat > 0) and
      (tbitem.FieldByName('tm3').AsFloat <= 0)) or

      ((tbitem.FieldByName('tm1').AsFloat > 0) and
      (tbitem.FieldByName('tm2').AsFloat <= 0) and
      (tbitem.FieldByName('tm3').AsFloat > 0)) or

      ((tbitem.FieldByName('tm1').AsFloat <= 0) and
      (tbitem.FieldByName('tm2').AsFloat > 0) and
      (tbitem.FieldByName('tm3').AsFloat > 0)) then

      tbitem['tamanho'] := floattostr(tm1 * tm2 * tm3) + 'M²'

    else
      tbitem.FieldByName('tamanho').Clear;


    tamanho := tm1 * tm2 * tm3;
  end
  else
    tamanho := 1;


  tbitem.Edit;
  tbitem['qtd']:=RoundTo(tbitem.FieldByName('qtd').AsFloat, -3);

  if (responsavel = 'ATACADAO DOS PISOS NALDO') then
  begin
    if tbitem.FieldByName('tm3').AsFloat > 0 then
      tmnaldo := tbitem.FieldByName('tm3').AsFloat
    else
      tmnaldo := 1;

    valornaldo := floattostr(tbitem.FieldByName('qtd').AsFloat / tmnaldo);

    if strisinteger(valornaldo) = False then
      tbitem.FieldByName('tamanho').Clear
    else
      tbitem['tamanho'] := tbitem.FieldByName('qtd').AsFloat /
        tbitem.FieldByName('tm3').AsFloat;
  end;


  if tbitem.FieldByName('descontoreal').AsFloat <= 0 then
    tbitem.FieldByName('descontoreal').Clear;
  if tbitem.FieldByName('descontopercent').AsFloat <= 0 then
    tbitem.FieldByName('descontopercent').Clear;

  if (tbitem.FieldByName('vrunit').AsFloat > 0) and
    (tbitem.FieldByName('qtd').AsFloat > 0) then

    tbitem.FieldByName('totalparcial').AsFloat :=
      roundto(tbitem.FieldByName('vrunit').AsFloat -
      tbitem.FieldByName('descontoreal').AsFloat, - decimais)
  else
    tbitem.FieldByName('totalparcial').Clear;


  {BEGIN ECF}
  if impfiscal then begin
  if (not VerConfTrunc) and (tbitem = vendaitem) then begin
    tbitem['qtd']:=RoundTo(tbitem.FieldByName('qtd').AsFloat, -3);

    Round_num := RoundTo(tbitem.FieldByName('totalparcial').AsFloat *
      tbitem.FieldByName('qtd').AsFloat * tamanho, - decimais);

    tbitem.FieldByName('total').AsFloat := Round_num;
  end  else  begin
    Round_num := RoundTo(tbitem.FieldByName('totalparcial').AsFloat *
      tbitem.FieldByName('qtd').AsFloat * tamanho * 100, - decimais);

    Trunc_num := Trunc(Round_num) / 100;
    tbitem.FieldByName('total').AsFloat := Trunc_num;
  end;
  {END ECF}

  end else begin
    tbitem['total'] := tbitem.FieldByName('totalparcial').AsFloat *
                       tbitem.FieldByName('qtd').AsFloat * tamanho;

 end;


  if (tbitem.FieldByName('total').AsFloat > 0) and
    (tbitem.FieldByName('ipi').AsFloat > 0) then

    tbitem.FieldByName('vripi').AsFloat :=
      tbitem.FieldByName('total').AsFloat *
      tbitem.FieldByName('ipi').AsFloat / 100
  else
    tbitem.FieldByName('vripi').Clear;


    if StrIsFloat(tbitem.fieldbyname('imposto').AsString) then
       icms := tbitem.fieldbyname('imposto').AsFloat;

    tbitem['vendal'] := tbitem.fieldbyname('totalparcial').AsFloat -
                           (tbitem.fieldbyname('totalparcial').AsFloat *
                           (icms+ tbitem.fieldbyname('pis').AsFloat +
                            tbitem.fieldbyname('cofins').AsFloat) / 100);
    if pagina = '0' then margemitemExecute(self);

end;

procedure Tfpedido.totalizarExecute(Sender: TObject);
var
  loc,lc,tipocom: string;
  totpeca, totservico,  qtditem, ipi, custo, descontoreal, cmedio, custol, devolver, Round_num,
  Trunc_num,frete,comiss,vendal,vrlocacao: double;
begin


  lc:= venda.fieldbyname('chave').AsString;
  totpeca := 0;
  totservico := 0;
  devolver := 0;
  custo := 0;
  cmedio := 0;
  ipi := 0;
  qtditem := 0;
  frete:=0;
  descontoreal:=0;
  vrlocacao:=0;

      if responsavel = 'ADRIANA CONFECCAO' then begin
         fdm.query2.close;
         fdm.query2.sql.Clear;
         fdm.query2.sql.add('select tipocomissao,comissao from tbfuncionario where codigo = '+
                                  quotedstr(venda.fieldbyname('codigovendedor').AsString));
         fdm.query2.open;
         comiss := fdm.query2.fieldbyname('comissao').AsFloat;
         tipocom:= fdm.query2.fieldbyname('tipocomissao').asstring;
         fdm.query2.close;
      end;


  // totaliza pecas
  if peca then
  begin
    loc := vendaitem.FieldByName('codigo').AsString;
    vendaitem.First;


    while not vendaitem.EOF do
    begin
      totpeca := totpeca + vendaitem.FieldByName('qtd').AsFloat *
                           vendaitem.FieldByName('vrunit').AsFloat;


      descontoreal := descontoreal + (vendaitem.FieldByName('totalparcial').AsFloat *
                                     vendaitem.FieldByName('qtd').AsFloat);
                                     
      custo := custo + (vendaitem.FieldByName('custo').AsFloat *
               vendaitem.FieldByName('qtd').AsFloat);

      cmedio := cmedio + (vendaitem.FieldByName('cmedio').AsFloat *
                         vendaitem.FieldByName('qtd').AsFloat);

      custol := custol + (vendaitem.FieldByName('custol').AsFloat *
                         vendaitem.FieldByName('qtd').AsFloat);

      ipi := ipi + vendaitem.FieldByName('vripi').AsFloat;
      qtditem := qtditem + vendaitem.FieldByName('qtd').AsFloat;
      vendal := vendal + vendaitem.FieldByName('vendal').AsFloat *
                vendaitem.FieldByName('qtd').AsFloat;

      if responsavel = 'ADRIANA CONFECCAO' then
         with fdm.query2 do begin
              close;
                sql.Clear;
                sql.add( 'select freteV from tbproduto where codigo = '+
                              quotedstr(vendaitem.fieldbyname('codigo').AsString));
                              open;
                              frete := frete + fieldbyname('freteV').AsFloat *
                                        vendaitem.fieldbyname('qtd').AsFloat;
               close;
         end;

      vendaitem.Next;
    end;
    vendaitem.Locate('codigo', loc, []);

    if descontoreal = totpeca then descontoreal := 0
    else descontoreal := totpeca - descontoreal;

  end;



  // totaliza servico
  if servico then
  begin
    loc := vendaservico.FieldByName('codigo').AsString;
    vendaservico.First;

    while not vendaservico.EOF do
    begin
      totservico := totservico + vendaservico.FieldByName('total').AsFloat;
      vendaservico.Next;
    end;
    vendaservico.Locate('codigo', loc, []);

  end;

  // totaliza devolucao
  if (devolucao) or (troca) then
  begin
    loc := tbdevolucao.FieldByName('codigo').AsString;
    tbdevolucao.First;


    while not tbdevolucao.EOF do
    begin
      devolver := devolver + tbdevolucao.FieldByName('total').AsFloat;
      custo := custo - tbdevolucao.FieldByName('custo').AsFloat *
               tbdevolucao.FieldByName('qtd').AsFloat;

      cmedio := cmedio - tbdevolucao.FieldByName('cmedio').AsFloat *
               tbdevolucao.FieldByName('qtd').AsFloat;

      custol := custol - tbdevolucao.FieldByName('custol').AsFloat *
                tbdevolucao.FieldByName('qtd').AsFloat;

      ipi := ipi + tbdevolucao.FieldByName('vripi').AsFloat;
      tbdevolucao.Next;
    end;

    tbdevolucao.Locate('codigo', loc, []);

  end;


  // totaliza devolucao
  if locacao then
  begin
    loc := tblocacao.FieldByName('codigo').AsString;
    tblocacao.First;


    while not tblocacao.EOF do
    begin
      vrlocacao := vrlocacao + tblocacao.FieldByName('total').AsFloat;
      custo := custo + (tblocacao.FieldByName('custo').AsFloat *
                        tblocacao.FieldByName('qtd').AsFloat);

      tblocacao.Next;
    end;

    tblocacao.Locate('codigo', loc, []);
  end;




  venda.Edit;

  if  custo >0 then  custo := strtofloat(formatfloat('##.0000000',custo));
  if  cmedio >0 then  cmedio := strtofloat(formatfloat('##.0000000',cmedio));
  if  totpeca >0 then  totpeca := strtofloat(formatfloat('##.0000000',totpeca));
  if  totservico >0 then  totservico := strtofloat(formatfloat('##.0000000',totservico));
  if  devolver >0 then  devolver := strtofloat(formatfloat('##.0000000',devolver));
  if  descontoreal >0 then  descontoreal := strtofloat(formatfloat('##.0000000',descontoreal));
  if  vrlocacao >0 then  vrlocacao := strtofloat(formatfloat('##.0000000',vrlocacao));

  venda['custo'] := custo;
  venda['cmedio'] := cmedio;
  venda['custol'] := custol;
  venda['totalpeca'] := totpeca;
  venda['totalservico'] := totservico;
  venda['totalitem'] := qtditem;
  venda['devolucao'] := devolver;
  venda['descontoreal'] := descontoreal;
  venda['vrlocacao'] := vrlocacao;

  venda['totalparcial'] := totservico + totpeca - devolver - descontoreal + vrlocacao;

  venda['faturamento'] :=tipocom;
  if  tipocom = 'C' then venda['comissao'] :=comiss;

  if (responsavel = 'FABIO VITRINE') and (qtditem >= 5) and
    (devolucao = False) and (modulo <> 'CONSIGNADA') then

    venda['obs'] := 'TROCA MÁXIMA DE ' +
      IntToStr(venda.FieldByName('totalitem').AsInteger div 5) +
      ' PEÇA(S) ATÉ ' + datetostr(venda.FieldByName('data').AsDateTime + 15) + '.';


  if (venda.FieldByName('descontopercent').AsFloat > 0) and
    (responsavel <> 'FABIO VITRINE') and
    (venda['tipodesconto'] = 'S') then
    venda['obs'] := 'DESCONTO DE ' + formatfloat('###,##0.00',
      venda.FieldByName('descontopercent').AsFloat) + '% ATÉ O VENCIMENTO';


  if impfiscal then begin

  {BEGIN ECF}
  if (not VerConfTrunc) and ((troca = True) or (peca = True)) then  begin
    Round_num := roundto(venda.FieldByName('acrescimo').AsFloat +
      venda.FieldByName('totalpeca').AsFloat +
      venda.FieldByName('vrcouvert').AsFloat +
      venda.FieldByName('totalservico').AsFloat -
      descontoreal - devolver, - decimais);

    venda['total'] := Round_num;

  end else  begin
    Round_num := roundto((venda.FieldByName('acrescimo').AsFloat +
      venda.FieldByName('totalpeca').AsFloat +
      venda.FieldByName('vrcouvert').AsFloat +
      venda.FieldByName('totalservico').AsFloat -
      descontoreal - devolver) * 100, - decimais);

    Trunc_num := Trunc(Round_num) / 100;
    venda['total'] := Trunc_num;
  end;

  {END ECF}


  end else begin

    venda['total'] := venda.FieldByName('acrescimo').AsFloat +
                      venda.FieldByName('valoricmsubstituicao').AsFloat +
      venda.FieldByName('totalpeca').AsFloat +
      venda.FieldByName('vrcouvert').AsFloat +
      venda.FieldByName('vrlocacao').AsFloat +
      venda.FieldByName('totalservico').AsFloat -
      descontoreal - devolver;

//      showmessage(floattostr(333.3- devolver));

  end;



  if venda.FieldByName('comissao').AsFloat > 0 then
    venda['vrcomissao'] := venda.FieldByName('totalpeca').AsFloat *
                           venda.FieldByName('comissao').AsFloat / 100
  else
    venda.FieldByName('vrcomissao').Clear;


   if responsavel = 'ADRIANA CONFECCAO' then
      if (comiss > 0) and  (venda['faturamento']=  'C') then
            venda['vrcomissao']:= (venda.fieldbyname('total').asfloat*
                                   venda.fieldbyname('comissao').asfloat/100)
      else if venda['faturamento'] =  'P' then begin
             venda['vrcomissao']:= (venda.fieldbyname('total').asfloat -
                                    venda.fieldbyname('custo').asfloat -  frete)/2 ;
             if venda.fieldbyname('total').asfloat>0 then
                venda['comissao'] := venda.fieldbyname('vrcomissao').asfloat*100/
                                      venda.fieldbyname('total').asfloat
             else venda['comissao'] :=  null;

      end else venda['vrcomissao']:=  null;

//      showmessage(floattostr())
  venda['totalipi'] := venda.FieldByName('total').AsFloat + ipi;


  if venda.FieldByName('descontoreal').AsFloat <= 0 then
    venda.FieldByName('descontoreal').Clear;
  if venda.FieldByName('descontopercent').AsFloat <= 0 then
    venda.FieldByName('descontopercent').Clear;


  venda['recebido'] :=
    venda.FieldByName('dinheiro').AsFloat +
    venda.FieldByName('cheque').AsFloat +
    venda.FieldByName('chequepre').AsFloat +
    venda.FieldByName('cartao').AsFloat + venda.FieldByName('cartaod').AsFloat +
    venda.FieldByName('convenio').AsFloat + venda.FieldByName('fiado').AsFloat +
    venda.FieldByName('credito').AsFloat;

  if venda.FieldByName('recebido').AsFloat > 0 then
    venda['troco'] := venda.FieldByName('recebido').AsFloat -
      venda.FieldByName('total').AsFloat
  else
    venda.FieldByName('troco').Clear;


  venda['vendal'] := vendal + venda.FieldByName('acrescimo').AsFloat -
                     descontoreal - devolver;

  altera(venda, nil,'venda');
  vendaitem.Close;
  venda.Cancel;
  venda.Refresh;
  venda.Locate('chave',lc,[]);
  vendaitem.open;
  formatarexecute(self);
end;

procedure Tfpedido.eobsEnter(Sender: TObject);
begin
  eobs.color := clinfobk;
  keypreview := False;
end;

procedure Tfpedido.eobsExit(Sender: TObject);
begin
  eobs.color := clwhite;
  keypreview := True;
end;

procedure Tfpedido.preencherclienteExecute(Sender: TObject);
var
chave:string;
begin

        venda.Edit;
        chave := fdm.sg.FieldByName('chave').AsString;
        venda['codigo'] := fdm.sg['codigo'];
        venda['nomecurto'] := fdm.sg['nomecurto'];
        venda['nome'] := fdm.sg['nome'];
        venda['endereco'] :=    fdm.sg.FieldByName('endereco').AsString + ' ' +
                                fdm.sg.FieldByName('numero').AsString + ' ' +
                                fdm.sg.FieldByName('complemento').AsString;
        venda['bairro'] := fdm.sg['bairro'];
        venda['municipio'] := fdm.sg['municipio'];
        venda['cep'] := fdm.sg['cep'];
        venda['uf'] := fdm.sg['uf'];
        venda['fone'] := fdm.sg.FieldByName('ddd').AsString + ' '+
                         fdm.sg.FieldByName('fone').AsString;
        venda['cnpj'] := fdm.sg['cnpj'];
        venda['ie'] := fdm.sg['ie'];
        venda['email'] := fdm.sg['email'];
        venda['vendedor'] := fdm.sg.FieldByName('vendedor').AsString;

        //if fdm.sg['ctp'] <> null then
        //   venda['codigo'] := contatocliente(chave,fdm.sg.FieldByName('nome').AsString);

        if responsavel = '13.097.477/0001-89' then
           if      fdm.sg['tipocliente'] = 'CORPORATIVO' then venda['tipovenda'] := '3'
           else if fdm.sg['tipocliente'] = 'REVENDA' then venda['tipovenda'] := 'A'
           else                                           venda['tipovenda'] := 'V';

       fechatg;
end;

procedure Tfpedido.preencherprodutoExecute(Sender: TObject);
var
vra,nomes,desc,tm,pr, ufd,prom: string;
begin

            if pagina = '0' then begin

               tbitem.Edit;
               if responsavel = 'ATACADAO DOS PISOS NALDO' then
                  tbitem['tm3'] := fdm.sg.FieldByName('fracao').AsFloat;

               ufd := venda.fieldbyname('uf').AsString;
           
               if fdm.sg['desconto'] <> null then
                  with fdm.query2 do begin
                       close;
                        sql.Clear;
                        sql.add( 'select desconto from tbdesconto where letra = '+
                                      quotedstr(fdm.sg.FieldByName('desconto').AsString));
                      open;
                      if fdm.query2['desconto']<> null then
                         desc := '  Desc '+fdm.query2.fieldbyname('desconto').AsString+'%';
                      close;
                  end;

               if responsavel <> 'RIBERCRYL' then
                  lestoque.Show;
               lestoque.Caption := 'Estoq=  '+ format('%n',[fdm.sg.FieldByName('estoque').asfloat])+ Desc;
            end;


          if quantidade <= 0 then
            tbitem['qtd'] := '1'
          else
            tbitem['qtd'] := quantidade;

          tbitem['modo'] := venda['modo'];

          tbitem['codigo'] := fdm.sg['codigo'];

          if fdm.sg['codigooriginal'] <> null then
            tbitem['codigooriginal'] := fdm.sg['codigooriginal'];

          if fdm.sg['codigofornecedor'] <> null then
            tbitem['codigofornecedor'] := fdm.sg['codigofornecedor'];

          if fdm.sg['codigobarras'] <> null then
            tbitem['codigobarras'] := fdm.sg['codigobarras'];

          tbitem['codigocliente'] := venda['codigo'];
          tbitem['codigovendedor'] := venda['codigovendedor'];
          tbitem['ncmsh'] := fdm.sg['ncmsh'];
          tbitem['cst'] := fdm.sg['cst'];


          if tipoempresa <> '9' then
            tm := fdm.sg.FieldByName('tamanho').AsString;

          tbitem['descricao'] := fdm.sg.FieldByName('descricao').AsString + ' ' + tm;
        //  tbitem['comissao'] := fdm.sg.FieldByName('comissao').AsFloat;

                //para calcular a comissao2
                if (pagina='0')and(fdm.sg.FieldByName('comissao2').asfloat > 0) and (comissao2) and
                   (msg('Calcular a segunda comissão?',2)) then begin
                   tbitem['comissao2'] := fdm.sg.FieldByName('comissao2').AsFloat;

                   periodo2('tabsel',
                            'select nomecurto as nome from tbfuncionario where '+
                            ' (classe = "A" or classe = "O") order by nomecurto', '','','','',293,388,1);

                   if codloc ='' then
                      msg('#Precisa escolher o nome!',0);

                   tbitem['nome'] := codloc;
                   codloc :='';
                end;


          if venda['tipovenda'] = 'P' then begin
            if ((fdm.sg['iniciopromocao'] = null) or
              ((fdm.sg['validade'] <= date)and
                fdm.sg['iniciopromocao'] >= date)) and
              (venda['tipovenda'] = 'P') then
            begin
              msg('Este item não está na promoção!', 0);
              btncancelarclick(self);
              btnnovoclick(self);
              abort;
            end
            else
              tbitem['vrunit'] := fdm.sg.FieldByName('vrpromocao').AsFloat;

          end  else if venda['tipovenda'] = 'V' then begin
            tbitem['vrunit'] := roundto(fdm.sg.FieldByName('vrvenda').AsFloat,-decimais);
            codloc :='1';

          end else if venda['tipovenda'] = 'A' then begin
            tbitem['vrunit'] := roundto(fdm.sg.FieldByName('vratacado').AsFloat,-decimais);
            codloc :='2';

          end else if venda['tipovenda'] = 'C' then
            tbitem['vrunit'] := roundto(fdm.sg.FieldByName('vrunit').AsFloat,-decimais)

          else if venda['tipovenda'] = '3' then begin
            tbitem['vrunit'] := roundto(fdm.sg.FieldByName('valor3').AsFloat,-decimais);
            codloc :='3';
          end;


          if (fdm.sg['iniciopromocao'] >= date) and
            (date <= fdm.sg['validade']) and
            (fdm.sg.fieldbyname('vrpromocao').AsFloat >0) then begin
             tbitem['vrunit'] := roundto(fdm.sg.FieldByName('vrpromocao').AsFloat,-decimais);
             prom := '4 = Promoção ...  '+format('%n',[fdm.sg.FieldByName('vrpromocao').AsFloat]);
          end;

          tbitem['vrminimo'] := fdm.sg.FieldByName('vrminimo').AsFloat;


          if (responsavel <> '13.097.477/0001-89') and (responsavel <> 'FABIO VITRINE') and (tipoempresa <> '1') then
          if (not impdados) and (Active) and((atacado) or (atacado2)) then begin
                                               //biciclobike
              if (responsavel = 'ARISTEM') or (responsavel = '68.174.176/0001-01') then begin
                 if venda['tipovenda'] =      'V' then vra :='1'
                 else if venda['tipovenda'] = 'A' then vra :='2'
                 else if venda['tipovenda'] = '3' then vra :='3'

              end else vra := msgi('Pegar o valor de:'+#13+#13+
                      '1 = Varejo      ...  '+ format('%n',[fdm.sg.FieldByName('vrvenda').AsFloat])+ #13+
                      '2 = Atacado    ...  '+format('%n',[fdm.sg.FieldByName('vratacado').AsFloat])+#13+
                      '3 = Atacado2  ...  '+format('%n',[fdm.sg.FieldByName('valor3').AsFloat])+#13+
                      prom ,2);

              if not strtoint(vra) in [1..4] then vra := 'vrvenda';
              if vra = '1' then vra := 'vrvenda';
              if vra = '2' then vra := 'vratacado';
              if vra = '3' then vra := 'valor3';
              if vra = '4' then vra := 'vrpromocao';

              tbitem['vrunit'] := roundto(fdm.sg.FieldByName(vra).AsFloat,-decimais);
         end;


          try
            if fdm.sg['p']='I' then begin
               tbitem['qtd']:= fdm.sg.FieldByName('embalagem').AsFloat *
                               fdm.sg.FieldByName('fracao').AsFloat;

               tbitem['vrunit'] := fdm.sg.FieldByName('vrvenda').AsFloat/
                                   (fdm.sg.FieldByName('embalagem').AsFloat *
                                   fdm.sg.FieldByName('fracao').AsFloat);
            end;
          except end;
                                  
          // apenas para fabio
          if responsavel = 'FABIO VITRINE' then
          begin
            if (fdm.sg['iniciopromocao'] <> null) and
              (fdm.sg['validade'] >= date) and
              (venda['tipovenda'] <> 'P') then
            begin
              msg('Este item está na promoção, não pode ser vendido em outro tipo de venda!', 0);
              btncancelarclick(self);
              btnnovoclick(self);
              abort;
            end;
          end;

          tbitem['totalparcial'] := tbitem['vrunit'];
          tbitem['un'] := fdm.sg['un'];
          tbitem['fabricante'] := fdm.sg['fabricante'];
          tbitem['cf'] := fdm.sg['cf'];
          tbitem['st'] := fdm.sg['cst'];
          tbitem['cfop'] := fdm.sg['cfop'];
          tbitem['letradesconto'] := fdm.sg['desconto'];
          tbitem['emp'] := emp;

          if responsavel = 'CONFECCAO GERAL' then begin
             tbitem['tamanho'] := fdm.sg['tamanho'];
             tbitem['cor'] := fdm.sg['cor'];
          end;



            if calccusto then
              if  fdm.sg['cficmE'] = 'F' then
                  tbitem['imposto'] := '00';

            tbitem['reducaobasecalc'] := fdm.sg.FieldByName('reducaobasecalc').AsFloat;



            if //((ufempresa = ufd) or (ufd='')) and
            (StrIsfloat(fdm.sg.FieldByName('imposto').asstring)=true)  then
                tbitem['imposto'] := fdm.sg.FieldByName('imposto').AsFloat
            else tbitem['imposto'] := '0'; //tbitem['imposto'] := aliquf(ufempresa,ufd);


            if tbitem['imposto'] <> null then
                tbitem['icm'] := tbitem.FieldByName('imposto').AsFloat;


            tbitem['st'] := fdm.sg.FieldByName('cst').AsString;
            if responsavel = '12.347.804/0001-40' then  else
            tbitem['ipi'] := fdm.sg['ipi'];

          if calccusto then
             tbitem['custol'] := fdm.sg['custocompraunit']
          else tbitem['custol'] := fdm.sg['vrunit'];

          tbitem['custo'] := fdm.sg['vrunit'];
          tbitem['cmedio'] := fdm.sg['cmedio'];  

          tbitem['MVA'] := fdm.sg.FieldByName('mva').AsFloat;
          tbitem['pis'] := fdm.sg.FieldByName('pis').AsFloat;
          tbitem['cofins'] := fdm.sg.FieldByName('confins').AsFloat;

          if contprod then  tbitem['contagem'] := 'S';

          if (responsavel = 'PERPECAS') or (pmecanico.Visible) or (iso) then
           if (pagina = '0') then begin

                  tbitem['cor'] := 'P'+fdm.sg.FieldByName('prateleira').AsString+ ' '+
                                   'B'+fdm.sg.FieldByName('box').AsString+' '+
                                   'I'+fdm.sg.FieldByName('item').AsString;

               if iso then tbitem['especificacao'] := fdm.sg.FieldByName('especificacao').AsString;

           end;

          if   avisaminimo then begin
               min:= fdm.sg.FieldByName('minimo').AsFloat;
               est:= fdm.sg.FieldByName('estoque').AsFloat;
          end;

          if ((StrIsfloat(fdm.sg.FieldByName('imposto').asstring)=true) and (responsavel <> '04.425.748/0001-97')) and
            (length(venda.FieldByName('cnpj').Text) = 18) and
            (venda.FieldByName('uf').Text <> 'SP') and
            (venda.FieldByName('uf').Text <> '') then
          begin
            fdm.tbicms.Open;
            if fdm.tbicms.Locate('descricao', venda.FieldByName('uf').Text, []) then
              tbitem['icm'] := fdm.tbicms.FieldByName('imposto').AsFloat;
            fdm.tbicms.Close;
          end;


          if (fdm.sg.FieldByName('fracao').AsFloat >1) and (calccusto) then
              tbitem['vrunit'] := tbitem.FieldByName('vrunit').AsFloat /fdm.sg.FieldByName('fracao').AsFloat;


             //pega o preco de custo
             if responsavel = 'RP DISTRIBUIDORA' then begin
                selecione('select chave, lote, vrunit from tbprodutocusto where link = ' +
                          quotedstr(fdm.sg.FieldByName('codigo').asstring));

                if sqlpub['chave']=null then
                   sqlpub := nil
                else begin

                   sqlpub.First;
                   while not sqlpub.EOF do begin
                         nomes := nomes + #13 + sqlpub.FieldByName('lote').AsString +
                                  ' = ' + format('%n',[sqlpub.FieldByName('vrunit').asfloat]);
                         sqlpub.Next;
                   end;

                   inputquery('Digite o lote para pegar o preço do custo:', PChar(nomes), pr);
                   if sqlpub.Locate('lote', uppercase(pr), []) then
                      tbitem['custo'] := sqlpub.fieldbyname('vrunit').AsFloat;

                   sqlpub:= nil;
                end;
              end;

               //eletrica sp
               if (responsavel = '47.030.085/0001-14') and (pagina = '0') then begin
                  if vendaitem['codigo'] = '90903' then evrunit.ReadOnly := false
                                               else evrunit.ReadOnly := true;
               end;


      // adesivo
      if (tipoempresa = '1') and (vradesivo>0) then begin
         tbitem.edit;
         tbitem['vrunit'] := vradesivo;
         tbitem['qtd'] := vrpub2;
         tbitem['especificacao'] :=  tbitem['especificacao'] + valorconfig;
         valorconfig :='';
      end;

      //grade
      if gradepreco then begin
         selecione('select chave, valor, descricao from tbprodgrade where chave = ' + quotedstr(valorconfig));

         if sqlpub.FieldByName('valor').AsFloat >0 then begin
            tbitem.edit;
            tbitem['vrunit']     := sqlpub.FieldByName('valor').AsFloat;
            tbitem['chavegrade'] := sqlpub.FieldByName('chave').AsInteger;
            tbitem['descricao'] :=  tbitem.fieldbyname('descricao').AsString + ' '+ sqlpub.FieldByName('descricao').AsString;
            valorconfig :='';
            sqlpub:= nil;
         end;

      end;


      totalitemexecute(self);


end;

procedure Tfpedido.Label35Click(Sender: TObject);
begin
  localiza('numero');
end;

procedure Tfpedido.Label10Click(Sender: TObject);
begin
          localiza('nome');
end;

procedure Tfpedido.lorcamento2Click(Sender: TObject);
begin
  if responsavel <> '07.542.365/0001-97' then
     localiza('dtfechamento')
  else
     localiza('orcamento');
end;

procedure Tfpedido.eccodigoExit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clwhite;
end;

procedure Tfpedido.DBGrid1Enter(Sender: TObject);
begin
  keypreview := False;
end;

procedure Tfpedido.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
      if (key = 13) then
      begin
        //key :=0;
        Perform(wm_nextdlgctl, 0,0);
      end;
      if (key = 27) then
      begin
        //key :=0;
        Perform(wm_nextdlgctl, 1,0);
      end;

      if key = vk_f4 then
        Combo.SetFocus;


end;

procedure Tfpedido.enomeKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
var
  texto,campo,scr: string;
begin

    fechatg;
    if (enome.Modified) and
       (key = 13) and
       (enome.Text <> '') then  begin

        if (Length(enome.Text)=14) and (StrIsNum(enome.Text)) then
            enome.Text:=formatacpf_cnpj(enome.Text);

      case rn.ItemIndex of
           0: campo := 'nomecurto';
           1: campo := 'nome';
           2: campo := 'fone';
      end;

      if length(enome.Text) = 8 then campo := 'fone';

      scr := campo + ' = ' + quotedstr(enome.Text);

      texto := enome.Text;

      with fdm.sg do begin
           Close;
           sql.clear;
           sql.add('select * from tbcliente where (flag <> "D" or flag is null)  '+
                   ' and (codigo = '+quotedstr(enome.Text)+
                   ' or cnpj = '+quotedstr(enome.Text)+
                   ' or ' + scr+')');
           Open;
      end;

      if fdm.sg['codigo'] <> null then
        preencherclienteexecute(self)

      else begin
         listagem(campo,enome.Text,'',4,0);

         if fdm.sg.Active then
            preencherclienteexecute(self);

      end;
    end;


end;

procedure Tfpedido.etotalparcialEnter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clblack;
end;

procedure Tfpedido.etotalpedidoExit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clnavy;
end;

procedure Tfpedido.DBEdit2Exit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clwhite;
end;

procedure Tfpedido.DBEdit15Exit(Sender: TObject);
begin
  totalizarexecute(self);
end;

procedure Tfpedido.DBEdit15Enter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfpedido.DBEdit2KeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if key = 13 then 
  begin
    keypreview := False;
    btngravargrupoClick(self);
    btnnovoClick(self);
  end;
end;

procedure Tfpedido.estoqueminimoExecute(Sender: TObject);
var
  i, qtd: integer;
  sqld: tzquery;
  estoque: string;
begin
  fdm.tbconfig.Open;

  if (fdm.tbconfig['venderestoque'] = 'N') and
    (fdm.tbconfig['venderestoqueavisar'] = 'N') then 
  else 
  begin
    if (venda['tipoestoque'] = '1') or
      (venda['tipoestoque'] = '3') then
      estoque := 'estoque'

    else if venda['tipoestoque'] = '2' then
      estoque := ' (estoquedeposito)as estoque '

    else
      estoque := '(' + venda.FieldByName('tipoestoque').AsString + ')  as estoque ';


    if edescricao.Enabled = True then
      edescricao.SetFocus;


    sqld := tzquery.Create(self);
    sqld.Connection := fdm.conector;



    with sqld do
    begin
      Close;
      sql.clear;
      sql.add( 'select ' + estoque + ' from tbproduto' +
                    MP + ' where codigo = ' + quotedstr(vendaitem.FieldByName('codigo').AsString));
      Open;


      if (fdm.tbconfig['venderestoque'] = 'N') or
        (fdm.tbconfig['venderestoqueavisar'] = 'S') then

        if FieldByName('estoque').AsFloat <
          vendaitem.FieldByName('qtd').AsFloat then  
        begin
          msg('Estoque Insuficiente = ' + FieldByName('estoque').AsString,0);

          if eqtd.Enabled = True then
            eqtd.SetFocus;
          if fdm.tbconfig['venderestoque'] = 'N' then
          begin
            abort;
            Destroy;
            fdm.tbconfig.Close;
          end;
        end;
      Destroy;
      fdm.tbconfig.Close;
    end;
  end;
end;

procedure Tfpedido.imprimirExecute(Sender: TObject);
var
sped,total,imp:string;
adicionais,rodape:trichedit;
begin
    imp :='1';

    if responsavel = 'DISK BATERIAS' then
       imp := msgi('1=Imprimir cupom venda'+#13+'2=Imprimir cupom entrega',2);

    if imp = '2' then
      periodo2('Tabdiskbateria',venda.fieldbyname('chave').AsString,'','','','',366,330,1)

    else begin


                impmatricial;
                adicionais:= trichedit.Create(application);
                adicionais.Parent := self;
                adicionais.Visible :=false;

                rodape:= trichedit.Create(application);
                rodape.Parent := self;
                rodape.Visible :=false;



            if  ((venda.fieldbyname('totalservico').asfloat > 0) and
                 (venda.fieldbyname('totalpeca').asfloat > 0)) or
                 (venda.fieldbyname('devolucao').asfloat > 0) or
                 (venda.fieldbyname('descontoreal').asfloat > 0) or
                 (venda.fieldbyname('acrescimo').asfloat > 0) then
                 total:='total'
                 else total:='';

          if pmecanico.Visible = True then  begin
            adicionais.Lines.Add(COMPSTR('Veiculo: ' +  venda.FieldByName('campo1').AsString,
                                 'Frota: ' + venda.FieldByName('campo5').AsString));
            adicionais.Lines.Add(COMPSTR('Chassi: ' + venda.FieldByName('campo4').AsString,
                                 'Ano/Marca: ' + venda.FieldByName('campo2').AsString));

            adicionais.Lines.Add('Km: ' + venda.FieldByName('campo6').AsString +
                               '  M.V.S./Cor: ' + venda.FieldByName('campo3').AsString +
                               '  Placa: ' + venda.FieldByName('campo8').AsString);

          if venda.FieldByName('campo9').AsInteger >0 then
             adicionais.Lines.Add('Garantia: ' + venda.FieldByName('campo9').AsString +
                                  ' Dias >> ' + datetostr(venda.FieldByName('data').AsDateTime +
                                  venda.FieldByName('campo9').AsInteger));

            adicionais.Lines.Add('Data da entrega: ' + venda.FieldByName('dtentrega').AsString);


         end  else if pinformatica.Visible = True then  begin
              adicionais.Lines.Add(COMPSTR('Maquina: ' + venda.FieldByName('campo1').AsString,
                                   'Serie: ' + venda.FieldByName('campo5').AsString));

              adicionais.Lines.Add(COMPSTR('Cont Ini: ' + venda.FieldByName('campo2').AsString,
                                  'Cont Fin: ' + venda.FieldByName('campo6').AsString));

              adicionais.Lines.Add(COMPSTR('Inicio: ' + venda.FieldByName('campo3').AsString,
                                   'Termino: ' + venda.FieldByName('campo5').AsString));

        end  else if peletronica.Visible = True then  begin
             adicionais.Lines.Add('Aparelho: ' + venda.FieldByName('campo1').AsString);
             adicionais.Lines.Add('Marca: ' + venda.FieldByName('campo2').AsString);
             adicionais.Lines.Add('Modelo: ' + venda.FieldByName('campo3').AsString);
             adicionais.Lines.Add('Serie: ' + venda.FieldByName('campo4').AsString);

        end  else if panimal.Visible = True then  begin
             adicionais.Lines.Add('Nome Animal: ' +
             venda.FieldByName('campo7').AsString + ' ' +
             venda.FieldByName('campo1').AsString);
             adicionais.Lines.Add('Raca: ' + venda.FieldByName('campo4').AsString);
             adicionais.Lines.Add('Peso: ' + venda.FieldByName('campo6').AsString);
             adicionais.Lines.Add('Altura: ' + venda.FieldByName('campo2').AsString);
             adicionais.Lines.Add('Especie: ' + venda.FieldByName('campo5').AsString);
             adicionais.Lines.Add('Cor: ' + venda.FieldByName('campo3').AsString);
        end;


       with fdm.Query2 do begin
            sql.clear;
            sql.add(' select vrdocumento, dtvencimento from tbreceber '+
                    ' where modulo ="2"  and ch = "C" '+
                    ' and linkvenda = '+ quotedstr(venda.fieldbyname('chavepedido').AsString)+
                    ' order by linkvenda, dtvencimento ');
            open;

            if fdm.Query2.RecordCount >0 then begin
               rodape.Lines.Add(' ');
               rodape.Lines.Add(' ');
               rodape.Lines.Add('Cartao: '+inttostr(fdm.Query2.RecordCount)+' X');
               rodape.Lines.Add(' ');
               rodape.Lines.Add(' ');
            end;

            sql.clear;
            sql.add(' select vrdocumento, dtvencimento from tbreceber '+
                    ' where modulo ="2"  and (ch is null or ch<>"C") '+
                    ' and linkvenda = '+ quotedstr(venda.fieldbyname('chavepedido').AsString)+
                    ' order by linkvenda, dtvencimento ');
            open;


            if fdm.Query2['dtvencimento']<> null then begin
               rodape.Lines.Add(' ');
               rodape.Lines.Add(' ');
               rodape.Lines.Add(compstr('Vencimento','Valor'));
               rodape.Lines.Add(' ');
            end;

            while not eof do begin
                  if fdm.Query2['dtvencimento']<> null then
                  rodape.Lines.Add(compstr(fieldbyname('dtvencimento').AsString,
                                           format('%n',[fieldbyname('vrdocumento').asfloat])));
                  next;
            end;

            close;
       end;

       try
          if (venda['spedido'] <> null) and (venda.fieldbyname('spedido').AsInteger >0) then
             sped := '     SEU PEDIDO: ' + formatfloat('000000',venda.fieldbyname('spedido').AsFloat);
       except end;

       {
          if (modulo = 'AVALIACAO') or (modulo = 'CONSIGNADA') or
            (troca) or (devolucao) then  begin
            adicionais.Lines.Add('');
            adicionais.Lines.Add('');
            adicionais.Lines.Add('EU, ' + copy(venda.FieldByName('nome').AsString, 1,36));
            adicionais.Lines.Add('ESTOU DE ACORDO COM OS ITENS ACIMAS');
            adicionais.Lines.Add('RELACIONADOS POR ESTAR CIENTE FIRMO');
            adicionais.Lines.Add('O PRESENTE RECIBO.');
            adicionais.Lines.Add('');
            adicionais.Lines.Add('ASS:___________________________________');
            adicionais.Lines.Add('');
            adicionais.Lines.Add('');
          end;}
                  //showmessage(rodape.text);
            impcupom('CUPOM',formatfloat('000000',venda.fieldbyname('numero').AsFloat)+ sped,
                    adicionais.Text,
                    rodape.text,
                    compstr('UN              QTD ','VR. UNIT            TOTAL'),
                    codigoimpressao,'descricao','qtd','vrunit','total',
                    'totalpeca',
                    'totalservico',
                    'devolucao',
                    'descontoreal',
                    'acrescimo',
                    total,
                    'credito', //a partir do 6º
                    'dinheiro',
                    'cheque',
                    'chequepre',
                    'fiado',
                    'Cartao',
                    'Cartaod',
                    'recebido',
                    'troco',
                    'vrcouvert',
                    'obs',
                    venda, vendaitem,tbdevolucao,vendaservico,tbpp,tblocacao, true,self);

            adicionais.Destroy;
            rodape.Destroy;
         end;

end;

procedure Tfpedido.receberExecute(Sender: TObject);
begin
  btnreceberclick(self);
end;

procedure Tfpedido.btnreceberClick(Sender: TObject);


        procedure gvbalcao;
        var
        nbalcao:string;
        i:integer;
        begin
              with fdm.query1 do  begin
                Close;

                 sql.clear;
                 sql.add(  'select max(numero)as numero from tbpedido');
                Open;
                nbalcao := IntToStr(FieldByName('numero').AsInteger + 1);

                Close;
                sql.clear;
                sql.add( 'insert into tbpedido (numero) values (' + nbalcao +')');
                execsql;

                Close;
                sql.clear;
                sql.add(  'select chave from tbpedido where numero =' + quotedstr(nbalcao));
                Open;

                venda.edit;
                venda['chavepedido'] := FieldByName('chave').AsInteger;
                Close;
              end;

              venda['numero'] := nbalcao;
              venda['modo'] := 'V';
              venda['serial'] := GetIP;

              altera(venda, nil,'venda');
              vendaitem.First;

              for i := 1 to vendaitem.RecordCount do  begin
                { Se ECF Concumitante - Vende Item}
                if (ImpFiscal) and (Concumitante) then
                  VendeItemECFConcumitante(venda, vendaitem);
                {Fim ECF - Ao fechar o cupom o objeto será destruido}
                vendaitem.Next;
              end;


      modogrupo := 'N';
      modo := 'N';
      Close;
          end;


var
  sqlD: tzquery;
  orc, st, modo, num, chave,nomes,loc: string;
  vaz:boolean;
begin
            
        loc := venda.fieldbyname('chave').AsString;
        fdm.Query1.close;

        if peca then btncancelarclick(self);
        btncancelarsclick(self);
        btncancelarppClick(self);
        btncancelarDClick(self);
        btncancelargrupoclick(self);

        abortaacao(nil,venda,'chave','','','','',0);

        if venda['data'] = null then msg('#Preencha a data!',0);
        if venda['codigo'] = null then msg('#Preencha a código do cliente!',0);

        if (peca) and (vendaitem['bonificacao'] = null) then
           if (((vendaitem.RecordCount <= 0) and (venda.FieldByName('total').AsFloat <= 0)) and
                (devolucao = False) and (troca = False)) then
                 msg('#Verifique o valor!', 0);


        if (troca) and (trocanegativa = False) and (venda.fieldbyname('total').AsFloat<0) then
          msg('#O programa está configurado para não fazer troca com valor negativo!',0);


        if  (troca) and ((tbdevolucao.RecordCount <=0) and (vendaitem.RecordCount <=0)) then
           msg('#Não há itens para esta troca!', 0);


        if  (devolucao) and (tbdevolucao.RecordCount <=0) then
           msg('#Não há itens para devolver!',0);

        

  // orcamento ou consignada BALCAO
  if (balcao = 'B') and
    ((modulo = 'CONSIGNADA') or (modulo = 'AVALIACAO')) then
  begin


    if venda['vendedor'] = null then   msg('#Escolha o vendedor!', 0);


    if msg('Deseja gerar venda? ',2) then begin

      GALTERA('2', venda.FieldByName('numero').AsString, 'i');
      gvbalcao;
    end;


    //PEDIDO
  end
  else if (modulo = 'ORCAMENTO') or (modulo = 'CONSIGNADA') or (modulo = 'AVALIACAO') then
  begin
    if modulo = 'ORCAMENTO' then
      inadiplente(venda.FieldByName('codigo').AsString, 'PEDIDO');

    if msg('Deseja gerar venda? ',2) then begin
      acesso1('Vendas');
      venda.Locate('chave',loc,[]);

      if modulo = 'ORCAMENTO' then begin
         codloc := venda.fieldbyname('numero').AsString;

         if responsavel <> '47.030.085/0001-14' then begin
             selecione('select chave from vendaitem where qtd <> gerar and link = '+
                       quotedstr(vendaitem.fieldbyname('link').AsString) + ' limit 0,1');
             if sqlpub.RecordCount >0 then  novoorcExecute(self);
             sqlpub := nil;
         end else gvbalcao;


        // se form um orcamento baixar o estoque
        vendaitem.First;


        // verifica se há no estoque a qtd
        while not vendaitem.EOF do
        begin
          estoqueminimoexecute(self);
          vendaitem.Next;
        end;


        vendaitem.First;
        // baixa estoque
        while not vendaitem.EOF do
        begin
          alimentaestoque(vendaitem.FieldByName('codigo').AsString,
                          vendaitem.FieldByName('qtd').AsFloat * (-1),
                          venda.FieldByName('tipoestoque').AsString,
                          vendaitem.FieldByName('chavegrade').AsInteger);
          vendaitem.Next;
        end;
      end;



      sqlD := tzquery.Create(self);
      with sqlD do
      begin
        Connection := fdm.Conector;


        sql.clear;
        sql.add( 'select max(numero)as numero from tbpedido');
        Open;
        num := IntToStr(FieldByName('numero').AsInteger + 1);

        // grava o numero para não ser usado por outro
        Close;
        sql.clear;
        sql.add( 'insert into tbpedido (numero) values (' + num +')');
        execsql;

        close;
        sql.clear;
        sql.add( 'select  chave from tbpedido where numero = '+quotedstr(num));
        Open;
        chave := FieldByName('chave').AsString;

        btneditargrupoClick(self);
        venda.edit;
        modo := venda['modo'];

        venda['data'] := datetostr(now);
        venda['modo'] := 'P';
        venda['orcamento'] := venda.FieldByName('numero').AsInteger;
        venda['numero'] := num;
        venda['chavepedido'] := chave;
        venda['dtentrega'] :=null;
        venda['tipodesconto'] :='N';

        // altera o link para pedido
        Close;
        sql.clear;
        sql.add( 'update vendaitem set modo = "P"  where ' +
          ' link = ' + quotedstr(venda.FieldByName('chave').AsString) +
          ' and modo = ' + quotedstr(modo));
        //showmessage(commandtext) ;
        execsql;

        Close;
        sql.clear;
        sql.add( 'update vendaservico set modo = "P"  where ' +
                 ' link = ' + quotedstr(venda.FieldByName('chave').AsString) +
                 ' and modo = ' + quotedstr(modo));
        execsql;

        Close;
        sql.clear;
        sql.add( 'update vendapp set modo = "P"  where ' +
                 ' link = ' + quotedstr(venda.FieldByName('chave').AsString) +
                 ' and modo = ' + quotedstr(modo));
        execsql;


        sql.clear;
        sql.add( 'update vendaitem set gerar = qtd where ' +
                 ' gerar <>  qtd and modo = "O" ');
        execsql;


        Destroy;

        fpedido.cotacao := False;
        btngravargrupoClick(self);

      end;

      Close;

      application.CreateForm(tfpedido, fpedido);
      fpedido.modulo := 'PEDIDO';
      fpedido.showmodal;
    end;
  end;

  if (modulo = 'PEDIDO') or (troca) or (devolucao) then
     fecharvendaexecute(self);

     vendaitem.close;
     vendaitem.open;
     formatarexecute(self);
end;

procedure Tfpedido.comboCloseUp(Sender: TObject);
var
 imp, st, link, loc, scriptbalcao,tx, norcamento: string;

begin
        tx := combo.Text;
        combo.clear;
        combosexecute(self);


        if tx = 'COM OUTRA FORMA DE VENDA' then biciclobikeexecute(self);

        if tx = 'ITENS LOCADOS' then rlocacao;

        if tx = 'GERA CONTRATO' then begin
           if venda['codigo']=null then msg('#Não há cliente selecionado.',0);
           selecione('select chave from tbcliente where codigo = '+quotedstr(venda.fieldbyname('codigo').AsString));
           link := sqlpub.fieldbyname('chave').AsString;
           sqlpub := nil;

           editor(strtoint(link), 4,
                  tblocacao.fieldbyname('qtd').AsFloat ,
                  tblocacao.fieldbyname('vrunit').AsFloat,
                  tblocacao.fieldbyname('total').AsFloat,
                  tblocacao.fieldbyname('descricao').AsString,
                  venda.fieldbyname('formapgto').AsString,
                  tblocacao.fieldbyname('datadevolucao').AsString);
        end;

        if tx = 'IMPORTAR VENDA' then importarvendaExecute(self);

        if tx = 'ALTERAR NUMERAÇÃO' then begin
           norcamento := msgi('Digite o número do último orçamento, ou tecle ESC para desistir:',2);
           if norcamento = '' then abort;

           selecione('update tbconfig set norcamento = ' + quotedstr(norcamento));
           msg('Alterado.',0);
        end;

        if tx = 'CONSULTA' then
           relvenda('tbpedido','','CONSULTA',14,false);

        if (tx = 'VENDAS EM ABERTO') or
           (tx = 'VENDAS ENCERRADAS') or
           (tx = 'VENDAS AVULSAS') or
           (tx = 'TROCAS EM ABERTO') or
           (tx = 'TROCAS ENCERRADAS') or
           (tx = 'TROCAS AVULSAS') or
           (tx = 'DEVOLUÇÕES EM ABERTO') or
           (tx = 'DEVOLUÇÕES ENCERRADAS') or
           (tx = 'LISTAGEM CONSIGNADA') or
           (tx = 'LISTAGEM PROVA') or
           (tx = 'CANCELADAS') or
           (tx = 'LISTAGEM ORÇAMENTO') then begin

           if peca then
              btncancelarclick(self);

            btncancelarsclick(self);
            btncancelarppclick(self);
            btncancelarDclick(self);

           if btngravargrupo.Enabled = True then MSG('#Resolva este, antes de abrir outro!',0);

           codloc :='';

          if tx = 'VENDAS EM ABERTO' then
             relvenda('venda',' and modo = "P" ',tx,11,false)

          else if tx = 'CANCELADAS' then
                   relatorio('','data','',
                       ' select chave,linkvenda,Status, numero , data , DtFechamento, codigo , nome,codigovendedor,tipoestoque from tbpedido',
                         '',
                         ' and status = "C" '+ sqlempresa(1,1,''),
                         '',
                         '','','',' ','','','','','','', '','','','','','','',
                         '','tbpedido',
                         'Relatório de vendas canceladas','tbpedido',0,19)


          else if tx = 'TROCAS EM ABERTO' then
             relvenda('venda',' and modo = "T" ',tx,11,false)

          else if tx = 'DEVOLUÇÕES EM ABERTO' then
             relvenda('venda',' and modo = "D" ',tx,14,false)

          else if tx = 'LISTAGEM CONSIGNADA' then
               relvenda('venda',' and modo = "C" ',tx,15,false)

          else if tx = 'LISTAGEM PROVA' then
               relvenda('venda',' and modo = "A" ',tx,15,false)

          else if tx = 'LISTAGEM ORÇAMENTO' then
               relvenda('venda',' and modo = "O" ',tx,15,false)

          else if tx = 'VENDAS ENCERRADAS' then
               relvenda('tbpedido','  and avulso = "N" and modo = "P"  ',tx,11,false)

          else if tx = 'VENDAS AVULSAS' then
               relvenda('tbpedido','  and avulso = "S"  and modo = "P"  ',tx,11,false)

          else if tx = 'TROCAS ENCERRADAS' then
               relvenda('tbpedido','  and avulso = "N"  and modo = "T"  ',tx,11,false)

          else if tx = 'TROCAS AVULSAS' then
               relvenda('tbpedido','  and avulso = "S"  and modo = "T"  ',tx,11,false)

          else if tx = 'DEVOLUÇÕES ENCERRADAS' then
               relvenda('tbpedido','  and modo = "D"  ',tx,14,false);


          if codloc <> '' then begin
             btnatualizartudoClick(self);

           if (tx = 'DEVOLUÇÕES ENCERRADAS') then  begin
              selecione('update tbcliente set credito = '+
                        ' if (credito is null , 0'+
                        ', credito -'+ realdblstr(venda.fieldbyname('credito').asfloat*(-1))+
                        ' ) where codigo = '+ quotedstr(venda.fieldbyname('codigo').AsString));
              venda.edit;
              venda['credito'] := null;
              venda['dinheiro'] := null;
              altera(venda, nil,  'venda');
           end;


             totalizarexecute(self);
          end;

       end;


       if tx = 'ESTOQUE DAS FILIAIS' then
             if vendaitem['codigo']<> null then
                estoquefilial(vendaitem.fieldbyname('codigo').AsString)
             else
                estoquefilial('');


          if tx = 'GARANTIA' then begin
             combo.clear;
                      cadp ('tbgarantia', '', '',       //tabela que vai usar ou cod sql na 2ª + titulo
              'garantia','',           //campos que nao devem duplicar
              '','','',                 //combo1(campo,tabela,nomecampotabela)
              '','','',                 //combo2(campo,tabela,nomecampotabela)
              '','','',
              '',                     //campo auto incremento
              '',                       //campo auto incremento
              '',                       //campo que nao ser nulo
              '',
              3,0);                       //onde vai comecar a criar os campos + link
             refazcomboexecute(self);
             combosexecute(self);
          end;


  if tx = 'CONTA RECEBER' then
    cadg('','nome', 9);

  if (tx = 'ORÇAMENTO') or
    (tx = 'VENDA CONSIGNADA') or
    (tx = 'PROVA') or
    (tx = 'TROCA') or
    (tx = 'EMISSÃO DE PEDIDO') or
    (tx = 'DEVOLUÇÃO') then
  begin
  if peca then
    btncancelarclick(self);
    btncancelarsclick(self);
    btncancelargrupoclick(self);

    if tx = 'ORÇAMENTO' then
    begin
      acesso1('Vendas');
      modulo := 'ORCAMENTO';
    end
    else if tx = 'VENDA CONSIGNADA' then
    begin
      acesso1('Vendas');
      modulo := 'CONSIGNADA';
    end
    else if tx = 'PROVA' then
    begin
      acesso1('Vendas');
      modulo := 'TEXT';
    end
    else if tx = 'TROCA' then
    begin
      acesso1('Vendas');
      modulo := 'TROCA';
    end
    else if tx = 'DEVOLUÇÃO' then
    begin
      acesso1('Vendas');
      modulo := 'DEVOLUCAO';
    end
    else if tx = 'EMISSÃO DE PEDIDO' then
    begin
      acesso1('Vendas');
      modulo := 'PEDIDO';
    end;

    Close;

    application.CreateForm(tfpedido, fpedido);
    fpedido.modulo := modulo;
    fpedido.balcao := balcao;
    fpedido.showmodal;
  end;



  if tx = 'MARGEM DESTA VENDA' then margemExecute(self);


  if (tx = 'SITUAÇÃO CLIENTE') or
    (tx = 'SERVIÇOS PRESTADOS') or
    (tx = 'CONSUMO CLIENTE') then begin
    listagem('nome',venda.fieldbyname('nome').asstring,'',4,0);

    if fdm.sg.Active  = false then abort;

    if tx = 'SITUAÇÃO CLIENTE' then
       saldoclienteExecute(self)

    else if tx = 'SERVIÇOS PRESTADOS' then
         servicosprestadosexecute(self)

    else if tx = 'CONSUMO CLIENTE' then begin
          imp :='1';
          if inputquery('Consumo', 'Digite uma opção:' + #13 + #13 +
                            '1 = Última compra' + #13 +
                            '2 = Produtos consumidos (agrupa qtd)'+#13+
                            '3 = Produtos consumidos (por data)'+#13+
                            'Esc = Cancela '
                           , imp) then  else abort;

          fdm.comsumo(fdm.sg.fieldbyname('codigo').AsString,'tbpedido','tbpedidoitem',imp,'');

    end;

    fdm.sg.Close;

  end;


  if tx = 'LOGAR' then
  begin
    if btncancelargrupo.Enabled = True then
    begin
      Application.MessageBox('Resolva antes, esta operação. ', 'Erro', 0 + MB_ICONerror);
//      refazcomboExecute(self);
      abort;
    end;
    fmenu.senhaexecute(self);
//    refazcomboExecute(self);
  end;


  if tx = 'GERAR NOTA FISCAL' then
  begin
    combo.Clear;

    if btngravar.Enabled = True then
       msg('#Escolha gravar ou cancelar, antes de gerar nota.',0);

    cborderm.ItemIndex :=0;
    cbordermClick(self);
    geranota(venda,vendaitem,vendaservico,nil,'venda');

  end;


  if tx = 'CALCULADORA' then
  begin
    combo.Clear;
    winexec('calc.exe', sw_show);
//    refazcomboexecute(self);
  end;

  if tx = 'ESTOQUE' then
  begin
    combo.Clear;
    fmenu.estoqueExecute(self);
//    refazcomboexecute(self);
  end;



  if tx = 'CLIENTE' then
  begin
    combo.Clear;
        cadg(cadcli,'nome', 4);
//    refazcomboexecute(self);
  end;



  if tx = 'PRODUTO' then
  begin
    combo.Clear;
    fmenu.produtoExecute(self);
//    refazcomboexecute(self);
  end;





{  if tx = 'ABRIR O CAIXA' then
  begin
    combo.Clear;
    abrecx;
    refazcomboexecute(self);
  end;

  if tx = 'FECHAR O CAIXA' then
  begin
    combo.Clear;
    fmenu.fecharcaixaexecute(self);
//    refazcomboexecute(self);
  end;  }
end;


procedure Tfpedido.comboEnter(Sender: TObject);
begin
  keypreview := False;
  combo.Color := clinfobk;
end;

procedure Tfpedido.comboExit(Sender: TObject);
begin
  keypreview := True;
  combo.Color := clwhite;
end;

procedure Tfpedido.comboKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if key = 13 then
    comboCloseUp(self);
end;

procedure Tfpedido.refazcomboExecute(Sender: TObject);
begin
  combo.Clear;
  fdm.tbconfig.Open;
  if responsavel ='68.174.176/0001-01' then //biciclobike
     combo.Items.Add('COM OUTRA FORMA DE VENDA');

   if locacao then combo.Items.Add('GERA CONTRATO');


        if modulo = 'ORCAMENTO' then begin
           combo.Items.Add('IMPORTAR VENDA');
           combo.Items.Add('ALTERAR NUMERAÇÃO');
        end;


  combo.Items.Add('CONSULTA');
  combo.Items.Add('LOGAR');
  combo.Items.Add('CONSUMO CLIENTE');

  if locacao then combo.Items.Add('ITENS LOCADOS');

  

  if devolucao = False then combo.Items.Add('MARGEM DESTA VENDA');

  combo.Items.Add('SITUAÇÃO CLIENTE');

  if (servico = True) and
    ((fdm.tbconfig['tipoempresa'] = 'A') or
    (fdm.tbconfig['tipoempresa'] = 'E') or
    (fdm.tbconfig['tipoempresa'] = 'I') or
    (fdm.tbconfig['tipoempresa'] = 'P')) then
    combo.Items.Add('SERVIÇOS PRESTADOS');

  if modulo = 'ORCAMENTO' then begin
    combo.Items.Add('LISTAGEM ORÇAMENTO');
    //combo.Items.Add('FATURAMENTO');
  end;

//  if modulo = 'CONSIGNADA' then  combo.Items.Add('LISTAGEM CONSIGNADA');

  if modulo = 'AVALIACAO' then combo.Items.Add('LISTAGEM PROVA');


  if devolucao then
  begin
    combo.Items.Add('DEVOLUÇÕES EM ABERTO');
    combo.Items.Add('DEVOLUÇÕES ENCERRADAS');
  end;

  if troca then
  begin
    combo.Items.Add('TROCAS EM ABERTO');
    combo.Items.Add('TROCAS ENCERRADAS');
    combo.Items.Add('TROCAS AVULSAS');
  end;


  if modulo = 'PEDIDO' then
  begin
    combo.Items.Add('GERAR NOTA FISCAL');
    combo.Items.Add('ORÇAMENTO');
    //combo.Items.Add('VENDA CONSIGNADA');
    combo.Items.Add('PROVA');
    combo.Items.Add('DEVOLUÇÃO');
    combo.Items.Add('TROCA');
    combo.Items.Add('VENDAS EM ABERTO');
    combo.Items.Add('VENDAS ENCERRADAS');
    combo.Items.Add('VENDAS AVULSAS');
    //combo.Items.Add('ABRIR O CAIXA');
    //combo.Items.Add('FECHAR O CAIXA');
  end;

  combo.Items.Add('CANCELADAS');

  combo.Items.Add('PRODUTO');
  combo.Items.Add('CLIENTE');
  combo.Items.Add('ESTOQUE');
  combo.Items.Add('ESTOQUE DAS FILIAIS');
  combo.Items.Add('CONTA RECEBER');
  combo.Items.Add('CALCULADORA');
  combo.Items.Add('GARANTIA');

  fdm.tbconfig.Close;
end;

procedure Tfpedido.DBGrid1Exit(Sender: TObject);
begin
  keypreview := True;
end;

procedure Tfpedido.ecomissaoEnter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;

procedure Tfpedido.ecomissaoExit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clwhite;
end;

procedure Tfpedido.ativarlocalExecute(Sender: TObject);
begin
  desativar(fpedido);

  if pagina = '1' then 
  begin
    dbgrid2.Enabled := False;
    edescricaoS.Enabled := True;
    edescricaog.Enabled := True;
    emecanico.Enabled := True;
    eqtdS.Enabled := True;
    evrunitS.Enabled := True;
    etotalS.Enabled := True;
    edtentregas.Enabled := True;
    ehoraentregas.Enabled := True;

  end;

  if pagina = '2' then
  begin
    dbgrid3.Enabled := False;
    edescricaopp.Enabled := True;
    eqtdpp.Enabled := True;
    evrunitpp.Enabled := True;
    etotalpp.Enabled := True;
  end;

  if pagina = '0' then 
  begin
    dbgrid1.Enabled := False;
    edescricao.Enabled := True;
    eqtd.Enabled := True;
    evrunit.Enabled := True;
    etotal.Enabled := True;
    eicm.Enabled := True;
    etotalparcial.Enabled := True;
    edescontopercent.Enabled := True;
    edescontoreal.Enabled := True;
    etamanho.Enabled := True;
    ecor.Enabled := True;
    etm1.Enabled := True;
    etm2.Enabled := True;
    etm3.Enabled := True;
    eespecificacao.Enabled := True;
    edtentregue.Enabled := True;
    elocalizacao.Enabled := True;


  end;

  if pagina = '3' then
  begin
    edescricaod.Enabled := True;
    eqtdd.Enabled := True;
    evrunitd.Enabled := True;
    etotald.Enabled := True;
    etamanhod.Enabled := True;
    ecord.Enabled := True;
    etm1d.Enabled := True;
    etm2d.Enabled := True;
    etm3d.Enabled := True;
  end;


  if pagina = '4' then
  begin
    DBGrid5.Enabled := False;
    edescricaol.Enabled := True;
    eqtdl.Enabled := True;
    evrunitl.Enabled := True;
    etotall.Enabled := True;
    edevolucaol.Enabled := True;    
  end;
end;


procedure Tfpedido.tcinsExecute(Sender: TObject);
begin
  if (venda['chave'] = null) and (edata.Enabled = False) then
    btnnovogrupoclick(self)
  else if edata.Enabled = True then
    btngravargrupoclick(self)

  else if pagina = '0' then
  begin
    if (venda['chave'] <> null) and (edata.Enabled = False) and
      (evrunit.Enabled = False) then
      btnnovoclick(self)
    else if evrunit.Enabled = True then
      btngravarclick(self);
  end

  else if pagina = '1' then
  begin
    if (venda['chave'] <> null) and (edata.Enabled = False) and
      (edescricaoS.Enabled = False) then
      btnnovoSclick(self)
    else if edescricaoS.Enabled = True then
      btngravarSclick(self);
  end

  else if pagina = '2' then
  begin
    if (venda['chave'] <> null) and (edata.Enabled = False) and
      (edescricaopp.Enabled = False) then
      btnnovoppclick(self)
    else if edescricaopp.Enabled = True then
      btngravarppclick(self);
  end

  else if pagina = '3' then
  begin
    if (venda['chave'] <> null) and (edata.Enabled = False) and
      (edescricaod.Enabled = False) then
      btnnovodclick(self)
    else if edescricaod.Enabled = True then
      btngravardclick(self);
  end

  else if pagina = '4' then
  begin
    if (venda['chave'] <> null) and (edata.Enabled = False) and
      (edescricaol.Enabled = False) then
      btnnovolclick(self)
    else if edescricaol.Enabled = True then
      btngravarlclick(self);
  end;

end;

procedure Tfpedido.TabservicoShow(Sender: TObject);
begin
   if peca then
      if btncancelar.Enabled then
         btncancelarclick(self);

  if pecapendente = True then
    if btncancelarpp.Enabled then
      btncancelarppClick(self);

  if (devolucao = True) or (troca = True) then
    if btncancelarD.Enabled then
      btncancelarDClick(self);

  if locacao then
    if btncancelarl.Enabled then
       btncancelarlClick(self);
             
  pagina := '1';
  tbitem := vendaservico;          
end;

procedure Tfpedido.TabitemShow(Sender: TObject);
begin
  if servico = True then
    if btncancelarS.Enabled then
      btncancelarSClick(self);

  if pecapendente = True then
    if btncancelarpp.Enabled then
      btncancelarppClick(self);

  if (devolucao = True) or (troca = True) then
    if btncancelarD.Enabled then
      btncancelarDClick(self);

  if locacao then
    if btncancelarl.Enabled then
       btncancelarlClick(self);

  pagina := '0';
  tbitem := vendaitem;
end;

procedure Tfpedido.emecanicoClick(Sender: TObject);
begin
        if comissaoservico then  begin
           selecione('select comissaoservico as comissao from tbfuncionario where nome = ' + quotedstr(emecanico.Text));

           vendaservico.edit;
           vendaservico['calcular'] := 'S';
           
           if sqlpub.FieldByName('comissao').AsFloat>0 then
              vendaservico['comissao'] := sqlpub.FieldByName('comissao').AsFloat;

              vendaservico['pago'] := 'N';

           sqlpub := nil;
        end;
end;

procedure Tfpedido.preencherservicoExecute(Sender: TObject);
begin
        vendaservico.Edit;
        vendaservico['codigo'] := fdm.sg['codigo'];
        vendaservico['descricao'] := fdm.sg['descricao'];
        vendaservico['vrunit'] := fdm.sg['valor'];
        vendaservico['nome'] := venda['nome'];
        vendaservico['numero'] := venda['numero'];
        vendaservico['emp'] := emp;        

        if fdm.sg.fieldbyname('comissao').AsFloat >0 then
           vendaservico['comissao'] := fdm.sg.fieldbyname('comissao').AsFloat ;
end;

procedure Tfpedido.novoSExecute(Sender: TObject);
begin
  if servico = True then
  begin
    if venda.FieldByName('chave').AsString = '' then
    begin
      Application.MessageBox(PChar('Preencha o cabeçalho.'), 'Erro', 0 + MB_ICONerror);
      abort;
    end;

    gravarS := 'novo';

    ativarlocalexecute(self);
    if fpedido.Active = True then
      vendaservico.Insert;
    vendaservico['qtd'] := '1';
    vendaservico['data'] := datetostr(now);
    vendaservico['hora'] := timetostr(now);
    vendaservico['dtentrega'] := datetostr(now);
    vendaservico['horaentrega'] := timetostr(now);
    dhbotaoexecute(self);
  end;
end;

procedure Tfpedido.alterarSExecute(Sender: TObject);
var
  loc: string;
begin
  if servico = True then
  begin
    if (edescricaoS.Text = '') or (etotalS.Text = '') or (emecanico.Text = '') then
    begin
      Application.MessageBox('Os campos: Descrição, Total e Executor/Técnico não podem ser nulo!',
        'Erro', 0 + MB_ICONerror);
      abort;
    end;

    loc := vendaservico.FieldByName('chave').AsString;

    totalsexecute(self);
    altera(vendaservico, nil,'vendaservico');

    vendaservico.cancel;
    vendaservico.Refresh;
    totalizarexecute(self);
    vendaservico.Locate('chave', loc, []);
  end;
end;

procedure Tfpedido.inserirSExecute(Sender: TObject);
var
  marcador: string;
begin
  if servico = True then
  begin
    marcador := vendaservico.FieldByName('hora').AsString;;


    if (edescricaoS.Text = '') or (vendaservico.FieldByName('total').AsFloat <= 0) or
      (emecanico.Text = '') then
      msg('#Os campos: Descrição, Executor/Técnico e Total não podem ser nulo.!',0);

    if responsavel = 'MSIX' then
      with fdm.query2 do 
      begin
        Close;
                sql.Clear;
                sql.add( 'select valor from tbcadastroservico where codigo =' +
                           quotedstr(vendaservico.FieldByName('codigo').AsString));
        Open;
        if vendaservico.FieldByName('vrunit').AsFloat < FieldByName('VALOR').AsFloat then
        begin
          Application.MessageBox('O valor de serviço está menor que o do cadastro!',
            'Erro', 0 + MB_ICONerror);
          Close;
          abort;
        end;
        Close;
      end;


    totalsexecute(self);
    Grava(vendaservico, nil,'vendaservico');

    vendaservico.Cancel;
    vendaservico.Refresh;

    totalizarexecute(self);
    vendaservico.Locate('hora', marcador, []);
  end;
end;

procedure Tfpedido.btncancelarSClick(Sender: TObject);
begin
  vendaservico.cancel;
  desativar(fpedido);

  hbotaoexecute(self);
  modoS := 'N';
  modogrupo := 'N';
end;

procedure Tfpedido.btngravarSClick(Sender: TObject);
begin
  if edescricaoS.Enabled = True then
    edescricaoS.SetFocus;

  if gravarS = 'novo' then
  begin
    inserirSExecute(self);
  end
  else if gravarS = 'alterar' then
  begin
    alterarSExecute(self);
  end;

  hbotaoexecute(self);
  desativar(fpedido);

  modoS := 'N';
  modogrupo := 'N';
end;

procedure Tfpedido.btnnovoSClick(Sender: TObject);
begin

        permissaovenda;
  abortaacao(nil,venda,'chave','','','','',0);

  permissao(PN, 'PN', modulo);
  novoSexecute(self);
  modoS := 'M';
  if edescricaoS.Enabled = True then
    edescricaoS.SetFocus;
end;

procedure Tfpedido.btneditarSClick(Sender: TObject);
begin

        permissaovenda;
  permissao(PA, 'PA', modulo);
  abortaacao(nil,vendaservico,'chave','','','','',0);
  gravarS := 'alterar';
  ativarlocalexecute(self);
  if edescricaoS.Enabled = True then
    edescricaoS.SetFocus;

  dhbotaoexecute(self);
end;

procedure Tfpedido.btnapagarSClick(Sender: TObject);
begin

        permissaovenda;
  permissao(PD, 'PD', modulo);

  if vendaservico['chave'] = null then
  begin
    Application.MessageBox('Você não tem registro selecionado para deletar!',
      'Erro', 0 + MB_ICONerror);
    abort;
  end;

        if msg('',1) then  begin
    with fdm.query1 do
    begin
      Close;
             sql.clear;
             sql.add(  'delete from vendaservico where chave = ' +
        quotedstr(vendaservico.FieldByName('chave').AsString));
      execsql;
    end;



    vendaservico.cancel;
    vendaservico.refresh;
    totalizarexecute(self);
  end;
end;

procedure Tfpedido.totalSExecute(Sender: TObject);
begin
  if servico = True then
  begin
    vendaservico.Edit;
    if (vendaservico.FieldByName('vrunit').AsFloat > 0) and
      (vendaservico.FieldByName('qtd').AsFloat > 0) then

      vendaservico.FieldByName('total').AsFloat :=
        vendaservico.FieldByName('vrunit').AsFloat *
        vendaservico.FieldByName('qtd').AsFloat
    else
      vendaservico.FieldByName('total').Clear;


    if (vendaservico.FieldByName('comissao').AsFloat > 0) and
      (vendaservico.FieldByName('total').AsFloat > 0) then

      vendaservico.FieldByName('vrcomissao').AsFloat :=
        vendaservico.FieldByName('total').AsFloat *
        vendaservico.FieldByName('comissao').AsFloat / 100
    else
      vendaservico.FieldByName('vrcomissao').Clear;
  end;
end;

procedure Tfpedido.eqtdSExit(Sender: TObject);
begin
  if eqtds.Modified = True then
    totalSexecute(self);
  eqtdS.color := clwhite;
end;

procedure Tfpedido.evrunitSExit(Sender: TObject);
begin
  evrunitS.Color := clwhite;
  if evrunitS.Modified = True then
    totalSexecute(self);
end;

procedure Tfpedido.emecanicoEnter(Sender: TObject);
begin
  emecanico.color := clinfobk;
  keypreview := False;
end;

procedure Tfpedido.emecanicoExit(Sender: TObject);
begin
  emecanico.color := clwhite;
  keypreview := True;
end;

procedure Tfpedido.edescricaoSKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  keypreview := True;


  if (key = vk_delete) then
    btnapagarSclick(self);


  if (key = 27) and (edescricaoS.Text = '') then
    btncancelarSclick(self);


  if (key = 13) and (edescricaoS.Text <> '') then
  begin
    with fdm.sg do begin
         Close;
         sql.clear;
         sql.add('select * from tbcadastroservico where descricao = ' +
                   quotedstr(edescricaoS.Text) + ' or codigo = ' + quotedstr(edescricaoS.Text));
      Open;
    end;

    if fdm.sg['codigo'] <> null then
       preencherservicoexecute(self)

      else begin
         listagem('descricao',edescricaoS.Text,'',18,0);

         if fdm.sg.Active then
            preencherservicoexecute(self);

      end;
  end;
end;

procedure Tfpedido.emecanicoKeyPress(Sender: TObject; var Key: char);
begin
  abort;
end;

procedure Tfpedido.emecanicoKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
//  if key = 13 then
  //  if edescricaos.Text <> '' then
    //  btngravarSclick(self);

  if key = 27 then
    etotalS.SetFocus;
end;

procedure Tfpedido.evendedorKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if (key = 13) and (devolucao = False) then
    CFPgto.SetFocus;

  if (key = 27) and (devolucao = False) then
    enome.SetFocus;
end;

procedure Tfpedido.combosExecute(Sender: TObject);
begin
        selecione('select nome,classe from tbfuncionario where  (flag <> "D" or flag is null) order by nome');

        evendedor.Items.Clear;

        if servico then
          emecanico.Items.Clear;

        while not sqlpub.Eof  do begin

           if (sqlpub['classe'] = 'V') or (sqlpub['classe'] = 'O') then
             evendedor.Items.Add(sqlpub.FieldByName('nome').AsString);

           if (sqlpub['classe'] = 'T') or (sqlpub['classe'] = 'O') then
              if servico then
                 emecanico.Items.Add(sqlpub.FieldByName('nome').AsString);

           sqlpub.Next;
       end;

       selecione( 'select garantia from tbgarantia order by garantia');

       egarantia.Items.Clear;

       while not sqlpub.Eof  do begin
         if sqlpub['garantia'] <> null then
             egarantia.Items.Add(sqlpub.FieldByName('garantia').AsString);
          sqlpub.Next;
       end;


        selecione( 'select descricao from tbcondfatura order by descricao');

       CFPgto.Items.Clear;

       while not sqlpub.eof do
       begin
         if sqlpub['descricao'] <> null then
           CFPgto.Items.Add(sqlpub.FieldByName('descricao').AsString);

         sqlpub.Next;
       end;

        selecione('select nome from tbfautorizado order by nome');

       ecomprador.Items.Clear;

       while not sqlpub.eof do begin
         ecomprador.Items.Add(sqlpub.FieldByName('nome').AsString);
         sqlpub.Next;
       end;
       sqlpub := nil;

end;


procedure Tfpedido.evendedorEnter(Sender: TObject);
begin
  keypreview := False;
  evendedor.Color := clinfobk;
end;

procedure Tfpedido.evendedorExit(Sender: TObject);
begin
  keypreview := True;
  evendedor.Color := clwhite;
end;

procedure Tfpedido.Label59Click(Sender: TObject);
begin
  localiza('vendedor');
end;

procedure Tfpedido.btnobsservicoClick(Sender: TObject);
begin

        btncancelarSClick(self);
        if peca then
           btncancelarClick(self);
        btneditargrupoClick(self);
        venda.edit;
        periodo2('obsos','','','','','',372,694,0);
        btngravargrupoClick(self);

end;

procedure Tfpedido.tcobsExecute(Sender: TObject);
begin
    if servico then
    btnobsservicoClick(self);
end;

procedure Tfpedido.verificadescontoExecute(Sender: TObject);
begin
  if vendaitem['letradesconto'] <> null then
  begin
    selecione('select * from tbdesconto');
    sqlpub.locate('letra', vendaitem.FieldByName('letradesconto').AsString, []);

    if (sqlpub.FieldByName('desconto').AsFloat <
      vendaitem.FieldByName('descontopercent').AsFloat) or
      ((responsavel = 'ATACADAO DOS PISOS NALDO') and
      (venda['formapgto'] = 'A PRAZO') and
      (vendaitem.FieldByName('descontopercent').AsFloat > 0)) then

      senhagerencial('§DESCONTO SUPERIOR',
        'DIGITE A SENHA GERENCIAL PARA LIBERAR:',
        'DESCONTO SUPERIOR AO PERMITIDO');
    sqlpub := nil;
  end;
end;

procedure Tfpedido.DBComboBox1Enter(Sender: TObject);
begin
  keypreview := False;
end;

procedure Tfpedido.DBComboBox1Exit(Sender: TObject);
begin
  keypreview := True;
end;

procedure Tfpedido.DBComboBox1KeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if key = 27 then 
    DBEDIT20.SetFocus;
  if key = 13 then 
    dbedit19.SetFocus;
end;

procedure Tfpedido.DBComboBox1KeyPress(Sender: TObject; var Key: char);
begin
  abort;
end;

procedure Tfpedido.Label25Click(Sender: TObject);
var
tp,crit,imp,ntb,scr :string;
begin

          codloc  := '1';
          imp := msgi('Digite uma opção:' + #13 + #13 +
               '1 = Localizar' + #13 +
               '2 = Ver Histórico',2);

          if imp ='1' then
             localiza('campo8');

          if imp = '2' then begin
             codloc  := '1';
             tp := msgi('Digite uma opção:' + #13 + #13 +
                        '1 = OS encerradas' + #13 +
                        '2 = Abertas' + #13 +
                        '3 = Orçamentos',2);


             if (tp<>'1') and (tp<>'2')and (tp<>'3') then abort;


             if (tp='2') or (tp='3') then begin
                ntb :='venda';

                if tp='3' then
                   scr := ' and '+ntb+'.modo = ' +quotedstr('O')
                else
                   scr := ' and '+ntb+'.modo <>'+quotedstr('O');

             end else ntb := 'tbpedido';


             with fdm.query1 do begin
                  close;
                  sql.clear;
                  sql.add( 'select '+ntb+'.Data, '+ntb+'.Numero as OS, '+
                           ' '+ntb+'.campo1 as Veiculo, '+ntb+'.campo8 as Placa, '+
                           ntb+'servico.Descricao, '+ntb+'servico.Mecanico, '+
                           ntb+'servico.Qtd, '+ntb+'servico.VrUnit, '+
                           ntb+'.Total from '+ ntb+'servico, '+ ntb+
                           ' where '+ntb+'.chave = '+ntb+'servico.link '+ sqlempresa(1,1,ntb)+scr);

             end;

             fdm.tbquery1.Close;
             fdm.tbquery1.open;

             (fdm.tbquery1.FieldByName('vrunit') as tfloatfield).displayformat := '###,##0.00';
             (fdm.tbquery1.FieldByName('total') as tfloatfield).displayformat := '###,##0.00' ;
             fdm.tbquery1.FieldByName('descricao').DisplayWidth :=30;
             fdm.tbquery1.FieldByName('mecanico').DisplayWidth :=20;
             fdm.tbquery1.IndexFieldNames := 'placa';

             reltb(fdm.tbquery1,'Histórico','','Total','','','','','','','','','','','','');
             fdm.tbquery1.close;
             fdm.tbquery1.IndexFieldNames :='';
         end;   
end;

procedure Tfpedido.botoesformExecute(Sender: TObject);
begin
  if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\btnprimeiro.bmp') then
    btnprimeirogrupo.Glyph.LoadFromFile(ExtractFilePath(ParamStr(0)) +
      'imagem\btnprimeiro.bmp');


  if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\btnvoltar.bmp') then
    btnvoltargrupo.Glyph.LoadFromFile(ExtractFilePath(ParamStr(0)) +
      'imagem\btnvoltar.bmp');

  if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\btnavancar.bmp') then
    btnavancargrupo.Glyph.LoadFromFile(ExtractFilePath(ParamStr(0)) +
      'imagem\btnavancar.bmp');

  if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\btnultimo.bmp') then
    btnultimogrupo.Glyph.LoadFromFile(ExtractFilePath(ParamStr(0)) +
      'imagem\btnultimo.bmp');
end;

procedure Tfpedido.FormCreate(Sender: TObject);
begin
  Show := 1;

  // permissoes
  PN := sqlacesso.FieldByName('inserir').AsString;
  PA := sqlacesso.FieldByName('alterar').AsString;
  PD := sqlacesso.FieldByName('apagar').AsString;
  PC := sqlacesso.FieldByName('consultar').AsString;  
  sqlacesso.Destroy;

  if resolucao >700 then Height := 700;


  fdm.tbconfig.Open;

  decimais := fdm.tbconfig.FieldByName('decimaisvenda').AsInteger;
  locacao :=  fdm.tbconfig['locacao'] = 'S';

  

  leitor := (fdm.tbconfig.FieldByName('leitorpedido').AsString = 'S') and
    (tipoempresa <> '9');
  lqtd.Visible := leitor;
  lqtdpp.Visible := leitor;
  lqtdd.Visible := leitor;
  lqtdl.Visible := leitor;

  if fdm.tbconfig.FieldByName('codigoimpressao').AsString = 'I' then
    codigoimpressao := 'codigo'

  else if fdm.tbconfig.FieldByName('codigoimpressao').AsString = 'F' then
    codigoimpressao := 'codigofornecedor'

  else if fdm.tbconfig.FieldByName('codigoimpressao').AsString = 'O' then
    codigoimpressao := 'codigooriginal'

  else if fdm.tbconfig.FieldByName('codigoimpressao').AsString = 'B' then
    codigoimpressao := 'codigobarras';


  // criterio para localizar
  VCinterno := fdm.tbconfig['VCinterno'] = 'S';
  VCBarras := fdm.tbconfig['VCBarras'] = 'S';
  VCFornecedor := fdm.tbconfig['VCFornecedor'] = 'S';
  VCOriginal := fdm.tbconfig['VCOriginal'] = 'S';
  trocaautorizada := fdm.tbconfig['trocaautorizada'] = 'S';
  siscaixa := fdm.tbconfig['siscaixa'] = 'S';

  dbgrid1.Columns[0].FieldName := codigoimpressao;
  dbgrid3.Columns[0].FieldName := codigoimpressao;
  dbgrid4.Columns[0].FieldName := codigoimpressao;


  if tipoempresa = '9' then
  begin
    lcor.Show;
    ltamanho.Show;
    lcor.Caption := 'Medidas';
    etamanho.Show;
    etamanho.ReadOnly := True;
    etm1.Show;
    etm2.Show;
    etm3.Show;
    dbgrid1.Columns[5].Destroy;

    lcorD.Show;
    ltamanhoD.Show;
    lcorD.Caption := 'Medidas';
    etamanhoD.Show;
    etamanhoD.ReadOnly := True;
    etm1D.Show;
    etm2D.Show;
    etm3D.Show;
    dbgrid4.Columns[5].Destroy;
  end 
  else if responsavel = 'CONFECCAO GERAL' then
  begin
    lcor.Show;
    ltamanho.Show;
    ecor.Show;
    etamanho.Show;
    dbgrid1.Columns[4].Destroy;
    dbgrid1.Columns[3].Destroy;
    dbgrid1.Columns[2].Destroy;

    lcorD.Show;
    ltamanhoD.Show;
    ecorD.Show;
    etamanhoD.Show;
    dbgrid4.Columns[4].Destroy;
    dbgrid4.Columns[3].Destroy;
    dbgrid4.Columns[2].Destroy;
  end
  else
  begin
    dbgrid1.Columns[6].Destroy;
    dbgrid1.Columns[5].Destroy;
    dbgrid1.Columns[4].Destroy;
    dbgrid1.Columns[3].Destroy;
    dbgrid1.Columns[2].Destroy;
    dbgrid1.Columns[1].Width := 315;

    dbgrid4.Columns[6].Destroy;
    dbgrid4.Columns[5].Destroy;
    dbgrid4.Columns[4].Destroy;
    dbgrid4.Columns[3].Destroy;
    dbgrid4.Columns[2].Destroy;
    dbgrid4.Columns[1].Width := 502;
  end;


  botoesformexecute(self);

  desativar(fpedido);

  gravar := 'nenhum';
  enumero.ReadOnly := responsavel <> 'FUTURE SERVICE';
  selecione('delete from vendaitem where link = 0');
end;

procedure Tfpedido.irExecute(Sender: TObject);
begin
  btnAvancarGrupoClick(self);
end;

procedure Tfpedido.virExecute(Sender: TObject);
begin
  btnVoltarGrupoClick(self);
end;

procedure Tfpedido.l1Click(Sender: TObject);
begin
  localiza('campo1');
end;

procedure Tfpedido.Label77Click(Sender: TObject);
begin
  localiza('campo1');
end;

procedure Tfpedido.enomeanimalKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin

       with sender as tdbedit do
            if (key = 13)  and
               (Modified) and
               (Text <> '') then 
                chamatb('nome',text,'',19);


end;

procedure Tfpedido.preencheequipamentoExecute(Sender: TObject);
begin
  venda.Edit;

  if panimal.Visible then
  begin
    venda['campo7'] := fdm.sg['codigo'];
    venda['campo1'] := fdm.sg['nome'];
    venda['campo4'] := fdm.sg['raca'];
    venda['campo2'] := fdm.sg.FieldByName('altura').AsString;
    venda['campo6'] := fdm.sg['peso'];
    venda['campo5'] := fdm.sg['especie'];
    venda['campo3'] := fdm.sg['nascimento'];
    venda['campo8'] := fdm.sg['cor'];
  end;

  if peletronica.Visible then
  begin
    venda['campo1'] := fdm.sg['aparelho'];
    venda['campo4'] := fdm.sg['serie'];
    venda['campo2'] := fdm.sg['marca'];
    venda['campo3'] := fdm.sg['modelo'];
  end;

  if pmecanico.Visible then
  begin
    venda['campo1'] := fdm.sg['aparelho'];
    venda['campo8'] := fdm.sg['serie'];
    venda['campo4'] := fdm.sg['marca'];
    venda['campo2'] := fdm.sg['modelo'];
  end;



end;

procedure Tfpedido.baixaestoqueExecute(Sender: TObject);
var
  fabricante, nomes, st, tipo: string;
  ini: tinifile;
begin
  if responsavel = 'TOTAL CLEAN' then
  begin
    nomes := '';

    with fdm.query1 do
    begin
      Close;
             sql.clear;
             sql.add(  'select codigo, nomecurto as nome from tbfornecedor where categoria <> "3" order by codigo');

      fdm.tbquery1.Close;
      fdm.tbquery1.Open;
      fdm.tbquery1.First;

      while not fdm.tbquery1.EOF do
      begin
        nomes := nomes + #13 + fdm.tbquery1.FieldByName('codigo').AsString +
          ' = ' + fdm.tbquery1.FieldByName('nome').AsString;
        fdm.tbquery1.Next;
      end;

      if inputquery('DIGITE O CÓDIGO DO FORNECEDOR:', PChar(nomes), st) then
      begin
        if st = '' then
          st := '000000';

        if fdm.tbquery1.Locate('codigo', quotedstr(st), []) then
          fabricante := fdm.tbquery1.FieldByName('nome').AsString

        else
        begin
          ShowMessage('O código digitado não foi localizado, o vendedor não foi alterado.');
          fdm.tbquery1.Close;
          abort;
        end;
        fdm.tbquery1.Close;
      end;
    end;
  end;


  nomes := '';
  fdm.tbconfig.Open;

  st := '';

  if fdm.tbconfig['deposito'] = 'S' then
    st := '2 = Depósito';

  if fdm.tbconfig['materiaprima'] = 'S' then
    if st <> '' then
      st := st + #13 + '3 = Matéria-prima'
    else
      st := '3 = Matéria-prima';

  // se houver subestoque
  if fdm.tbconfig['subestoque'] = 'S' then
  begin
        selecione('select * from tbsubestoque');


    if sqlpub.RecordCount > 0 then
    begin
      sqlpub.First;
      nomes := '';

      while not sqlpub.EOF do
      begin
        nomes := nomes + #13 + IntToStr(sqlpub.RecNo + 3) +
          ' = ' + sqlpub.FieldByName('nome').AsString;
        sqlpub.Next;
      end;
    end;
  end;


  if nomes <> '' then
    st := st + nomes;


  if length(st) > 1 then
  begin
    tipo := '1';

    if inputquery('Estoque', PChar('Baixar do estoque do(a):' + #13 + #13 +
      '1 = Loja' + #13 + st), tipo) then
    else
      abort;
  end
  else
    tipo := '1';


  tipo := uppercase(tipo);

  if StrIsInteger(tipo) = False then
  begin
    Application.MessageBox('Escolha uma opção correta!', 'Erro', 0 + MB_ICONerror);
    abort;
  end;


  if StrToInt(tipo) > 3 then
  begin
    if (StrToInt(tipo) - 3) > sqlpub.RecordCount then
    begin
      Application.MessageBox('Escolha uma opção correta!', 'Erro', 0 + MB_ICONerror);
      abort;
    end;

    sqlpub.First;
    sqlpub.MoveBy(StrToInt(tipo) - 4);
  end
  else if (tipo <> '1') and (tipo <> '2') and (tipo <> '3') then
  begin
    Application.MessageBox('Escolha uma opção correta!', 'Erro', 0 + MB_ICONerror);
    abort;
  end;


  st := '';

  venda.Insert;
  if StrToInt(tipo) > 3 then
    venda['tipoestoque'] := sqlpub['nome']
  else
    venda['tipoestoque'] := tipo;

  venda['fabricante'] := fabricante;

  sqlpub:= nil;

end;

procedure Tfpedido.qtdleitorExecute(Sender: TObject);
var
  st: string;
begin
  if leitor then 
  begin
    st := '2';

    if inputquery('Quantidade', 'Digite a quantidade', st) then 
    else 
      abort;

    if StrIsInteger(st) = False then
    begin
      Application.MessageBox('Digite um número válido!', 'Erro', 0 + MB_ICONerror);
      abort;
    end;

    quantidade := strtofloat(st);
    lqtd.Caption := 'QUANTIDADE = ' + st + '    F10=ALTERA';
  end;
end;

procedure Tfpedido.CFPgtoKeyPress(Sender: TObject; var Key: char);
begin
  if CFPgto.ReadOnly = True then abort;
end;

procedure Tfpedido.inserirppExecute(Sender: TObject);
var
  marcador, codigo: string;
  qtd: real;
begin
  if pecapendente = True then
  begin
    marcador := tbpp.FieldByName('codigo').AsString;;

    if (edescricaopp.Text = '') or (tbpp.FieldByName('total').AsFloat <= 0) then
    begin
      Application.MessageBox('Os campos: Descrição e Total não podem ser nulo.!',
        'Erro', 0 + MB_ICONerror);
      abort;
    end;


    with fdm.query2 do
    begin
      Close;
                sql.Clear;
                sql.add( 'select codigo from vendapp where ' + ' link = ' +
                         quotedstr(tbpp.FieldByName('link').AsString) +
                         ' and codigo = ' + quotedstr(tbpp.FieldByName('codigo').AsString));
      Open;
      codigo := FieldByName('codigo').AsString;
      Close;
    end;


    if codigo = '' then
      Grava(tbpp, nil,'vendapp')
    else
    begin
      qtd := tbpp.FieldByName('qtd').AsFloat;
      tbpp.Cancel;
      tbpp.Locate('codigo', codigo, []);
      tbpp.Edit;
      tbpp['qtd'] := tbpp.FieldByName('qtd').AsFloat + qtd;
      totalitemppexecute(self);
      altera(tbpp, nil,'vendapp')
    end;


    tbpp.Cancel;
    tbpp.Refresh;

    tbpp.Locate('codigo', marcador, []);
  end;
end;

procedure Tfpedido.alterarppExecute(Sender: TObject);
var
  loc: string;
begin
  if pecapendente = True then
  begin
    if (edescricaopp.Text = '') or (tbpp.FieldByName('total').AsFloat <= 0) then
    begin
      Application.MessageBox('Os campos: Descrição e Total não podem ser nulo!',
        'Erro', 0 + MB_ICONerror);
      abort;
    end;

    loc := tbpp.FieldByName('chave').AsString;

    altera(tbpp, nil,'vendapp');

    tbpp.cancel;
    tbpp.Refresh;
    tbpp.Locate('chave', loc, []);
  end;
end;

procedure Tfpedido.preencherprodutoppExecute(Sender: TObject);
begin


  tbpp.Edit;

  tbpp['codigo'] := fdm.sg['codigo'];

  if fdm.sg['codigooriginal'] <> null then
    tbpp['codigooriginal'] := fdm.sg['codigooriginal'];

  if fdm.sg['codigofornecedor'] <> null then
    tbpp['codigofornecedor'] := fdm.sg['codigofornecedor'];

  if fdm.sg['codigobarras'] <> null then
    tbpp['codigobarras'] := fdm.sg['codigobarras'];

  tbpp['descricao'] := fdm.sg.FieldByName('descricao').AsString + ' ' +
    fdm.sg.FieldByName('tamanho').AsString;

  if venda['tipovenda'] = 'V' then
    tbpp['vrunit'] := fdm.sg.FieldByName('vrvenda').AsFloat

  else if venda['tipovenda'] = 'A' then
    tbpp['vrunit'] := fdm.sg.FieldByName('vratacado').AsFloat

  else if venda['tipovenda'] = 'C' then
    tbpp['vrunit'] := fdm.sg.FieldByName('vrunit').AsFloat

  else if venda['tipovenda'] = '3' then
    tbpp['vrunit'] := fdm.sg.FieldByName('valor3').AsFloat;

  totalitemppexecute(self);
  fechatg;
end;

procedure Tfpedido.totalitemppExecute(Sender: TObject);
begin
  tbpp.edit;
  tbpp['total'] := tbpp.FieldByName('qtd').AsFloat *
    tbpp.FieldByName('vrunit').AsFloat;
end;

procedure Tfpedido.DBEdit1KeyPress(Sender: TObject; var Key: char);
begin
  if not (key in ['0'..'9', #8, ',']) then abort;
end;

procedure Tfpedido.vendaAfterScroll(DataSet: TDataSet);
begin
  btnprimeiroGrupo.Enabled := not venda.BOF;
  btnVoltarGrupo.Enabled := not venda.BOF;
  btnAvancarGrupo.Enabled := not venda.EOF;
  btnultimoGrupo.Enabled := not venda.EOF;

  tituloformexecute(self);
  if devolucao then
    evendedor.ReadOnly := venda['td'] = '1';
  lmg.caption := '';


            {
    if vendaitem.active then begin

       vendaitem.close;
       vendaitem.open;
    end;

    if vendaservico.active then begin
       vendaservico.close;
       vendaservico.open;
    end;

    if tbdevolucao.active then begin
       tbdevolucao.close;
       tbdevolucao.open;
    end;


    if tbpp.active then begin
       tbpp.close;
       tbpp.open;
    end;
             }

end;

procedure Tfpedido.vendaAfterEdit(DataSet: TDataSet);
begin
  modogrupo := 'M';
end;

procedure Tfpedido.vendaitem1AfterEdit(DataSet: TDataSet);
begin
  modo := 'M';
end;

procedure Tfpedido.vendaservicoAfterEdit(DataSet: TDataSet);
begin
  modoS := 'M';
end;

procedure Tfpedido.CFPgtoEnter(Sender: TObject);
begin
  keypreview := False;        
end;

procedure Tfpedido.CFPgtoExit(Sender: TObject);
begin
  keypreview := True;
end;

procedure Tfpedido.CFPgtoKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if key = 13 then
    ecomprador.SetFocus;

  if key = 27 then
    evendedor.SetFocus;
end;

procedure Tfpedido.fecharvendaExecute(Sender: TObject);
var
fecha:boolean;
vrcouvert,sobra,total,margem:double;
j:integer;
notacontinuo,loc,tipopgto:string;
sq:tzquery;


      procedure vendedor;
      var senha:string;
      begin

            senha := msgi('Digite a senha do usuário para calcular a comissão do vendedor:',0);
            if senha = '' then abort;

            selecione('select senha,chave as nome from tbusuario where senha ='+  quotedstr(senha));
            senha := sqlpub.fieldbyname('nome').asstring;

            if sqlpub['senha'] = null then msg('#Senha inválida, ou usuário não cadastrado!!!',0);

            selecione('select nomecurto,codigo from tbfuncionario where usuario ='+  quotedstr(senha));

            if sqlpub['codigo'] = null then
               msg('#Este usuário não consta no cadastro de funcionário.',0);

              venda.Edit;
              venda['vendedor'] := sqlpub.fieldbyname('nomecurto').AsString;
              venda['codigovendedor'] := sqlpub.fieldbyname('codigo').AsString;
              sqlpub := nil;
      end;
begin



           //verifica se devolveu o que trocou
           if (modulo = 'TROCA') and (venda['td']='3') then begin

              tbdevolucao.First;


              while not tbdevolucao.Eof do begin
                    if not vendaitem.Locate('codigofornecedor',
                           tbdevolucao.fieldbyname('codigofornecedor').AsString,[]) then begin
                           Application.MessageBox(pchar(tbdevolucao.fieldbyname('descricao').AsString+
                                                 ' NÃO FOI TROCADA CORRETAMENTE. O ITEM TROCADO DEVE TER O MESMO CÓDIGO DO FORNECEDOR.'),
                                                 'Erro', 0 + MB_ICONerror);

                           ABORT;
                    end;
                   tbdevolucao.Next;
              end;

           end;


        if (modulo = 'PEDIDO') and
          (servico) and
          (vendaservico.RecordCount > 0) and
          (responsavel = 'ORIGINAL INFORMÁTICA') then
          if (eserie.Text = '') or
            (DBEdit41.Text = '') or
            (DBEdit40.Text = '') or
            (DBEdit37.Text = '') or
            (DBEdit6.Text = '') or
            (DBEdit4.Text = '') then
          begin
            ShowMessage('Preencha os dados do aparelho e o contador, antes de encerrar!!!');
            abort;
          end;

        if ((troca) or (devolucao)) and (venda['td'] = '2') and trocaautorizada then
          senhagerencial(modulo,
            modulo + ' AUTORIZADA',
            'LIBERAR ' + modulo + ' AUTORIZADA');


        if venda.FieldByName('total').AsFloat > 0 then begin
          verificacredito(venda.FieldByName('codigo').AsString
            , modulo
            , venda.FieldByName('total').AsFloat);
        end;


        fdm.tbconfig.Open;


        if (fdm.tbconfig['comissaovendedor'] = 'S') and
           (venda['vendedor'] = null) and
           (venda.FieldByName('total').AsFloat > 0) then vendedor;



        if (fdm.tbconfig['comissaovendedor'] = 'S') and
           (venda['vendedor'] = null) and
           (venda.FieldByName('total').AsFloat > 0) then
            msg('#Precisa escolher o vendedor!', 0);


        if (entrega) and (venda['dtentrega'] = null) and (venda['entregue'] = 'N') then  msg('#Preencha a data da entrega!', 0);


        fmenu.caixafechadoExecute(self);


        //nb automotivo
        if responsavel = '07.838.631/0001-23' then vendedor;


       // fecha para o caixa faturar
       if (siscaixa) and (not caixa) then begin

          if not msg('Deseja encerrar',2) then abort;
          selecione('update venda set serial = "0" where chave = ' +
                    quotedstr(venda.fieldbyname('chave').AsString));
          atuatbExecute(self);

       // o acerto
       end else begin
        

        if (caixa) and (siscaixa) then begin
           vf:=true;
           atuatbExecute(self);
           localiza('nome');
           loc := venda.fieldbyname('chave').AsString;
           atuatbExecute(self);
           if not venda.Locate('chave',loc,[]) then
              msg('#Esta venda esta sendo editada por outro usuário, peça-o para finalizar.',0);
           //se nao escolheu a venda
           if vf=true then begin
              vf:=false;
              abort;
           end;

        end;


      {  if (((modulo = 'DEVOLUCAO') or (modulo = 'TROCA')) and
             (venda.FieldByName('devolucao').AsFloat>0)) and (venda['td'] = '2') then
            senhagerencial(modulo,'DIGITE A SENHA GERENCIAL:', 'Devolução Autorizada!');}


        //nao deixar vendae sem a margem desejada
        if (venda.FieldByName('totalpeca').AsFloat>0) and (venda.FieldByName('total').AsFloat>0) then begin
           try
           margem := (((venda.FieldByName('total').AsFloat -
                        venda.FieldByName('totalservico').AsFloat) * 100) /
                        venda.FieldByName('Custo').AsFloat) -100;
           except margem :=0;
           end;
           selecione('select margemminima from tbconfig');

           if (sqlpub.FieldByName('margemminima').AsFloat >0) and (margem < sqlpub.FieldByName('margemminima').AsFloat) then
              senhagerencial(modulo,'DIGITE A SENHA GERENCIAL:', 'MARGEM ABAIXO DO MÍNIMO PERMITIDO');


        end;


        vf := False;
        application.CreateForm(tfacerto, facerto);
        //evita duplicicade de itens gravados
        selecione('delete from tbpedidoitem where link = '+quotedstr(venda.FieldByName('chavepedido').AsString));
        selecione('delete from tbpedidoservico where link = '+quotedstr(venda.FieldByName('chavepedido').AsString));        

        selecione('select chave from tbpedido where avulso = "S" and codigo = ' +
                  quotedstr(venda.FieldByName('codigo').AsString)+ sqlempresa(1,1,''));

        if (responsavel <> 'FABIO VITRINE') AND (sqlpub.RecordCount >0) then msg('Este cliente tem venda(s) acumulada(s) - (avulsa(s))',0);  

        facerto.LACRESCIMO.Caption := 'Acrés/Frete';
        facerto.tabela.CreateDataSet;
        facerto.tabela.Open;
        facerto.tabela.insert;

        //se tiver couvert
        if (venda.FieldByName('total').AsFloat > 0) and (couvert) then  begin

           vrcouvert := strtofloat(msgi('Digite o número de pessoas:',2));
           venda.Edit;
           fdm.tbconfig.Open;

           if (fdm.tbconfig.FieldByName('vrcouvert').AsFloat >0) and (vrcouvert>0) then begin
              venda['vrcouvert'] := vrcouvert *  fdm.tbconfig.FieldByName('vrcouvert').AsFloat;
              totalizarexecute(self);
           end;
        end;


        facerto.tbform := venda;
        facerto.tbformi := vendaitem;
        facerto.tbformd := tbdevolucao;
        facerto.tbforms := vendaservico;
        facerto.tbformpp := tbpp;
        facerto.tbforml := tblocacao;

        facerto.modulo := '2';
        facerto.tabela['linkvenda'] := venda.FieldByName('chavepedido').AsInteger;

        facerto.tabela['data'] := venda.FieldByName('data').AsString;
        facerto.tabela['tipodesconto'] := venda.FieldByName('tipodesconto').AsString;
        facerto.tabela['nome'] := venda.FieldByName('nome').AsString;

        facerto.tabela['chave'] := venda.FieldByName('chave').AsInteger;
        facerto.tabela['codigo'] := venda.FieldByName('codigo').AsInteger;
        facerto.tabela['numero'] := venda.FieldByName('numero').AsInteger;

        if (responsavel = '10.741.094/0001-03') and (DBEdit9.Text<>'') then //rodrigo tornearia
           facerto.tabela['documento'] := venda.FieldByName('spedido').AsString
        else facerto.tabela['documento'] := venda.FieldByName('numero').AsString;

        if venda['vendedor'] <> null then  begin
          facerto.tabela['vendedor'] := venda.FieldByName('vendedor').AsString;
          facerto.tabela['codigovendedor'] := venda.FieldByName('codigovendedor').AsInteger;
        end;


        if venda.FieldByName('total').AsFloat < 0 then  begin
          facerto.controle := 'devolver';
          facerto.tabela['totalparcial'] := venda.FieldByName('total').AsFloat * (-1);
          facerto.tabela['total'] := venda.FieldByName('total').AsFloat * (-1);
          facerto.tabela['td'] := venda['td'];
          facerto.ecredito.ReadOnly := False;
          facerto.echeque.ReadOnly := true;
        end  else  begin
          facerto.controle := 'pedido';
          facerto.tabela['totalpeca'] := venda.FieldByName('totalpeca').AsFloat;
          facerto.tabela['totalparcial'] := venda.FieldByName('totalparcial').AsFloat+
                                            venda.FieldByName('descontoreal').AsFloat;
          facerto.tabela['vrcouvert'] := venda.FieldByName('vrcouvert').AsFloat;

          facerto.tabela['valoricmsubstituicao'] := venda.FieldByName('valoricmsubstituicao').AsFloat;
          facerto.tabela['total'] := venda.FieldByName('total').AsFloat;

          
          if venda.FieldByName('descontoreal').AsFloat > 0 then begin
             facerto.tabela['descontoreal'] := venda.FieldByName('descontoreal').AsFloat;

             facerto.edescontorealExit(self);
             facerto.descrat := venda.FieldByName('descontoreal').AsFloat;
             facerto.edescontoreal.Modified := false;
             facerto.edescontopercent.Modified := false;
          end;
        end;

        if venda['vendedor'] <> null then  begin
          facerto.tabela['vendedor'] := venda.FieldByName('vendedor').AsString;
          facerto.tabela['codigovendedor'] := venda.FieldByName('codigovendedor').AsInteger;
        end;

        facerto.tabela['formapgto'] := venda.FieldByName('formapgto').AsString;

        if venda.FieldByName('acrescimo').AsFloat > 0 then
          facerto.tabela['acrescimo'] := venda.FieldByName('acrescimo').AsFloat;

        if venda.FieldByName('dinheiro').AsFloat > 0 then
          facerto.tabela['dinheiro'] := venda.FieldByName('dinheiro').AsFloat;

        if venda.FieldByName('credito').AsFloat > 0 then
          facerto.tabela['credito'] := venda.FieldByName('credito').AsFloat;

        if venda.FieldByName('cartao').AsFloat > 0 then
          facerto.tabela['cartao'] := venda.FieldByName('cartao').AsFloat;

        if venda.FieldByName('cartaod').AsFloat > 0 then
          facerto.tabela['cartaod'] := venda.FieldByName('cartaod').AsFloat;

        if venda.FieldByName('cheque').AsFloat > 0 then
          facerto.tabela['cheque'] := venda.FieldByName('cheque').AsFloat;

        if venda.FieldByName('chequepre').AsFloat > 0 then
          facerto.tabela['chequepre'] := venda.FieldByName('chequepre').AsFloat;

        if venda.FieldByName('fiado').AsFloat > 0 then
          facerto.tabela['fiado'] := venda.FieldByName('fiado').AsFloat;

        facerto.tabela['tipovenda'] := venda.FieldByName('tipovenda').asstring;
        facerto.tabela.post;
        venda.edit;


        {if venda['formapgto'] = 'A VISTA' then  begin
          facerto.echequepre.ReadOnly := True;
          facerto.echeque.ReadOnly := True;
          facerto.efiado.ReadOnly := True;
          facerto.ecartao.ReadOnly := True;
          facerto.ecartaod.ReadOnly := True;
          facerto.ecartao.ReadOnly := True;
        end;}


        if (responsavel <> 'FABIO VITRINE') and (venda['formapgto']<>null) then begin
           selecione('select venc1,tipopgto from tbcondfatura where descricao = ' + quotedstr(venda.fieldbyname('formapgto').AsString));
           fecha := true;

           if sqlpub.FieldByName('tipopgto').asstring = 'A VISTA' then  tipopgto := 'dinheiro'  else
           if sqlpub.FieldByName('tipopgto').asstring = 'A PRAZO' then  tipopgto := 'fiado'     else
           if sqlpub.FieldByName('tipopgto').asstring = 'CART C'  then  tipopgto := 'cartao'    else
           if sqlpub.FieldByName('tipopgto').asstring = 'CART D'  then  tipopgto := 'cartaod'   else
           if sqlpub.FieldByName('tipopgto').asstring = 'CHEQUE'  then  tipopgto := 'chequepre';

           sqlpub:=nil;
        end;


        if fecha then
           if perguntafecha then
              if (msg('Deseja encerrar com estas formas de pagamento?',2)=true) then else fecha := false;


        if responsavel = 'FABIO VITRINE' then  fecha := true;

        if (fecha) and (responsavel <> 'FABIO VITRINE') then begin
           facerto.fecha := fecha;
           facerto.FormShow(self);
           facerto.tabela.edit;
           total := venda.FieldByName('total').AsFloat;

           selecione('select * from tbcondfatura where descricao = '+  quotedstr(venda.fieldbyname('formapgto').AsString));

           if (tipopgto <> 'dinheiro') and
              ((sqlpub['Conta'] = null) or (sqlpub['tipopgto'] = null) or (sqlpub.fieldbyname('venc1').AsInteger <=0))  then begin

              msg('O tipo de pagamento, o tipo de conta e os vencimentos devem ser preenchidos.',0);
              lfpgtoClick(self);
              abort;
           end;

           //se a 1ª for a vista
           if (tipopgto <> 'dinheiro') and (sqlpub.FieldByName('venc1').AsInteger = 0) then begin
              j:=1;

              if sqlpub.fieldbyname('venc2').AsInteger > 0 then inc(j);
              if sqlpub.fieldbyname('venc3').AsInteger > 0 then inc(j);
              if sqlpub.fieldbyname('venc4').AsInteger > 0 then inc(j);
              if sqlpub.fieldbyname('venc5').AsInteger > 0 then inc(j);
              if sqlpub.fieldbyname('venc6').AsInteger > 0 then inc(j);

              facerto.tabela['dinheiro'] := total/j;

              total:= total - (total/j);
           end;

           sqlpub:=nil;


           if total > 0 then  facerto.tabela[tipopgto] := total

           else if total < 0 then begin
            facerto.tabela['credito'] := venda.FieldByName('total').AsFloat * (-1);
            facerto.controle := 'devolver';
            facerto.tabela['td'] := venda['td'];
           end;

           facerto.totalizarexecute(self);
           facerto.btnfinalizarclick(self);
           //facerto.ShowModal;

        end else if responsavel = 'FABIO VITRINE' then begin
           facerto.tabela.edit;
           if venda.FieldByName('total').AsFloat > 0 then facerto.tabela['fiado'] := venda.FieldByName('total').AsFloat;
           facerto.totalizarexecute(self);
           facerto.btnfinalizarclick(self);

         end else facerto.ShowModal;


        //se foi confirmado o fechamento da venda
        if vf then begin

            if entrega then  periodo2('entrega',venda.fieldbyname('chavepedido').AsString,'0','','','',532,794,2);

            totalizarExecute(self);
            formatarexecute(self);



           //cupom fiscal
            if (ImpECFPedido)  and (Application.MessageBox('Imprimir nota fiscal? ', 'Confirme', 4 + MB_ICONQUESTION+MB_DEFBUTTON2) = idno) then

                if (ImpECFPedido) and
                  (not ImprimeECF_(venda.FieldByName('cnpj').AsString, 'pedido',
                       venda.FieldByName('nome').AsString, venda.FieldByName('fone').AsString,
                       venda.FieldByName('endereco').AsString, venda, vendaitem)) then  Abort;

            if not ImpECFPedido then btnimprimirClick(self);



            //se tiver cedente cadastrado verificar se foi a prazo
            selecione('select chave from tbcedente');
            if sqlpub.RecordCount >0 then
               selecione('select chave from tbreceber where modulo ="2"  and ch is null '+
                         ' and linkvenda = '+ quotedstr(venda.fieldbyname('chavepedido').AsString));

               //gera os boletos
               if (sqlpub.RecordCount >0) then
                  if(msg('Deseja gerar boleto?',2)) then begin

                  sq := tzquery.Create(application);
                  with sq do begin
                       Connection := fdm.conector;
                       sql.Add(' select r.chave, r.vrdocumento, r.dtvencimento, r.nboleto, '+
                               ' c.nome, c.cnpj, c.endereco,c.numero,c.complemento, c.bairro, c.municipio, c.uf, c.cep '+
                               ' from tbreceber r, tbcliente c where c.codigo = r.codigo'+
                               ' and r.modulo ="2" and r.ch is null '+
                               ' and r.linkvenda = '+ quotedstr(venda.fieldbyname('chavepedido').AsString)+
                               ' order by r.linkvenda, r.dtvencimento ');
                       open;
                    end;

                    geraboleto(sq,0,'tbreceber',true);
                    sq.Free;
               end;



            selecione('select notacontinuo from tbconfig');
            notacontinuo := sqlpub.fieldbyname('notacontinuo').asstring;
            sqlpub:=nil;

            if ((vendaitem.RecordCount>0) and (notacontinuo= 'S')) and
               ((venda['avulso']='N') or (venda['avulso']=null)) then begin
               cborderm.ItemIndex :=0;
               cbordermClick(self);
               geranota(venda,vendaitem,vendaservico,tbdevolucao,'tbpedido');
            end;

             selecione('delete from venda where chave =  ' + quotedstr(venda.FieldByName('chave').AsString));
             selecione('delete from vendaitem where link =  ' + quotedstr(venda.FieldByName('chave').AsString));
             selecione('delete from vendaservico where link =  ' + quotedstr(venda.FieldByName('chave').AsString));
             selecione('delete from vendadevolucao where link =  ' + quotedstr(venda.FieldByName('chave').AsString));
             selecione('delete from vendapp where link =  ' + quotedstr(venda.FieldByName('chave').AsString));
             selecione('delete from vendalocacao where link =  ' + quotedstr(venda.FieldByName('chave').AsString));             

             atuatbExecute(self);
             modogrupo := 'N';
             modo := 'N';

        end;
     end;


end;

procedure Tfpedido.tabppShow(Sender: TObject);
begin
  if peca then
    if btncancelar.Enabled then
       btncancelarclick(self);

  if servico = True then
    if btncancelarS.Enabled then
      btncancelarSClick(self);

  if (devolucao = True) or (troca = True) then
    if btncancelarD.Enabled then
      btncancelarDClick(self);

  if locacao then
    if btncancelarl.Enabled then
       btncancelarlClick(self);

  pagina := '2';
  tbitem := tbpp;
end;

procedure Tfpedido.margemExecute(Sender: TObject);
begin
  if peca then begin
     btncancelarClick(self);
     combo.Clear;
     refazcomboexecute(self);
     abortaacao(nil,vendaitem,'chave','','','','',0);
     margemvenda('venda', venda.fieldbyname('chave').asstring);

       { with fdm.query1 do begin
             close;
             sql.clear;
             sql.add('select chave, Codigo, Descricao,custo*qtd as VrCompra, total as VrVenda, '+
                     ' (custo*qtd)- total as Diferenca, total * 100 / (custo*qtd) - 100 as Margem '+
                     ' from vendaitem where link = '+ quotedstr(venda.fieldbyname('chave').AsString));

             fdm.tbquery1.close;
             fdm.tbquery1.open;

             fdm.tbquery1.Insert;
             fdm.tbquery1['chave'] := 100000;
             fdm.tbquery1.Post;

             fdm.tbquery1.Insert;
             fdm.tbquery1['chave'] := 100001;
             fdm.tbquery1['descricao'] :='TOTAIS:';
             fdm.tbquery1['VrCompra'] := venda.fieldbyname('custo').asfloat;
             fdm.tbquery1['VrVenda'] := venda.fieldbyname('totalpeca').asfloat -
                                        venda.fieldbyname('descontoreal').asfloat +
                                        venda.fieldbyname('acrescimo').asfloat ;

             fdm.tbquery1['Diferenca'] := fdm.tbquery1.fieldbyname('VrVenda').asfloat-
                                          fdm.tbquery1.fieldbyname('VrCompra').asfloat;

             if  (fdm.tbquery1.fieldbyname('VrVenda').asfloat>0) and
                 (fdm.tbquery1.fieldbyname('VrCompra').asfloat>0) then
             fdm.tbquery1['Margem'] := fdm.tbquery1.fieldbyname('VrVenda').asfloat * 100 /
                                       fdm.tbquery1.fieldbyname('VrCompra').asfloat-100
             else fdm.tbquery1['Margem'] :=0;
              
             fdm.tbquery1.Post;

            fdm.tbquery1.FieldByName('descricao').DisplayWidth :=50;

             fdm.tbquery1.IndexFieldNames :='chave';
             reltb(fdm.tbquery1,'MARGEM SOBRE VENDA  -  VENDA Nº' + enumero.Text + '  ' + enome.Text,'','','','','','','','','','','','','','');
             fdm.tbquery1.close;
             fdm.tbquery1.IndexFieldNames :='';      }
        end;

end;

procedure Tfpedido.ecompradorEnter(Sender: TObject);
begin
  keypreview := False;
  ecomprador.Color := clinfobk;
end;

procedure Tfpedido.ecompradorExit(Sender: TObject);
begin
  keypreview := True;
  ecomprador.Color := clwhite;
end;

procedure Tfpedido.ecompradorKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if key = 13 then
    eobs.SetFocus;

  if key = 27 then
    CFPgto.SetFocus;
end;

procedure Tfpedido.btnapagarDClick(Sender: TObject);
var
  sqld: tzquery;
  nometabela: string;
begin

        permissaovenda;
  permissao(PD, 'PD', modulo);

  if tbdevolucao['chave'] = null then msg('#Você não tem registro selecionado para deletar!',0);

        if msg('',1) then   begin
    if balcao = 'B' then
      nometabela := 'vendaitem'
    else
      nometabela := 'tbpedidoitem';


    codprod := tbdevolucao.FieldByName('codigo').AsString;
    qtdprod := tbdevolucao.FieldByName('qtd').AsFloat;

    alimentaestoque(codprod, qtdprod * (-1), venda.FieldByName('tipoestoque').AsString,
                    tbdevolucao.FieldByName('chavegrade').AsInteger);

    sqlD := tzquery.Create(self);
    with sqlD do
    begin
      Connection := fdm.conector;

      //se a devolucao for tipo 1 (configurada)
        sql.clear;
        sql.add( 'update tbpedidoitem set devolvido = devolvido - ' +
                  realdblstr(tbdevolucao.FieldByName('qtd').AsFloat) +
                  ' where chave = ' + quotedstr(tbdevolucao.FieldByName('chavedevolucao').AsString));

      if venda['td'] = '1' then
        execsql;

        sql.clear;
        sql.add( 'delete from vendadevolucao where chave = ' +
                quotedstr(tbdevolucao.FieldByName('chave').AsString));
      execsql;
      Destroy;
    end;

    tbdevolucao.cancel;
    tbdevolucao.refresh;
    totalizarexecute(self);
  end;
end;

procedure Tfpedido.btncancelarDClick(Sender: TObject);
begin

  tbdevolucao.cancel;
  desativar(fpedido);

  hbotaoexecute(self);
  modo := 'N';
  modogrupo := 'N';
  
end;

procedure Tfpedido.btngravarDClick(Sender: TObject);
begin
  if edescricaoD.Enabled = True then
    edescricaoD.SetFocus;

  if gravar = 'novo' then
    inserirExecute(self)
  else if gravar = 'alterar' then
    alterarExecute(self);

  hbotaoexecute(self);
  desativar(fpedido);

  modo := 'N';
  modogrupo := 'N';
end;

procedure Tfpedido.btneditarDClick(Sender: TObject);
begin

        permissaovenda;

  permissao(PA, 'PA', modulo);

        if ((modulo = 'DEVOLUCAO') or (modulo = 'TROCA')) and (venda['td'] = '1') then msg('#Delete o item e insira novamente.',0);

  if tbdevolucao['chave'] = null then msg('#Você não tem registro selecionado para editar!',0);


  if (venda['td'] = '1') and ((tbdevolucao['defeito'] = 'C') or (tbdevolucao['defeito'] = 'A')) then
    senhagerencial(MODULO,
      MODULO,
      'ALTERAR UMA ' + MODULO + ' NÃO AUTORIZADA');


  gravar := 'alterar';

  codprod := tbdevolucao.FieldByName('codigo').AsString;
  codprodG := vendaitem.FieldByName('chavegrade').AsInteger;
  qtdprod := tbdevolucao.FieldByName('qtd').AsFloat;

  ativarlocalexecute(self);
  if (edescricaoD.Enabled = True) and (pagina = '3') then
    edescricaoD.SetFocus;

  dhbotaoexecute(self);
end;

procedure Tfpedido.btnnovoDClick(Sender: TObject);
var
  defeito, imp, nometabela, st, scrp: string;
  somadia,prazo,qtddia :integer;
begin

        permissaovenda;
        if venda['codigo'] = null then msg('#Preencha o cabeçalho!',0);

        permissao(PN, 'PN', modulo);

        if balcao = 'B' then
        begin
          nometabela := 'venda';
          scrp := ' and modo = "F"  and ';
        end
        else
        begin
          nometabela := 'tbpedido';
          scrp := ' and (modo = "P" or modo = "T") and ';
        end;


  if (venda['td'] = '1') and (fpedido.Active) then
  begin
    if inputquery('Imprimir', 'Digite uma opção de devolução:' + #13 + #13 +
      '1 = Defeito ' + #13 +
      '2 = Autorizada' + #13 +
      '3 = Carimbo (obdece configuração)' + #13 +
      'Esc = Cancela', imp) then
    else
      abort;
    if (imp <> '1') and (imp <> '2') and (imp <> '3') then abort;


    if imp = '3' then  begin

       listagem('numero','',
               ' and codigo = '+quotedstr(venda.FieldByName('codigo').AsString) +
               ' and totalpeca >0 and (consig is null or consig="") ' ,2,0);
       if fdm.sg.Active = false then begin
          btncancelarDClick(self);
          abort;
       end;

        selecione('select prazovendanormal from tbconfig');
        //verifica se esta no prazo
        prazo := sqlpub.FieldByName('prazovendanormal').AsInteger;

        if prazo <= 0 then prazo := 2000;

        qtddia := trunc(date - fdm.sg.FieldByName('data').AsDateTime);

        if  (qtddia - somadia) > prazo then
            senhagerencial('DEVOLUÇÃO','PRAZO TROCA VENCIDO', 'PRAZO TROCA VENCIDO');

       periodo2('devconf',fdm.sg.fieldbyname('chave').AsString,copy(modulo,1,1),'','','',524,609,0);
       btncancelargrupoclick(self);
       codloc := '';
       vrpub :=0;




    end
    else if imp = '1' then
    begin
      novoexecute(self);
      tbdevolucao.Edit;
      modo := 'M';
      if inputquery('Defeito', 'Qual é o defeito?', defeito) then 
      else 
      begin
        btncancelarDclick(self);
        abort;
      end;
      tbitem['defeito'] := 'S';
      tbitem['defeitoN'] := defeito;
      edescricaoD.SetFocus;
    end 
    else if imp = '2' then 
    begin
      senhagerencial(MODULO, MODULO, MODULO + ' AUTORIZADA');
      novoexecute(self);
      tbdevolucao.Edit;
      modo := 'M';
      tbitem['defeito'] := 'A';
      edescricaoD.SetFocus;
    end;
  end 
  else 
  begin
    novoexecute(self);
    if venda['td'] = '2' then
      tbitem['defeito'] := 'A'
    else if venda['td'] = '3' then
      tbitem['defeito'] := 'T';
    modo := 'M';
    if edescricaoD.Enabled = True then
      edescricaoD.SetFocus;
  end;
end;

procedure Tfpedido.preenchedescricaoExecute(Sender: TObject);
var
  codinterno, codbarras, codfor, codoriginal, criterio, fabricante, lista, aplic, loclist: string;
  descricaoedit: tdbedit;
  vr:integer;
begin

   fechatg;

  if pagina = '0' then
  begin
    descricaoedit := edescricao;
    lista := 'pedido';
  end 
  else if pagina = '2' then 
  begin
    descricaoedit := edescricaopp;
    lista := 'pedidopp';
  end 
  else if pagina = '3' then
  begin
    descricaoedit := edescricaoD;
    lista := 'pedidod';
  end
  else if pagina = '4' then
  begin
    descricaoedit := edescricaol;
    lista := 'pedidol';
  end;


  if descricaoedit.Text <> '' then
  begin
    if responsavel = 'TOTAL CLEAN' then
      fabricante := ' and fabricante =' +
        quotedstr(venda.FieldByName('fabricante').AsString)
    else
      fabricante := '';


    // criterio para localizar

    if VCinterno then  codInterno := ' or codigo = ' + quotedstr(descricaoedit.Text);

    if VCBarras then  codbarras := ' or codigobarras = ' + quotedstr(descricaoedit.Text);

    if VCFornecedor then  codfor := ' or codigofornecedor = ' + quotedstr(descricaoedit.Text);

    if VCOriginal then   codoriginal := ' or codigooriginal = ' + quotedstr(descricaoedit.Text);

    if responsavel = '12.347.804/0001-40' then aplic := ' or aplicacao = ' + quotedstr(descricaoedit.Text);//termcabos

    if responsavel = '56.297.088/0001-00' then begin //objetiva TD
       codInterno := ' or codigo like ' + quotedstr(descricaoedit.Text+'%');
       codfor := ' or codigofornecedor like ' + quotedstr(descricaoedit.Text+'%');
       codoriginal := ' or codigooriginal like ' + quotedstr(descricaoedit.Text+'%');
    end;


   fdm.sg.Close;

   if ipext <> '' then
      fdm.sg.Connection := fdm.sqext ;


      if (responsavel = 'ARISTEM') and (strisinteger(descricaoedit.Text)) then
            codInterno := ' or codigo = ' + quotedstr(formatfloat('000000',strtofloat(formatnumeric(descricaoedit.Text))));

    with fdm.sg do begin
         Close;
         sql.clear;
         sql.add(  'select "P" as p, tbproduto'+mp+'.* from tbproduto'+MP + '  where (flag <> "D" or flag is null)  and (' +
                   ' descricao = ' + quotedstr(descricaoedit.Text) +
         codinterno + codoriginal + codfor + codbarras + aplic+')' + fabricante);
         Open;

         if fdm.sg.RecordCount >1 then loccampo(nil,fdm.sg,'descricao','codigo','codigofornecedor','codigooriginal');

    end;


    if fdm.sg['codigo'] = null then
       with fdm.sg do begin
            Close;
            sql.Clear;
            sql.Add('select "I" as p, e.chave, e.vrvenda, e.vrunit, e.codigobarras, e.fracao, '+
                    ' e.embalagem, p.* '+
                    ' from tbproduto'+mp+' as p, tbprodlinhapreco as e where p.codigo = e.codigo '+
                    ' and e.codigobarras = ' + quotedstr(descricaoedit.Text));
            Open;
       end;

    if (fdm.sg['codigo'] = null) and (VCOriginal) then
       with fdm.sg do begin
            Close;
            sql.Clear;
            sql.Add('select "P" as p, p.* ' +
                    ' from tbproduto'+mp+' as p, tbcodadicional as e where p.codigo = e.link '+
                    ' and e.codigo = ' + quotedstr(descricaoedit.Text));
            Open;
       end;


    if (tipoempresa = '1') or (gradepreco) then begin//adesivo
       fdm.sg.edit;
       fdm.sg['codigo'] := null;

       if gradepreco then begin
          selecione2('select chave from tbprodgrade where link ='+quotedstr(fdm.sg.fieldbyname('chave').AsString));
          if sqlpub2.RecordCount <=0 then fdm.sg.Cancel;
          sqlpub2 := nil;
       end;

    end;



    if fdm.sg['codigo'] = null then begin
       if venda['tipovenda'] = 'A' then
          vr:=2
       else if venda['tipovenda'] = '3' then
          vr:=3
       else if venda['tipovenda'] = 'C' then
          vr:=4
       else if venda['tipovenda'] = 'P' then
          vr:=5
       else vr:=1;

       if strisinteger(descricaoedit.Text) = true then loclist :='codigo'
                                                  else loclist :='descricao';

       if mp='' then begin
          //termfios
          if responsavel = '12.347.804/0001-40' then
             listagem('descricao','%'+descricaoedit.Text+'%','',5,vr)
          else
             listagem(loclist,descricaoedit.Text,'',5,vr);

       end else
          listagem(loclist,descricaoedit.Text,'',20,vr);


    end;

    if fdm.sg.Active then begin
       if pagina = '2' then
         preencherprodutoppexecute(self)

       {else begin
          if (fdm.sg['kit'] = 'S') and (calccusto) then
             kitcalcexecute(self)}
       else begin
          preencherprodutoexecute(self);
          fechatg;
       end;
       end;

        fdm.sg.Connection := fdm.conector ;

    quantidade := 0;
  end;
end;

procedure Tfpedido.edescricaoKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  keypreview := True;

  if (key = 27)  then
     if peca then begin
        edescricao.Clear;
        btncancelarclick(self);
     end;

  if (key = vk_delete) then
     btnapagarclick(self);


  if (key = 13) and (tipoempresa<>'Z') then
  begin
    txtdig := copy(edescricao.text,1,8);


    preenchedescricaoexecute(self);

    lqtd.Caption := 'F10 =  DIGITA A QUANTIDADE';

    if eqtd.Focused then  begin
      edescricao.SetFocus;
      eqtd.SetFocus;
    end;

    if leitor then 
    begin
      btngravarclick(self);
      btnnovoclick(self);
    end;
  end;
end;

procedure Tfpedido.edescricaodKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  keypreview := True;

  if (key = 27) and (edescricaod.Text = '') then
    btncancelarDclick(self);

  if (key = vk_delete) then
    btnapagarDclick(self);

  if key = 13 then
  begin
    preenchedescricaoexecute(self);

    lqtdD.Caption := 'F10 =  DIGITA A QUANTIDADE';

    if eqtdd.Focused then 
    begin
      edescricaod.SetFocus;
      eqtdd.SetFocus;
    end;

    if leitor then 
    begin
      btngravarDclick(self);
      btnnovoDclick(self);
    end;
  end;
end;

procedure Tfpedido.etm1dExit(Sender: TObject);
begin
  if etm1d.Modified = True then
    totalitemexecute(self);

  etm1d.color := clwhite;
end;

procedure Tfpedido.etm1Exit(Sender: TObject);
begin
  if etm1.Modified = True then
    totalitemexecute(self);
  etm1.color := clwhite;
end;

procedure Tfpedido.etm3Exit(Sender: TObject);
begin
  if etm3.Modified = True then
    totalitemexecute(self);

  etm3.color := clwhite;
end;

procedure Tfpedido.etm3dExit(Sender: TObject);
begin
  if etm3d.Modified = True then
    totalitemexecute(self);

  etm3d.color := clwhite;
end;

procedure Tfpedido.eqtdExit(Sender: TObject);
begin
  eqtd.color := clwhite;

  if eqtd.Modified = True then
    totalitemexecute(self);
end;

procedure Tfpedido.eqtddExit(Sender: TObject);
begin
  eqtdd.color := clwhite;
  if eqtdd.Modified = True then
    totalitemexecute(self);
end;

procedure Tfpedido.edescontorealExit(Sender: TObject);
begin
  if edescontoreal.Modified = True then
  begin
    tbitem['descontopercent'] := roundto(tbitem.FieldByName('descontoreal').AsFloat *
      100 / tbitem.FieldByName('vrunit').AsFloat, - decimais);
    totalitemexecute(self);
  end;

  edescontoreal.color := clwhite;
  edescontoPercent.Modified := False;
end;

procedure Tfpedido.edescontopercentExit(Sender: TObject);
begin
  edescontopercent.color := clwhite;
  if edescontopercent.Modified = True then
  begin
    tbitem['descontoreal'] := tbitem.FieldByName('descontopercent').AsFloat *
      tbitem.FieldByName('vrunit').AsFloat / 100;
    totalitemexecute(self);
  end;
end;

procedure Tfpedido.etotaldExit(Sender: TObject);
begin
  etotalD.color := clwhite;

  if edescricaoD.Enabled = True then
    edescricaoD.SetFocus;
end;

procedure Tfpedido.evrunitExit(Sender: TObject);
begin
  if evrunit.Modified = True then
    totalitemexecute(self);

  evrunit.color := clwhite;
end;

procedure Tfpedido.evrunitdExit(Sender: TObject);
begin
  if evrunitD.Modified = True then
    totalitemexecute(self);

  evrunitD.color := clwhite;
end;

procedure Tfpedido.TabdevolucaoShow(Sender: TObject);
begin

  if servico then
    if btncancelarS.Enabled then
      btncancelarSClick(self);

  if pecapendente then
    if btncancelarpp.Enabled then
      btncancelarppClick(self);

  if peca then
    if btncancelar.Enabled then
      btncancelarClick(self);

  if locacao then
    if btncancelarl.Enabled then
       btncancelarlClick(self);


  pagina := '3';
  tbitem := tbdevolucao;
end;

procedure Tfpedido.etm2Exit(Sender: TObject);
begin
  if etm2.Modified = True then
    totalitemexecute(self);
  etm2.color := clwhite;
end;

procedure Tfpedido.etm2dExit(Sender: TObject);
begin
  if etm2D.Modified = True then
    totalitemexecute(self);
  etm2D.color := clwhite;
end;

procedure Tfpedido.lcompradorClick(Sender: TObject);
begin
         cadp ('tbfautorizado', '', '',
              'nome','nome',
              '','','',
              '','','',
              '','','',
              '',
              '',
              '',
              '',
              2,0);

end;

procedure Tfpedido.Label24Click(Sender: TObject);
begin
  localiza('campo1');
end;

procedure Tfpedido.desativalocalExecute(Sender: TObject);
begin
  if servico then
  begin
    dbgrid2.Enabled := False;
    edescricaoS.Enabled := False;
    edescricaog.Enabled := False;
    emecanico.Enabled := False;
    eqtdS.Enabled := False;
    evrunitS.Enabled := False;
    etotalS.Enabled := False;
    edtentregas.Enabled := false;
    ehoraentregas.Enabled := false;
  end;

  if pecapendente then 
  begin
    dbgrid3.Enabled := False;
    edescricaopp.Enabled := False;
    eqtdpp.Enabled := False;
    evrunitpp.Enabled := False;
    etotalpp.Enabled := False;
  end;

  if peca then 
  begin
    dbgrid1.Enabled := False;
    edescricao.Enabled := False;
    eqtd.Enabled := False;
    evrunit.Enabled := False;

    etotal.Enabled := False;
    eicm.Enabled := false;
    etotalparcial.Enabled := False;
    edescontopercent.Enabled := False;
    edescontoreal.Enabled := False;
    etamanho.Enabled := False;
    ecor.Enabled := False;
    etm1.Enabled := False;
    etm2.Enabled := False;
    etm3.Enabled := False;
    eespecificacao.Enabled := false;
    edtentregue.Enabled := false;
    elocalizacao.Enabled := false;

    

  end;

  if (devolucao) or (troca) then
  begin
    edescricaod.Enabled := False;
    eqtdd.Enabled := False;
    evrunitd.Enabled := False;
    etotald.Enabled := False;
    etamanhod.Enabled := False;
    ecord.Enabled := False;
    etm1d.Enabled := False;
    etm2d.Enabled := False;
    etm3d.Enabled := False;
  end;
end;

procedure Tfpedido.tituloformExecute(Sender: TObject);
var
  st, capprazo: string;
  somadia, qtddia: integer;
begin
  // evita que as percelas caem sábado ou domingo
  if DiaSemana(date) = 'SEGUNDA' then
    somadia := 2
  else 
    somadia := 0;

  if prazo > 0 then 
  begin
    qtddia := trunc(date - venda.FieldByName('data').AsDateTime) - somadia;

    if (qtddia > prazo) and (venda.RecordCount > 0) then
      capprazo := 'Prazo Vencido!!!'
    else
      capprazo := '';
  end;


  if modulo = 'PEDIDO' then 
  begin
    if servico = True then
      st := 'EMISSÃO DE OS/VENDA '
    else
      st := 'EMISSÃO DE PEDIDO ';
  end 
  else if modulo = 'DEVOLUCAO' then
    st := 'DEVOLUÇÃO ' + quotedstr(venda.FieldByName('td').AsString)

  else if modulo = 'TROCA' then
    st := 'TROCA ' + quotedstr(venda.FieldByName('td').AsString)

//  else if modulo = 'CONSIGNADA' then  st := 'VENDA CONSIGNADA '

  else if modulo = 'AVALIACAO' then
    st := 'PROVA '

  else if modulo = 'ORCAMENTO' then
    st := 'EMISSÃO DE ORÇAMENTOS '

  else 
    st := modulo;


  if venda['tipoestoque'] = '1' then
    Caption := st + ' >> LOJA'
  else if venda['tipoestoque'] = '2' then
    Caption := st + ' >> DEPÓSITO'
  else if venda['tipoestoque'] = '3' then
    Caption := st + ' >> MATÉRIA-PRIMA'
  else
    Caption := st + ' >> ' + venda.FieldByName('tipoestoque').AsString;


  if venda.FieldByName('tipoestoque').AsString = '3' then
    MP := 'MP'
  else
    MP := '';

  Caption := Caption + '        ' + capprazo;
end;

procedure Tfpedido.etotaldKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if (key = 13) and (edescricaoD.Text <> '') and (eqtdD.Text <> '') and
    (etotalD.Text <> '') then
  begin
    btngravarDClick(self);
    btnnovoDClick(self);
    keypreview := False;
    if edescricaoD.Enabled = True then
      edescricaoD.SetFocus;
  end;
end;

procedure Tfpedido.btnbdClick(Sender: TObject);
var
  letra, IMP: string;
begin
  if vendaitem['chave'] = null then
  begin
    Application.MessageBox('Você não tem registro selecionado!',
      'Erro', 0 + MB_ICONerror);
    abort;
  end;


  imp := '1';
  if inputquery('Imprimir', 'Digite uma opção de impressão:' + #13 + #13 +
    '1 = Bonificação' + #13 +
    '2 = Doação' + #13 +
    '3 = Nenhum' + #13 +
    'Esc = Cancela', imp) then 
  else 
    abort;

  if (imp <> '1') and (imp <> '2') and (imp <> '3') then abort;

  if imp = '1' then letra := 'B'
  else if imp = '2' then letra := 'D'
  else if imp = '3' then letra := '';

  with fdm.query1 do 
  begin
    Close;
     sql.clear;
    if letra = '' then
             sql.add(  'update vendaitem set bonificacao = null ' +
        ' where chave = ' + (vendaitem.FieldByName('chave').AsString))
    else
       sql.add( 'update vendaitem set bonificacao = ' + quotedstr(letra) +
        ' where chave = ' + (vendaitem.FieldByName('chave').AsString));

    execsql;
  end;

  vendaitem.Cancel;
  vendaitem.refresh;
  ShowMessage('Ok!');
end;

procedure Tfpedido.comboDropDown(Sender: TObject);
begin
            if combo.ItemIndex <1 then
               refazcomboexecute(self);
end;

procedure Tfpedido.Label28Click(Sender: TObject);
begin
          localiza('fone');
end;

procedure Tfpedido.DBGrid1DblClick(Sender: TObject);
var
ini:tinifile;
lin,col,i:integer;
espaco:string;                                    
begin
        if responsavel = 'RIBERCRYL' then begin
           cabecaimpressao(fpedido,false);

           Ini := TInifile.Create(conf_local);

           //////fab
           lin := Ini.Readinteger('ribercryl', 'fabricacaol', 20);
           col := Ini.Readinteger('ribercrylc', 'fabricacaoc', 24);

           for i := 1 to lin do
               memo1.Lines.Add(' ');

           espaco :='';
           for i := 1 to col do
               espaco := espaco + ' ';

           espaco := espaco + vendaitem.fieldbyname('dtentregue').AsString;

           //////validade
           for i := 1 to (col+7) do
               espaco := espaco + ' ';

           memo1.Lines.Add(espaco+vendaitem.fieldbyname('datadevolucao').AsString);


           //////pesob
           for i := 1 to 1 do
               memo1.Lines.Add(' ');

           espaco :='';
           for i := 1 to (col-9) do
               espaco := espaco + ' ';

           espaco := espaco + inttostr(vendaitem.fieldbyname('tm2').asinteger);

           //////pesol
           for i := 1 to (col+23) do
               espaco := espaco + ' ';

           memo1.Lines.Add(espaco+inttostr(vendaitem.fieldbyname('tm3').asinteger));


           ///////lote
           for i := 1 to 1 do
               memo1.Lines.Add(' ');

           espaco :='';
           for i := 1 to (col-16) do
               espaco := espaco + ' ';

           memo1.Lines.Add(espaco+vendaitem.fieldbyname('tamanho').AsString);

          ini.Free;
          rodapeimpressao(false,false);

    end;
end;




procedure Tfpedido.efoneEnter(Sender: TObject);
begin
           enome.modified := false;
           efone.Color := clinfobk;
end;

procedure Tfpedido.cbordermClick(Sender: TObject);
begin
        case cborderm.ItemIndex of
             0:vendaitem.IndexFieldNames := 'link;modo;item';
             1:vendaitem.IndexFieldNames := 'link;modo;codigo';
             2:vendaitem.IndexFieldNames := 'link;modo;descricao';
        end;
end;

procedure Tfpedido.SpeedButton2Click(Sender: TObject);
var
st:string;
begin
        abortaacao(nil,tbitem,'codigo','','','','',0);
        codloc:='1';
        st :=msgi('Informação do produto atribuído ao:'+#13+#13+
                  '1 = Cliente  '+ #13+ '2 = Produto' ,2);

        if st = '2' then periodo2('consultaprod',vendaitem.fieldbyname('codigo').AsString,'','','','',450,560,0)

        else cpcli(venda.fieldbyname('codigo').AsString,
              venda.fieldbyname('nome').AsString,
              tbitem.fieldbyname('codigo').AsString,
              tbitem.fieldbyname('descricao').AsString);
end;

procedure Tfpedido.etotalExit(Sender: TObject);
begin
        etotal.color := clwhite;
        
end;

procedure Tfpedido.eicmExit(Sender: TObject);
begin

        eicm.color := clwhite;
        if (edescricao.Enabled) and(not iso) then edescricao.SetFocus;

end;

procedure Tfpedido.eicmKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
       if (not iso) and
           (key = 13) and
           (edescricao.Text <> '') and
           (eqtd.Text <> '') and
           (etotal.Text <> '') then
        begin
          btngravarClick(self);

          if responsavel <> 'RIBERCRYL' then begin
             btnnovoClick(self);
             keypreview := False;
          end;

          if edescricao.Enabled = True then begin
             eqtd.SetFocus;
             vendaitem.edit;
             vendaitem['descricao'] := txtdig;
             edescricao.SetFocus;
          end;
        end;

end;

procedure Tfpedido.etotalparcialExit(Sender: TObject);
begin
          etotalparcial.color := clwhite;
end;

procedure Tfpedido.novoorcExecute(Sender: TObject);
var
chave : string;
custo, qtditem, total : double;
begin


        grava(venda,nil, 'venda');
        selecione('select max(chave)as chave from venda');
        chave := sqlpub.fieldbyname('chave').AsString;

        custo :=0;
        qtditem :=0;
        total :=0;
        vendaitem.first;


        while not vendaitem.eof do begin
              vendaitem.edit;

              if vendaitem.fieldbyname('gerar').AsFloat > 0 then begin
                 vendaitem['link'] := chave;
                 vendaitem['qtd'] := vendaitem.fieldbyname('gerar').AsFloat;
                 vendaitem['total'] := (vendaitem.fieldbyname('vrunit').AsFloat-
                                        vendaitem.fieldbyname('descontoreal').AsFloat) *
                                        vendaitem.fieldbyname('gerar').AsFloat;

                 custo := custo + vendaitem.fieldbyname('gerar').AsFloat *
                                  vendaitem.fieldbyname('custo').AsFloat;

                 qtditem := qtditem + vendaitem.fieldbyname('gerar').AsFloat ;

                 total := total + vendaitem.fieldbyname('total').AsFloat;
                 grava(vendaitem,nil,'vendaitem');

              end;

              vendaitem.Cancel;
              vendaitem.next;
           end;


              vendaitem.first;
              while not vendaitem.Eof do begin
                 if vendaitem.fieldbyname('qtd').AsFloat <>
                    vendaitem.fieldbyname('gerar').AsFloat then begin
                    vendaitem.Edit;
                    vendaitem['qtd'] := vendaitem.fieldbyname('qtd').AsFloat -
                                        vendaitem.fieldbyname('gerar').asfloat;
                    totalitemExecute(self);
                    altera(vendaitem, nil, 'vendaitem');
                 end
                  else selecione('delete from vendaitem where chave = ' +
                               quotedstr(vendaitem.fieldbyname('chave').AsString));
                 vendaitem.Next;
              end;

              vendaitem.close;
              vendaitem.open;
              totalizarexecute(self);


        selecione('update venda set '+
                  ' custo = ' + realdblstr(custo)+
                  ', custol = ' + realdblstr(custo)+
                  ', vendal = ' + realdblstr(custo)+
                  ', totalitem = ' + realdblstr(qtditem)+
                  ', totalpeca = ' + realdblstr(total)+
                  ', totalparcial = ' + realdblstr(total)+
                  ', total = ' + realdblstr(total)+
                  ', totalipi = ' + realdblstr(total)+
                  ', totalservico = null'+
                  ', devolucao = null'+
                  ', descontopercent = null'+
                  ', descontoreal = null'+
                  ', acrescimo = null'+
                  ', vrcomissao = null'+
                  ', dinheiro = null'+
                  ', cheque = null'+
                  ', chequepre = null'+
                  ', cartao = null'+
                  ', credito = null'+
                  ', fiado = null'+
                  ' where chave = '+quotedstr(chave));

             venda.Cancel;
             venda.Refresh;
             venda.Locate('chave',chave,[]);
             
end;

procedure Tfpedido.lorcClick(Sender: TObject);
begin
           periodo2('taborcqtd','','','','','',125,485,1);
           vendaitem.Close;
           vendaitem.Open;
           formatarexecute(self);
end;

procedure Tfpedido.saldoclienteExecute(Sender: TObject);
        procedure gv(Descricao:string;Valor:double);
        begin
             fdm.tbquery1.Insert;
             fdm.tbquery1['chave'] :=fdm.tbquery1.RecNo;
             fdm.tbquery1['Descricao'] :=Descricao;
             fdm.tbquery1['Valor'] := Valor;
             fdm.tbquery1.post;
        end;


var
   dtini, dtfin,codigo:string;
   total,credito,limitecredito:real;
   dias:integer;
begin


        credito := fdm.sg.fieldbyname('credito').AsFloat;
        limitecredito := fdm.sg.fieldbyname('limitecredito').AsFloat;
        codigo := fdm.sg.fieldbyname('codigo').asstring;
          selecione('select sum(total)as total from tbpedido where codigo = '+ quotedstr(codigo));

          total := sqlpub.fieldbyname('total').AsFloat;

          selecione('select sum(total)as total from venda where codigo = '+quotedstr(codigo));

          fdm.query1.close;
          fdm.query1.sql.clear;
          fdm.query1.sql.add('select Chave, nome as Descricao, saldo as Valor from tbcliente limit 0');
          fdm.tbquery1.close;
          fdm.tbquery1.open;

          gv('SOMA DAS VENDAS', total + sqlpub.fieldbyname('total').asfloat);

          selecione('select min(data) as dataini, max(data) as datafin from '+
                   'tbpedido where codigo = '+  quotedstr(codigo));
          dias := trunc( sqlpub.fieldbyname('datafin').asdatetime - sqlpub.fieldbyname('dataini').asdatetime);

          if dias >= 30 then begin

               //media a cada 30 dias
               selecione('select sum(total/' + inttostr(dias) +' * 30 ) as total'+
                         ' from tbpedido where codigo = ' +  quotedstr(codigo));

               gv('MÉDIA POR COMPRA', sqlpub.fieldbyname('total').asfloat);
       end;


       dtini := formatdatetime('yyyy/mm/dd', date);
       dtfin := formatdatetime('yyyy/mm/dd', date-30);


              //ultimo 30
       selecione('select sum(total) as total from tbpedido where codigo = '+
                      quotedstr(codigo)+ ' and data between ' +
                      quotedstr(dtini) + ' and '+ quotedstr(dtini));

       total := sqlpub.fieldbyname('total').AsFloat;

       selecione('select sum(total) as total from venda where codigo = '+
                      quotedstr(codigo)+
                      ' and data between ' + quotedstr(dtini) + ' and '+ quotedstr(dtini));

       total := total + sqlpub.fieldbyname('total').AsFloat;

        selecione('select sum(total) as total from tbmesa where codigo = '+
                      quotedstr(codigo)+ ' and data between ' +
                      quotedstr(dtini) + ' and '+ quotedstr(dtini));

               gv('ÚLTIMOS 30 DIAS', total+sqlpub.fieldbyname('total').asfloat);

       //som as compras
       selecione('select sum(total)as total from tbpedido where avulso ="S" and codigo = '+
                       quotedstr(codigo));

       total := sqlpub.fieldbyname('total').asfloat;

       //som as compras
       selecione('select sum(total)as total from tbnota where modo ="P" and codigo = '+
                       quotedstr(codigo));

      gv('VENDAS EM ABERTO', total+sqlpub.fieldbyname('total').asfloat);

       total := total + sqlpub.fieldbyname('total').asfloat;


       //conta receber
        selecione('select sum(diferenca) as total from tbreceber where codigo = '+
                      quotedstr(codigo));

      gv('CONTA A RECEBER', sqlpub.fieldbyname('total').asfloat);

       total := total + sqlpub.fieldbyname('total').asfloat;

      gv('SALDO DEVEDOR', total);
      gv('CRÉDITO', credito);
      gv('LIMITE CRÉDITO', limitecredito);

      (fdm.tbquery1.FieldByName('valor') as tfloatfield).displayformat := '###,##0.00';
      reltb(fdm.tbquery1,'INFORMAÇÕES: '+venda.fieldbyname('nome').AsString,'','','','','','','','','','','','','','');

      fdm.tbquery1.close;
end;

procedure Tfpedido.servicosprestadosExecute(Sender: TObject);
var
campo1_cap,campo2,campo2_cap,codigo:string;
begin
          codigo := fdm.sg.fieldbyname('codigo').asstring;

          fdm.tbconfig.open;
          if fdm.tbconfig['tipoempresa'] = 'A' then begin
             campo1_cap := 'VEICULO';
             campo2_cap := 'PLACA';
             campo2 := 'campo8';
          end else if fdm.tbconfig['tipoempresa'] = 'I' then begin
             campo1_cap := 'MAQUINA';
             campo2_cap := 'CONT. ANTERIOR';
             campo2 := 'campo6';
          end else if fdm.tbconfig['tipoempresa'] = '9' then begin
             campo1_cap := 'ANIMAL';
             campo2_cap := 'RACA';
             campo2 := 'campo4';
          end else if fdm.tbconfig['tipoempresa'] = 'E' then begin
             campo1_cap := 'APARELHO';
             campo2_cap := 'MARCA';
             campo2 := 'campo2';
          end;

          fdm.query1.close;
          fdm.query1.sql.clear;

          fdm.query1.sql.add('select chave, campo1 as ' + campo1_cap + ', '+
                           campo2+' as '+campo2_cap+'  , nome as SERVICO, DATA from tbpedido limit 0');

          fdm.tbquery1.close;
          fdm.tbquery1.open;

          fdm.query1.sql.clear;
          fdm.query1.sql.add('select chave, campo1 as ' + campo1_cap + ', '+
                           campo2+' as '+campo2_cap+'  , servico, data from tbpedido '+
                           ' where servico is not null and codigo = ' + quotedstr(codigo) + ' order by data');
          fdm.query1.open;

          while not fdm.Query1.Eof do begin
             fdm.tbquery1.Insert;
             fdm.tbquery1['chave'] :=fdm.tbquery1.RecNo;
             fdm.tbquery1[campo1_cap] :=fdm.Query1.fieldbyname(campo1_cap).AsString; ;
             fdm.tbquery1[campo2_cap] :=fdm.Query1.fieldbyname(campo2_cap).AsString; ;
             fdm.tbquery1['servico'] :=fdm.Query1.fieldbyname('servico').AsString; ;
             fdm.tbquery1['data'] :=fdm.Query1.fieldbyname('data').asdatetime; ;
             fdm.tbquery1.post;
             fdm.Query1.Next;
          end;

          fdm.Query1.Close;
          reltb(fdm.tbquery1,'SERVIÇOS PRESTADOS: '+venda.fieldbyname('nome').AsString,'','','','','','','','','','','','','','');
          fdm.tbconfig.close;
          fdm.tbquery1.close;
end;

procedure Tfpedido.expexcelExecute(Sender: TObject);
var
list:tstrings;
i:integer;
d1,d2,d3,st:string;
total:double;
begin

              st :='';
              if inputquery('Valor 1', 'Digite a % para o novo valor (C/DESC):', d1) then else abort;
              if inputquery('Valor 2', 'Digite a % para o novo valor (C/DESC):', d2) then else abort;
              if inputquery('Valor 3', 'Digite a % para o novo valor (C/DESC):', d3) then else abort;

              if strisfloat(d1)=false then d1:='';
              if strisfloat(d2)=false then d2:='';
              if strisfloat(d3)=false then d3:='';

             if d1 <> '' then
                st := '	'+'Desconto: '+d1+'%';

             if d2 <> '' then
                st := st + '	'+'Desconto: '+d2+'%';

             if d3 <> '' then
                st := st + '	'+'Desconto: '+d3+'%';


             list := tstringlist.Create;

             fdm.tbempresa.Open;
             list.Add(fantasiaempresa);
             list.Add('Endereço: ' + fdm.tbempresa.fieldbyname('Endereco').AsString + ' - '+
                         fdm.tbempresa.fieldbyname('numero').AsString + '   '+
                         fdm.tbempresa.fieldbyname('Complemento').AsString + ' - '+
                         '   Bairro: ' + fdm.tbempresa.fieldbyname('bairro').AsString);



               list.Add('Cidade: '+fdm.tbempresa.fieldbyname('municipio').AsString+
                        '   UF: ' + fdm.tbempresa.fieldbyname('uf').AsString +
                        '   CEP: '+  fdm.tbempresa.fieldbyname('cep').AsString);

               list.Add('Fone/Fax: (' + fdm.tbempresa.fieldbyname('ddd').AsString +') '+
                                        fdm.tbempresa.fieldbyname('fone1').AsString + '   -   '+
                                       '(' + fdm.tbempresa.fieldbyname('ddd').AsString +') '+
                                        fdm.tbempresa.fieldbyname('fax').AsString);

               list.Add('CNPJ: ' + fdm.tbempresa.fieldbyname('cnpj').AsString+
                        '  IE: '+ fdm.tbempresa.fieldbyname('ie').AsString) ;

               list.Add('E-Mail: ' + fdm.tbempresa.fieldbyname('email').AsString+
                        '   Site: ' + fdm.tbempresa.fieldbyname('site').AsString);
               list.Add(' ');
               list.Add('------------------------------------------------------------------------------------------------------------------------------------------------');
               list.Add(' ');
               fdm.tbempresa.Close;


             list.Add('Cód/Cliente: ' + venda.fieldbyname('codigo').AsString + ' - '+
                         venda.fieldbyname('nome').AsString + '   ('+
                         venda.fieldbyname('nomecurto').AsString + ')');

             list.Add('CNPJ: '+ venda.fieldbyname('cnpj').AsString +
                      '  IE: '+ venda.fieldbyname('ie').AsString);

             list.Add('End: '+venda.fieldbyname('Endereco').AsString + ' - '+
                              venda.fieldbyname('municipio').AsString + ' - '+
                              venda.fieldbyname('bairro').AsString);
             list.Add('Fone: '+venda.fieldbyname('Fone').AsString);

             list.Add(' ');
             list.Add('------------------------------------------------------------------------------------------------------------------------------------------------');
             list.Add('Código'+ '	'+'Descrição'+ '	'+'Qtd'+ '	'+'Valor'+ '	'+'Desconto'+ '	'+'Total' +st);


             st :='';


             //nome das colunas
             vendaitem.First;
             while not vendaitem.Eof do begin

                total := vendaitem.fieldbyname('vrunit').asfloat *
                         vendaitem.fieldbyname('qtd').asfloat;
                st :='';
                if d1 <> '' then
                   st := st+'	'+floattostr(total-(total* strtofloat(d1)/100));
                if d2 <> '' then
                   st := st+'	'+floattostr(total-(total* strtofloat(d2)/100));
                if d3 <> '' then
                   st := st+'	'+floattostr(total-(total* strtofloat(d3)/100));

                  list.Add(vendaitem.fieldbyname('codigo').AsString+
                           '	'+vendaitem.fieldbyname('descricao').AsString+
                           '	'+vendaitem.fieldbyname('qtd').AsString+
                           '	'+vendaitem.fieldbyname('vrunit').AsString+
                           '	'+vendaitem.fieldbyname('descontoreal').AsString+
                           '	'+vendaitem.fieldbyname('total').AsString+st);
                  vendaitem.Next;
             end;

             list.Add(' ');
             list.Add('------------------------------------------------------------------------------------------------------------------------------------------------');
             i := list.Count;

             st :='';
             if (d1 <> '') or (d2 <> '') or (d2 <> '')  then begin
                st :=st+ '	'+'=SOMA(G17:G'+inttostr(i)+')';
                st :=st+ '	'+'=SOMA(H17:H'+inttostr(i)+')';
                st :=st+ '	'+'=SOMA(I17:I'+inttostr(i)+')';
             end;


             list.Add('TOTAIS'+'	'+'	'+'=SOMA(C17:C'+inttostr(i)+')'+'	'+'	'+'	'+'=SOMA(F17:F'+inttostr(i)+')'+st);

             list.SaveToFile('c:\impexcel.xls');
             ShellExecute(Handle, 'Open', 'c:\impexcel.xls', '', Nil, sw_ShowMaximized);

end;

procedure Tfpedido.Label42Click(Sender: TObject);
begin

  permissaovenda;
  if (modulo = 'ORCAMENTO')  then
  begin
    application.CreateForm(tfacerto, facerto);

    facerto.tbform := venda;
    facerto.tbformi := vendaitem;
    facerto.tbformd := tbdevolucao;
    facerto.tbforms := vendaservico;

    facerto.tabela.CreateDataSet;
    facerto.tabela.Open;
    facerto.tabela.insert;
    facerto.tabela['codigo'] := venda.FieldByName('codigo').AsInteger;
    facerto.tabela['chave'] := venda.FieldByName('chave').AsInteger;
    facerto.tabela['nome'] := venda.FieldByName('nome').AsString;

    facerto.controle := 'orcamento';
    facerto.tabela['totalparcial'] := venda.FieldByName('totalparcial').AsFloat;
    facerto.tabela['totalpeca'] := venda.FieldByName('totalpeca').AsFloat;
    facerto.tabela['total'] := venda.FieldByName('total').AsFloat;

    if venda.FieldByName('descontoreal').AsFloat > 0 then
    begin
      facerto.tabela['descontoreal'] := venda.FieldByName('descontoreal').AsFloat;
      facerto.tabela['descontopercent'] := venda.FieldByName('descontopercent').AsFloat;
      facerto.descrat := venda.FieldByName('descontoreal').AsFloat;

    end;

    if venda.FieldByName('acrescimo').AsFloat > 0 then
      facerto.tabela['acrescimo'] := venda.FieldByName('acrescimo').AsFloat;

    btneditargrupoclick(self);
    venda.edit;
    facerto.ShowModal;
    btngravargrupoClick(self);
    totalizarExecute(self);


  end;

end;


procedure Tfpedido.eserieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
       with sender as tdbedit do
            if (key = 13)  and
               (Modified) and
               (Text <> '') then
                chamatb('serie',text,'',22);
end;

procedure Tfpedido.kitcalcExecute(Sender: TObject);
var
codigo:string;
i:integer;
begin
        codigo := fdm.sg.fieldbyname('CodigoBarras').AsString;
        btncancelarclick(self);
        fechatg;

        with fdm.sg do begin
             sql.Clear;
             sql.Add('SELECT  "P" as p, p.*, k.Qtd, k.vrvenda as vdkit '+
                     ' FROM TbKit as kg, TbKitItem as k, TbProduto as p '+
                     ' WHERE k.Link = kg.Chave and p.CodigoBarras = k.Codigo AND kg.EAN = '+quotedstr(codigo)+
                     ' order by codigo');
             open;

             if RecordCount =0 then begin
                msg('Este produto está marcado "KIT" mas não tem itens montados.',0);
                fechatg;
                abort;
             end;

             for i := 1 to RecordCount do begin

                 btnnovoclick(self);
                 preencherprodutoExecute(self);
                 vendaitem['qtd'] := fieldbyname('Qtd').AsFloat;
                 vendaitem['vrunit'] := fieldbyname('vrvenda').AsFloat;

                 if fieldbyname('vrvenda').AsFloat > fieldbyname('vdkit').AsFloat then
                    vendaitem['descontoReal'] := fieldbyname('vrvenda').AsFloat - fieldbyname('vdkit').AsFloat;

                 edescontorealExit(self);
                 btngravarClick(self);
                 next;

             end;

        end;

end;

procedure Tfpedido.atuatbExecute(Sender: TObject);
begin
        if pecapendente then begin
          tbpp.Cancel;
          tbpp.refresh;
        end;

        if servico then vendaservico.close;
        if (devolucao) or (troca) then tbdevolucao.close;

        tblocacao.Close;
        vendaitem.close;
        venda.close;
        venda.open;
        vendaitem.open;

        if servico then vendaservico.open;
        if (devolucao) or (troca) then tbdevolucao.open;
        if locacao then tblocacao.open;

        formatarexecute(self);
end;

procedure Tfpedido.f12_clibalcaoExecute(Sender: TObject);
begin
      fazvenda(12);
end;

procedure Tfpedido.delitemExecute(Sender: TObject);
begin
        if (pagina='0') and (btngravar.Enabled=false) then  btnapagarclick(self);
        if (pagina='1') and (btngravarS.Enabled=false) then  btnapagarSClick(self);
        if (pagina='3') and (btngravarD.Enabled=false) then  btnapagarDClick(self);

end;

procedure Tfpedido.lfpgtoClick(Sender: TObject);
var
st:string;
begin
         st:= 'select chave, descricao, Conta, codigo, comissao,  venc1, venc2, venc3, venc4, venc5, venc6, tipopgto from tbcondfatura ';

         cadp ('tbcondfatura', st, '',
              'codigo','descricao',
              'Conta','tbconta','descricao',
              'tipopgto','','A VISTA,A PRAZO,CART C,CART D,CHEQUE',
              '','','',
              'codigo',
              '',
              '',
              '',
              1,0);

           combosExecute(self);   

end;

procedure Tfpedido.Label39Click(Sender: TObject);
begin

     localiza('spedido');

end;

procedure Tfpedido.f6Execute(Sender: TObject);
var
codigo:string;
begin
                  codigo := msgi('Digite as iniciais da descricao e tecle Enter.',0);
                  listagem('descricao',codigo,'',5,0);
                  fechatg;


end;

procedure Tfpedido.edescricaogEnter(Sender: TObject);
begin
        keypreview := false;
end;

procedure Tfpedido.edescricaogExit(Sender: TObject);
begin
        keypreview := true;
end;

procedure Tfpedido.eespecificacaoExit(Sender: TObject);
begin
        keypreview := true;
end;

procedure Tfpedido.eespecificacaoEnter(Sender: TObject);
begin
        keypreview := false;
end;

procedure Tfpedido.edtentregueExit(Sender: TObject);
begin
        if (edescricao.Enabled) and(not iso) then edescricao.SetFocus;
end;

procedure Tfpedido.edtentregueKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
        if (key = 13) and
           (edescricao.Text <> '') and
           (eqtd.Text <> '') and
           (etotal.Text <> '') then begin
           btngravarClick(self);

          if edescricao.Enabled = True then begin
             eqtd.SetFocus;
             vendaitem.edit;
             vendaitem['descricao'] := txtdig;
             edescricao.SetFocus;
          end;
        end;

end;

procedure Tfpedido.importarvendaExecute(Sender: TObject);
begin

        impdados := true;
        abortar(enome);
        btncancelargrupoClick(self);

        with fdm.Query2 do begin
             sql.Clear;
             sql.Add('select * from FSPEDIDOCAB where LIBERADO = "S" and SINCRONIZADO = "N" order by datapedido');
             open;
             if RecordCount <=0 then begin
                msg('Nenhuma venda para importar.',0);
                close;

             end else if not msg('Deseja importar os dados?',2) then abort;
        end;


        while not fdm.Query2.Eof do begin

              btnnovogrupoClick(self);
              venda.edit;
              venda['codigo'] := fdm.Query2.fieldbyname('codigocliente').asinteger;

              with fdm.sg do begin
                   sql.Clear;
                   sql.Add('select * from tbcliente where codigo = ' +
                           venda.fieldbyname('codigo').AsString);
                   open;
              end;

              preencherclienteExecute(self);
              venda['spedido'] :=  fdm.Query2.fieldbyname('numeropedido').AsString;
              venda['obs'] :=  tiraacento(fdm.Query2.fieldbyname('observacao1').AsString);
              venda['data'] :=  fdm.Query2.fieldbyname('datapedido').AsDateTime ;
              venda['codigovendedor'] :=  fdm.Query2.fieldbyname('vendedor').AsInteger ;

              selecione('select descricao from tbcondfatura where codigo = ' +
                         inttostr(fdm.Query2.fieldbyname('codcondpgto').asinteger));
              if sqlpub.recordcount >0 then
                 venda['formapgto'] := sqlpub.fieldbyname('descricao').AsString;

              selecione('select nome from tbfuncionario where codigo = ' +
                         inttostr(fdm.Query2.fieldbyname('vendedor').asinteger));
              if sqlpub.recordcount >0 then
                 venda['vendedor'] := sqlpub.fieldbyname('nome').AsString;

              sqlpub := nil;

              btngravargrupoClick(self);
              PageControl1.ActivePageIndex :=0;
              with fdm.Query1 do begin
                   sql.Clear;
                   sql.add('select * from FSPEDIDOITENS where numeropedido = ' + quotedstr(venda.fieldbyname('spedido').AsString));
                   open;

                   while not fdm.Query1.eof do begin
                         btnnovoClick(self);
                         vendaitem['codigo'] := fdm.Query1.fieldbyname('codigoproduto').AsString;

                         with fdm.sg do begin
                              sql.Clear;
                              sql.Add('select "P" as p, tbproduto'+mp+'.* from tbproduto where codigo = ' +
                              vendaitem.fieldbyname('codigo').AsString);
                              open;
                         end;


                         preencherprodutoExecute(self);
                         vendaitem['qtd'] := fdm.Query1.fieldbyname('quantidade').AsFloat;

                         if fdm.Query1.fieldbyname('desconto').AsFloat >0 then begin
                            vendaitem['vrunit'] := fdm.Query1.fieldbyname('precotabela').AsFloat;
                            vendaitem['descontoreal'] := fdm.Query1.fieldbyname('precotabela').AsFloat -
                                                         fdm.Query1.fieldbyname('precovenda').AsFloat;
                            vendaitem['descontopercent'] := fdm.Query1.fieldbyname('desconto').AsFloat;

                         end else
                            vendaitem['vrunit'] := fdm.Query1.fieldbyname('precovenda').AsFloat;

                         vendaitem['data'] := venda.fieldbyname('data').AsDateTime;
                         totalitemExecute(self);
                         btngravarClick(self);
                        fdm.Query1.Next;
                   end;

                   totalizarexecute(self);
                   selecione('update FSPEDIDOCAB set SINCRONIZADO = "S" where numeropedido = ' +
                             quotedstr(venda.fieldbyname('spedido').AsString));

              end;

              fdm.Query2.Next;
        end;
        impdados := false;
end;

procedure Tfpedido.enumeroDblClick(Sender: TObject);
var
nant,i:string;
begin
        if responsavel='12.347.804/0001-40' then begin

            abortaacao(nil,venda,'chave','','','','',0);
            nant := venda.fieldbyname('numero').AsString;
            senhagerencial(modulo,'DIGITE A SENHA GERENCIAL:','ALTERAR NÚMERO VENDA!');

            i := msgi('Digite o novo número:',2);

            selecione('select chave from tbpedido where numero = '+quotedstr(i));

            if sqlpub.RecordCount >0 then msg('#Já tem uma venda com este número.',0);

            selecione('update tbpedido set numero = '+quotedstr(i)+ ' where numero = '+quotedstr(nant));
            selecione('update venda set numero = '+quotedstr(i)+ ' where numero = '+quotedstr(nant));
            nant := venda.fieldbyname('chave').AsString;
            venda.Cancel;
            venda.Refresh;
            venda.Locate('chave',nant,[]);
            btngravargrupoClick(self);
        end;

end;

procedure Tfpedido.DBEdit16KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (key = 13)  and
           (DBEdit16.Modified) and
           (DBEdit16.Text <> '') then begin

           selecione('select campo8, campo5, campo1, campo4, campo2, campo6, campo7, campo3, campo9 from tbpedido where campo8 = '+ quotedstr(venda.fieldbyname('campo8').AsString));

           venda.edit;
           venda['campo5'] := sqlpub.fieldbyname('campo5').AsString;
           venda['campo1'] := sqlpub.fieldbyname('campo1').AsString;
           venda['campo4'] := sqlpub.fieldbyname('campo4').AsString;
           venda['campo2'] := sqlpub.fieldbyname('campo2').AsString;
           venda['campo6'] := sqlpub.fieldbyname('campo6').AsString;
           venda['campo7'] := sqlpub.fieldbyname('campo7').AsString;
           venda['campo3'] := sqlpub.fieldbyname('campo3').AsString;
           venda['campo9'] := sqlpub.fieldbyname('campo9').AsInteger;
        end;




end;

procedure Tfpedido.f11_clicadExecute(Sender: TObject);
begin

      fazvenda(11);

end;

procedure Tfpedido.btconsignadaClick(Sender: TObject);
var
codant,i:integer;
sq:tzquery;
codInterno,codcli,scr:string;
begin
      
      btncancelargrupoclick(self);

      codloc := '';
      vf:=false;
      periodo2('consignada','V','','','','',546,784,0);
      scr:=codloc;
      selecione('update vendaitem v, tbfuncionario f set v.codigovendedor= f.codigo  where v.fabricante = f.nome and v.codigovendedor is null and v.link<0');

      if not vf then abort;


      sq := tzquery.Create(application);
      with sq do begin
           Connection := fdm.conector;
           sql.Clear;
           sql.Add('select chave, codigo, codigocliente, qtd, vrunit, codigovendedor, '+
                   ' fabricante as vendedor from vendaitem ' + codloc + ' and (qtd>0) order by codigo');
           open;
      end;

      codant := codigobalcao;
      codigobalcao := sq.fieldbyname('codigocliente').AsInteger;
      codcli := inttostr(codigobalcao);
      fazvenda(12);
      codigobalcao := codant;

      venda.edit;
      venda['codigovendedor'] := sq.fieldbyname('codigovendedor').AsInteger;
      venda['vendedor'] := sq.fieldbyname('vendedor').AsString;
      altera(venda, nil,'venda');

      for i := 1 to sq.RecordCount do begin

          if responsavel = 'ARISTEM' then
              codInterno := formatfloat('000000',strtofloat(formatnumeric(sq.fieldbyname('codigo').AsString)))
          else codInterno := sq.fieldbyname('codigo').AsString;

          with fdm.sg do begin
               sql.clear;
               sql.add('select "P" as p, tbproduto.* from tbproduto where codigo = '+ quotedstr(codInterno));
               Open;

               btnnovoclick(self);
               try
                   preencherprodutoExecute(self);
                   vendaitem['qtd'] := sq.fieldbyname('Qtd').AsFloat;
                   vendaitem['vrunit'] := sq.fieldbyname('vrunit').AsFloat;
                   totalitemExecute(self);
                   //showmessage(sq.fieldbyname('codigo').AsString+'-'+floattostr(sq.fieldbyname('Qtd').AsFloat)+'-'+ floattostr(sq.fieldbyname('vrunit').AsFloat));
                   btngravarClick(self);
               except msg('#O produto código '+sq.FieldByName('codigo').AsString +
                     ' não foi localizado no cadastro.'+#13+
                     ' Verifique o problema, exclua esta venda e gere novamente.',0);
               end;

               alimentaestoque(sq.FieldByName('codigo').AsString , sq.FieldByName('qtd').AsFloat, '1',
                               vendaitem.FieldByName('chavegrade').AsInteger);

          end;

         sq.next;

     end;

     vf:=false;
     codloc :='';
     sq.Destroy;

     selecione('delete from vendaitem '+scr+' or (codigo is null) or ((qtd=0) and(link <=0) and (codigocliente='+quotedstr(codcli)+'))');
     selecione('update venda set consig = "S" where chave = '+quotedstr(venda.fieldbyname('chave').AsString));

     vendaitem.Cancel;
     vendaitem.Refresh;

     venda.edit;
     venda['consig'] := 'S';
     btnreceberClick(self);
     

end;

procedure Tfpedido.vendaitemAfterScroll(DataSet: TDataSet);
begin
     margemitemexecute(self);
end;

procedure Tfpedido.margemitemExecute(Sender: TObject);
var
perc:double;
begin
      if responsavel <>'47.030.085/0001-14' then begin
          if (vendaitem.FieldByName('vrunit').AsFloat >0) and (vendaitem.FieldByName('custo').AsFloat>0) then
             perc:= (vendaitem.FieldByName('vrunit').AsFloat *100 / vendaitem.FieldByName('custo').AsFloat) -100
          else perc :=0;

          lmg.caption := 'Mg: ' + format('%n', [perc]) + '%';
      end;
end;

procedure Tfpedido.BitBtn1Click(Sender: TObject);
var
sq5:tzquery;
begin

        sq5  := tzquery.Create(application);


        with sq5 do begin
             Connection := fdm.conector;
             sql.Add('select chave, numero from venda where modo = "P" or modo = "T" or modo = "D" order by numero');
             open;
       end;


       sq5.First;
       while not sq5.Eof do begin

           selecione('select chave from tbpedido where codigo is not null and numero = ' + quotedstr(sq5.fieldbyname('numero').AsString));

           if sqlpub['chave'] <> null then begin

              selecione('delete from venda where chave = '+quotedstr(sq5.fieldbyname('chave').AsString));
              selecione('delete from vendaitem where link = '+quotedstr(sq5.fieldbyname('chave').AsString));

           end;


           sq5.Next;
       end;

end;

procedure Tfpedido.edescricaoppKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  keypreview := True;
  if (key = vk_delete) then
    btnapagarppclick(self);


  if (key = 27) and (edescricaopp.Text = '') then
    btncancelarppclick(self);

  if key = 13 then
  begin
    preenchedescricaoexecute(self);

    lqtdpp.Caption := 'F10 =  DIGITA A QUANTIDADE';

    if eqtdpp.Focused then
    begin
      edescricaopp.SetFocus;
      eqtdpp.SetFocus;
    end;

    if leitor then
    begin
      btngravarPPclick(self);
      btnnovoPPclick(self);
    end;
  end;

end;

procedure Tfpedido.edescricaolKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  keypreview := True;
  if (key = vk_delete) then
    btnapagarlclick(self);


  if (key = 27) and (edescricaol.Text = '') then
    btncancelarlclick(self);

  if key = 13 then
  begin
    preenchedescricaoexecute(self);

    lqtdl.Caption := 'F10 =  DIGITA A QUANTIDADE';

    if eqtdl.Focused then
    begin
      edescricaol.SetFocus;
      eqtdl.SetFocus;
    end;

    if leitor then
    begin
      btngravarlclick(self);
      btnnovolclick(self);
    end;
  end;

end;

procedure Tfpedido.eqtdppExit(Sender: TObject);
begin
  if eqtdpp.Modified = True then
    totalitemppexecute(self);

  eqtdpp.color := clwhite;

end;

procedure Tfpedido.evrunitppExit(Sender: TObject);
begin
  if evrunitpp.Modified = True then
    totalitemppexecute(self);

  evrunitpp.color := clwhite;

end;

procedure Tfpedido.evrunitlExit(Sender: TObject);
begin
  if evrunitl.Modified = True then totalitemlexecute(self);
  evrunitl.color := clwhite;

end;

procedure Tfpedido.btnnovoppClick(Sender: TObject);
begin
  permissao(PN, 'PN', modulo);

  if venda['nome'] = null then
  begin
    Application.MessageBox('Preencha o nome do cliente!', 'Erro', 0 + MB_ICONerror);
    abort;
  end;

  gravarpp := 'novo';
  ativarlocalexecute(self);

  if fpedido.Active = True then
  begin
    tbpp.Insert;
    tbpp['qtd'] := '1';
    dhbotaoexecute(self);
    modopp := 'M';
    if edescricaopp.Enabled = True then
      edescricaopp.SetFocus;
  end;

end;

procedure Tfpedido.btnnovolClick(Sender: TObject);
begin
  permissao(PN, 'PN', modulo);

  if venda['nome'] = null then msg('#Preencha o nome do cliente.',0);
  gravarl := 'novo';
  ativarlocalexecute(self);

  if fpedido.Active = True then begin
    tblocacao.Insert;
    tblocacao['qtd'] := '1';
    tblocacao['datadevolucao'] := date + 3;

    dhbotaoexecute(self);
    modol := 'M';
    if edescricaol.Enabled = True then edescricaol.SetFocus;
  end;

end;

procedure Tfpedido.btneditarppClick(Sender: TObject);
begin
  permissao(PA, 'PA', modulo);

  if tbpp.FieldByName('chave').AsString = '' then
  begin
    Application.MessageBox('Você não tem registro selecionado para editar!',
      'Erro', 0 + MB_ICONerror);
    abort;
  end;

  gravarpp := 'alterar';

  ativarlocalexecute(self);
  if edescricaopp.Enabled = True then
    edescricaopp.SetFocus;

  dhbotaoexecute(self);

end;

procedure Tfpedido.btneditarlClick(Sender: TObject);
begin
  permissao(PA, 'PA', modulo);

  abortaacao(nil,tblocacao,'chave','','','','',0);

  gravarl := 'alterar';

  ativarlocalexecute(self);
  if edescricaol.Enabled = True then  edescricaol.SetFocus;

  dhbotaoexecute(self);

end;

procedure Tfpedido.btngravarppClick(Sender: TObject);
begin
  focuscontrol(nil);

  if gravarpp = 'novo' then
    inserirppExecute(self)
  else if gravarpp = 'alterar' then
    alterarppExecute(self);

  hbotaoexecute(self);
  desativar(fpedido);

  modopp := 'N';
  modogrupo := 'N';

end;

procedure Tfpedido.btngravarlClick(Sender: TObject);
begin
  focuscontrol(nil);

  if gravarl = 'novo'         then inserirExecute(self)
  else if gravarl = 'alterar' then alterarExecute(self);

  hbotaoexecute(self);
  desativar(fpedido);

  modol := 'N';
  modogrupo := 'N';

end;

procedure Tfpedido.btncancelarppClick(Sender: TObject);
begin
  tbpp.cancel;
  desativar(fpedido);

  hbotaoexecute(self);
  modopp := 'N';
  modogrupo := 'N';

end;

procedure Tfpedido.btncancelarlClick(Sender: TObject);
begin
  tblocacao.cancel;
  desativar(fpedido);

  hbotaoexecute(self);
  modol := 'N';
  modogrupo := 'N';

end;

procedure Tfpedido.btnapagarppClick(Sender: TObject);
begin

  permissao(PD, 'PD', modulo);
  abortaacao(nil,tbpp,'chave','','','','',0);

   if msg('',1) then begin
      selecione('delete from vendapp where chave = ' +  quotedstr(tbpp.FieldByName('chave').AsString));

      tbpp.cancel;
      tbpp.refresh;
  end;

end;

procedure Tfpedido.btnapagarlClick(Sender: TObject);
begin
  permissao(PD, 'PD', modulo);
  abortaacao(nil,tblocacao,'chave','','','','',0);

   if msg('',1) then begin
      selecione('delete from vendalocacao where chave = ' +  quotedstr(tblocacao.FieldByName('chave').AsString));

      tblocacao.cancel;
      tblocacao.refresh;
  end;

end;

procedure Tfpedido.tablocacaoShow(Sender: TObject);
begin

  if servico then
    if btncancelarS.Enabled then
      btncancelarSClick(self);

  if pecapendente then
    if btncancelarpp.Enabled then
      btncancelarppClick(self);

  if (devolucao = True) or (troca = True) then
    if btncancelarD.Enabled then
      btncancelarDClick(self);

  if peca then
    if btncancelar.Enabled then
      btncancelarClick(self);


  pagina := '4';
  tbitem := tblocacao;

end;

procedure Tfpedido.totalitemlExecute(Sender: TObject);
begin

  tblocacao.edit;
  tblocacao['total'] := tblocacao.FieldByName('qtd').AsFloat *  tblocacao.FieldByName('vrunit').AsFloat;

end;

procedure Tfpedido.DBText7Click(Sender: TObject);
var
valor:string;
begin

        abortar(edata);
        btncancelargrupoClick(self);
        abortaacao(nil,venda,'chave','','','','',0);

        valor := msgi('Digite o valor da substituição:',2);
        venda.edit;
        venda['valoricmsubstituicao'] := valor ;
        valor:=venda.fieldbyname('chave').asstring;
        totalizarexecute(self);
        venda.cancel;
        venda.refresh;
        venda.locate('chave',valor,[]);

end;

procedure Tfpedido.eqtdlExit(Sender: TObject);
begin

  if eqtdl.Modified = True then  totalitemlexecute(self);
  eqtdl.color := clwhite;

end;

procedure Tfpedido.edevolucaolKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if (key = 13) and (edescricaol.Text <> '') and (eqtdl.Text <> '') and
    (etotall.Text <> '') then begin
    btngravarlClick(self);
    btnnovolClick(self);
    keypreview := False;
    if edescricaol.Enabled = True then
      edescricaol.SetFocus;
  end;

end;

procedure Tfpedido.biciclobikeExecute(Sender: TObject);
var vr:string;
begin
           codloc :='2';
           vr := msgi('Usar o valor:'+#13+#13+'1=Varejo   '+#13+'2=Atacado '+#13+'3=Atacado1',2);

           if not strtoint(vr) in [1..3] then abort;

           if      vr = '1' then vr := 'vrvenda'
           else if vr = '2' then vr := 'vratacado'
           else if vr = '3' then vr := 'valor3';

           with fdm.Query1 do begin
                sql.Clear;
                sql.Add('select chave, codigo, descricao, qtd, vrunit, descontoReal as desconto, total from vendaitem where link = ' + quotedstr(venda.fieldbyname('chave').AsString));
                fdm.tbquery1.close;
                fdm.tbquery1.open;

                if fdm.tbquery1.RecordCount <=0 then begin
                   fdm.tbquery1.close;
                   msg('#Não há dados.',0);
                end;
           end;

           while not fdm.tbquery1.Eof do begin
                 selecione2('select '+vr+' from tbproduto where codigo = '+quotedstr(fdm.tbquery1.fieldbyname('codigo').AsString));
                 fdm.tbquery1.edit;
                 fdm.tbquery1['vrunit'] := sqlpub2.fieldbyname(vr).AsFloat;
                 fdm.tbquery1['total']  := (fdm.tbquery1.fieldbyname('vrunit').AsFloat -
                                           fdm.tbquery1.fieldbyname('desconto').AsFloat) *
                                           fdm.tbquery1.fieldbyname('qtd').AsFloat;
                fdm.tbquery1.Next;
           end;
           sqlpub2 := nil;
           formatacptabela(fdm.tbquery1,nil,3);
           imptb(fdm.tbquery1, fdm.dsquery1,'biciclobikep', 'Venda '+enumero.Text+ '   -  '+enome.Text, true);
           fdm.tbquery1.close;

end;

end.
