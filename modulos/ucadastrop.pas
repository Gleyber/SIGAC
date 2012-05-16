unit ucadastrop;

interface



uses shellapi, Db, Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  dialogs, Buttons, ExtCtrls, Mask, DBCtrls, jpeg, Grids, DBGrids,
  ToolWin, ComCtrls, Messages, variants, ActnList, ExtDlgs, Menus, Provider,
  DBClient, RLReport,   ZAbstractRODataset,
  ZAbstractDataset, ZDataset,inifiles;

type
  TfcadastroP = class(TForm)
    ActionList1: TActionList;
    novo: TAction;
    insereir: TAction;
    alterar: TAction;
    hbotao: TAction;
    dhbotao: TAction;
    formatar: TAction;
    primeiroR: TAction;
    VoltarR: TAction;
    AvancarR: TAction;
    UltimoR: TAction;
    tcins: TAction;
    prodape: TPanel;
    btnPrimeiro: TSpeedButton;
    btnVoltar: TSpeedButton;
    btnAvancar: TSpeedButton;
    btnUltimo: TSpeedButton;
    btnnovo: TSpeedButton;
    btneditar: TSpeedButton;
    btngravar: TSpeedButton;
    btncancelar: TSpeedButton;
    btnapagar: TSpeedButton;
    btnatualizar: TSpeedButton;
    PageControl1: TPageControl;
    Tabcfop: TTabSheet;
    DBGrid1: TDBGrid;
    elocalizar: TEdit;
    btnajuda: TSpeedButton;
    Tabcartao: TTabSheet;
    Tabconta: TTabSheet;
    Tabdespesa: TTabSheet;
    Tabfone: TTabSheet;
    provedor: TDataSetProvider;
    tabela: TClientDataSet;
    ds: TDataSource;
    Label2: TLabel;
    cfop: TLabel;
    enatureza: TDBEdit;
    ecfop: TDBEdit;
    edata: TDBEdit;
    enomecartao: TDBEdit;
    Label3: TLabel;
    Label7: TLabel;
    efone: TDBEdit;
    Label1: TLabel;
    edia: TDBEdit;
    Label4: TLabel;
    etaxa: TDBEdit;
    Label5: TLabel;
    combos: TAction;
    Label26: TLabel;
    Ccartao: TDBComboBox;
    foco: TAction;
    dbedit3: TDBEdit;
    Label17: TLabel;
    Tabtipocliente: TTabSheet;
    campo_novo: TAction;
    Label40: TLabel;
    etipocliente: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Tabusuario: TTabSheet;
    PageControl2: TPageControl;
    Tabusuario_usuario: TTabSheet;
    Tabusuario_permissao: TTabSheet;
    Label41: TLabel;
    eusuario: TDBEdit;
    Label42: TLabel;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    esenha: TDBEdit;
    Label43: TLabel;
    Bevel4: TBevel;
    Listpermissao: TListBox;
    cinserir: TDBCheckBox;
    calterar: TDBCheckBox;
    cconsultar: TDBCheckBox;
    capagar: TDBCheckBox;
    Label44: TLabel;
    btptodas: TSpeedButton;
    btpnenhuma: TSpeedButton;
    ppermissao: TDataSetProvider;
    tbpermissao: TClientDataSet;
    dspermissao: TDataSource;
    btpcopia: TSpeedButton;
    Tabfautorizado: TTabSheet;
    DBEdit20: TDBEdit;
    Label45: TLabel;
    erg: TDBEdit;
    Label46: TLabel;
    DBCheckBox2: TDBCheckBox;
    Tabdivisao: TTabSheet;
    Label52: TLabel;
    DBEdit21: TDBEdit;
    Label53: TLabel;
    DBEdit24: TDBEdit;
    Tabanimal: TTabSheet;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    Tabmaquina: TTabSheet;
    DBEdit41: TDBEdit;
    Label64: TLabel;
    Label67: TLabel;
    DBEdit40: TDBEdit;
    Label66: TLabel;
    DBEdit37: TDBEdit;
    Label65: TLabel;
    DBEdit35: TDBEdit;
    Label68: TLabel;
    DBCheckBox3: TDBCheckBox;
    SpeedButton4: TSpeedButton;
    Tabvacina: TTabSheet;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    Tabfamilia: TTabSheet;
    DBEdit44: TDBEdit;
    Label74: TLabel;
    Tabgrupo: TTabSheet;
    Label75: TLabel;
    DBEdit45: TDBEdit;
    pgrupo: TDataSetProvider;
    tbgrupo: TClientDataSet;
    dsgrupo: TDataSource;
    Tabsubgrupo: TTabSheet;
    Label78: TLabel;
    DBEdit47: TDBEdit;
    DBCheckBox4: TDBCheckBox;
    ecomissao: TDBEdit;
    Label79: TLabel;
    pfamilia: TDataSetProvider;
    tbfamilia: TClientDataSet;
    dsfamilia: TDataSource;
    Label77: TLabel;
    DBEdit50: TDBEdit;
    Label84: TLabel;
    DBEdit51: TDBEdit;
    SpeedButton5: TSpeedButton;
    DBEdit52: TDBEdit;
    Label85: TLabel;
    ldep: TLabel;
    csecao: TDBComboBox;
    Label76: TLabel;
    cgrupo: TDBComboBox;
    Label80: TLabel;
    Label81: TLabel;
    DBEdit46: TDBEdit;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    Label82: TLabel;
    Label83: TLabel;
    DBEdit49: TDBEdit;
    Label87: TLabel;
    DBEdit54: TDBEdit;
    Label110: TLabel;
    DBComboBox2: TDBComboBox;
    cdep: TDBComboBox;
    DBEdit67: TDBEdit;
    Label88: TLabel;
    DBEdit68: TDBEdit;
    Label111: TLabel;
    Label91: TLabel;
    g1: TGroupBox;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    Label95: TLabel;
    Label96: TLabel;
    Tabprodfor: TTabSheet;
    Label97: TLabel;
    Label98: TLabel;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    Label99: TLabel;
    Label100: TLabel;
    ecodforn: TDBEdit;
    Label102: TLabel;
    DBEdit64: TDBEdit;
    Label103: TLabel;
    cbfornecedor: TDBLookupComboBox;
    Label104: TLabel;
    DBEdit63: TDBEdit;
    picms: TDataSetProvider;
    tbicms: TClientDataSet;
    dsicms: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Tabdatacomemorativa: TTabSheet;
    Bevel5: TBevel;
    SpeedButton13: TSpeedButton;
    SpeedButton15: TSpeedButton;
    Label112: TLabel;
    Label113: TLabel;
    lsemana: TLabel;
    lnomeferiado: TLabel;
    SpeedButton16: TSpeedButton;
    RadioGroup2: TRadioGroup;
    RadioGroup1: TRadioGroup;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    Calendar: TMonthCalendar;
    Tabgrupodata: TTabSheet;
    Label114: TLabel;
    DBEdit73: TDBEdit;
    Label115: TLabel;
    DBText2: TDBText;
    ColorDialog1: TColorDialog;
    grupodoc: TAction;
    filtrodoc: TAction;
    Label22: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label39: TLabel;
    Label116: TLabel;
    Label141: TLabel;
    SpeedButton666: TSpeedButton;
    SpeedButton17: TSpeedButton;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit86: TDBEdit;
    grupog: TRadioGroup;
    rlogo: TCheckBox;
    PopupMenu1: TPopupMenu;
    pg: TDataSetProvider;
    tbg: TClientDataSet;
    dsg: TDataSource;
    Label38: TLabel;
    dbedit2: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    Label131: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label117: TLabel;
    DBText4: TDBText;
    TabcontaR: TTabSheet;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit75: TDBEdit;
    Label118: TLabel;
    DBText5: TDBText;
    Label122: TLabel;
    DBEdit76: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    DBEdit77: TDBEdit;
    Label123: TLabel;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    Label124: TLabel;
    DBEdit80: TDBEdit;
    tabprodcom: TTabSheet;
    Label125: TLabel;
    DBEdit81: TDBEdit;
    Label126: TLabel;
    DBEdit82: TDBEdit;
    Label127: TLabel;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    Label128: TLabel;
    Label129: TLabel;
    DBEdit85: TDBEdit;
    DBText6: TDBText;
    lcart: TLabel;
    ccart: TDBEdit;
    Tabfollowup: TTabSheet;
    Label140: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    cassunto: TDBComboBox;
    Label144: TLabel;
    DBMemo1: TDBMemo;
    qgrupo: TRLReport;
    RLGroup1: TRLGroup;
    RLBand5: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText31: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLBand6: TRLBand;
    RLBand7: TRLBand;
    painel: TRLPanel;
    RLDBMemo1: TRLDBMemo;
    RLLabel3: TRLLabel;
    lcodigo1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand2: TRLBand;
    RLAngleLabel1: TRLAngleLabel;
    Tabfollowupt: TTabSheet;
    Label145: TLabel;
    Label146: TLabel;
    Label148: TLabel;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    CASSUNTOT: TDBComboBox;
    DBMemo5: TDBMemo;
    btnhist3: TBitBtn;
    DBEdit98: TDBEdit;
    Label151: TLabel;
    Tabfollowupf: TTabSheet;
    Label152: TLabel;
    Label153: TLabel;
    Label155: TLabel;
    DBEdit99: TDBEdit;
    DBEdit100: TDBEdit;
    CASSUNTOF: TDBComboBox;
    btnhist2: TBitBtn;
    DBMemo4: TDBMemo;
    TABreplocal: TTabSheet;
    Representante: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    CbEstado: TDBComboBox;
    Label163: TLabel;
    DBEdit101: TDBEdit;
    DBEdit102: TDBEdit;
    DBEdit103: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit105: TDBEdit;
    DBEdit106: TDBEdit;
    DBEdit108: TDBEdit;
    DBEdit107: TDBEdit;
    tabterminais: TTabSheet;
    Label165: TLabel;
    ecaminho: TDBEdit;
    DBCheckBox8: TDBCheckBox;
    BitBtn1: TBitBtn;
    lag1: TLabel;
    StaticText1: TStaticText;
    rusuario: TCheckBox;
    rproduto: TCheckBox;
    rcliente: TCheckBox;
    rfuncionario: TCheckBox;
    tbcli: TClientDataSet;
    tbfun: TClientDataSet;
    tbusu: TClientDataSet;
    tbprod: TClientDataSet;
    pprod: TDataSetProvider;
    pcli: TDataSetProvider;
    pfun: TDataSetProvider;
    pusu: TDataSetProvider;
    pper: TDataSetProvider;
    tbper: TClientDataSet;
    pconf: TDataSetProvider;
    tbconf: TClientDataSet;
    Label164: TLabel;
    DBEdit109: TDBEdit;
    raliq: TCheckBox;
    pindecf: TDataSetProvider;
    tbindecf: TClientDataSet;
    picm: TDataSetProvider;
    tbicm: TClientDataSet;
    rconta: TCheckBox;
    rempresa: TCheckBox;
    pdesconto: TDataSetProvider;
    tbdesconto: TClientDataSet;
    pempresa: TDataSetProvider;
    tbempresa: TClientDataSet;
    pconta: TDataSetProvider;
    tbconta: TClientDataSet;
    Tabprodqtd: TTabSheet;
    Label166: TLabel;
    DBEdit110: TDBEdit;
    DBEdit111: TDBEdit;
    Label167: TLabel;
    DBEdit112: TDBEdit;
    Label168: TLabel;
    Tabprodcor: TTabSheet;
    DBEdit113: TDBEdit;
    Label169: TLabel;
    DBEdit114: TDBEdit;
    Label170: TLabel;
    Label6: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBText7: TDBText;
    lretorno: TLabel;
    DBText8: TDBText;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    DBRadioGroup4: TDBRadioGroup;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    Label25: TLabel;
    sgrupo: TZQuery;
    sg: TZQuery;
    spermissao: TZQuery;
    sfamilia: TZQuery;
    sicms: TZQuery;
    sqlc: TZQuery;
    SpeedButton6: TSpeedButton;
    DBText1: TDBText;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    DBCheckBox11: TDBCheckBox;

        procedure EnterEdit(Sender: TObject);
        procedure ExitEdit(Sender: TObject);
        procedure EnterCombo(Sender: TObject);
        procedure ExitCombo(Sender: TObject);
        procedure localiza(campo: string);

    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btnapagarClick(Sender: TObject);
    procedure elocalizarChange(Sender: TObject);
    procedure elocalizarKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure novoExecute(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure insereirExecute(Sender: TObject);
    procedure dhbotaoExecute(Sender: TObject);
    procedure hbotaoExecute(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure alterarExecute(Sender: TObject);
    procedure btnatualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure formatarExecute(Sender: TObject);
    procedure primeiroRExecute(Sender: TObject);
    procedure VoltarRExecute(Sender: TObject);
    procedure AvancarRExecute(Sender: TObject);
    procedure UltimoRExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure elocalizarKeyPress(Sender: TObject; var Key: char);
    procedure FormKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure DBGrid1Exit(Sender: TObject);
    procedure elocalizarExit(Sender: TObject);
    procedure elocalizarEnter(Sender: TObject);
    procedure tcinsExecute(Sender: TObject);
    procedure comboEnter(Sender: TObject);
    procedure comboExit(Sender: TObject);
    procedure eobsEnter(Sender: TObject);
    procedure eobsExit(Sender: TObject);
    procedure Shape1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBEdit12Exit(Sender: TObject);
    procedure tabelaAfterEdit(DataSet: TDataSet);
    procedure tabelaAfterScroll(DataSet: TDataSet);
    procedure Label16Click(Sender: TObject);
    procedure combosExecute(Sender: TObject);
    procedure focoExecute(Sender: TObject);
    procedure campo_novoExecute(Sender: TObject);
    procedure CcartaoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure ListpermissaoClick(Sender: TObject);
    procedure cinserirExit(Sender: TObject);
    procedure calterarExit(Sender: TObject);
    procedure capagarExit(Sender: TObject);
    procedure cconsultarExit(Sender: TObject);
    procedure btptodasClick(Sender: TObject);
    procedure btpnenhumaClick(Sender: TObject);
    procedure btpcopiaClick(Sender: TObject);
    procedure TabusuarioShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBComboBox2Change(Sender: TObject);
    procedure ecodfornKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbfornecedorCloseUp(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure Label115Click(Sender: TObject);
    procedure grupodocExecute(Sender: TObject);
    procedure filtrodocExecute(Sender: TObject);
    procedure grupogClick(Sender: TObject);
    procedure SpeedButton666Click(Sender: TObject);
    procedure DBRadioGroup1Change(Sender: TObject);
    procedure DBRadioGroup3Change(Sender: TObject);
    procedure DBMemo5Enter(Sender: TObject);
    procedure DBMemo5Exit(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBMemo4Enter(Sender: TObject);
    procedure DBMemo4Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Label143Click(Sender: TObject);
    procedure Label19Click(Sender: TObject);
    procedure DBEdit93KeyPress(Sender: TObject; var Key: Char);
    procedure Label21Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure cbfornecedorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);


  private
  nomeanterior,msg_,c1,c2,tb,pagina,PN,PA,PD:string;
  naoduplica:boolean;


    { Private declarations }
  public
    gravar, nchave, modo,mp: string;
    { Public declarations }
    constructor Create(AOwner: TComponent; tab,mpri,mensagem,campo1,campo2: string;duplica:boolean); reintroduce;
  end;

var
  fcadastroP: TfcadastroP;

implementation

uses udm, funcoes, umanu,  ureports,
      uprodutolocaliza,  ucadastroG,ucadg, uprodutovalor;
{$R *.dfm}




constructor TfcadastroP.Create(AOwner: TComponent; tab,mpri,mensagem,campo1,campo2: string;duplica:boolean);
var
  i:integer;

  criterio:string;
begin

  Inherited Create(AOwner);

    i:=0;

    repeat
      if Components[i] is ttabsheet then

         if lowercase(ttabsheet(Components[i]).Name) = lowercase('Tab' + tab) then begin
            if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\cadastroP.jpg')) then
                                imagetab('imagecliente',alclient, Components[i] as TTabSheet,
                                (PChar(ExtractFilePath(ParamStr(0)) +'imagem\cadastroP.jpg')));
                                pagina:= ttabsheet(Components[i]).Name ;
                                tb:= 'tb' + tab;
                                break;
         end;
         inc(i);
    until i= componentcount;

          pagecontrol1.MultiLine := false;
          pagecontrol1.ActivePageIndex := 0;

          for i := 1 to  pagecontrol1.PageCount do

          if  pagecontrol1.ActivePage.Name  <> pagina then
              pagecontrol1.ActivePage.Destroy
          else
              pagecontrol1.ActivePageIndex := pagecontrol1.ActivePageIndex + 1;



          for i := 0 to componentcount - 1 do begin

            if Components[i] is tdbedit then  begin
               if (ttabsheet(Components[i]).Name = '') then
               else
                  tdbedit(Components[i]).OnExit := exitedit;
               tdbedit(Components[i]).OnEnter := enteredit;
            end;

            if Components[i] is tdbcombobox then  begin
               tdbcombobox(Components[i]).OnExit := exitcombo;
               tdbcombobox(Components[i]).OnEnter := entercombo;
            end;
         end;


          tabela.DisableControls;
          mp:=mpri;

          sqlC.sql.Clear;
          sqlC.sql.add(' select * from ' + tb + mp+ criterio);
          //showmessage(sqlC.CommandText);
          tabela.Open;
          formatarexecute(self);
          tabela.EnableControls;

          if codloc <> '' then
             tabela.Locate(campo1,codloc,[]);
          codloc:='';

         if uppercase(pagina) = 'TABFAMILIA' then
           CAPTION := 'MANUTENÇÃO DE SEÇÃO'
         else
         if uppercase(pagina) = 'TABDESPESA' then
           CAPTION := 'MANUTENÇÃO DE CONTA CONTÁBIL'
         else
           CAPTION := 'MANUTENCAO DE '+ uppercase(tab);

          msg_ := mensagem;
          c1:=campo1;
          c2:=campo2;

            tabela.IndexFieldNames := c1;
            dbgrid1.Columns[0].FieldName := c1;

            pagecontrol1.ActivePageIndex := 0;

            combosExecute(self);
            naoduplica := duplica;
end;



procedure Tfcadastrop.localiza(campo: string);
begin

          abortar(edata);
          tabela.IndexFieldNames := campo;
          dbgrid1.Columns[0].FieldName := campo;
          elocalizar.SetFocus;
end;


procedure TfcadastroP.Exitedit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clwhite;
end;


procedure tfcadastrop.Enteredit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;
end;



procedure tfcadastrop.Exitcombo(Sender: TObject);
begin
  with  Sender as tdbcombobox do
    color := clwhite;
end;


procedure tfcadastrop.Entercombo(Sender: TObject);
begin
  with  Sender as tdbcombobox do
    color := clinfobk;
end;


procedure TfcadastroP.btnPrimeiroClick(Sender: TObject);
begin
  abortar(edata);
  tabela.First;
end;

procedure TfcadastroP.btnVoltarClick(Sender: TObject);
begin
  abortar(edata);
  tabela.prior;
end;

procedure TfcadastroP.btnAvancarClick(Sender: TObject);
begin
  abortar(edata);
  tabela.Next;
end;

procedure TfcadastroP.btnUltimoClick(Sender: TObject);
begin
  abortar(edata);
  tabela.last;
end;

procedure TfcadastroP.btnnovoClick(Sender: TObject);
begin

  permissao(PN,'PN',copy(pagina,4,15));
  novoExecute(self);

  if fcadastrop.Active then
     focoexecute(self);

  modo := 'M';

end;

procedure TfcadastroP.btngravarClick(Sender: TObject);
var
sqltipo:tzquery;
begin

          focuscontrol(nil);


     if (((uppercase(pagina) ='TABFAMILIA') and
        (cdep.Visible=true)) and (cdep.text='')) or
        ((uppercase(pagina) ='TABGRUPO') and (csecao.text='')) or
        ((uppercase(pagina) ='TABSUBGRUPO') and ((cgrupo.text='')or(DBEdit8.Text=''))) then begin
        Application.MessageBox('Preencha os campos corretamento!!!', 'Atenção', 0 + MB_ICONWarning);
        abort;
     end;


        if (uppercase(pagina) ='TABDATACOMEMORATIVA') then
           if tabela['dt'] = null then begin
              showmessage('Preencha a data/ano.');
              abort;
           end;   



        if uppercase(pagina) ='TABTERMINAIS' then
           if ecaminho.Text = '' then begin
              showmessage('Preencha o caminho do terminal.');
              abort;
              ecaminho.SetFocus;
           end;

          tabela.edit;

          if (uppercase(pagina) ='TABCONTA') then begin

              if DBLookupComboBox1.Text = '' then begin
                 showmessage('Preencha a conta contábil');
                 abort;
              end;

              tabela['link'] :=tbg.fieldbyname('chave').AsString;
              tabela['contacontabil'] :=tbg.fieldbyname('descricao').AsString;

          end;


          if uppercase(pagina) = 'TABCFOP' then
             if length(tabela.fieldbyname('cfop').AsString)<>5 then begin
                showmessage('O cfop está incorreto: Padrão correto (4 números, 1 ponto. Ex: 1.102)!');
                abort;
             end;

          if uppercase(pagina) = 'TABSUBGRUPO' then begin
             if cgrupo.Text = '' then begin
                showmessage('Escolha o grupo, antes de gravar!');
                abort;
             end;

             if Application.MessageBox('Atualiza a letra de desconto de todos os '+
                                       'produtos deste subgrupo',  'Confirme', 4 + MB_ICONQUESTION) = idYes then

                with fdm.query2 do begin
                     close;
                     sql.Clear;
                     sql.add('update tbproduto set desconto = '+
                                  quotedstr(tabela.fieldbyname('letra').AsString)+
                                  ' where subgrupo='+quotedstr(tabela.fieldbyname('nome').AsString));
                     execsql;
                end;
          end;

          if uppercase(pagina) ='TABDATACOMEMORATIVA' then
             if RadioGroup2.ItemIndex = 2 then begin
                showmessage('Você deve escolher o feriado Fíxo ou Variável!');
                abort;
             end;


          if (uppercase(pagina) ='TABDATACOMEMORATIVA') then begin
              tabela.edit;
              tabela['grupo'] := RadioGroup1.Items[RadioGroup1.itemindex];
              tabela['tipo'] := RadioGroup2.Items[RadioGroup2.itemindex];
//              tabela['dt']:=  tabela.fieldbyname('data').AsString +'/'+  formatdatetime('yyyy',date);

              with fdm.query2 do begin
                   close;
                   sql.Clear;
                   sql.add( 'select cor from tbgrupodata where nome = '+
                   quotedstr(RadioGroup1.Items[RadioGroup1.itemindex]) );
                   open;
                   tabela['cor'] := fieldbyname('cor').asstring;;
                   close;
              end;
          end else if uppercase(pagina) ='TABDATACOMEMORATIVA'then  begin
              tabela['cor'] := null;
              tabela['grupo'] :=null;
          end;


          if gravar = 'novo' then
            insereirExecute(self)
          else if gravar = 'alterar' then
            alterarExecute(self);

          IF uppercase(pagina) = 'TABTIPOCLIENTE' then begin

          sqltipo :=  tzquery.Create(application);
          sqltipo.Connection := fdm.conector ;


             with sqltipo do begin

                  sql.clear;
                  sql.add( 'update tbcliente set fidelidade = '+
                            quotedstr(tabela.fieldbyname('fidelidade').AsString) +
                            ' where tipocliente = '+  quotedstr(tabela.fieldbyname('tipocliente').AsString));
                  execsql;
                  destroy;
             end;
         end;

          if (uppercase(pagina) ='TABDATACOMEMORATIVA') then
             filtrodocExecute(self);


          hbotaoexecute(self);
          desativar(fcadastroP);
          modo := 'N';



end;

procedure TfcadastroP.btncancelarClick(Sender: TObject);
begin
  tabela.Cancel;

  hbotaoexecute(self);
  desativar(fcadastroP);
  modo := 'N';
end;

procedure TfcadastroP.btnapagarClick(Sender: TObject);
begin

  permissao(PA,'PA',copy(pagina,4,15));

  abortaacao(tabela,nil,'chave','','','','',0);

   if (uppercase(pagina) = 'TABUSUARIO') then
      selecione('delete from tbpermissao where usuario = ' + quotedstr(eusuario.Text));

  if uppercase(pagina) = 'TABCONTA' then begin
     with fdm.query1 do begin
          close;
          sql.clear;
          sql.Add('select tipoconta from tbpagar where tipoconta = '+
                         quotedstr(tabela.fieldbyname('codigo').AsString));
          open;

          if length(fieldbyname('tipoconta').AsString) >0 then begin
             close;
             showmessage('Existem contas a pagar usando esta conta!!!');
             abort;
          end;
     end;
  end;


  if uppercase(pagina) = 'TABCONTAR' then begin
     with fdm.query1 do begin
          close;
          sql.clear;
          sql.Add(' select tipoconta from tbreceber where tipoconta = '+
                         quotedstr(tabela.fieldbyname('codigo').AsString));
          open;

          if length(fieldbyname('tipoconta').AsString) >0 then begin
             close;
             showmessage('Existem contas a receber usando esta conta!!!');
             abort;
          end;
     end;
  end;

  if uppercase(pagina) = 'TABFAMILIA' then begin
     with fdm.query2 do begin
          close;
                sql.Clear;
                sql.add( 'select link from tbgrupo'+mp+' where link = '+
                        quotedstr(tabela.fieldbyname('chave').AsString));
          open;
          if fdm.query2['link'] <> null then begin
             Application.MessageBox('Existe(em) grupo(s) cadastrado(s) nesta familia, '+
                         'apague-o(s), depois poderá excluir a família!','Atenção', 0 + MB_ICONwarning);
             close;
             abort;
          end;
          close;
     end;
  end;

  if uppercase(pagina) = 'TABGRUPO' then begin
     with fdm.query2 do begin
          close;
                sql.Clear;
                sql.add( 'select link from tbsubgrupo'+mp+' where link = '+
                        quotedstr(tabela.fieldbyname('chave').AsString));
          open;
          if fdm.query2['link'] <> null then begin
             Application.MessageBox('Existe(em) subgrupo(s) cadastrado(s) neste grupo, '+
                         'apague-o(s), depois poderá excluir o grupo!','Atenção', 0 + MB_ICONwarning);
             close;
             abort;
          end;
          close;
     end;
  end;

  if uppercase(pagina) = 'TABSUBGRUPO' then begin
     with fdm.query2 do begin
          close;
                sql.Clear;
                sql.add( 'select subgrupo from tbproduto'+mp+' where subgrupo = '+
                        quotedstr(tabela.fieldbyname('nome').AsString));
          open;
          if fdm.query2['subgrupo'] <> null then begin
             Application.MessageBox('Existe(em) produto(s) cadastrado(s) neste subgrupo, '+
                         'apague-o(s), depois poderá excluir o subgrupo!','Atenção', 0 + MB_ICONWarning);
             close;
             abort;
          end;
          close;
     end;
  end;



        if msg('',1) then   begin


    with fdm.query1 do
    begin

      Close;
          sql.clear;
          sql.Add(' delete from  '+tb+' where chave = ' +
                      quotedstr(tabela.FieldByName('chave').AsString));
      execsql;

      if uppercase(pagina) = 'TABSUBGRUPO' then begin
          sql.clear;
          sql.Add( 'delete from  tbproduto'+mp+'  where subgrupo = ' +
                      quotedstr(tabela.FieldByName('nome').AsString));
         execsql;
      end;

    end;

//   GALTERA(copy(pagina,4,20),tabela.fieldbyname(c1).asstring,'d');

    tabela.cancel;
    tabela.refresh;

  end;
end;

procedure TfcadastroP.elocalizarChange(Sender: TObject);
begin
          if uppercase(pagina) ='TABDATACOMEMORATIVA' then
            tabela.locate('nome',elocalizar.Text,[loPartialKey])
          else if  uppercase(pagina) ='TABFONE' then
            tabela.SetRange([elocalizar.Text], [nil])
          else
            tabela.locate(tabela.IndexFieldNames,elocalizar.Text,[loPartialKey]);

end;

procedure TfcadastroP.elocalizarKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin

  if key = 40 then tabela.Next;
  if key = 38 then tabela.prior;

  if (key = 13) and (elocalizar.Text <> '') then begin

          sqlC.sql.Clear;
          sqlC.sql.add('select * from '+ tb +' where ' + tabela.IndexFieldNames +
                                 ' like ' + quotedstr(uppercase(elocalizar.text)+ '%') );

     tabela.cancel;
     tabela.refresh;
     elocalizar.SetFocus;
  end;

end;

procedure TfcadastroP.novoExecute(Sender: TObject);
begin


          gravar := 'novo';
          ativar(fcadastroP);

          tabela.Insert;


     if     (uppercase(pagina)='TABFOLLOWUP')OR
            (uppercase(pagina)='TABFOLLOWUPP')OR
            (uppercase(pagina)='TABFOLLOWUPF')OR
            (uppercase(pagina)='TABFOLLOWUPT')then begin

        tabela['data'] := datetostr(now);
        tabela['hora'] := timetostr(now);
     end;


     if uppercase(pagina) ='TABDATACOMEMORATIVA' then
        tabela['tipo'] := 'F';

     if uppercase(pagina) ='TABGRUPODATA' then
        tabela['cor'] := '0';


         if uppercase(pagina)='TABFAMILIA' then
            tabela.fieldbyname('departamento').AsString :=nomeanterior ;

         if uppercase(pagina)='TABGRUPO' then
            tabela.fieldbyname('secao').AsString :=nomeanterior ;

         if uppercase(pagina)='TABSUBGRUPO' then
            tabela.fieldbyname('grupo').AsString :=nomeanterior ;


          campo_novoExecute(self);

          dhbotaoexecute(self);
end;

procedure TfcadastroP.btneditarClick(Sender: TObject);
begin

          if (uppercase(pagina) = 'TABUSUARIO') then msg('#Não é possível alterar, apague-o e crie outro',0);

          if (uppercase(pagina) = 'TABUSUARIO') and
              (usuario = tabela.FieldByName('nome').AsString) then else
              permissao(PA,'PA',copy(pagina,4,15));


          if tabela['chave'] = null then
          begin
            Application.MessageBox('Desculpe, mas não há dados para editar, clique no botão NOVO.',
                                      'Atenção', 0 + MB_ICONwarning);
            abort;
          end;

         if (uppercase(pagina) = 'TABFAMILIA') or
            (uppercase(pagina) = 'TABGRUPO') or
            (uppercase(pagina) = 'TABSUBGRUPO') then
            nomeanterior := tabela.fieldbyname('nome').AsString;

          gravar := 'alterar';
          ativar(fcadastroP);
          dhbotaoexecute(self);

          if fcadastrop.Active then
             focoexecute(self);



end;

procedure TfcadastroP.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  if modo = 'M' then
  begin
    case application.MessageBox('Deseja salvar as alterações?',
      'Sair', mb_yesnocancel + MB_ICONQUESTION) of

      idYes:
        begin
          btngravarclick(self);
          canclose := True;
        end;

      idNo:
        begin
          btncancelarClick(self);
          canclose := True;
        end;

      idCancel:
        canclose := False;
    end;
  end;
end;

procedure TfcadastroP.insereirExecute(Sender: TObject);
var
  localiza,nm: string;
  sql: tzquery;
begin


       if naoduplica then begin
          if tabela[c1]= null then
          begin
            Application.MessageBox(pchar(msg_), 'Atenção', 0 + MB_ICONWarning);
            focoExecute(self);
            abort;
          end;

          if tabela[c2]= null then
          begin
            Application.MessageBox(pchar(msg_), 'Atenção', 0 + MB_ICONWarning);
            focoExecute(self);
            abort;
          end;


          sql :=  tzquery.Create(application);
          sql.Connection := fdm.conector ;


          with sql do begin

           if tabela[c1] <> null then begin
              close;
             sql.clear;
             sql.add('select '+ C1 + '  from ' +tb+mp+ ' where '+C1+' = ' +
                              quotedstr(tabela.fieldbyname(c1).AsString));
              open;

          // se já existir
          if not IsEmpty then begin
            if (uppercase(pagina) = 'TABUSUARIO') then else
               nm := fieldbyname(c1).asstring;
               msg(nm + ' Já está cadastrado!', 0);
            focoExecute(self);
            destroy;
            abort;
          end;
          end;


           if tabela[c2] <> null then begin
              close;
              sql.clear;
              sql.add( 'select '+ C2 + '  from ' +tb+mp+ ' where '+C2+' = ' +
                        quotedstr(tabela.fieldbyname(c2).AsString));
              open;

          // se já existir
          if not IsEmpty then begin
            if (uppercase(pagina) = 'TABUSUARIO') then else
               nm := fieldbyname(c1).asstring;
               msg(nm + ' Já está cadastrado!', 0);

            focoExecute(self);
            destroy;
            abort;
          end;
          end;
          destroy;
      end;
   end;

     //link;
     if (uppercase(pagina) ='TABFAMILIA') or
        (uppercase(pagina) ='TABGRUPO') or
        (uppercase(pagina) ='TABSUBGRUPO') then
        with fdm.query1 do begin
             close;
             sql.Clear;

             if uppercase(pagina) ='TABFAMILIA' then begin
                sql.add( 'select chave from tbdepartamento'+mp+' where nome = '+ quotedstr(cdep.text));
                nomeanterior := cdep.Text;
             end else if uppercase(pagina) ='TABGRUPO' then begin
                sql.add( 'select chave from tbfamilia'+mp+' where nome = '+ quotedstr(csecao.text));
                nomeanterior := csecao.Text;
             end else if uppercase(pagina) ='TABSUBGRUPO' then begin
                sql.add('select chave from tbgrupo'+mp+' where nome = '+ quotedstr(cgrupo.text));
                nomeanterior := cgrupo.Text;
             end;

             open;
             tabela.Edit;
             tabela['link'] := fieldbyname('chave').AsInteger;
        end;


  Grava(tabela, nil,tb+mp);
//  GALTERA(copy(pagina,4,20),tabela.fieldbyname(c1).asstring,'i');

  localiza := tabela.fieldbyname(c1).AsString;
  tabela.Cancel;
  tabela.Refresh;
  tabela.Locate(c1, localiza, []);

end;

procedure TfcadastroP.dhbotaoExecute(Sender: TObject);
begin
  btnnovo.Enabled := False;
  btneditar.Enabled := False;
  btnapagar.Enabled := False;
  btnatualizar.Enabled := False;
  btngravar.Enabled := True;
  btncancelar.Enabled := True;
end;

procedure TfcadastroP.hbotaoExecute(Sender: TObject);
begin
  btnnovo.Enabled := True;
  btneditar.Enabled := True;
  btnapagar.Enabled := True;
  btnatualizar.Enabled := True;
  btngravar.Enabled := False;
  btncancelar.Enabled := False;
end;

procedure TfcadastroP.DBGrid1Enter(Sender: TObject);
begin
  keypreview := False;
end;

procedure TfcadastroP.alterarExecute(Sender: TObject);
var
 sql: tzquery;
 loc,comissao:string;
begin

       if naoduplica then begin
          if tabela[c1]= null then
          begin
            Application.MessageBox(pchar(msg_), 'Atenção', 0 + MB_ICONWarning);
            abort;
          end;

          if tabela[c2]= null then
          begin
            Application.MessageBox(pchar(msg_), 'Atenção', 0 + MB_ICONWarning);
            abort;
          end;


          sql :=  tzquery.Create(application);
          sql.Connection := fdm.conector ;


          with sql do begin

           if tabela[c1] <> null then begin
               close;
               sql.clear;
               sql.add('select '+c1+' from '+tb+mp+' where '+c1+' = ' +
                               quotedstr(tabela.fieldbyname(c1).AsString) +
                              ' and chave <> ' + quotedstr(tabela.fieldbyname('chave').AsString));
               open;

          // se já existir
          if not IsEmpty then begin
            Application.MessageBox(pchar(fieldbyname(c1).asstring + ' Já está cadastrado!'), 'Atenção', 0 + MB_ICONWarning);
            destroy;
            abort;
          end;
        end;

           if tabela[c1] <> null then begin
               close;
               sql.clear;
               sql.add( 'select '+c1+' from '+tb+mp+' where '+c1+' = ' +
                        quotedstr(tabela.fieldbyname(c1).AsString) +
                        ' and chave <> ' + quotedstr(tabela.fieldbyname('chave').AsString));
               open;

          // se já existir
          if not IsEmpty then begin
            Application.MessageBox(pchar(fieldbyname(c1).asstring + ' Já está cadastrado!'), 'Atenção', 0 + MB_ICONWarning);
            destroy;
            abort;
          end;
        end;
        destroy;
      end;
     end;

  // atualiza o produto
  if (uppercase(pagina) = 'TABFAMILIA') or
     (uppercase(pagina) = 'TABGRUPO') or
     (uppercase(pagina) = 'TABSUBGRUPO') then begin

    if (uppercase(pagina) = 'TABSUBGRUPO') and
       (Application.MessageBox('Atualizar comissão calculada sobre o produto deste subgrupo? ',
                              'Confirme', 4 + MB_ICONQUESTION) = idYes) then
      comissao := ',comissao = '+realdblstr(tabela.FieldByName('comissao').AsFloat)
      else
      comissao :='';


     with fdm.query2 do begin
          sql.Clear;

             //link
             if uppercase(pagina) ='TABFAMILIA' then begin
                sql.add( 'select chave from tbdepartamento'+mp+' where nome = '+ quotedstr(cdep.text));
                //nomeanterior := cdep.Text;
             end else if uppercase(pagina) ='TABGRUPO' then begin
                sql.add( 'select chave from tbfamilia'+mp+' where nome = '+ quotedstr(csecao.text));
                //nomeanterior := csecao.Text;
             end else if uppercase(pagina) ='TABSUBGRUPO' then begin
                sql.add( 'select chave from tbgrupo'+mp+' where nome = '+ quotedstr(cgrupo.text));
                //nomeanterior := cgrupo.Text;
             end;

             open;
             tabela.Edit;
             tabela['link'] := fieldbyname('chave').AsInteger;


          close;
                sql.Clear;
                sql.add( 'update tbproduto'+mp+' set '+copy(pagina,4,30)+' = '+
                         quotedstr(tabela.fieldbyname('nome').AsString)+
                         comissao +
                         ' where '+copy(pagina,4,30)+' = '+ quotedstr(nomeanterior));
          execsql;
     end;
   end;



      if uppercase(pagina) ='TABGRUPODATA' then
          with fdm.query1 do begin
               close;
               sql.Clear;
               sql.Add( 'update tbdatacomemorativa set cor = '+
                               quotedstr(tabela.fieldbyname('cor').AsString)+
                              ' where grupo  = '+ quotedstr(tabela.fieldbyname('nome').AsString));
//               showmessage(commandtext);
               execsql;
          end;


          Altera(tabela,nil,tb+mp);
//          GALTERA(copy(pagina,4,20),tabela.fieldbyname(c1).asstring,'a');

          loc := tabela.fieldbyname('chave').asstring;
          tabela.cancel;
          tabela.refresh;
          tabela.Locate('chave',loc,[]);

             if uppercase(pagina) ='TABPRODCOM' then begin
                with fdm.query2 do begin
                     close;
                     sql.Clear;
                     sql.add( 'update tbproduto set '+
                                    ' percent = '+ realdblstr(tabela.fieldbyname('percent1').AsFloat)+
                                    ' ,fretev = '+ realdblstr(tabela.fieldbyname('frete').AsFloat)+
                                    ' ,vrvenda =  ((vrunit) +vrunit *percent / 100)+fretev '+
                                    ' ,vratacado =vrvenda - (vrvenda * 10/100)'+
                                    ' ,percentatacado = (vratacado-fretev) * 100 /vrunit - 100' +
                                    ' where vrunit > '+realdblstr(tabela.fieldbyname('vrmin').AsFloat)+
                                    ' and  vrunit <= '+realdblstr(tabela.fieldbyname('vrmax').AsFloat));
//                     showmessage(commandtext) ;
                     execsql;
                end;
                fprodutovalor.close;
                fprodutolocaliza.tabela.Cancel;
                fprodutolocaliza.tabela.refresh;
                end;


end;

procedure TfcadastroP.btnatualizarClick(Sender: TObject);
var
  loc: string;

begin
        if tabela['chave'] = null then abort;
        loc := tabela.fieldbyname('chave').asstring;
        tabela.Cancel;
        tabela.Refresh;
        tabela.Locate('chave',loc,[]);
end;

procedure TfcadastroP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       if (uppercase(pagina) = 'TABUSUARIO') then begin
          atacado := tabela.FieldByName('atacado').AsString='S';
          atacado2 := tabela.FieldByName('valor3').AsString='S';
       end;

  tbicms.close;
  tbgrupo.close;
  tabela.Close;
  //Release;
  //fcadastroP := nil;
end;

procedure TfcadastroP.formatarExecute(Sender: TObject);
begin

    if uppercase(pagina) ='TABFOLLOWUP' then begin
       tabela.FieldByName('data').EditMask := '99/99/9999';
       tabela.FieldByName('retorno').EditMask := '99/99/9999';       
    end;

        if uppercase(pagina) ='TABANIMAL' then
           tabela.FieldByName('nascimento').EditMask := '99/99/9999';
        if uppercase(pagina) ='TABVACINA' then
           tabela.FieldByName('revacinar').EditMask := '99/99/9999';

    if uppercase(pagina) ='TABDATACOMEMORATIVA' then begin
       tabela.FieldByName('data').EditMask := '99/99';
       dbgrid1.Columns[0].Width := 31;
       dbgrid1.Columns[1].Width :=133;
    end;

        if uppercase(pagina) ='TABPRODCOM' then begin

           (tabela.FieldByName('vrmin') as tfloatfield).displayformat := '###,##0.00';
           (tabela.FieldByName('vrmax') as tfloatfield).displayformat := '###,##0.00';
           (tabela.FieldByName('percent1') as tfloatfield).displayformat := '###,##0.000';
           (tabela.FieldByName('percent2') as tfloatfield).displayformat := '###,##0.000';
           (tabela.FieldByName('frete') as tfloatfield).displayformat := '###,##0.00';

        end;



end;

procedure TfcadastroP.primeiroRExecute(Sender: TObject);
begin
  btnPrimeiroclick(self);
end;

procedure TfcadastroP.VoltarRExecute(Sender: TObject);
begin
  btnvoltarclick(self);
end;

procedure TfcadastroP.AvancarRExecute(Sender: TObject);
begin
  btnavancarclick(self);
end;

procedure TfcadastroP.UltimoRExecute(Sender: TObject);
begin
  btnultimoclick(self);
end;

procedure TfcadastroP.FormCreate(Sender: TObject);
begin



   if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\impanelP.jpg')) then
      imagepanel('imagepanel',altop,prodape, (PChar(ExtractFilePath(ParamStr(0)) +'imagem\impanelP.jpg')),nil);


     height := 375;
     pagecontrol1.Align := alnone;
     pagecontrol1.Top := -21;
     prodape.Top := 278;
     prodape.Left := 18;
     dbgrid1.Left :=255;
     dbgrid1.Top := 44;
     elocalizar.Top := 17;
     elocalizar.Left :=256;
     pagecontrol1.Height:= 366;



            PN := sqlacesso.fieldbyname('inserir').AsString;
            PA :=sqlacesso.fieldbyname('alterar').AsString;
            PD := sqlacesso.fieldbyname('apagar').AsString;

            sqlacesso.Destroy;

end;

procedure TfcadastroP.elocalizarKeyPress(Sender: TObject; var Key: char);
begin
//  if tabela.IndexFieldNames = 'codigo' then
        if (tabela.fieldbyname(tabela.IndexFieldNames).ClassName = 'TIntegerField') or
           (tabela.fieldbyname(tabela.IndexFieldNames).ClassName = 'TFloatField')  then
           if not (key in ['0'..'9', #8]) then abort;
end;

procedure TfcadastroP.FormKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if (key = 13)  then begin
    key :=0;
    Perform(wm_nextdlgctl, 0,0);
  end;  
  if (key = 27) then begin
     key :=0;
     Perform(wm_nextdlgctl, 1,0);
  end;


end;

procedure TfcadastroP.DBGrid1Exit(Sender: TObject);
begin
  keypreview := True;
end;

procedure TfcadastroP.elocalizarExit(Sender: TObject);
begin
  with Sender as tedit do
    color := $00F1F5F8;
    keypreview := true;
end;

procedure TfcadastroP.elocalizarEnter(Sender: TObject);
begin
  with Sender as tedit do
    color := clinfobk;
    keypreview := false;
end;

procedure TfcadastroP.tcinsExecute(Sender: TObject);
begin
  if edata.Enabled = True then
    btngravarclick(self)
  else
    btnnovoclick(self);
end;

procedure TfcadastroP.comboEnter(Sender: TObject);
begin
  keypreview := False;
end;

procedure TfcadastroP.comboExit(Sender: TObject);
begin
  keypreview := False;
end;

procedure TfcadastroP.eobsEnter(Sender: TObject);
begin
  keypreview := False;
end;

procedure TfcadastroP.eobsExit(Sender: TObject);
begin
  keypreview := True;
end;

procedure TfcadastroP.Shape1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
      ShellExecute(Handle, 'open', PChar(homepage), nil, '', Sw_Show);
end;

procedure TfcadastroP.DBEdit12Exit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clwhite;
end;

procedure TfcadastroP.tabelaAfterEdit(DataSet: TDataSet);
begin
        modo := 'M';
end;

procedure TfcadastroP.tabelaAfterScroll(DataSet: TDataSet);
var
  dt: tdate;
  i:integer;
begin


        if uppercase(pagina) ='TABFOLLOWUP' then
           if tabela['retorno']<>null then
              lretorno.Caption := 'Retorno '+formatdatetime('dddd',tabela.fieldbyname('retorno').AsDateTime)
           else lretorno.Caption := '';


        if (uppercase(pagina) ='TABDATACOMEMORATIVA') and (tabela['data']<>null) then begin

           lsemana.Caption := formatdatetime('dddd',tabela.fieldbyname('data').AsDateTime);
           calendar.Date := tabela.fieldbyname('data').AsDateTime;

           if tabela['data'] <> null then begin
              dt := strtodate(tabela.fieldbyname('dt').AsString);

              i:= trunc(dt-date);

              if dt >= date then
                 lnomeferiado.Caption := 'Falta(m) ' + inttostr(i) + ' dia(s) para: '
              else lnomeferiado.Caption := 'Já passou: ';

           end else lnomeferiado.Caption := '';

        end;

        if (uppercase(pagina) ='TABDATACOMEMORATIVA') then
           if length(tabela.FieldByName('cor').AsString)>0 then begin
              label113.Font.Color := tabela['cor'];
              label112.Font.Color := tabela['cor'];
              lsemana.Font.Color := tabela['cor'];
           end else begin
              label113.Font.Color := clblack;
              label112.Font.Color := clblack;
              lsemana.Font.Color := clblack;
           end;

        if uppercase(pagina) ='TABGRUPODATA' then
           if tabela['cor']<> null then
              DBText2.Font.Color := tabela['cor'];



    btnPrimeiro.Enabled := not tabela.BOF;
    btnVoltar.Enabled := not tabela.BOF;
    btnAvancar.Enabled := not tabela.EOF;
    btnUltimo.Enabled := not tabela.EOF;


        if uppercase(pagina) ='TABUSUARIO' then
           Tabusuario_permissao.Caption := 'Permissões ' + tabela.fieldbyname('nome').AsString;


end;

procedure TfcadastroP.Label16Click(Sender: TObject);
var
  st: string;
begin

  permissao(PA,'PA',copy(pagina,4,15));

  if inputquery('Alterar o saldo da conta', 'Digite o novo saldo:', st) then
  begin


    if StrIsFloat(st) = False then
    begin
      Application.MessageBox('O valor digitado não é um número válido!',
                                'Atenção', 0 + MB_ICONWarning);
      abort;
    end;

    if tabela['chave'] = null then
    begin
      Application.MessageBox('Você não tem uma conta selecionado!',
        'Atenção', 0 + MB_ICONWarning);
      abort;
    end;

    btneditarclick(self);
    tabela.Edit;
    tabela['saldo'] := st;

    btngravarclick(self);
  end;

end;

procedure TfcadastroP.combosExecute(Sender: TObject);
var
sqlcombo:tzquery;
tbcombo,campocombo:string;
nomecombo:tdbcombobox;
begin


         if (uppercase(pagina)='TABCARTAO') or
            (uppercase(pagina)='TABGRUPO') or
            (uppercase(pagina)='TABSUBGRUPO') or
            (uppercase(pagina)='TABFAMILIA') or
            (uppercase(pagina)='TABFOLLOWUP')OR
            (uppercase(pagina)='TABFOLLOWUPP')OR
            (uppercase(pagina)='TABFOLLOWUPF')OR
            (uppercase(pagina)='TABFOLLOWUPT') then begin


          sqlcombo :=  tzquery.Create(application);
          sqlcombo.Connection := fdm.conector ;

             if uppercase(pagina)='TABCARTAO' then begin
                nomecombo := Ccartao;
                tbcombo := 'tbbanco';
                campocombo := 'conta';
             end;


            if (uppercase(pagina)='TABFOLLOWUP')OR
            (uppercase(pagina)='TABFOLLOWUPP')OR
            (uppercase(pagina)='TABFOLLOWUPF')OR
            (uppercase(pagina)='TABFOLLOWUPT')then begin

              if uppercase(pagina)='TABFOLLOWUP' then
                 nomecombo := Cassunto

              //else if uppercase(pagina)='TABFOLLOWUPP' then
                // nomecombo := Cassuntop
              else if uppercase(pagina)='TABFOLLOWUPF' then
                 nomecombo := Cassuntof
              else if uppercase(pagina)='TABFOLLOWUPT' then
                 nomecombo := Cassuntot;

                tbcombo := 'tbassunto';
                campocombo := 'assunto';
             end;

             {if uppercase(pagina)='TABPRODFOR' then begin
                nomecombo := cbfornecedor;
                tbcombo := 'tbfornecedor';
                campocombo := 'nome';
             end;}


             if uppercase(pagina)='TABGRUPO' then begin
                nomecombo := csecao;
                tbcombo := 'tbfamilia'+mp;
                campocombo := 'nome';
             end;

             if uppercase(pagina)='TABSUBGRUPO' then begin
                nomecombo := cgrupo;
                tbcombo := 'tbgrupo'+mp;
                campocombo := 'nome';
             end;


             if uppercase(pagina)='TABFAMILIA' then begin
                nomecombo := cdep;
                tbcombo := 'tbdepartamento'+mp;
                campocombo := 'nome';
             end;


             with sqlcombo do begin
                  Close;
                  sql.clear;
                  sql.add( 'select distinct '+campocombo+' from '+tbcombo+' order by ' +campocombo);
                  open;

             nomecombo.Clear;
             if uppercase(pagina)='TABCARTAO' then
                 nomecombo.Items.Add('NENHUMA');


          while not EOF do
          begin
            nomecombo.Items.Add(fieldbyname(campocombo).asstring);
            Next;
          end;

          destroy;
      end;

  end;

end;

procedure TfcadastroP.focoExecute(Sender: TObject);
begin


     if uppercase(pagina) ='TABPRODCOR' then dbedit114.SetFocus;
     if uppercase(pagina) ='TABPRODQTD' then dbedit110.SetFocus;
     if uppercase(pagina) ='TABTERMINAIS' then ecaminho.SetFocus;
     if uppercase(pagina) ='TABREPLOCAL' then dbedit101.SetFocus;
     if uppercase(pagina) ='TABFOLLOWUP' then cassunto.SetFocus;
     if uppercase(pagina) ='TABFOLLOWUPT' then cassuntot.SetFocus;
     if uppercase(pagina) ='TABFOLLOWUPF' then cassuntof.SetFocus;
     if uppercase(pagina) ='TABCONTAR' then DBRadioGroup1.SetFocus;
     if uppercase(pagina) ='TABPRODCOM' then dbedit81.SetFocus;
     if uppercase(pagina) ='TABDATACOMEMORATIVA' then RadioGroup1.SetFocus;
     if uppercase(pagina) ='TABGRUPODATA' then dbedit73.SetFocus;
     if uppercase(pagina) ='TABSUBGRUPO' then cgrupo.SetFocus;
     if uppercase(pagina) ='TABGRUPO' then csecao.SetFocus;

     if (uppercase(pagina) ='TABFAMILIA') and (cdep.Visible=false) then
        dbedit44.SetFocus
     else if (uppercase(pagina) ='TABFAMILIA') then cdep.SetFocus;

     if uppercase(pagina) ='TABCFOP' then ecfop.SetFocus;
     if uppercase(pagina) ='TABCARTAO' then enomecartao.SetFocus;

     if uppercase(pagina) ='TABCONTA' then dbedit6.SetFocus;
     if uppercase(pagina) ='TABDESPESA' then dbedit3.SetFocus;
     if uppercase(pagina) ='TABFONE' then dbedit11.SetFocus;
     if uppercase(pagina) ='TABTIPOCLIENTE' then etipocliente.SetFocus;
     if uppercase(pagina) ='TABUSUARIO' then eusuario.SetFocus;
     if uppercase(pagina) ='TABEMPRESAFUNCIONARIO' then erg.SetFocus;
     if uppercase(pagina) ='TABDIVISAO' then dbedit21.SetFocus;
     if uppercase(pagina) ='TABANIMAL' then dbedit28.SetFocus;
     if uppercase(pagina) ='TABFAUTORIZADO' then dbedit20.SetFocus;
     if uppercase(pagina) ='TABMAQUINA' then dbedit41.SetFocus;
     if uppercase(pagina) ='TABVACINA' then dbedit39.SetFocus;
     if uppercase(pagina) ='TABPRODFOR' then ecodforn.SetFocus;
end;

procedure TfcadastroP.campo_novoExecute(Sender: TObject);
VAR
SQLD:tzquery;
nometb,campo:string;
begin

     if (uppercase(pagina)='TABCONTAR') then
         tabela['ncartao'] := '2';

     if (uppercase(pagina)='TABFOLLOWUP') then
         tabela['usuario'] := usuario;

     if uppercase(pagina) ='TABTERMINAIS' then
        tabela['atualiza'] := 'S';

     if uppercase(pagina) ='TABCONTA' then begin
        tabela['tpconta'] := 'F';
        tabela['tp'] := '2';
     end;

     if uppercase(pagina) ='TABCONTAR' then
        tabela['tp'] := '3';

     if uppercase(pagina) ='TABANIMAL' then
        tabela['codigocliente'] := fcadg.tabela['codigo'];

     if uppercase(pagina) ='TABSUBGRUPO' then begin
        tabela['fidelidade'] := 'N';
        tabela['calculamargem'] := 'S';
        tabela['enviabalanca'] := 'S';
        tabela['incidepis'] := 'S';
        tabela['incideconfins'] := 'S';
        tabela['enviapdv'] := 'S';
     end;


     if uppercase(pagina) ='TABANIMAL' then
        tabela['codigocliente'] := fcadg.tabela['codigo'];

     if (uppercase(pagina) ='TABFONE') or
        (uppercase(pagina) ='TABVACINA') or
        (uppercase(pagina) ='TABANIMAL') then

        tabela['data'] := datetostr(now);

     if uppercase(pagina) ='TABTIPOCLIENTE' then
        tabela['fidelidade'] := 'N';

     if (uppercase(pagina) ='TABDIVISAO') or
        (uppercase(pagina) ='TABCONTA') or
        (uppercase(pagina) ='TABCONTAR') or
        (uppercase(pagina) ='TABDESPESA') or
        (uppercase(pagina) ='TABSUBGRUPO') or        
        (uppercase(pagina) ='TABANIMAL') then begin

         nometb := 'tb'+ copy(pagina,4,30);
         campo := 'codigo' ;


         nometb := 'tb'+ copy(pagina,4,30);
         campo := 'codigo' ;


          sqld :=  tzquery.Create(application);
          sqld.Connection := fdm.conector ;


             with sqlD do begin
                  sql.clear;
                  sql.add( 'select max('+campo+')as codigo from '+nometb);
                  open;
                  tabela[campo] := fieldbyname('codigo').asinteger + 1;
                  destroy;
             end;
         end;
end;


procedure TfcadastroP.CcartaoExit(Sender: TObject);
begin
        tabela.edit;
        tabela['conta'] := Ccartao.text;
        focuscontrol(nil);
end;

procedure TfcadastroP.FormShow(Sender: TObject);
begin
           if (uppercase(pagina) ='TABUSUARIO') and
              (usuario <> 'SUPERVISOR') and
              ((PN<>'S') and(PA<>'S') and(PD<>'S')) then
              Tabusuario_permissao.Destroy;

           if uppercase(pagina) ='TABUSUARIO' then begin
              Tabusuario_usuario.Show;
              tbpermissao.Open;
           end;

          if uppercase(pagina) ='TABFAMILIA' then begin
             g1.Visible := responsavel = '04.425.748/0001-97';
             Label104.Visible := responsavel = 'RP DISTRIBUIDORA';
             DBEdit63.Visible := responsavel = 'RP DISTRIBUIDORA';

          end;

          if uppercase(pagina) ='TABSUBGRUPO' then
             tbicms.Open;

          if uppercase(pagina) ='TABDATACOMEMORATIVA' then begin
             dbgrid1.Width := 146;
             dbgrid1.Left :=363;
             grupodocExecute(SELF);
          end;

     if (uppercase(pagina) ='TABCONTA')  then begin
        tbg.Open;
        tbg.IndexFieldNames:='descricao';
     end;



          if uppercase(pagina) ='TABPRODQTD' then begin
             dbgrid1.Columns[0].Width := 50;
             dbgrid1.Columns[1].Width := 50;
             dbgrid1.Columns[0].FieldName := 'ini';
             dbgrid1.Columns[1].FieldName := 'fin';
          end;

     if tabela.RecordCount >0 then
        tabela.locate('chave',tabela.fieldbyname('chave').AsString,[]);

     tabela.edit;
     elocalizar.Enabled := true;

end;

procedure TfcadastroP.PageControl2Change(Sender: TObject);
begin


         if (btngravar.Enabled = True) or (tabela['chave'] = null) then
          begin
            Application.MessageBox('Você não tem dados gravados!',
                                   'Atenção', 0 + MB_ICONWarning);
            pagecontrol1.ActivePageIndex := 0;
            abort;
          end;

        if pagecontrol2.ActivePageIndex = 1 then begin
           elocalizar.Hide;
           dbgrid1.Hide;
           prodape.Hide;
           Listpermissao.SetFocus;
           Listpermissao.ItemIndex := 0;
           ListpermissaoClick(self);
           cinserir.Enabled := True;
           calterar.Enabled := True;
           capagar.Enabled := True;
           cconsultar.Enabled := True;

        end else begin
           elocalizar.show;
           dbgrid1.show;
           prodape.show;
        end;



end;

procedure TfcadastroP.ListpermissaoClick(Sender: TObject);
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

          if not tbpermissao.Locate('modulo', st, []) then
          begin
            tbpermissao.Insert;
            tbpermissao['modulo'] := st;
            tbpermissao['usuario'] := tabela['nome'];
            tbpermissao['inserir'] := 'N';
            tbpermissao['alterar'] := 'N';
            tbpermissao['consultar'] := 'N';
            tbpermissao['apagar'] := 'N';

            grava(tbpermissao, nil,'tbpermissao');
            tbpermissao.cancel;
            tbpermissao.Refresh;
            tbpermissao.Locate('modulo', st, []);
          end;

         end;

end;

procedure TfcadastroP.cinserirExit(Sender: TObject);
var
  st: string;
begin


  st := tbpermissao.FieldByName('chave').AsString;

  altera(tbpermissao, nil,'tbpermissao');
  tbpermissao.Cancel;
  tbpermissao.Refresh;
  tbpermissao.Locate('chave', st, []);


end;

procedure TfcadastroP.calterarExit(Sender: TObject);
var
  st: string;
begin
  st := tbpermissao.FieldByName('chave').AsString;

  altera(tbpermissao, nil,'tbpermissao');
  tbpermissao.Cancel;
  tbpermissao.Refresh;
  tbpermissao.Locate('chave', st, []);

end;

procedure TfcadastroP.capagarExit(Sender: TObject);
var
  st: string;
begin
  st := tbpermissao.FieldByName('chave').AsString;

  altera(tbpermissao, nil,'tbpermissao');
  tbpermissao.Cancel;
  tbpermissao.Refresh;
  tbpermissao.Locate('chave', st, []);

end;

procedure TfcadastroP.cconsultarExit(Sender: TObject);
var
  st: string;
begin
  st := tbpermissao.FieldByName('chave').AsString;

  altera(tbpermissao, nil,'tbpermissao');
  tbpermissao.Cancel;
  tbpermissao.Refresh;
  tbpermissao.Locate('chave', st, []);

end;

procedure TfcadastroP.btptodasClick(Sender: TObject);
var
  st: string;
  i,j: integer;
begin

       selecione('delete from tbpermissao where usuario = ' + quotedstr(eusuario.Text));

       for j := 1 to 2 do begin

          Listpermissao.ItemIndex := 0;
          for i:=-1 to Listpermissao.Items.Count -1 do  begin

              st := Listpermissao.Items[Listpermissao.ItemIndex];

                 if not tbpermissao.Locate('modulo', st, []) then
                        tbpermissao.Insert
                 else
                        tbpermissao.edit;

                        tbpermissao['modulo'] := st;
                        tbpermissao['usuario'] := tabela['nome'];
                        tbpermissao['inserir'] := 'S';
                        tbpermissao['alterar'] := 'S';
                        tbpermissao['consultar'] := 'S';
                        tbpermissao['apagar'] := 'S';

                        Listpermissao.ItemIndex := Listpermissao.ItemIndex + 1;

              //    showmessage(copy(tbpermissao.fieldbyname('modulo').asstring,1,1));

                     if (copy(tbpermissao.fieldbyname('modulo').asstring,1,1) <> '.') and
                        (copy(tbpermissao.fieldbyname('modulo').asstring,1,1) <> '')  then

                        if tbpermissao['chave'] = null then
                           grava(tbpermissao, nil,'tbpermissao')
                        else
                           altera(tbpermissao, nil,'tbpermissao');

                        tbpermissao.Cancel;
                     end;

                        tbpermissao.close;
                        tbpermissao.open;                     
                   end;

                //  showmessage(copy(tbpermissao.fieldbyname('modulo').asstring,1,1));

                  if (copy(tbpermissao.fieldbyname('modulo').asstring,1,1) <> '.') and
                     (copy(tbpermissao.fieldbyname('modulo').asstring,1,1) <> '')  then
                      grava(tbpermissao, nil,'tbpermissao');
                      tbpermissao.close;
                      tbpermissao.open;

end;

procedure TfcadastroP.btpnenhumaClick(Sender: TObject);
begin

        if not msg('',1) then abort;

  with fdm.query1 do
  begin
    Close;
               sql.Clear;
               sql.Add(  'delete from  tbpermissao where link = "' +
                   tabela.FieldByName('chave').AsString + '"');
    execsql;
  end;


  tbpermissao.Close;
  tbpermissao.Open;

end;

procedure TfcadastroP.btpcopiaClick(Sender: TObject);
var
st,nomes:string;
begin

          with fdm.query1 do begin
            Close;
               sql.Clear;
               sql.Add(  'select chave, nome from tbusuario order by chave');

            fdm.tbquery1.Close;
            fdm.tbquery1.Open;
            fdm.tbquery1.First;

            while not fdm.tbquery1.EOF do
            begin
              if fdm.tbquery1.FieldByName('chave').AsString  <>
                 tabela.FieldByName('chave').AsString then

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
              if fdm.tbquery1.FieldByName('nome').AsString =
                 tabela.FieldByName('nome').AsString then begin
                 Application.MessageBox('Este usuario é o atual!',
                                        'Atenção', 0 + MB_ICONWarning);
                 abort;
               end;

                // apaga o usuario
               sql.Clear;
               sql.Add(  'delete from tbpermissao where usuario = ' +
                               quotedstr(tabela.fieldbyname('nome').AsString));
                execsql;

                // seleciona o que vai copiar
               sql.Clear;
               sql.Add(  'select * from tbpermissao where usuario = '+
                               quotedstr(fdm.tbquery1.fieldbyname('nome').AsString));

                fdm.tbquery1.Close;
                fdm.tbquery1.open;

                //showmessage(inttostr(fdm.tbquery1.RecordCount));
                //showmessage(fdm.tbquery1['usuario']);

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
                tbpermissao.close;
                tbpermissao.open;

              end
              else begin
                ShowMessage('O código número não foi localizado.');
                abort;
              end;
            end  else abort;
          end;
end;

procedure TfcadastroP.TabusuarioShow(Sender: TObject);
begin
  Listpermissao.ItemIndex := 0;
end;

procedure TfcadastroP.SpeedButton4Click(Sender: TObject);
begin

              abortaacao(tabela,nil,'chave','','','','',0);
              Acesso1('Cadastro');
              fcadastrop:=tfcadastrop.Create(self,'vacina','',
                      'Preencha o campo!',
                      'data','nome' ,false);
              desativar(fcadastrop);

              fcadastrop.tabela.MasterSource := ds;
              fcadastrop.tabela.MasterFields := 'chave';
              fcadastrop.tabela.IndexFieldNames := 'link';
              fcadastrop.elocalizar.Enabled := false;

              fcadastrop.showmodal;

end;

procedure TfcadastroP.SpeedButton5Click(Sender: TObject);
begin
       abortaacao(tabela,nil,'chave','','','','',0);
       Acesso1('Cadastro');
       fcadastrog:=fcadastrog.Create(self,
                            'animalatendimento'// pagina (tab) e tabela
                            ,'' //seleciona a tabela, se nulo vale a tb acima
                            ,'data' // ordenar por nome (fica na grade)}
                            ,'numero', {campo1} true {requerido},true {duplica}
                            ,'numero', {campo2} true {requerido},true {duplica}
                            ,'','' // juntos não podem duplicar
                            ,false // este cadastro usa imagens (logo,foto)?
                            ,'ATENDIMENTOS');

              fcadastrog.tabela.MasterSource := ds;
              fcadastrog.tabela.MasterFields := 'chave';
              fcadastrog.tabela.IndexFieldNames := 'link';
              fcadastrog.elocalizar.hide;

      desativar(fcadastrog);
      fcadastrog.showmodal;

end;

procedure TfcadastroP.DBComboBox2Change(Sender: TObject);
begin
                if tabela['classicm'] = 'I' then begin
                   tabela.Edit;
                   tabela.FieldByName('indaliquota').Clear;
               end;

end;

procedure TfcadastroP.ecodfornKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=13) and (ecodforn.Modified) and (Length(ecodforn.Text)>0) then
  begin
    try
      with cbfornecedor do
        if Visible and Enabled then
          SetFocus;

      with fdm.query1 do
      begin
        Close;
        sql.Clear;
        sql.Add( 'select nome  from tbfornecedor where codigo='+QuotedStr(tabela.FieldByname('codfor').AsString));
        Open;
      end;

      tabela.edit;
      tabela['nome'] := fdm.query1.FieldByname('nome').asstring;

    finally
      fdm.Query1.Close;
    end;
  end;



end;

procedure TfcadastroP.cbfornecedorCloseUp(Sender: TObject);
begin
  tabela.Edit;
  tabela['codfor']:=Tbgrupo.FieldByName('codigo').AsInteger;
end;

procedure TfcadastroP.RadioGroup1Click(Sender: TObject);
begin
        if btnnovo.Enabled then
           filtrodocExecute(self);

end;

procedure TfcadastroP.RadioGroup2Click(Sender: TObject);
begin
        if btnnovo.Enabled then
           filtrodocExecute(self);

end;

procedure TfcadastroP.SpeedButton13Click(Sender: TObject);
var
imp:string;

tmfonte:integer;

begin
        if RadioGroup1.ItemIndex = 0 then begin
          imp := '1';
          if inputquery('Imprimir', 'Digite uma opção de impressão:' + #13 + #13 +
                            '1 = Imprimir listagem'+#13+
                            '2 = Imprimir por grupo', imp) then else abort;

          if (imp <>'1') and (imp <>'2') then abort;
       end;


               application.CreateForm(tfreports,freports);

               freports.qimpressao.DataSource := ds;
               freports.rl.Height:= tmfonte + 2;

               campo(40,'nome','Nome do Feriado',0,ds,false);
               campo(10,'data','Dia/Mês',0,ds,false);

               freports.ldatahora.Text := uppercase(formatdatetime('dddd',date) + ', '+
                                           formatdatetime('dd/mm/yy',date) +' '+
                                           timetostr(now) +'  '+
                                          'Pag.: # de #' + '  -  '+ inttostr(tabela.RecordCount)+' Linhas');

               freports.logo := true;

               freports.ltitulo.Caption := 'DATAS COMEMORATIVAS';
               freports.M2.Lines.Clear;
               freports.lqtd.Hide;

                if imp = '1' then begin
                   freports.lgrupo2.Destroy;
                   freports.ggrupo2.DataFields:='';
                end else begin
                  tabela.IndexFieldNames:='grupo;nome';
                  freports.lgrupo2.DataSource := ds;
                  freports.ggrupo2.DataFields := 'grupo';
                  freports.lgrupo2.Text := 'Grupo: ' ;
                  freports.lgrupo2.DataField :='grupo';

                end;

                   tabela.DisableControls;

                   freports.qimpressao.DataSource := ds;

                  imp := '1';
                  inputquery('Imprimir', 'Digite uma opção de impressão:' + #13 + #13 +
                             '1 = Imprimir'+#13+
                             '2 = Exportar... ', imp);

                 if imp ='1' then
                    freports.qimpressao.PreviewModal
                 else
                    exportarRL(freports.qimpressao,'nome', 'email@email.com');


                   freports.release;
                   tabela.EnableControls;
                   tabela.IndexFieldNames:='nome';

end;

procedure TfcadastroP.SpeedButton16Click(Sender: TObject);
begin
        fmenu.calccalendarioExecute(self);
end;

procedure TfcadastroP.SpeedButton15Click(Sender: TObject);
begin
              fcadastrop.Close;

              Acesso1('Cadastro');
              fcadastrop:=tfcadastrop.Create(self,'grupodata', '',
                      'Preencha o campo!',
                      'nome','nome', True );
              desativar(fcadastrop);
              fcadastrop.showmodal;
              fcadastrop.Close;

end;

procedure TfcadastroP.Label115Click(Sender: TObject);
begin
        if btneditar.Enabled then begin
           if tabela['chave'] = null then
              btnnovoclick(self)
           else begin
              btneditarclick(self);
              tabela.Edit;
           end;   
        end;
        colordialog1.Execute;
        tabela.edit;
        tabela['cor'] := colordialog1.Color;

end;

procedure TfcadastroP.grupodocExecute(Sender: TObject);
var
nometab:string;
radio:TRadioGroup;
begin


       if uppercase(pagina) ='TABDATACOMEMORATIVA' then begin
          nometab:= 'tbgrupodata';
          radio := RadioGroup1;
       end;

        with fdm.query2 do begin
             close;
                sql.Clear;
                sql.add( 'select nome from '+nometab);
             open;

                radio.Items.Clear;
                radio.Items.Add('TODOS');
                radio.ItemIndex :=0;

             first;

             while not eof do begin
                   radio.Items.Add(fieldbyname('nome').AsString);
                   next;
             end;

             close;
        end;


end;

procedure TfcadastroP.filtrodocExecute(Sender: TObject);
var
grupo,str:string;
begin


       if 
          (uppercase(pagina) ='TABDATACOMEMORATIVA') then begin


       if (uppercase(pagina) ='TABDATACOMEMORATIVA') then begin

           if RadioGroup2.itemindex <2 then
              if RadioGroup1.ItemIndex >0 then
                grupo := ' and  tipo = '+quotedstr(RadioGroup2.Items[RadioGroup2.itemindex])
              else
                grupo := ' where tipo = '+quotedstr(RadioGroup2.Items[RadioGroup2.itemindex]);

          if RadioGroup1.itemindex = 0 then
             str := 'select * from tbdatacomemorativa '  + grupo
          else
             str := 'select * from tbdatacomemorativa where grupo = ' +
                     quotedstr(RadioGroup1.Items[RadioGroup1.itemindex]) + grupo;
      end;


          sqlC.sql.Clear;
          sqlC.sql.add(str);
//       showmessage(str) ;

       tabela.Close;
       tabela.Open;
       modo := 'N';
       FORMATAREXECUTE(SELF);
    end;


end;

procedure TfcadastroP.grupogClick(Sender: TObject);
var
str:string;
begin
          abortar(edata);

       case grupog.itemindex of
            0  : str := 'select * from tbfone';
            1  : str := 'select chave,data,nome,email,obs,ramal,ddd,fone3,fone2,fone,'+
                        'fax from tbcliente '+
                        ' where fone is not null or fone2 is not null or fone3 is not null or fax is not null';
            2  : str := 'select chave,data,nome,email,obs,ramal,ddd, " " as fone3,fone2,fone,'+
                        'fax from tbfornecedor'+
                        ' where fone is not null or fone2 is not null  or fax is not null';
            3  : str := 'select chave,admissao as data,nome,email,obs," " as ramal,ddd, " " as fone3,celular as fone2,fone,'+
                        ' " " as fax from tbfuncionario'+
                        ' where fone is not null or celular is not null ';
       end;

          sqlC.sql.Clear;
          sqlC.sql.add(str);

       tabela.Close;
       tabela.Open;


       btnnovo.Enabled := grupog.ItemIndex = 0;
       btneditar.Enabled := grupog.ItemIndex = 0;
       btnapagar.Enabled := grupog.ItemIndex = 0;


end;

procedure TfcadastroP.SpeedButton666Click(Sender: TObject);
var
LOC,imp,STR:string;

begin

       case grupog.itemindex of
            0  : str := '';
            1  : str := 'CLIENTES - ';
            2  : str := 'FORNECEDORES - ';
            3  : str := 'FUNCIONÁRIOS - ';
       end;


  if tabela['chave'] = null then
  begin
    Application.MessageBox('Você não tem registro selecionado para deletar!',
      'Atenção', 0 + MB_ICONWarning);
    abort;
  end;

        loc:= tabela.fieldbyname('chave').AsString;
        filtrar(DBGrid1,tabela,nil,'chave');

        application.CreateForm(tfreports,freports);

              freports.qimpressao.DataSource := ds;
              freports.ggrupo2.DataFields := '';
              freports.lgrupo2.Text :='';
              freports.lgrupo2.Destroy;


           freports.lqtd.Visible := false;

           freports.ltm.Font.Size :=  10;

           campo(40,'nome','Nome',0,ds,false);
           campo(4,'ddd','DDD',0,ds,false);
           campo(9,'fone','Fone',0,ds,false);
           campo(9,'fone2','Fone',0,ds,false);
           campo(9,'fone3','Celular',0,ds,false);
           campo(9,'fax','Fax',0,ds,false);
           campo(5,'ramal','Ram.',0,ds,false);
           campo(20,'email','E-Mail',0,ds,false);
           //criacampo(30,10,'Obs','obs',0,ds);


        freports.ldatahora.Text := uppercase(formatdatetime('dddd',date) + ', '+
                                    formatdatetime('dd/mm/yy',date) +' '+
                                    timetostr(now) +'  '+
                                    'Pag.: # de #' + '  -  '+ inttostr(tabela.RecordCount)+' Linhas');


           freports.logo := rlogo.Checked;
           freports.r5.Caption := STR+ 'LISTA DE TELEFONES';

           freports.M2.Lines.Clear;

          imp := '1';
          inputquery('Imprimir', 'Digite uma opção de impressão:' + #13 + #13 +
                            '1 = Imprimir'+#13+
                            '2 = Exportar... ', imp);

           tabela.DisableControls;
           if imp='2' then
              exportarRL(freports.qimpressao,'nome', 'email@email.com')

           else
             freports.qimpressao.PreviewModal;

           freports.release;
           tabela.EnableControls;

                   tabela.Filtered := false;
        tabela.Locate('chave',loc,[]);

end;

procedure TfcadastroP.DBRadioGroup1Change(Sender: TObject);
begin
        if DBRadioGroup1.ItemIndex =0 then begin
           Label122.show;
           DBEdit76.show;
           Label124.show;
           DBEdit80.show;
           lcart.show;
           ccart.show;
           Label24.Show;
           DBEdit4.Show;
           DBEdit5.Show;
           DBRadioGroup4.Show;
        end else begin
           Label122.hide;
           DBEdit76.hide;
           Label124.hide;
           DBEdit80.hide;
           lcart.hide;
           ccart.hide;
           Label24.hide;
           DBEdit4.hide;
           DBEdit5.hide;
           DBRadioGroup4.hide;
        end;

        if DBRadioGroup1.ItemIndex =2 then begin
           Label122.show;
           DBEdit76.show;
        end;


        if DBRadioGroup1.ItemIndex =0 then
           Label118.Caption :='Nome do Cartão'
        else if DBRadioGroup1.ItemIndex =1 then
           Label118.Caption :=  'Nome do Banco'
        else if DBRadioGroup1.ItemIndex =2 then
           Label118.Caption :=  'Nome da Conta';

end;

procedure TfcadastroP.DBRadioGroup3Change(Sender: TObject);
begin
        if DBRadioGroup3.ItemIndex =0 then begin
           Label38.Caption :='Nome do Banco';
           Label123.show;
           DBEdit77.show;
           DBEdit78.show;
           DBEdit79.show;
        end else begin
           Label38.Caption :='Nome da Conta';        
           Label123.hide;
           DBEdit77.hide;
           DBEdit78.hide;
           DBEdit79.hide;
        end;


end;

procedure TfcadastroP.DBMemo5Enter(Sender: TObject);
begin
        keypreview := false;
end;

procedure TfcadastroP.DBMemo5Exit(Sender: TObject);
begin
        keypreview := true;
end;

procedure TfcadastroP.DBMemo1Enter(Sender: TObject);
begin
        keypreview := false;
end;

procedure TfcadastroP.DBMemo1Exit(Sender: TObject);
begin
         keypreview := true;
end;

procedure TfcadastroP.DBMemo4Enter(Sender: TObject);
begin
        keypreview := false;
end;

procedure TfcadastroP.DBMemo4Exit(Sender: TObject);
begin
        keypreview := true;
end;

procedure TfcadastroP.BitBtn1Click(Sender: TObject);
var
m1:tmemo;
ini:tinifile;
where,ipv,registro,data,syskey,modo :string;
cx:boolean;
begin                    
        Ini := TInifile.Create('c:\caixa.ini');
        cx  := lowercase(Ini.Readstring('Rede', 'databasename', 'caixa')) = 'caixa';
        ini.free;

                              
         abortar(edata);

          ipv := ip;

          if Application.MessageBox('Deseja atualizar? ',
                                    'Confirme', 4 + MB_ICONQUESTION) = idno then abort;

              with fdm.query1 do begin
                   close;
                   sql.Clear;
                   sql.Add('select registro, decode(data,"999")as data, modo,'+
                           ' decode(syskey,"999")as syskey from tbconfig');
                   open;
                   registro := fieldbyname('registro').AsString;
                   data := fieldbyname('data').AsString;
                   syskey := fieldbyname('syskey').AsString;
                   modo := fieldbyname('modo').AsString;
                   close;
                end;

          m1 := tmemo.create(nil);
          lag1.Show;
          lag1.Update;

          tabela.First;
          while not tabela.Eof do begin

                if tabela['atualiza'] = 'S' then begin
                    if not FileExists(pchar(tabela.FieldByName('caminho').AsString+'caixa.exe')) then begin
                       lag1.Hide;
                       showmessage(pchar('Este caminho "' +tabela.FieldByName('caminho').AsString +  '" não é válido.'));
                       abort;
                    end;
                end;

                if cx then begin
                   databasenet:='caixa';
                   fdm.conectnet.Disconnect;
                   ipnet := tabela.fieldbyname('ip').AsString;
                   try
                   fdm.conectnet.Connect;
                   except
                          lag1.Hide;
                          showmessage(pchar('IP/Nome "' +tabela.FieldByName('ip').AsString +  '" não é válido.'));
                          databasenet:='sigac';
                          abort;
                   end;
                end;

               tabela.Next;
          end;


          //seleciona prod
          if rproduto.Checked then begin

             if calccusto then
                where := ' where ativoV = "S"  and pdv = "S" ';

             fdm.query1.sql.clear;
             fdm.query1.sql.add( 'select codigo,descricao,vrunit,'+
                            ' vrvenda,estoque,imposto,iniciopromocao,validade,vrpromocao, vratacado, '+
                            ' cficmE,pesagem ,reducaobasecalc,un,promocao ,desconto,prateleira,box,item,aplicacao, '+
                           '  tamanho, cor, custocompraunit, pis, confins, codigooriginal, codigobarras from tbproduto ' + where);

             tbprod.Open;

             fdm.query1.sql.Clear;
             fdm.query1.sql.add('select * from tbdesconto ');
             tbdesconto.Open;
          end;

         if rcliente.Checked then begin

            fdm.query1.sql.Clear;
            fdm.query1.sql.add( 'select * from tbcliente ');
             tbcli.Open;
         end;

         if rfuncionario.Checked then begin
            fdm.query1.sql.clear;
            fdm.query1.sql.add( 'select codigo,nome,usuario,tipocomissao,'+
                           'modocalcula,vr1,vr2,vr3,comissao, '+
                           'comissao2, comissao3 from tbfuncionario ');
             tbfun.Open;
         end;

        if rusuario.Checked then begin
           fdm.query1.SQL.clear;
           fdm.query1.SQL.Add('select * from tbusuario ');

             tbusu.Open;

           fdm.query1.SQL.clear;
           fdm.query1.SQL.Add( 'select * from tbpermissao where '+
                          ' modulo = "Vendas" or '+
                          ' modulo = "Caixa" or '+
                          ' modulo = "Transações Fiscais" or '+
                          ' modulo = "Abrir Gaveta"  ');
             tbper.Open;
        end;

        if rempresa.Checked then begin
           fdm.query1.SQL.clear;
           fdm.query1.SQL.Add( 'select * from tbempresa ');
           tbempresa.open;
       end;


           fdm.query1.SQL.clear;
           fdm.query1.SQL.Add( 'select * from tbindecf ');

        tbindecf.open;
        tbindecf.SaveToFile(pchar(ecaminho.Text + 'tb/tbindecf.cds'));

           fdm.query1.SQL.clear;
           fdm.query1.SQL.Add( 'select * from tbicms ');
        tbicm.open;
        tbicm.SaveToFile(pchar(ecaminho.Text + 'tb/tbicms.cds'));


        fdm.query1.SQL.clear;
        fdm.query1.SQL.Add( 'select * from tbconta ');
        tbconta.open;
        tbconta.SaveToFile(pchar(ecaminho.Text + 'tb/tbconta.cds'));


          tabela.First;
          while not tabela.Eof do begin

               if tabela['atualiza'] = 'S' then begin

                  with fdm.query1 do begin
                       close;

                       if rproduto.Checked then begin
                          tbprod.SaveToFile(pchar(ecaminho.Text + 'tb/tbproduto.cds'));
                          tbdesconto.SaveToFile(pchar(ecaminho.Text + 'tb/tbdesconto.cds'));
                       end;

                        if rcliente.Checked then
                           tbcli.SaveToFile(pchar(ecaminho.Text + 'tb/tbcliente.cds'));

                        if rfuncionario.Checked then
                           tbfun.SaveToFile(pchar(ecaminho.Text + 'tb/tbfuncionario.cds'));

                       if rusuario.Checked then begin
                          tbusu.SaveToFile(pchar(ecaminho.Text + 'tb/tbusuario.cds'));
                          tbper.SaveToFile(pchar(ecaminho.Text + 'tb/tbpermissao.cds'));
                       end;

                        if rempresa.Checked then
                           tbempresa.SaveToFile(pchar(ecaminho.Text + 'tb/tbempresa.cds'));

                       ///////
                       if cx then begin
                        if raliq.Checked then begin
                           with fdm.snet do begin
                                sql.Clear;
                                sql.add('delete from tbicms');
                                execsql;

                                sql.Clear;
                                sql.add('delete from tbindecf');
                                execsql;

                                tbicm.First;
                                while not tbicm.Eof do begin

                                sql.Clear;
                                sql.add('insert into tbicms (chave,descricao,'+
                                              ' imposto,sittributaria) values( '+
                                              quotedstr(tbicm.fieldbyname('chave').AsString)+
                                              ','+quotedstr(tbicm.fieldbyname('descricao').AsString)+
                                              ','+quotedstr(tbicm.fieldbyname('imposto').AsString)+
                                              ','+quotedstr(tbicm.fieldbyname('sittributaria').AsString)+')');
                                   execsql;
                                   tbicm.Next;
                                end;


                                tbindecf.First;
                                while not tbindecf.Eof do begin

                                sql.Clear;
                                sql.add('insert into tbindecf (link,imposto,'+
                                              ' indecf,numimpecf) values( '+
                                              quotedstr(tbindecf.fieldbyname('link').AsString)+
                                              ','+quotedstr(tbindecf.fieldbyname('imposto').AsString)+
                                              ','+quotedstr(tbindecf.fieldbyname('indecf').AsString)+
                                              ','+quotedstr(tbindecf.fieldbyname('numimpecf').AsString)+')');
                                   execsql;
                                   tbindecf.Next;
                                end;
                           end;
                        end;
                        //end imposto



                      databasenet:='caixa';

                           with fdm.snet do begin
                                sql.Clear;
                                sql.Add('update tbconfig set '+
                                        'data = encode('+ quotedstr(data) + ',"999") '+
                                        ',modo = '+quotedstr(modo)+
                                        ',registro = '+quotedstr(registro)+
                                        ', syskey = encode('+quotedstr(syskey)+ ',"999")');
                                //debugstr(fdm.snet);
                                execsql;
                            end;


                       ///////
                        if rconta.Checked then begin
                           with fdm.snet do begin
                                sql.Clear;

                                sql.Clear;
                                sql.add('delete from tbconta');
                                execsql;


                                tbconta.First;
                                while not tbconta.Eof do begin

                                sql.Clear;
                                sql.add('insert into tbconta (chave,codigo,'+
                                                 ' descricao, tp,taxa,recebimento,conta) values( '+
                                              quotedstr(tbconta.fieldbyname('chave').AsString)+
                                              ','+quotedstr(tbconta.fieldbyname('codigo').AsString)+
                                              ','+quotedstr(tbconta.fieldbyname('descricao').AsString)+
                                              ','+quotedstr(tbconta.fieldbyname('tp').AsString)+
                                              ','+realdblstr(tbconta.fieldbyname('taxa').Asfloat)+
                                              ','+realdblstr(tbconta.fieldbyname('recebimento').Asfloat)+
                                              ','+quotedstr(tbconta.fieldbyname('conta').AsString)+')');
                                   execsql;
                                   tbconta.Next;
                                end;


                           end;
                        end;
                      end;
                        //end conta

                       m1.lines.SaveToFile(pchar(ecaminho.Text + 'tb/true'));

                  end;
               end;

               tabela.Next;
          end;

          tbprod.close;
          tbcli.close;
          tbfun.close;
          tbusu.close;
          tbper.close;
          tbconf.close;
          tbicm.close;
          tbindecf.close;
          tbempresa.close;
          tbdesconto.close;
          m1.destroy;
          lag1.Hide;
          databasenet:='sigac';
          showmessage('Atualizado(s)!!!');
                fdm.conectnet.Database := 'sigac';          
end;

procedure TfcadastroP.Label143Click(Sender: TObject);
begin

         cadp ('tbassunto', '','',       //tabela que vai usar ou cod sql na 2ª + titulo
              'assunto','',           //campos que nao devem duplicar
              '','','',                 //combo1(campo,tabela,nomecampotabela)
              '','','',                 //combo2(campo,tabela,nomecampotabela)
              '','','',
              '',                     //campo auto incremento
              '',                       //campo auto incremento
              '',                       //campo que nao ser nulo
              '',              
              3,0);                       //onde vai comecar a criar os campos + link

          combosExecute(self);
end;

procedure TfcadastroP.Label19Click(Sender: TObject);
var
imp:string;
begin

  imp := '1';
  if inputquery('Imprimir', 'Digite uma opção de impressão:' + #13 + #13 +
    '1 = Imprime '+#13+
    '2 = Exportar... '+#13+
    'Esc = Cancela ', imp) then  else abort;


{     if     (uppercase(pagina)='TABFOLLOWUPP') then begin
            RLDBText31.DataSource := fprodutolocaliza.ds;
            RLDBText31.DataField := 'descricao';
            RLLabel2.Hide;
            RLDBText1.Hide;
            RLLabel4.Hide;
            RLDBText3.Hide;
     end

     else} if(uppercase(pagina)='TABFOLLOWUPF') then begin
            RLDBText31.DataSource := fcadg.ds;
            RLDBText1.DataSource := fcadg.ds;
            RLDBText3.DataSource := fcadg.ds;
     end


     else if (uppercase(pagina)='TABFOLLOWUPT')then begin
            RLDBText31.DataSource := fcadg.ds;
            RLDBText1.DataSource := fcadg.ds;
            RLDBText3.DataSource := fcadg.ds;
     end;



       if imp = '1' then
          qgrupo.Previewmodal

       else if imp = '2' then
              exportarRL(qgrupo,'nome', 'email@email.com');

end;

procedure TfcadastroP.DBEdit93KeyPress(Sender: TObject; var Key: Char);
begin
        if (key = #8) or (key=#6) then begin
            tabela.Edit;
            tabela['retorno'] :=null;
        end;
end;

procedure TfcadastroP.Label21Click(Sender: TObject);
begin
        tabela.IndexFieldNames := 'dt';
end;

procedure TfcadastroP.SpeedButton6Click(Sender: TObject);
begin
       if btngravar.Enabled = false then
          msg('#Você não está no modo de edição.',0);

        fdm.OpenDialog.FileName := '';
        fdm.OpenDialog.Execute;
        tabela.edit;
        if fdm.OpenDialog.FileName <> '' then
           tabela['caminho'] :=substitui(ExtractFilePath(fdm.OpenDialog.FileName),'\','/');
end;

procedure TfcadastroP.cbfornecedorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  tabela.Edit;
  tabela['codfor']:=Tbgrupo.FieldByName('codigo').AsInteger;

end;

end.



