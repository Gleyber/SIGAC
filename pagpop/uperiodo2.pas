unit uperiodo2;

interface

uses
  inifiles, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, DBClient, StdCtrls, Buttons, Mask, DBCtrls,
  ActnList, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls,
  Grids, DBGrids, ExtDlgs, dbcgrids, RLReport, jpeg,mapimail, ZConnection,shellapi;

type
  Tfperiodo2 = class(TForm)
    PageControl1: TPageControl;
    Tababrecaixa: TTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit3: TMaskEdit;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    encaixa: TEdit;
    evrinicial: TEdit;
    tbcaixagrupo: TClientDataSet;
    tbcaixagrupochave: TIntegerField;
    tbcaixagrupomodo: TStringField;
    tbcaixagruponumerocaixa: TIntegerField;
    tbcaixagrupodatainicial: TDateField;
    tbcaixagrupodatafinal: TDateField;
    tbcaixagrupohoraabertura: TTimeField;
    tbcaixagrupohorafechamento: TTimeField;
    tbcaixagrupousuario: TStringField;
    tbcaixagrupovalorinicial: TFloatField;
    tabbanco: TTabSheet;
    Label4: TLabel;
    Label8: TLabel;
    bc2: TDBEdit;
    Label9: TLabel;
    bc7: TDBEdit;
    Label10: TLabel;
    bc3: TDBComboBox;
    Label11: TLabel;
    bc5: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    bc6: TDBEdit;
    bc4: TDBComboBox;
    bc1: TDBComboBox;
    Button1: TButton;
    ActionList1: TActionList;
    _tababrecaixa: TAction;
    _tabbanco: TAction;
    tbbanco: TClientDataSet;
    tbbancochave: TIntegerField;
    tbbancodata: TDateField;
    tbbancohora: TTimeField;
    tbbancohistorico: TStringField;
    tbbancodc: TStringField;
    tbbancovalor: TFloatField;
    tbbancoconta: TStringField;
    tbbancomodulo: TStringField;
    tbbancodocumento: TStringField;
    tbbancolinkvenda: TIntegerField;
    dsbanco: TDataSource;
    tbbancotipo: TStringField;
    tabbancoc: TTabSheet;
    Button2: TButton;
    Label19: TLabel;
    cconta: TDBLookupComboBox;
    Label22: TLabel;
    d1: TMaskEdit;
    d2: TMaskEdit;
    BitBtn4: TBitBtn;
    _tabbancoc: TAction;
    r1: TRadioGroup;
    rvisualiza: TCheckBox;
    SpeedButton1: TSpeedButton;
    tbbancousu: TIntegerField;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    tbbancodtcompensacao: TDateField;
    taborcqtd: TTabSheet;
    Button3: TButton;
    DBText1: TDBText;
    Label14: TLabel;
    eqtd: TDBEdit;
    BitBtn5: TBitBtn;
    _taborcqtd: TAction;
    tabponto: TTabSheet;
    _tabponto: TAction;
    Label15: TLabel;
    enome: TComboBox;
    etipo: TRadioGroup;
    Button4: TButton;
    tabempresa: TTabSheet;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Panel1: TPanel;
    vimage: TImage;
    enempresa: TDBEdit;
    eendereco: TDBEdit;
    ebairro: TDBEdit;
    emunicipio: TDBEdit;
    euf: TDBComboBox;
    ecnpj: TDBEdit;
    eie: TDBEdit;
    efone1: TDBEdit;
    efone2: TDBEdit;
    eemail: TDBEdit;
    efax: TDBEdit;
    esite: TDBEdit;
    eddd: TDBEdit;
    ecep: TDBEdit;
    ENumero: TDBEdit;
    EComplemento: TDBEdit;
    EContato: TDBEdit;
    EFantasia: TDBEdit;
    DBEdit4: TDBEdit;
    DBComboBox1: TDBComboBox;
    tabela: TClientDataSet;
    tabelacont: TIntegerField;
    ds: TDataSource;
    _tabempresa: TAction;
    tabsel: TTabSheet;
    _tabsel: TAction;
    DBCtrlGrid1: TDBCtrlGrid;
    DBText2: TDBText;
    Tabcorrecal: TTabSheet;
    correcao: TRLReport;
    RLBand15: TRLBand;
    RLDetailGrid3: TRLDetailGrid;
    RLBand51: TRLBand;
    RLMemo1: TRLMemo;
    RLMemo6: TRLMemo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo5: TRLMemo;
    RLMemo7: TRLMemo;
    rl1: TRLMemo;
    rl2: TRLMemo;
    rl3: TRLMemo;
    RLMemo10: TRLMemo;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLMemo11: TRLMemo;
    rl4: TRLMemo;
    rl5: TRLMemo;
    l2: TRLLabel;
    l3: TRLLabel;
    l4: TRLLabel;
    l5: TRLLabel;
    l6: TRLLabel;
    l7: TRLLabel;
    l8: TRLLabel;
    Button6: TButton;
    ec3: TMaskEdit;
    Label38: TLabel;
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
    Label39: TLabel;
    ec7: TEdit;
    ec9: TEdit;
    ec8: TEdit;
    ec10: TEdit;
    Label40: TLabel;
    Label41: TLabel;
    ec11: TEdit;
    ec13: TEdit;
    ec12: TEdit;
    ec14: TEdit;
    ec15: TEdit;
    ec16: TEdit;
    _Tabcorrecal: TAction;
    l1: TRLLabel;
    DBEdit5: TDBEdit;
    Label42: TLabel;
    _tabplanalmed: TAction;
    Label48: TLabel;
    bc01: TComboBox;
    btetqE: TSpeedButton;
    btnnovoE: TSpeedButton;
    btngravarE: TSpeedButton;
    btnapagarE: TSpeedButton;
    btvE: TSpeedButton;
    btiE: TSpeedButton;
    btnalterarE: TSpeedButton;
    imemp: TAction;
    btncancelarE: TSpeedButton;
    eemp: TDBComboBox;
    Label49: TLabel;
    Label50: TLabel;
    btnfeE: TSpeedButton;
    DBEdit2: TDBEdit;
    vitalcred: TTabSheet;
    gradevital: TDBGrid;
    Button5: TButton;
    StaticText1: TStaticText;
    _vitalcred: TAction;
    Label29: TLabel;
    DBEdit3: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    vitalcred1: TTabSheet;
    pmenu1: TPanel;
    Label51: TLabel;
    Label52: TLabel;
    btvitaltransf: TSpeedButton;
    mvital2: TMaskEdit;
    mvital1: TMaskEdit;
    gradevital1: TDBGrid;
    rgvital2: TRadioGroup;
    periodovital1: TAction;
    _vitalcred1: TAction;
    rgvital: TRadioGroup;
    btvitalimp: TSpeedButton;
    Tabpaf: TTabSheet;
    paf1: TBitBtn;
    paf2: TBitBtn;
    paf3: TBitBtn;
    paf4: TBitBtn;
    paf5: TBitBtn;
    paf6: TBitBtn;
    paf7: TBitBtn;
    paf8: TBitBtn;
    paf9: TBitBtn;
    paf10: TBitBtn;
    paf11: TBitBtn;
    paf12: TBitBtn;
    paf15: TBitBtn;
    paf13: TBitBtn;
    paf14: TBitBtn;
    Label43: TLabel;
    luser: TEdit;
    lpassword: TEdit;
    Label44: TLabel;
    lhostpaf: TLabel;
    lhostname: TEdit;
    ldatabase: TEdit;
    Label46: TLabel;
    _Tabpaf: TAction;
    q: TZQuery;
    conector: TZConnection;
    btnsair: TBitBtn;
    BitBtn2: TBitBtn;
    paf16: TBitBtn;
    tbcaixagrupoemp: TIntegerField;

    procedure conectpaf;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure _tababrecaixaExecute(Sender: TObject);
    procedure _tabbancoExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure _tabbancocExecute(Sender: TObject);
    procedure r1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure _tabpontoExecute(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure vimageClick(Sender: TObject);
    procedure _tabempresaExecute(Sender: TObject);
    procedure _tabselExecute(Sender: TObject);
    procedure DBText2Click(Sender: TObject);
    procedure DBCtrlGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button6Click(Sender: TObject);
    procedure _TabcorrecalExecute(Sender: TObject);
    procedure ecepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bc3Change(Sender: TObject);
    procedure btetqEClick(Sender: TObject);
    procedure btnnovoEClick(Sender: TObject);
    procedure btnalterarEClick(Sender: TObject);
    procedure btngravarEClick(Sender: TObject);
    procedure btnapagarEClick(Sender: TObject);
    procedure btvEClick(Sender: TObject);
    procedure imempExecute(Sender: TObject);
    procedure btiEClick(Sender: TObject);
    procedure btncancelarEClick(Sender: TObject);
    procedure ecnpjKeyPress(Sender: TObject; var Key: Char);
    procedure ecnpjExit(Sender: TObject);
    procedure btnfeEClick(Sender: TObject);
    procedure _vitalcredExecute(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure mvital2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure periodovital1Execute(Sender: TObject);
    procedure rgvital2Click(Sender: TObject);
    procedure _vitalcred1Execute(Sender: TObject);
    procedure btvitaltransfClick(Sender: TObject);
    procedure gradevital1Enter(Sender: TObject);
    procedure gradevital1Exit(Sender: TObject);
    procedure btvitalimpClick(Sender: TObject);
    procedure paf1Click(Sender: TObject);
    procedure paf6Click(Sender: TObject);
    procedure paf14Click(Sender: TObject);
    procedure paf11Click(Sender: TObject);
    procedure paf13Click(Sender: TObject);
    procedure Label46Click(Sender: TObject);
    procedure _TabpafExecute(Sender: TObject);
    procedure paf15Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure paf16Click(Sender: TObject);
    procedure gradevital1TitleClick(Column: TColumn);
  private
  tot : double;
  importado:boolean;
    { Private declarations }
  public
  page,controle,controle2,controle3,controle4,controle5,documento,historico,dc:string;
  valor:double;

    { Public declarations }
  end;

var
  fperiodo2: Tfperiodo2;

implementation

uses udm,funcoes, umanu, upedido, ufinanceirovalor, uConnect;

{$R *.dfm}




procedure Tfperiodo2.conectpaf;
begin
      conector.Database := ldatabase.Text ;
      conector.HostName := lhostname.Text ;
      conector.password := lpassword.Text ;
      conector.User     := luser.Text ;
      conector.Protocol := 'firebird-2.0';

      conector.Disconnect;
      try
         conector.Connect;
      except msg('#Não foi possível conectar.',0);
      end;
end;


procedure Tfperiodo2.FormClose(Sender: TObject; var Action: TCloseAction);
var
nfe:string;
ini:tinifile;
begin

        if page = 'tabpaf' then begin
           Ini := TInifile.Create(conf_local);
           Ini.WriteString('pafecf', 'ldatabase',ldatabase.Text );
           Ini.WriteString('pafecf', 'lhostname', lhostname.Text);
           Ini.WriteString('pafecf', 'lpassword', lpassword.Text);
           Ini.WriteString('pafecf', 'luser', luser.Text);
        end;


        if page = 'vitalcred1' then begin
            fdm.conectnet.Disconnect;
            ipnet := '';
            databasenet := 'sigac';
            fdm.conectnet.User := 'root';
            fdm.conectnet.Password := '';
            fdm.tbnet.Close;
            fdm.tbnet.Filtered := false;
            fdm.tbnet.IndexFieldNames :='';
            fdm.Query1.close;
        end;



        if (page = 'tabbancoc') or (page = 'tabsel') then
           fdm.tbquery1.close;
           
        fperiodo2 := nil;
        Release;
end;

procedure Tfperiodo2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
          if (key = 13) or (key = vk_down) then
             Perform(wm_nextdlgctl, 0,0);
          if (key = 27) or (key = vk_up) then
             Perform(wm_nextdlgctl, 1,0);

          if (key = vk_insert) and (page='tabbanco') then Button1Click(self);

end;

procedure Tfperiodo2.FormShow(Sender: TObject);
var
i,j:integer;
begin
         fdm.query1.sql.clear;
//         fdm.sg.sql.clear;

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

        _tababrecaixaExecute(self);
        _tabbancoExecute(self);
        _tabbancocExecute(self);
//        _taborcqtdExecute(self);
        _tabpontoExecute(self);
        _tabempresaExecute(self);
        _tabselExecute(self);
        _TabcorrecalExecute(self);
        _vitalcredExecute(self);
        _vitalcred1Execute(self);
        _TabpafExecute(self);

end;

procedure Tfperiodo2.btnsairClick(Sender: TObject);
begin
        close;
end;

procedure Tfperiodo2._tababrecaixaExecute(Sender: TObject);
begin
            if page = 'tababrecaixa' then begin
               maskedit1.Text := datetostr(now);
               maskedit3.Text := timetostr(now);
               edit2.Text := usuario;
               fdm.tbconfig.Open;
               evrinicial.Text :=  fdm.tbconfig.fieldbyname('valorinicial').AsString;
               fdm.tbconfig.close;

               if responsavel = 'MAURICIO' then
                  evrinicial.ReadOnly := true;

               encaixa.SetFocus;
               caption := 'Abrir Caixa';
               btnsair.Parent := tababrecaixa;
               btnsair.Top := 81;
               btnsair.left := 158;
            end;

end;

procedure Tfperiodo2._tabbancoExecute(Sender: TObject);
begin

        if  page = 'tabbanco' then begin
            selecione('select chave as conta from tbconta order by conta');

            while not sqlpub.Eof do begin
                  if sqlpub.fieldbyname('conta').AsString <> '' then
                     bc1.Items.Add(sqlpub.fieldbyname('conta').AsString);
                  sqlpub.Next;
            end;

          bc01.Items := bc1.Items;
          tbbanco.Close;
          tbbanco.CreateDataSet;
          tbbanco.Open;
          tbbanco.Insert;

          tbbanco['data'] := datetostr(now);
          tbbanco['dtcompensacao'] := datetostr(now);
          tbbanco['hora'] := timetostr(now);
          tbbanco['tipo'] := 'DINHEIRO';

          if historico <> '' then begin
             tbbanco['dc'] :=dc;
             tbbanco['valor'] :=valor;
             tbbanco['historico'] :=historico;
             tbbanco['documento'] :=documento;
             bc4.enabled := false;
             bc5.readonly:=true;
             bc6.readonly:=true;
             bc3.enabled:=false;
             tbbanco['modulo'] := codloc;
             codloc :='';
             tbbanco['linkvenda'] := controle;
          end;


          sqlpub := nil;
          bc1.ItemIndex :=0;
          bc1.SetFocus;
          btnsair.Parent := tabbanco;
          btnsair.Top := 109;
          btnsair.left := 263;
          Label48.Hide;
          bc01.Hide;
       end;
end;

procedure Tfperiodo2.Button1Click(Sender: TObject);
var
numero:string;
transf:boolean;
begin
        focuscontrol(nil);

       if (bc3.ItemIndex = 4) and (bc01.ItemIndex <=-1) then
          msg('#Selecione "Transferir para",',0);

       if (bc3.ItemIndex = 4) and (bc1.ItemIndex>=0) and (bc1.ItemIndex = bc01.ItemIndex) then
          msg('#Não podes ransferir para a mesma conta.',0);

        tbbanco.edit;

        if bc3.ItemIndex = 4 then
           tbbanco['dc'] :='D'
        else
             copy(bc4.Text,1,1);

        transf := bc3.ItemIndex = 4 ;

        if transf then
           tbbanco['tipo'] :=  'DI'
         else
           tbbanco['tipo'] :=  copy(bc3.Text,1,2);

        tbbanco['usu'] :=  usuariolink;
        tbbanco['conta'] := bc1.Text;

        if bc3.ItemIndex = 0 then
           tbbanco['dtcompensacao'] :=datetostr(now);


        if (tbbanco.FieldByName('tipo').AsString = '')or
           (tbbanco.FieldByName('dc').AsString = '') or
           (tbbanco.FieldByName('documento').AsString = '') or
           (tbbanco.FieldByName('historico').AsString = '') or
           (tbbanco.FieldByName('valor').AsFloat <= 0) then
            msg('#Preencha todos os campos!!!',0);
               
        grava(tbbanco,nil, 'tbbancomovimento');
        selecione('select max(chave)as numero from tbbancomovimento');
        numero := sqlpub.fieldbyname('numero').AsString;
        sqlpub := nil;

        if  transf then begin
            tbbanco.edit;
            tbbanco['conta'] := bc01.Text;
            tbbanco['dc'] := 'C';
            tbbanco['tipo'] := 'DI';
            grava(tbbanco,nil, 'tbbancomovimento');
            selecione('select max(chave)as numero from tbbancomovimento');
            numero := sqlpub.fieldbyname('numero').AsString;
            sqlpub := nil;
            tbbanco.Cancel;
        end;

        if (historico = '') and (msg('Lancamento n. '+numero+' executado com sucesso. Deseja fazer outro lançamento?',2)) then
           _tabbancoExecute(self)
        else if historico <> '' then begin
             vf:=true;
             close;
        end else close;

end;

procedure Tfperiodo2.Button2Click(Sender: TObject);
var
  dtini, dtfin: string;
  debito, credito, creditod, debitod:double;
  data:tdate;
begin

        if cconta.Text = '' then
           msg('#Informe a conta!!!',0);

        if (strisdate(d1.Text) = False) or (strisdate(d2.Text) = False) then
           msg('#Data inválida!!!',0);

        dtini := formatdatetime('yyyy/mm/dd', strtodate(d1.Text));
        dtfin := formatdatetime('yyyy/mm/dd', strtodate(d2.Text));

        with fdm.sg do begin
             close;
             sql.Clear;
             sql.Add('select Chave, Data, Dtcompensacao as Compen , Historico, Documento, '+
                     'if (dc = "D", VALOR, null) as Debito, '+
                     'if (dc = "C", VALOR, null) as Credito, '+
                     'valor-valor as Saldo from tbbancomovimento ' +
                     ' where conta = ' + quotedstr(cconta.Text) +
                     ' and data between ' + quotedstr(dtini) +
                     ' and ' + quotedstr(dtfin));
             fdm.tg.close;
             fdm.tg.IndexFieldNames:='chave';
             fdm.tg.open;
            (fdm.tg.FieldByName('debito')  as tfloatfield).displayformat := '###,##0.00';
            (fdm.tg.FieldByName('credito')  as tfloatfield).displayformat := '###,##0.00';
            (fdm.tg.FieldByName('saldo')  as tfloatfield).displayformat := '###,##0.00';

        end;
                    //abort;
        selecione('select sum(valor) as valor from tbbancomovimento where dc = "D" '+
                  ' and conta = ' + quotedstr(cconta.Text) +' and data < ' + quotedstr(dtini));
        debito := sqlpub.fieldbyname('valor').asfloat;

        selecione('select sum(valor) as valor from tbbancomovimento where dc = "C" '+
                  ' and conta = ' + quotedstr(cconta.Text) +' and data < ' + quotedstr(dtini));
        credito := sqlpub.fieldbyname('valor').asfloat;
        sqlpub := nil;


        fdm.tg.Insert;
        fdm.tg['Chave'] :=  '-1';
        fdm.tg['Historico'] :=  'SALDO ANTERIOR';
        fdm.tg['debito'] :=  debito;
        fdm.tg['credito'] := credito;
        fdm.tg.Post;
        
        fdm.tg.Insert;
        fdm.tg['Chave'] :=  0;
        fdm.tg.Post;


        credito := 0;
        debito := 0;
        creditod := 0;
        debitod := 0;

        fdm.tg.IndexFieldNames := 'chave';
        data := fdm.tg.fieldbyname('data').AsDateTime;

        fdm.tg.First;
        while not fdm.tg.Eof do begin

              fdm.tg.Edit;

              debito := debito + fdm.tg.fieldbyname('debito').AsFloat ;
              credito := credito + fdm.tg.fieldbyname('credito').AsFloat;

              if fdm.tg.fieldbyname('Compen').AsDateTime > date then begin
                 creditod := creditod + fdm.tg.fieldbyname('credito').AsFloat;
                 debitod := debitod + fdm.tg.fieldbyname('debito').AsFloat;
              end;

              if (fdm.tg.RecNo>2 ) and
                 (data = fdm.tg.fieldbyname('data').AsDateTime) then begin
                 data := fdm.tg.fieldbyname('data').AsDateTime;
                 fdm.tg['data'] := null;

              end else
                 data := fdm.tg.fieldbyname('data').AsDateTime;

              fdm.tg['saldo'] := credito - debito;
              fdm.tg.post;

              fdm.tg.Next;
        end;


        fdm.tg.Insert;
        fdm.tg['Chave'] :=  1000000;
        fdm.tg.Post;

        fdm.tg.Insert;
        fdm.tg['Chave'] :=  10000001;
        fdm.tg['Historico'] :=  'SALDO TOTAL';
        fdm.tg['debito'] :=  debito;
        fdm.tg['credito'] := credito;
        fdm.tg['saldo'] := credito - debito;
        fdm.tg.Post;

        fdm.tg.Insert;
        fdm.tg['Chave'] :=  10000002;
        fdm.tg['Historico'] :=  'VINCULADO';
        fdm.tg['debito'] :=  debitod;
        fdm.tg['credito'] := creditod;
        fdm.tg['saldo'] := creditod - debitod;

        fdm.tg.Post;

        fdm.tg.Insert;
        fdm.tg['Chave'] :=  10000003;
        fdm.tg['Historico'] :=  'TOTAL DISPONÍVEL';
        fdm.tg['saldo'] := credito + debitod - debito-creditod;
        fdm.tg.Post;


       fdm.tg.IndexFieldNames := 'data';
       fdm.tg.IndexFieldNames := 'chave';

       //fdm.tg.First;
       imptb (fdm.tg, fdm.dg, 'bcc' , fdm.tbquery1.fieldbyname('titular').AsString + ' ... '+
                                      fdm.tbquery1.fieldbyname('nome').AsString+ ' ... AG: '+
                                      fdm.tbquery1.fieldbyname('agencia').AsString+ ' ... CONTA: '+
                                      fdm.tbquery1.fieldbyname('conta').AsString,
                                      rvisualiza.Checked);
       fdm.tg.IndexFieldNames := '';
       fdm.tg.close;

end;

procedure Tfperiodo2._tabbancocExecute(Sender: TObject);
begin

        if  page = 'tabbancoc' then begin
            with fdm.Query1 do begin
                 sql.Clear;
                 sql.Add('select chave as conta,agencia,descricao as nome, descricao as titular from tbconta order by nome');
                 fdm.tbquery1.close;
                 fdm.tbquery1.Open;
                 cconta.ListSource := fdm.dsquery1;
                 cconta.SetFocus;
                 r1.ItemIndex :=0;
                 btnsair.Hide;
                 
            end;

        end;

end;

procedure Tfperiodo2.r1Click(Sender: TObject);
begin
        d2.text := datetostr(now);
        case r1.ItemIndex of
             0: d1.Text := datetostr(now);
             1: d1.Text := datetostr(now-5);
             2: d1.Text := datetostr(now-30);
        end;

        d1.Enabled := r1.ItemIndex =3;
        d2.Enabled := r1.ItemIndex =3;

        if (r1.ItemIndex <> 3) and (cconta.Text <>'') and (Active) then
           Button2Click(self);


end;
procedure Tfperiodo2.SpeedButton1Click(Sender: TObject);
begin
         cadp ('tbbanco', 'select chave, titular, tipo, codigo, nome, praca, agencia, conta from tbbanco', '',
              'conta','agencia',
              'tipo','','CORRENTE, POUPANÇA',
              '','','',
              '','','',
              '',
              '',
              '',
              '',
              1,0);

          _tabbancoExecute(self);

end;

procedure Tfperiodo2._tabpontoExecute(Sender: TObject);
begin
            if page = 'tabponto' then begin
                with fdm.query1 do begin

                     selecione('select nome from tbfuncionario where '+
                              '(flag is null or flag <>"D") order by nome');

                     enome.Items.Clear;

                     while not sqlpub.eof do begin
                           if sqlpub['nome'] <> null then
                              enome.Items.Add(sqlpub.fieldbyname('nome').AsString);
                           sqlpub.next;
                     end;
                     sqlpub := nil;
                end;

               btnsair.Parent := tabponto;
               btnsair.Top := 77;
               btnsair.left := 226;
               enome.SetFocus;
            end;
end;

procedure Tfperiodo2.Button4Click(Sender: TObject);
var
tipo,chave,entsai,codigo:string;
begin


        if enome.Text ='' then
           msg('#Quem é o funcionário?',0);
           vf:=false;
           codloc := enome.Text;
           periodo('senha','ponto',136,242);
           if vf=false then abort;


        if etipo.ItemIndex=0 then
           tipo := '"N"'
        else
           tipo := '"S"';

        selecione('select codigo from tbfuncionario where nome = '+ quotedstr(enome.text));
        codigo:= sqlpub.fieldbyname('codigo').asstring;

        selecione('select * from tbponto where codigo = '+quotedstr(codigo)+
                  ' order by data desc, entrada desc ');
         chave := sqlpub.fieldbyname('chave').asstring;


         if ((sqlpub['saida'] = null) and (sqlpub['entrada'] = null) or
            (sqlpub['saida'] <> null) and (sqlpub['entrada'] <> null)) then
            entsai := 'Entrada'
         else if sqlpub['entrada'] = null then
            entsai := 'Entrada'
         else if sqlpub['saida'] = null then
            entsai := 'Saída';

        if msg(pchar('Hoje:'+datetimetostr(now)+#13+#13+'Confirma ' +
                      entsai + '?'+#13+#13+'Funcionário: '+enome.Text),2) then begin
               if entsai = 'Entrada' then

                  selecione('insert into tbponto (codigo,data,entrada,extra) Values('+
                            quotedstr(codigo)+
                            ',now()'+
                            ','+quotedstr(timetostr(now))+
                             ' ,'+tipo+ ')')
               else

                selecione('update tbponto set saida = '+quotedstr(timetostr(now))+
                          ', datasaida = now() '+
                          ' where chave = '+quotedstr(chave));

              msg(pchar(uppercase(entsai)+' PROCESSADA!'),0);
              enome.SetFocus;
    end;


end;

procedure Tfperiodo2.vimageClick(Sender: TObject);
begin

  if btngravarE.Enabled then
     msg('#Depois de gravar os dados, escolha o logo.',0);

  fdm.OpenDialog.Filter := 'JPG|*.JPG';
  fdm.OpenDialog.Execute;

  if fdm.OpenDialog.FileName <> '' then
    vimage.Picture.loadfromFile(fdm.OpenDialog.FileName)
  else
    vimage.Picture := nil;

  if vimage.Picture <> nil then
    vimage.Picture.SaveToFile(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\' +
      fdm.tbempresa.FieldByName('fantasia').AsString + '.jpg'));


  fdm.OpenDialog.FileName := '';

end;

procedure Tfperiodo2._tabempresaExecute(Sender: TObject);
begin
            if page = 'tabempresa' then begin
               caption := 'Dados da Empresa';
               btnsair.hide;
               fdm.tbempresa.Open;
               imempExecute(self);


               if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\cadastrop.jpg')) then
                  imagetab('imgemp',alclient, tabempresa,  (PChar(ExtractFilePath(ParamStr(0)) +'imagem\cadastrop.jpg')));

               desativar(self);
            end;
end;

procedure Tfperiodo2._tabselExecute(Sender: TObject);
begin

     if page = 'tabsel' then begin
        with fdm.Query1 do begin
             close;
             sql.Clear;
             sql.add(controle);
             fdm.tbquery1.close;
             fdm.tbquery1.Open;

             DBCtrlGrid1.DataSource := fdm.dsquery1;
             DBText2.DataSource := fdm.dsquery1;
             codloc :='';

             DBCtrlGrid1.SetFocus;
             caption := 'Selecione (clique duplo)';
             btnsair.Parent := tabsel;
             btnsair.Top := 208;
             btnsair.left := 281;
        end;
     end;   
end;

procedure Tfperiodo2.DBText2Click(Sender: TObject);
begin
        codloc := fdm.tbquery1.fieldbyname('nome').AsString;
        close;

end;

procedure Tfperiodo2.DBCtrlGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then begin
           codloc := fdm.tbquery1.fieldbyname('nome').AsString;
           close;
        end;   

end;

procedure Tfperiodo2.Button6Click(Sender: TObject);
begin
        fdm.tbempresa.Open;
        l1.Caption := uppercase(fdm.tbempresa.fieldbyname('municipio').AsString+ ', '+
                      formatdatetime('dd',date) +
                      ' de '+ formatdatetime('mmmm',date) +
                      ' de '+ formatdatetime('yyyy',date))+
                      '      Carimbo Padronizado do CNPJ';

        l2.Caption := ec1.Text;
        l3.Caption := ec2.Text;
        l4.Caption := ec3.Text;
        l5.Caption := ec4.Text;
        l6.Caption := ec5.Text;
        l7.Caption := ec6.Text;

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

        l8.Caption := fdm.tbempresa.fieldbyname('municipio').AsString+ ', '+  datetostr(now);
        fdm.tbempresa.close;
        correcao.PreviewModal;
end;

procedure Tfperiodo2._TabcorrecalExecute(Sender: TObject);
begin
            if page = 'tabcorrecal' then begin
               btnsair.Parent := Tabcorrecal;
               btnsair.Left := 317;
               btnsair.top := 341;
            end;

end;

procedure Tfperiodo2.ecepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then begin
           with sender as tdbedit do
             if Modified then
                buscacep(nil,fdm.tbempresa,fdm.tbempresa.fieldbyname('cep').AsString,'');

                buscadicade(nil,fdm.tbempresa,fdm.tbempresa.fieldbyname('municipio').AsString,'');
        end;

end;

procedure Tfperiodo2.bc3Change(Sender: TObject);
begin
        Label48.Visible := bc3.ItemIndex =4;
        bc01.Visible := bc3.ItemIndex =4;
        if bc3.ItemIndex =4 then
           bc4.ItemIndex :=0; 
end;

procedure Tfperiodo2.btetqEClick(Sender: TObject);
var
j,i:integer;

begin
        if btngravarE.Enabled then
           msg('#Depois de gravar os dados, escolha o logo.',0);

        i := strtoint(msgi('Digite a quantidade:',2));

        selecione('select fantasia as nome, endereco, bairro, numero, complemento, municipio, cep, uf from tbempresa '+
                  ' where chave = '+quotedstr(fdm.tbempresa.fieldbyname('chave').AsString));

        fdm.Query1.SQL.Clear;
        fdm.Query1.SQL.add('select  nome, endereco, bairro, numero, complemento, municipio, cep, uf from tbcliente where chave is null limit 0,0 ');
        fdm.tbquery1.Close;
        fdm.tbquery1.open;

        for j := 1 to i do begin
            fdm.tbquery1.Insert;
            fdm.tbquery1['nome']:= sqlpub.fieldbyname('nome').AsString ;
            fdm.tbquery1['endereco']:= sqlpub.fieldbyname('endereco').AsString ;
            fdm.tbquery1['bairro']:= sqlpub.fieldbyname('bairro').AsString ;
            fdm.tbquery1['numero']:= sqlpub.fieldbyname('numero').Asinteger ;
            fdm.tbquery1['complemento']:= sqlpub.fieldbyname('complemento').AsString ;
            fdm.tbquery1['municipio']:= sqlpub.fieldbyname('municipio').AsString ;
            fdm.tbquery1['cep']:= sqlpub.fieldbyname('cep').AsString ;
            fdm.tbquery1['uf']:= sqlpub.fieldbyname('uf').AsString ;
            fdm.tbquery1.Post;
        end;

        configimp(fdm.tbquery1,nil,2,false);

        fdm.tbquery1.close;
        fdm.tbempresa.open;
        imempExecute(self);

end;

procedure Tfperiodo2.btnnovoEClick(Sender: TObject);
begin
        btnapagarE.Enabled := false;
        btngravarE.Enabled := true;
        btncancelarE.Enabled := true;
        btvE.Enabled := false;
        btiE.Enabled := false;
        btnalterarE.Enabled := false;
        fdm.tbempresa.Insert;
        eemp.ItemIndex := fdm.tbempresa.RecordCount;
        fdm.tbempresa['emp'] := fdm.tbempresa.RecordCount;
        imempExecute(self);
        controle := 'G';
        ativar(self);
        enempresa.SetFocus;

end;

procedure Tfperiodo2.btnalterarEClick(Sender: TObject);
begin
        btnapagarE.Enabled := false;
        btngravarE.Enabled := true;
        btncancelarE.Enabled := true;
        btvE.Enabled := false;
        btiE.Enabled := false;
        btnalterarE.Enabled := false;
        fdm.tbempresa.edit;
        controle := 'A';
        ativar(self);        
end;

procedure Tfperiodo2.btngravarEClick(Sender: TObject);
var
loc:string;
begin
        focuscontrol(nil);
        if (fdm.tbempresa['Nome'] = null) or
           //(fdm.tbempresa['serv'] = null) or
           (fdm.tbempresa['municipion'] = null) then
           msg('#Preencha os dados corretamente.',0);

        if controle='A' then
           Altera(fdm.tbempresa, nil,'tbempresa')
        else
           grava(fdm.tbempresa, nil,'tbempresa');

        loc := fdm.tbempresa.fieldbyname('nome').asstring;
        fdm.tbempresa.close;
        fdm.tbempresa.open;
        fdm.tbempresa.locate('nome',loc,[]);

        btnapagarE.Enabled := true;
        btngravarE.Enabled := false;
        btncancelarE.Enabled := false;
        btvE.Enabled := true;
        btiE.Enabled := true;
        btnnovoE.Enabled := true;
        btnalterarE.Enabled := true;
        desativar(self);
end;

procedure Tfperiodo2.btnapagarEClick(Sender: TObject);
begin
        if msg('',1) then

        selecione('delete from tbempresa where chave = ' +
                  quotedstr(fdm.tbempresa.fieldbyname('chave').AsString));

        if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\' + fdm.tbempresa.FieldByName('fantasia').AsString + '.jpg')) then
           deletefile(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\' + fdm.tbempresa.FieldByName('fantasia').AsString + '.jpg'));


        fdm.tbempresa.Close;
        fdm.tbempresa.open;
        imempExecute(self);                             
end;

procedure Tfperiodo2.btvEClick(Sender: TObject);
begin
        fdm.tbempresa.Prior;
        imempExecute(self);        
end;

procedure Tfperiodo2.imempExecute(Sender: TObject);
begin
               if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\' + fdm.tbempresa.FieldByName('fantasia').AsString + '.jpg')) then
                  vimage.Picture.loadfromFile(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\' + fdm.tbempresa.FieldByName('fantasia').AsString + '.jpg'))
               else
                  vimage.Picture := nil;

end;

procedure Tfperiodo2.btiEClick(Sender: TObject);
begin
        fdm.tbempresa.Next;
        imempExecute(self);        
end;

procedure Tfperiodo2.btncancelarEClick(Sender: TObject);
begin
        btnapagarE.Enabled := true;
        btngravarE.Enabled := false;
        btncancelarE.Enabled := false;
        btvE.Enabled := true;
        btiE.Enabled := true;
        btnnovoE.Enabled := true;
        btnalterarE.Enabled := true;
        fdm.tbempresa.Cancel;
        desativar(self);
        imempExecute(self);         
end;

procedure Tfperiodo2.ecnpjKeyPress(Sender: TObject; var Key: Char);
begin
          if not (key in ['0'..'9', #8,#13]) then abort;
end;

procedure Tfperiodo2.ecnpjExit(Sender: TObject);
begin
         with sender as tdbedit do
              if Modified then
                  valcnpj(ecnpj,nil,fdm.tbempresa,'cnpj');
end;

procedure Tfperiodo2.btnfeEClick(Sender: TObject);
begin

        if btngravarE.Enabled = false then
           msg('#Clique em editar, antes.',0);

        fdm.OpenDialog.FileName := '';
        fdm.OpenDialog.Execute;
        fdm.tbempresa.edit;
        if fdm.OpenDialog.FileName <> '' then
           fdm.tbempresa['dirnfe'] :=substitui(ExtractFilePath(fdm.OpenDialog.FileName),'\','/');

end;

procedure Tfperiodo2._vitalcredExecute(Sender: TObject);
begin
        if page = 'vitalcred' then begin

           caption := 'Antecipação';
           btnsair.Parent := vitalcred;
           btnsair.Top := 291;
           btnsair.left := 290;


           with fdm.Query2 do begin
                sql.Clear;
                sql.Add('select Documento, Cliente, sum(vrcliente)as Total from tbfinanceiro '+
                        'where bloq is null and vrcliente >0 and adiantamento is null and codigo = ' +
                       quotedstr(controle)+
                       ' and '+ quotedstr(formatdatetime('yyyy-mm-dd', strtodate(controle2)))+ '<= dtvencimento '+
                       ' group by documento order by documento');

                SQL.SaveToFile('c:\QueryComErro.sql');

                fdm.tbquery2.Filtered := false;
                fdm.tbquery2.Close;
                fdm.tbquery2.open;
                (fdm.tbquery2.fieldbyname('Cliente')  as tstringfield).DisplayWidth := 30;
                (fdm.tbquery2.fieldbyname('total')  as tfloatfield).DisplayFormat := '###,##0.00';                
                gradevital.DataSource := fdm.dsquery2;
                gradevital.SetFocus;
           end;

        end;
end;

procedure Tfperiodo2.Button5Click(Sender: TObject);
begin
        if Pred(gradevital.SelectedRows.Count)< 0 then msg('#Selecione os documentos.',0);

        filtrar(gradevital,fdm.tbquery2,nil,'documento');
        vf:=true;
        close;

end;

procedure Tfperiodo2.mvital2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

begin
      if key = 13 then 
         periodovital1Execute(self);

end;

procedure Tfperiodo2.periodovital1Execute(Sender: TObject);
var

 dtini, dtfin, sel, where,imprt: string;
 i:integer;
begin
//        select nome,cod from tab_paciente
         dtini:= formatdatetime('yyyy-mm-dd',strtodate(mvital1.Text))+' 00:00';
         dtfin:= formatdatetime('yyyy-mm-dd',strtodate(mvital2.Text))+' 23:59';

         TestCryptoIni;
         fdm.conectnet.Disconnect;

         ipnet       := sWebHost;
         databasenet := sWebDb ;
         Usernet     := sWebUser;
         Passwordnet := sWebPwd;

//         ipnet := 'mysql.vitalcred.com.br';
//         databasenet := 'odontocred1';
//         Usernet := 'odontoc_soft';
//         Passwordnet := 'soft1423';


         case rgvital.ItemIndex of
              0: sel :=' and (bandeira <> "ITAU" and bandeira <> "VISA_ELECTRON") ';
              1: sel :=' and (bandeira = "ITAU" or bandeira = "VISA_ELECTRON") ';
         end;

         case rgvital2.ItemIndex of
              0: begin
                 imprt :='  where vrcliente is null ';
                 importado := false;
                 caption := 'Não importados de ' + mvital1.Text + ' a '+mvital2.Text;
              end;
              1: begin
                 imprt :='  where vrcliente is not null ';
                 importado := true;
                 caption := 'mportados de ' + mvital1.Text + ' a '+mvital2.Text;
              end;

         end;

         //boleto
         {'select c.data_insercao as Data, cli.cod_User as Codigo , cli.Nome, '+
                       ' Valor/1 as Valor, VrCliente, Vencimento, Situacao, Situacao_interna as SitInterna, RefTran, '+
                       ' Boleto, Mensagem from tab_bancodobrasil as c, tab_clientes cli'+
                       ' where situacao ="fechado" ';}

         where := imprt+' and situacao = "Aprovado" and c.data_insercao between '+
                  quotedstr(dtini) + ' and '+  quotedstr(dtfin)+
                  ' and  cli.cod = c.Cod_Cliente ';


          fdm.snet.SQL.Clear;
          fdm.snet.sql.Add('select c.data_insercao as Data, cli.cod_User as Codigo , cli.Nome, c.Parcelas, '+
                         ' c.Valor/1 as Valor, c.Bandeira, c.numero_comprovante as N_Cartao, c.Situacao, '+
                         ' c.numero_autorizacao as Autorizacao, '+

                         'if(c.Canal="01","DESKTOP", if (c.Canal="02","WEB",'+
                         'if(c.Canal="03","WAP",if(c.Canal="04","J2ME",'+
                         'if(c.Canal="05","URA",if(c.Canal="06","POS","WEB")))))) as Canal, '+

                         ' c.Mensagem, c.Nome as Paciente,'+
                         ' c.cod as Chave, c.cod as Chave2, "1" as tb '+
                         ' from  tab_transacao_cartao c, tab_clientes cli '+
                         where+
                         //' and (c.cod=1001287 or  c.cod=1001286) ' +
                         sel+' order by c.data_insercao desc ');
          //debugstr(fdm.snet);
          fdm.tbnet.Filtered := false;
          fdm.tbnet.Close;
          fdm.tbnet.open;

          if rgvital.ItemIndex = 1 then begin
             fdm.snet2.SQL.Clear;
             fdm.snet2.sql.Add('select c.data_insercao as Data, cli.cod_User as Codigo , cli.Nome, '+
                       ' Valor/1 as Valor, Mensagem, c.razao_nome as Paciente, c.cod as Chave '+
                       ' from tab_bancodobrasil as c, tab_clientes cli  '+
                        where +
                       ' order by c.data_insercao desc ');
             fdm.snet2.open;
             i:=-1;

             while not fdm.snet2.Eof do begin
                   fdm.tbnet.Insert;
                   fdm.tbnet['Data'] := fdm.snet2.fieldbyname('Data').AsString;
                   fdm.tbnet['Codigo'] := fdm.snet2.fieldbyname('Codigo').AsString;
                   fdm.tbnet['Nome'] := fdm.snet2.fieldbyname('Nome').AsString;
                   fdm.tbnet['Paciente'] := fdm.snet2.fieldbyname('Paciente').AsString;
                   fdm.tbnet['Valor'] := fdm.snet2.fieldbyname('Valor').AsFloat;
                   fdm.tbnet['Bandeira'] := 'BANCO BRASIL';
                   fdm.tbnet['Mensagem'] := fdm.snet2.fieldbyname('Mensagem').AsString;
                   fdm.tbnet['chave'] := fdm.snet2.fieldbyname('chave').AsString;
                   fdm.tbnet['canal'] := 'WEB';
                   fdm.tbnet['situacao'] := 'Aprovado';
                   fdm.tbnet['tb'] := '2';
                   fdm.tbnet['chave2'] := i;
                   fdm.tbnet['Parcelas'] := 1;

                   i:= i + (-1);
                   fdm.tbnet.Post;
                   fdm.snet2.Next;
             end;
             fdm.snet2.close;

          end;



           fdm.tbnet.IndexFieldNames := 'data;nome';
          (fdm.tbnet.FieldByName('valor') as tfloatfield).Displayformat := '####,##0.00';


           for i:=1 to gradevital1.Columns.Count-1 do
               if (gradevital1.Columns[i].FieldName = 'Nome') or
                  (gradevital1.Columns[i].FieldName = 'Bandeira') or
                  (gradevital1.Columns[i].FieldName = 'N_Cartao') or
                  (gradevital1.Columns[i].FieldName = 'Situacao') or
                  (gradevital1.Columns[i].FieldName = 'Mensagem') then
                   gradevital1.Columns[i].Width :=200;
           fdm.tbnet.First;
end;

procedure Tfperiodo2.rgvital2Click(Sender: TObject);
begin
        periodovital1Execute(self);


end;

procedure Tfperiodo2._vitalcred1Execute(Sender: TObject);

begin
        if page = 'vitalcred1' then begin

           caption := 'Importação';
           btnsair.Parent := pmenu1;
           btnsair.Top := 17;
           btnsair.left := 474;
           btnsair.Hide;
           mvital1.Text := datetostr(now-1);
           mvital2.Text := datetostr(now-1);
           gradevital1.DataSource := ds;
           ds.DataSet := fdm.tbnet ;
           periodovital1Execute(self);


        end;

end;

procedure Tfperiodo2.btvitaltransfClick(Sender: TObject);
var
ntb,st,nome,loc:string;
tot:double;
sq:tzquery;
sq1, sq2, sq3:tzquery;
begin
                    

        if importado then msg('#Estes já foram inportados.',0);
        abortaacao(fdm.tbnet,nil,'codigo','','','','',0);

        fdm.conectnet.Disconnect;
        filtrar(gradevital1,fdm.tbnet,nil,'chave2');

        fdm.tbnet.First;
        while not fdm.tbnet.eof do begin
              if st='' then
                   st := ' where codigo = '+ quotedstr(fdm.tbnet.fieldbyname('codigo').AsString)
              else st := st + ' or codigo = '+ quotedstr(fdm.tbnet.fieldbyname('codigo').AsString);
              fdm.tbnet.Next;
        end;
        fdm.tbnet.EnableControls;
        fdm.tbnet.First;

        loc :=st;
        sq := tzquery.Create(application);
        with sq do begin
             Connection := fdm.conector;
             sql.Clear;
             sql.Add('select codigo, nome, socio, promocao, nbanco, codigogp, msn as carteira,gp from tbcliente '+loc);
             open;
        end;

        st :='';
        while not sq.eof do begin
              if sq['codigogp'] = null then
                   st := st +#13+ sq.fieldbyname('codigo').AsString + '  '+
                         sq.fieldbyname('nome').AsString;
              sq.Next;
        end;

        if st <> '' then begin
           fdm.tbnet.Filtered := false;
           msg('#Clientes sem grupo cartao'+#13+#13+'Código/Nome'+#13+ st,0);
        end;





        st :='';
        fdm.tbnet.First;
        while not fdm.tbnet.Eof do begin
              if not sq.Locate('codigo',fdm.tbnet.fieldbyname('codigo').AsString,[]) then
                   st := st +#13+ fdm.tbnet.fieldbyname('codigo').AsString + '  '+
                         fdm.tbnet.fieldbyname('nome').AsString;
              fdm.tbnet.Next;
        end;

        if st <> '' then begin
           fdm.tbnet.Filtered := false;
           msg('#Clientes sem cadastro no sigac'+#13+#13+'Código/Nome'+#13+ st,0);
        end;

        sq1 := tzquery.Create(application);
        sq2 := tzquery.Create(application);
        sq3 := tzquery.Create(application);

        //mensal sem receber
        with sq1 do begin
             Connection := fdm.conector;
             sql.Add('select codigo from tbfinanceiro '+loc+ ' group by codigo ');
             open;
        end;

        
       //mensal mes recebido
        with sq2 do begin
             Connection := fdm.conector;
             sql.Add('select codigo from tbfinanceirop '+loc+ ' group by codigo ');
             open;
        end;


        fdm.tbnet.First;


        if not msg('Deseja transferir os itens selecionados',2) then abort;


        while not fdm.tbnet.Eof do begin

              if rgvital.ItemIndex = 0 then
                     ffinanceirovalor.RadioGroup1.ItemIndex := 2
              else   ffinanceirovalor.RadioGroup1.ItemIndex := 8;

              if not fdm.tp.Locate('descricao',fdm.tbnet.fieldbyname('bandeira').AsString,[]) then begin
                 msg('Cartão: ' + fdm.tbnet.fieldbyname('bandeira').AsString+ ' não localizado no SIGAC',0);
                 fdm.tbnet.Filtered := false;
                 periodovital1Execute(self);
              end;


              selecione('delete from tbfinanceiro where '+
                        'codigo = '+ quotedstr(fdm.tbnet.fieldbyname('codigo').AsString)+
                        ' and canal = '+ quotedstr(fdm.tbnet.fieldbyname('canal').AsString)+
                        ' and autorizacao = '+ quotedstr(fdm.tbnet.fieldbyname('autorizacao').AsString));

              sq.Locate('codigo',fdm.tbnet.fieldbyname('codigo').AsString,[]);
              ffinanceirovalor.codigo := sq.fieldbyname('codigo').AsString;
              ffinanceirovalor.nome := sq.FieldByName('nome').AsString;
              ffinanceirovalor.socio := sq.FieldByName('socio').AsString;
              ffinanceirovalor.promocao := sq.FieldByName('promocao').AsString;
              ffinanceirovalor.nbanco := sq.FieldByName('nbanco').AsString;
              ffinanceirovalor.codigogp := sq.fieldbyname('codigogp').AsString;
              ffinanceirovalor.carteira := sq.fieldbyname('carteira').AsString;
              ffinanceirovalor.gp_ := sq.fieldbyname('gp').AsString;

              ffinanceirovalor.cboletodoc.Text  := 'Site';
              ffinanceirovalor.ura := (fdm.tbnet['canal'] = 'URA') or (fdm.tbnet['canal'] = 'POS');

              ffinanceirovalor.canal := fdm.tbnet.fieldbyname('canal').AsString;
              ffinanceirovalor.autorizacao := fdm.tbnet.fieldbyname('autorizacao').AsString;

              if length(fdm.tbnet.fieldbyname('paciente').AsString)> 1 then
                 ffinanceirovalor.cboletodoc.text  := fdm.tbnet['paciente']
              else ffinanceirovalor.cboletodoc.text  := fdm.tbnet['autorizacao'];

              if ffinanceirovalor.promocao = 'S' then ffinanceirovalor.socio := 'S';

              ffinanceirovalor.edbase.Text := copy(fdm.tbnet.fieldbyname('data').AsString, 1,10);
              ffinanceirovalor.cboletovr.Text := floattostr(fdm.tbnet.fieldbyname('valor').AsFloat);
              ffinanceirovalor.cboletoqtd.value :=fdm.tbnet.fieldbyname('Parcelas').AsInteger;
              ffinanceirovalor.comboclic;
              ffinanceirovalor.BitBtn4Click(self);

              tot :=0;
              ffinanceirovalor.tb.First;
              while not ffinanceirovalor.tb.Eof do begin
                    tot := tot + ffinanceirovalor.tb.fieldbyname('vrcliente').AsFloat;
                    ffinanceirovalor.tb.Next;
              end;
              ffinanceirovalor.tb.First;

              ffinanceirovalor.Button1Click(self);

              if fdm.tbnet['tb'] = '1' then  ntb := 'tab_transacao_cartao'
              else                            ntb := 'tab_bancodobrasil';

              with fdm.snet do begin
                   SQL.Clear;
                   sql.Add('update '+ntb+ ' set vrcliente = ' + realdblstr(tot)+
                           ' where cod = ' + quotedstr(fdm.tbnet.fieldbyname('chave').AsString));
                   execsql;
              end;

              fdm.tbnet.next;
        end;

        fdm.tbnet.Filtered := false;

        periodovital1Execute(self);
        sq.Destroy;



    with sq3 do begin
         Connection := fdm.conector;
         sql.Clear;
         sql.Add('select codigo,nome from tbcliente '+loc);
         open;
    end;



    sq3.First;
    while not sq3.eof do begin
          // verifica se a conta já foi lançada este mês

          if (not sq1.Locate('codigo',sq3.fieldbyname('codigo').AsString,[])) then
             if (not sq2.Locate('codigo',sq3.fieldbyname('codigo').AsString,[])) then begin

                nome := sq3.FieldByName('codigo').AsString+' - '+sq3.FieldByName('nome').AsString;

                sendMail('Vital Cred',
                         'atendimento@vitalcred.com.br',
                         nome ,
                         'Cliente novo: '+nome,
                         'Cliente novo: '+nome,
                         'Cliente novo: '+nome,
                         '',false);

                sendMail('Vital Cred',
                         'diretoria@vitalcred.com.br',
                         nome,
                         'Cliente novo: '+nome,
                         'Cliente novo: '+nome,
                         'Cliente novo: '+nome,
                         '',false);

          end;
          sq3.Next;

    end;

    sq1.Destroy;
    sq2.Destroy;
    sq3.Destroy;
    //selecione('update tbfinanceiro as f, tbcliente as c set f.carteira = c.msn where f.codigo=c.codigo and f.data = now()');
    msg('Transferido.',0);


end;

procedure Tfperiodo2.gradevital1Enter(Sender: TObject);
begin
        keypreview := false;
end;

procedure Tfperiodo2.gradevital1Exit(Sender: TObject);
begin
        keypreview := true;
end;

procedure Tfperiodo2.btvitalimpClick(Sender: TObject);
begin

      impgrade(fdm.tbnet,nil,ds ,gradevital1,'impvital',caption,'',true);

end;

procedure Tfperiodo2.paf1Click(Sender: TObject);
begin
      cadg(cadcli,'nome', 4);
end;

procedure Tfperiodo2.paf6Click(Sender: TObject);
begin
        cadg(cadfuncionario,'nome', 6);
end;

procedure Tfperiodo2.paf14Click(Sender: TObject);
begin
      fmenu.produtoExecute(self);
end;

procedure Tfperiodo2.paf11Click(Sender: TObject);
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
              3,0);   
end;

procedure Tfperiodo2.paf13Click(Sender: TObject);
begin
      cadg(cpempresa,'nome', 0);
end;

procedure Tfperiodo2.Label46Click(Sender: TObject);
begin
        fdm.OpenDialog.FileName := '';
        fdm.OpenDialog.Execute;

        if fdm.OpenDialog.FileName <> '' then
           ldatabase.Text :=substitui(ExtractFilePath(fdm.OpenDialog.FileName),'\','/') + ExtractFilename(fdm.OpenDialog.FileName);

end;

procedure Tfperiodo2._TabpafExecute(Sender: TObject);
var ini:tinifile;
begin

        if page = 'tabpaf' then begin

           caption := 'Paf/ECF';

           Ini := TInifile.Create(conf_local);
           ldatabase.Text := Ini.ReadString('pafecf', 'ldatabase', ldatabase.Text);
           lhostname.Text := Ini.ReadString('pafecf', 'lhostname', lhostname.Text);
           lpassword.Text := Ini.ReadString('pafecf', 'lpassword', lpassword.Text);
           luser.Text := Ini.ReadString('pafecf', 'luser', luser.Text);
           ini.Free;
           btnsair.Destroy;
        end;

end;

procedure Tfperiodo2.paf15Click(Sender: TObject);
var
sq:tzquery;
uf,chave:string;
list:tstringlist;




procedure gravaf(Table: TDataset; dbtable: string);
var
  sql: tzquery;
  cmd: string;
  Count: integer;
begin


  sql := tzquery.Create(application);
  try
    sql.Connection := conector;

    if Length(dbtable) > 0 then
      cmd := 'Insert into ' + dbtable + '('
    else
    begin
      Application.MessageBox('Nome da tabela nulo.', 'Erro', 0 + MB_ICONERROR);
      abort;
    end;
    // Campos
    for Count := 1 to Table.FieldCount - 1 do
    begin
      if Count = 1 then
        cmd := cmd + Table.Fields[Count].FieldName
      else
        cmd := cmd + ', ' + Table.Fields[Count].FieldName;
    end;

    cmd := cmd + ') values  (';
    // Dados

    for Count := 1 to Table.FieldCount - 1 do
    begin
      if Table.Fields[Count].AsString = '' then
        cmd := cmd + 'null'
          //verifica o tipo de dado
      else // verifica se é Float
          if (Table.Fields[Count].ClassName = 'TFloatField') or
             (Table.Fields[Count].ClassName = 'TLargeintField') or
             (Table.Fields[Count].ClassName = 'TIntegerField') then
              cmd := cmd + realdblstr(Table.Fields[Count].Value)

      else // verifica se é Data
      if Table.Fields[Count].ClassName = 'TDateField' then
        cmd := cmd + quotedstr(formatdatetime('yyyy/mm/dd',
          Table.Fields[Count].AsDateTime))
      else
      if (Table.Fields[Count].ClassName = 'TStringField') or
        (Table.Fields[Count].ClassName = 'TMemoField') then
         cmd := cmd + quotedstr(Table.Fields[Count].asstring)
      else
        cmd := cmd + quotedstr(Table.Fields[Count].AsString);

      if Count < Table.FieldCount - 1 then
        cmd := cmd + ', ';
    end;
    cmd := cmd + ')';

    Sql.SQL.clear;
    sql.sql.add(cmd);
    //DEBUGSTR(SQL);
    sql.execsql();

  finally
    sql.Free;
    sql := nil;
  end;


end;


procedure alteraf(Table: TDataset; dbtable, campo: string);
var
  sql: tzquery;
  cmd: string;
  Count: integer;

begin
  sql := tzquery.Create(application);
  try

    sql.Connection := conector;

    if Length(dbtable) > 0 then
      cmd := 'update ' + dbtable + ' set '
    else
    begin
      Application.MessageBox('Nome da tabela nulo.', 'Erro', 0 + MB_ICONERROR);
      abort;
    end;

    for Count := 1 to Table.FieldCount - 1 do    begin


       if (Table.Fields[Count].FieldName <> 'E01_PRODUTO') and
          (Table.Fields[Count].FieldName <> 'R01_CLIENTE') then begin

          if Table.Fields[Count].AsString = '' then
            cmd := cmd + table.Fields[Count].fieldname + ' = null'
              //verifica o tipo de dado
          else // verifica se é Float

          if (Table.Fields[Count].ClassName = 'TFloatField') or
             (Table.Fields[Count].ClassName = 'TLargeintField') or
             (Table.Fields[Count].ClassName = 'TIntegerField') then
            cmd := cmd + table.Fields[Count].fieldname + ' = ' +
              realdblstr(Table.Fields[Count].Value)
          else // verifica se é Data
          if Table.Fields[Count].ClassName = 'TDateField' then
            cmd := cmd + table.Fields[Count].fieldname + ' = ' +
                         quotedstr(formatdatetime('yyyy/mm/dd', Table.Fields[Count].AsDateTime))
          else if (Table.Fields[Count].ClassName = 'TStringField') or
                  (Table.Fields[Count].ClassName = 'TMemoField') then
                   cmd := cmd + table.Fields[Count].fieldname + ' = ' +
                                quotedstr(Table.Fields[Count].AsString)

          else
            cmd := cmd + table.Fields[Count].fieldname + ' = ' +
                          quotedstr(Table.Fields[Count].AsString);

          if Count < Table.FieldCount - 1 then
            cmd := cmd + ', ';
        end;
     end;

    cmd := cmd + ' where '+campo+' = ' + quotedstr(Table.fieldbyname(campo).AsString);

    sql.SQL.Clear;
    sql.sql.add(cmd);
    //debugstr(sql);
    sql.execsql();

  finally
    sql.Free;
    sql := nil;
  end;
end;



procedure cap(nome:string);
begin
      caption := '..... ATUALIZANDO '+ nome+'..... ESPERE...      ' +
                 inttostr(sq.RecNo) +'    DE    '+  inttostr(sq.RecordCount);
                 update;
end;



procedure selq (script:string);
begin
        with q do begin
             SQL.Clear;
             SQL.Add(script);
            if (lowercase(copy(script,1,6)) = 'select') or
               (lowercase(copy(script,1,4)) = 'show') then
               open
            else execsql;
        end;
end;



procedure atualiza(tb,cp,tit,scr:string);
begin
end;


begin
      conectpaf;

      if not msg('Deseja enviar?',2) then abort;
      selecione('select uf from tbempresa');
      uf := sqlpub.fieldbyname('uf').asstring;
      sqlpub:=nil;

      list :=  tstringlist.Create;

      sq:= tzquery.Create(application);
      sq.Connection := fdm.conector;
                         

                
     //PRODUTO
     atualiza('E01_FON','E01_ID','PRODUTOS',
              'select chave, chave as E01_ID, concat(codigo) as E01_PRODUTO, SUBSTRING(descricao, 1, 29) as E01_DESCRICAO, SUBSTRING(descricao, 1, 99) as E01_DESCRICAOEXTENDIDA,'+
                    '  if(estoque is null,0,estoque) AS E01_ESTOQUE, 0 as E01_ESTOQUERESERVADO, if (vrvenda is null,0,vrvenda) as E01_PRECOVENDA, '+
                    ' 0 as E01_DESCONTOMAXIMO, codigobarras as E01_GTIN, ncmsh as E01_NCM, '+
                    '  "E" as E01_CLASSIFICACAO, "T" as E01_IAT, "P" as E01_IPPT, concat(if(nacimps is null,null,nacimps),st) as E01_ICMSCST, '+
                    ' "00" as E01_TIPOPRODUTO, "1" as E01_POSSE, "T" as E01_MOVIMENTAESTOQUE,  '+
                    ' ECF_ICMS, if ((fracao is null or fracao<=0),"F","T") as E01_FRACIONADO, "F" as E01_PESADO,'+
                    ' null as E01_HASH, "1" as E01_UNIDADEQUANTIDADE from tbproduto '+
                    'where ECF_ICMS is not null and ativoV = "S"  and pdv = "S" and (flag <> "D" or flag is null) '+
                    ' and nacimps is not null and st is not null '+
                    'order by chave');

                    //ativoV = "S",  pdv = "S"   CST = preenchido,  ECF_ICMS = preenchido

     //cliente
     atualiza('R01_FON','R01_CLIENTE','CLIENTES',
              'select chave, codigo as R01_CLIENTE, if((FisJur is null or FisJur = ""),"F",FisJur) as R01_PESSOA, SUBSTRING(nome, 1, 40) as R01_NOME, SUBSTRING(cnpj,1,18) as R01_CNPJ, '+
                   ' null as R01_CPF, SUBSTRING(ie,1,18) as R01_IE, null as R01_CI, null as R01_ORGEMISSORCI, null as E12_UFEMISSAOCI, '+
                   ' concat(SUBSTRING(endereco,1,38)," ", if (numero is null, null, SUBSTRING(numero,1,6))) as R01_ENDERECO, SUBSTRING(complemento,1,100) as R01_ENDERECOCOMPLEMENTO,'+
                   ' SUBSTRING(bairro,1,30) as R01_BAIRRO, SUBSTRING(municipio,1,30) as R01_CIDADE, if((uf is null or uf = ""),'+quotedstr(uf)+',uf) as E12_UF, if(cep is null,0,SUBSTRING(cep,1,8)) as R01_CEP, codigovendedor as E05_VENDEDOR,'+
                   ' null as D01_CONVENIO, null as E13_PRAZO, "1058" as R01_CODIGOPAIS, municipion as R01_CODIGOMUNICIPIO,'+
                   ' null as R01_CODIGOSUFRAMA  from tbcliente where (codigo >0 and codigo is not null) and (flag <> "D" or flag is null)  order by codigo');
                                                              // where codigo = 6160



     //empresa
     atualiza('EMP_FON','emp_filial','EMPRESA',
              'select chave, "01" as emp_filial, nome as EMP_RAZAO, fantasia as EMP_FANTASIA, '+
             'concat(endereco, " ",numero) as EMP_ENDERECO, complemento as EMP_ENDERECOCOMPLEMENTO,'+
             'bairro as EMP_BAIRRO, municipio as EMP_CIDADE, uf as E12_UF, cep as EMP_CEP, cnpj as EMP_CNPJ,'+
             'ie as EMP_INSCESTADUAL, rjcomercial as EMP_INSCMUNICIPAL, fone1 as EMP_FONE1, fone2 as EMP_FONE2,'+
             'contato as EMP_NOMERESPONSAVEL, if(tipo="SIMPLES NACIONAL","1","2") as EMP_ATIVIDADE, "1058" as EMP_CODIGOPAIS, '+
             'municipion as EMP_CODIGOMUNICIPIO,  email as EMP_EMAIL from tbempresa ');



     //funcionario/vendedor
     atualiza('E05_FON','E05_VENDEDOR','VENDEDOR',
              'select f.chave, f.codigo as E05_VENDEDOR, f.nome as E05_NOME, if(f.comissao is null,0,f.comissao) as E05_PORCENTOAVISTA,'+
              ' if(f.comissao4 is null,0,f.comissao4) as E05_PORCENTOAPRAZO, u.nome as USERS_LOGIN from tbfuncionario f, tbusuario u '+
              'where f.usuario = u.chave ');

             
     //un
     atualiza('UNI_FON','UNI_SIGLA','UNIDADES',
              'select chave, SUBSTRING(un,1,3) as UNI_SIGLA, un as UNI_DESCRICAO from tbun');


     //usuario
     selq('delete from USERS');
     atualiza('USERS','USERS_LOGIN','USUARIOS',
              'select chave, nome as USERS_LOGIN, nome as USERS_NAME, senha as USERS_PASSWORD from tbusuario');

                      
     caption := 'Paf/ECF';
     msg('Atualizados!',0);
     if list.Count >0 then begin
        list.SaveToFile('C:\pafecf.TXT');
        ShellExecute(Handle, 'open', 'C:\pafecf.TXT', nil, '', SW_MAXIMIZE);
     end;
     list.Destroy;



{     //PRODUTO
     atualiza('E01_FON','E01_ID','PRODUTOS',
              'select chave, chave as E01_ID, codigo as E01_PRODUTO, SUBSTRING(descricao, 1, 29) as E01_DESCRICAO, if (un is null,"UN",SUBSTRING(un, 1, 3)) as E01_SIGLAUNIDADE,'+
                    ' codigobarras as  E01_CODIGOBARRA, if(estoque is null,0,estoque) AS E01_ESTOQUE, 0 as E01_ESTOQUERESERVADO, if (vrvenda is null,0,vrvenda) as E01_PRECOVENDA, '+
                    ' 0 as E01_DESCONTOMAXIMO, '+
                    ' if(comissao is null,0,comissao) as E01_PORCENTOCOMISSAO, "E" as E01_CLASSIFICACAO, "T" as E01_IAT, "P" as E01_IPPT, SUBSTRING(ncmsh, 1, 8) as E01_CODIGONCM, '+
                    ' 2 as E01_CASASDECIMALQTDE, 2 as E01_CASASDECIMALVALOR,  null as E01_CODIGOGENERO, null as E01_CODIGOEXIPI, '+
                    ' "00" as E01_TIPOPRODUTO, "1" as E01_POSSE, "T" as E01_MOVIMENTAESTOQUE,  0 as E01_PORCENTOISSQN,'+
                    ' if (pis is null,0,pis) as E01_PORCENTOPIS,  if(confins is null,0,confins) as E01_PORCENTOCOFINS, if((imposto is not null and imposto>0),imposto,0) as E01_PORCENTOICMS, '+
                    ' concat(if(nacimps is null,null,nacimps),st) as E01_CST, ECF_ICMS, if ((fracao is null or fracao<=0),"F","T") as E01_FRACIONADO, "F" as E01_PESADO,'+
                    ' null as E01_HASH from tbproduto where ECF_ICMS is not null and ativoV = "S"  and pdv = "S" and (flag <> "D" or flag is null) order by chave');}

end;

procedure Tfperiodo2.BitBtn2Click(Sender: TObject);
begin
      conector.Database := ldatabase.Text ;
      conector.HostName := lhostname.Text ;
      conector.password := lpassword.Text ;
      conector.User     := luser.Text ;
      conector.Protocol := 'firebird-2.0';

      conector.Disconnect;
      try
         conector.Connect;
      except msg('#Não foi possível conectar.',0);
      end;

      msg('Conectado.',0);





end;


procedure Tfperiodo2.paf16Click(Sender: TObject);


            function qtditens(Ent: string;cpval:integer): string;
            var
              Bruto,text,qtd: string;
              cont,i: integer;
            begin
              Bruto := ent;

              i:=0;
              for cont := 0 to length(Bruto) do begin

                  if Bruto[cont] = '|' then inc(i);

                  if (i=cpval) and (copy(Bruto,(cont+1),1)<>'|') then
                     text:= text + copy(Bruto,(cont+1),1);

              end;
              result := text;
            end;



var
qpedidop,qpedidoip,qpedidos,qpedidois,qecf,qecfi,qsintegrap,qsintegrai,qdescricao,query,ecfcompl :tzquery;
qti,qtj,chavep,chaveecf:integer;
cap:string;
bx:WideString;

      procedure gravapedido;
      begin
            qpedidos.Edit;

            selecione('select max(numero)as numero from tbpedido');
            qpedidos['numero'] := sqlpub.fieldbyname('numero').AsInteger+1;
            qpedidos['spedido'] := qpedidop.fieldbyname('MCF_CCF').AsInteger;
            qpedidos['caixa'] := qpedidop.fieldbyname('num_caixa_ECF').AsString;
            qpedidos['ecf'] := ecfcompl.fieldbyname('num_serie_ECF').AsString;
            qpedidos['nf'] := qpedidop.fieldbyname('MCF_CCF').AsInteger;
            qpedidos['data'] := qpedidop.fieldbyname('data').AsDateTime;
            qpedidos['dtfechamento'] := qpedidop.fieldbyname('data').AsDateTime;

            if qpedidop.fieldbyname('codigo').AsInteger >0 then
               qpedidos['codigo'] := qpedidop.fieldbyname('codigo').AsInteger
            else qpedidos['codigo'] :=1;

            if qpedidop.fieldbyname('nome').AsString <> '' then
                 qpedidos['nome'] := qpedidop.fieldbyname('nome').AsString
            else qpedidos['nome'] := 'BALCAO';

            qpedidos['modo'] := 'V';
            //qpedidos['usuario'] := qpedidop.fieldbyname('usuario').AsString; integer
            qpedidos['serial'] := GetIP;
            qpedidos['tipoestoque'] := '1';
            qpedidos['tipovenda'] := 'V';
            qpedidos['avulso'] := 'N';
            qpedidos['modo'] := 'V';
            qpedidos['md'] := 'F';

            if qpedidop.fieldbyname('status').AsString = 'T' then qpedidos['status'] := 'C';

            qpedidos['codigovendedor'] := qpedidop.fieldbyname('codigovendedor').AsInteger;
            qpedidos['totalparcial'] := qpedidop.fieldbyname('total').AsFloat +
                                        qpedidop.fieldbyname('acrescimo').AsFloat-
                                        qpedidop.fieldbyname('desconto').AsFloat;

            qpedidos['total'] := qpedidop.fieldbyname('total').AsFloat;
            qpedidos['totalpeca'] := qpedidop.fieldbyname('total').AsFloat;
            qpedidos['acrescimo'] := qpedidop.fieldbyname('acrescimo').AsFloat;
            qpedidos['descontoreal'] := qpedidop.fieldbyname('desconto').AsFloat;
            qpedidos['recebido'] := qpedidop.fieldbyname('recebido').AsFloat;
            qpedidos['troco'] := qpedidop.fieldbyname('troco').AsFloat;

            grava(nil,qpedidos,'tbpedido');

            selecione('select chave from tbpedido where '+
                     'numero = '+ inttostr(qpedidos.fieldbyname('numero').AsInteger)+
                     ' and caixa ='+ quotedstr(qpedidos.fieldbyname('caixa').AsString)+
                     ' and ecf ='+ quotedstr(qpedidos.fieldbyname('ecf').AsString));

            chavep := sqlpub.fieldbyname('chave').AsInteger;
         end;




      procedure gravapedidoitem;

      begin
           qpedidois.Edit;

           if  qpedidoip['MCF_CANCELADO'] = 'T' then   qpedidois['status'] := 'C';
                                                //else   qpedidois['status'] := 'R';

           qpedidois['link'] :=          chavep;
           qpedidois['tipovenda'] :=     qpedidos['tipovenda'];
           qpedidois['codigocliente'] := qpedidos['codigo'];
           qpedidois['modo'] :=          qpedidos['modo'];
           qpedidois['numero'] :=        qpedidop.fieldbyname('MCF_CCF').AsInteger;
           qpedidois['st'] :=            qpedidoip.fieldbyname('st').AsString;
           qpedidois['imposto'] :=       qpedidoip.fieldbyname('imposto').AsFloat;
           qpedidois['pis'] :=           qpedidoip.fieldbyname('pis').AsFloat;
           qpedidois['cofins'] :=        qpedidoip.fieldbyname('cofins').AsFloat;
           qpedidois['codigo'] :=        qpedidoip.fieldbyname('codigo').AsInteger;
           qpedidois['descontoreal'] :=  qpedidoip.fieldbyname('desconto').AsFloat;
           qpedidois['acrescimo'] :=     qpedidoip.fieldbyname('acrescimo').AsFloat;
           qpedidois['data'] :=          qpedidop.fieldbyname('data').AsDateTime;

           if qdescricao.Locate('codigo',qpedidoip.fieldbyname('codigo').AsString,[]) then begin
              qpedidois['custo'] := qdescricao.fieldbyname('vrunit').AsFloat;
           end;

           qpedidois['vrunit'] :=        qpedidoip.fieldbyname('vrunit').AsFloat;
           qpedidois['qtd'] :=           qpedidoip.fieldbyname('qtd').AsFloat;
           qpedidois['totalparcial'] :=  qpedidoip.fieldbyname('total').AsFloat -
                                         qpedidoip.fieldbyname('desconto').AsFloat+
                                         qpedidoip.fieldbyname('acrescimo').AsFloat;
           qpedidois['total'] :=         qpedidoip.fieldbyname('total').AsFloat;
           grava(nil, qpedidois,'tbpedidoitem');
           qpedidois.Cancel;
      end;




         procedure gravaecf;
         begin
            qecf.edit;



            qecf['num_cupom'] := qpedidop.fieldbyname('MCF_CCF').AsInteger;
            qecf['numdocumento'] := qpedidop.fieldbyname('MCF_COO').AsInteger;
            qecf['COD_MOD'] := qtditens(ecfcompl.fieldbyname('ECF_IDENTIFICACAO').AsString,2) ;
            qecf['ECF_MOD'] :=qtditens(ecfcompl.fieldbyname('ECF_IDENTIFICACAO').AsString,5) ;
            qecf['num_serie_ECF'] := ecfcompl.fieldbyname('num_serie_ECF').AsString;
            qecf['num_caixa_ECF'] := qpedidop.fieldbyname('num_caixa_ECF').AsString;
            qecf['data'] := qpedidop.fieldbyname('data').AsDateTime;
            qecf['hora'] := qpedidop.fieldbyname('hora').AsString;
            qecf['modulogerador'] := 'balcao';

            if qpedidop['status'] = 'T' then  qecf['status'] := 'C'
                                        else  qecf['status'] := 'R';
            Grava(nil,qecf, 'TbEcf');

            selecione('select chave from tbecf where '+
                     ' num_cupom         ='+ quotedstr(qpedidop.fieldbyname('MCF_CCF').AsString)+
                     ' and numdocumento ='+ quotedstr(qpedidop.fieldbyname('MCF_COO').AsString)+
                     ' and num_serie_ECF ='+ quotedstr(qpedidop.fieldbyname('num_serie_ECF').AsString)+
                     ' and num_caixa_ECF ='+ quotedstr(qpedidop.fieldbyname('num_caixa_ECF').AsString));

            chaveecf := sqlpub.fieldbyname('chave').AsInteger;
         end;



      procedure gravaecfitem;
      begin
         qecfi.edit;
         qecfi['link'] := chaveecf;
         qecfi['numdocumento'] := qpedidop.fieldbyname('MCF_COO').AsInteger;

         if      qpedidoip['st']= 'F'        then  qecfi['imposto']:= '00'
         else if qpedidoip['st']= 'I' then  qecfi['imposto']:= '0'
         else    qecfi['imposto'] := qpedidoip.fieldbyname('imposto').AsFloat;

         qecfi['SitTributaria'] := qpedidoip.fieldbyname('st').AsString;
         qecfi['codigo'] := qpedidoip.fieldbyname('codigo').AsInteger;

         if qdescricao.Locate('codigo',qpedidoip.fieldbyname('codigo').AsString,[]) then begin
            qecfi['descricao'] := qdescricao.fieldbyname('descricao').AsString;
            qecfi['un'] := qdescricao.fieldbyname('un').AsString;
         end;

         qecfi['qtd'] := qpedidoip.fieldbyname('qtd').AsFloat;
         qecfi['desconto'] := qpedidoip.fieldbyname('desconto').AsFloat;
         qecfi['vrunit'] := qpedidoip.fieldbyname('vrunit').AsFloat;
         qecfi['numitem'] := qpedidoip.fieldbyname('numitem').AsInteger;
         qecfi['pis'] := qpedidoip.fieldbyname('pis').AsFloat;
         qecfi['cofins'] := qpedidoip.fieldbyname('cofins').AsFloat;

         if qpedidoip['MCF_CANCELADO'] = 'T' then  qecfi['status'] := 'C'
                                             else  qecfi['status'] := 'R';
         qecfi['total']:=(qecfi.FieldByName('vrunit').AsFloat -
                          qecfi.FieldByName('desconto').AsFloat) *
                          qecfi.FieldByName('qtd').asFloat;

         Grava(nil,qecfi, 'TbEcfItem');
         qecfi.Cancel;
      end;

begin

      conectpaf;
      qpedidop := tzquery.create(application);
      with qpedidop do begin
           Connection := conector;

           sql.Clear;
           sql.Add('alter table MCF_FON add baixado integer');
           try  execsql; except end;

           sql.Clear;
           sql.Add('alter table MCF_F01 add baixado integer');
           try  execsql; except end;


           sql.Clear;
           sql.Add('alter table NF2_FON add baixado char(1)');
           try  execsql; except end;

           sql.Clear;
           sql.Add('alter table NF2_F01 add baixado char(1)');
           try  execsql; except end;

           sql.Clear;
           sql.Add('alter table SIN_60M add baixado char(1)');
           try  execsql; except end;

           close;
     end;


    cap := caption;
    caption := 'ESPERE...';




      ecfcompl := tzquery.create(application);
      with ecfcompl do begin //complemento ecf
           Connection := conector;
          sql.Clear;
          sql.add('select * from ECF_FON ');
          open;
      end;



     with qpedidop do begin//sintegra
          sql.Clear;
          sql.add('select g.sin_id, g.ECF_NUMEROSERIE as num_serie_ecf, g.SIN_DATAEMISSAO as data,'+
                  ' g.SIN_CRO as CRO, g.SIN_COOINICIAL as COOinicial, g.SIN_COOFINAL as COOfinal,'+
                  ' g.SIN_CRZ as CRZ, g.SIN_VENDABRUTA as VrvendaBruta, g.SIN_GRANDETOTAL as GrandeTotal, '+
                  ' g.MNF_CODIGO, g.SIN_SINCRONIZADO from SIN_60M g where baixado is null');
          //debugstr(qpedidop);
          open;

           selecione('select * from tbsintegra limit 0');
           while not qpedidop.eof do begin

                 ecfcompl.Locate('ecf_numeroserie', qpedidop.fieldbyname('num_serie_ECF').AsString,[]);

                 sqlpub.edit;
                 sqlpub['sin_id'] := qpedidop.fieldbyname('sin_id').asstring;
                 sqlpub['num_serie_ecf'] := qpedidop.fieldbyname('num_serie_ecf').asstring;
                 sqlpub['data'] := qpedidop.fieldbyname('data').asstring;
                 sqlpub['CRO'] := qpedidop.fieldbyname('CRO').asstring;
                 sqlpub['CRZ'] := qpedidop.fieldbyname('CRZ').asstring;
                 sqlpub['COOinicial'] := qpedidop.fieldbyname('COOinicial').asstring;
                 sqlpub['COOfinal'] := qpedidop.fieldbyname('COOfinal').asstring;
                 sqlpub['VrvendaBruta'] := qpedidop.fieldbyname('VrvendaBruta').asfloat;
                 sqlpub['GrandeTotal'] := qpedidop.fieldbyname('GrandeTotal').asfloat;
                 sqlpub['COD_MOD'] := qtditens(ecfcompl.fieldbyname('ECF_IDENTIFICACAO').AsString,2) ;
                 sqlpub['ECF_MOD'] :=qtditens(ecfcompl.fieldbyname('ECF_IDENTIFICACAO').AsString,5) ;
                 grava(nil,sqlpub,'tbsintegra');
                 sqlpub.cancel;
                 qpedidop.next;
           end;

           close;
           sql.Clear;
           sql.add('update SIN_60M set baixado = '+quotedstr('S')+' where baixado is null');
           execsql;
     end;

                            


     with qpedidop do begin//vendas mestre pafecf

          codloc :='';
          sql.Clear;
          sql.add('select MCF_ID, ECF_NUMERO, MCF_COO, MCF_CCF, MCF_EMISSAO as data, '+
                  'MCF_HORA as hora, MCF_TOTALPRODUTOS as total,  MCF_ACRESCIMO as acrescimo,'+
                  ' MCF_DESCONTO as desconto, MCF_CANCELADA as status, MCF_RECEBIDO as recebido, MCF_TROCO as troco,'+
                  ' R01_CLIENTE as codigo,R01_NOME as nome,  E05_VENDEDOR as codigovendedor,  '+
                  ' C00_CAIXA as num_caixa_ECF, ECF_numero as num_serie_ECF,C01_OPERADOR as usuario from MCF_FON '+
                  ' where (MCF_RECEBIDO is not null and MCF_RECEBIDO>0) and baixado is null');
          open;

          while not eof do begin
                if codloc = '' then codloc := ' where (MCF_ID = '+inttostr(fieldbyname('MCF_ID').asinteger)
                               else codloc := codloc+ ' or MCF_ID = '+inttostr(fieldbyname('MCF_ID').asinteger);

          end;

          if codloc <> '' then codloc := codloc+ ')';
          bx := codloc;
          first;

     end;




      qpedidoip := tzquery.create(application);
      with qpedidoip do begin //vendas detalhes pafecf
           Connection := conector;
          sql.Clear;
          sql.add('select MCF_ID, MCF_ORDEM as numitem, E01_PRODUTO as codigo, '+
                  ' MCF_QUANTIDADE as qtd, MCF_PRECOUNITARIO as vrunit,  MCF_TOTALITEM as total,  '+
                  ' MCF_ICMSALIQUOTA as imposto,  MCF_DESCONTO as desconto, MCF_ISSQNALIQUOTA as iss,'+
                  ' MCF_PISALIQUOTA  as pis,  MCF_COFINSALIQUOTA as cofins,'+
                  ' MCF_ACRESCIMO as acrescimo, MCF_CANCELADO, MCF_ICMSCST as st from MCF_F01 ' + codloc+
                  ' order by MCF_ID ');
          open;
          codloc :='';

          while not eof do begin
                if codloc = '' then codloc := ' where (codigo = '+inttostr(fieldbyname('codigo').asinteger)
                               else codloc := codloc+ ' or codigo = '+inttostr(fieldbyname('codigo').asinteger);
                next;
          end;

          if codloc <> '' then codloc := codloc+ ')';
          first;
     end;


      query := tzquery.create(application);//atualizar paf
      query.Connection := conector;


      qdescricao := tzquery.create(application);//descricao produto
      with qdescricao do begin
           Connection := fdm.conector;
           sql.Add('select codigo,descricao,un,vrunit from tbproduto' + codloc+  ' order by codigo ');
           open;
           codloc :='';
      end;

      qpedidos := tzquery.create(application);//importar ecf
      with qpedidos do begin
           Connection := fdm.conector;
           sql.Add('select * from tbpedido where chave = -10000');
           open;
      end;

      qpedidois := tzquery.create(application);//importar ecf
      with qpedidois do begin
           Connection := fdm.conector;
           sql.Add('select * from tbpedidoitem where chave = -10000');
           open;
      end;


      qecf := tzquery.create(application);//importar ecf
      with qecf do begin
           Connection := fdm.conector;
           sql.Add('select * from tbecf where chave = -10000');
           open;
      end;

      qecfi := tzquery.create(application);//importar ecf
      with qecfi do begin
           Connection := fdm.conector;
           sql.Add('select * from tbecfitem where chave = -10000');
           open;
      end;


      qti:= qpedidop.RecordCount + qpedidoip.RecordCount;
      qtj:=0;

      qpedidop.First;
      while not qpedidop.Eof do begin

            ecfcompl.Locate('ecf_numeroserie', qpedidop.fieldbyname('num_serie_ECF').AsString,[]);

            gravapedido;
            gravaecf;

            inc(qtj);

            //grava os itens
            qpedidoip.Filtered := false;
            qpedidoip.Filter   := 'MCF_ID = ' + quotedstr(qpedidop.fieldbyname('MCF_ID').AsString);
            qpedidoip.Filtered := true;
            qpedidoip.First;

            while not qpedidoip.Eof do begin

                  gravapedidoitem;
                  alimentaestoque(qpedidoip.FieldByName('codigo').AsString,
                                  qpedidoip.FieldByName('qtd').AsFloat * (-1), '1',0);


                  qpedidos.Cancel;

                  gravaecfitem;
                  qecf.Cancel;

                  qpedidoip.Next;

                  caption := '..... IMPORTANDO ..... ESPERE ..... ' +  inttostr(qti) +'    DE    '+  inttostr(qti-qtj);
                  inc(qtj);


            end;


            qpedidop.Next;
      end;



      with query do begin
           sql.Clear;
           sql.add('update MCF_FON set baixado = 1 ' + bx);//baixa paf mestre
           execsql;

           sql.Clear;
           sql.Add('update MCF_F01 set baixado = 1 ' + bx); //baixa paf detalhes
           execsql;
      end;

      sqlpub := nil ;
      qpedidop.Destroy;
      qpedidoip.Destroy;
      qpedidos.Destroy;
      qpedidois.Destroy;
      qecf.Destroy;
      qecfi.Destroy;
      qdescricao.Destroy;
      query.Destroy;

      caption := cap;
      msg('Importado',0);

end;


procedure Tfperiodo2.gradevital1TitleClick(Column: TColumn);
begin
//fdm.tbnet.IndexFieldNames := Column.FieldName;
end;

end.

