unit uconfigimp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Spin, Inifiles,rltypes,
  RLReport, RLFilters, RLDraftFilter, DBCtrls, ActnList,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, DBClient;

type
  Tfconfigimp = class(TForm)
    PageControl1: TPageControl;
    boleto: TTabSheet;
    campos: TTabSheet;
    ScrollBox1: TScrollBox;
    Label8: TLabel;
    Label9: TLabel;
    qboleto: TRLReport;
    bminstrucao: TMemo;
    beinstrcao2: TEdit;
    ActionList2: TActionList;
    boletoc: TAction;
    boletog: TAction;
    Panel2: TPanel;
    tkvert: TScrollBar;
    Label22: TLabel;
    Label21: TLabel;
    TkHor: TScrollBar;
    lpv: TLabel;
    lph: TLabel;
    btnvisualiza: TSpeedButton;
    ds: TDataSource;
    PageControl2: TPageControl;
    tboleto: TTabSheet;
    Button4: TButton;
    btngravar: TSpeedButton;
    carrega: TAction;
    brvencimento: TCheckBox;
    brdata: TCheckBox;
    brdocumento: TCheckBox;
    brvalor: TCheckBox;
    brmora: TCheckBox;
    brdesconto: TCheckBox;
    brobs: TCheckBox;
    brinstrucao: TCheckBox;
    brinstrucao2: TCheckBox;
    brnome: TCheckBox;
    brcnpj: TCheckBox;
    brie: TCheckBox;
    brendereco: TCheckBox;
    brenderecocobranca: TCheckBox;
    brsacado: TCheckBox;
    brtotal: TCheckBox;
    tabpapel: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    SAltura: TSpinEdit;
    SLargura: TSpinEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label26: TLabel;
    SMInferior: TSpinEdit;
    SMDireita: TSpinEdit;
    SMsuperior: TSpinEdit;
    SMEsquerda: TSpinEdit;
    tcliente: TTabSheet;
    confinicial: TAction;
    gboleto: TGroupBox;
    bLinstrucao2: TRLLabel;
    bldata: TRLDBText;
    bldocumento: TRLDBText;
    blvencimento: TRLDBText;
    blvalor: TRLDBText;
    bLdesconto: TRLDBText;
    bltotal: TRLDBText;
    blmora: TRLLabel;
    blobs: TRLDBText;
    bLinstrucao: TRLMemo;
    blnome: TRLDBText;
    bLEndereco: TRLDBText;
    blenderecocobranca: TRLDBText;
    blsacado: TRLDBText;
    blie: TRLDBText;
    blcnpj: TRLDBText;
    qduplicata: TRLReport;
    RLBand4: TRLBand;
    RLLabel29: TRLLabel;
    RLMemo5: TRLMemo;
    RLLabel3: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLLabel34: TRLLabel;
    RLDBText31: TRLDBText;
    ljuro: TRLLabel;
    RLLabel35: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel37: TRLLabel;
    RLDBText34: TRLDBText;
    RLLabel38: TRLLabel;
    RLDBText35: TRLDBText;
    RLLabel39: TRLLabel;
    RLDBText36: TRLDBText;
    RLLabel40: TRLLabel;
    RLDBText37: TRLDBText;
    RLLabel41: TRLLabel;
    RLDBText38: TRLDBText;
    RLLabel42: TRLLabel;
    RLDBText39: TRLDBText;
    RLLabel43: TRLLabel;
    RLDBText42: TRLDBText;
    RLLabel44: TRLLabel;
    RLDBText44: TRLDBText;
    RLDBText45: TRLDBText;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLDBText46: TRLDBText;
    RLLabel47: TRLLabel;
    lvrextenso: TRLLabel;
    RLLabel48: TRLLabel;
    lrodapeduplicata: TRLMemo;
    RLLabel49: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLMemo3: TRLMemo;
    RLMemo4: TRLMemo;
    RLMemo6: TRLMemo;
    RLLabel56: TRLLabel;
    RLBand5: TRLBand;
    RLBand6: TRLBand;
    er1: TRLLabel;
    er2: TRLLabel;
    er3: TRLLabel;
    ltitulo1: TRLAngleLabel;
    Label4: TLabel;
    efonte: TSpinEdit;
    rnegrito: TCheckBox;
    papelC: TAction;
    papelG: TAction;
    Bevel1: TBevel;
    lbanco: TLabel;
    Label10: TLabel;
    rboleto: TRadioGroup;
    Label11: TLabel;
    qcarne: TRLReport;
    RLDetailGrid2: TRLDetailGrid;
    qcolunas: TRLDetailGrid;
    RLLabel1: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    LCLIENTE1c: TRLMemo;
    RLDBText12: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    er1c: TRLLabel;
    er2c: TRLLabel;
    er3c: TRLLabel;
    ltitulo1c: TRLAngleLabel;
    i1c: TRLImage;
    ljuroc: TRLLabel;
    npromissoriac: TAction;
    qpromissoria: TRLReport;
    RLBand1: TRLBand;
    RLLabel12: TRLLabel;
    RLDBText1: TRLDBText;
    lvencimentonp: TRLLabel;
    RLLabel31: TRLLabel;
    ldatanp: TRLLabel;
    lpagarei: TRLLabel;
    lrodapenp: TRLMemo;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel20: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText13: TRLDBText;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel60: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel61: TRLLabel;
    lnumeronp: TRLAngleLabel;
    lvalornp: TRLAngleLabel;
    lnpromissoria: TRLAngleLabel;
    lcidadenp: TRLLabel;
    lavalistanp: TRLMemo;
    RLLabel62: TRLLabel;
    RLBand2: TRLBand;
    GroupBox5: TGroupBox;
    rempresa1: TCheckBox;
    renderecoempresa1: TCheckBox;
    robs1: TCheckBox;
    rnf1: TCheckBox;
    rempresa: TCheckBox;
    renderecoempresa: TCheckBox;
    rnome: TCheckBox;
    rendereco: TCheckBox;
    rbairro: TCheckBox;
    rmunicipio: TCheckBox;
    rcep: TCheckBox;
    ruf: TCheckBox;
    rnf: TCheckBox;
    robs: TCheckBox;
    ccliente: TAction;
    mostrar: TAction;
    cclienteg: TAction;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    smqtd: TSpinEdit;
    smaltura: TSpinEdit;
    smespaco: TSpinEdit;
    banda: TRLDetailGrid;
    TabSheet2: TTabSheet;
    gcliente: TGroupBox;
    lnome: TRLDBText;
    lbairro: TRLDBText;
    lmunicipio: TRLDBText;
    lcep: TRLDBText;
    luf: TRLDBText;
    lempresa: TRLLabel;
    lobs: TRLDBText;
    lnf: TRLDBText;
    lenderecoempresa: TRLMemo;
    lendereco: TRLDBText;
    procedure SCabecalhoKeyPress(Sender: TObject; var Key: Char);
    procedure tkvertChange(Sender: TObject);
    procedure tkvertEnter(Sender: TObject);
    procedure TkHorEnter(Sender: TObject);
    procedure TkHorChange(Sender: TObject);
    procedure boletocExecute(Sender: TObject);
    procedure boletogExecute(Sender: TObject);
    procedure bLEnderecoBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure blenderecocobrancaBeforePrint(Sender: TObject;
      var Text: String; var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnvisualizaClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure rboletoClick(Sender: TObject);
    procedure carregaExecute(Sender: TObject);
    procedure confinicialExecute(Sender: TObject);
    procedure qduplicataBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure papelCExecute(Sender: TObject);
    procedure papelGExecute(Sender: TObject);
    procedure SAlturaChange(Sender: TObject);
    procedure SLarguraChange(Sender: TObject);
    procedure SMInferiorChange(Sender: TObject);
    procedure SMsuperiorChange(Sender: TObject);
    procedure SMDireitaChange(Sender: TObject);
    procedure SMEsquerdaChange(Sender: TObject);
    procedure efonteChange(Sender: TObject);
    procedure rnegritoClick(Sender: TObject);
    procedure qcolunasBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure qcarneBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDBText10BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure npromissoriacExecute(Sender: TObject);
    procedure qpromissoriaBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure cclienteExecute(Sender: TObject);
    procedure mostrarExecute(Sender: TObject);
    procedure cclientegExecute(Sender: TObject);
    procedure qboletoBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rempresa1Click(Sender: TObject);
    procedure lendereco1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure lenderecoBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
  private

  page:integer;
  npage,compl,data,valor:string;
    { Private declarations }
  public

    { Public declarations }


    constructor Create(AOwner: TComponent; tabela:tclientdataset;tz:tzquery; page_:integer;visualiza:boolean); reintroduce;


  end;

var
  fconfigimp: Tfconfigimp;

implementation

uses udm, funcoes, umanu;

{$R *.dfm}



constructor Tfconfigimp.Create(AOwner: TComponent; tabela:tclientdataset;tz:tzquery; page_:integer;visualiza:boolean);
var
i,j:integer;
pg:ttabsheet;
imp,endtp:string;
begin



         Inherited Create(AOwner);


         {page_ =0 boleto}

         pagecontrol1.ActivePageIndex:=0;
         page := page_;

         case page of
              0: npage :='boleto';
              2: npage :='etiquetacliente';
         end;

         case page of
              0: pg :=tboleto;
              2: pg :=tcliente;
         end;

         if page <> 0 then gboleto.Destroy;
         if page <> 2 then gcliente.Destroy;


         if page = 2 then begin
            codloc :='1';
            imp := msgi('Imprimir etiqueta com o endereço de:'+#13+#13+
                    '1= Cadastro'+ #13+
                    '2= Cobrança'+#13+
                    '3= Entrega   ',2);
            if not (strtoint(imp) in [1..3]) then imp :='1';

            if imp = '2' then endtp :='cobranca' else
            if imp = '3' then endtp :='entrega';

           lbairro.DataField := 'Bairro'+endtp;
           lcep.DataField := 'Cep'+endtp;
           lmunicipio.DataField := 'municipio'+endtp;
           luf.DataField := 'UF'+endtp;
           compl :=  endtp;

         end;

         confinicialExecute(self);

        if visualiza then begin
               pagecontrol2.ActivePageIndex :=0;
               j := pagecontrol2.PageCount ;

               pagecontrol2.Width := 161;
               for i:=0 to j do begin
                   if (pagecontrol2.ActivePage <> pg) and
                      (pagecontrol2.ActivePage <> tabpapel) then
                      pagecontrol2.ActivePage.Destroy
                   else begin
                        pagecontrol2.ActivePageIndex := pagecontrol2.ActivePageIndex+1;
                   end;
               end;

               pagecontrol2.Width := 130;
               pagecontrol1.ActivePageIndex :=1;
               pagecontrol1.ActivePage.Destroy;
               pagecontrol2.ActivePageIndex :=0;
               pagecontrol1.TabHeight := 1;
               pagecontrol1.ActivePage.Caption :='';

        end;

        if tabela <> nil then
           ds.DataSet := tabela
        else
           ds.DataSet := tz;
        carregaExecute(self);

        if not visualiza then btnvisualizaclick(self);



end;


procedure Tfconfigimp.SCabecalhoKeyPress(Sender: TObject; var Key: Char);
begin
          if not (key in ['0'..'9', #8]) then abort;
end;

procedure Tfconfigimp.tkvertChange(Sender: TObject);
begin

        lpv.Caption := floattostr(Tkvert.position);
        //cli
        if page = 2 then begin
            if rempresa.checked then lempresa.top:=Tkvert.Position;
            if renderecoempresa.checked then lenderecoempresa.top:=Tkvert.Position;
            if rnome.checked then lnome.top:=Tkvert.Position;
            if rendereco.checked then lendereco.top:=Tkvert.Position;
            if rbairro.checked then lbairro.top:=Tkvert.Position;
            if rmunicipio.checked then lmunicipio.top:=Tkvert.Position;
            if rcep.checked then lcep.top:=Tkvert.Position;
            if ruf.checked then luf.top:=Tkvert.Position;
            if rnf.checked then lnf.top:=Tkvert.Position;
            if robs.checked then lobs.top:=Tkvert.Position;
         end;

            //boleto
        if page = 0 then begin
            if brinstrucao2.checked then blinstrucao2.top:=Tkvert.Position;
            if brdata.checked then bLdata.top:=Tkvert.Position;
            if brvencimento.checked then blvencimento.top:=Tkvert.Position;
            if brdocumento.checked then  bldocumento.top:=Tkvert.Position;
            if brvalor.checked then  blvalor.top:=Tkvert.Position;
            if brmora.checked then bLmora.top:=Tkvert.Position;
            if brdesconto.checked then bldesconto.top:=Tkvert.Position;
            if brtotal.checked then bltotal.top:=Tkvert.Position;
            if brobs.checked then bLobs.top:=Tkvert.Position;
            if brinstrucao.checked then bLinstrucao.top:=Tkvert.Position;
            if brnome.checked then bLnome.top:=Tkvert.Position;
            if brcnpj.checked then bLcnpj.top:=Tkvert.Position;
            if brie.checked then bLie.top:=Tkvert.Position;
            if brendereco.checked then bLendereco.top:=Tkvert.Position;
            if brenderecocobranca.checked then bLenderecocobranca.top:=Tkvert.Position;
            if brsacado.checked then blsacado.top:=Tkvert.Position;
         end;

end;

procedure Tfconfigimp.tkvertEnter(Sender: TObject);
begin
          //i := tkvert.Position;
end;

procedure Tfconfigimp.TkHorEnter(Sender: TObject);
begin
//  i := barh.Position;
end;

procedure Tfconfigimp.TkHorChange(Sender: TObject);
begin

        lph.Caption := floattostr(TkHor.position);

        //cli
        if page = 2 then begin
            if rnome.checked then lnome.left:=TkHor.Position;
            if rendereco.checked then lendereco.left:=TkHor.Position;
            if rbairro.checked then lbairro.left:=TkHor.Position;
            if rmunicipio.checked then lmunicipio.left:=TkHor.Position;
            if rcep.checked then lcep.left:=TkHor.Position;
            if ruf.checked then luf.left:=TkHor.Position;
            if rnf.checked then lnf.left:=TkHor.Position;
        end;

            //boleto
        if page = 0 then begin
            if brinstrucao2.checked then blinstrucao2.left:=TkHor.Position;
            if brdata.checked then bLdata.left:=TkHor.Position;
            if brvencimento.checked then blvencimento.left:=TkHor.Position;
            if brdocumento.checked then  bldocumento.left:=TkHor.Position;
            if brvalor.checked then  blvalor.left:=TkHor.Position;
            if brmora.checked then bLmora.left:=TkHor.Position;
            if brdesconto.checked then  bldesconto.left:=TkHor.Position;
            if brtotal.checked then bltotal.left:=TkHor.Position;

            if brobs.checked then bLobs.left:=TkHor.Position;
            if brinstrucao.checked then bLinstrucao.left:=TkHor.Position;
            if brnome.checked then bLnome.left:=TkHor.Position;
            if brcnpj.checked then bLcnpj.left:=TkHor.Position;
            if brie.checked then bLie.left:=TkHor.Position;
            if brendereco.checked then bLendereco.left:=TkHor.Position;
            if brenderecocobranca.checked then bLenderecocobranca.left:=TkHor.Position;
            if brsacado.checked then blsacado.left:=TkHor.Position;
         end;   

end;

procedure Tfconfigimp.boletocExecute(Sender: TObject);
var
Ini:TInifile;
imp:string;
texto:tmemorystream;
begin            

             codloc :='1';
             if not Active then begin
                imp := msgi('1 = Imprime Boleto 1 '+#13+
                            '2 = Imprime Boleto 2 '+#13+
                            '3 = Imprime Boleto 3 '+#13+
                            '4 = Imprime Boleto 4 '+#13+
                            '5 = Imprime Boleto 5 '+#13+
                            '6 = Imprime Boleto 6 ',0);

                if (imp <> '1')and (imp <> '2') and(imp <> '3')and (imp <> '4')and
                   (imp <> '5')and (imp <> '6') then imp :='1' ;

                rboleto.ItemIndex:=  strtoint(imp)-1;
             end;

        papelCExecute(self);
        texto := tmemorystream.Create;
        Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\'+npage+rboleto.Items[rboleto.itemindex]+'.ini');

        //Configuração do Papel
        ini.ReadBinaryStream('config','memo',texto);
        bminstrucao.Lines.LoadFromStream(texto);
        texto.Free;
        beinstrcao2.text:=Ini.Readstring('Config', 'einstrucao2', beinstrcao2.text);
        //Posição Top

        lbanco.Caption:=Ini.Readstring('Config', 'lbanco', 'Boleto1');
        blinstrucao2.top:=Ini.ReadInteger('linstrucao2', 'top',blinstrucao2.top);
        bldata.top:=Ini.ReadInteger('ldata', 'top',bldata.top);
        blvencimento.top:=Ini.ReadInteger('lvencimento', 'top',blvencimento.top);
        bldocumento.top:=Ini.ReadInteger('ldocumento', 'top',bldocumento.top);
        blvalor.top:=Ini.ReadInteger('lvalor', 'top',blvalor.top);
        blmora.top:=Ini.ReadInteger('lmora', 'top',blmora.top);
        bldesconto.top:=Ini.ReadInteger('ldesconto', 'top',bldesconto.top);
        bltotal.top:=Ini.ReadInteger('ltotal', 'top',bltotal.top);

        blobs.top:=Ini.ReadInteger('lobs', 'top',blobs.top);
        blinstrucao.top:=Ini.ReadInteger('linstrucao', 'top',blinstrucao.top);
        blnome.top:=Ini.ReadInteger('lnome', 'top',blnome.top);
        blcnpj.top:=Ini.ReadInteger('lcnpj', 'top',blcnpj.top);
        blie.top:=Ini.ReadInteger('lie', 'top',blie.top);
        blendereco.top:=Ini.ReadInteger('lendereco', 'top',blendereco.top);
        blenderecocobranca.top:=Ini.ReadInteger('lenderecocobranca', 'top',blenderecocobranca.top);
        blsacado.top:=Ini.ReadInteger('lsacado', 'top',blsacado.top);

        //Posição Left

        blinstrucao2.left:=Ini.ReadInteger('linstrucao2', 'left',blinstrucao2.left);
        bldata.left:=Ini.ReadInteger('ldata', 'left',bldata.left);
        blvencimento.left:=Ini.ReadInteger('lvencimento', 'left',blvencimento.left);
        bldocumento.left:=Ini.ReadInteger('ldocumento', 'left',bldocumento.left);
        blvalor.left:=Ini.ReadInteger('lvalor', 'left',blvalor.left);
        blmora.left:=Ini.ReadInteger('lmora', 'left',blmora.left);

        bldesconto.left:=Ini.ReadInteger('ldesconto', 'left',bldesconto.left);
        bltotal.left:=Ini.ReadInteger('ltotal', 'left',bltotal.left);

        blobs.left:=Ini.ReadInteger('lobs', 'left',blobs.left);
        blinstrucao.left:=Ini.ReadInteger('linstrucao', 'left',blinstrucao.left);
        blnome.left:=Ini.ReadInteger('lnome', 'left',blnome.left);
        blcnpj.left:=Ini.ReadInteger('lcnpj', 'left',blcnpj.left);
        blie.left:=Ini.ReadInteger('lie', 'left',blie.left);
        blendereco.left:=Ini.ReadInteger('lendereco', 'left',blendereco.left);
        blenderecocobranca.left:=Ini.ReadInteger('lenderecocobranca', 'left',blenderecocobranca.left);
        blsacado.left:=Ini.ReadInteger('lsacado', 'left',blsacado.left);
        bLinstrucao.Lines := bminstrucao.Lines;
        bLinstrucao2.Caption := beinstrcao2.Text;
        Ini.Free;

end;

procedure Tfconfigimp.boletogExecute(Sender: TObject);
var
 Ini:TInifile;
 texto:tstringstream;
 st:string;
begin


        CODLOC:=lbanco.Caption;
        st := msgi('Salvar alterações'+#13+#13+'Qual o nome do banco?',0);
        if st ='' then st := 'Boleto1';

        lbanco.Caption :=st ;

        papelGExecute(self);

        texto := tstringstream.Create(bminstrucao.Text);
        Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\'+npage+rboleto.Items[rboleto.itemindex]+'.ini');

        Ini.WriteBinaryStream('Config', 'memo', texto);
        texto.Free;

        Ini.Writestring('Config', 'einstrucao2', beinstrcao2.text);
        Ini.Writestring('Config', 'lbanco', st);
        Ini.Writestring('Config', 'linstrucao2', bLinstrucao2.Caption);
        Ini.WriteInteger('linstrucao2', 'top',blinstrucao2.top);
        Ini.WriteInteger('ldata', 'top',bldata.top);
        Ini.WriteInteger('lvencimento', 'top',blvencimento.top);
        Ini.WriteInteger('ldocumento', 'top',bldocumento.top);
        Ini.WriteInteger('lvalor', 'top',blvalor.top);
        Ini.WriteInteger('lmora', 'top',blmora.top);

        Ini.WriteInteger('ldesconto', 'top',bldesconto.top);
        Ini.WriteInteger('ltotal', 'top',bltotal.top);

        Ini.WriteInteger('lobs', 'top',blobs.top);
        Ini.WriteInteger('linstrucao', 'top',blinstrucao.top);
        Ini.WriteInteger('lnome', 'top',blnome.top);
        Ini.WriteInteger('lcnpj', 'top',blcnpj.top);
        Ini.WriteInteger('lie', 'top',blie.top);
        Ini.WriteInteger('lendereco', 'top',blendereco.top);
        Ini.WriteInteger('lenderecocobranca', 'top',blenderecocobranca.top);
        Ini.WriteInteger('lsacado', 'top',blsacado.top);


        Ini.WriteInteger('linstrucao2', 'left',blinstrucao2.left);
        Ini.WriteInteger('ldata', 'left',bldata.left);
        Ini.WriteInteger('lvencimento', 'left',blvencimento.left);
        Ini.WriteInteger('ldocumento', 'left',bldocumento.left);
        Ini.WriteInteger('lvalor', 'left',blvalor.left);
        Ini.WriteInteger('lmora', 'left',blmora.left);

        Ini.WriteInteger('ldesconto', 'left',bldesconto.left);
        Ini.WriteInteger('ltotal', 'left',bltotal.left);

        Ini.WriteInteger('lobs', 'left',blobs.left);
        Ini.WriteInteger('linstrucao', 'left',blinstrucao.left);
        Ini.WriteInteger('lnome', 'left',blnome.left);
        Ini.WriteInteger('lcnpj', 'left',blcnpj.left);
        Ini.WriteInteger('lie', 'left',blie.left);
        Ini.WriteInteger('lendereco', 'left',blendereco.left);
        Ini.WriteInteger('lenderecocobranca', 'left',blenderecocobranca.left);
        Ini.WriteInteger('lsacado', 'left',blsacado.left);

        Ini.Free;
end;

procedure Tfconfigimp.bLEnderecoBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
        text :=  ds.dataset.fieldbyname('endereco').AsString + ' - '+
                 ds.dataset.fieldbyname('numero').AsString  +'  '+
                 ds.dataset.fieldbyname('complemento').AsString + ' - '+
                 ds.dataset.fieldbyname('bairro').AsString + ' - '+
                 ds.dataset.fieldbyname('municipio').AsString + '  CEP:'+
                 ds.dataset.fieldbyname('cep').AsString + ' '+
                 ds.dataset.fieldbyname('Uf').AsString;
end;

procedure Tfconfigimp.blenderecocobrancaBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin

        if (ds.dataset['enderecocobranca'] <> null) and
          (ds.dataset.fieldbyname('enderecocobranca').AsString<>'') then

          text :=  ds.dataset.fieldbyname('enderecocobranca').AsString+ ' - '+
                   ds.dataset.fieldbyname('bairrocobranca').AsString +' - '+
                   ds.dataset.fieldbyname('municipiocobranca').AsString + '  CEP:'+
                   ds.dataset.fieldbyname('cepcobranca').AsString + ' '+
                   ds.dataset.fieldbyname('Ufcobranca').AsString

          else begin
             text := '';
             blenderecocobranca.Text :='';
          end;


end;

procedure Tfconfigimp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        btngravarClick(self);
end;

procedure Tfconfigimp.btnvisualizaClick(Sender: TObject);
begin
          fdm.tbconfig.Open;

          if  ((responsavel = 'ARISTEM') and (page = 2))  then qboleto.PageSetup.PaperSize := fpLetter;          
          if (page = 0) or (page = 2) then qboleto.PreviewModal;
          if page = 1 then qduplicata.PreviewModal;



          fdm.tbconfig.close;

end;

procedure Tfconfigimp.btngravarClick(Sender: TObject);
begin
        if page = 0 then
         boletogExecute(self);
        if page = 2 then
        cclientegExecute(self);
end;

procedure Tfconfigimp.rboletoClick(Sender: TObject);
begin

        if Active then 
           carregaExecute(self);
end;

procedure Tfconfigimp.carregaExecute(Sender: TObject);
begin
        if page = 0 then boletocExecute(self);
        if page = 2 then cclienteExecute(self);
        if page = 3 then qduplicata.PreviewModal;
        if page = 4 then qcarne.PreviewModal;
        if page = 5 then npromissoriacExecute(self);
end;

procedure Tfconfigimp.confinicialExecute(Sender: TObject);
begin


        //boleto
        if page = 0 then begin
           Label8.show;
           bminstrucao.show;
           Label9.show;
           beinstrcao2.Show;

           bLinstrucao2.Parent := banda;
           bldata.Parent := banda;
           bldocumento.Parent := banda;
           blmora.Parent := banda;
           blobs.Parent := banda;
           bLinstrucao.Parent := banda;
           blnome.Parent := banda;
           bLEndereco.Parent := banda;
           blenderecocobranca.Parent := banda;
           blsacado.Parent := banda;
           blvencimento.Parent := banda;
           blvalor.Parent := banda;
           bLdesconto.Parent := banda;
           bltotal.Parent := banda;
           blcnpj.Parent := banda;
           blie.Parent := banda;

        //etqcli
       end else if page = 2 then begin
           lempresa.Parent := banda;
           lenderecoempresa.Parent := banda;
           lnome.Parent := banda;
           lendereco.Parent := banda;
           lbairro.Parent := banda;
           lmunicipio.Parent := banda;
           lcep.Parent := banda;
           luf.Parent := banda;
           lnf.Parent := banda;
           lobs.Parent := banda;

        end;

        
end;

procedure Tfconfigimp.qduplicataBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
          fdm.tbempresa.open;

                   ltitulo1.Caption := fdm.tbempresa.fieldbyname('nome').AsString ;

                   eR1.Caption := fdm.tbempresa.fieldbyname('Endereco').AsString + ' - '+
                                  fdm.tbempresa.fieldbyname('bairro').AsString + ' - '+
                                  fdm.tbempresa.fieldbyname('municipio').AsString;

                 eR2.Caption := 'UF: ' + fdm.tbempresa.fieldbyname('uf').AsString + '  CEP: '+
                                        fdm.tbempresa.fieldbyname('cep').AsString + '  Fone/Fax: (' +
                                        fdm.tbempresa.fieldbyname('ddd').AsString +') '+
                                        fdm.tbempresa.fieldbyname('fone1').AsString + '   -   '+
                                        fdm.tbempresa.fieldbyname('fax').AsString;

                 eR3.Caption := 'CNPJ: ' + fdm.tbempresa.fieldbyname('cnpj').AsString + '  IE: '+
                                        fdm.tbempresa.fieldbyname('ie').AsString + '  E-Mail: ' +
                                        fdm.tbempresa.fieldbyname('email').AsString;


            fdm.tbconfig.Open;
            if fdm.tbconfig.fieldbyname('juro').Asfloat >0 then
            ljuro.Caption:= 'PERMANENCIA DE       % AO DIA. (' +
            formatfloat('####,##0.00',fdm.tbconfig.fieldbyname('juro').Asfloat *
            ds.DataSet.fieldbyname('total').asfloat / 100) + ' R$)';
            fdm.tbconfig.close;

            lvrextenso.Caption := '*** '+extenso(ds.DataSet.fieldbyname('total').asfloat,'Real','Reais')+' ***';
            lrodapeduplicata.Lines.Clear;
            lrodapeduplicata.Lines.Add('RECONHEÇO(EMOS) A EXATIDÃO DESTA DUPLICATA DE VENDA MERCANTIL, NA '+
                                       'IMPORTÂNCIA ACIMA QUE PAGAREI(EMOS) À '+ fdm.tbempresa.fieldbyname('nome').AsString+ ', OU A SUA '+
                                       'ORDEM NA PRAÇA E VENCIMENTO INDICADOS.');
          fdm.tbempresa.close;

end;

procedure Tfconfigimp.papelCExecute(Sender: TObject);
var
Ini:TInifile;
boleto:string;
begin
        if page=0 then boleto := rboleto.Items[rboleto.itemindex];

        Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\'+npage+boleto+'.ini');

        efonte.Value:=Ini.ReadInteger('Config', 'tmfonte', efonte.Value);
        rnegrito.Checked := Ini.ReadBool('Config', 'rnegrito', false);        
        SAltura.Value:=Ini.ReadInteger('Config', 'Altura', 100);
        SLargura.Value:=Ini.ReadInteger('Config', 'Largura', 170);
        SMInferior.Value:=Ini.ReadInteger('Config', 'MInferior',  0);
        SMsuperior.Value:=Ini.ReadInteger('Config', 'MSuperior', 0);
        SMEsquerda.Value:=Ini.ReadInteger('Config', 'MEsquerda', 5);
        SMDireita.Value:=Ini.ReadInteger('Config', 'MDireita',  5);

        ini.Free;
end;

procedure Tfconfigimp.papelGExecute(Sender: TObject);
var
 Ini:TInifile;
boleto:string;
begin
        if page=0 then boleto := rboleto.Items[rboleto.itemindex];

        Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\'+npage+boleto+'.ini');
        Ini.WriteBool('Config', 'rnegrito', rnegrito.Checked);
        Ini.WriteInteger('Config', 'tmfonte', efonte.Value);
        Ini.WriteInteger('Config', 'Altura', SAltura.Value);
        Ini.WriteInteger('Config', 'Largura', SLargura.Value);
        Ini.WriteInteger('Config', 'MInferior', SMInferior.Value);
        Ini.WriteInteger('Config', 'MSuperior', SMsuperior.Value);
        Ini.WriteInteger('Config', 'MEsquerda', SMEsquerda.Value);
        Ini.WriteInteger('Config', 'MDireita', SMDireita.Value);
        ini.Free;

end;

procedure Tfconfigimp.SAlturaChange(Sender: TObject);
begin
        qboleto.PageSetup.PaperHeight:=SAltura.Value;
        TkVert.Max:=qboleto.Height;
end;

procedure Tfconfigimp.SLarguraChange(Sender: TObject);
begin
        qboleto.PageSetup.PaperWidth:=SLargura.Value;
        TkHor.Max:=qboleto.Width;
end;

procedure Tfconfigimp.SMInferiorChange(Sender: TObject);
begin
        qboleto.Margins.BottomMargin:=SMInferior.Value;
end;

procedure Tfconfigimp.SMsuperiorChange(Sender: TObject);
begin

        qboleto.Margins.TopMargin:=SMsuperior.Value;
end;

procedure Tfconfigimp.SMDireitaChange(Sender: TObject);
begin

        qboleto.Margins.RightMargin:=SMDireita.Value;
end;

procedure Tfconfigimp.SMEsquerdaChange(Sender: TObject);
begin
        qboleto.Margins.LeftMargin:=SMEsquerda.Value;
end;

procedure Tfconfigimp.efonteChange(Sender: TObject);
var
  i: integer;
begin

         for i := 0 to componentcount - 1 do
             if (Components[i] is trldbtext) or
                (Components[i] is trllabel) or
                (Components[i] is trlmemo)or
                (Components[i] is trldbmemo)  then begin

               if Components[i] is trldbtext then
                  trldbtext(Components[i]).Font.Size := efonte.Value;

               if Components[i] is trllabel then
                  trllabel(Components[i]).Font.Size := efonte.Value;

               if Components[i] is trlmemo then
                  trlmemo(Components[i]).Font.Size := efonte.Value;

               if Components[i] is trldbmemo then
                  trldbmemo(Components[i]).Font.Size := efonte.Value;


            end;
end;

procedure Tfconfigimp.rnegritoClick(Sender: TObject);
var
i:integer;
begin

         for i := 0 to componentcount - 1 do
             if (Components[i] is trldbtext) or
                (Components[i] is trllabel) or
                (Components[i] is trlmemo)or
                (Components[i] is trldbmemo)  then

                if rnegrito.Checked then begin
                   trldbtext(Components[i]).Font.Style := [fsbold];
                   trllabel(Components[i]).Font.Style := [fsbold];
                   trlmemo(Components[i]).Font.Style := [fsbold];
                   trldbmemo(Components[i]).Font.Style := [fsbold];

                end else begin
                   trldbtext(Components[i]).Font.Style := trldbtext(Components[i]).Font.Style-[fsbold];
                   trllabel(Components[i]).Font.Style := trldbtext(Components[i]).Font.Style-[fsbold];
                   trlmemo(Components[i]).Font.Style := trldbtext(Components[i]).Font.Style-[fsbold];
                   trldbmemo(Components[i]).Font.Style := trldbtext(Components[i]).Font.Style-[fsbold];

                end;


end;

procedure Tfconfigimp.qcolunasBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
        lcliente1c.Lines.clear;
        lcliente1c.Lines.Add(ds.DataSet.fieldbyname('nome').AsString);
        lcliente1c.Lines.Add(ds.DataSet.fieldbyname('endereco').AsString+' '+
                           ds.DataSet.fieldbyname('numero').AsString+' '+
                           ds.DataSet.fieldbyname('complemento').AsString +' '+

                             ds.DataSet.FieldByName('municipio').AsString);
        lcliente1c.Lines.Add('Cep: '+ ds.DataSet.FieldByName('cep').AsString + ' UF: '+
                             ds.DataSet.FieldByName('uf').AsString + ' Fone: '+
                             ds.DataSet.FieldByName('fone').AsString);

end;

procedure Tfconfigimp.qcarneBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
          fdm.tbempresa.open;
          if data  = 'dtvencimento' then
             lnumeronp.Caption := 'Nº: ' + ds.DataSet.fieldbyname('documento').AsString + ' '+
                                       ds.DataSet.fieldbyname('letra').AsString

          else lnumeronp.Caption := 'Nº: ' + ds.DataSet.fieldbyname('numero').AsString;

                   i1c.Picture := fmenu.imagelogo.Picture;

                   ltitulo1c.Caption := fdm.tbempresa.fieldbyname('nome').AsString ;

                   eR1c.Caption := fdm.tbempresa.fieldbyname('Endereco').AsString + ' - '+
                                  fdm.tbempresa.fieldbyname('bairro').AsString + ' - '+
                                  fdm.tbempresa.fieldbyname('municipio').AsString;

                 eR2c.Caption := 'UF: ' + fdm.tbempresa.fieldbyname('uf').AsString + '  CEP: '+
                                        fdm.tbempresa.fieldbyname('cep').AsString + '  Fone/Fax: (' +
                                        fdm.tbempresa.fieldbyname('ddd').AsString +') '+
                                        fdm.tbempresa.fieldbyname('fone1').AsString + '   -   '+
                                        fdm.tbempresa.fieldbyname('fax').AsString;

                 eR3c.Caption := 'CNPJ: ' + fdm.tbempresa.fieldbyname('cnpj').AsString + '  IE: '+
                                        fdm.tbempresa.fieldbyname('ie').AsString + '  E-Mail: ' +
                                        fdm.tbempresa.fieldbyname('email').AsString;
          fdm.tbempresa.close;

          fdm.tbconfig.Open;

          if fdm.tbconfig.fieldbyname('juro').AsFloat >0 then
             ljuroc.Caption := '(Após '+fdm.tbconfig.fieldbyname('carencia').asstring+
                              ' dia(s) de atraso juros de '+fdm.tbconfig.fieldbyname('juro').asstring
                              +' ao dia )'
          else ljuroc.Caption := '';

          fdm.tbconfig.close;

end;

procedure Tfconfigimp.RLDBText10BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
        text := inttostr(ds.DataSet.RecNo) + '/'+ inttostr(ds.DataSet.RecordCount);
end;

procedure Tfconfigimp.npromissoriacExecute(Sender: TObject);
var
st:string;
begin

       try
         lnumeronp.Caption := 'Nº: ' + ds.DataSet.fieldbyname('documento').AsString + ' '+
                                       ds.DataSet.fieldbyname('letra').AsString;
         valor := 'diferenca';
         data  := 'dtvencimento';
       except

         lnumeronp.Caption := 'Nº: ' + ds.DataSet.fieldbyname('numero').AsString;
         valor := 'total';
         data  := 'dtfechamento';
         RLDBText15.DataField :='';
       end;


     if data = 'dtvencimento' then begin
        lavalistanp.Lines.Clear;
        st := msgi('Digite o nome do avalista:',0);
        if st = '' then st := '     ';
        lavalistanp.Lines.Add(st);

        st:='';
        st := msgi('Digite o nome endereço do avalista:',0);
        if st = '' then st := '     ';
        lavalistanp.Lines.Add(st);

        st:='';
        st := msgi('Digite a cidade do avalista:',0);
        if st = '' then st := '     ';
        lavalistanp.Lines.Add(st);

        st:='';
        st := msgi('Digite o CPF do avalista:',0);
        if st = '' then st := '     ';
        lavalistanp.Lines.Add(st);

        st:='';
        st := msgi('Digite o RG do avalista:',0);
        if st = '' then st := '     ';
        lavalistanp.Lines.Add(st);

     end;
     qpromissoria.PreviewModal;
end;

procedure Tfconfigimp.qpromissoriaBeforePrint(Sender: TObject;
  var PrintIt: Boolean);

begin
               fdm.tbempresa.Open;


               lvalornp.Caption := 'VALOR: ' + format('%n',[ds.DataSet.fieldbyname(valor).asfloat]);

               lvencimentonp.caption := 'VENCIMENTO: ' + formatdatetime('dd',ds.DataSet.fieldbyname(data).AsDateTime) +
                            ' DE ' +formatdatetime('mmmm',ds.DataSet.fieldbyname(data).AsDateTime)+
                            ' DE '+formatdatetime('YYYY',ds.DataSet.fieldbyname(data).AsDateTime);

               ldatanp.Caption := 'AOS '+
                                  uppercase(extenso(strtofloat(formatdatetime('dd',ds.DataSet.fieldbyname(data).AsDateTime)),'','') +
                                   ' DE ' +formatdatetime('mmmm',ds.DataSet.fieldbyname(data).AsDateTime)+
                                   ' DE ' +formatdatetime('yyyy',ds.DataSet.fieldbyname(data).AsDateTime));


            lrodapenp.Lines.Clear;

            lrodapenp.Lines.Add('A ' +fdm.tbempresa.fieldbyname('nome').AsString);
            lrodapenp.Lines.Add('OU SUA ORDEM, A QUANTIA DE ' + uppercase(extenso(ds.DataSet.fieldbyname(valor).Asfloat,'Real','Reais'))+'***');
            lrodapenp.Lines.Add('EM MOEDA CORRENTE DESTE PAÍS, PAGÁVEL EM LOCAL DA EMISSÃO');


            lcidadenp.Caption := fdm.tbempresa.fieldbyname('municipio').AsString+ ', '+
                            formatdatetime('dd',date)+ ' de '+
                            formatdatetime('mmmm',date)+ ' de '+
                            formatdatetime('yyyy',date)+ '.';
            fdm.tbempresa.Close;

end;

procedure Tfconfigimp.cclienteExecute(Sender: TObject);
var
Ini:TInifile;
t,w:integer;
obs:string;
begin
        papelCExecute(self);
        Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\'+npage+'.ini');

        if responsavel = 'VITALCRED' then begin
           lbairro.DataField := 'bairrocobranca';
           lmunicipio.DataField := 'municipiocobranca';
           lcep.DataField := 'cepcobranca';
           luf.DataField := 'ufcobranca';
        end;

        rempresa1.Checked:= Ini.ReadBool('Config', 'rempresa1', false);
        renderecoempresa1.Checked:= Ini.ReadBool('Config', 'renderecoempresa1', false);
        rnf1.Checked:= Ini.ReadBool('Config', 'rnf1', false);
        robs1.Checked:= Ini.ReadBool('Config', 'robs1', false);

        smqtd.Value:=Ini.ReadInteger('Config', 'smqtd', smqtd.Value);
        smaltura.Value:=Ini.ReadInteger('Config', 'smaltura', smaltura.Value);
        smespaco.Value:=Ini.ReadInteger('Config', 'smespaco',  smespaco.Value);

        banda.Height:=smaltura.Value;
        banda.ColSpacing :=smespaco.Value;
        banda.ColCount :=smqtd.Value;

        lempresa.Font.Size := efonte.Value + 2;
        lnome.Font.Size := efonte.Value;
        lendereco.Font.Size := efonte.Value;
        lbairro.Font.Size := efonte.Value;
        lcep.Font.Size := efonte.Value;
        lmunicipio.Font.Size := efonte.Value;
        luf.Font.Size := efonte.Value;
        lnf.Font.Size := efonte.Value;
        lobs.Font.Size := efonte.Value+2;

        lempresa.top:=Ini.ReadInteger('top', 'lempresa',lempresa.top);
        lenderecoempresa.top:=Ini.ReadInteger('top', 'lenderecoempresa',lenderecoempresa.top);
        lnome.top:=Ini.ReadInteger('top', 'lnome',lnome.top);
        lendereco.top:=Ini.ReadInteger('top', 'lendereco',lendereco.top);
        lbairro.top:=Ini.ReadInteger('top', 'lbairro',lbairro.top);
        lmunicipio.top:=Ini.ReadInteger('top', 'lmunicipio',lmunicipio.top);
        lcep.top:=Ini.ReadInteger('top', 'lcep',lcep.top);
        luf.top:=Ini.ReadInteger('top', 'luf',luf.top);
        lnf.top:=Ini.ReadInteger('top', 'lnf',lnf.top);
        lobs.top:=Ini.ReadInteger('top', 'lobs',lobs.top);

        lnome.left:=Ini.ReadInteger('left', 'lnome',lnome.left);
        lendereco.left:=Ini.ReadInteger('left', 'lendereco',lendereco.left);
        lbairro.left:=Ini.ReadInteger('left', 'lbairro',lbairro.left);
        lmunicipio.left:=Ini.ReadInteger('left', 'lmunicipio',lmunicipio.left);
        lcep.left:=Ini.ReadInteger('left', 'lcep',lcep.left);
        luf.left:=Ini.ReadInteger('left', 'luf',luf.left);
        lnf.left:=Ini.ReadInteger('left', 'lnf',lnf.left);

        Ini.Free;
        mostrarExecute(self);

       t := lempresa.Top;
       lempresa.Align := fatop;
       w := lempresa.Width;
       lempresa.Align := fanone;
       lempresa.Top :=t;
       lenderecoempresa.Width := w;
       lobs.Width := w;

        if renderecoempresa1.Checked then
           lenderecoempresa.Lines.Add(dadosempresa);       


        if rempresa1.Checked then
           lempresa.Caption := fantasiaempresa;

        if (rnf1.Checked) then
        //and (rnf.Checked) then
           lnf.Text :=codloc;

        codloc:='';   
        if robs1.Checked then begin
           obs:= msgi('Digite uma observação para o rodapé da etiqueta:',0);
           lobs.Text :=obs;
           lobs.Borders.DrawTop := length(obs)>0;
        end;



        if ((responsavel = '02.176.757/0001-66') or (responsavel = 'ARISTEM')) then else begin 
           lnome.Text := 'Nome: ';
           //lendereco.Caption := 'End.: ';
           lbairro.Text := 'Bairro: ';
           lcep.Text := 'Cep: ';
           lmunicipio.Text := 'Cidade: ';
           luf.Text := 'UF: ';
           lendereco.Width :=  trunc(banda.Width/smqtd.Value)-10;
       end;

end;

procedure Tfconfigimp.mostrarExecute(Sender: TObject);
begin
        lempresa.Visible := rempresa1.Checked;
        lenderecoempresa.Visible := renderecoempresa1.Checked;
        lnf.Visible := rnf1.Checked;
        lobs.Visible := robs1.Checked;

end;

procedure Tfconfigimp.cclientegExecute(Sender: TObject);
var
 Ini:TInifile;
begin

        Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\'+npage+'.ini');
        Ini.WriteInteger('Config', 'tmfonte', efonte.Value);
        Ini.WriteInteger('Config', 'Altura', SAltura.Value);
        Ini.WriteInteger('Config', 'Largura', SLargura.Value);
        Ini.WriteInteger('Config', 'MInferior', SMInferior.Value);
        Ini.WriteInteger('Config', 'MSuperior', SMsuperior.Value);
        Ini.WriteInteger('Config', 'MEsquerda', SMEsquerda.Value);
        Ini.WriteInteger('Config', 'MDireita', SMDireita.Value);
        Ini.WriteInteger('Config', 'smqtd', smqtd.Value);
        Ini.WriteInteger('Config', 'smaltura', smaltura.value);
        Ini.WriteInteger('Config', 'smespaco', smespaco.Value);
        Ini.WriteBool('Config', 'rempresa1', rempresa1.Checked);
        Ini.WriteBool('Config', 'renderecoempresa1', renderecoempresa1.Checked);
        Ini.WriteBool('Config', 'rnf1', rnf1.Checked);
        Ini.WriteBool('Config', 'robs1', robs1.Checked);

        Ini.WriteInteger('Config', 'smqtd', smqtd.Value);
        Ini.WriteInteger('Config', 'smaltura', smaltura.value);
        Ini.WriteInteger('Config', 'smespaco', smespaco.Value);

        Ini.WriteInteger('top', 'lempresa',lempresa.top);
        Ini.WriteInteger('top', 'lenderecoempresa',lenderecoempresa.top);
        Ini.WriteInteger('top', 'lnome',lnome.top);
        Ini.WriteInteger('top', 'lendereco',lendereco.top);
        Ini.WriteInteger('top', 'lbairro',lbairro.top);
        Ini.WriteInteger('top', 'lmunicipio',lmunicipio.top);
        Ini.WriteInteger('top', 'lcep',lcep.top);
        Ini.WriteInteger('top', 'luf',luf.top);
        Ini.WriteInteger('top', 'lnf',lnf.top);
        Ini.WriteInteger('top', 'lobs',lobs.top);

        Ini.WriteInteger('left', 'lnome',lnome.left);
        Ini.WriteInteger('left', 'lendereco',lendereco.left);
        Ini.WriteInteger('left', 'lbairro',lbairro.left);
        Ini.WriteInteger('left', 'lmunicipio',lmunicipio.left);
        Ini.WriteInteger('left', 'lcep',lcep.left);
        Ini.WriteInteger('left', 'luf',luf.left);
        Ini.WriteInteger('left', 'lnf',lnf.left);
        Ini.Free;

end;

procedure Tfconfigimp.qboletoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

      if page = 0 then
         if fdm.tbconfig.fieldbyname('juro').asfloat >0 then
            blmora.Caption := 'Mora Diária: ' + format('%n',[fdm.tbconfig.fieldbyname('juro').asfloat])+
                         '%  =  ' +  format('%n',[fdm.tbconfig.fieldbyname('juro').asfloat *
                                                  ds.dataset.fieldbyname('vrdocumento').asfloat /100])
         else blmora.Caption := '';


end;

procedure Tfconfigimp.rempresa1Click(Sender: TObject);
begin
        mostrarExecute(self);
end;

procedure Tfconfigimp.lendereco1BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
var
compl:string;
begin

      if responsavel = 'VITALCRED' then compl :='cobranca';

      text := ds.DataSet.fieldbyname('endereco'+compl).AsString + '  '+
              ds.DataSet.fieldbyname('numero'+compl).AsString + '  '+
              ds.DataSet.fieldbyname('complemento'+compl).AsString;


end;

procedure Tfconfigimp.lenderecoBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);

begin

      if responsavel = 'VITALCRED' then compl :='cobranca';

      text := ds.DataSet.fieldbyname('endereco'+compl).AsString + '  '+
              ds.DataSet.fieldbyname('numero'+compl).AsString + '  '+
              ds.DataSet.fieldbyname('complemento'+compl).AsString;

end;

end.


