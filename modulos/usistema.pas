unit usistema;

interface

uses
  inifiles, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, DBClient, StdCtrls, Buttons, Mask, DBCtrls,printers,
  ActnList, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls,
  Grids, DBGrids, ExtDlgs, dbcgrids, RLReport, Spin,math, Provider, shellapi;


type
  Tfsistema = class(TForm)
    PageControl1: TPageControl;
    atualizaprod: TTabSheet;
    curva: TTabSheet;
    rtipo1: TRadioGroup;
    rvalor: TRadioGroup;
    PageControl3: TPageControl;
    TabSheet4: TTabSheet;
    btnalterar: TSpeedButton;
    Label87: TLabel;
    edper: TEdit;
    TabSheet5: TTabSheet;
    Label91: TLabel;
    edperm: TEdit;
    BitBtn36: TBitBtn;
    Label83: TLabel;
    Label82: TLabel;
    Label81: TLabel;
    lsubgrupo1: TDBText;
    lfornecedor1: TDBText;
    lproduto1: TDBText;
    Label80: TLabel;
    lgrupo1: TDBText;
    Label79: TLabel;
    lfamilia1: TDBText;
    Label78: TLabel;
    Bevel8: TBevel;
    lcodigo: TDBText;
    ActionList1: TActionList;
    atualizaprod_: TAction;
    Bevel1: TBevel;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    Label76: TLabel;
    Edit1: TEdit;
    MaskEdit7: TMaskEdit;
    MaskEdit8: TMaskEdit;
    BitBtn39: TBitBtn;
    TabSheet3: TTabSheet;
    BitBtn40: TBitBtn;
    TabSheet6: TTabSheet;
    Label77: TLabel;
    epromocao: TSpinEdit;
    BitBtn38: TBitBtn;
    RadioGroup1: TRadioGroup;
    Label24: TLabel;
    ea: TEdit;
    eb: TEdit;
    ec: TEdit;
    ed: TEdit;
    ee: TEdit;
    ef: TEdit;
    totalcurva: TLabel;
    Label19: TLabel;
    Label17: TLabel;
    dtc1: TMaskEdit;
    Label18: TLabel;
    dtc2: TMaskEdit;
    lcurva: TLabel;
    BitBtn9: TBitBtn;
    lspcurva: TLabel;
    curva_: TAction;
    curvaproduto: TAction;
    recpg: TTabSheet;
    pgdocumento: TLabel;
    pgmora: TLabel;
    pgtotal: TLabel;
    pgdesconto: TLabel;
    pgacrescimo: TLabel;
    pgvrdocumento: TLabel;
    pgrecebido: TLabel;
    pgdiferenca: TLabel;
    pgdtvencimento: TLabel;
    pgobservacao: TLabel;
    DBEdit2: TDBEdit;
    eletra: TDBEdit;
    emora: TDBEdit;
    pgevalor: TDBEdit;
    pgedesconto: TDBEdit;
    pgeacrescimo: TDBEdit;
    evrdocumento: TDBEdit;
    erecebido: TDBEdit;
    ediferenca: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit12: TDBEdit;
    pcheque: TPanel;
    Label10: TLabel;
    Label47: TLabel;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    ppassado: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    enome: TDBEdit;
    BitBtn16: TBitBtn;
    edata: TDBEdit;
    recpg_: TAction;
    Label44: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    lposicao: TLabel;
    cposicao: TDBLookupComboBox;
    ds: TDataSource;
    Label1: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    conta: TTabSheet;
    pconta: TPanel;
    gradeconta: TDBGrid;
    Panel2: TPanel;
    ltipoconta: TLabel;
    Label5: TLabel;
    edocumento: TEdit;
    Label12: TLabel;
    eqtd: TComboBox;
    lvencdia: TSpinEdit;
    Label6: TLabel;
    evencimento: TMaskEdit;
    lmora2: TLabel;
    emora2: TEdit;
    rcomercial: TCheckBox;
    lintervalo: TLabel;
    eintervalo: TSpinEdit;
    SpeedButton16: TSpeedButton;
    rbaixacheque: TCheckBox;
    pcheque2: TPanel;
    econta: TEdit;
    lconta: TLabel;
    eagencia: TEdit;
    lagencia: TLabel;
    btnok: TBitBtn;
    tabela: TClientDataSet;
    tabelacontador: TIntegerField;
    tabelanumero: TStringField;
    tabelavencimento: TDateField;
    tabelavalor: TFloatField;
    tabelabanco: TStringField;
    tabelaagencia: TStringField;
    tabelaconta: TStringField;
    tabelandocumento: TStringField;
    tabelaletra: TStringField;
    tabeladocumento: TStringField;
    tabeladata: TDateField;
    tabeladia: TStringField;
    conta_: TAction;
    t2: TZQuery;
    t1: TZQuery;
    d1: TDataSource;
    d2: TDataSource;
    etipoconta: TDBLookupComboBox;
    Label7: TLabel;
    ebanco: TEdit;
    preenche: TAction;
    nbanco: TAction;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    preenchecheque: TAction;
    lnome: TPanel;
    ltot: TStaticText;
    frecpg: TTabSheet;
    bfiltro: TRadioGroup;
    RTIPO: TRadioGroup;
    rdata: TRadioGroup;
    Label8: TLabel;
    md1: TMaskEdit;
    Label9: TLabel;
    md2: TMaskEdit;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    evendedor: TComboBox;
    Label15: TLabel;
    ebairro: TComboBox;
    Label25: TLabel;
    emunicipio: TComboBox;
    Label16: TLabel;
    euf: TComboBox;
    btnmrp: TSpeedButton;
    BitBtn1: TBitBtn;
    cconta: TComboBox;
    ccontaem: TComboBox;
    frecpg_: TAction;
    SpeedButton2: TSpeedButton;
    tabprecoproduto: TTabSheet;
    Bevel11: TBevel;
    Bevel14: TBevel;
    Bevel13: TBevel;
    Bevel12: TBevel;
    Bevel10: TBevel;
    Bevel9: TBevel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    lmaximo: TLabel;
    Label30: TLabel;
    lminimo123: TLabel;
    Label31: TLabel;
    bnaltera: TSpeedButton;
    Label33: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    evrcompra: TDBEdit;
    efracao: TDBEdit;
    evrunit: TDBEdit;
    epercentatacado: TDBEdit;
    evratacado: TDBEdit;
    epercent: TDBEdit;
    evrvarejo: TDBEdit;
    baltera: TButton;
    CheckBox1: TCheckBox;
    Panel1: TPanel;
    Label64: TLabel;
    MaskEdit5: TMaskEdit;
    MaskEdit6: TMaskEdit;
    Button7: TButton;
    RadioGroup5: TRadioGroup;
    DBEdit6: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBCheckBox5: TDBCheckBox;
    eperc1: TDBEdit;
    evrperc1: TDBEdit;
    dsproduto: TDataSource;
    produto: TClientDataSet;
    produtocodigo: TStringField;
    produtofracao: TFloatField;
    produtovrcompra: TFloatField;
    produtovrunit: TFloatField;
    produtovrvenda: TFloatField;
    produtovratacado: TFloatField;
    produtopercent: TFloatField;
    produtochave: TIntegerField;
    produtopercentatacado: TFloatField;
    produtopercent3: TFloatField;
    produtovalor3: TFloatField;
    produtoestoque: TFloatField;
    produtodespesaacessoria: TFloatField;
    produtoipi: TFloatField;
    produtoativoV: TStringField;
    totalizar: TAction;
    peitem: TDataSetProvider;
    tbentradaitem: TClientDataSet;
    tabprecoproduto_: TAction;
    preencheproduto: TAction;
    ldescricao: TStaticText;
    inventario: TTabSheet;
    gradeinv: TDBGrid;
    ginv: TRadioGroup;
    Label32: TLabel;
    minv: TMaskEdit;
    btinv: TBitBtn;
    inventario_: TAction;
    qinventario: TRLReport;
    RLGroup2: TRLGroup;
    RLBand8: TRLBand;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel25: TRLLabel;
    linv2: TRLLabel;
    RLLabel24: TRLLabel;
    RLBand9: TRLBand;
    RLDBMemo2: TRLDBMemo;
    RLDBMemo3: TRLDBMemo;
    RLDBMemo4: TRLDBMemo;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand6: TRLBand;
    RLMemo8: TRLMemo;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLLabel12: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLMemo5: TRLMemo;
    RLMemo6: TRLMemo;
    RLMemo7: TRLMemo;
    linv1hhhhh: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel23: TRLLabel;
    linv1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLMemo9: TRLMemo;
    RLLabel10: TRLLabel;
    tb1: TClientDataSet;
    p1: TDataSetProvider;
    ds1: TDataSource;
    cep: TTabSheet;
    cep1: TEdit;
    cep3: TEdit;
    cep2: TComboBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    cep6: TEdit;
    cep5: TEdit;
    Label34: TLabel;
    cep4: TEdit;
    btcep: TButton;
    cep_: TAction;
    municipio: TTabSheet;
    Label37: TLabel;
    cid1: TEdit;
    Label38: TLabel;
    cid2: TEdit;
    btmun: TButton;
    municipio_: TAction;
    Label39: TLabel;
    obsos: TTabSheet;
    StaticText1: TStaticText;
    M1: TDBMemo;
    StaticText2: TStaticText;
    M2: TDBMemo;
    obsos_: TAction;
    entrada: TTabSheet;
    ppecaC: TPanel;
    btnapagarC: TSpeedButton;
    btncancelC: TSpeedButton;
    btngravarC: TSpeedButton;
    btneditarC: TSpeedButton;
    btnnovoC: TSpeedButton;
    Label50: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Label61: TLabel;
    btnimprimirC: TSpeedButton;
    btvC: TSpeedButton;
    tbrelC: TSpeedButton;
    Label40: TLabel;
    DBText2: TDBText;
    ent1: TDBEdit;
    ent2: TDBEdit;
    ent3: TDBEdit;
    ent4: TDBEdit;
    ent5: TDBEdit;
    ent6: TDBEdit;
    ent7: TDBEdit;
    gradec: TDBGrid;
    entrada_: TAction;
    td: TTabSheet;
    Panel3: TPanel;
    btnconfD: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Label41: TLabel;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    ltddevolvidoD: TStaticText;
    ltdvendedorD: TStaticText;
    ltdvalorD: TStaticText;
    ltdtipovendaD: TStaticText;
    ltddataD: TStaticText;
    lstatic: TStaticText;
    ltdpermitidoD: TStaticText;
    StaticText13: TStaticText;
    ltddevatualD: TStaticText;
    StaticText11: TStaticText;
    ltqtdD: TStaticText;
    elocalizard: TEdit;
    gradetd: TDBGrid;
    td_: TAction;
    tbtd: TClientDataSet;
    tbtdchave: TIntegerField;
    tbtdcodigo: TStringField;
    tbtddescricao: TStringField;
    tbtdqtd: TFloatField;
    tbtdvrunit: TFloatField;
    tbtddevolvido: TFloatField;
    tbtddevolver: TFloatField;
    tbtdcor: TStringField;
    tbtdtamanho: TStringField;
    tbtddefeito: TStringField;
    Bevel5: TBevel;
    lobs: TLabel;
    eobs: TEdit;
    Bevel6: TBevel;
    produtoimposto: TFloatField;
    transfprod: TTabSheet;
    cfilial: TComboBox;
    transfprod_: TAction;
    btransf: TButton;
    rtransf: TRadioGroup;
    cedente: TTabSheet;
    gcedente: TDBGrid;
    pcedente: TPanel;
    Label94: TLabel;
    mcedente: TDBMemo;
    cedente_: TAction;
    Label42: TLabel;
    ncheque: TEdit;
    registro: TTabSheet;
    Label43: TLabel;
    eregistro: TDBEdit;
    btregok: TSpeedButton;
    Label46: TLabel;
    eresponsavel: TDBEdit;
    lvalidade: TLabel;
    StaticText3: TStaticText;
    btregnet: TButton;
    btregman: TBitBtn;
    btregemail: TBitBtn;
    registro_: TAction;
    altusu: TTabSheet;
    Bevel7: TBevel;
    Bevel15: TBevel;
    USUARIOA: TEdit;
    SENHAA: TEdit;
    USUARION: TEdit;
    SENHAN: TEdit;
    Label48: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label55: TLabel;
    Label58: TLabel;
    btusu: TButton;
    altusu_: TAction;
    permissoes: TTabSheet;
    cinserir: TDBCheckBox;
    calterar: TDBCheckBox;
    capagar: TDBCheckBox;
    cconsultar: TDBCheckBox;
    Bevel16: TBevel;
    Listpermissao: TListBox;
    btptodas: TSpeedButton;
    btpcopia: TSpeedButton;
    btpnenhuma: TSpeedButton;
    permissoes_: TAction;
    tabip: TTabSheet;
    Label60: TLabel;
    eip: TDBLookupComboBox;
    btcadfilial: TBitBtn;
    tabip_: TAction;
    BitBtn2: TBitBtn;
    comifun: TTabSheet;
    etipo: TDBRadioGroup;
    l1: TLabel;
    e1: TDBEdit;
    l2: TLabel;
    e2: TDBEdit;
    l3: TLabel;
    e3: TDBEdit;
    l4: TLabel;
    e4: TDBEdit;
    l5: TLabel;
    e5: TDBEdit;
    l6: TLabel;
    e6: TDBEdit;
    Label67: TLabel;
    ecomserv: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    l7: TLabel;
    e7: TDBEdit;
    l8: TLabel;
    e8: TDBEdit;
    l9: TLabel;
    e9: TDBEdit;
    l10: TLabel;
    e10: TDBEdit;
    Button1: TButton;
    comifun_: TAction;
    euibge: TDBComboBox;
    Label62: TLabel;
    iso: TTabSheet;
    miso2: TMemo;
    StaticText4: TStaticText;
    StaticText12: TStaticText;
    miso1: TMemo;
    iso_: TAction;
    BitBtn3: TBitBtn;
    Label63: TLabel;
    DBEdit13: TDBEdit;
    produtodesctotal: TFloatField;
    mcabrasivos: TAction;
    DBCheckBox1: TDBCheckBox;
    produtoativo: TStringField;
    nimport: TTabSheet;
    nimport_: TAction;
    Label66: TLabel;
    Label68: TLabel;
    cnimport5: TDBEdit;
    Label69: TLabel;
    cnimport6: TDBEdit;
    cnimport4: TDBComboBox;
    Label70: TLabel;
    Bevel19: TBevel;
    BitBtn4: TBitBtn;
    cnimport13: TDBText;
    Label35: TLabel;
    cnimport1: TDBEdit;
    Label36: TLabel;
    cnimport2: TDBEdit;
    Label65: TLabel;
    cnimport3: TDBEdit;
    Label71: TLabel;
    Label72: TLabel;
    cnimport7: TDBEdit;
    Label73: TLabel;
    cnimport8: TDBEdit;
    Label74: TLabel;
    cnimport9: TDBEdit;
    Label85: TLabel;
    cnimport12: TDBEdit;
    cnimport11: TDBEdit;
    Label84: TLabel;
    cnimport10: TDBEdit;
    Label75: TLabel;
    Bevel17: TBevel;
    tabplanalmed: TTabSheet;
    Label86: TLabel;
    pm1: TEdit;
    pm5: TMemo;
    Label88: TLabel;
    pm2: TEdit;
    Label89: TLabel;
    pm3: TEdit;
    Label90: TLabel;
    pm4: TEdit;
    Label92: TLabel;
    pm6: TEdit;
    pm10: TRadioGroup;
    rimp: TCheckBox;
    pm8: TMemo;
    pm9: TMemo;
    pm7: TMemo;
    rfabrica: TRadioGroup;
    tabplanalmed_: TAction;
    planalbuttom: TButton;
    clinf: TTabSheet;
    Label93: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    lcid: TLabel;
    Label97: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    encep: TDBEdit;
    enendereco: TDBEdit;
    ennumero: TDBEdit;
    encomplemento: TDBEdit;
    enbairro: TDBEdit;
    encidade: TDBEdit;
    enuf: TDBComboBox;
    Label102: TLabel;
    encnpj: TDBEdit;
    enie: TDBEdit;
    Label103: TLabel;
    Label104: TLabel;
    enddd: TDBEdit;
    Label105: TLabel;
    efone: TDBEdit;
    StaticText14: TStaticText;
    btclinf: TBitBtn;
    clinf_: TAction;
    Label106: TLabel;
    enibge: TDBEdit;
    Label107: TLabel;
    enemail: TDBEdit;
    linvt1: TRLLabel;
    linvt2: TRLLabel;
    linvt5: TRLLabel;
    linvt4: TRLLabel;
    invcmedio: TRadioGroup;
    Tabcorrecal: TTabSheet;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    ec3: TMaskEdit;
    ec1: TEdit;
    ec2: TEdit;
    ec4: TEdit;
    ec5: TEdit;
    ec6: TMaskEdit;
    rc1: TCheckBox;
    rc2: TCheckBox;
    rc3: TCheckBox;
    rc4: TCheckBox;
    rc5: TCheckBox;
    rc6: TCheckBox;
    rc7: TCheckBox;
    rc8: TCheckBox;
    rc9: TCheckBox;
    rc10: TCheckBox;
    rc11: TCheckBox;
    rc12: TCheckBox;
    rc13: TCheckBox;
    rc14: TCheckBox;
    rc15: TCheckBox;
    rc16: TCheckBox;
    rc17: TCheckBox;
    rc18: TCheckBox;
    rc19: TCheckBox;
    rc20: TCheckBox;
    rc21: TCheckBox;
    rc22: TCheckBox;
    rc23: TCheckBox;
    rc24: TCheckBox;
    rc25: TCheckBox;
    rc26: TCheckBox;
    rc27: TCheckBox;
    rc28: TCheckBox;
    rc29: TCheckBox;
    rc30: TCheckBox;
    rc31: TCheckBox;
    rc32: TCheckBox;
    rc33: TCheckBox;
    rc34: TCheckBox;
    rc35: TCheckBox;
    ec7: TEdit;
    ec9: TEdit;
    ec8: TEdit;
    ec10: TEdit;
    ec11: TEdit;
    ec13: TEdit;
    ec12: TEdit;
    ec14: TEdit;
    ec15: TEdit;
    ec16: TEdit;
    rc999: TCheckBox;
    Button6: TButton;
    tabcorrecal_: TAction;
    correcao: TRLReport;
    RLBand15: TRLBand;
    RLDetailGrid3: TRLDetailGrid;
    RLBand51: TRLBand;
    RLMemo10: TRLMemo;
    RLMemo11: TRLMemo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLMemo12: TRLMemo;
    RLMemo13: TRLMemo;
    RLMemo14: TRLMemo;
    RLMemo15: TRLMemo;
    rl1: TRLMemo;
    rl2: TRLMemo;
    rl3: TRLMemo;
    RLMemo16: TRLMemo;
    RLLabel1: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLMemo17: TRLMemo;
    rl4: TRLMemo;
    rl5: TRLMemo;
    ec1_: TRLLabel;
    ec2_: TRLLabel;
    ec3_: TRLLabel;
    ec4_: TRLLabel;
    ec5_: TRLLabel;
    ec6_: TRLLabel;
    ecdt: TRLLabel;
    RLLabel35: TRLLabel;
    lcempresa: TRLLabel;
    atuafiliais: TTabSheet;
    gradefilial: TDBGrid;
    Panel4: TPanel;
    filatua: TSpeedButton;
    filenatua: TSpeedButton;
    atuafiliais_: TAction;
    filicad: TSpeedButton;
    devconf: TTabSheet;
    pdev: TPanel;
    btdevc: TSpeedButton;
    SpeedButton1: TSpeedButton;
    llocdev: TLabel;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    ltddevolvido: TStaticText;
    ltdvendedor: TStaticText;
    ltdvalor: TStaticText;
    ltdtipovenda: TStaticText;
    ltddata: TStaticText;
    StaticText21: TStaticText;
    ltdpermitido: TStaticText;
    StaticText22: TStaticText;
    ltddevatual: TStaticText;
    StaticText23: TStaticText;
    ltqtd: TStaticText;
    elocalizar: TEdit;
    gradedev: TDBGrid;
    devconf_: TAction;
    devvendedor: TStaticText;
    somatd: TAction;
    consignada: TTabSheet;
    Panel5: TPanel;
    Panel8: TPanel;
    lconsig: TLabel;
    lcons1: TLabel;
    lcons2: TLabel;
    lcons3: TLabel;
    consigp: TEdit;
    btconsigimp: TSpeedButton;
    btconsapagar: TSpeedButton;
    gconsigp: TDBGrid;
    consigsel: TAction;
    consignada_: TAction;
    consigtotal: TPanel;
    f11: TAction;
    SpeedButton5: TSpeedButton;
    consiggp: TRadioGroup;
    btconsigvenda: TSpeedButton;
    boletoe: TTabSheet;
    Label113: TLabel;
    ComboBox3: TComboBox;
    Edit2: TEdit;
    Label112: TLabel;
    ComboBox1: TComboBox;
    rfilial: TRadioGroup;
    Label114: TLabel;
    consvendedor: TComboBox;
    produtofabricante: TStringField;
    SpeedButton3: TSpeedButton;
    impentrada_: TAction;
    ratuapreco: TCheckBox;
    consigt: TSpeedButton;
    consigvendedor: TSpeedButton;
    Bevel18: TBevel;
    Bevel20: TBevel;
    Label115: TLabel;
    ldepartamento1: TDBText;
    combo: TTabSheet;
    lcombo: TLabel;
    combos: TDBLookupComboBox;
    BitBtn5: TBitBtn;
    combo_: TAction;
    conszera: TSpeedButton;
    consultaprod: TTabSheet;
    Label116: TLabel;
    comp2: TDBEdit;
    comp3: TDBEdit;
    comp4: TDBEdit;
    comp5: TDBEdit;
    comp6: TDBEdit;
    comp7: TDBEdit;
    comp8: TDBEdit;
    comp9: TDBEdit;
    comp27: TDBEdit;
    comp1: TDBEdit;
    comp14: TDBEdit;
    comp15: TDBEdit;
    comp17: TDBEdit;
    comp16: TDBEdit;
    comp12: TDBEdit;
    comp11: TDBEdit;
    comp13: TDBEdit;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    comp22: TDBEdit;
    comp28: TDBEdit;
    comp29: TDBEdit;
    comp30: TDBEdit;
    comp31: TDBEdit;
    comp23: TDBEdit;
    comp33: TDBEdit;
    comp24: TDBEdit;
    comp34: TDBEdit;
    comp35: TDBEdit;
    comp32: TDBEdit;
    comp19: TDBEdit;
    comp20: TDBEdit;
    comp21: TDBEdit;
    comp18: TDBEdit;
    comp25: TDBEdit;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    consultaprod_: TAction;
    gvenda: TDBGrid;
    gcompra: TDBGrid;
    comp10: TDBEdit;
    Label138: TLabel;
    Label150: TLabel;
    comp26: TDBEdit;
    Label151: TLabel;
    comp36: TDBEdit;
    Label152: TLabel;
    comp37: TDBRichEdit;
    Label122: TLabel;
    comp38: TDBEdit;
    Label153: TLabel;
    comp39: TDBEdit;
    SpeedButton6: TSpeedButton;
    ccontaem2: TComboBox;
    Label154: TLabel;
    Label155: TLabel;
    invgrupo: TComboBox;
    qentrada: TRLReport;
    RLBand1: TRLBand;
    RLDetailGrid2: TRLDetailGrid;
    RLBand2: TRLBand;
    los1: TRLLabel;
    RLDBText4: TRLDBText;
    fltitulo1: TRLLabel;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLLabel118: TRLLabel;
    RLLabel119: TRLLabel;
    RLLabel120: TRLLabel;
    RLLabel121: TRLLabel;
    RLLabel122: TRLLabel;
    RLLabel123: TRLLabel;
    RLLabel124: TRLLabel;
    RLLabel125: TRLLabel;
    RLDBText46: TRLDBText;
    flendereco2: TRLLabel;
    RLPanel1: TRLPanel;
    im1: TImage;
    ltitulo1: TRLLabel;
    er1: TRLLabel;
    er2: TRLLabel;
    er3: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand11: TRLBand;
    RLBand12: TRLBand;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    ltcod1: TRLDBText;
    RLDBText12: TRLDBText;
    RLMemo18: TRLMemo;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText40: TRLDBText;
    RLBand13: TRLBand;
    RLDBText1: TRLDBText;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel32: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel33: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel34: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel37: TRLLabel;
    RLLabel41: TRLLabel;
    ltotvd: TRLLabel;
    lpgto: TRLLabel;
    mpgto: TRLMemo;
    RLBand3: TRLBand;
    RLLabel38: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel60: TRLLabel;
    RLLabel61: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    btnsair: TBitBtn;

    procedure chamacontas;
    procedure prodconsig(i:integer;tx:string);
    procedure totunit;
    procedure consdevitem;
    procedure totconsig;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure edpermKeyPress(Sender: TObject; var Key: Char);
    procedure edperKeyPress(Sender: TObject; var Key: Char);
    procedure btnalterarClick(Sender: TObject);
    procedure BitBtn36Click(Sender: TObject);
    procedure atualizaprod_Execute(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn39Click(Sender: TObject);
    procedure BitBtn40Click(Sender: TObject);
    procedure BitBtn38Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure curva_Execute(Sender: TObject);
    procedure eaChange(Sender: TObject);
    procedure eaExit(Sender: TObject);
    procedure curvaprodutoExecute(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure enomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure recpg_Execute(Sender: TObject);
    procedure pgevalorExit(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure conta_Execute(Sender: TObject);
    procedure ltipocontaClick(Sender: TObject);
    procedure etipocontaClick(Sender: TObject);
    procedure etipocontaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure preencheExecute(Sender: TObject);
    procedure nbancoExecute(Sender: TObject);
    procedure eqtdChange(Sender: TObject);
    procedure eqtdKeyPress(Sender: TObject; var Key: Char);
    procedure evencimentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure emora2KeyPress(Sender: TObject; var Key: Char);
    procedure rcomercialClick(Sender: TObject);
    procedure eintervaloChange(Sender: TObject);
    procedure eintervaloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton16Click(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure gradecontaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gradecontaEnter(Sender: TObject);
    procedure gradecontaExit(Sender: TObject);
    procedure preenchechequeExecute(Sender: TObject);
    procedure frecpg_Execute(Sender: TObject);
    procedure btnmrpClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RadioGroup5Click(Sender: TObject);
    procedure evrcompraExit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure epercentExit(Sender: TObject);
    procedure evrvarejoExit(Sender: TObject);
    procedure evratacadoExit(Sender: TObject);
    procedure evrperc1Exit(Sender: TObject);
    procedure balteraClick(Sender: TObject);
    procedure totalizarExecute(Sender: TObject);
    procedure tabprecoproduto_Execute(Sender: TObject);
    procedure preencheprodutoExecute(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure bnalteraClick(Sender: TObject);
    procedure inventario_Execute(Sender: TObject);
    procedure btinvClick(Sender: TObject);
    procedure qinventarioBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure cep_Execute(Sender: TObject);
    procedure btcepClick(Sender: TObject);
    procedure cep1KeyPress(Sender: TObject; var Key: Char);
    procedure cep2KeyPress(Sender: TObject; var Key: Char);
    procedure btmunClick(Sender: TObject);
    procedure municipio_Execute(Sender: TObject);
    procedure Label39Click(Sender: TObject);
    procedure cep4KeyPress(Sender: TObject; var Key: Char);
    procedure cid2KeyPress(Sender: TObject; var Key: Char);
    procedure obsos_Execute(Sender: TObject);
    procedure btvCClick(Sender: TObject);
    procedure btnnovoCClick(Sender: TObject);
    procedure btneditarCClick(Sender: TObject);
    procedure btngravarCClick(Sender: TObject);
    procedure btncancelCClick(Sender: TObject);
    procedure btnapagarCClick(Sender: TObject);
    procedure btnimprimirCClick(Sender: TObject);
    procedure tbrelCClick(Sender: TObject);
    procedure ent1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ent2Exit(Sender: TObject);
    procedure ent3Exit(Sender: TObject);
    procedure ent7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gradecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gradecDblClick(Sender: TObject);
    procedure entrada_Execute(Sender: TObject);
    procedure td_Execute(Sender: TObject);
    procedure elocalizardChange(Sender: TObject);
    procedure eobsExit(Sender: TObject);
    procedure transfprod_Execute(Sender: TObject);
    procedure btransfClick(Sender: TObject);
    procedure gcedenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gcedenteDblClick(Sender: TObject);
    procedure cedente_Execute(Sender: TObject);
    procedure registro_Execute(Sender: TObject);
    procedure btregokClick(Sender: TObject);
    procedure btregnetClick(Sender: TObject);
    procedure btregmanClick(Sender: TObject);
    procedure btregemailClick(Sender: TObject);
    procedure altusu_Execute(Sender: TObject);
    procedure btusuClick(Sender: TObject);
    procedure permissoes_Execute(Sender: TObject);
    procedure ListpermissaoClick(Sender: TObject);
    procedure btptodasClick(Sender: TObject);
    procedure btpcopiaClick(Sender: TObject);
    procedure btpnenhumaClick(Sender: TObject);
    procedure nchequeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ebancoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label7Click(Sender: TObject);
    procedure tabip_Execute(Sender: TObject);
    procedure btcadfilialClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cep3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure etipoChange(Sender: TObject);
    procedure comifun_Execute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure iso_Execute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure mcabrasivosExecute(Sender: TObject);
    procedure nimport_Execute(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure tabplanalmed_Execute(Sender: TObject);
    procedure planalbuttomClick(Sender: TObject);
    procedure encnpjKeyPress(Sender: TObject; var Key: Char);
    procedure encnpjExit(Sender: TObject);
    procedure btclinfClick(Sender: TObject);
    procedure encepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure clinf_Execute(Sender: TObject);
    procedure Label106Click(Sender: TObject);
    procedure qinventarioPageEnding(Sender: TObject);
    procedure RLBand9AfterPrint(Sender: TObject);
    procedure ginvClick(Sender: TObject);
    procedure tabcorrecal_Execute(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure filenatuaClick(Sender: TObject);
    procedure atuafiliais_Execute(Sender: TObject);
    procedure filatuaClick(Sender: TObject);
    procedure filicadClick(Sender: TObject);
    procedure devconf_Execute(Sender: TObject);
    procedure btdevcClick(Sender: TObject);
    procedure somatdExecute(Sender: TObject);
    procedure lconsigClick(Sender: TObject);
    procedure consigselExecute(Sender: TObject);
    procedure consignada_Execute(Sender: TObject);
    procedure f11Execute(Sender: TObject);
    procedure consigpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btconsapagarClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure gradedevDblClick(Sender: TObject);
    procedure gradedevTitleClick(Column: TColumn);
    procedure consiggpClick(Sender: TObject);
    procedure btconsigimpClick(Sender: TObject);
    procedure lvencdiaChange(Sender: TObject);
    procedure lvencdiaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gconsigpDblClick(Sender: TObject);
    procedure gconsigpDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btconsigvendaClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure qentradaBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLMemo18BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure impentrada_Execute(Sender: TObject);
    procedure consigtClick(Sender: TObject);
    procedure consigvendedorClick(Sender: TObject);
    procedure combo_Execute(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure conszeraClick(Sender: TObject);
    procedure consultaprod_Execute(Sender: TObject);
    procedure Label147Click(Sender: TObject);
    procedure Label146Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Label150Click(Sender: TObject);
  private
  mp,nome,tbconsignada:string;
  nmodulo :integer;
  totpagina,totinventario,permitido,subst:double;

      VCinterno,
      VCBarras,
      VCOriginal :boolean;

    { Private declarations }
  public

  codigo,codvendedor,tipo,nconta,linkvenda :integer;
  total,comissao,qtdant,devolvido,devolver :double;
  dataini :tdate;
  codant,modulo,doc:string;

  page,controle,controle2,controle3,controle4 ,controle5:string;

    { Public declarations }
  end;

var
  fsistema: Tfsistema;

implementation

uses funcoes, udm, ucadg, upedido, uipedido,UvalidaIE;

{$R *.dfm}



procedure Tfsistema.totconsig;
var
tot1,tot2,tot3,qtdv,qtdd:double;
begin

        tot1 :=0;
        tot2 :=0;
        tot3 :=0;
        qtdv :=0;
        qtdd :=0;

        t1.Filtered := false;
        t1.First;
        t1.DisableControls;
        while not t1.eof do begin
             tot1 := tot1 + t1.fieldbyname('vendal').AsFloat*t1.fieldbyname('vrunit').AsFloat;
             tot2 := tot2 + t1.fieldbyname('custol').AsFloat*t1.fieldbyname('vrunit').AsFloat;
             tot3 := tot3 + t1.fieldbyname('total').AsFloat;
             qtdv := qtdv + t1.fieldbyname('vendal').AsFloat;
             qtdd := qtdd + t1.fieldbyname('custol').AsFloat;
             t1.next;
        end;
        t1.EnableControls;

        consigtotal.Caption := 'Qtd Consignada = ' + floattostr(qtdv) + '     '+
                              'Tot Consignada = ' + format('%n',[tot1]) + '           '+
                              'Qtd Devolvido = ' + floattostr(qtdd) + '     '+
                              'Tot Devolvido = ' + format('%n',[tot2]) + '           '+
                              'Tot Acertar = ' + format('%n',[tot3]);

      (t1.FieldByName('total') as tfloatfield).displayformat := '###,##0.00';
      (t1.FieldByName('vrunit') as tfloatfield).displayformat := '###,##0.00';
      (t1.FieldByName('totdev') as tfloatfield).displayformat := '###,##0.00';

end;


procedure Tfsistema.consdevitem;
var
st,codInterno:string;
begin

            codInterno := t1.fieldbyname('codigo').AsString;
            abortaacao(nil,T1,'chave','','','','',0);

            codloc := '1';
            st := msgi('Digite a quantidade a ser devolvida.', 2);
            consigp.SetFocus;
            if strtofloat(st) = 0 then msg('#Digite um número válido!',0);

            if (strtofloat(st)+t1.FieldByName('custol').AsFloat) <0 then msg('#Verifique a quantidade!',0);


            while (not t1.Eof) and ((strtofloat(st)+t1.FieldByName('custol').AsFloat) > t1.FieldByName('vendal').AsFloat) and
                  (t1['codigo'] = codInterno) do
                  t1.Next;


           if (strtofloat(st)+t1.FieldByName('custol').AsFloat) > t1.FieldByName('vendal').AsFloat then
               msg('#A quantidade devolvida não pode ser maior que a compra!',0);


            alimentaestoque(t1.FieldByName('codigo').AsString , strtofloat(st), '1',0);

            st :=  realdblstr(strtofloat(st));

            selecione('update '+tbconsignada+' set datadevolucao =now(), chavedevolucao = '+inttostr(usuariolink)+
                      ',  custol = if(custol is null,'+st+',custol+'+st+'),'+
                      ' qtd = vendal - custol where chave = ' + quotedstr(t1.FieldByName('chave').AsString));

            st := t1.fieldbyname('chave').AsString;
            consigselExecute(self);
            t1.Locate('chave',st,[]);
end;


procedure Tfsistema.chamacontas;
var
selpgrec,where:string;
begin
             if tipo = 1 then  selpgrec := ' and (pgrec is null or pgrec = "AMBOS" or pgrec = "REC") '
                         else  selpgrec := ' and (pgrec is null or pgrec = "AMBOS" or pgrec = "PG") ';

             t1.SQL.Clear;

             if not planocontas then
                where  := ' where (tp = '+quotedstr(inttostr(nconta))+' or tp is null)' + selpgrec  ;

             t1.SQL.Add('select * from tbconta '+ where +' order by descricao');


             t1.open;
             if controle2 = '1' then Label44.Caption :='Nome do Cartão';

             if (tipo=2) then begin
                selecione('select codconta from tbfornecedor where codigo = ' + inttostr(codigo));

                if sqlpub.RecordCount >0 then begin
                   t1.Locate('codigo',sqlpub.fieldbyname('codconta').AsString ,[]);
                   etipoconta.KeyValue := t1.fieldbyname('descricao').Value;
                end;

                if eqtd <> nil then eqtd.SetFocus;
             end;


end;




procedure Tfsistema.prodconsig(i:integer;tx:string);
  var
   codInterno:string;

procedure preenchedados;
var
qtd:double;
fabricante:string;
begin

      if fdm.sg.fieldbyname(doc).asfloat <=0 then msg('#Produto sem valor, favor verificar.',0);

      codloc :='1';
      qtd := strtofloat(msgi('Digite a quantidade:',2));
      if qtd <=0 then abort;

    if (responsavel = 'FABIO VITRINE') and (controle3<>'') then begin
       selecione2( 'select nomecurto from tbfornecedor where codigo = '+quotedstr(controle2));
       fabricante := sqlpub2.fieldbyname('nomecurto').AsString;

       selecione2( 'select chave from tbproduto where '+
                   ' codigofornecedor = '+ quotedstr(fdm.sg.fieldbyname('codigofornecedor').AsString)+
                   ' and fabricante = '+ quotedstr(fabricante));

       if sqlpub2['chave'] = null then msg('#Este produto não é deste fornecedor.',0);
    end;


      selecione('insert into '+tbconsignada+' (data, link, codigo, descricao,fabricante, custol, vendal, qtd, custo, vrunit,codigocliente,usu) values('+
                                        'now()'+
                                        ', '+inttostr(i)+
                                        ', '+quotedstr(fdm.sg.fieldbyname('codigo').AsString)+
                                        ', '+quotedstr(fdm.sg.fieldbyname('descricao').AsString)+
                                        ', '+quotedstr(consvendedor.Text)+
                                        ',0'+
                                        ', '+realdblstr(qtd)+
                                        ', '+realdblstr(qtd)+
                                        ', '+realdblstr(t1.fieldbyname('custo').AsFloat)+
                                        ', '+realdblstr(fdm.sg.fieldbyname(doc).asfloat)+
                                        ', '+quotedstr(controle2)+
                                        ', '+inttostr(usuariolink)+')');

      alimentaestoque(fdm.sg.FieldByName('codigo').AsString , qtd*(-1), '1',0);
      consigp.Clear;

end;




begin

      fechatg;
      if VCinterno then  codInterno:= ' or codigo = ' + quotedstr(tx);
      if VCBarras then   codInterno:= codInterno +' or codigobarras = ' + quotedstr(tx);
      if VCOriginal then codInterno:= codInterno + ' or codigooriginal = ' + quotedstr(tx);

      if (responsavel = 'ARISTEM') and (strisinteger(tx)) then
            codInterno := ' or codigo = ' + quotedstr(formatfloat('000000',strtofloat(formatnumeric(tx))));


      with fdm.sg do begin
         Close;
         sql.clear;
         sql.add(  'select * from tbproduto'+mp+' where ' +
                   ' descricao = ' + quotedstr(tx) + codinterno);
         open;
      end;

      if fdm.sg['codigo'] <> null then preenchedados
      else begin
         listagem('descricao',tx,'',5,0);

         if fdm.sg.Active then preenchedados;
      end;

      consigselExecute(self);
end;



procedure Tfsistema.totunit;
var
vrunit,despesaacessoria,icm,ipi,desctotal:double;
begin

    if (produto.FieldByName('vrcompra').AsFloat > 0) and
       (produto.FieldByName('fracao').AsFloat > 0) then
       vrunit := produto.FieldByName('vrcompra').AsFloat /
                   produto.FieldByName('fracao').AsFloat
    else
      vrunit := produto.FieldByName('vrcompra').AsFloat;


    if (vrunit > 0) and (produto.FieldByName('desctotal').AsFloat> 0) then
        desctotal := vrunit * produto.FieldByName('desctotal').AsFloat/100;

    vrunit := vrunit -  desctotal;


    if (produto['ativoV']='S') and (vrunit > 0 ) then begin

       if strisfloat(produto.FieldByName('imposto').asstring) then
          icm := vrunit * produto.FieldByName('imposto').AsFloat/100;
       ipi := vrunit * produto.FieldByName('ipi').AsFloat/100;

    end else begin
        icm :=0;
        ipi :=0;
    end;

    vrunit := vrunit + icm + ipi;

    if (vrunit > 0) and (produto.FieldByName('despesaacessoria').AsFloat> 0) then
        despesaacessoria := vrunit * produto.FieldByName('despesaacessoria').AsFloat/100;

    vrunit := vrunit + despesaacessoria;


    produto.edit;
    produto['vrunit'] := vrunit;


end;




procedure Tfsistema.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        t1.Close;
        t2.Close;

        if page = 'consultaprod' then fdm.tbquery2.close;

       if page = 'iso' then begin
          miso1.Lines.SaveToFile(servpath + 'imagem/iso1.txt');
          miso2.Lines.SaveToFile(servpath + 'imagem/iso2.txt');
       end;


        if page = 'registro' then
           responsavel := eresponsavel.Text;

        if (page = 'cedente') and (controle='') then begin
           focuscontrol(nil);
           fdm.tbuso.SaveToFile(servpath + 'imagem\tbcedente.cds');
           fdm.tbuso.close;
        end;


        if page = 'recpg' then
           ds.DataSet.Cancel;


     if page ='entrada' then
        fdm.tg.IndexFieldNames := '';

        focuscontrol(nil);
        if page = 'tabempresa' then begin
        end;
        fsistema := nil;
        Release;
end;

procedure Tfsistema.FormShow(Sender: TObject);
var
i,j:integer;
begin

         page := lowercase(page);

         pagecontrol1.ActivePageIndex :=0;
         j := pagecontrol1.PageCount ;

         for i:=0 to j-1 do begin
             if lowercase(pagecontrol1.ActivePage.Name) <> lowercase(page) then
                pagecontrol1.ActivePage.Destroy
             else begin
                  pagecontrol1.ActivePage.Caption :='';
                  pagecontrol1.ActivePageIndex := pagecontrol1.ActivePageIndex+1;
             end;
         end;

        pagecontrol1.ActivePageIndex :=0;
        pagecontrol1.TabHeight := 1;

        atualizaprod_Execute(self);
        curva_Execute(self);
        recpg_Execute(self);
        conta_Execute(self);
        frecpg_Execute(self);
        tabprecoproduto_Execute(self);
        inventario_Execute(self);
        cep_Execute(self);
        municipio_Execute(self);
        obsos_Execute(self);
        entrada_Execute(self);
        td_Execute(self);
        transfprod_Execute(self);
        cedente_Execute(self);
        registro_Execute(self);
        altusu_Execute(self);
        permissoes_Execute(self);
        tabip_Execute(self);
        comifun_Execute(self);
        iso_Execute(self);
        nimport_Execute(self);
        tabplanalmed_Execute(self);
        clinf_Execute(self);
        tabcorrecal_Execute(self);
        atuafiliais_Execute(self);
        devconf_Execute(self);
        consignada_Execute(self);
        impentrada_Execute(self);
        combo_Execute(self);
        consultaprod_Execute(self);



end;

procedure Tfsistema.btnsairClick(Sender: TObject);
begin
        close;
end;

procedure Tfsistema.edpermKeyPress(Sender: TObject; var Key: Char);
begin
        if not (key in ['0'..'9', #8, ',', '-']) then abort;
end;

procedure Tfsistema.edperKeyPress(Sender: TObject; var Key: Char);
begin
        if not (key in ['0'..'9', #8, ',', '-']) then abort;
end;

procedure Tfsistema.btnalterarClick(Sender: TObject);
var
  script,campo: string;
begin

        if (edper.Text = '') then
           msg('#Degite a percentagem!',0);

        if msg('Deseja alterar?',2)= false then abort;

        script := '';

        case rtipo1.ItemIndex of
             0: script := ' where departamento = ' + quotedstr(ldepartamento1.Caption);
             1: script := ' where familia = ' + quotedstr(lfamilia1.Caption);
             2: script := ' where grupo = ' + quotedstr(lgrupo1.Caption);
             3: script := ' where subgrupo = ' + quotedstr(lsubgrupo1.Caption);
             4: script := ' where fabricante = ' + quotedstr(lfornecedor1.Caption);
             5: script := ' where codigo = ' + quotedstr(lcodigo.caption);
        end;

        case rvalor.ItemIndex of
             0:campo :='vrvenda = vrvenda + (vrvenda * ' +  realdblstr(strtofloat(edper.Text)) + ' / 100), ' +
                       'percent = vrvenda * 100 /  vrunit - 100 ';
             1:campo :='vratacado = vratacado + (vratacado * ' +  realdblstr(strtofloat(edper.Text)) + ' / 100), ' +
                       'percentatacado = vratacado * 100 /  vrunit - 100 ';
             2:campo :='valor3 = valor3 + (valor3 * ' +  realdblstr(strtofloat(edper.Text)) + ' / 100), ' +
                       'percent3 = valor3 * 100 /  vrunit - 100 ' ;
        end;

        selecione('update tbproduto'+mp+' set data = now(),'+  campo+  script);
        GALTERA('5',lcodigo.caption,'a');
        close;

end;

procedure Tfsistema.BitBtn36Click(Sender: TObject);
var
campo,script:string;
begin


         if (edperm.Text = '') then
           msg('#Degite a percentagem!',0);

        if msg('Deseja alterar?',2)= false then abort;   


        case rtipo1.ItemIndex of
             0: script := ' where departamento = ' + quotedstr(ldepartamento1.Caption);
             1: script := ' where familia = ' + quotedstr(lfamilia1.Caption);
             2: script := ' where grupo = ' + quotedstr(lgrupo1.Caption);
             3: script := ' where subgrupo = ' + quotedstr(lsubgrupo1.Caption);
             4: script := ' where fabricante = ' + quotedstr(lfornecedor1.Caption);
             5: script := ' where codigo = ' + quotedstr(lcodigo.caption);
        end;


        if rvalor.ItemIndex = 0 then
           campo :=' percent = '+ realdblstr(strtofloat(edperm.Text))+
                   ' ,vrvenda = vrunit + (vrunit * ' +  realdblstr(strtofloat(edperm.Text)) + ' / 100) '

        else if rvalor.ItemIndex = 1 then
           campo :=' percentatacado = '+ realdblstr(strtofloat(edperm.Text))+
                   ' ,vratacado = vrunit + (vrunit * ' +  realdblstr(strtofloat(edperm.Text)) + ' / 100) '

        else if rvalor.ItemIndex = 2 then
           campo :=' percent3 = '+ realdblstr(strtofloat(edperm.Text))+
                   ' ,valor3 = vrunit + (vrunit * ' +  realdblstr(strtofloat(edperm.Text)) + ' / 100) ' ;

        selecione('update tbproduto'+mp+' set data = now(),'+ campo + script);
        GALTERA('5',lcodigo.caption,'a');
        close;


end;

procedure Tfsistema.atualizaprod_Execute(Sender: TObject);
begin
            if page = 'atualizaprod' then begin

               ldepartamento1.DataField := 'departamento';
               lfamilia1.DataField := 'familia';
               lgrupo1.DataField := 'grupo';
               lsubgrupo1.DataField := 'subgrupo';
               lfornecedor1.DataField := 'fabricante';
               lcodigo.DataField := 'codigo';
               lproduto1.DataField := 'Descricao';
               caption := 'Alterar valor';
               btnsair.destroy;
               tabsheet4.Show;
               edper.SetFocus;

               if controle <>'atualiza' then begin
                  PageControl2.Top :=PageControl3.top;
                  PageControl3.Destroy;
                  rvalor.Destroy;
                  PageControl2.ActivePageIndex:=0;
                  Edit1.SetFocus;
                  MaskEdit7.Text := datetostr(now);
                  MaskEdit8.Text := datetostr(now+15);
               end else PageControl2.Destroy;

               if codloc <> '' then mp := 'mp';
            end;


end;

procedure Tfsistema.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
        if not (key in['0'..'9',#8,',','-']) then abort;

end;

procedure Tfsistema.BitBtn39Click(Sender: TObject);
var
  loc, script,percent,grupo:string;
  vr:double;
begin


           if edit1.Text ='' then
              msg('#Vecê não digitou valor!', 0);

           if (maskedit7.Text = '  /  /    ') or (maskedit8.Text = '  /  /    ') then
              msg('#Digite o início e o fim da promoção!', 0);

           if (strtodate(maskedit7.Text) < date) or
              (strtodate(maskedit8.Text) < date) then
               msg('#O início e o fim da promoção devem ser maior que hoje!', 0);

           if msg('Deseja alterar?',2)= false then abort;

           vr := strtofloat(edit1.Text);

           case RadioGroup1.ItemIndex of
                0:script := ', vrpromocao = vrvenda - (vrvenda*'+ realdblstr(vr) +'/100)' ;
                1:script := ', vrpromocao = vrvenda - '+ realdblstr(vr) ;
           end;

           case rtipo1.ItemIndex of
                0: script := script +  ' where departamento = ' + quotedstr(ldepartamento1.Caption);
                1: script := script +  ' where familia = ' + quotedstr(lfamilia1.Caption);
                2: script := script +  ' where grupo = ' + quotedstr(lgrupo1.Caption);
                3: script := script +  ' where subgrupo = ' + quotedstr(lsubgrupo1.Caption);
                4: script := script +  ' where fabricante = ' + quotedstr(lfornecedor1.Caption);
                5: script := script +  ' where codigo = ' + quotedstr(lcodigo.caption);
           end;


           selecione('update tbproduto'+mp+' set '+
                     'promocao = "S" '+
                     ', iniciopromocao = ' + quotedstr(formatdatetime('yyyy/mm/dd',strtodate(maskedit7.Text)))+
                     ',validade = ' + quotedstr(formatdatetime('yyyy/mm/dd',strtodate(maskedit8.Text)))+
                        script+ grupo);
           GALTERA('5',lcodigo.caption,'a');
          close;

end;

procedure Tfsistema.BitBtn40Click(Sender: TObject);
var
loc,tipo,script:string;
begin
           case rtipo1.ItemIndex of

                0: begin
                      tipo := 'Deseja tirar o departamento da promoção?' ;
                      script := ' where departamento = ' + quotedstr(ldepartamento1.Caption);
                   end;

                1: begin
                      tipo := 'Deseja tirar a seção da promoção?' ;
                      script := ' where familia = ' + quotedstr(lfamilia1.Caption);
                   end;

                2: begin
                      tipo := 'Deseja tirar o grupo da promoção?' ;
                      script := ' where grupo = ' + quotedstr(lgrupo1.Caption);
                   end;
                3: begin
                      tipo := 'Deseja tirar o sub grupo da promoção?' ;
                      script := ' where subgrupo = ' + quotedstr(lsubgrupo1.Caption);
                   end;
                4: begin
                      tipo := 'Deseja tirar  o fornecedor da promoção? ';
                      script := ' where fabricante = ' + quotedstr(lfornecedor1.Caption);
                   end;
                5: begin
                      tipo := 'Deseja tirar  o produto da promoção? ';
                      script := ' where codigo = ' + quotedstr(lcodigo.caption);
                   end;
           end;

           if msg(tipo,2)= false then abort;

           selecione('update tbproduto'+mp+' set promocao = null , vrpromocao = null, '+
                     ' iniciopromocao= null, validade = null '+ script);
           GALTERA('5',lcodigo.caption,'a');
           close;

end;

procedure Tfsistema.BitBtn38Click(Sender: TObject);
var
loc,tipo,script,modo:string;
begin


          if epromocao.Value = 0 then
             msg('#Você vai aumentar ou diminuir a promoção? Escolha antes a quantidade de dias.',0);


          if epromocao.Value >0 then
             modo :='aumentar'
          else
             modo :='diminuir';


           case rtipo1.ItemIndex of

                0: begin
                      tipo := 'Deseja '+modo+' a promoção do departamento em '+epromocao.Text+' dia(s)?' ;
                      script := ' where departamento = ' + quotedstr(ldepartamento1.Caption);
                   end;

                1: begin
                      tipo := 'Deseja '+modo+' a promoção da seção em '+epromocao.Text+' dia(s)?' ;
                      script := ' where familia = ' + quotedstr(lfamilia1.Caption);
                   end;
                2: begin
                      tipo := 'Deseja '+modo+' a promoção do grupo em '+epromocao.Text+' dia(s)?' ;
                      script := ' where grupo = ' + quotedstr(lgrupo1.Caption);
                   end;
                3: begin
                      tipo := 'Deseja '+modo+' a promoção do sub grupo em '+epromocao.Text+' dia(s)?' ;
                      script := ' where subgrupo = ' + quotedstr(lsubgrupo1.Caption);
                   end;
                4: begin
                      tipo := 'Deseja '+modo+' a promoção do fornecedor em '+epromocao.Text+'  dia(s)? ' ;
                      script := ' where fabricante = ' + quotedstr(lfornecedor1.Caption);
                   end;
                5: begin
                      tipo := 'Deseja '+modo+' a promoção do produto em '+epromocao.Text+' dia(s)?';
                      script := ' where codigo = ' + quotedstr(lcodigo.caption);
                   end;
           end;

           if msg(tipo,2)= false then abort;

           selecione('update tbproduto'+mp+' set validade = '+
                     'if(validade is not null, validade + ' +
                      quotedstr(epromocao.Text) +', null) '+ script);

           GALTERA('5',lcodigo.caption,'a');
           close;

end;

procedure Tfsistema.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (key = 13) then
           Perform(wm_nextdlgctl, 0,0);
        if (key = 27) then
           Perform(wm_nextdlgctl, 1,0);

        if (key = vk_insert) and (page = 'conta') then btnokclick(self);

        if (key = vk_f10) and (page = 'consultaprod') then begin
        if gcompra.Visible=false then begin
           Label122.show;
           Label153.show;
           StaticText25.show;
           comp38.show;
           comp39.show;
           gcompra.show;
        end else begin

           Label122.hide;
           Label153.hide;
           StaticText25.hide;
           comp38.hide;
           comp39.hide;
           gcompra.hide;
        end;
        end;

end;

procedure Tfsistema.curva_Execute(Sender: TObject);
var
tb:string;
begin
            if page = 'curva' then begin
               caption := 'Curva ABC de '+controle;
               btnsair.Parent := curva;
               btnsair.Top := 82;
               btnsair.left := 268;
               ea.SetFocus;
               dtc1.Text := datetostr(now-30);
               dtc2.Text := datetostr(now);

               if controle2 = '5' then
                  tb:= 'tbproduto'
               else if controle2 = '4' then
                  tb:= 'tbcliente'
               else if controle2 = '7' then
                  tb:= 'tbfornecedor';

               selecione('select inicurva,fincurva from '+tb+ ' where inicurva is not null limit 1,1');
               if sqlpub['inicurva']<> null then
                   lcurva.Caption := 'Última Calssificação. '+
                                     'De: '+sqlpub.fieldbyname('inicurva').AsString+
                                     ' A: '+sqlpub.fieldbyname('fincurva').AsString
               else lcurva.Caption := '';
               sqlpub:= nil;

            end;
end;

procedure Tfsistema.eaChange(Sender: TObject);
begin
      totalcurva.Caption := 'Total = ' +
                        floattostr(strtofloat(ea.Text) +
                        strtofloat(eb.Text) +
                        strtofloat(ec.Text) +
                        strtofloat(ed.Text) +
                        strtofloat(ee.Text) +
                        strtofloat(ef.Text)) + '%';
end;

procedure Tfsistema.eaExit(Sender: TObject);
begin
          with Sender as tedit do
            if Text = '' then Text := '0';
end;

procedure Tfsistema.curvaprodutoExecute(Sender: TObject);
var
  tb,tbmov, dtini, dtfin,codigo: string;
  AQ, BQ, CQ, DQ, EQ, FQ, soma, AV, BV, CV, DV, EV, FV: double;

begin


        focuscontrol(nil);

        eaChange(self);

        if totalcurva.Caption <> 'Total = 100%' then
           msg('#As curvas devem somar 100%!',0);

        if controle2 = '5' then begin
           tb    := 'tbproduto';
           tbmov := 'tbpedidoitem';
           codigo   :='codigo';
        end else if controle2 = '4' then begin
           tb    := 'tbcliente';
           tbmov := 'tbpedidoitem';
           codigo   :='codigocliente';
        end else if controle2 = '7' then begin
           tb    := 'tbfornecedor';
           tbmov := 'tbentradaitem';
           codigo   :='codigofornecedor';
        end;

        lspcurva.Show;
        lspcurva.Update;

        dtini := formatdatetime('yyyy/mm/dd', strtodate(dtc1.Text));
        dtfin := formatdatetime('yyyy/mm/dd', strtodate(dtc2.Text));

                                      
        with fdm.Query1 do begin
          Close;
          sql.Clear;
          sql.add( 'update '+tb+' set curvaqtd = "N", curvavalor = "N", IniCurva = null, FinCurva=null');
          execsql;

          sql.Clear;
          sql.add( 'drop table if exists tbmargem');
          execsql;

          sql.Clear;
          sql.add( 'CREATE TABLE tbmargem ( ' +
                   'tipo varchar(1)' +
                   ', codigo varchar (13)' +
                   ', qtd double ' +
                   ', total double) ');
          execsql;

          // seleciona  venda  pedido
          sql.Clear;
          sql.add('insert into tbmargem (select concat("G")as tipo, '+codigo +
                   ' ,sum(qtd)as qtd, '+
                   'if (descontoreal is not null, '+
                   '(vrunit - descontoreal) * sum(qtd), '+
                   'vrunit * sum(qtd)) as total '+
                   ' from ' +tbmov+
                   ' where cnt is null and data  between ' + quotedstr(dtini) + ' and ' +
                   quotedstr(dtfin) + ' group by '+codigo+')');
           execsql;


           // agrupa  venda com uma nova média
            sql.Clear;
            sql.add( 'insert into tbmargem (select concat("")as tipo, codigo ' +
                     ' ,sum(qtd)as qtd, sum(total)as total from tbmargem group by codigo order by qtd desc)');
            execsql;



            // apaga venda não agrupada
            sql.Clear;
            sql.add( 'delete from tbmargem where tipo = "G"');
            execsql;



            Close;
            sql.Clear;
            sql.add( 'select codigo, qtd from tbmargem order by qtd desc');
          end;


          // calcula o percent de cada curva
          with fdm.query2 do  begin
               Close;
               SQL.clear;
               SQL.Add(  'select sum(qtd)as qtd from tbmargem');
               Open;

               AQ := FieldByName('qtd').AsFloat * strtofloat(ea.Text) / 100;
               BQ := FieldByName('qtd').AsFloat * strtofloat(eb.Text) / 100;
               CQ := FieldByName('qtd').AsFloat * strtofloat(ec.Text) / 100;
               DQ := FieldByName('qtd').AsFloat * strtofloat(ed.Text) / 100;
               EQ := FieldByName('qtd').AsFloat * strtofloat(ee.Text) / 100;
               FQ := FieldByName('qtd').AsFloat * strtofloat(ef.Text) / 100;

               Close;
               SQL.clear;
               SQL.Add(  'select sum(total)as total from tbmargem');
               Open;

              AV := FieldByName('total').AsFloat * strtofloat(ea.Text) / 100;
              BV := FieldByName('total').AsFloat * strtofloat(eb.Text) / 100;
              CV := FieldByName('total').AsFloat * strtofloat(ec.Text) / 100;
              DV := FieldByName('total').AsFloat * strtofloat(ed.Text) / 100;
              EV := FieldByName('total').AsFloat * strtofloat(ee.Text) / 100;
              FV := FieldByName('total').AsFloat * strtofloat(ef.Text) / 100;

              Close;


          fdm.tbquery1.close;
          fdm.tbquery1.Open;

          // atualiza a curvaqtd de "A"
          if AQ > 0 then
          begin
            fdm.tbquery1.First;
            soma := 0;

            while (soma < AQ) and (fdm.tbquery1.RecordCount > 0) do
            begin
              SQL.clear;
              SQL.Add(  'update  '+tb+'  set curvaqtd ="A" where codigo = ' +
                             quotedstr(fdm.tbquery1.FieldByName('codigo').AsString));
              execsql;
              soma := soma + fdm.tbquery1.FieldByName('qtd').AsFloat;
              fdm.tbquery1.Delete;
            end;
          end;



          // atualiza a curvaqtd de "B"
          if BQ > 0 then
          begin
            fdm.tbquery1.First;
            soma := 0;

            while (soma < BQ) and (fdm.tbquery1.RecordCount > 0) do
            begin
              SQL.clear;
              SQL.Add(  'update  '+tb+'  set curvaqtd ="B" where codigo = ' +
                quotedstr(fdm.tbquery1.FieldByName('codigo').AsString));
              execsql;
              soma := soma + fdm.tbquery1.FieldByName('qtd').AsFloat;
              fdm.tbquery1.Delete;
            end;
          end;


          // atualiza a curvaqtd de "C"
          if CQ > 0 then
          begin
            fdm.tbquery1.First;
            soma := 0;

            while (soma < CQ) and (fdm.tbquery1.RecordCount > 0) do
            begin
              SQL.clear;
              SQL.Add(  'update  '+tb+'  set curvaqtd ="C" where codigo = ' +
                quotedstr(fdm.tbquery1.FieldByName('codigo').AsString));
              execsql;
              soma := soma + fdm.tbquery1.FieldByName('qtd').AsFloat;
              fdm.tbquery1.Delete;
            end;
          end;


          // atualiza a curvaqtd de "D"
          if DQ > 0 then
          begin
            fdm.tbquery1.First;
            soma := 0;

            while (soma < DQ) and (fdm.tbquery1.RecordCount > 0) do
            begin
              SQL.clear;
              SQL.Add(  'update  '+tb+'  set curvaqtd ="D" where codigo = ' +
                quotedstr(fdm.tbquery1.FieldByName('codigo').AsString));
              execsql;
              soma := soma + fdm.tbquery1.FieldByName('qtd').AsFloat;
              fdm.tbquery1.Delete;
            end;
          end;


          // atualiza a curvaqtd de "E"
          if EQ > 0 then
          begin
            fdm.tbquery1.First;
            soma := 0;

            while (soma < EQ) and (fdm.tbquery1.RecordCount > 0) do
            begin
              SQL.clear;
              SQL.Add(  'update  '+tb+'  set curvaqtd ="E" where codigo = ' +
                quotedstr(fdm.tbquery1.FieldByName('codigo').AsString));
              execsql;
              soma := soma + fdm.tbquery1.FieldByName('qtd').AsFloat;
              fdm.tbquery1.Delete;
            end;
          end;


          // atualiza a curvaqtd de "F"
          if FQ > 0 then
          begin
            fdm.tbquery1.First;
            soma := 0;

            while (soma < FQ) and (fdm.tbquery1.RecordCount > 0) do
            begin
              SQL.clear;
              SQL.Add(  'update  '+tb+'  set curvaqtd ="F" where codigo = ' +
                quotedstr(fdm.tbquery1.FieldByName('codigo').AsString));
              execsql;
              soma := soma + fdm.tbquery1.FieldByName('qtd').AsFloat;
              fdm.tbquery1.Delete;
            end;
          end;


          fdm.tbquery1.Close;
          fdm.query1.sql.Clear;
          fdm.query1.sql.add( 'select codigo, total from tbmargem order by total desc');
          fdm.tbquery1.Open;


          ////// calcula a curva valor

          //dtini := formatdatetime('yyyy/mm/dd', date);

          // atualiza a curvavalor de "A"
          if AV > 0 then
          begin
            fdm.tbquery1.First;
            soma := 0;

            while (soma < AV) and (fdm.tbquery1.RecordCount > 0) do
            begin
              SQL.clear;
              SQL.Add(  'update  '+tb+'  set curvavalor ="A" ' +
                ' ,IniCurva = ' + quotedstr(dtini) +
                ' ,FinCurva = ' + quotedstr(dtfin) +
                ' where codigo = ' +
                quotedstr(fdm.tbquery1.FieldByName('codigo').AsString));
              execsql;
              soma := soma + fdm.tbquery1.FieldByName('total').AsFloat;
              fdm.tbquery1.Delete;
            end;
          end;



          // atualiza a curvavalor de "B"
          if BV > 0 then
          begin
            fdm.tbquery1.First;
            soma := 0;

            while (soma < BV) and (fdm.tbquery1.RecordCount > 0) do
            begin
              SQL.clear;
              SQL.Add(  'update  '+tb+'  set curvavalor ="B" ' +
                ' ,IniCurva = ' + quotedstr(dtini) +
                ' ,FinCurva = ' + quotedstr(dtfin) +
                ' where codigo = ' +
                quotedstr(fdm.tbquery1.FieldByName('codigo').AsString));
              execsql;
              soma := soma + fdm.tbquery1.FieldByName('total').AsFloat;
              fdm.tbquery1.Delete;
            end;
          end;


          // atualiza a curvaVALOR de "C"
          if CV > 0 then
          begin
            fdm.tbquery1.First;
            soma := 0;

            while (soma < CV) and (fdm.tbquery1.RecordCount > 0) do
            begin
              SQL.clear;
              SQL.Add(  'update  '+tb+'  set curvavalor ="C" ' +
                ' ,IniCurva = ' + quotedstr(dtini) +
                ' ,FinCurva = ' + quotedstr(dtfin) +
                ' where codigo = ' +
                quotedstr(fdm.tbquery1.FieldByName('codigo').AsString));
              execsql;
              soma := soma + fdm.tbquery1.FieldByName('total').AsFloat;
              fdm.tbquery1.Delete;
            end;
          end;


          // atualiza a curvavalor de "D"
          if DV > 0 then
          begin
            fdm.tbquery1.First;
            soma := 0;

            while (soma < DV) and (fdm.tbquery1.RecordCount > 0) do
            begin
              SQL.clear;
              SQL.Add(  'update  '+tb+'  set curvavalor ="D" ' +
                ' ,IniCurva = ' + quotedstr(dtini) +
                ' ,FinCurva = ' + quotedstr(dtfin) +
                ' where codigo = ' +
                quotedstr(fdm.tbquery1.FieldByName('codigo').AsString));
              execsql;
              soma := soma + fdm.tbquery1.FieldByName('total').AsFloat;
              fdm.tbquery1.Delete;
            end;
          end;


          // atualiza a curvavalor de "E"
          if EV > 0 then
          begin
            fdm.tbquery1.First;
            soma := 0;

            while (soma < EV) and (fdm.tbquery1.RecordCount > 0) do
            begin
              SQL.clear;
              SQL.Add(  'update  '+tb+'  set curvavalor ="E" ' +
                ' ,IniCurva = ' + quotedstr(dtini) +
                ' ,FinCurva = ' + quotedstr(dtfin) +
                ' where codigo = ' +
                quotedstr(fdm.tbquery1.FieldByName('codigo').AsString));
              execsql;
              soma := soma + fdm.tbquery1.FieldByName('total').AsFloat;
              fdm.tbquery1.Delete;
            end;
          end;


          // atualiza a curvavalor de "F"
          if FV > 0 then
          begin
            fdm.tbquery1.First;
            soma := 0;

            while (soma < FV) and (fdm.tbquery1.RecordCount > 0) do
            begin
              SQL.clear;
              SQL.Add(  'update  '+tb+'  set curvavalor ="F" ' +
                ' ,IniCurva = ' + quotedstr(dtini) +
                ' ,FinCurva = ' + quotedstr(dtfin) +
                ' where codigo = ' +
                quotedstr(fdm.tbquery1.FieldByName('codigo').AsString));
              execsql;
              soma := soma + fdm.tbquery1.FieldByName('total').AsFloat;
              fdm.tbquery1.Delete;
            end;
          end;

          //dtini := formatdatetime('yyyy/mm/dd', date);
          // atualiza os sem movimento
              SQL.clear;
              SQL.Add(  'update  '+tb+'  set curvaqtd =null ' +
            ' ,curvavalor = null where IniCurva <> ' + quotedstr(dtini));
         // execsql;

          fdm.query1.Close;
          fdm.query2.Close;
          fdm.tbquery1.Close;
          lcurva.Caption := 'Última Calssificação: '+datetostr(now);
          lspcurva.hide;
          msg('Executado com sucesso!'+#13+#13+'Para imprimir: No cadastro do produto '+
                      'clique em CurvaQtd ou CurvaValor, filtre-a e clique em imprimir.',0);
          close;            

        end;
        close;


end;

procedure Tfsistema.BitBtn9Click(Sender: TObject);
begin
        curvaprodutoExecute(self);
end;

procedure Tfsistema.enomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (key = 13) and (enome.Text <> '') then  begin
           with fdm.sg do begin
                Close;
                sql.clear;
                sql.add('select * from tbfornecedor where nome = ' +
                        quotedstr(enome.Text) + ' or codigo = ' + quotedstr(enome.Text));
                Open;
           end;


           if fdm.sg['codigo'] <> null then begin
              ds.DataSet.fieldbyname('passado').AsString := fdm.sg.fieldbyname('nome').AsString;
              ds.DataSet.fieldbyname('datapassado').AsDateTime := date;

           end else begin
              listagem('nome',enome.Text,'',7,0);

           if fdm.sg.Active then begin
              ds.DataSet.fieldbyname('passado').AsString := fdm.sg.fieldbyname('nome').AsString;
              ds.DataSet.fieldbyname('datapassado').AsDateTime := date;
           end;

          end;
          fechatg;
        end;

end;

procedure Tfsistema.recpg_Execute(Sender: TObject);
begin

            if page = 'recpg' then begin

               nconta := strtoint(controle2);
               tipo := strtoint(controle);

               caption := 'Alterar a conta';
               btnsair.Parent := recpg;
               btnsair.Top := 130;
               btnsair.left := 446;
               DBLookupComboBox1.SetFocus;
               DBLookupComboBox1.DataSource := ds;
               if tipo = 1 then cposicao.DataSource := ds;

               DBEdit2.DataSource := ds;
               eletra.DataSource := ds;

               if tipo=2 then emora.DataSource := ds;

               pgevalor.DataSource := ds;
               pgedesconto.DataSource := ds;
               pgeacrescimo.DataSource := ds;
               evrdocumento.DataSource := ds;
               erecebido.DataSource := ds;
               ediferenca.DataSource := ds;
               DBEdit3.DataSource := ds;
               DBEdit5.DataSource := ds;
               DBEdit1.DataSource := ds;
               DBEdit8.DataSource := ds;
               DBEdit9.DataSource := ds;
               DBEdit12.DataSource := ds;

               if tipo=1 then enome.DataSource := ds;
               if tipo=1 then edata.DataSource := ds;



              if tipo=2 then begin
                lposicao.Hide;
                cposicao.Hide;
                DBLookupComboBox1.Width := 304;
                cposicao.ListSource := nil;

              end else begin

                 with t2 do begin
                      sql.Clear;
                      sql.Add('select descricao from tbcontaposicao order by descricao');
                      open;
                 end;
             end;


             
             chamacontas;

             if tipo=2 then begin
                pcheque.Visible :=  nconta = 2;
                emora.show;
                emora.DataField := 'mora';
                pgmora.show;
                Label47.Hide;
                DBEdit8.Hide;
                DBEdit9.Hide;
             end else begin
                pcheque.Visible :=  nconta = 2;
             end;

             if pcheque.Visible = false then begin
                DBEdit12.Left := 0;
                DBEdit12.Width := 516;
                pgobservacao.Left :=0;
             end;

         end;


end;

procedure Tfsistema.pgevalorExit(Sender: TObject);
begin

        with sender as tdbedit do
             if modified then begin

                with ds.DataSet do begin
                     Edit;
                     FieldByName('total').AsFloat := FieldByName('vrdocumento').AsFloat +
                                                     FieldByName('acrescimo').AsFloat -
                                                     FieldByName('desconto').AsFloat;


                     if FieldByName('total').AsFloat > 0 then  begin
                        if FieldByName('recebido').AsFloat > 0 then
                           FieldByName('diferenca').AsFloat := FieldByName('total').AsFloat -
                                                              FieldByName('recebido').AsFloat
                        else
                           FieldByName('diferenca').AsFloat := FieldByName('total').AsFloat;
                    end;
                end;    
        end;

end;

procedure Tfsistema.BitBtn16Click(Sender: TObject);
var
posicaoconta,passado,dtpassado,ntb,loc,tipoconta,mora:string;
begin

        focuscontrol(nil);

        if (DBEdit2.text='') or
           (evrdocumento.Text='') then
           msg('#Preencha os campos corretamente!!!',0);


       if controle = 'pg' then
          mora := ',mora = ' + realdblstr(ds.DataSet.fieldbyname('mora').AsFloat);

       if  DBLookupComboBox1.Text <> '' then
           tipoconta  :=  'codconta = ' + quotedstr(t1.fieldbyname('chave').AsString) +',';

       if  cposicao.Text <> '' then
           posicaoconta  :=  ', posicaoconta = ' + quotedstr(cposicao.Text) ;

        if ppassado.Visible then begin
           passado := ',passado = '+quotedstr(ds.DataSet.fieldbyname('passado').AsString);

           if ds.DataSet['datapassado']<> null then
              dtpassado := ',datapassado = '+  QuotedStr(FormatDateTime('yyyy-mm-dd',
                                                         ds.DataSet.fieldbyname('datapassado').AsDateTime));
        end;


        if controle = '2' then
           ntb :='tbpagar'
        else
           ntb :='tbreceber';

        selecione('update '+ntb+' set '+ tipoconta +
                  ' documento = ' +quotedstr(ds.DataSet.fieldbyname('documento').AsString) +
                  ',letra = ' + quotedstr(ds.DataSet.fieldbyname('letra').AsString) +

                  passado+
                  dtpassado+
                  posicaoconta+
                  ',cheque = ' + quotedstr(ds.DataSet.fieldbyname('cheque').AsString) +
                  ',agencia = ' + quotedstr(ds.DataSet.fieldbyname('agencia').AsString) +
                  ',conta = ' + quotedstr(ds.DataSet.fieldbyname('conta').AsString) +
                  ',banco = null'+
                  mora+
                  ',total = ' + realdblstr(ds.DataSet.fieldbyname('total').AsFloat)+
                  ',desconto = ' + realdblstr(ds.DataSet.fieldbyname('desconto').AsFloat)+
                  ',acrescimo = ' + realdblstr(ds.DataSet.fieldbyname('acrescimo').AsFloat)+
                  ',vrdocumento = ' +realdblstr(ds.DataSet.fieldbyname('vrdocumento').AsFloat)+
                  ',recebido = ' + realdblstr(ds.DataSet.fieldbyname('recebido').AsFloat)+
                  ',diferenca = ' + realdblstr(ds.DataSet.fieldbyname('diferenca').AsFloat)+
                  ',dtvencimento = ' +quotedstr(formatdatetime('yyyy-mm-dd',ds.DataSet.fieldbyname('dtvencimento').AsDateTime)) +
                  ',obs = ' + quotedstr(ds.DataSet.fieldbyname('obs').AsString) +
                  ' where chave = '+quotedstr(ds.DataSet.fieldbyname('chave').AsString)) ;



                  if controle = 'pg' then
                     galtera('10',ds.DataSet.fieldbyname('chave').asstring,'a')
                 else
                     galtera('9',ds.DataSet.fieldbyname('chave').asstring,'a');

                 close;

end;

procedure Tfsistema.conta_Execute(Sender: TObject);
var
ntb,nconta_,pgrec:string;
begin                   

            if page = 'conta' then begin
               gradeconta.DataSource := ds;
               ds.DataSet := tabela;
               etipoconta.SetFocus;

               if nconta <>2 then begin
                  gradeconta.Columns[0].Destroy;
                  gradeconta.Columns[0].Destroy;
                  gradeconta.Columns[0].Destroy;
                  gradeconta.Columns[0].Destroy;
               end else gradeconta.Columns[5].Index :=0 ;

                                            
               //se nao for entrada ou venda
               if linkvenda = 0 then begin
                  if tipo = 2 then ntb :='tbpagar' else ntb :='tbreceber';
                  selecione('select max(chave)as doc from ' + ntb);
                  edocumento.Text := inttostr(sqlpub.fieldbyname('doc').AsInteger + 1);
               end else edocumento.text := doc;

               if tipo = 2 then ntb :='tbfornecedor' else ntb :='tbcliente';
               selecione('select nome from ' + ntb + ' where codigo = '+quotedstr(inttostr(codigo)));

               ltot.Caption := '  Total: '+ format('%n',[total])+'  ';

               lnome.Caption := '  Cód/Nome: ' +  inttostr(codigo) + ' - '+
                               copy(sqlpub.fieldbyname('nome').AsString,1,58);

               nome := sqlpub.fieldbyname('nome').AsString;

               case nconta of
                  1:nconta_ :=' Cartão';
                  2:nconta_ :=' Cheque';
                  3:nconta_ :=' A Prazo';
               end;

               caption := 'Gerar Conta'+nconta_;
               btnsair.Parent := pconta;
               btnsair.Top := 0;
               btnsair.left := 520;
               emora2.visible := tipo = 2;
               lmora2.visible := tipo = 2;
               pcheque2.visible := nconta = 2;

               //nao cheque
               if nconta <> 2 then begin
                  lobs.Left :=2;
                  eobs.Left :=1;
                  eobs.Width :=360;
               end;

               if controle2 = 'ch' then ppassado.Show;
               chamacontas;

             //vitalcred
             if modulo  = 'v' then lobs.Caption := 'CPF';
             if (responsavel = 'FABIO VITRINE') and (modulo = '28') and (codloc <> '') and (strisdate(codloc)) then begin
                 evencimento.Text := codloc;
                 lvencdia.Value := trunc((strtodate(evencimento.Text) - date));
                 eqtd.ItemIndex :=0;
                 
             end;

          end;
end;

procedure Tfsistema.ltipocontaClick(Sender: TObject);
begin
        cadplanocontas;
        t1.Refresh;
end;

procedure Tfsistema.etipocontaClick(Sender: TObject);
var
st:string;
begin


        //cheq proprio
        if (tipo = 2) and (nconta = 2) then begin
           eagencia.Text := t1.fieldbyname('agencia').AsString;
           econta.Text := t1.fieldbyname('conta').AsString;
           ebanco.Text := t1.fieldbyname('banco').AsString;
        end;

        //cartao cliente
        if (responsavel = 'FABIO VITRINE') and (modulo = '28') and (codloc <> '') and (strisdate(codloc)) then else begin
        if (nconta = 1) and (tipo = 1) and (t1.fieldbyname('recebimento').AsFloat >0) then
              lvencdia.Value := t1.fieldbyname('recebimento').value
         else lvencdia.Value := 30;
         end;

end;

procedure Tfsistema.etipocontaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_f4 then etipoconta.DropDown;

end;

procedure Tfsistema.preencheExecute(Sender: TObject);
var
sobra:real;
somadia,i:integer;
dt:tdatetime;

dia:string;
begin              

        if (eqtd.Text <> '') and
           (evencimento.Text <> '  /  /    ')and
           (eintervalo.Text <> '') and
           (etipoconta.Text <>'') then begin
            tabela.close;
            tabela.CreateDataSet;
            tabela.Open;

            // sobra

            sobra := roundto(total /strtofloat(eqtd.Text),-2);
            sobra := total -(sobra * strtofloat(eqtd.Text));


            dt := strtodate(evencimento.Text);

            for i := 1 to strtoint(eqtd.Text) do begin

                    tabela.Insert;

                    // 1 parcela
                    if  i = 1 then begin
                        // evita que as percelas caem sábado ou domingo
                        dia := DiaSemana (strtodate(evencimento.Text));
                        if dia = 'SABADO' then
                           somadia := 2
                        else if dia = 'DOMINGO' then
                           somadia := 1
                        else somadia :=0;

                        if responsavel = 'CLARUS' then
                          tabela['vencimento'] := strtodate(evencimento.Text)
                        else
                          tabela['vencimento'] := strtodate(evencimento.Text)+ somadia;
                          tabela['valor'] := roundto(total /strtofloat(eqtd.Text),-2) + sobra;
                    end else begin

                        // evita que as percelas caem sábado ou domingo
                        dia := DiaSemana (strtodate(evencimento.Text)+(eintervalo.Value * (i-1)));
                        if dia = 'SABADO' then
                           somadia := 2
                        else if dia = 'DOMINGO' then
                           somadia := 1
                        else somadia :=0;

                          if rcomercial.Checked then begin
                             dt := SumaMes(dt);
                             tabela['vencimento'] := SumaMes(dt+somadia);

                          end else begin

                             if responsavel = 'CLARUS' then
                                tabela['vencimento']:=(strtodate(evencimento.Text)+ (eintervalo.Value * (i-1)))
                             else
                                tabela['vencimento']:= (strtodate(evencimento.Text)+ (eintervalo.Value * (i-1))) + somadia;

                          end;

                          tabela['valor'] := roundto(total /strtofloat(eqtd.Text),-2);

                    end;

                    if responsavel = 'CLARUS' then
                       tabela['dia'] := DiaSemana (strtodate(evencimento.Text)+(eintervalo.Value * (i-1)))
                    else
                       tabela['dia'] := DiaSemana (strtodate(evencimento.Text)+(eintervalo.Value * (i-1))+somadia);

                    tabela['documento'] :=  edocumento.Text;
                    tabela['contador'] := i;

                    if nconta = 2 then
                       nbancoexecute(self);

                    tabela.First;
        end;
      end;


end;

procedure Tfsistema.nbancoExecute(Sender: TObject);
begin
        tabela.Edit;
        tabela ['banco']   := ebanco.text;
        tabela ['agencia'] := eagencia.Text;
        tabela ['conta']   := econta.Text;
        tabela.post;

end;

procedure Tfsistema.eqtdChange(Sender: TObject);
begin
        preencheExecute(self);
end;

procedure Tfsistema.eqtdKeyPress(Sender: TObject; var Key: Char);
begin
        abort;
end;

procedure Tfsistema.evencimentoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
             if (key = 13) and (eqtd.Enabled =true) then begin
                preencheExecute(self);
                lvencdia.Value := trunc((strtodate(evencimento.Text) - date));
             end;

end;

procedure Tfsistema.emora2KeyPress(Sender: TObject; var Key: Char);
begin
        if not(key in['0'..'9',#8,',']) then abort;
end;

procedure Tfsistema.rcomercialClick(Sender: TObject);
begin
         eintervalo.Visible := rcomercial.Checked = false;
         lintervalo.Visible := rcomercial.Checked = false;

         preencheExecute(self);

end;

procedure Tfsistema.eintervaloChange(Sender: TObject);
begin
        preencheExecute(self);
end;

procedure Tfsistema.eintervaloKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

        if key = 13 then

          if nconta = 2 then
             if active then
                ncheque.SetFocus
          else keybd_event(VK_RETURN, 0, 0, 0);

end;

procedure Tfsistema.SpeedButton16Click(Sender: TObject);
var
st:string;
ult,mes,ano:integer;
begin

        abortaacao(tabela,nil,'documento','','','','',0);
        st := msgi('Alterar o vencimento para todo dia "X" do mês - Digite o dia:',2);

        if (StrIsinteger(st) = False) or (strtofloat(st)<=0) or (strtofloat(st)>31) then
           msg('#O valor digitado não é um número inteiro válido!',0);

        tabela.First;
        while not tabela.Eof do begin
              tabela.Edit;
              mes := strtoint(formatdatetime('mm',tabela.fieldbyname('vencimento').AsDateTime));
              ano := strtoint(formatdatetime('yyyy',tabela.fieldbyname('vencimento').AsDateTime));

              ult := UltimodoMes(mes,ano);

              if strtoint(st) > ult then
                  tabela['vencimento'] := inttostr(ult)+'/'+formatdatetime('mm/yyyy',tabela.fieldbyname('vencimento').AsDateTime)
              else
                 tabela['vencimento'] := st + '/'+formatdatetime('mm/yyyy',tabela.fieldbyname('vencimento').AsDateTime);

              tabela['dia'] := DiaSemana(tabela.fieldbyname('vencimento').AsDateTime);
              tabela.Post;
              tabela.Next;
        end;

end;

procedure Tfsistema.btnokClick(Sender: TObject);

var
cdbc:string;

procedure cxbc;
var
pgrc, cd, desc,campo:string;
begin
        //se for a pagar e nao for cartao
        //if (tipo = 2) and (nconta in[1..3]) then begin

             if tipo = 2 then begin
                pgrc := quotedstr('PG ' +tabela.fieldbyname('documento').asstring) +', "SAIDA", "10" ';
                cd :='D';
                desc := 'PGTO DA ' + tabela.FieldByName('documento').AsString;

             end else begin
                pgrc := quotedstr('RECEB ' +tabela.fieldbyname('documento').asstring) +', "RECEB", "9" ';
                cd :='D';
                desc := 'RECBTO DA ' + tabela.FieldByName('documento').AsString;
             end;

                   case nconta of
                      1:campo :='cartaoD';
                      2:campo :='cheque';
                      3:campo :='fiado';
                   end;

            if cdbc='1' then
               selecione('Insert into tbentradacaixa(data, documento, '+campo+' , link, usuario, descricao, tipo,modulo , linkvenda) values( '+
                      ' now()'+
                      ','+ quotedstr(tabela.fieldbyname('documento').asstring)+
                      ','+  realdblstr(tabela.FieldByName('valor').AsFloat)+
                      ','+  fdm.tbcaixagrupo.fieldbyname('chave').asstring+
                      ','+  quotedstr(usuario)+
                      ','+  pgrc+
                      ','+ quotedstr(inttostr(linkvenda))+')')


            else if cdbc='2' then
                  gravabanco(cd,
                          tabela.FieldByName('documento').AsString,
                          desc,
                          modulo,
                          tabela.FieldByName('valor').AsFloat,
                          linkvenda);
      //end;
end;


var
rctb,cp,vr,desctot,ch,nbanco,clientevital,campo,nconta2, nconta3,codconta,codconta2,codconta3:string;
desc,soma:double;
i:integer;



procedure vitalcred;
var
ndoc : integer;
obs:string;
begin

      obs:= 'Cheq n. '+ ncheque.Text + '   BC '+ ebanco.Text +
             '   AG '+ eagencia.Text +  '   Conta '+ econta.Text + '    CPF '+ eobs.Text;


      selecione('select nfinanceiro from tbconfig ');
      ndoc      := sqlpub.fieldbyname('nfinanceiro').AsInteger + 1;

      selecione('Insert into tbfinanceiro(tipoconta, tp, documento, codigo, nome, cliente, dtemissao,'+
                ' dtvencimento, dtpagamento, data, vrtitulo, vrcalc, vrcliente, obs,  nbanco) values('+
                quotedstr(t1.fieldbyname('descricao').AsString)+
                ','+quotedstr('9')+
                ','+quotedstr(inttostr(ndoc))+
                ', '+quotedstr(inttostr(codigo))+
                ', '+quotedstr(nome)+
                ', '+quotedstr(uppercase(clientevital))+
                ', '+quotedstr(formatdatetime('yyyy-mm-dd',dataini))+
                ', '+quotedstr(formatdatetime('yyyy-mm-dd',tabela.fieldbyname('vencimento').AsDateTime))+
                ', '+quotedstr(formatdatetime('yyyy-mm-dd',tabela.fieldbyname('vencimento').AsDateTime))+
                ', '+quotedstr(formatdatetime('yyyy-mm-dd',dataini))+
                ', '+realdblstr(tabela.fieldbyname('valor').AsFloat)+
                ', '+realdblstr(tabela.fieldbyname('valor').AsFloat)+
                ', '+realdblstr(tabela.fieldbyname('valor').AsFloat)+
                ', '+quotedstr(obs)+
                ', '+quotedstr(nbanco)+')');


      selecione('update tbconfig set nfinanceiro = '+quotedstr(inttostr(ndoc)));
end;




begin
       //tipo = 1 = receber  =2 pagar
       //nconta =1, cartao, 2 =cheque 3 = prazo

       if (responsavel = 'ARISTEM') and (lvencdia.Value>45) then
           senhagerencial('PRAZO MAIOR QUE O CONFIGURADO (45 dias)',
                          'DIGITE A SENHA GERENCIAL PARA LIBERAR!',
                          'PRAZO ALÉM DO MÁXIMO PERMITIDO!');


       if tabela.RecordCount <=0 then msg('#Crie a conta, antes de finalizar.',0);


           case nconta of
              1:campo := 'contacartao';
              2:campo := 'contacheque';
             // 3:campo := '';
           end;

           //if (tipo=1) and (campo='contacartao') then

           if (tipo=2) then begin
              selecione('select codconta, codconta2, codconta3 from tbfornecedor where codigo = ' + inttostr(codigo));
              codconta   := t1.fieldbyname('chave').AsString;
              codconta2  := sqlpub.fieldbyname('codconta2').AsString;
              codconta3  := sqlpub.fieldbyname('codconta3').AsString;

              if codconta3 = '' then begin
                 selecione('select contacartaop ,contachequep from tbconfig');

                 if nconta = 1 then codconta3  := sqlpub.fieldbyname('contacartaop').AsString else
                 if nconta = 2 then codconta3  := sqlpub.fieldbyname('contachequep').AsString;

              end;

              sqlpub := nil;
           end;




           //a conta de destino: se a pagar (fiado)
           if (tipo=2) and (planocontas) and (nconta = 3)  then begin
              codconta3 :='';
              codconta2 := combotb('tbconta','descricao','chave','Escolha a conta de destino:',codconta2);

              while codconta2 = '' do
                    codconta2 := combotb('tbconta','descricao','chave','Escolha a conta de destino:','');

              alimentaconta(codconta, codconta2, '', modulo, inttostr(linkvenda), date, total);


           end else if (tipo=2) and (planocontas) and (nconta in [1..2])  then begin

              codconta := combotb2(codconta,codconta2,codconta3,'0');
              while codconta = '' do
                    codconta := combotb2(codconta,codconta2,codconta3,'0');
                    codconta2 := codloc;
                    codloc :='';
                    codconta3 := valorconfig;
                    valorconfig :='';

               alimentaconta(codconta, codconta2, '', modulo, inttostr(linkvenda), date, total);

           end else if (tipo=2) and (nconta in [1..2])  then
               codconta3 := combotb('tbconta','descricao','chave','Escolha a conta para baixa automática:',codconta3);



           //gera financeiro vitalcred
           if modulo  = 'v' then begin
              selecione('select nbanco from tbcliente where codigo ='+quotedstr(inttostr(codigo)));
              nbanco := sqlpub.FieldByName('nbanco').AsString;
              if nbanco = '' then msg('#Este cliente não tem banco cadastrado.',0);
              clientevital := msgi('Nome do cliente',0);
           end;


       if rbaixacheque.Checked then
          cdbc := msgi('Movimentar o(Digite uma opção):' +
                       #13 + #13 +
                       '1 = Caixa Atual  ' + #13 +
                       '2 = Conta Banc. ' + #13+
                       '3 = Não Movimen' ,2);

          if (cdbc <> '1') and (cdbc <> '2') then cdbc := '';

        soma :=0;
        tabela.First;
        for i :=1 to tabela.RecordCount do begin
            soma := soma + tabela.fieldbyname('valor').AsFloat;

            if responsavel = 'ARISTEM' then
               if (nconta = 2) and
                  ((tabela.FieldByName('numero').AsString = '') or
                   (tabela.FieldByName('banco').AsString = '') or
                   (tabela.FieldByName('agencia').AsString = '') or
                   (tabela.FieldByName('conta').AsString = '')) then
                   msg('#Preencha todos os dados do cheque.',0);

            if (nconta = 2) and (tabela.FieldByName('numero').AsString = '') then
               msg('#Preencha o número do cheque.',0);

            tabela.Next;
        end;

        if (soma > (total +0.05)) or (soma < (total  - 0.05)) then  msg('#O valor digitado é diferente do valor total.',0);



        tabela.First;
        for i :=1 to tabela.RecordCount do begin

           // a receber
           if tipo = 1 then begin
              rctb := 'tbreceber';
              cp   := ' posicaoconta,';
              vr   := ' "EMP", ';

              if codvendedor >0 then begin
                 cp   := cp + ' vendedor, comissao, ';
                 vr   := vr + realdblstr(codvendedor)+',' + realdblstr(comissao)+',';
              end;
                 
           // a pagar
           end else begin

              if emora2.Text ='' then emora2.Text :='0';
              rctb := 'tbpagar';
              cp   := ' mora, ';
              vr   :=  realdblstr(strtofloat(emora2.Text)) +', ' ;
           end;


           //cheques
           if nconta = 2 then begin
              cp := cp + ' banco, agencia, conta, cheque, ';
              vr := vr + quotedstr(tabela.fieldbyname('banco').AsString)+', '+
                         quotedstr(tabela.fieldbyname('agencia').AsString)+', '+
                         quotedstr(tabela.fieldbyname('conta').AsString)+', '+
                         quotedstr(tabela.fieldbyname('numero').AsString)+', ';
           end;


           if (t1.fieldbyname('taxa').AsFloat >0) and(tipo = 1) then
              desc := tabela.fieldbyname('valor').asfloat * t1.fieldbyname('taxa').AsFloat /100;

           desctot := ', '+realdblstr(desc)+ ', '+ realdblstr(tabela.fieldbyname('valor').asfloat-desc);



           //baixar a vista ou nao
           if (rbaixacheque.Checked) and (tabela.FieldByName('vencimento').AsDateTime<=date) then begin
              cp := cp + ' dtpagamento, diferenca,  recebido, ';
              vr := vr + ' now(), 0, '+realdblstr(tabela.fieldbyname('valor').asfloat-desc)+',';

           end else begin
              cp := cp + ' dtpagamento, diferenca,  recebido, ';
              vr := vr + ' null, '+realdblstr(tabela.fieldbyname('valor').asfloat-desc)+',0, ';
           end;


           case nconta of
                1:ch :=quotedstr('C');
                2:ch :=quotedstr('S');
                3:ch :='null';
           end;


           if cdbc <> '' then cxbc;
           if codconta2 = '' then codconta2 := 'null';
           if codconta3 = '' then codconta3 := 'null';

           //gera financeiro vitalcred
           if modulo  = 'v' then vitalcred

           else
           selecione('Insert into '+rctb+'('+
                     cp+'codconta, documento, letra, codigo,nome, obs, '+
                     ' dtemissao, dtvencimento, vrtitulo, vrdocumento, '+
                     ' desconto, total, caixa, usuario, linkvenda, modulo, ch,emp, codconta2, codconta3, tpconta) '+
                     ' values( '+
                     vr+
                     quotedstr(t1.fieldbyname('chave').AsString)+
                     ', '+quotedstr(tabela.fieldbyname('documento').AsString)+
                     ', '+quotedstr(tabela.fieldbyname('contador').AsString)+
                     ', '+quotedstr(inttostr(codigo))+
                     ', '+quotedstr(nome)+
                     ', '+quotedstr(eobs.Text)+
                     ', '+quotedstr(formatdatetime('yyyy-mm-dd',dataini))+
                     ', '+quotedstr(formatdatetime('yyyy-mm-dd',tabela.fieldbyname('vencimento').AsDateTime))+
                     ', '+realdblstr(total)+
                     ', '+realdblstr(tabela.fieldbyname('valor').AsFloat)+
                     desctot+
                     ', '+quotedstr(fdm.tbcaixagrupo.fieldbyname('chave').asstring)+
                     ', '+inttostr(usuariolink)+
                     ', '+quotedstr(inttostr(linkvenda))+
                     ', '+quotedstr(modulo)+
                     ', '+ch+
                     ', '+inttostr(emp)+
                     ', '+codconta2+
                     ', '+codconta3+
                     ', ' + quotedstr(t1.fieldbyname('codigo').AsString)+')');
                     tabela.Next;
             end;
                                          

       if (nconta = 1) and (tipo = 1) and (t1.fieldbyname('taxa').AsFloat>0) then //grava as taxas no contas a pagar

           selecione('Insert into tbpagar('+
                     ' codconta, documento, codigo,nome, obs, dtemissao, dtvencimento,dtpagamento, '+
                     ' vrtitulo, vrdocumento, total, recebido, caixa, usuario, linkvenda, modulo, emp) '+
                     ' values( '+
                     quotedstr(t1.fieldbyname('chave').AsString)+
                     ', '+quotedstr(edocumento.Text)+
                     ', "1"'+
                     ', "CREDOR"'+
                     ', "TX CARTAO"'+
                     ', now()'+
                     ', now()'+
                     ', now()'+
                     ', '+realdblstr(total*t1.fieldbyname('taxa').AsFloat/100)+
                     ', '+realdblstr(total*t1.fieldbyname('taxa').AsFloat/100)+
                     ', '+realdblstr(total*t1.fieldbyname('taxa').AsFloat/100)+
                     ', '+realdblstr(total*t1.fieldbyname('taxa').AsFloat/100)+                     
                     ', '+quotedstr(fdm.tbcaixagrupo.fieldbyname('chave').asstring)+
                     ', '+inttostr(usuariolink)+
                     ', '+quotedstr(inttostr(linkvenda))+
                     ', '+quotedstr(modulo)+
                     ', '+inttostr(emp)+')');



       if modulo<>'v' then
       if tipo = 1 then saldocliente(inttostr(codigo))
       else saldofornecedor(inttostr(codigo));

       msg('Gerada(s) com sucesso!',0);
       vf:=true;
       codloc := edocumento.Text;
       close;
end;

procedure Tfsistema.gradecontaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_insert then btnokClick(self);

        if key = 13 then begin

           if (nconta=2)and(gradeconta.SelectedIndex = 8) then
              gradeconta.SelectedIndex := 1

           else if (nconta<>2)and(gradeconta.SelectedIndex = 4) then
              gradeconta.SelectedIndex := 0
           else

              gradeconta.SelectedIndex :=  gradeconta.SelectedIndex  + 1;
        end;

        if tabela.State in  [dsInsert] then
        tabela.Cancel;

end;

procedure Tfsistema.gradecontaEnter(Sender: TObject);
begin
        keypreview := false;
        try
           tabela.First;
           gradeconta.SelectedIndex := 1;
        except end;

end;

procedure Tfsistema.gradecontaExit(Sender: TObject);
begin
        keypreview := true;
end;

procedure Tfsistema.preenchechequeExecute(Sender: TObject);
var
i:integer;
begin
       if (tabela.Active =false) or (tabela.RecordCount <=0) then abort;
       
        tabela.First;
        if formatnumeric(ncheque.Text) <> '' then
           i:= strtoint(formatnumeric(ncheque.Text))
        else i :=1;

        while not tabela.Eof do  begin
              nbancoexecute(self);
              tabela.Edit;

              if tabela.RecNo = 1 then
                 tabela['numero'] :=ncheque.Text
              else
                 tabela['numero'] :=i;

              tabela.Post;
              inc(i);
              tabela.Next;
        end;

        tabela.First;

end;

procedure Tfsistema.frecpg_Execute(Sender: TObject);
var
c,ct :string;
begin           
            if page = 'frecpg' then begin
               caption := 'Filtros personalizados';
               btnsair.Parent := frecpg;
               btnsair.Top := BitBtn1.Top;
               btnsair.left := 237;
               md1.SetFocus;
               md1.Text := datetostr(now-5);
               md2.Text := datetostr(now);

               //contas a receber - modulo9
               if controle = '9' then begin
                  bfiltro.Items.Add('Cheque');
                  bfiltro.Items.Add('Devolvido');
                  bfiltro.Items.Add('Passado');
                  bfiltro.Items.Add('Cartão');
                  bfiltro.Items.Add('A prazo');
                  bfiltro.Items.Add('Todos');
                  bfiltro.ItemIndex :=5;
                  c:='tbcliente';
                  ct := 'PG';

               //contas a pagar - modulo10
               end else begin
                  bfiltro.Items.Add('Cheque');
                  bfiltro.Items.Add('Cartão');
                  bfiltro.Items.Add('A prazo');
                  bfiltro.Items.Add('Todos');
                  bfiltro.ItemIndex :=3;
                  //Label13.Caption := 'Tipo Despesa';
                  c:='tbfornecedor';
                  ct := 'REC';
                  Label14.hide;
                  evendedor.hide;
               end;


               with t1 do begin
                    close;

                    sql.clear;
                    sql.add('select descricao as nome from tbconta '+
                            ' where pgrec is null or pgrec <> '+quotedstr(ct)+
                            ' order by descricao');
                   open;

                   cconta.Items.Add(' ');
                   while not eof do begin
                         cconta.Items.Add(fieldbyname('nome').AsString);
                       next;
                   end;


                   sql.clear;
                   sql.add('select descricao as nome from tbdespesa order by descricao');

                   open;

                   ccontaem.Items.Add(' ');
                   while not eof do begin
                         ccontaem.Items.Add(fieldbyname('nome').AsString);
                       next;
                   end;


                   sql.clear;
                   sql.add('select descricao as nome from tbcontaposicao order by descricao');

                   open;

                   ccontaem2.Items.Add(' ');
                   while not eof do begin
                         ccontaem2.Items.Add(fieldbyname('nome').AsString);
                       next;
                   end;


                   //só para contas a receber
                   if controle = '9' then begin
                      sql.clear;
                      sql.add('select distinct vendedor as nome from tbreceber '+
                              ' where vendedor is not null order by vendedor');
                      open;

                      evendedor.Items.Add(' ');
                      while not eof do begin
                            evendedor.Items.Add(fieldbyname('nome').AsString);
                          next;
                      end;
                   end;


                   close;
                   sql.clear;
                   sql.add('select distinct bairro as nome from '+ c+
                           ' where bairro is not null order by bairro');
                   open;

                   ebairro.Items.Add(' ');
                   while not eof do begin
                         ebairro.Items.Add(fieldbyname('nome').AsString);
                       next;
                   end;


                   close;
                   sql.clear;
                   sql.add('select distinct municipio as nome from '+ c +
                            ' where municipio is not null order by municipio');
                   open;

                   emunicipio.Items.Add(' ');
                   while not eof do begin
                         emunicipio.Items.Add(fieldbyname('nome').AsString);
                       next;
                   end;

                  close;
              end;

              if controle = '10' then begin
                 Label154.Hide;
                 ccontaem2.Hide;
              end;

          end;


end;

procedure Tfsistema.btnmrpClick(Sender: TObject);
var
nmod  :integer;
imp:string;
begin

        imp := msgi('Digite (só números): O Código, ou o CNPJ/CPF ou o Fone, ou as iniciais do nome para pesquisa',0);

        case strtoint(controle) of
             9: nmod := 4; //loc cli
             10: nmod := 7;// loc forn
        end;

        listagem(achacp('nome',imp),imp,'',nmod,0);

        if fdm.sg.Active = false then abort;

        codigo := fdm.sg.fieldbyname('codigo').AsInteger;
        fechatg;
        BitBtn1Click(self);
        codigo:=0;

end;

procedure Tfsistema.BitBtn1Click(Sender: TObject);
var
dtini,dtfin,filtro,ct,tipodata, contacontabil :string;
cli:boolean;
begin


        if rdata.ItemIndex = 2 then RTIPO.ItemIndex := 0;

        dtini := quotedstr(formatdatetime('yyyy/mm/dd', strtodate(md1.Text)));
        dtfin := quotedstr(formatdatetime('yyyy/mm/dd', strtodate(md2.Text)));


        if controle = '9' then begin//receber
           case bfiltro.ItemIndex of
                0: filtro := ' and r.ch="S" ';
                1: filtro := ' and r.ch="D" ';
                2: filtro := ' and r.ch="P" ';
                3: filtro := ' and r.ch="C" ';
                4: filtro := ' and r.ch is null';
           end;
           ct:='posicaoconta';
        end;

        if controle = '10' then begin//pagar
           case bfiltro.ItemIndex of
                0: filtro := ' and r.ch="S" ';
                1: filtro := ' and r.ch is null';
           end;
           //ct:='tipodespesa';
        end;


       case rdata.ItemIndex of
            0:tipodata :='r.dtemissao';
            1:tipodata :='r.dtvencimento';
            2:tipodata :='r.dtpagamento';
       end;


       case rtipo.ItemIndex of
            0:filtro := filtro + ' and r.recebido > 0 ';
            1:filtro := filtro + ' and r.diferenca > 0 ';
            2:filtro := filtro + ' and r.diferenca and r.dtvencimento < now()';
       end;


       if cconta.Text = '' then
       else begin
            selecione('select chave from tbconta where descricao = '+quotedstr(cconta.Text));
            filtro := filtro + ' and r.codconta = ' + quotedstr(sqlpub.fieldbyname('chave').AsString);
            sqlpub := nil;
       end;

       if ccontaem.Text = '' then
       else begin
            contacontabil:='';
            selecione('select chave from tbconta where contacontabil = '+quotedstr(ccontaem.Text));

            sqlpub.First;
            while not sqlpub.Eof do begin
                  if contacontabil = '' then contacontabil := ' and ( r.codconta = '+  quotedstr(sqlpub.fieldbyname('chave').AsString)
                  else contacontabil :=      contacontabil  + ' or    r.codconta = '+  quotedstr(sqlpub.fieldbyname('chave').AsString);
                  sqlpub.Next;
            end;

            if contacontabil <> '' then contacontabil :=      contacontabil  + ')';
            filtro := filtro + contacontabil;
            sqlpub := nil;
       end;

       if ccontaem2.Text = '' then  else filtro := filtro + ' and r.posicaoconta = '+ quotedstr(ccontaem2.Text);

       if evendedor.Text = '' then
       else filtro := filtro + ' and r.vendedor = '+ quotedstr(evendedor.Text);

       if ebairro.Text = '' then
       else filtro := filtro + ' and c.bairro = '+ quotedstr(ebairro.Text);

       if emunicipio.Text = '' then
       else filtro := filtro + ' and c.municipio = '+ quotedstr(emunicipio.Text);

       if euf.Text = '' then
       else filtro := filtro + ' and c.uf = '+ quotedstr(euf.Text);

       if codigo <= 0 then
       else filtro := filtro +  ' and r.codigo = '+ quotedstr(inttostr(codigo));

       filtro := filtro + ' and '+tipodata+' between  ' + dtini + ' and ' +dtfin;

       filtro := filtro + ' and (r.flag <> "D" or r.flag is null)';

       if (ebairro.Text <> '') or (emunicipio.Text <> '')  or (euf.Text <> '') then
          fcadg.rsemelhante.Checked ;

       if fcadg.rsemelhante.Checked =true then  filtro := filtro + ' and (r.codigo = c.codigo)';


       fcadg.rativo.ItemIndex := bfiltro.ItemIndex;
       fcadg.criterio := filtro+ sqlempresa(1,1,'r');
       fcadg.filtroExecute(self);
       titgrade(fcadg.grade,nil,fcadg.tabela);
       fcadg.tgradeExecute(self);
       fcadg.litem.Caption := inttostr(fcadg.tabela.RecordCount)+ ' Itens';
       fcadg.criterio := '';
end;

procedure Tfsistema.SpeedButton2Click(Sender: TObject);
begin
        cconta.ItemIndex := -1;
        ccontaem.ItemIndex := -1;
        ebairro.ItemIndex := -1;
        emunicipio.ItemIndex := -1;
        euf.ItemIndex := -1;
        if evendedor.Visible then
        evendedor.ItemIndex := -1;
        emunicipio.ItemIndex := -1;
end;

procedure Tfsistema.CheckBox1Click(Sender: TObject);
begin
        if CheckBox1.Checked = false then
           Panel1.hide;

        RadioGroup5.Visible := CheckBox1.Checked;

        if CheckBox1.Checked then RadioGroup5Click(self);

end;

procedure Tfsistema.RadioGroup5Click(Sender: TObject);
var
estoque,qtd,total,med:double;
begin

        if RadioGroup5.ItemIndex = 0 then begin
           Panel1.Show;
           maskedit5.Text := datetostr(now-30);
           maskedit6.Text := datetostr(now);
           Button7Click(self);
        end else begin

            Panel1.hide;
            qtd:=0;
            total :=0;
            estoque := produto.fieldbyname('estoque').AsFloat;


             with fdm.Query1 do  begin
                  Close;
                  sql.clear;
                  sql.Add('select qtd, total from tbeitem  '+
                          ' where  cnt is null and codigo = '+quotedstr(produto.fieldbyname('codigo').AsString)+
                          ' order by chave desc');
               Open;
               first;

               while estoque>0 do begin
                     qtd := qtd + fieldbyname('qtd').AsFloat;
                     total := total + fieldbyname('total').AsFloat;
                     estoque := estoque - fieldbyname('qtd').AsFloat;
                     next;
               end;

               if (qtd >0) and (total >0) then
                   med := total/qtd;

               if med >0 then begin
                  produto.edit;
                  produto['vrcompra'] := med * produto.FieldByName('fracao').AsFloat;
                  produto['vrunit'] :=   med;
               end;

               close;
               totalizarExecute(self);
       end;
     end;

end;

procedure Tfsistema.evrcompraExit(Sender: TObject);
begin
     mcabrasivosExecute(self);
     totalizarExecute(self);

end;

procedure Tfsistema.DBEdit4Exit(Sender: TObject);
begin
        totalizarExecute(self);
end;

procedure Tfsistema.epercentExit(Sender: TObject);
begin
        with sender as tdbedit do
             if modified then
                totalizarexecute(self);

end;

procedure Tfsistema.evrvarejoExit(Sender: TObject);
begin
       with produto do begin
            edit;

            if (FieldByName('vrunit').AsFloat>0) and
               (FieldByName('vrvenda').AsFloat>0) then

               FieldByName('percent').AsFloat := FieldByName('vrvenda').AsFloat * 100 /
                                                 FieldByName('vrunit').AsFloat - 100
           else
               FieldByName('percent').clear;
       end;

end;

procedure Tfsistema.evratacadoExit(Sender: TObject);
begin
       with produto do begin
            edit;

            if (FieldByName('vrunit').AsFloat>0) and
               (FieldByName('vratacado').AsFloat>0) then

               FieldByName('percentatacado').AsFloat := FieldByName('vratacado').AsFloat * 100 /
                                                 FieldByName('vrunit').AsFloat - 100
           else
               FieldByName('percentatacado').clear;
       end;

end;

procedure Tfsistema.evrperc1Exit(Sender: TObject);
begin
       with produto do begin
            edit;

            if (FieldByName('vrunit').AsFloat>0) and
               (FieldByName('valor3').AsFloat>0) then

               FieldByName('percent3').AsFloat := FieldByName('valor3').AsFloat * 100 /
                                                 FieldByName('vrunit').AsFloat - 100
           else
               FieldByName('percent3').clear;
       end;


end;

procedure Tfsistema.balteraClick(Sender: TObject);
var
st:string;
begin
        if ratuapreco.Checked then
           st :=  ', percent = vrvenda * 100 / vrunit - 100 ' +
                  ', percentatacado = vratacado * 100 / vrunit - 100 '+
                  ', percent3 = valor3 * 100 / vrunit - 100 '

        else
           st :=  ',  percentatacado= ' + realdblstr(produto.fieldbyname('percentatacado').AsFloat)+
                  ',  vratacado= ' + realdblstr(produto.fieldbyname('vratacado').AsFloat)+
                  ',  percent3= ' + realdblstr(produto.fieldbyname('percent3').AsFloat)+
                  ',  valor3= ' + realdblstr(produto.fieldbyname('valor3').AsFloat)+
                  ',  despesaacessoria= ' + realdblstr(produto.fieldbyname('despesaacessoria').AsFloat)+
                  ',  ipi= ' + realdblstr(produto.fieldbyname('ipi').AsFloat)+
                  ',  imposto= ' + realdblstr(produto.fieldbyname('imposto').AsFloat)+
                  ',  percent= ' + realdblstr(produto.fieldbyname('percent').AsFloat)+
                  ',  vrvenda= ' + realdblstr(produto.fieldbyname('vrvenda').AsFloat);


        selecione('update tbproduto'+controle+' set '+
                  ' ultalteracao = now()'+
                  ',  vrcompra= ' + realdblstr(produto.fieldbyname('vrcompra').AsFloat)+
                  ',  fracao= ' + realdblstr(produto.fieldbyname('fracao').AsFloat)+
                  ',  vrunit= ' + realdblstr(produto.fieldbyname('vrunit').AsFloat)+
                  st  +
                  ' where chave = '+ quotedstr(produto.FieldByName('chave').AsString));

       tbentradaitem.Next;
       preencheprodutoExecute(self);

       total := total -1;
       if total=0 then close;

end;

procedure Tfsistema.totalizarExecute(Sender: TObject);
var
perc:double;
begin
    try

    totunit;

    if (produto.FieldByName('vrunit').AsFloat>0) and
       (produto.FieldByName('percent').AsFloat>0) then
       produto['vrvenda'] := produto.FieldByName('vrunit').AsFloat +
                                             (produto.FieldByName('vrunit').AsFloat *
                                              produto.FieldByName('percent').AsFloat/100)
    else produto['vrvenda'] := 0;



    if (produto.FieldByName('vrunit').AsFloat>0) and
       (produto.FieldByName('percentatacado').AsFloat>0) then
       produto['vratacado'] := produto.FieldByName('vrunit').AsFloat +
                                             (produto.FieldByName('vrunit').AsFloat *
                                              produto.FieldByName('percentatacado').AsFloat/100)
    else produto['vratacado'] := 0;


    if (produto.FieldByName('vrunit').AsFloat>0) and
       (produto.FieldByName('percent3').AsFloat>0) then
       produto['valor3'] := produto.FieldByName('vrunit').AsFloat +
                                             (produto.FieldByName('vrunit').AsFloat *
                                              produto.FieldByName('percent3').AsFloat/100)
    else produto['valor3'] := 0;


    if (responsavel = 'ARISTEM')  then
       if produto.FieldByName('vratacado').AsFloat >0 then begin

          if produto.FieldByName('valor3').AsFloat <=0 then begin
            if produto['fabricante'] = 'ARISTEM' then perc := 20
                                                      else perc :=15;

             produto['valor3'] := produto.FieldByName('vratacado').AsFloat -
                                       (produto.FieldByName('vratacado').AsFloat * perc /100);
          end;

          if produto.FieldByName('vrvenda').AsFloat <=0 then
             produto['vrvenda'] := produto.FieldByName('vratacado').AsFloat +
                                       (produto.FieldByName('vratacado').AsFloat * 70/100);

          produto['percent']:= produto.FieldByName('vrvenda').AsFloat * 100 /
                                    produto.FieldByName('vrunit').AsFloat - 100;

          produto['percent3']:= produto.FieldByName('valor3').AsFloat * 100 /
                                     produto.FieldByName('vrunit').AsFloat - 100;


       end;


    except end;


end;

procedure Tfsistema.tabprecoproduto_Execute(Sender: TObject);
begin
        if page = 'tabprecoproduto' then begin
           btnsair.Hide;
           caption := 'Atualizar preços';
           tbentradaitem.Open;
           total := tbentradaitem.RecordCount;
           tbentradaitem.First;

           selecione('select valoricmsS,total from tbe where chave = ' + quotedstr(tbentradaitem.fieldbyname('link').AsString));

           if sqlpub.FieldByName('valoricmsS').AsFloat >0 then
              if msg('Deseja ratear a substituição tributária para os itens?',2) then begin
                 total := sqlpub.FieldByName('total').AsFloat - sqlpub.FieldByName('valoricmsS').AsFloat;
                 subst := sqlpub.FieldByName('valoricmsS').AsFloat* 100 / total;
                 total :=0;
              end;

           sqlpub := nil;
           preencheprodutoExecute(self);
           evrcompra.SetFocus;
        end;

end;

procedure Tfsistema.preencheprodutoExecute(Sender: TObject);
begin
           try
           produto.Close;
           except end;
           produto.CreateDataSet;
           produto.Open;
           produto.Insert;

           selecione('select fabricante, percent,chave,percentatacado,vratacado,vrvenda, percent3, valor3, imposto,ipi,' +
                     'codigo,estoque,despesaacessoria,desctotal,ativoV,ativo  from tbproduto'+controle+' where codigo = ' +
                     quotedstr(tbentradaitem.FieldByName('codigo').AsString));

           produto['percent'] := sqlpub.FieldByName('percent').AsFloat;
           produto['percentatacado'] := sqlpub.FieldByName('percentatacado').AsFloat;
           produto['vrvenda'] := sqlpub.FieldByName('vrvenda').AsFloat;
           produto['vratacado'] := sqlpub.FieldByName('vratacado').AsFloat;
           produto['percent3'] := sqlpub.FieldByName('percent3').AsFloat;
           produto['valor3'] := sqlpub.FieldByName('valor3').AsFloat;
           produto['chave'] := sqlpub.FieldByName('chave').AsInteger;
           produto['estoque'] := sqlpub.FieldByName('estoque').AsFloat;

           if subst <= 0 then produto['despesaacessoria'] := sqlpub.FieldByName('despesaacessoria').AsFloat
           else               produto['despesaacessoria'] := subst;

           produto['desctotal'] := sqlpub.FieldByName('desctotal').AsFloat;
           produto['codigo'] := sqlpub.FieldByName('codigo').asstring;
           produto['ativoV'] := sqlpub.FieldByName('ativoV').asstring;
           produto['ativo'] := sqlpub.FieldByName('ativo').asstring;
           produto['fabricante'] := sqlpub.FieldByName('fabricante').asstring;           
           produto['ipi'] := sqlpub.FieldByName('ipi').AsFloat;

           if strisfloat(sqlpub.FieldByName('imposto').asstring) then
              produto['imposto'] := sqlpub.FieldByName('imposto').asstring
           else produto['imposto'] := '0';

           produto['fracao'] := tbentradaitem.FieldByName('fracao').AsFloat;
           produto['vrcompra'] := (tbentradaitem.FieldByName('vrunit').AsFloat+
                                           tbentradaitem.FieldByName('frete').Asfloat)*
                                           tbentradaitem.FieldByName('fracao').AsFloat;

           produto['vrunit'] :=   tbentradaitem.FieldByName('vrunit').AsFloat+
                                           tbentradaitem.FieldByName('frete').Asfloat;

           ldescricao.Caption :=tbentradaitem.FieldByName('codigo').AsString + ' - '+ tbentradaitem.FieldByName('descricao').AsString;
           mcabrasivosExecute(self);
           totalizarExecute(self);


end;

procedure Tfsistema.Button7Click(Sender: TObject);
var
dtini,dtfin:string;
med:double;
begin

          dtini := quotedstr(formatdatetime('yyyy/mm/dd',strtodate(MaskEdit5.Text)));
          dtfin := quotedstr(formatdatetime('yyyy/mm/dd',strtodate(MaskEdit6.Text)));


          with fdm.Query1 do  begin
               Close;
               sql.clear;
               sql.Add('select sum(qtd) as qtd, sum(total)as total from tbentradaitem  '+
                       ' where  cnt is null and data between ' + dtini + ' and ' + dtfin +
                       ' and codigo = '+quotedstr(produto.fieldbyname('codigo').AsString));
               Open;

               if (FieldByName('qtd').AsFloat >0) and (FieldByName('total').AsFloat >0) then
                   med := FieldByName('total').AsFloat/ FieldByName('qtd').AsFloat;

               if med >0 then begin
                  produto.edit;
                  produto['vrcompra'] := med * produto.FieldByName('fracao').AsFloat;
                  produto['vrunit'] :=   med;
               end;

               close;
               totalizarExecute(self);
         end;

end;

procedure Tfsistema.bnalteraClick(Sender: TObject);
begin
       tbentradaitem.Next;
       try
       preencheprodutoExecute(self);
       except end;
       total := total -1;
       if total=0 then close;

end;

procedure Tfsistema.inventario_Execute(Sender: TObject);
var
st:string;
begin

        if page = 'inventario' then begin

            selecione('select materiaprima from tbconfig');
            st :='1';
            if (sqlpub.fieldbyname('materiaprima').AsString = 'S') or (chofab) then begin
               codloc :='1';
               st := msgi('Digite uma opção:'+#13+#13+'1 = Inventário de produto '+#13+
                                                      '2 = Inventário Mat. Prima',2);
               if st<>'2' then st :='1';
            end;
            sqlpub :=nil;

            if st = '1' then controle :=''
                        else controle :='mp';


           minv.Text := datetostr(now);
           caption := 'Estoque/Inventário';
           minv.SetFocus;
           btnsair.Parent := inventario;
           btnsair.Left := 273;
           btnsair.top:= btinv.Top;
           p1.DataSet := t1;

           if responsavel = '04.605.305/0001-88' then controle4 := 'grupo' //jessiana
                                                 else controle4 :='subgrupo';

           selecione('select '+controle4+' as grupo from tbproduto'+controle+' group by '+controle4);

           invgrupo.Items.Add(' ');
           while not sqlpub.Eof do begin
                 invgrupo.Items.Add(sqlpub.fieldbyname('grupo').asstring) ;
                 sqlpub.Next;
           end;
           sqlpub :=nil;


           with t2 do begin
                 close;
                 sql.Clear;
                 sql.Add('select distinct data from tbprodutoe'+controle);
                 gradeinv.DataSource := d2;
                 Open;
            end;

        end;

end;

procedure Tfsistema.btinvClick(Sender: TObject);

var
imp,dtfin,ntb,desc,codigo,vrunit,whereand,flag:string;
sinal:double;
i:integer;
list:tstringlist;
begin

        whereand :='';
        if invgrupo.ItemIndex >0 then  whereand := ' where '+controle4+ ' = '+quotedstr(invgrupo.Text);

        if whereand ='' then  flag :=' where (flag <> "D" or flag is null) '
                        else  flag :=' and (flag <> "D" or flag is null) ';

        totinventario :=0;
        totpagina     :=0;
        permitido     :=0;
        linv1.Caption :='0,00';

        if strisdate(minv.Text) = false then
           msg('#Data inválida.',0);

       if (ginv.ItemIndex = 1) and (t2['data']=null) then
           msg('#Você não tem estoque registrado.',0);

       RLLabel25.Caption := 'A Transportar';       
       totpagina :=0;
       totinventario :=0;

       if ginv.ItemIndex = 0 then
          dtfin := quotedstr(formatdatetime('yyyy/mm/dd', strtodate(minv.Text)))
       else
          dtfin := quotedstr(formatdatetime('yyyy/mm/dd', t2.fieldbyname('data').AsDateTime));


       if ginv.ItemIndex = 0 then begin

          with t1 do begin
               close;
                SQL.clear;
                sql.add('alter table tbentradaitemdf add modo char(1)');
                try
                  execsql;
                except end;
          end;

                    
      //se o estoque for o atual
      if strtodate(minv.Text) = date then begin

          if invcmedio.ItemIndex = 0 then  VrUnit := 'VrUnit'
                                     else  VrUnit := 'cmedio';

          with t1 do begin
               close;
                SQL.clear;
                sql.add('select chave,cfope as CFOP, Codigo, Descricao, Un as Unidade, Estoque as Quantidade,'+
                        VrUnit + ' as Unitario, ('+VrUnit+'*estoque) as Total from tbproduto'+controle+whereand+flag+'  order by codigo');
                tb1.Close;
                tb1.IndexFieldNames :='codigo';
                tb1.open;
          end;


      //se estoque de outras datas
      end else begin
       with t1 do begin
            close;
             SQL.clear;
             sql.add('select chave, cfope as CFOP, Codigo, Descricao, Un as Unidade, (Estoque - Estoque) as Quantidade,'+
                     ' VrUnit as Unitario, (vrunit-vrunit) as desconto, '+
                     ' (vrunit-vrunit) as Total from tbproduto'+controle+whereand+flag+'  order by codigo');

                tb1.Close;
                tb1.IndexFieldNames :='codigo';
                tb1.open;


             for i :=1 to 5 do begin
                //compra
                if  i = 1 then begin
                    ntb   := 'tbentradaitem'+controle;
                    sinal := 1;
                    desc := 'desctotal as desconto ';

                end else if  i = 2 then begin
                    ntb   := 'tbentradaitemdf';
                    sinal := -1;
                    desc := 'desctotal as desconto ';

                end  else if  i = 3 then begin
                    ntb   := 'tbpedidoitem';
                    sinal := -1;
                    desc := 'descontoreal as desconto ';

                end  else if  i = 4 then begin
                    ntb   := 'vendaitem';
                    sinal := -1;
                    desc := 'descontoreal as desconto ';

                end  else if  i = 5 then begin
                    ntb   := 'vendadevolucao';
                    sinal := 1;
                    desc := 'descontoreal as desconto ';
                end;


                close;
                SQL.clear;
                sql.add('select codigo, sum(qtd)as Quantidade, vrunit,'+desc+' from '+ntb+' where data <='+
                        dtfin+ ' and (modo is null or modo <>"C") group by codigo ');
                //debugstr(fdm.query1);
                open;

                while not eof do begin
                      codigo := t1.fieldbyname('codigo').AsString;
                      if codigo ='' then codigo :='0';

                      if tb1.Locate('codigo',codigo,[]) then begin
                         tb1.Edit;
                         tb1['Quantidade']:= tb1.fieldbyname('Quantidade').AsFloat+
                                                      (fieldbyname('Quantidade').AsFloat*(sinal));

                         tb1['unitario']:= fieldbyname('vrunit').AsFloat-
                                                      fieldbyname('desconto').AsFloat;

                         tb1['total']:= tb1.fieldbyname('unitario').AsFloat*
                                                     tb1.fieldbyname('Quantidade').AsFloat;

                         tb1.Post;
                      end;

                      t1.Next;
                end;
             end;
           end;
         end;

         end else

           with t1 do begin
                close;
                sql.Clear;
                Sql.Add('select E.codigo,E.estoque as Quantidade ,'+
                        ' P.vrunit as unitario,'+
                        ' P.descricao, (P.vrunit * E.estoque) as total, '+
                        ' P.Un as Unidade from tbproduto, P tbprodutoE E '+
                        ' where P.codigo = E.codigo '+ 
                        ' and E.data = '+ dtfin );
                tb1.close;
                tb1.Open;
                //debugstr(fdm.Query1);
           end;

         if controle = 'sped' then begin
            t1.SQL.SaveToFile('c:\sqlspqd.txt');
            codloc := minv.text;
            close;

         end else begin

              (tb1.FieldByName('total')  as tfloatfield).displayformat := '###,##0.00';
              (tb1.FieldByName('unitario')  as tfloatfield).displayformat := '###,##0.00';
              (tb1.FieldByName('Quantidade')  as tfloatfield).displayformat := '###,##0.00';


              imp := '1';
              if inputquery('Imprimir', 'Digite uma opção de impressão:' + #13 + #13 +
                          '1 = Visualiza/Imprime'+#13+
                          '2 = Exporta '+#13+
                          '3 = Exporta para o Excel'+#13+
                          'Esc = Cancela ', imp) then  else begin

                 t1.Close;
                 tb1.Close;
                 abort;
             end;

            if imp='2' then
               exportarRL(qinventario,'digite o nome','email@email.com')


            else if imp='3' then begin

               list :=  tstringlist.Create;
               list.Add('REGISTRO DE INVENTÁRIO: ' +minv.Text);
               list.Add(' ');
               list.Add('CLASSIFICAÇÃO FISCAL	DISCRIMINAÇÃO	UNIDADE	QUANTIDADE	UNITÁRIO	TOTAL');
               list.Add('');

               tb1.First;
               while not tb1.Eof do begin
                     list.Add(tb1.fieldbyname('cfop').AsString+
                               '	'+ tb1.fieldbyname('codigo').AsString+' - '+tb1.fieldbyname('descricao').AsString+
                               '	'+ tb1.fieldbyname('unidade').AsString+
                               '	'+ tb1.fieldbyname('quantidade').AsString+
                               '	'+ tb1.fieldbyname('unitario').AsString+
                               '	'+ tb1.fieldbyname('total').AsString);
                     tb1.Next;
               end;

              list.SaveToFile('c:\inventario_'+formatnumeric(minv.Text)+'.xls');
              ShellExecute(Handle, 'open', PChar('c:\inventario_'+formatnumeric(minv.Text)+'.xls'), nil, '', SW_MAXIMIZE);
              list.Free;


            end else
               qinventario.PreviewModal;

              t1.Close;
              tb1.Close;
              tb1.IndexFieldNames:='';
         end;


end;

procedure Tfsistema.qinventarioBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
        fdm.tbempresa.open;
        linvt1.Caption := 'FIRMA: '+fdm.tbempresa.fieldbyname('nome').AsString;
        linvt2.Caption := 'INSC. ESTADUAL: '+fdm.tbempresa.fieldbyname('ie').AsString;
        linvt4.Caption := 'CNPJ(MF): '+fdm.tbempresa.fieldbyname('cnpj').AsString;
        linvt5.Caption := 'ESTOQUES EXISTENTES EM: '+minv.Text;
        fdm.tbempresa.Close;

end;

procedure Tfsistema.cep_Execute(Sender: TObject);
begin
        if page = 'cep' then begin
           cep1.SetFocus;

           btnsair.Parent := cep;
           btnsair.Left := 277;
           btnsair.top:= btcep.Top;

           if  controle='2' then begin

              cep1.Text := fdm.sg.fieldbyname('cep').AsString;
              cep2.Text := fdm.sg.fieldbyname('uf').AsString;
              cep3.Text := fdm.sg.fieldbyname('cidade').AsString;
              cep4.Text := fdm.sg.fieldbyname('municipion').AsString;
              cep5.Text := fdm.sg.fieldbyname('rua').AsString;
              cep6.Text := fdm.sg.fieldbyname('bairro').AsString;
              caption := 'Alteração de Cep';
              fechatg;
              cep1.ReadOnly := true;

           end else
               caption := 'Inclusão de Cep';

        end;


end;

procedure Tfsistema.btcepClick(Sender: TObject);
begin
              if length(cep1.Text)<>8 then
                 msg('#Preencha o cep com 8 caracteres numéricos.',0);

              if (cep1.Text ='') or
                 (cep2.Text ='') or
                 (cep3.Text ='') or
                 (cep4.Text ='') or
                 (cep5.Text ='') or
                 (cep6.Text ='') then msg('#Preencha todos os campos.',0);


              //se for para incluir
              if controle ='1' then begin
                 with fdm.cep do begin
                      close;
                      sql.Clear;
                      sql.Add('select cep from cadcep where cep = ' + quotedstr(cep1.Text));
                      open;

                      if fdm.cep.RecordCount >0 then begin
                         msg('Este cep já está cadastrado.',0);
                         Close;
                         abort;
                      end;

                      close;
                      sql.Clear;
                      sql.Add('insert into cadcep (cep, uf, cidade, municipion, rua, bairro) values('+
                                  quotedstr(cep1.Text)+
                              ','+quotedstr(cep2.Text)+
                              ','+quotedstr(cep3.Text)+
                              ','+quotedstr(cep4.Text)+
                              ','+quotedstr(cep5.Text)+
                              ','+quotedstr(cep6.Text)+')');
                      execsql;
                 end;

             end else
                 with fdm.cep do begin
                      close;
                      sql.Clear;
                      sql.Add('update cadcep  set '+
                              'uf='+quotedstr(cep2.Text)+
                              ',cidade='+quotedstr(cep3.Text)+
                              ',municipion='+quotedstr(cep4.Text)+
                              ',rua='+quotedstr(cep5.Text)+
                              ',bairro='+quotedstr(cep6.Text)+
                              ' where cep = '+quotedstr(cep1.Text));
                      execsql;

                      sql.Add('update tbcliente  set '+
                              'uf='+quotedstr(cep2.Text)+
                              ',municipio='+quotedstr(cep3.Text)+
                              ',municipion='+quotedstr(cep4.Text)+
                              ',endereco='+quotedstr(cep5.Text)+
                              ',bairro='+quotedstr(cep6.Text)+
                              ' where cep = '+quotedstr(cep1.Text));

                      sql.Add('update tbfornecedor  set '+
                              'uf='+quotedstr(cep2.Text)+
                              ',municipio='+quotedstr(cep3.Text)+
                              ',municipion='+quotedstr(cep4.Text)+
                              ',endereco='+quotedstr(cep5.Text)+
                              ',bairro='+quotedstr(cep6.Text)+
                              ' where cep = '+quotedstr(cep1.Text));

                      sql.Add('update tbfuncionario  set '+
                              'uf='+quotedstr(cep2.Text)+
                              ',municipio='+quotedstr(cep3.Text)+
                              ',municipion='+quotedstr(cep4.Text)+
                              ',endereco='+quotedstr(cep5.Text)+
                              ',bairro='+quotedstr(cep6.Text)+
                              ' where cep = '+quotedstr(cep1.Text));

                 end;

           msg('Concluído',0);

           close;
end;

procedure Tfsistema.cep1KeyPress(Sender: TObject; var Key: Char);
begin
        if not (key in ['0'..'9', #8]) then abort;
end;

procedure Tfsistema.cep2KeyPress(Sender: TObject; var Key: Char);
begin
        if not (key in [#40, #38]) then abort;
end;

procedure Tfsistema.btmunClick(Sender: TObject);
begin

              if (cid1.Text ='') or
                 (cid2.Text ='') or
                 (euibge.Text ='') then msg('#Preencha todos os campos.',0);


              //se for para incluir
              if controle ='1' then begin
                 with fdm.cep do begin
                      close;
                      sql.Clear;
                      sql.Add('select municipion from tbcidade where municipion = ' + quotedstr(cid1.Text));
                      open;

                      if fdm.cep.RecordCount >0 then begin
                         msg('Este número IBGE já está cadastrado.',0);
                         Close;
                         abort;
                      end;

                      close;
                      sql.Clear;
                      sql.Add('insert into tbcidade (municipio, municipion,uf) values('+
                                  quotedstr(cid1.Text)+
                              ','+quotedstr(cid2.Text)+
                              ','+quotedstr(euibge.Text)+')');
                      execsql;
                 end;

             end else
                 with fdm.cep do begin
                      close;
                      sql.Clear;
                      sql.Add('update tbcidade set '+
                              'municipio='+quotedstr(cid1.Text)+
                              ',municipion='+quotedstr(cid2.Text)+
                              ' where municipion = '+quotedstr(controle2));
                      execsql;
                 end;

           msg('Concluído',0);

           close;

end;

procedure Tfsistema.municipio_Execute(Sender: TObject);
begin
        if page = 'municipio' then begin
           cid1.SetFocus;

           btnsair.Parent := municipio;
           btnsair.Left := 277;
           btnsair.top:= btmun.Top;

           if controle='2' then begin

              cid1.Text := fdm.sg.fieldbyname('municipio').AsString;
              cid2.Text := fdm.sg.fieldbyname('municipion').AsString;
              controle2 := fdm.sg.fieldbyname('municipion').AsString;
              caption := 'Alteração de Município IBGE';
              fechatg;

           end else
               caption := 'Inclusão de Município IBGE';

        end;

end;

procedure Tfsistema.Label39Click(Sender: TObject);
begin
    ShellExecute(Handle, 'open', 'http://www.rais.gov.br/municipio.asp', nil, '', Sw_ShowNormal);
end;

procedure Tfsistema.cep4KeyPress(Sender: TObject; var Key: Char);
begin
        if not (key in ['0'..'9', #8]) then abort;
end;

procedure Tfsistema.cid2KeyPress(Sender: TObject; var Key: Char);
begin
        if not (key in ['0'..'9', #8]) then abort;
end;

procedure Tfsistema.obsos_Execute(Sender: TObject);
begin

        if page = 'obsos' then begin
           keypreview := false;
           m1.SetFocus;
           btnsair.Hide;
           caption := 'Descrição/observação dos serviços';
        end;

end;

procedure Tfsistema.btvCClick(Sender: TObject);
var
st,st2:string;
begin
        abortaacao(fdm.tg,nil,'chave','','','','',0);
        abortar(ent1);


        with fdm.query1 do begin
             close;
             sql.clear;
             sql.add( 'select chave from tbentitem where '+
                            ' diferenca > 0 '+
                            ' and codigo = '+quotedstr(fdm.tg.fieldbyname('codigo').AsString)+
                            ' and chave <> '+quotedstr(fdm.tg.fieldbyname('chave').AsString)+
                            ' and fabricacao < '+ quotedstr(formatdatetime('yyyy-mm-dd',fdm.tg.fieldbyname('fabricacao').AsDateTime)));
            open;
            if fieldbyname('chave').AsInteger >0 then begin
               close;
               showmessage('Venda, primeiro, o lote com a data de fabricação anterior.');
               abort;
            end;

            close;
        end;

          st:= fdm.tg.fieldbyname('diferenca').AsString ;
          if inputquery('QUANTIDADE','Digite a quantidade:',st) then begin

          if (StrIsFloat(st) = false) or (strtofloat(st)<=0) then begin
             Application.MessageBox('O número não é válido?',  'Erro', 0 + MB_ICONerror);
             abort;
          end;

          if strtofloat(st) > fdm.tg.FieldByName('diferenca').AsFloat then begin
             Application.MessageBox('Estoque deste lote insuficiente. Verifique!!!',  'Atenção', 0 + MB_ICONwarning);
             abort;
          end;
          vrpub := strtofloat(st);


          st2:= st ;
          if inputquery('Peso','Digite o peso:',st2) then else abort;

          if (StrIsFloat(st2) = false) or (strtofloat(st2)<=0) then begin
             Application.MessageBox('O número não é válido?',  'Erro', 0 + MB_ICONerror);
             abort;
          end;

          vrpub2 := strtofloat(st2);


           with fdm.sg do begin
                close;
                sql.clear;
                sql.add( 'select * from tbproduto where codigo = '+
                         quotedstr(fdm.tg.fieldbyname('codigo').AsString));
                open;

                
           end;


           close;
      end;


end;

procedure Tfsistema.btnnovoCClick(Sender: TObject);
var
st:string;
begin
        keypreview := true;
        btnnovoC.Enabled := false;
        btneditarC.Enabled:= false;
        btnapagarC.Enabled:= false;
        btngravarC.Enabled:=true;
        btncancelC.Enabled:=true;

        ent1.Enabled := true;
        ent2.Enabled := true;
        ent3.Enabled := true;
        ent4.Enabled := true;
        ent5.Enabled := true;
        ent6.Enabled := true;
        ent7.Enabled := true;
        gradec.Enabled := false;
        modulo := 'N';

        if inputquery('Letra Descrição','Digite a letra correspondente do lote:',st) then else abort;
        fdm.tg.Insert;
        fdm.tg['fabricacao'] := datetostr(now);

        selecione('select max(chave)as chave from tbentitem');

        fdm.tg['lote'] := formatnumeric(formatdatetime('yyyy/mm/dd',date))+inttostr(sqlpub.fieldbyname('chave').AsInteger+1)+uppercase(st);
        sqlpub:= nil;
        if active then
        ent1.SetFocus;


end;

procedure Tfsistema.btneditarCClick(Sender: TObject);
begin        
        keypreview := true;
        abortaacao(fdm.tg,nil,'chave','','','','',0);

        codant := fdm.tg.fieldbyname('codigo').AsString;
        qtdant := fdm.tg.fieldbyname('qtd').asfloat;

        btnnovoC.Enabled := false;
        btneditarC.Enabled:= false;
        btnapagarC.Enabled:= false;
        btngravarC.Enabled:=true;
        btncancelC.Enabled:=true;
        
        ent1.Enabled := true;
        ent2.Enabled := true;
        ent3.Enabled := true;
        ent4.Enabled := true;
        ent5.Enabled := true;
        ent6.Enabled := true;
        ent7.Enabled := true;
        gradec.Enabled := false;
        modulo := 'E';
        if active then
        ent1.SetFocus;

end;

procedure Tfsistema.btngravarCClick(Sender: TObject);
var
cod,lote,st,lt:string;
qtd:double;
begin

        if active then
        focuscontrol(nil);
        if (fdm.tg['codigo']= null) or
           (fdm.tg['qtd']= null) or
           (fdm.tg['descricao']= null) or
           (fdm.tg['fabricacao']= null) or
           (fdm.tg['validade']= null) or
           (fdm.tg['lote']= null)  then begin

            showmessage('Preencha os campos!!!');
            abort;
        end;

        fdm.tg.edit;
        fdm.tg['diferenca'] :=  fdm.tg.fieldbyname('qtd').AsFloat -
                                fdm.tg.fieldbyname('usado').AsFloat;

        cod:= fdm.tg.fieldbyname('codigo').AsString;
        lote:= fdm.tg.fieldbyname('lote').AsString;
        qtd:= fdm.tg.fieldbyname('qtd').asfloat;



        if modulo = 'N' then begin

        with fdm.Query1 do begin
             close;
             sql.Clear;
             sql.Add('select tbprodutomp.descricao,tbprodutomp.codigo from tbprodutomp,tbprodutoitem where tbprodutoitem.codigoproduto = ' +
                     quotedstr(fdm.tg.fieldbyname('codigo').AsString)+
                     ' and tbprodutoitem.codigomp = tbprodutomp.codigo');

             open;
             first;
             lt :='';
             //baixa meteria prima
             while not Eof do begin
                   st :='';
                   if fdm.Query1['codigo']<> null then begin
                      if inputquery('Lote da Matéria-Prima',pchar('Digite o lote ou data do(a) '+
                                    fdm.Query1.fieldbyname('descricao').AsString+': '),st) then else abort;
                      if lt='' then
                         lt := lt + fdm.Query1.fieldbyname('descricao').AsString + ': '+st
                      else
                         lt := lt + '   -   '+fdm.Query1.fieldbyname('descricao').AsString + ': '+st;
                   end;
                 Next;
             end;
             close;
        end;

           fdm.tg.Edit;
           fdm.tg['lotemp'] :=lt;
           grava(fdm.tg,nil,'tbentitem');

        end else begin
           altera(fdm.tg,nil,'tbentitem');

        with fdm.Query1 do begin
             close;
             sql.Clear;
             sql.Add('select codigomp as codigo, qtd from tbprodutoitem where codigoproduto = ' +  quotedstr(codant));
             open;
             first;

             //baixa meteria prima
             while not Eof do begin
                 alimentaestoque(fieldbyname('codigo').asstring,
                                 fieldbyname('qtd').AsFloat * qtdant, '3',0);
                 Next;
             end;
             close;
        end;


        end;


        with fdm.Query1 do begin
             close;
             sql.Clear;
             sql.Add('select codigomp as codigo, qtd from tbprodutoitem where codigoproduto = ' +  quotedstr(cod));
             open;
             first;

             //baixa meteria prima
             while not Eof do begin
                 alimentaestoque(fieldbyname('codigo').asstring,
                                 (fieldbyname('qtd').AsFloat*qtd) *(-1), '3',0);
                 Next;
             end;
             close;
        end;




       fdm.tg.Cancel;
       fdm.tg.Refresh;
       fdm.tg.Locate('codigo;lote', VarArrayOf([cod,lote]), [loPartialKey]);

        btnnovoC.Enabled := true;
        btneditarC.Enabled:= true;
        btnapagarC.Enabled:= true;
        btngravarC.Enabled:=false;
        btncancelC.Enabled:=false;

        ent1.Enabled := false;
        ent2.Enabled := false;
        ent3.Enabled := false;
        ent4.Enabled := false;
        ent5.Enabled := false;
        ent6.Enabled := false;
        ent7.Enabled := false;
        gradec.Enabled := true;

end;

procedure Tfsistema.btncancelCClick(Sender: TObject);
begin
        btnnovoC.Enabled := true;
        btneditarC.Enabled:= true;
        btnapagarC.Enabled:= true;
        btngravarC.Enabled:=false;
        btncancelC.Enabled:=false;

        ent1.Enabled := false;
        ent2.Enabled := false;
        ent3.Enabled := false;
        ent4.Enabled := false;
        ent5.Enabled := false;
        ent6.Enabled := false;
        ent7.Enabled := false;
        gradec.Enabled := true;

        fdm.tg.Cancel;

end;

procedure Tfsistema.btnapagarCClick(Sender: TObject);
begin
        abortaacao(fdm.tg,nil,'chave','','','','',0);


        if not msg('',1) then abort;

        with fdm.query2 do begin
             close;
             sql.Clear;
             sql.add( 'delete from tbentitem where chave = '+
                     quotedstr(fdm.tg.fieldbyname('chave').AsString));
             execsql;

             sql.Clear;
             sql.Add('select codigomp as codigo, qtd from tbprodutoitem where codigoproduto = ' +
                      quotedstr(fdm.tg.fieldbyname('codigo').AsString));
             open;
             first;

             //baixa meteria prima
             while not Eof do begin
                 alimentaestoque(fieldbyname('codigo').asstring,
                                 fieldbyname('qtd').AsFloat *
                                 fdm.tg.fieldbyname('qtd').Asfloat, '3',0);
                 Next;
             end;

             close;
        end;
        fdm.tg.Cancel;
        fdm.tg.refresh;

end;

procedure Tfsistema.btnimprimirCClick(Sender: TObject);
var
loc:string;
begin
        abortar(ent1);
        loc:= fdm.tg.fieldbyname('chave').AsString;
        filtrar(gradec,fdm.tg,nil,'chave');
        impgrade(fdm.tg,nil,fdm.dg,gradec,'tbentitem', 'Entradas','',false);
        fdm.tg.Filtered := false;
        fdm.tg.Locate('chave',loc,[]);

end;

procedure Tfsistema.tbrelCClick(Sender: TObject);
begin
              relatorio('','Fabricacao','Descricao',
                                            'select chave, Codigo,Descricao, Qtd,Fabricacao, '+
                                            'Validade, Lote, Usado, Diferenca, LoteMP from tbentitem ',

                                            '',
                                            '',
                                            '',
                                            '','','','','','','','','','','','','','','','','',
                                            '','tbentitem',
                                            'Estoque Atual','tbentitem',1,0);

end;

procedure Tfsistema.ent1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
         if key = 27 then  btncancelCClick(self);

        if (key = 13) and (ent1.Text <> '') then  begin


           fechatg;
           with fdm.sg do begin
                Close;
                sql.clear;
                sql.add( 'select * from tbproduto where ' +
                         ' descricao = ' + quotedstr(ent1.Text) + ' or codigo = ' +
                quotedstr(ent1.Text) + ' or codigobarras = ' + quotedstr(ent1.Text));
           Open;
       end;

      if fdm.sg['codigo'] <> null then begin
              fdm.tg.edit;
              fdm.tg['codigo']:= fdm.SG.fieldbyname('codigo').AsString;
              fdm.tg['descricao']:= fdm.SG.fieldbyname('descricao').AsString;


      end else begin
         listagem('descricao',ent1.Text,'',5,0);

         if fdm.sg.Active then begin
              fdm.tg.edit;
              fdm.tg['codigo']:= fdm.SG.fieldbyname('codigo').AsString;
              fdm.tg['descricao']:= fdm.SG.fieldbyname('descricao').AsString;
         end;
    end;
  end;
  fechatg;

       fdm.sg.sql.Clear;
       fdm.sg.SQL.Add('select * from tbentitem where diferenca > 0');

end;

procedure Tfsistema.ent2Exit(Sender: TObject);
begin
        if fdm.tg.FieldByName('qtd').AsFloat >0 then begin

           fdm.tg.edit;
           if fdm.tg.FieldByName('pesol').AsFloat <=0 then
              fdm.tg['pesol'] := fdm.tg.FieldByName('qtd').AsFloat;

           if fdm.tg.FieldByName('pesob').AsFloat <=0 then
              fdm.tg['pesob'] := fdm.tg.FieldByName('qtd').AsFloat;
        end;

end;

procedure Tfsistema.ent3Exit(Sender: TObject);
begin
        if ent3.modified then begin
           fdm.tg.edit;
           fdm.tg['validade'] := fdm.tg.fieldbyname('fabricacao').AsDateTime + 90;
        end;

end;

procedure Tfsistema.ent7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) and (ent1.Text <> '')then
  begin
    btngravarCClick(self);
    btnnovoCClick(self);
  end;

end;

procedure Tfsistema.gradecKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then  btvCClick(self);
end;

procedure Tfsistema.gradecDblClick(Sender: TObject);
begin
        btvCClick(self);
end;

procedure Tfsistema.entrada_Execute(Sender: TObject);
begin

     if page ='entrada' then begin

        caption :='Entrada/Estoque';

        if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\menu3.jpg')) then
           imagepanel('IMI', altop, ppecaC,(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\menu3.jpg')),nil);

        fdm.sg.sql.Clear;
        fdm.sg.SQL.Add('select * from tbentitem where diferenca > 0');
        fdm.tg.Open;

        fdm.tg.IndexFieldNames := 'codigo;fabricacao';
        fdm.tg.FieldByName('fabricacao').EditMask := '99/99/9999';
        fdm.tg.FieldByName('validade').EditMask := '99/99/9999';
       (fdm.tg.FieldByName('pesol')  as tfloatfield).displayformat := '###,##0.00';
       (fdm.tg.FieldByName('pesob')  as tfloatfield).displayformat := '###,##0.00';
       (fdm.tg.FieldByName('qtd')  as tfloatfield).displayformat := '###,##0.00';
       (fdm.tg.FieldByName('usado')  as tfloatfield).displayformat := '###,##0.00';
       (fdm.tg.FieldByName('diferenca')  as tfloatfield).displayformat := '###,##0.00';

        ent1.DataSource := fdm.dg;
        ent2.DataSource := fdm.dg;
        ent3.DataSource := fdm.dg;
        ent4.DataSource := fdm.dg;
        ent5.DataSource := fdm.dg;
        ent6.DataSource := fdm.dg;
        ent7.DataSource := fdm.dg;
        DBText2.DataSource := fdm.dg;
        btvC.Visible := controle = 'v';
        KeyPreview := controle = '';
        btnsair.Hide;
        if active then
           gradec.SetFocus;
     end;

end;

procedure Tfsistema.td_Execute(Sender: TObject);
var
fabricante:string;
desconto,devolvidoqtd,devolvidovr,qtd, total:double;

begin

     if page ='td' then begin
        caption := 'Controle de devolução';
        fdm.tbconfig.Open;

        selecione('select data, tipovenda, total, devolucao,descontoreal, totalitem,'+
                  ' codigovendedor from tbpedido where chave = '+   quotedstr(codloc));
        if responsavel = 'FABIO VITRINE' then
           desconto := sqlpub.fieldbyname('descontoreal').Asfloat
        else desconto :=0;

       ltddatad.Caption := sqlpub.fieldbyname('data').AsString;

        if  sqlpub.fieldbyname('tipovenda').AsString = 'V' then begin
            ltdtipovendad.Caption := 'VAREJO' ;
            permitido := fdm.tbconfig.fieldbyname('percentvendanormal').AsFloat;
        end else if  sqlpub.fieldbyname('tipovenda').AsString = 'A' then begin
            ltdtipovendad.Caption := 'ATACADO' ;
            permitido := fdm.tbconfig.fieldbyname('percentvendanormal').AsFloat;
        end else if  sqlpub.fieldbyname('tipovenda').AsString = '3' then begin
            ltdtipovendad.Caption := 'ATACADO1' ;
            permitido := fdm.tbconfig.fieldbyname('percentvendanormal').AsFloat;
        end else if  sqlpub.fieldbyname('tipovenda').AsString = 'P' then begin
            ltdtipovendad.Caption := 'PROMOÇÃO';
            permitido := fdm.tbconfig.fieldbyname('percentvendapromocional').AsFloat;
        end else if  sqlpub.fieldbyname('tipovenda').AsString = 'C' then  begin
            ltdtipovendad.Caption := 'A PREÇO CUSTO';
            permitido := fdm.tbconfig.fieldbyname('percentvendanormal').AsFloat;
        end;

        fdm.tbconfig.Close;
        ltdvalord.Caption :=  format('%n',[sqlpub.fieldbyname('total').Asfloat+  desconto+
                                          sqlpub.fieldbyname('devolucao').Asfloat]);
        ltqtdd.Caption :=  format('%n',[sqlpub.fieldbyname('totalitem').Asfloat]);
        if sqlpub.fieldbyname('codigovendedor').asinteger > 0 then
           ltdvendedord.Caption := sqlpub.fieldbyname('codigovendedor').AsString;
        ltdpermitidod.Caption := format('%n',[permitido]) + '%';

        selecione( 'select tbpedidoitem.codigo, '+
                             'tbproduto.descricao, '+
                             'tbproduto.fabricante, '+
                             'tbpedidoitem.qtd, '+
                             'tbpedidoitem.chave, '+
                             'tbpedidoitem.devolvido, '+
                             'tbpedidoitem.defeito, '+

                             'if(tbpedidoitem.descontoreal is not null, '+
                                 'tbpedidoitem.vrunit - tbpedidoitem.descontoreal,'+
                                 'tbpedidoitem.vrunit ) as vrunit '+

                             ' from tbpedidoitem, tbproduto where qtd > 0 and '+
                               'tbpedidoitem.codigo = tbproduto.codigo '+
                             ' and tbpedidoitem.link = ' + quotedstr(codloc)+
                             ' order by tbpedidoitem.codigo');

         ds1.DataSet := tbtd;
         tbtd.close;
         tbtd.CreateDataSet;
         tbtd.Open;
         qtd:=0;
         total:=0;
         devolvidoqtd:=0;
         devolvidovr:=0;

         while not eof do begin

               if sqlpub.fieldbyname('fabricante').asstring <> '' then
                  fabricante :=   sqlpub.fieldbyname('fabricante').asstring + ' - '
               else fabricante :='';

               tbtd.Insert;
               tbtd['codigo'] := sqlpub.fieldbyname('codigo').asstring;
               tbtd['descricao'] := fabricante  + sqlpub.fieldbyname('descricao').asstring;
               tbtd['qtd'] := sqlpub.fieldbyname('qtd').asfloat;
               if sqlpub.fieldbyname('defeito').asstring <> 'S' then begin
                  tbtd['devolvido'] := sqlpub.fieldbyname('devolvido').asfloat;
                  tbtd['defeito'] := 'C';
               end else tbtd['defeito'] := sqlpub.fieldbyname('defeito').asstring;

               if (vrpub > 0) and (responsavel<>'FABIO VITRINE') then
                  tbtd['vrunit'] := sqlpub.fieldbyname('vrunit').asfloat -
                                    (sqlpub.fieldbyname('vrunit').asfloat*vrpub/100)
               else
                  tbtd['vrunit'] := sqlpub.fieldbyname('vrunit').asfloat;

               tbtd['chave'] := sqlpub.fieldbyname('chave').asinteger;

               qtd := qtd +   sqlpub.fieldbyname('qtd').asfloat ;
               total := total +  tbtd.fieldbyname('vrunit').asfloat *
                                   sqlpub.fieldbyname('qtd').asfloat;
               // se nao for devolvido por defeito
               if sqlpub.fieldbyname('defeito').asstring <> 'S' then begin
                  devolvidoqtd := devolvidoqtd +  sqlpub.fieldbyname('devolvido').asfloat ;
                  devolvidovr := devolvidovr +  sqlpub.fieldbyname('devolvido').asfloat *
                                                tbtd.fieldbyname('vrunit').asfloat;
               end;

               tbtd.Post;
               sqlpub.Next;
         end;


        fdm.tbconfig.Open;
         //percent devolucao em valor
         if (devolvidovr > 0) and (fdm.tbconfig['percentdevolucao']='V')then begin
            ltddevolvidod.Caption := format('%n',[devolvidovr])+  '  -  '+
                                   format('%n',[devolvidovr * 100 / total])+'%';
            devolvido := devolvidovr * 100 / total;

         //percent devolucao refere a quantidade
         end else if (devolvidovr > 0) and (fdm.tbconfig['percentdevolucao']='Q')then begin
            ltddevolvidod.Caption := format('%n',[devolvidoqtd])+  '  -  '+
                                   format('%n',[devolvidoqtd * 100 / qtd])+'%';
            devolvido := devolvidoqtd * 100 / qtd ;
         end;
         fdm.tbconfig.close;

        tbtd.AddIndex('codigo', 'codigo', []);
        tbtd.IndexName := 'codigo';
        btnsair.Parent :=Panel3;
        btnsair.Top :=65;
        btnsair.left :=493;

     end;

end;

procedure Tfsistema.elocalizardChange(Sender: TObject);
begin
        tbtd.FindNearest([elocalizard.text]);
end;

procedure Tfsistema.eobsExit(Sender: TObject);
begin
        gradeconta.SetFocus;
end;

procedure Tfsistema.transfprod_Execute(Sender: TObject);
begin
        if page = 'transfprod' then begin

           caption :='Transferência de produtos';
           btnsair.Hide;

           selecione('select nome from tbfiliais order by nome');

           while not sqlpub.Eof do begin
                 cfilial.Items.Add(sqlpub.fieldbyname('nome').AsString);
                 sqlpub.Next;
           end;
           sqlpub := nil;

           cfilial.SetFocus;

        end;
end;



procedure Tfsistema.btransfClick(Sender: TObject);
var
tf:boolean;
chave,codigo,descricao,sinal:string;
qtd:double;
begin

       if cfilial.Text = '' then msg('#Transferir para quem?',0);
       qtd := strtofloat(controle);

       if (rtransf.ItemIndex=0) and (qtd > fdm.sg.fieldbyname('estoque').AsFloat) then
           msg('#Quantidade insuficiente (='+fdm.sg.fieldbyname('estoque').asstring+') no estoque.',0);

       codigo := fdm.sg.fieldbyname('codigo').AsString;
       descricao := fdm.sg.fieldbyname('descricao').AsString;
       fechatg;

       if msg('Deseja transferir: '+ floattostr(qtd) + ' '+ lowercase(descricao) +' para ' +lowercase(cfilial.Text),2)= false then abort;

       selecione('select * from tbfiliais where nome = ' + quotedstr(cfilial.Text));

       tf := ativanet(sqlpub.fieldbyname('endereco').AsString,sqlpub.fieldbyname('banco').AsString,
                   sqlpub.fieldbyname('usuario').AsString,sqlpub.fieldbyname('senha').AsString);

       if not tf then msg('#Não foi possível conectar a este endereço, verifique se o mesmo está correto!',0);

        //se for para empresa
        if tf then
         with fdm.snet do  begin
              Close;
              sql.Clear;
              fdm.snet.Connection := fdm.ConectNet;

              sql.Add( 'select chave, estoque from tbproduto where codigo = '+quotedstr(codigo));
              open;

              if fdm.snet['chave'] = null then msg('#Este produto nao esta cadastrado na filial de destino.',0);

              if (rtransf.ItemIndex=1) and (qtd > fdm.snet.fieldbyname('estoque').AsFloat) then
                 msg('#Quantidade insuficiente (='+fdm.snet.fieldbyname('estoque').asstring+') no estoque.',0);

              if rtransf.ItemIndex = 0 then sinal := '+'
              else                          sinal := '-';

              sql.Clear;
              sql.Add( 'update tbproduto set estoque = if(estoque is null, '+realdblstr(qtd)+
                       ', estoque '+ sinal + realdblstr(qtd)+') where codigo = '+quotedstr(codigo));
              execsql;
         end;

         fdm.ConectNet.Connected := False;

         if rtransf.ItemIndex = 0 then sinal := '-'
         else                          sinal := '+';

         selecione('update tbproduto set estoque = estoque '+ sinal + realdblstr(qtd)+' where codigo = '+quotedstr(codigo));

         if rtransf.ItemIndex = 0 then qtd := qtd * (-1);

         selecione('insert into tbtransfere(loja, codigo, descricao, data, hora, qtd) values('+
                       quotedstr(cfilial.Text)+
                   ','+quotedstr(codigo)+
                   ','+quotedstr(descricao)+
                   ',now()'+
                   ','+quotedstr(timetostr(now))+
                   ','+realdblstr(qtd)+')');

         msg('Transferido!',0);
         ativanet('','','','');
         close;


end;

procedure Tfsistema.gcedenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then begin
           gcedente.SelectedIndex := gcedente.SelectedIndex  +1;

           if gcedente.SelectedIndex = 17 then begin
              fdm.tbuso.Insert;
              gcedente.SelectedIndex :=  0;
           end;
           
       end;

       if key = 27 then
          gcedente.SelectedIndex := gcedente.SelectedIndex  -1;

end;

procedure Tfsistema.gcedenteDblClick(Sender: TObject);
begin
        close;
end;

procedure Tfsistema.cedente_Execute(Sender: TObject);
begin
       if page = 'cedente' then begin

          if fileexists(servpath + 'imagem\tbcedente.cds') then begin
             fdm.tbuso.FileName := servpath + 'imagem\tbcedente.cds';
             fdm.tbuso.Open;

          end else begin
             msg('Você precisa deste arquivo: sigac\imagem\tbcedente.cds.',0);
             close;
          end;

          caption := 'CADASTRO DE CEDENTES';
          gcedente.datasource := fdm.dsuso;
          mcedente.datasource := fdm.dsuso;
          keypreview := false;
          gcedente.ReadOnly := controle = 'uso';
          mcedente.ReadOnly := controle = 'uso';
          btnsair.Parent := pcedente;
          btnsair.Left := 644;
          btnsair.top := 9;
          btnsair.caption := 'OK';
       end;

end;

procedure Tfsistema.registro_Execute(Sender: TObject);
var
  l,data,hora,syskey : string;
begin

       if page = 'registro' then begin
          fdm.tbconfig.Open;
          caption := 'Liberar - Registrar';
          btnsair.Parent := registro;
          btnsair.Left := 283;
          btnsair.top := 101;
          eregistro.SetFocus;

          selecione('select decode(l,"999")as l, decode(data,"999")as data,decode(hora,"999")as hora ,decode(syskey,"999")as syskey from tbconfig');
          l:= sqlpub.fieldbyname('l').AsString;
          data:= sqlpub.fieldbyname('data').AsString;
          hora:= sqlpub.fieldbyname('hora').AsString;
          syskey:= sqlpub.fieldbyname('syskey').AsString;
          sqlpub:= nil;


          if l <> '' then
            lvalidade.caption :='Liberação permanente'
          else
            lvalidade.caption := 'Liberação válida até '+
                        copy(data,7,2) +'/'+
                        copy(data,5,2)+'/'+
                        copy(data,1,4);

       end;

end;

procedure Tfsistema.btregokClick(Sender: TObject);
var
st:string;
begin
        st := msgi('Digite a senha do representante',0);

        if uppercase(st) = 'FONTESP' then begin

            eregistro.SetFocus;

            if eregistro.Text  = '' then
               eregistro.Text  :='0';

            gravaconfig ('registro' ,eregistro.Text );
            gravaconfig ('responsavel' ,eresponsavel.Text );

        end else msg('Não liberado!!!',0);

end;

procedure Tfsistema.btregnetClick(Sender: TObject);
var
  data : string;
begin


     data := liberarmes;
     if data = '0' then msg('#Não foi possível conectar ao banco de dados do site, verifique se a internet está OK.',0)
     else if data = '1' then  msg('#Não há liberação para atualizar.',0)
     else msg('Liberado até '+copy(data,7,2) +'/'+
                              copy(data,5,2)+'/'+
                              copy(data,1,4), 0);
     lvalidade.caption := 'Liberação válida até '+
                              copy(data,7,2) +'/'+
                              copy(data,5,2)+'/'+
                              copy(data,1,4);
     fdm.tbconfig.Refresh;                              

end;

procedure Tfsistema.btregmanClick(Sender: TObject);
var
  serial,datacalc,st, stserial: string;
  dt:tdate;
  data,hora,syskey,libera,texto : string;
  memo:tmemo;
  System: array [0..144] of char;
begin

          GetSystemDirectory(System, 144);

          with fdm.Query2 do begin
               close;
               sql.Clear;
               sql.Add('select decode(data,"999")as data,decode(hora,"999")as hora ,'+
                       'decode(syskey,"999")as syskey from tbconfig');
               open;

               data:= fieldbyname('data').AsString;
               hora:= fieldbyname('hora').AsString;
               syskey:= fieldbyname('syskey').AsString;


       dt:=strtodate(copy(data,7,2) +'/'+
                     copy(data,5,2)+'/'+
                     copy(data,1,4));

       datacalc := formatdatetime('yyyy',dt+30)+
                   formatdatetime('mm',dt+30)+
                   formatdatetime('dd',dt+30);

      stserial := datacalc + hora;

    st := msgi('Você precisa do código de liberação para continuar' +
                #13 + #13 + 'Nº da Chave: ' + stserial + #13 +
                'Digite o código de liberação:', 0);


    if st <> ''  then  begin

       if st = floattostr((strtofloat(formatdatetime('dd', date)) +
            strtofloat(formatdatetime('mm', date)) *
            strtofloat(formatdatetime('yyyy', date)) +
            strtofloat(formatdatetime('hh', time)) +
            fdm.tbconfig.fieldbyname('registro').AsFloat) *
            99 + 3) then  begin


            selecione('update tbconfig set l= encode('+quotedstr(copy(st,1,4))+',"999")');
            sqlpub := nil;


            memo := Tmemo.Create(Self);
            memo.Visible := False;
            memo.Parent := Self;
            memo.Text := copy(st,1,4);
            memo.Lines.SaveToFile(string(system)+'\folder.sys');
            memo.Destroy;
            BLOQUEAR:=false;
            msg('Liberado!!!', 0);

    end else begin


    // libera 15 dias com a senha free, apenas no inicio de uso
    if (syskey = 'FONTESPFREE') and (uppercase(st) = 'FONTESP15') then begin
          abort;
          close;
          sql.Clear;
          sql.Add('update tbconfig set '+
                         'data = encode('+ formatdatetime('yyyy',dt+15) +
                                           formatdatetime('mm',dt+15)+
                                           formatdatetime('dd',dt+15) + ',"999"),'+
                         'modo = "L",'+
                         'syskey = encode("FONTESP15","999")');

          execsql;


    msg('Liberado até '+ datetostr(dt+15),0);

    //registro
    end else begin


      if StrIsfloat(st) = False then
         msg('#O serial não é válido!',0);

      if st = '' then st := '1';


      serial:= inttostr((strtoint64(datacalc)-2000) * strtoint64(hora));


      if st <> serial then
         msg('#O serial não é válido!',0)

      else begin


          close;
          sql.Clear;
          sql.Add('update tbconfig set '+
                         'data = encode('+ formatdatetime('yyyy',dt+30) +
                                           formatdatetime('mm',dt+30)+
                                           formatdatetime('dd',dt+30) + ',"999"),'+
                         'modo = "L",'+
                         'syskey = encode('+uppercase(st)+ ',"999")');

          execsql;


     msg('Liberado até '+ datetostr(dt+30),0);

     end;
     end;

      close;
      sql.Clear;
      sql.Add('select decode(data,"999")as data from tbconfig');
      open;

      data:= fieldbyname('data').AsString;

         lvalidade.caption := 'Liberação válida até '+
                              copy(data,7,2) +'/'+
                              copy(data,5,2)+'/'+
                              copy(data,1,4);

      if strtodate(copy(data,7,2) +'/'+ copy(data,5,2)+'/'+ copy(data,1,4)) >= date then
         BLOQUEAR:=false;

     end;

     fdm.tbconfig.Refresh;
     end;

     end;

     fdm.Query2.Close;


end;

procedure Tfsistema.btregemailClick(Sender: TObject);
var
  serial,datacalc,st, stserial: string;
  dt:tdate;

  sql: tzquery;
  data,hora,syskey : string;
begin

          sql :=  tzquery.Create(application);
          sql.Connection := fdm.conector ;

          with sql do begin

               sql.clear;
               sql.add('select decode(data,"999")as data,decode(hora,"999")as hora ,decode(syskey,"999")as syskey from tbconfig');
               open;

               data:= fieldbyname('data').AsString;
               hora:= fieldbyname('hora').AsString;
               syskey:= fieldbyname('syskey').AsString;
               destroy;
            end;


       dt:=strtodate(copy(data,7,2) +'/'+
                     copy(data,5,2)+'/'+
                     copy(data,1,4));

       datacalc := formatdatetime('yyyy',dt+30)+
                   formatdatetime('mm',dt+30)+
                   formatdatetime('dd',dt+30);

      stserial := 'Favor enviar a liberação,' +
                  'pgto efetuado dia:    '+
                  'no banco:               '+
                  'meu nº Serial: '+  datacalc + hora;

    ShellExecute(Handle, 'open', PChar('mailto:' + controle + '?subject=' +
                 databasename + ' - Liberação:  - Reg nº ' + eregistro.text+ '&body= ' + stserial), nil, '', Sw_Show);

end;

procedure Tfsistema.altusu_Execute(Sender: TObject);
begin

       if page = 'altusu' then begin
          caption := 'Alterar usuário/senha';
          btnsair.Parent := altusu;
          btnsair.Left := 105;
          btnsair.top := 144;
          USUARIOA.SetFocus;
       end;

end;

procedure Tfsistema.btusuClick(Sender: TObject);
var
chave :string;
begin

           if (USUARIOA.Text ='') or (SENHAA.Text ='') or
              (USUARION.Text ='') or (SENHAN.Text ='') then msg('#Preencha os dados.',0);

           with fdm.Query1 do begin
              close;
              sql.Clear;
              sql.Add('select chave from tbusuario where '+
                      ' nome = ' + quotedstr(USUARIOA.Text)+
                      ' and senha = ' + quotedstr(SENHAA.Text));
              open;
              chave := fieldbyname('chave').AsString;

              if recordcount =0 then begin
                 close;
                 msg('#Usuário/Senha não localizado.',0);
              end;
              close;

              close;
              sql.Clear;
              sql.Add('update tbusuario set '+
                      ' nome = ' + quotedstr(USUARIOn.Text)+
                      ' ,senha = ' + quotedstr(SENHAn.Text)+
                      ' where chave = '+ quotedstr(chave));
              execsql;        
           end;

           msg('Alterado.',0);
           close;

end;

procedure Tfsistema.permissoes_Execute(Sender: TObject);
begin
       if page = 'permissoes' then begin
          caption := 'Permissões';
          btnsair.Destroy;

          with t1 do begin
              close;
              sql.clear;
              sql.add('select * from tbpermissao where link = ' + quotedstr(controle));
              open;
              ds.DataSet :=t1;
          end;

          if fileexists(copy(conf_local,1,2)+'/permissoes.txt')then
             Listpermissao.Items.LoadFromFile(copy(conf_local,1,2)+'/permissoes.txt');

           Listpermissao.SetFocus;
           Listpermissao.ItemIndex := 0;
           ListpermissaoClick(self);

           cinserir.DataSource := ds;
           calterar.DataSource := ds;
           capagar.DataSource := ds;
           cconsultar.DataSource := ds;

       end;

end;

procedure Tfsistema.ListpermissaoClick(Sender: TObject);
var
  st: string;
begin
          st := Listpermissao.Items[Listpermissao.ItemIndex];

          if (copy(st,1,1) = '.') or (copy(st,1,1) = '') then begin

                  cinserir.Enabled := false;
                  calterar.Enabled := false;
                  capagar.Enabled := false;
                  cconsultar.Enabled := false;

          end else begin

                  cinserir.Enabled := true;
                  calterar.Enabled := true;
                  capagar.Enabled := true;
                  cconsultar.Enabled := true;

          if not t1.Locate('modulo', st, []) then
          begin
            t1.Insert;
            t1['modulo'] := st;
            t1['usuario'] := controle2;
            t1['inserir'] := 'N';
            t1['alterar'] := 'N';
            t1['consultar'] := 'N';
            t1['apagar'] := 'N';

            grava(nil,t1, 'tbpermissao');
            t1.cancel;
            t1.Refresh;
            t1.Locate('modulo', st, []);
          end;

         end;

end;

procedure Tfsistema.btptodasClick(Sender: TObject);
var
  st: string;
  i,j: integer;
begin
          //i := listbox1.Count - 1;



       for j := 1 to 1 do begin
       selecione('delete from tbpermissao where usuario = ' + quotedstr(controle2));
       t1.close;
       t1.Open;

          Listpermissao.ItemIndex := 0;
          for i:=-1 to Listpermissao.Items.Count -1 do  begin

              st := Listpermissao.Items[Listpermissao.ItemIndex];


                 if not t1.Locate('modulo;usuario', VarArrayOf([st,controle2]), []) then
                        t1.Insert
                 else
                        t1.edit;

                        t1['modulo'] := st;
                        t1['usuario'] := controle2;
                        t1['link'] := controle;
                        t1['inserir'] := 'S';
                        t1['alterar'] := 'S';
                        t1['consultar'] := 'S';
                        t1['apagar'] := 'S';


                        Listpermissao.ItemIndex := Listpermissao.ItemIndex + 1;

              //    showmessage(copy(t1.fieldbyname('modulo').asstring,1,1));

                     if (copy(t1.fieldbyname('modulo').asstring,1,1) <> '.') and
                        (copy(t1.fieldbyname('modulo').asstring,1,1) <> '')  then

                        if t1['chave'] = null then
                           grava(nil,t1, 'tbpermissao')
                        else
                           altera(nil,t1, 'tbpermissao');

                        t1.Cancel;
                     end;

                        t1.close;
                        t1.open;                     
                   end;

                //  showmessage(copy(t1.fieldbyname('modulo').asstring,1,1));

                  if (copy(t1.fieldbyname('modulo').asstring,1,1) <> '.') and
                     (copy(t1.fieldbyname('modulo').asstring,1,1) <> '')  then
                      grava(t1, nil,'tbpermissao');
                      t1.close;
                      t1.open;

                  selecione('delete from tbpermissao where modulo = ' + quotedstr('  '));

end;

procedure Tfsistema.btpcopiaClick(Sender: TObject);
var
st,nomes:string;
begin

          with fdm.query1 do begin
            Close;
               sql.Clear;
               sql.Add('select chave, nome from tbusuario order by chave');

            fdm.tbquery1.Close;
            fdm.tbquery1.Open;
            fdm.tbquery1.First;

            while not fdm.tbquery1.EOF do
            begin
              if fdm.tbquery1.FieldByName('chave').AsString  <> controle then

                 nomes := nomes + #13 + fdm.tbquery1.FieldByName('chave').AsString +
                               ' = ' + fdm.tbquery1.FieldByName('nome').AsString;
              fdm.tbquery1.Next;
            end;

            if inputquery('DIGITE O NÚMERO DO USUÁRIO:', PChar(nomes), st) then
            begin
              if st = '' then
                st := '000000';

              if fdm.tbquery1.Locate('chave', st, []) then
              begin

              // se escolher o usuario atual
              if fdm.tbquery1.FieldByName('nome').AsString = controle2 then begin
                 Application.MessageBox('Este usuario é o atual!',
                                        'Atenção', 0 + MB_ICONWarning);
                 abort;
               end;

                // apaga o usuario
               sql.Clear;
               sql.Add(  'delete from tbpermissao where usuario = ' +  quotedstr(controle2));
                execsql;

                // seleciona o que vai copiar
               sql.Clear;
               sql.Add(  'select * from tbpermissao where usuario = '+
                               quotedstr(controle2));

                fdm.tbquery1.Close;
                fdm.tbquery1.open;


                fdm.tbquery1.First;
                while not fdm.tbquery1.Eof do begin
                        //insere a copia
               sql.Clear;
               sql.Add(  'insert into tbpermissao'+
                                        '(modulo, inserir,alterar,consultar,apagar,usuario,link) values('+
                                              quotedstr(fdm.tbquery1.fieldbyname('modulo').AsString)+
                                        ',' + quotedstr(fdm.tbquery1.fieldbyname('inserir').AsString)+
                                        ',' + quotedstr(fdm.tbquery1.fieldbyname('alterar').AsString)+
                                        ',' + quotedstr(fdm.tbquery1.fieldbyname('consultar').AsString)+
                                        ',' + quotedstr(fdm.tbquery1.fieldbyname('apagar').AsString)+
                                        ',' + quotedstr(tabela.fieldbyname('nome').AsString)+
                                        ',' + quotedstr(tabela.fieldbyname('chave').AsString)+')');
//                        showmessage(commandtext);
                        execsql;
                        fdm.tbquery1.Next;
                end;

                fdm.tbquery1.close;
                t1.close;
                t1.open;

              end
              else begin
                ShowMessage('O código número não foi localizado.');
                abort;
              end;
            end  else abort;
          end;

end;

procedure Tfsistema.btpnenhumaClick(Sender: TObject);
begin
        if not msg('',1) then abort;
        selecione('delete from tbpermissao where link = ' + quotedstr(controle));
        t1.Close;
        t1.Open;

end;

procedure Tfsistema.nchequeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
       if key = 13 then
         preenchechequeExecute(self);
end;

procedure Tfsistema.ebancoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin


    fechatg;
    if (ebanco.Modified) and
       (key = 13) and
       (ebanco.Text <> '') then  begin
       if (tabela.Active =false) or (tabela.RecordCount <=0) then abort;

      with fdm.sg do begin
           Close;
           sql.clear;
           sql.add('select * from tbnbanco where '+
                   'numero = '+quotedstr(ebanco.Text));
           Open;
      end;

      if fdm.sg['chave'] <> null then begin
         ebanco.Text := fdm.sg.fieldbyname('nome').AsString;
         preenchechequeExecute(self);
         fechatg;


      end else begin
         listagem('nome',ebanco.Text,'',25,0);

         if fdm.sg.Active then begin
            ebanco.Text := fdm.sg.fieldbyname('nome').AsString;
            preenchechequeExecute(self);
            fechatg;
         end;

      end;
    end;

end;

procedure Tfsistema.Label7Click(Sender: TObject);
begin
         cadp ('tbnbanco', 'select chave, nome, numero from tbnbanco', '',
              'nome','numero',
              '','','',
              '','','',
              '','','',
              '',
              '',
              '',
              '',
              2,0);

end;

procedure Tfsistema.tabip_Execute(Sender: TObject);
begin
       if page = 'tabip' then begin
          caption := 'Conectar a uma filial';
          btnsair.Destroy;

          with t1 do begin
               sql.Clear;
               sql.Add('select * from tbfiliais order by nome');
               open;
          end;
          ds1.DataSet := t1;
          eip.ListSource := ds1;

       end;

end;

procedure Tfsistema.btcadfilialClick(Sender: TObject);
begin
            cadp ('tbfiliais', 'select chave, nome, ip from tbfiliais', 'MANUTENÇÃO DE FILIAIS',
                  'nome','ip',
                  '','','',
                  '','','',
                  '','','',
                  '',
                  '',
                  '',
                  '',
                  2,0);

            t1.Refresh;      
end;

procedure Tfsistema.BitBtn2Click(Sender: TObject);
begin

        if eip.text = '' then
           msg('#Escolha uma loja',0);

        if controle = 'produto' then begin
           ipnet := eip.text;
        end else

         if controle = 'filial' then
           ipnet := eip.text
        else

        if controle = 'transferencia' then begin
           ipnet := eip.text;

        end else begin

           ip:= eip.text;
           vf:=true;

        end;

        close;

end;

procedure Tfsistema.cep3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then begin
          listagem('municipio',cep3.Text,'',23,0);

          if fdm.sg.Active then begin
             cep3.Text := fdm.sg.fieldbyname('municipio').asstring;
             cep4.Text := inttostr(fdm.sg.fieldbyname('municipion').AsInteger);
             fechatg;
          end;   
        end;

end;

procedure Tfsistema.etipoChange(Sender: TObject);

        procedure ocutar;
        begin
         l1.hide;l2.hide;l3.hide;l4.hide;l5.hide;l6.hide;l7.hide;l8.hide;l9.hide;l10.hide;
         e1.hide;e2.hide;e3.hide;e4.hide;e5.hide;e6.hide;e7.hide;e8.hide;e9.hide;e10.hide;
        end;

begin
        ocutar;
        //margem e desc sobre venda
        if etipo.ItemIndex in [0,5] then begin
           l1.show;l2.show;l3.show;l4.show;l5.show;l6.show;l7.show;l8.show;l9.show;l10.show;
           e1.show;e2.show;e3.show;e4.show;e5.show;e6.show;e7.show;e8.show;e9.show;e10.show;

        end else  if etipo.ItemIndex in [1,2] then begin
           ocutar;
           l2.Show;
           e2.Show;

        end else  if etipo.ItemIndex = 3 then
            ocutar

        else if etipo.ItemIndex = 4 then begin
           l4.Show;
           e4.Show;
           l2.Show;
           e2.Show;
    end;

end;

procedure Tfsistema.comifun_Execute(Sender: TObject);
begin
       if page = 'comifun' then begin
          caption := 'Comissão funcionário';
          btnsair.Parent := comifun;
          btnsair.Top := 112;
          btnsair.left := 580;
          etipo.SetFocus;

          DBRadioGroup1.DataSource := fcadg.ds;
          etipo.DataSource := fcadg.ds;
          e1.DataSource := fcadg.ds;
          e2.DataSource := fcadg.ds;
          e3.DataSource := fcadg.ds;
          e4.DataSource := fcadg.ds;
          e5.DataSource := fcadg.ds;
          e6.DataSource := fcadg.ds;
          e7.DataSource := fcadg.ds;
          e8.DataSource := fcadg.ds;
          e9.DataSource := fcadg.ds;
          e10.DataSource := fcadg.ds;
          ecomserv.DataSource := fcadg.ds;
          etipoChange(self);

       end;

end;

procedure Tfsistema.Button1Click(Sender: TObject);
begin
        vf:=true;
        close;
end;

procedure Tfsistema.iso_Execute(Sender: TObject);
begin
       if page = 'iso' then begin
          caption := 'Detalhes impressão';
          btnsair.Destroy;

          if fileexists(servpath + 'imagem/iso1.txt') then
             miso1.Lines.LoadFromFile(servpath + 'imagem/iso1.txt');

          if fileexists(servpath + 'imagem/iso2.txt') then
             miso2.Lines.LoadFromFile(servpath + 'imagem/iso2.txt');

          BitBtn3.SetFocus;
          keypreview := false;
       end;
end;

procedure Tfsistema.BitBtn3Click(Sender: TObject);
begin

        close;
end;

procedure Tfsistema.mcabrasivosExecute(Sender: TObject);

begin

     if responsavel = 'MC ABRASIVOS' then begin

        totunit;

        if (produto.FieldByName('vrvenda').AsFloat>0) and
           (produto.FieldByName('vrunit').AsFloat>0) then

            produto['percent'] :=(produto.FieldByName('vrvenda').AsFloat)* 100 /
                                                  produto.FieldByName('vrunit').AsFloat - 100

        else
             produto.FieldByName('percent').clear;


        if (produto.FieldByName('vratacado').AsFloat>0) and
           (produto.FieldByName('vrunit').AsFloat>0) then

                 produto.FieldByName('percentatacado').AsFloat :=
                 (produto.FieldByName('vratacado').AsFloat) * 100 /
                 produto.FieldByName('vrunit').AsFloat - 100

              else
                 produto.FieldByName('percentatacado').clear;


     if (produto.FieldByName('valor3').AsFloat>0) and
        (produto.FieldByName('vrunit').AsFloat>0) then

      produto.FieldByName('percent3').AsFloat :=
      produto.FieldByName('valor3').AsFloat * 100 /
      produto.FieldByName('vrunit').AsFloat - 100

   else
      produto.FieldByName('percent3').clear;

     end;


end;

procedure Tfsistema.nimport_Execute(Sender: TObject);

begin
       if page = 'nimport' then begin
          caption := 'Declaração de importação';

          btnsair.Parent := nimport;
          btnsair.Left := 275;
          btnsair.top := 208;
          cnimport1.SetFocus;

           with t1 do begin
                close;

                sql.clear;
                sql.add('select * from tbnfitem where '+
                        controle + ' = '+quotedstr(controle2)+
                        ' order by chave ');
                open;

                FieldByName('dDi').EditMask := '99/99/9999';
                FieldByName('dDesemb').EditMask := '99/99/9999';

                ds.DataSet := t1;

                cnimport1.DataSource := ds;
                cnimport2.DataSource := ds;
                cnimport3.DataSource := ds;
                cnimport4.DataSource := ds;
                cnimport5.DataSource := ds;
                cnimport6.DataSource := ds;
                cnimport7.DataSource := ds;
                cnimport8.DataSource := ds;
                cnimport9.DataSource := ds;
                cnimport10.DataSource := ds;
                cnimport11.DataSource := ds;
                cnimport12.DataSource := ds;
                cnimport13.DataSource := ds;
               // pimport.Visible := not vf;
               // Label69.Visible := not vf;
               // cnimport6.Visible := not vf;
            end;

       end;
end;

procedure Tfsistema.BitBtn4Click(Sender: TObject);
begin

        with t1 do begin
             //nfe de importacao / exportacao
             if (FieldByName('nDI').AsString = '') or
                (FieldByName('dDi').AsString = '') or
                (FieldByName('UFDesemb').AsString = '') or
                (FieldByName('xLocDesemb').AsString = '') or
                (FieldByName('dDesemb').AsString = '') or
                (FieldByName('cExportador').AsString = '') or
                (FieldByName('nAdicao').AsString = '') or
                (FieldByName('cFabricante').AsString = '') then
                msg('#Preencha Número DI/DSI/DSA, Dt Registro, Código Exportador, UF, Local, Data, N. Adição e Cód Fabricante.',0)
        end;

        altera(nil,t1, 'tbnfitem');
        t1.Next;
        if t1.Eof then close;

end;

procedure Tfsistema.tabplanalmed_Execute(Sender: TObject);
var
ini:tinifile;
begin

        if page = 'tabplanalmed' then begin
           planalbuttom.SetFocus;
           caption := 'Dados do pedido';
           btnsair.hide;

          Ini := TInifile.Create(conf_local);
          pm1.Text := Ini.Readstring('planalmed', 'pm1', '15 DIAS');
          pm2.Text := Ini.Readstring('planalmed', 'pm2', '28 DIAS');
          pm3.Text := Ini.Readstring('planalmed', 'pm3', '10 DIAS');
          pm4.Text := Ini.Readstring('planalmed', 'pm4', '12 MESES');
          pm6.Text := Ini.Readstring('planalmed', 'pm6', '');
          ini.free;

           if fpedido <> nil then begin

              if fpedido.evendedor.Text <> '' then
                 pm6.Text := fpedido.evendedor.Text;

              if fpedido.CFPgto.Text <> '' then
                 pm2.Text := fpedido.CFPgto.Text;
           end;
           sqlpub := nil;

          if fileexists(substitui(servpath+'imagem\planalbc.txt','/','\')) then
             try
                pm5.Lines.LoadFromFile(substitui(servpath+'imagem\planalbc.txt','/','\'));
             except end;

          if fileexists(servpath+'imagem\planalbc.txt') then
             try
                pm7.Lines.LoadFromFile(servpath+'imagem\planalr.txt');
             except end;

          if fileexists(servpath+'imagem\planal8.txt') then
             try
                pm8.Lines.LoadFromFile(servpath+'imagem\planal8.txt');
             except end;

          if fileexists(servpath+'imagem\planal9.txt') then
             try
                pm9.Lines.LoadFromFile(servpath+'imagem\planal9.txt');
             except end;


             //bonter
          if (responsavel= '07.682.283/0001-48') and (fipedido.tb.FieldByName('acrescimo').AsFloat >0) then begin
             pm8.Lines.Clear;
             pm9.Lines.Clear;
             pm8.Lines.Add('Frete');
             pm9.Lines.Add(format('%n',[fipedido.tb.FieldByName('acrescimo').AsFloat]));
          end else begin
             //pm8.Lines.Clear;
             //pm9.Lines.Clear;
          end;

          if responsavel = '07.153.037/0001-07' then
             Label46.Caption := 'Faturam. Mínimo: ';

          keypreview := false;
       end;

end;

procedure Tfsistema.planalbuttomClick(Sender: TObject);
var
ini:tinifile;
begin
                                  
              Ini := TInifile.Create(conf_local);
              Ini.WriteString('planalmed', 'pm1', pm1.Text);
              Ini.WriteString('planalmed', 'pm2', pm2.Text);
              Ini.WriteString('planalmed', 'pm3', pm3.Text);
              Ini.WriteString('planalmed', 'pm4', pm4.Text);
              Ini.WriteString('planalmed', 'pm6', pm6.Text);
              ini.Free;

              try
                pm5.Lines.SaveToFile(substitui(servpath+'imagem\planalbc.txt','/','\'));
              except end;

              try
                pm7.Lines.SaveToFile(substitui(servpath+'imagem\planalr.txt','/','\'));
              except end;

              try
                pm8.Lines.SaveToFile(servpath+'imagem\planal8.txt');
              except end;

              try
                pm9.Lines.SaveToFile(servpath+'imagem\planal9.txt');
              except end;


          if (rfabrica.ItemIndex = 1) or
             ((responsavel = '07.153.037/0001-07') and(fipedido.tb['modo']<>'O')) then begin

                if rfabrica.ItemIndex = 0 then
                   fipedido.pm2.Caption := pm2.text
                else begin
                   fipedido.RLLabel95.Top := fipedido.RLLabel94.Top;
                   fipedido.pm3.Top := fipedido.RLLabel95.Top;
                   fipedido.pm2.Destroy;
                   fipedido.RLLabel94.Destroy;
                   fipedido.RLDBText47.destroy;
                   fipedido.RLDBText33.destroy;
                   fipedido.RLDBText58.destroy;
                   fipedido.RLDBText32.destroy;
                   fipedido.RLLabel84.destroy;
                   fipedido.RLLabel18.destroy;
                   fipedido.RLLabel20.destroy;

                end;


                fipedido.RLLabel99.destroy;
                fipedido.pm4.destroy;
                fipedido.pm1.Caption := pm1.Text;
                fipedido.RLLabel95.Caption := 'Frete';
                fipedido.pm3.Caption :=pm10.Items[pm10.itemindex];
              //bonter
              if (responsavel= '07.682.283/0001-48') and (fipedido.tb.FieldByName('acrescimo').AsFloat >0) then begin
                 fipedido.pm8.Lines.Add('Frete/Acres');
                 fipedido.pm9.Lines.Add(format('%n',[fipedido.tb.FieldByName('acrescimo').AsFloat]));
              end;





           end else begin


               if rimp.Checked then
                 fipedido.pm5.Lines := pm5.Lines;

               fipedido.pm5.Lines.Add(' ');
               fipedido.pm5.Lines.Add('             '+pm6.Text);
               fipedido.pm5.Lines.Add('         Depto Comercial/Vendas');
               fipedido.pm7.Lines.Clear;
               fipedido.pm7.Lines.Add(pm7.Text);
               fipedido.pm1.Caption := pm1.Text;
               fipedido.pm2.Caption := pm2.Text;
               fipedido.pm3.Caption := pm3.Text;
               fipedido.pm4.Caption := pm4.Text;
               fipedido.pm8.Lines.Add('Frete:');
               fipedido.pm9.Lines.Add(pm10.Items[pm10.itemindex]);


              //unividros
              if (responsavel= '07.682.283/0001-48') and (fipedido.tb.FieldByName('acrescimo').AsFloat >0) then begin
                 fipedido.pm8.Lines.Add('Frete/Acres');
                 fipedido.pm9.Lines.Add(format('%n',[fipedido.tb.FieldByName('acrescimo').AsFloat]));
              end;

            end;
               fipedido.pm8.Lines.Add(pm8.Text);
               fipedido.pm9.Lines.Add(pm9.Text);




           //unividro
           if responsavel = '07.153.037/0001-07' then begin
              if fipedido.RLLabel99 <> nil then
              fipedido.RLLabel99.Caption := 'Faturam. Mínimo: ';
              fipedido.im10.AutoSize := true;
              fipedido.im10.Left := 232;
              fipedido.lproposta.Font.Size :=20;
              fipedido.lproposta.Font.Color := clblack;
              fipedido.lproposta.Height := fipedido.lproposta.Height +15;

              if rfabrica.ItemIndex = 1 then  fipedido.pcli.destroy;

              if fipedido.tb['modo']<>'O' then begin

                 fipedido.im10.Destroy;
                 fipedido.pm7.Destroy;
              end;
           end;


           vf:=true;
           close;




end;

procedure Tfsistema.encnpjKeyPress(Sender: TObject; var Key: Char);
begin
        if not (key in ['0'..'9', #8,#13]) then abort;
end;

procedure Tfsistema.encnpjExit(Sender: TObject);
begin
         if encnpj.Modified then
             valcnpj(encnpj,nil,t1,'cnpj');

end;

procedure Tfsistema.btclinfClick(Sender: TObject);
begin
        if (encnpj.Text = '') or
          //(enie.Text = '')or
          (enddd.Text = '')or
          (efone.Text = '')or
          (encep.Text = '')or
          (enendereco.Text = '') or
          //(ennumero.Text = '')or
          (enbairro.Text = '')or
          (encidade.Text = '')or
          (enibge.Text = '')or
          (enuf.Text = '') then msg('#Preencha todos os com o *.',0);

        valcnpj(encnpj,nil,t1,'cnpj');

        if ((enie.text <> 'ISENTO') and(enie.text <> '')) and
           (Length(formatnumeric(encnpj.text))=14) and
           (enuf.text <>'TO') and(enuf.text <>'RO') and (enuf.text <>'PE') and
           (ChkInscEstadual(formatnumeric(enie.text),enuf.Text) = false) then
           msg('#Esta inscrição não é válida para "'+enuf.Text+'"!!!',0);


         selecione('update tbcliente set '+
                      'cnpj = '+quotedstr(t1.fieldbyname('cnpj').AsString) +
                      ', IE = '+quotedstr(t1.fieldbyname('IE').AsString) +
                      ', ddd = '+quotedstr(t1.fieldbyname('ddd').AsString) +
                      ', fone = '+quotedstr(t1.fieldbyname('fone').AsString) +
                      ', municipion = '+quotedstr(t1.fieldbyname('municipion').AsString) +
                      ', cep = '+quotedstr(t1.fieldbyname('cep').AsString) +
                      ', Endereco = '+quotedstr(t1.fieldbyname('Endereco').AsString) +
                      ', numero = '+quotedstr(t1.fieldbyname('numero').AsString) +
                      ', complemento = '+quotedstr(t1.fieldbyname('complemento').AsString) +
                      ', Bairro = '+quotedstr(t1.fieldbyname('Bairro').AsString) +
                      ', municipio = '+quotedstr(t1.fieldbyname('municipio').AsString) +
                      ', UF = '+quotedstr(t1.fieldbyname('UF').AsString)+
                       ' where codigo = ' + quotedstr(controle));

         selecione('update tbnf set '+
                      'cnpj = '+quotedstr(t1.fieldbyname('cnpj').AsString) +
                      ', IE = '+quotedstr(t1.fieldbyname('IE').AsString) +
                      ', fone = '+quotedstr(t1.fieldbyname('fone').AsString) +
                      ', cep = '+quotedstr(t1.fieldbyname('cep').AsString) +
                      ', Endereco = '+quotedstr(t1.fieldbyname('Endereco').AsString+ ' '+
                                                t1.fieldbyname('numero').AsString+' '+
                                                t1.fieldbyname('complemento').AsString) +
                      ', Bairro = '+quotedstr(t1.fieldbyname('Bairro').AsString) +
                      ', municipio = '+quotedstr(t1.fieldbyname('municipio').AsString) +
                      ', UF = '+quotedstr(t1.fieldbyname('UF').AsString)+
                       ' where codigo = ' + quotedstr(controle));
        vf:=true;
        close;   

end;

procedure Tfsistema.encepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (key = 13) and (encep.Modified) then
           buscacep(nil,t1,encep.text,'');

end;

procedure Tfsistema.clinf_Execute(Sender: TObject);
begin
       if page = 'clinf' then begin
          caption := 'Dados do cliente';

          btnsair.Parent := clinf;
          btnsair.Left := 587;
          btnsair.top := btclinf.Top;
          

          with t1 do begin
               sql.Clear;
               sql.Add('select * from tbcliente where codigo = ' + quotedstr(controle));
               open;
               d1.DataSet :=t1;
          end;

          encnpj.SetFocus;


          encnpj.datasource := d1;
          enie.datasource := d1;
          enddd.datasource := d1;
          efone.datasource := d1;
          encep.datasource := d1;
          enendereco.datasource := d1;
          ennumero.datasource := d1;
          enbairro.datasource := d1;
          encidade.datasource := d1;
          enuf.datasource := d1;
          encomplemento.datasource := d1;
          enibge.datasource := d1;
          enemail.datasource := d1;

          StaticText14.Caption :=  StaticText14.Caption +'  -  '+ t1.fieldbyname('nome').AsString;
      end;
end;

procedure Tfsistema.Label106Click(Sender: TObject);
begin
      listagem('municipio',copy(encidade.Text,1,10),'',23,0);

      if fdm.sg.Active then begin
         t1.Edit;
         t1['municipion'] := fdm.sg.fieldbyname('municipion').AsString;
         t1['municipio'] := fdm.sg.fieldbyname('municipio').AsString;
      end;

      fechatg;

end;

procedure Tfsistema.qinventarioPageEnding(Sender: TObject);
begin
         if (qinventario.LastPageNumber +1) >= tb1.RecordCount div 48 then
            RLLabel25.Caption := 'Total Geral'
         else
            RLLabel25.Caption := 'A Transportar';

end;

procedure Tfsistema.RLBand9AfterPrint(Sender: TObject);
begin
        totinventario := totinventario + tb1.fieldbyname('total').AsFloat;
        totpagina := totpagina + tb1.fieldbyname('total').AsFloat;

        linv1.Caption := format('%n',[totpagina]);
        linv2.Caption := format('%n',[totinventario]);
end;

procedure Tfsistema.ginvClick(Sender: TObject);
begin
      gradeinv.Visible := ginv.ItemIndex =1;
end;

procedure Tfsistema.tabcorrecal_Execute(Sender: TObject);
begin
            if page = 'tabcorrecal' then begin
               btnsair.Parent := Tabcorrecal;
               btnsair.Left := 317;
               btnsair.top := 341;
            end;

end;

procedure Tfsistema.Button6Click(Sender: TObject);
begin                    
        fdm.tbempresa.Open;
        l1.Caption := uppercase(fdm.tbempresa.fieldbyname('municipio').AsString+ ', '+
                      formatdatetime('dd',date) +
                      ' de '+ formatdatetime('mmmm',date) +
                      ' de '+ formatdatetime('yyyy',date))+
                      '      Carimbo Padronizado do CNPJ';

        ec1_.Caption := ec1.Text;
        ec2_.Caption := ec2.Text;
        ec3_.Caption := ec3.Text;
        ec4_.Caption := ec4.Text;
        ec5_.Caption := ec5.Text;
        ec6_.Caption := ec6.Text;

        rl1.Lines.Clear;
        if not rc1.Checked then rl1.Lines.Add(' ') else rl1.Lines.Add('X');
        if not rc2.Checked then rl1.Lines.Add(' ') else rl1.Lines.Add('X');
        if not rc3.Checked then rl1.Lines.Add(' ') else rl1.Lines.Add('X');
        if not rc4.Checked then rl1.Lines.Add(' ') else rl1.Lines.Add('X');
        if not rc5.Checked then rl1.Lines.Add(' ') else rl1.Lines.Add('X');
        if not rc6.Checked then rl1.Lines.Add(' ') else rl1.Lines.Add('X');
        if not rc7.Checked then rl1.Lines.Add(' ') else rl1.Lines.Add('X');
        if not rc8.Checked then rl1.Lines.Add(' ') else rl1.Lines.Add('X');
        if not rc9.Checked then rl1.Lines.Add(' ') else rl1.Lines.Add('X');
        if not rc10.Checked then rl1.Lines.Add(' ') else rl1.Lines.Add('X');
        if not rc11.Checked then rl1.Lines.Add(' ') else rl1.Lines.Add('X');
        if not rc12.Checked then rl1.Lines.Add(' ') else rl1.Lines.Add('X');

        rl2.Lines.Clear;
        if not rc13.Checked then rl2.Lines.Add(' ') else rl2.Lines.Add('X');
        if not rc14.Checked then rl2.Lines.Add(' ') else rl2.Lines.Add('X');
        if not rc15.Checked then rl2.Lines.Add(' ') else rl2.Lines.Add('X');
        if not rc16.Checked then rl2.Lines.Add(' ') else rl2.Lines.Add('X');
        if not rc17.Checked then rl2.Lines.Add(' ') else rl2.Lines.Add('X');
        if not rc18.Checked then rl2.Lines.Add(' ') else rl2.Lines.Add('X');
        if not rc19.Checked then rl2.Lines.Add(' ') else rl2.Lines.Add('X');
        if not rc20.Checked then rl2.Lines.Add(' ') else rl2.Lines.Add('X');
        if not rc21.Checked then rl2.Lines.Add(' ') else rl2.Lines.Add('X');
        if not rc22.Checked then rl2.Lines.Add(' ') else rl2.Lines.Add('X');
        if not rc23.Checked then rl2.Lines.Add(' ') else rl2.Lines.Add('X');
        if not rc24.Checked then rl2.Lines.Add(' ') else rl2.Lines.Add('X');

        rl3.Lines.Clear;        
        if not rc25.Checked then rl3.Lines.Add(' ') else rl3.Lines.Add('X');
        if not rc26.Checked then rl3.Lines.Add(' ') else rl3.Lines.Add('X');
        if not rc27.Checked then rl3.Lines.Add(' ') else rl3.Lines.Add('X');
        if not rc28.Checked then rl3.Lines.Add(' ') else rl3.Lines.Add('X');
        if not rc29.Checked then rl3.Lines.Add(' ') else rl3.Lines.Add('X');
        if not rc30.Checked then rl3.Lines.Add(' ') else rl3.Lines.Add('X');
        if not rc31.Checked then rl3.Lines.Add(' ') else rl3.Lines.Add('X');
        if not rc32.Checked then rl3.Lines.Add(' ') else rl3.Lines.Add('X');
        if not rc33.Checked then rl3.Lines.Add(' ') else rl3.Lines.Add('X');
        if not rc34.Checked then rl3.Lines.Add(' ') else rl3.Lines.Add('X');
        if not rc35.Checked then rl3.Lines.Add(' ') else rl3.Lines.Add('X');
        if not rc999.Checked then rl3.Lines.Add(' ') else rl3.Lines.Add('X');

        rl4.Lines.Clear;
        if ec7.Text = '' then rl4.Lines.Add(' ') else rl4.Lines.Add(ec7.Text);
        if ec9.Text = '' then rl4.Lines.Add(' ') else rl4.Lines.Add(ec9.Text);
        if ec11.Text = '' then rl4.Lines.Add(' ') else rl4.Lines.Add(ec11.Text);
        if ec13.Text = '' then rl4.Lines.Add(' ') else rl4.Lines.Add(ec13.Text);
        if ec15.Text = '' then rl4.Lines.Add(' ') else rl4.Lines.Add(ec15.Text);

        rl5.Lines.Clear;
        if ec8.Text = '' then rl5.Lines.Add(' ') else rl5.Lines.Add(ec8.Text);
        if ec10.Text = '' then rl5.Lines.Add(' ') else rl5.Lines.Add(ec10.Text);
        if ec12.Text = '' then rl5.Lines.Add(' ') else rl5.Lines.Add(ec12.Text);
        if ec14.Text = '' then rl5.Lines.Add(' ') else rl5.Lines.Add(ec14.Text);
        if ec16.Text = '' then rl5.Lines.Add(' ') else rl5.Lines.Add(ec16.Text);

        ecdt.Caption := fdm.tbempresa.fieldbyname('municipio').AsString+ ', '+  datetostr(now);
        lcempresa.Caption :=  uppercase(msgi('Digite o nome da empresa(cliente)',0));
        fdm.tbempresa.close;
        correcao.PreviewModal;

end;

procedure Tfsistema.filenatuaClick(Sender: TObject);
begin
      fdm.tg.Close;
      close;
end;




procedure Tfsistema.atuafiliais_Execute(Sender: TObject);
begin
      if page = 'atuafiliais' then begin
           vf:=false;
           with fdm.sg do begin
                 close;
                 sql.Clear;
                 sql.Add('select "S" as atualiza, nome, ip as endereco, banco, usuario, senha from tbfiliais order by nome');
                 fdm.tg.Close;
                 fdm.tg.Open;
                 gradefilial.DataSource := fdm.dg;
            end;
            rfilial.Visible := controle2 = '';
            btnsair.visible := false;
      end;

end;

procedure Tfsistema.filatuaClick(Sender: TObject);
begin
      vf:=true;
      codloc := inttostr(rfilial.ItemIndex+1); 
      close;
end;

procedure Tfsistema.filicadClick(Sender: TObject);
begin
            cadp ('tbfiliais', 'select chave, nome, ip,banco, usuario, senha from tbfiliais', 'MANUTENÇÃO DE FILIAIS',
                  'nome','ip',
                  '','','',
                  '','','',
                  '','','',
                  '',
                  '',
                  '',
                  '',
                  1,0);
            atuafiliais_Execute(self);
end;

procedure Tfsistema.devconf_Execute(Sender: TObject);
var
nometabela,fabricante:string;
desconto,devolvidoqtd,devolvidovr,qtd, total:double;

begin

     if page = 'devconf' then begin
        caption := 'Parâmetros/Devoluções';

          btnsair.Parent := pdev;
          btnsair.Left := 503;
          btnsair.top := 69;
          fechatg;

        fdm.tbconfig.Open;
        with t1 do   begin
             sql.Clear;
             sql.Add('select data, tipovenda, total, devolucao,descontoreal, totalitem, codigovendedor '+
                     'from tbpedido where chave = '+ quotedstr(controle));
             open;

             ltddata.Caption := fieldbyname('data').AsString;

              if  fieldbyname('tipovenda').AsString = 'V' then begin
                  ltdtipovenda.Caption := 'VAREJO' ;
                  permitido := fdm.tbconfig.fieldbyname('percentvendanormal').AsFloat;

              end else if  fieldbyname('tipovenda').AsString = 'A' then begin
                  ltdtipovenda.Caption := 'ATACADO' ;
                  permitido := fdm.tbconfig.fieldbyname('percentvendanormal').AsFloat;

              end else if  fieldbyname('tipovenda').AsString = '3' then begin
                  ltdtipovenda.Caption := 'ATACADO1' ;
                  permitido := fdm.tbconfig.fieldbyname('percentvendanormal').AsFloat;

              end else if  fieldbyname('tipovenda').AsString = 'P' then begin
                  ltdtipovenda.Caption := 'PROMOÇÃO';
                  permitido := fdm.tbconfig.fieldbyname('percentvendapromocional').AsFloat;

              end else if  fieldbyname('tipovenda').AsString = 'C' then  begin
                  ltdtipovenda.Caption := 'A PREÇO CUSTO';
                  permitido := fdm.tbconfig.fieldbyname('percentvendanormal').AsFloat;
              end;

              fdm.tbconfig.Close;
              ltdvalor.Caption :=  format('%n',[fieldbyname('total').Asfloat+  desconto+
                                                fieldbyname('devolucao').Asfloat]);
              ltqtd.Caption :=  floattostr(fieldbyname('totalitem').Asfloat);

              if fieldbyname('codigovendedor').asinteger > 0 then begin
                 ltdvendedor.Caption := fieldbyname('codigovendedor').AsString;
                 selecione('select nome from tbfuncionario where codigo = '+ quotedstr(ltdvendedor.Caption));
                 devvendedor.Caption := sqlpub.fieldbyname('nome').AsString;
              end;

              ltdpermitido.Caption := format('%n',[permitido]) + '%';

              sql.Clear;
              sql.Add('select '+
                      'tbpedidoitem.codigo, '+
                      'tbproduto.descricao, '+
                      'tbproduto.fabricante, '+
                      'tbpedidoitem.qtd, '+
                      'tbpedidoitem.chave, '+
                      'tbpedidoitem.devolvido, '+
                      'tbpedidoitem.defeito, '+

                      'if(tbpedidoitem.descontoreal is not null, '+
                          'tbpedidoitem.vrunit - tbpedidoitem.descontoreal,'+
                           'tbpedidoitem.vrunit ) as vrunit '+

                           ' from tbpedidoitem, tbproduto where qtd > 0 and '+
                           'tbpedidoitem.codigo = tbproduto.codigo '+
                           ' and tbpedidoitem.link = ' + quotedstr(controle)+
                           ' order by tbpedidoitem.codigo');
              open;
              ds1.DataSet := tbtd;
              gradedev.DataSource := ds1;

         tbtd.close;
         tbtd.CreateDataSet;
         tbtd.Open;
         qtd:=0;
         total:=0;
         devolvidoqtd:=0;
         devolvidovr:=0;

         while not eof do begin

               if fieldbyname('fabricante').asstring <> '' then
                  fabricante :=   fieldbyname('fabricante').asstring + ' - '
               else fabricante :='';

               tbtd.Insert;
               tbtd['codigo'] := fieldbyname('codigo').asstring;
               tbtd['descricao'] := fabricante  + fieldbyname('descricao').asstring;
               tbtd['qtd'] := fieldbyname('qtd').asfloat;
               if fieldbyname('defeito').asstring <> 'S' then begin
                  tbtd['devolvido'] := fieldbyname('devolvido').asfloat;
                  tbtd['defeito'] := 'C';
               end else tbtd['defeito'] := fieldbyname('defeito').asstring;

               tbtd['vrunit'] := fieldbyname('vrunit').asfloat;

               tbtd['chave'] := fieldbyname('chave').asinteger;

               qtd := qtd +   fieldbyname('qtd').asfloat ;
               total := total +  tbtd.fieldbyname('vrunit').asfloat *
                                   fieldbyname('qtd').asfloat;
               // se nao for devolvido por defeito
               if fieldbyname('defeito').asstring <> 'S' then begin
                  devolvidoqtd := devolvidoqtd +  fieldbyname('devolvido').asfloat ;
                  devolvidovr := devolvidovr +  fieldbyname('devolvido').asfloat *
                                                tbtd.fieldbyname('vrunit').asfloat;
               end;

               tbtd.Post;
               Next;
         end;
           close;
       end;

        fdm.tbconfig.Open;
         //percent devolucao em valor
         if (devolvidovr > 0) and (fdm.tbconfig['percentdevolucao']='V')then begin
            ltddevolvido.Caption := format('%n',[devolvidovr])+  '  -  '+
                                   format('%n',[devolvidovr * 100 / total])+'%';
            devolvido := devolvidovr * 100 / total;

         //percent devolucao refere a quantidade
         end else if (devolvidovr > 0) and (fdm.tbconfig['percentdevolucao']='Q')then begin
            ltddevolvido.Caption := format('%n',[devolvidoqtd])+  '  -  '+
                                   format('%n',[devolvidoqtd * 100 / qtd])+'%';
            devolvido := devolvidoqtd * 100 / qtd ;
         end;
         fdm.tbconfig.close;

        //tbtd.AddIndex('codigo', 'codigo', []);
        tbtd.IndexFieldNames := 'codigo';
//        somatdExecute(self);
        elocalizar.SetFocus;
     end;

end;

procedure Tfsistema.btdevcClick(Sender: TObject);
begin

          if devolver = 0 then msg('#Não há quantidade a ser devolvida.',0);
          
          if msg('Confirma a devolução dos itens? ',2)= false then abort;

          if (devolvido + devolver) > permitido then
              senhagerencial('DEVOLUÇÃO ALÉM DO PERMITIDO',
                             'DIGITE A SENHA GERENCIAL PARA LIBERAR!',
                             'LIBERAR DEVOLUÇÃO ALÉM DO MÁXIMO PERMITIDO!');

          if controle2='D' then begin
             selecione('select nome,codigo from tbfuncionario where codigo = '+ quotedstr(ltdvendedor.Caption));
             fpedido.btneditargrupoClick(self);
             fpedido.venda.edit;
             fpedido.venda['vendedor'] := sqlpub.fieldbyname('nome').asstring;
             fpedido.venda['codigovendedor'] := sqlpub.fieldbyname('codigo').Asinteger;
             sqlpub := nil;
          end;


         tbtd.first;
         tbtd.DisableControls;

         while not tbtd.eof do begin

              if tbtd.fieldbyname('devolver').AsFloat > 0 then begin

                 selecione('update tbpedidoitem set defeito = '+ quotedstr(tbtd.fieldbyname('defeito').Asstring)+
                           ' , devolvido =   if (devolvido is not null, devolvido +'+
                           realdblstr(tbtd.fieldbyname('devolver').AsFloat)+ ','+
                           realdblstr(tbtd.fieldbyname('devolver').AsFloat)+
                           ') where chave = '+quotedstr(tbtd.fieldbyname('chave').asstring));

                fpedido.btnnovoDclick(self);
                fpedido.tbdevolucao['codigo'] := tbtd.fieldbyname('codigo').asstring;

                with fdm.sg do begin
                     sql.clear;
                     sql.add('select "P" as p, tbproduto.* from tbproduto where codigo = '+
                              quotedstr(tbtd.fieldbyname('codigo').asstring));
                     open;
                end;

                fpedido.preencherprodutoexecute(self);
                fpedido.tbitem['qtd'] := tbtd.fieldbyname('devolver').asfloat;
                fpedido.tbitem['vrunit'] := tbtd.fieldbyname('vrunit').asfloat;
                fpedido.tbitem['defeito'] := tbtd.fieldbyname('defeito').asstring;
                fpedido.tbitem['chavedevolucao'] :=tbtd.fieldbyname('chave').AsInteger;
                fpedido.totalitemExecute(self);
                fpedido.btngravarDClick(self);

              end;

               tbtd.Next;
         end;

         tbtd.EnableControls;
         close;

end;

procedure Tfsistema.somatdExecute(Sender: TObject);
var
loc :string;
qtd,total, devolvidovr,devolvidoqtd:real;
begin

         loc := tbtd.fieldbyname('codigo').AsString;
         tbtd.first;
         tbtd.DisableControls;
         qtd :=0;
         total:=0;
         devolvidovr:=0;
         devolvidoqtd:=0;

         while not tbtd.eof do begin
//            if tbtd['defeito'] = 'N' then begin
               devolvidoqtd := devolvidoqtd +   tbtd.fieldbyname('devolver').asfloat ;
               qtd := qtd +  tbtd.fieldbyname('qtd').asfloat ;
               devolvidovr := devolvidovr +  tbtd.fieldbyname('vrunit').asfloat *
                                   tbtd.fieldbyname('devolver').asfloat;
               total := total +  tbtd.fieldbyname('vrunit').asfloat *
                                   tbtd.fieldbyname('qtd').asfloat;
//            end;                       

               tbtd.Next;
         end;


         tbtd.EnableControls;
         tbtd.Locate('codigo',loc,[]);


                fdm.tbconfig.open;
                 //percent devolucao em valor
                 if (qtd > 0) and (fdm.tbconfig['percentdevolucao']='V')then begin
                    ltddevatual.Caption := format('%n',[devolvidovr])+  '  -  '+
                                           format('%n',[devolvidovr * 100 / total])+'%';
                    devolver :=devolvidovr * 100 / total ;

                 //percent devolucao ee qtd
                 end else if (qtd > 0) and (fdm.tbconfig['percentdevolucao']='Q')then begin
                    ltddevatual.Caption := format('%n',[devolvidoqtd])+  '  -  '+
                                           format('%n',[devolvidoqtd * 100 / qtd])+'%';
                    devolver := devolvidoqtd * 100 / qtd  ;
                 end;
                 fdm.tbconfig.Close;


end;

procedure Tfsistema.lconsigClick(Sender: TObject);
var
codigo:string;

begin
                  codigo := msgi('Digite (só números): O Código, ou o CNPJ/CPF ou o Fone, ou as iniciais do nome para pesquisa',0);
                  listagem(achacp('nome',codigo),codigo,'',nmodulo,0);

                  if fdm.sg.Active then begin
                     lcons1.Caption := formatfloat('000000',fdm.sg.fieldbyname('codigo').AsFloat) + '  -  '+
                                       fdm.sg.fieldbyname('nome').AsString + '   -   (' +
                                       fdm.sg.fieldbyname('nomecurto').AsString+')';

                     lcons2.Caption := ' End.: '+fdm.sg.fieldbyname('Endereco').AsString + ' - '+
                                     fdm.sg.fieldbyname('numero').AsString + '   '+
                                     fdm.sg.fieldbyname('Complemento').AsString + ' - '+
                                     fdm.sg.fieldbyname('bairro').AsString + ' - '+
                                     '  CEP: '+ fdm.sg.fieldbyname('cep').AsString   + ' - '+
                                     fdm.sg.fieldbyname('municipio').AsString+  ' - '+
                                     fdm.sg.fieldbyname('uf').AsString ;

                     lcons3.Caption := ' Fones: (' +fdm.sg.fieldbyname('ddd').AsString +') '+
                                        fdm.sg.fieldbyname('fone').AsString + '   -   '+
                                        fdm.sg.fieldbyname('fone2').AsString + '   -   '+
                                        fdm.sg.fieldbyname('fax').AsString+ '   -   E-Mail'+
                                        fdm.sg.fieldbyname('email').AsString;

                     controle2 := fdm.sg.fieldbyname('codigo').AsString;

                  end;

                  fechatg;
                  consigselExecute(self);
                  consigp.SetFocus;

end;

procedure Tfsistema.consigselExecute(Sender: TObject);
var
venc:string;
begin

        if controle3 <> '' then  venc := ' "S" as Vencido, ' else
        venc := ' if(To_days(now()) - To_days(data) >= '+floattostr(qtdant)+', "S","N") as Vencido,';

        with t1 do begin
             sql.Clear;
             sql.Add('select chave, '+venc+' link, data,datadevolucao, codigo, descricao,fabricante, '+
                     'vendal, qtd,  custol, custo, vrunit, qtd*vrunit as total, custol*vrunit as totdev, codigocliente from  '+tbconsignada+
                     ' where link <= -1 and codigocliente = '+quotedstr(controle2)+sqlempresa(1,1,'')+'order by chave desc');
             open;
        end;

        totconsig;

end;

procedure Tfsistema.consignada_Execute(Sender: TObject);
var
ini:tinifile;
begin

      if page = 'consignada' then begin

          if controle3 = '' then begin//cliente
             tbconsignada := 'vendaitem';
             nmodulo :=4;


          end else begin//fornecedor
             tbconsignada := 'tbeitem';
             nmodulo :=7;
             btconsigvenda.Caption := '&Gerar compra';
          end;

          btconsigvenda.Visible := controle = 'V';

          Ini := TIniFile.Create(conf_global);
          doc:= Ini.ReadString('consig', 'consig' , 'vrvenda');
          ini.free;


         if resolucao >700 then Height := 700;
         btnsair.Hide;
         selecione('select prazovendaconsignada,VCinterno, VCBarras, VCOriginal from tbconfig');
         qtdant := sqlpub.fieldbyname('prazovendaconsignada').AsFloat;
         VCinterno   := sqlpub['VCinterno'] = 'S';
         VCBarras    := sqlpub['VCBarras'] = 'S';
         VCOriginal:= sqlpub['VCOriginal'] = 'S';

         gconsigp.DataSource :=d1;
         d1.DataSet := t1;

        // gconsigd.DataSource :=d2;
        // d2.DataSet := t2;

         lconsigclick(self);
         selecione('select nome from tbfuncionario where (classe = "V" or classe ="O") and (flag <> "D" or flag is null) order by nome');

         while not sqlpub.Eof  do begin
            consvendedor.Items.Add(sqlpub.FieldByName('nome').AsString);
            sqlpub.Next;
         end;
         sqlpub := nil;
         t1.IndexFieldNames := 'chave';
      end;


end;

procedure Tfsistema.f11Execute(Sender: TObject);
begin
     if page = 'consignada' then lconsigClick(self);
end;

procedure Tfsistema.consigpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  codInterno:string;
begin

      if (key = 13) and (consigp.Text <> '')  then begin
                     
          if controle2 = '' then msg('#Escolha o cliente.',0);
          if (consvendedor.Text = '') and (consiggp.ItemIndex=0) then msg('#Escolha o vendedor.',0);

         if consiggp.ItemIndex = 0 then prodconsig(-1,consigp.Text)
                             else begin

                             if (responsavel = 'ARISTEM') and (strisinteger(consigp.Text)) then
                                codInterno := formatfloat('000000',strtofloat(formatnumeric(consigp.Text)))
                             else codInterno := consigp.Text;

                                        t1.First;

                                        if t1.Locate('codigo',codInterno,[]) then consdevitem
                                        else begin
                                             listagem('descricao',consigp.Text,'',5,0);
                                             if (fdm.sg.Active) and
                                                (t1.Locate('codigo',fdm.sg.fieldbyname('codigo').AsString ,[])) then consdevitem;
                                             fechatg;
                                        end;
                             end;

         consigp.clear;
         consigp.SetFocus;
         if consiggp.ItemIndex = 0 then t1.first;
      end;
      
end;


procedure Tfsistema.btconsapagarClick(Sender: TObject);
begin
        abortaacao(nil,T1,'chave','','','','',0);
        if not msg('',1) then abort;
        
        if responsavel = 'ARISTEM' then senhagerencial('CONSIGNADA','DIGITE A SENHA GERENCIAL:','APAGAR ITEM!');
        selecione('delete from '+tbconsignada+' where chave = '+ quotedstr(t1.FieldByName('chave').AsString));

        GALTERA('2', t1.FieldByName('chave').AsString, 'd');

        alimentaestoque(t1.FieldByName('codigo').AsString , t1.FieldByName('qtd').AsFloat, '1',0);
        consigselExecute(self);
end;

procedure Tfsistema.SpeedButton5Click(Sender: TObject);
var
vr:string;
ini:tinifile;
begin
           senhagerencial('CONSIGNADA','DIGITE A SENHA GERENCIAL:','ESCOLHER VALOR DE VENDA');
           codloc :='2';
           vr := msgi('Usar o valor:'+#13+#13+'1=Varejo   '+#13+'2=Atacado '+#13+'3=Atacado1',2);

           if not strtoint(vr) in [1..3] then abort;

           if      vr = '1' then vr := 'vrvenda'
           else if vr = '2' then vr := 'vratacado'
           else if vr = '3' then vr := 'valor3';

           Ini := TIniFile.Create(conf_global);
           Ini.WriteString('consig', 'consig', vr);
           ini.free;
           doc :=vr;

end;

procedure Tfsistema.gradedevDblClick(Sender: TObject);
var
st:string;
begin

            codloc := '1';
            st := msgi('Digite a quantidade a ser devolvida.', 2);

            if (strtofloat(st)+tbtd.FieldByName('devolvido').AsFloat) >
               tbtd.FieldByName('qtd').AsFloat then msg('#A quantidade devolvida não pode ser maior que a compra!',0);

            tbtd.edit;
            tbtd['devolver'] := st;
            tbtd.Post;

            somatdexecute(self);



end;

procedure Tfsistema.gradedevTitleClick(Column: TColumn);
begin
      indexar(column,tb1,nil,elocalizar,llocdev);
end;

procedure Tfsistema.consiggpClick(Sender: TObject);
begin
      consigp.SetFocus;

      if consiggp.ItemIndex = 1 then begin
         t1.IndexFieldNames := 'codigo;qtd';
         t1.SortType := stDescending;
      end else t1.IndexFieldNames := 'chave';

end;

procedure Tfsistema.btconsigimpClick(Sender: TObject);
var
lst:tstringlist;
imp :string;
begin

        codloc := '1';
        imp := msgi('Imprimir:'+#13+#13+'1=Visualiza'+#13+'2=Imprime ',2);
        if not strtoint(imp) in[1..2] then imp := '1';

        filtrar(gconsigp,nil,t1,'chave');

        if imp = '1' then begin
              lst := tstringlist.Create;
              lst.Add(' Cliente: '+lcons1.Caption);
              lst.Add(lcons2.Caption);
              lst.Add(lcons3.Caption);
              lst.SaveToFile('c:\rel.txt');
              lst.Free;

              filtrar(gconsigp,nil,t1,'chave');
              impgrade(nil,t1,d1,gconsigp,'CONSIG', 'LISTAGEM DE PRODUTOS EM CONSIGNAÇÃO', consigtotal.Caption,true);

        end else imptxt(t1,nil,nil,nil,nil,0);

        t1.Filtered := false;

end;

procedure Tfsistema.lvencdiaChange(Sender: TObject);
begin
                if lvencdia.Text = '' then
                   lvencdia.Text := '0';
                evencimento.Text := datetostr(date + lvencdia.Value);
                preencheExecute(self);

end;

procedure Tfsistema.lvencdiaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then begin
           if lvencdia.Text = '' then
              lvencdia.Text := '0';
              evencimento.Text := datetostr(date + lvencdia.Value);
              preencheExecute(self);
        end;

end;

procedure Tfsistema.gconsigpDblClick(Sender: TObject);
var
st:string;
begin

        if (gconsigp.SelectedIndex = 1) or (gconsigp.SelectedIndex = 10) then begin

          t1.Filter   :='';
          codloc := t1.fieldbyname(gconsigp.SelectedField.FieldName).AsString;
          st := msgi('Filtrar:'+#13+#13+ 'Digite o(a) '+gconsigp.SelectedField.FieldName+' e tecle Enter.' ,0);
          if st='' then abort;
          t1.Filtered := false;
          t1.Filter   := gconsigp.SelectedField.FieldName +' = '+ quotedstr(formatdatetime('yyyy-mm-dd',strtodate(st)));
          showmessage(t1.Filter);
          t1.Filtered := true;

        end else consdevitem;
end;

procedure Tfsistema.gconsigpDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
      if (Column.FieldName = 'data') or (Column.FieldName = 'vencido')  then

        with gconsigp.Canvas do  begin

             if now() - t1.FieldByName('data').AsDateTime >=qtdant then Font.Color :=  clred
                                  else Font.Color := clblack;
             FillRect(Rect);
             TextOut(Rect.Left+2,Rect.Top+2,Column.Field.DisplayText);
        end;

end;

procedure Tfsistema.btconsigvendaClick(Sender: TObject);
var
item:boolean;
begin

      codloc := '';
      abortaacao(nil,T1,'chave','','','','',0);
      if not msg('Deseja gerar venda dos itens selecionados',2) then abort;

      item := false;
      t1.First;
      while not t1.Eof do begin

            if t1['vencido'] = 'S' then begin
               item :=true;
               if codloc = '' then codloc := ' where (chave = '+quotedstr(t1.Fieldbyname('chave').AsString)
               else      codloc := codloc +  ' or chave = '+quotedstr(t1.Fieldbyname('chave').AsString);
            end;
            t1.Next;

      end;
      t1.first;

      if item then codloc := codloc +  ')'; 

      if item = false then msg('#Não há item selecionado.',0);

      vf:=true;
      close;
end;

procedure Tfsistema.SpeedButton3Click(Sender: TObject);
begin
      if not msg('Deseja alterar a coluna "Venc" para sim',2) then abort;

      t1.First;
      while not t1.eof do begin
            t1.Edit;
            t1['vencido'] := 'S';
            t1.Next;
      end;
      t1.First;
end;

procedure Tfsistema.qentradaBeforePrint(Sender: TObject; var PrintIt: Boolean);

var st,ent,prazo,tipoconta,tb,cnpjie_:string;

begin
        tb := page;
        if tb='p' then        ent := 'PEDIDO'
        else if tb='df' then  ent := 'DEVOLUÇÃO'
        else if tb='' then    ent := 'ENTRADA'
        else if tb='mp' then  ent := 'ENTRADA MAT PRIMA';

        tmpapel(qentrada);

          fdm.tbempresa.open;
          if not fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\' +
             fdm.tbempresa.FieldByName('codigo').AsString + '.jpg')) then begin

             ltitulo1.Left :=0;
             er1.Left :=0;
             er2.Left :=0;
             er3.Left :=0;

             ltitulo1.Width := 715;
             er1.Width :=715;
             er2.Width :=715;
             er3.Width :=715;
          end else

          im1.Picture.LoadFromFile(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\' +
                                       fdm.tbempresa.FieldByName('codigo').AsString + '.jpg'));


           ltitulo1.Caption := fdm.tbempresa.fieldbyname('fantasia').AsString;
           eR1.Caption := fdm.tbempresa.fieldbyname('Endereco').AsString + ' - '+
                          fdm.tbempresa.fieldbyname('bairro').AsString + ' - '+
                          fdm.tbempresa.fieldbyname('numero').AsString + '   '+
                          fdm.tbempresa.fieldbyname('Complemento').AsString + ' - '+
                          fdm.tbempresa.fieldbyname('municipio').AsString;

         eR2.Caption := 'UF: ' + fdm.tbempresa.fieldbyname('uf').AsString + '  CEP: '+
                                fdm.tbempresa.fieldbyname('cep').AsString + '  Fone/Fax: (' +
                                fdm.tbempresa.fieldbyname('ddd').AsString +') '+
                                fdm.tbempresa.fieldbyname('fone1').AsString + '   -   '+
                                fdm.tbempresa.fieldbyname('fax').AsString;
         cnpjie_:= 'CNPJ: ' + fdm.tbempresa.fieldbyname('cnpj').AsString +
                      '  IE: '+ fdm.tbempresa.fieldbyname('ie').AsString + '  ';

         eR3.Caption :=cnpjie_ +'E-Mail: ' + fdm.tbempresa.fieldbyname('email').AsString;

         fdm.tbempresa.open;



        fltitulo1.Caption := 'FORNECEDOR: ' +
                              t1.fieldbyname('codigo').AsString + ' '+
                              t1.fieldbyname('nome').AsString +' ('+
                              t1.fieldbyname('nomecurto').AsString+')' ;

        if t1['formapgto'] <> null then
             flendereco2.Caption := 'F. PGTO: '+ t1.fieldbyname('formapgto').AsString + '      ';

        if t1['transportadora'] <> null then
           flendereco2.Caption := flendereco2.Caption + 'TRANSP.: ' + t1.fieldbyname('transportadora').AsString + '  PLACA: '+
                                  t1.fieldbyname('placaveiculo').AsString + ' UF:'+
                                  t1.fieldbyname('ufveiculo').AsString + ' FRETE:'+
                                  copy(t1.fieldbyname('freteconta').AsString,1,4);

        if (t1.FieldByName('formapgto').AsString = '') and
             (t1.FieldByName('transportadora').AsString = '') then flendereco2.Caption:='';


          LOS1.Caption := ent+' N.: ' + formatfloat('000000',t1.fieldbyname('numero').asfloat) +
                          '   -   EMISSÃO: ' + t1.fieldbyname('data').asstring +
                          '   -   N.F.: ' + t1.fieldbyname('nf').asstring +
                          '   -   DT: ' + t1.fieldbyname('datanota').asstring ;

       if (page<>'p') and ((controle='tbentrada') or (controle='tbentradamp')) then begin

             mpgto.Lines.Clear;
             tipoconta    := nomelink('codconta','chave', 'descricao','tbconta','Tipoconta');
             selecione('select vrdocumento, dtvencimento,'+tipoconta+' from tbpagar '+
                             ' where modulo ="8" and linkvenda = '+ quotedstr(controle2)+
                             ' order by linkvenda, dtvencimento ');

             //debugstr(sqlpub);
             if sqlpub.RecordCount >0 then begin
                mpgto.Show;
                mpgto.Lines.Add('CONTAS:');
                mpgto.Lines.Add('');
             end;

             while not sqlpub.Eof do begin
                   mpgto.Lines.Add(sqlpub.fieldbyname('tipoconta').AsString +
                                   '   -   Vence: '+sqlpub.fieldbyname('dtvencimento').AsString +
                                   '   -   Valor: '+formatfloat('##0.00',sqlpub.fieldbyname('vrdocumento').asfloat));
                   sqlpub.Next;
             end;
             sqlpub:=NIL;
          end;

               {
          if (responsavel= '07.682.283/0001-48') and (tb='P') then begin
             lpgto.Show;

             prazo := msgi('Digite o prazo de entrega',0);
             lpgto.Caption := 'Prazo de Entrega: ' + prazo;

             prazo := msgi('Digite a condição de pagamento',0);
             lpgto.Caption := lpgto.Caption + '       Cond Pgto'+ prazo;

          end else lpgto.Hide;
                }
end;

procedure Tfsistema.RLMemo18BeforePrint(Sender: TObject; var Text: String;
  var PrintIt: Boolean);
begin
       Text := t2.fieldbyname('descricao').AsString;
end;

procedure Tfsistema.impentrada_Execute(Sender: TObject);
var
i:integer;
imp,Dcompra,mp,cpvd,tb:string;
totvd:double;
begin                               

        if (page='p') or(page='df') or (page='mp') or (page='') then begin

            if page = 'p' then controle := 'tbentrada';
            with t1 do begin
                 sql.Clear;
                 sql.Add('select concat(if (f.endereco is not null, f.endereco," ") ," ",if(f.numero is not null, '+
                                 'f.numero," ")," ",if(f.complemento is not null, f.complemento," ")) as endereco, '+
                         ' f.cnpj, f.ie, f.cep,f.fone, f.bairro, f.municipio, f.uf, e.* '+
                         ' from '+controle+page+' e, tbfornecedor f where e.chave = '+quotedstr(controle2)+
                         ' and e.codigo=f.codigo');

                 open;
                 ds.DataSet :=t1;
            end;


            tb := controle+'item'+page;

            if controle4='' then controle4 :='chave';
            with t2 do begin
                 sql.Clear;
                 sql.Add('select '+ tb+'.vrunit-'+tb+'.vrunit as vrvenda, '  +tb+'.* from '+tb+' where link = '+quotedstr(controle2)+ ' order by '+ quotedstr(controle4));
                 open;
                 ds1.DataSet :=t2;
            end;

          fdm.tbconfig.open;
          Dcompra :='';
          for i :=1 to fdm.tbconfig.fieldbyname('decimaiscompra').AsInteger do
              Dcompra := Dcompra + '0';


          (t1.FieldByName('numero') as tintegerfield).displayformat := '000000';
          (t1.FieldByName('nf') as tintegerfield).displayformat := '000000';
          (t1.FieldByName('pedido') as tintegerfield).displayformat := '000000';
          (t1.FieldByName('codigo') as tintegerfield).displayformat := '000000';
          (t1.FieldByName('totalparcial') as tfloatfield).displayformat :=    '###,##0.'+dcompra;
          (t1.FieldByName('total') as tfloatfield).displayformat := '###,##0.'+dcompra;
          (t1.FieldByName('descontoreal') as tfloatfield).displayformat := '###,##0.'+dcompra;
          (t1.FieldByName('frete') as tfloatfield).displayformat := '###,##0.'+dcompra;
          (t1.FieldByName('acrescimo') as tfloatfield).displayformat := '###,##0.'+dcompra;
          (t1.FieldByName('basecalculo') as tfloatfield).displayformat := '###,##0.'+dcompra;
          (t1.FieldByName('basecalculoS') as tfloatfield).displayformat := '###,##0.'+dcompra;
          (t1.FieldByName('valoricms') as tfloatfield).displayformat := '###,##0.'+dcompra;
          (t1.FieldByName('valoricmsS') as tfloatfield).displayformat := '###,##0.'+dcompra;
          (t1.FieldByName('valoripi') as tfloatfield).displayformat := '###,##0.'+dcompra;
          (t1.FieldByName('totalnota') as tfloatfield).displayformat := '###,##0.'+dcompra;
          (t1.FieldByName('peso') as tfloatfield).displayformat := '###,##0.00';

          (t2.FieldByName('vrunit') as tfloatfield).displayformat :=    '###,##0.'+dcompra;
          (t2.FieldByName('total') as tfloatfield).displayformat :=    '###,##0.'+dcompra;
          (t2.FieldByName('descontoreal') as tfloatfield).displayformat := '###,##0.'+dcompra;
          (t2.FieldByName('descontopercent') as tfloatfield).displayformat := '###,##0.'+dcompra;
          (t2.FieldByName('frete') as tfloatfield).displayformat := '###,##0.'+dcompra;
          (t2.FieldByName('totalparcial') as tfloatfield).displayformat := '###,##0.'+dcompra;
          (t2.FieldByName('vrcompra') as tfloatfield).displayformat :=    '###,##0.'+dcompra;
          (t2.FieldByName('vrvenda') as tfloatfield).displayformat :=    '###,##0.'+dcompra;
          fdm.tbconfig.close;

          codloc :='1';
          imp := msgi('Imprimir:'+#13+#13+'1=Imprimir'+#13+'2=Exportar',2);
          if not strtoint(imp) in[1..2] then imp := '1';

          if (page='p') and (msg('Imprimir sem os valores?',2))then begin
              RLBand13.Destroy;
              RLLabel61.Destroy;
              RLLabel39.Destroy;
              RLLabel60.Destroy;
              RLDBText40.Destroy;
              RLDBText12.Destroy;
              RLDBText39.Destroy;

              if RLLabel40 <> nil then begin
                 RLLabel40.Destroy;
                 RLDBText23.Destroy;
              end;
          end;

          if (RLDBText39<> nil) and (not msg('Imprimir o valor de venda?',2)) then begin
              if RLLabel40 <> nil then begin
                 RLLabel40.Destroy;
                 RLDBText23.Destroy;
                 RLLabel41.Destroy;
                 ltotvd.Destroy;
              end;
          end;

          cpvd :='vrvenda';
          if (responsavel = 'ARISTEM') or (responsavel = 'FABIO VITRINE') then cpvd :='vratacado';
          if page = 'mp' then mp := 'mp';

          totvd :=0;
          t2.First;
          while not t2.Eof do begin
                selecione2('select '+ cpvd + ' as vrvenda from tbproduto'+mp+ ' where codigo = '+quotedstr(t2.fieldbyname('codigo').AsString));
                t2.edit;
                t2['vrvenda'] := sqlpub2.fieldbyname('vrvenda').asfloat*t2.fieldbyname('qtd').AsFloat;
                totvd := totvd + t2.fieldbyname('vrvenda').asfloat;
                t2.Next;
          end;

          sqlpub2:=nil;
          try
             if ltotvd <> nil then
                ltotvd.Caption := format('%n',[totvd]);
          except end;


          if imp= '2' then exportarRL(qentrada,t1.fieldbyname('nome').asstring ,  t1.fieldbyname('email').asstring)
          else             qentrada.Previewmodal;

          vf:=false;
          fsistema := nil;
          Release;

         end;
end;

procedure Tfsistema.consigtClick(Sender: TObject);
begin
        totconsig;
end;

procedure Tfsistema.consigvendedorClick(Sender: TObject);
begin
      if consvendedor.Text = '' then msg('#Escolha o vendedor.',0);
      msg('Deseja alterar o vendedor?',2);
      senhagerencial('CONSIGNADA','DIGITE A SENHA GERENCIAL:','ALTERAR VENDEDOR!');
      
      selecione('update '+tbconsignada+' set fabricante = '+quotedstr(consvendedor.Text)+
                 ' where chave = '+quotedstr(t1.fieldbyname('chave').AsString));
      t1.Edit;
      t1['fabricante'] := consvendedor.Text;

end;

procedure Tfsistema.combo_Execute(Sender: TObject);
begin
            if page = 'combo' then begin
               caption := 'Selecione';
               btnsair.Parent := combo;
               btnsair.Top := 56;
               btnsair.left := 118;
               combos.SetFocus;

               with t1 do begin
                    sql.Clear;
                    sql.add('select '+ controle2 +','+ controle3 +' from '+ controle +' order by '+controle2);
                    open;

                    ds.DataSet := t1;
                    combos.ListField := controle2;
                    combos.KeyField  := controle2;
               end;                                

               if controle4 = '' then lcombo.Caption := 'Escolha '+copy(controle,3,20)+' e clique OK'
                                 else lcombo.Caption := controle4;


               if controle5 <> '' then begin
                  t1.Locate('chave',controle5,[]);
                  combos.KeyValue := t1.fieldbyname('descricao').Value;
               end;

            end;


end;

procedure Tfsistema.BitBtn5Click(Sender: TObject);
begin
      if combos.Text <> '' then
         codloc := t1.fieldbyname(controle3).AsString;
      close;   

end;

procedure Tfsistema.conszeraClick(Sender: TObject);
begin

      if not msg('Deseja zerar os itens trocados',2) then abort;
      senhagerencial('ZERAR TROCA','DIGITE A SENHA GERENCIAL PARA LIBERAR!','ZERAR TROCA CONSIGNADA');


      t1.First;
      while not t1.Eof do begin
            if t1.FieldByName('qtd').AsFloat = 0 then
               selecione('delete from '+tbconsignada+' where chave = ' + quotedstr(t1.fieldbyname('chave').AsString));
            t1.Next;
      end;
      consigselExecute(self);

end;

procedure Tfsistema.consultaprod_Execute(Sender: TObject);
var
decimaiscompra,decimaisvenda:integer;
venda,compra:double;
begin
            if page = 'consultaprod' then begin
               btnsair.destroy;
               caption := 'Consulta do produto';

               with t1 do begin
                    sql.Clear;
                    sql.add('select decimaiscompra,decimaisvenda from tbconfig');
                    open;
                    decimaiscompra := fieldbyname('decimaiscompra').AsInteger;
                    decimaisvenda := fieldbyname('decimaisvenda').AsInteger;

                    sql.Clear;
                    sql.add('select Data, sum(qtd)as Qtd, VrUnit from tbpedidoitem '+
                            ' where codigo = '+ quotedstr(controle)+
                            'group by codigo,data, vrunit order by data desc');
                    open;
               end;

               formatacptabela(nil,t1,decimaisvenda);
               ds.DataSet := t1;
               gvenda.DataSource := ds;


               with t2 do begin
                    sql.Clear;
                    sql.add('select Data, sum(qtd)as Qtd, VrUnit from tbentradaitem'+
                            ' where vrunit is not null and codigo = '+ quotedstr(controle)+
                            ' group by codigo,data, vrunit order by data desc');
                    open;
               end;

               formatacptabela(nil,t2,decimaiscompra);
               ds1.DataSet := t2;
               gcompra.DataSource := ds1;


               with fdm.Query2 do begin
                       sql.Clear;
                    sql.add('select descricao,departamento,familia,grupo,subgrupo,fabricante,fornecedor,codigo,codigofornecedor,'+
                            'codigobarras,minimo,estoque,un,cfop,st,ipi,imposto,data,ultimavenda,ultimacompra,ultalteracao,aplicacao,'+
                            'peso,percent,percentatacado,percent3,ncmsh,prateleira,box,item,comissao,vrminimo,vrvenda,vratacado,valor3,vrunit,cmedio,'+
                            ' vrunit-vrunit as qtdvendido, vrunit-vrunit as qtdcompra from tbproduto where codigo = '+quotedstr(controle));

               end;
               fdm.tbquery2.Close;
               fdm.tbquery2.open;
               formatacptabela(fdm.tbquery2,nil,decimaisvenda);

               comp1.DataSource := fdm.dsquery2;
               comp2.DataSource := fdm.dsquery2;
               comp3.DataSource := fdm.dsquery2;
               comp4.DataSource := fdm.dsquery2;
               comp5.DataSource := fdm.dsquery2;
               comp6.DataSource := fdm.dsquery2;
               comp7.DataSource := fdm.dsquery2;
               comp8.DataSource := fdm.dsquery2;
               comp9.DataSource := fdm.dsquery2;
               comp10.DataSource := fdm.dsquery2;
               comp11.DataSource := fdm.dsquery2;
               comp12.DataSource := fdm.dsquery2;
               comp13.DataSource := fdm.dsquery2;
               comp14.DataSource := fdm.dsquery2;
               comp15.DataSource := fdm.dsquery2;
               comp16.DataSource := fdm.dsquery2;
               comp17.DataSource := fdm.dsquery2;
               comp18.DataSource := fdm.dsquery2;
               comp19.DataSource := fdm.dsquery2;
               comp20.DataSource := fdm.dsquery2;
               comp21.DataSource := fdm.dsquery2;
               comp22.DataSource := fdm.dsquery2;
               comp23.DataSource := fdm.dsquery2;
               comp24.DataSource := fdm.dsquery2;
               comp25.DataSource := fdm.dsquery2;
               comp26.DataSource := fdm.dsquery2;
               comp27.DataSource := fdm.dsquery2;
               comp28.DataSource := fdm.dsquery2;
               comp29.DataSource := fdm.dsquery2;
               comp30.DataSource := fdm.dsquery2;
               comp31.DataSource := fdm.dsquery2;
               comp32.DataSource := fdm.dsquery2;
               comp33.DataSource := fdm.dsquery2;
               comp34.DataSource := fdm.dsquery2;
               comp35.DataSource := fdm.dsquery2;
               comp36.DataSource := fdm.dsquery2;
               comp37.DataSource := fdm.dsquery2;
               comp38.DataSource := fdm.dsquery2;
               comp39.DataSource := fdm.dsquery2;

               selecione('select sum(qtd)as qtd from vendaitem where (modo="P" or modo="T") and codigo = '+quotedstr(controle));
               venda := sqlpub.fieldbyname('qtd').asfloat;
               selecione('select sum(qtd)as qtd from vendadevolucao where codigo = '+quotedstr(controle));
               venda := venda - sqlpub.fieldbyname('qtd').asfloat;
               selecione('select sum(qtd)as qtd from tbpedidoitem where codigo = '+quotedstr(controle));
               venda := venda + sqlpub.fieldbyname('qtd').asfloat;
               fdm.tbQuery2.edit;
               fdm.tbQuery2['qtdvendido'] := venda;

               selecione('select sum(qtd)as qtd from tbentradaitem where codigo = '+quotedstr(controle));
               compra := sqlpub.fieldbyname('qtd').asfloat;
               selecione('select sum(qtd)as qtd from tbentradaitemdf where codigo = '+quotedstr(controle));
               compra := compra - sqlpub.fieldbyname('qtd').asfloat;
               fdm.tbQuery2['qtdcompra'] := compra;

               selecione('select * from tbusuario where chave = ' +  quotedstr(inttostr(usuariolink)));
               Label141.Visible := sqlpub['atacado'] = 'S';
               comp24.Visible := sqlpub['atacado'] = 'S';
               Label142.Visible := sqlpub['atacado'] = 'S';
               comp34.Visible := sqlpub['atacado'] = 'S';
               Label143.Visible := sqlpub['valor3'] = 'S';
               comp25.Visible := sqlpub['valor3'] = 'S';
               Label144.Visible := sqlpub['valor3'] = 'S';
               comp35.Visible := sqlpub['valor3'] = 'S';
               sqlpub   := nil;


            end;

end;

procedure Tfsistema.Label147Click(Sender: TObject);
var link:string;
begin
      selecione('select max(link)as link from tbentradaitem where codigo = '+quotedstr(controle));
      link := sqlpub.fieldbyname('link').AsString;
      sqlpub := nil;
      periodo2('','tbentrada',link,'','codigo','',0,0,0);
end;

procedure Tfsistema.Label146Click(Sender: TObject);
var link:string;
begin
      selecione('select max(link)as link from tbpedidoitem where codigo = '+quotedstr(controle));
      link := sqlpub.fieldbyname('link').AsString;
      sqlpub := nil;
      imppedido(link,'tbpedido','2');
end;

procedure Tfsistema.SpeedButton6Click(Sender: TObject);
begin
      PrintForm(self);
end;

procedure Tfsistema.Label150Click(Sender: TObject);
begin
      fdm.Movprod(controle,'');
end;

end.


