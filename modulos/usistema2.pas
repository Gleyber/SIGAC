unit usistema2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Buttons, ComCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Provider, DB, DBClient, Grids, DBGrids,
  ExtCtrls, DBCtrls, Mask, RLReport;

type
  Tfsistema2 = class(TForm)
    PageControl1: TPageControl;
    btnsair: TBitBtn;
    ActionList1: TActionList;
    entrega: TTabSheet;
    Panel5: TPanel;
    btentimprimir: TSpeedButton;
    entelocalizar: TEdit;
    d1: TDataSource;
    tb1: TClientDataSet;
    p1: TDataSetProvider;
    t1: TZQuery;
    t2: TZQuery;
    d2: TDataSource;
    entllocalizar: TLabel;
    Label1: TLabel;
    eqtdentrega: TEdit;
    entgrade: TDBGrid;
    btenttudo: TSpeedButton;
    entrega_: TAction;
    btentsalvar: TSpeedButton;
    entl1: TStaticText;
    entgr: TRadioGroup;
    op: TTabSheet;
    Panel3: TPanel;
    SpeedButton4: TSpeedButton;
    btopapagar: TSpeedButton;
    Label89: TLabel;
    Label90: TLabel;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Label88: TLabel;
    SpeedButton8: TSpeedButton;
    Bevel5: TBevel;
    opdata: TDBEdit;
    openum: TDBEdit;
    opprev: TDBEdit;
    Panel2: TPanel;
    btopn: TSpeedButton;
    btopd: TSpeedButton;
    Label87: TLabel;
    Bevel4: TBevel;
    elocalizarop: TEdit;
    gradeop: TDBGrid;
    opobs: TDBMemo;
    op_: TAction;
    opselitem: TAction;
    lopobs: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    loppeso: TDBText;
    lopvolume: TDBText;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label4: TLabel;
    lopcliente: TDBText;
    lopcodcliente: TDBText;
    combo: TTabSheet;
    btokcombo: TBitBtn;
    combos: TDBLookupComboBox;
    lcombo: TLabel;
    combos2: TDBLookupComboBox;
    Label5: TLabel;
    combo_: TAction;
    cadconta: TTabSheet;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    n2: TZQuery;
    n3: TZQuery;
    n4: TZQuery;
    n5: TZQuery;
    dn2: TDataSource;
    dn3: TDataSource;
    dn4: TDataSource;
    dn5: TDataSource;
    grade: TDBGrid;
    cadconta_: TAction;
    Panel1: TPanel;
    lnivel1: TLabel;
    lnivel2: TLabel;
    lnivel3: TLabel;
    lnivel5: TLabel;
    lnivel4: TLabel;
    Bevel3: TBevel;
    Bevel6: TBevel;
    Panel4: TPanel;
    ECONTA: TEdit;
    Label6: TLabel;
    bcad: TBitBtn;
    bimp: TBitBtn;
    rvisualiza: TCheckBox;
    bconfig: TBitBtn;
    bcaixa: TTabSheet;
    bcaixa_: TAction;
    d4: TDataSource;
    d3: TDataSource;
    t3: TZQuery;
    t4: TZQuery;
    Panel6: TPanel;
    gradecaixa: TDBGrid;
    SpeedButton1: TSpeedButton;
    rgcx: TRadioGroup;
    SpeedButton2: TSpeedButton;
    tb2: TClientDataSet;
    p2: TDataSetProvider;
    tb3: TClientDataSet;
    p3: TDataSetProvider;
    tb4: TClientDataSet;
    p4: TDataSetProvider;
    combos3: TDBLookupComboBox;
    Label7: TLabel;
    precomateria: TTabSheet;
    precomateria_: TAction;
    Bevel11: TBevel;
    Bevel14: TBevel;
    Bevel13: TBevel;
    Bevel12: TBevel;
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
    Label63: TLabel;
    emp1: TDBEdit;
    emp2: TDBEdit;
    emp7: TDBEdit;
    emp13: TDBEdit;
    emp14: TDBEdit;
    emp11: TDBEdit;
    emp12: TDBEdit;
    baltera: TButton;
    emp4: TDBEdit;
    emp15: TDBEdit;
    emp16: TDBEdit;
    emp3: TDBEdit;
    Label8: TLabel;
    emp5: TDBEdit;
    Label9: TLabel;
    emp6: TDBEdit;
    Label10: TLabel;
    emp8: TDBEdit;
    emp9: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    emp10: TDBEdit;
    Label13: TLabel;
    emp17: TDBEdit;
    Bevel7: TBevel;
    db1: TDBText;
    prontuario: TTabSheet;
    PageControl3: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    vimagep: TDBImage;
    Panel7: TPanel;
    pr1: TDBEdit;
    Label14: TLabel;
    pr2: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    pr3: TDBEdit;
    Label18: TLabel;
    pr4: TDBEdit;
    pr5: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    pr9: TDBEdit;
    Label21: TLabel;
    pr10: TDBEdit;
    Label22: TLabel;
    pr11: TDBEdit;
    Label23: TLabel;
    pr14: TDBEdit;
    Label24: TLabel;
    pr15: TDBEdit;
    Label25: TLabel;
    pr13: TDBEdit;
    Label26: TLabel;
    pr16: TDBEdit;
    pr17: TDBEdit;
    Label32: TLabel;
    Label34: TLabel;
    pr19: TDBEdit;
    pr20: TDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    pr21: TDBEdit;
    Label37: TLabel;
    pr22: TDBEdit;
    Label38: TLabel;
    pr23: TDBEdit;
    Label39: TLabel;
    pr24: TDBEdit;
    pr25: TDBEdit;
    Label40: TLabel;
    Label41: TLabel;
    pr26: TDBEdit;
    Label42: TLabel;
    pr27: TDBEdit;
    Label43: TLabel;
    pr28: TDBEdit;
    Label44: TLabel;
    pr29: TDBEdit;
    Label45: TLabel;
    pr30: TDBEdit;
    Label46: TLabel;
    pr31: TDBEdit;
    pr12: TDBEdit;
    Label47: TLabel;
    Label48: TLabel;
    pr18: TDBEdit;
    Label49: TLabel;
    pr32: TDBEdit;
    pr33: TDBMemo;
    Panel8: TPanel;
    btnnovop: TSpeedButton;
    btnimprimirp: TSpeedButton;
    rv2: TCheckBox;
    prontuario_: TAction;
    pr7: TDBRadioGroup;
    pr8: TDBRadioGroup;
    Label50: TLabel;
    pr34: TDBEdit;
    Label51: TLabel;
    pr35: TDBEdit;
    gprontuario: TDBGrid;
    Panel9: TPanel;
    StaticText1: TStaticText;
    Label52: TLabel;
    gprontuarioitem: TDBGrid;
    emp: TDBMemo;
    btneditarp: TSpeedButton;
    qmedico: TRLReport;
    RLBand1: TRLBand;
    qdatil: TRLSubDetail;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLBand6: TRLBand;
    pi1: TRLImage;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    pfantasia: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLDBText2: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    btnanotacoesp: TSpeedButton;
    passacheque: TTabSheet;
    pcabeca: TPanel;
    Label54: TLabel;
    btnconfirmar: TSpeedButton;
    Label55: TLabel;
    ec1: TEdit;
    ec2: TEdit;
    gcheque: TDBGrid;
    cm1: TDBMemo;
    Panel10: TPanel;
    Bevel8: TBevel;
    tt2: TLabel;
    tt3: TLabel;
    gcheque2: TDBGrid;
    passacheque_: TAction;
    tt1: TLabel;
    c1: TLabel;
    c2: TLabel;
    c3: TLabel;
    scheque: TAction;
    sinserir: TAction;
    bch: TButton;
    cheque: TClientDataSet;
    chequechave: TIntegerField;
    chequebanco: TStringField;
    chequeagencia: TStringField;
    chequeconta: TStringField;
    chequecheque: TStringField;
    chequetotal: TFloatField;
    chequenome: TStringField;

    function totcheque :double;

    procedure cxtz(tz:tzquery;where:string);

    procedure somaop;
    procedure alteraop;
    procedure baixamateriaop(codigo:string;qtd:double);
    procedure opins(tx:string);

    procedure btnsairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure entelocalizarChange(Sender: TObject);
    procedure entelocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure eqtdentregaKeyPress(Sender: TObject; var Key: Char);
    procedure eqtdentregaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure entgradeTitleClick(Column: TColumn);
    procedure btenttudoClick(Sender: TObject);
    procedure entrega_Execute(Sender: TObject);
    procedure btentsalvarClick(Sender: TObject);
    procedure btentimprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure entgrClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btopapagarClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Label90Click(Sender: TObject);
    procedure Label89Click(Sender: TObject);
    procedure Label88Click(Sender: TObject);
    procedure elocalizaropKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btopnClick(Sender: TObject);
    procedure btopdClick(Sender: TObject);
    procedure op_Execute(Sender: TObject);
    procedure opselitemExecute(Sender: TObject);
    procedure t2AfterScroll(DataSet: TDataSet);
    procedure lopobsClick(Sender: TObject);
    procedure opobsExit(Sender: TObject);
    procedure combo_Execute(Sender: TObject);
    procedure btokcomboClick(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure cadconta_Execute(Sender: TObject);
    procedure d1DataChange(Sender: TObject; Field: TField);
    procedure gradeDblClick(Sender: TObject);
    procedure bcadClick(Sender: TObject);
    procedure bimpClick(Sender: TObject);
    procedure bconfigClick(Sender: TObject);
    procedure gradeTitleClick(Column: TColumn);
    procedure bcaixa_Execute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure rgcxClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure precomateria_Execute(Sender: TObject);
    procedure balteraClick(Sender: TObject);
    procedure bnalteraClick(Sender: TObject);
    procedure emp11Exit(Sender: TObject);
    procedure prontuario_Execute(Sender: TObject);
    procedure btnnovopClick(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
    procedure btnimprimirpClick(Sender: TObject);
    procedure btneditarpClick(Sender: TObject);
    procedure RLDBText11BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure btnanotacoespClick(Sender: TObject);
    procedure passacheque_Execute(Sender: TObject);
    procedure btnconfirmarClick(Sender: TObject);
    procedure schequeExecute(Sender: TObject);
    procedure ec2Change(Sender: TObject);
    procedure ec1Change(Sender: TObject);
    procedure ec1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sinserirExecute(Sender: TObject);
    procedure gchequeTitleClick(Column: TColumn);
    procedure gchequeDblClick(Sender: TObject);
    procedure ec2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bchClick(Sender: TObject);
  private

  trans, decimaiscompra,decimaisvenda:integer;
  total,tch : double;

      gravar ,
      VCinterno,
      VCBarras,
      VCOriginal :boolean;


    { Private declarations }
  public

  page,controle,controle2,controle3,controle4 ,controle5:string;
    { Public declarations }
  end;




const
cptb:string =    ' chave,numero,modo,data,codigo,nome,dataprev,dtfechamento,obs2,obs,peso,volume ';
cptbitem:string =' chave, link, data, codigo, descricao, qtd, obs, modo,peso,volume ';



var
  fsistema2: Tfsistema2;

implementation

{$R *.dfm}

uses funcoes, udm;



function Tfsistema2.totcheque :double;
begin

        chts:='';
        tch := 0;

        cheque.First;
        while not cheque.Eof do begin

               if chts = '' then
                  chts := ' where chave = ' + quotedstr(cheque.FieldByName('chave').AsString)
               else
                  chts := chts + ' or chave = ' + quotedstr(cheque.FieldByName('chave').AsString);

               tch := tch + cheque.FieldByName('total').Asfloat;

               cheque.Next;
           end;
           
        result := tch;
end;



procedure Tfsistema2.cxtz(tz:tzquery;where:string);
var
script,dtvencimento,conta1,conta2:string;
begin

               conta1 := nomelink('codconta','codigo', 'descricao','tbconta','ContaD');
               conta2 := nomelink('codconta2','codigo', 'descricao','tbconta','ContaC');


               if tz.Name = 't1' then else dtvencimento := 'dtvencimento,';
               script := 'select chave,  documento, letra, codigo, nome, total as valor, '+
                         dtvencimento+ ' codconta,'+conta1+', codconta2,'+conta2+
                         ', total-total as Transferir,total-total as Gp,endereco as historico,'+
                         ' codconta3 as CodBaixa, endereco as ContaB  from tbreceber ';

               tz.SQL.Clear;
               tz.sql.add(script + where + ' and caixa = '+controle);
               //debugstr(tz);
               //abort;

end;


procedure Tfsistema2.somaop;
var
peso , volume:double;
begin
      peso  :=0;
      volume:=0;
      t1.First;
      while not t1.Eof do begin
            peso := peso + t1.fieldbyname('peso').AsFloat;
            volume := volume + t1.fieldbyname('volume').AsFloat;
            t1.Next;
      end;

      t2.edit;
      t2['peso'] := peso;
      t2['volume'] := volume;
      altera(nil,t2,'tbe');
end;



procedure Tfsistema2.opins(tx:string);
  var
   codInterno:string;
   peso:double;

procedure preenchedados;
var
qtd,volume :double;
obs :string;
begin

      codloc :='1';
      qtd := strtofloat(msgi('Digite a quantidade:',2));
      if qtd <=0 then msg('#Quantidade deve ser maior que zero.',0);

//      codloc :=floattostr(peso);
  //    peso := strtofloat(msgi('Digite o peso:',2));

      codloc :='0';
      volume := strtofloat(msgi('Digite o nº do volume:',2));


      obs := msgi('Observação(opcional):',0);
      if obs = '' then obs := ',null'
                  else obs := ','+ quotedstr(obs);

      selecione('insert into tbeitem (data, link, codigo, descricao, qtd, peso, volume, obs, modo) values('+
                                      'now()'+
                                      ', '+inttostr(t2.fieldbyname('chave').AsInteger)+
                                      ', '+quotedstr(fdm.sg.fieldbyname('codigo').AsString)+
                                      ', '+quotedstr(fdm.sg.fieldbyname('descricao').AsString)+
                                      ', '+realdblstr(qtd)+ ', '+realdblstr(peso)+', '+realdblstr(volume)+ obs+ ', "O")');

      elocalizarop.Clear;
      t1.Refresh;
      t1.Last;
      baixamateriaop(t1.fieldbyname('codigo').AsString,t1.fieldbyname('qtd').AsFloat*(-1));
      elocalizarop.SetFocus;
      somaop;
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
         sql.add(  'select * from tbproduto where ' +
                   ' descricao = ' + quotedstr(tx) + codinterno);
         
         open;
         peso := fdm.sg.fieldbyname('peso').asfloat;
      end;



      if fdm.sg['codigo'] <> null then preenchedados
      else begin
         listagem('descricao',tx,'',5,0);

         if fdm.sg.Active then begin
            peso := fdm.sg.fieldbyname('peso').asfloat;
            preenchedados;
         end;
      end;

end;




procedure Tfsistema2.alteraop;
var
loc:string;
begin

           altera(nil,t2,'tbe');
           loc := t2.fieldbyname('chave').AsString;
           t2.Cancel;
           t2.Refresh;
           t2.Locate('chave',loc,[]);
           opobs.Color := clwhite;
           opobs.ReadOnly := true;
           msg('Alterado!',0);
           lopobs.Caption := 'Obs - Clique para inserir/alterar';
           opobs.Modified :=false;
end;



procedure Tfsistema2.baixamateriaop(codigo:string;qtd:double);
var
sqld:tzquery;
begin

        sqld :=  tzquery.Create(application);
        with sqld do begin
             Connection := fdm.conector;
             close;
             sql.Clear;
             sql.Add('select '+
                     ' tbprodutoitem.qtd,tbprodutomp.codigo '+
                     ' from tbprodutomp, tbprodutoitem, tbproduto '+
                     ' where tbprodutomp.codigo = tbprodutoitem.codigomp'+
                     ' and tbproduto.codigo = tbprodutoitem.codigoproduto '+
                     ' and tbproduto.codigo = '+ quotedstr(codigo));
             //debugstr(sqld);
             open;

             first;
             while not sqld.Eof do begin
                   alimentaestoque(sqld.fieldbyname('codigo').AsString , sqld.fieldbyname('qtd').AsFloat*qtd , '3',0);
                   next;
             end;

        end;
        sqld.Destroy;


end;



procedure Tfsistema2.btnsairClick(Sender: TObject);
begin
      close;
end;

procedure Tfsistema2.FormShow(Sender: TObject);
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
        selecione('select decimaiscompra,decimaisvenda from tbconfig');
        decimaiscompra := sqlpub.fieldbyname('decimaiscompra').AsInteger;
        decimaisvenda  := sqlpub.fieldbyname('decimaisvenda').AsInteger;
        sqlpub := nil;

        entrega_Execute(self);
        op_Execute(self);
        combo_Execute(self);
        cadconta_Execute(self);
        bcaixa_Execute(self);
        precomateria_Execute(self);
        prontuario_Execute(self);
        passacheque_Execute(self);


end;

procedure Tfsistema2.entelocalizarChange(Sender: TObject);
begin
        loctabela(tb1,nil,entelocalizar);

end;

procedure Tfsistema2.entelocalizarKeyPress(Sender: TObject; var Key: Char);
begin
           if (tb1.fieldbyname(indtz(tb1.IndexFieldNames)).ClassName = 'TIntegerField') or
              (tb1.fieldbyname(indtz(tb1.IndexFieldNames)).ClassName = 'TFloatField')  then
              if not (key in ['0'..'9', #8,',']) then abort;

           if (tb1.fieldbyname(indtz(tb1.IndexFieldNames)).ClassName = 'TDateField')  then
              if not (key in ['0'..'9', #8,'/']) then abort;

end;

procedure Tfsistema2.eqtdentregaKeyPress(Sender: TObject; var Key: Char);
begin
      if not (key in ['0'..'9', #8,'-']) then abort;
end;

procedure Tfsistema2.eqtdentregaKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
var
qt:double;
begin

          if (key = 40) or (key = 34) then tb1.Next;
          if (key = 38) or (key = 33) then tb1.prior;

          if key = 13 then begin

             if tb1.RecordCount <=0 then msg('#Não há dados?',0);

             if eqtdentrega.Text <> '' then qt := strtofloat(eqtdentrega.Text)
                                       else qt := 0;
             eqtdentrega.Clear;
             if qt = 0 then abort;

             tb1.edit;
             tb1['entregar']  := tb1.fieldbyname('entregar').AsFloat + qt;
             tb1['diferenca'] := tb1.fieldbyname('qtd').AsFloat -
                                 tb1.fieldbyname('entregue').AsFloat-
                                 tb1.fieldbyname('entregar').AsFloat;

             if  (tb1.fieldbyname('diferenca').AsFloat > tb1.fieldbyname('qtd').AsFloat) or
                 (tb1.fieldbyname('diferenca').AsFloat<0) then begin
                  tb1.Cancel;
                  msg('#Quantidade inválida.',0);
             end;
                  
             tb1.Post;
             gravar := true;

          end;

end;

procedure Tfsistema2.entgradeTitleClick(Column: TColumn);
begin
        indexar(column,tb1,nil,entelocalizar,entllocalizar);
        tb1.First;
end;

procedure Tfsistema2.btenttudoClick(Sender: TObject);
begin
             if tb1.RecordCount <=0 then msg('#Não há dados?',0);
             if not msg('Deseja entregar tudo?',2) then abort;

             entgr.ItemIndex :=0;

             tb1.First;
             while not tb1.Eof do begin

                 tb1.edit;
                 tb1['entregar']  := tb1.fieldbyname('qtd').AsFloat  - tb1.fieldbyname('entregue').AsFloat;
                 tb1['diferenca'] := 0;
                 tb1.Post;
                 tb1.Next;
             end;

             gravar := true;
             btentsalvarclick(self);


end;

procedure Tfsistema2.entrega_Execute(Sender: TObject);
var
src:string;
begin
        if page = 'entrega' then begin
           btnsair.Destroy;

           //controle1 = chavepedido ou codigocliente  //controle2 = (0= exibir itens pedido, 1=exibir itens cliente)

           if controle2 = '0' then begin
              caption := 'Controle de entrega - Pedido';
              src := ' and i.link = ' + quotedstr(controle);
              entgrade.Columns[3].Width := entgrade.Columns[3].Width +  entgrade.Columns[0].Width + entgrade.Columns[1].Width;
              entgrade.Columns[1].Destroy;
              entgrade.Columns[0].Destroy;

              selecione('select numero,dtfechamento,codigo,nome from tbpedido where chave = ' + quotedstr(controle));
              entl1.Caption := ' Pedido: '+ formatfloat('000000',sqlpub.fieldbyname('numero').AsFloat)+'      '+
                               'Encerrado: '+ sqlpub.fieldbyname('dtfechamento').AsString+'      '+
                               'Cód/Nome: '+ sqlpub.fieldbyname('codigo').AsString +' '+  sqlpub.fieldbyname('nome').AsString;

           end else begin
               src := ' and i.codigocliente = ' + quotedstr(controle);
               selecione('select codigo,nome from tbcliente where codigo = ' + quotedstr(controle));
               entl1.Caption := ' Cód/Nome: '+ sqlpub.fieldbyname('codigo').AsString +' '+  sqlpub.fieldbyname('nome').AsString;
               caption := 'Controle de entrega - Cliente';
           end;



           with t1 do begin
                sql.Clear;
                sql.add('select i.numero, i.data, i.link, i.chave,i.codigo,p.descricao,i.qtd,i.vrunit,i.total,if (i.entregue is null,0,i.entregue) as entregue, '+
                        ' i.total-i.total as entregar, i.qtd-i.entregue as diferenca, i.dtentregue, i.codigocliente from tbpedidoitem i, tbproduto p '+
                        ' where i.codigo = p.codigo' + src);
                tb1.Close;
                p1.DataSet :=t1;
                tb1.ProviderName := 'p1';
                tb1.Open;
                tb1.IndexFieldNames := 'descricao';
                d1.DataSet :=tb1;
                entgrade.DataSource := d1;
                formatacptabela(tb1,nil,decimaisvenda);
                eqtdentrega.SetFocus;
                tb1.first;
           end;

        end;
end;

procedure Tfsistema2.btentsalvarClick(Sender: TObject);
begin
             if tb1.RecordCount <=0 then msg('#Não há dados?',0);
             if not gravar then msg('#Não há alterações.',0);
             if msg('Deseja salvar as alterações?',2) then begin;

                 entgr.ItemIndex :=0;
                 tb1.First;
                 while not tb1.Eof do begin

                     tb1.edit;
                     tb1['entregue'] := tb1.fieldbyname('entregue').AsFloat + tb1.fieldbyname('entregar').AsFloat;
                     tb1.Post;

                     selecione('update tbpedidoitem set entregue = '+ realdblstr(tb1.fieldbyname('entregue').AsFloat)+
                               ' , dtentregue = now() where chave = '+quotedstr(tb1.fieldbyname('chave').AsString));
                     tb1.Next;
                 end;

                 gravar := false;

                 tb1.Close;
                 tb1.Open;
                 formatacptabela(tb1,nil,decimaisvenda);
              end;   
end;

procedure Tfsistema2.btentimprimirClick(Sender: TObject);
var
imp,endereco,entrega:string;
begin
          if tb1.RecordCount <=0 then msg('#Não há dados?',0);

          codloc:='1';
          imp:=msgi('Digite uma opção de impressão:' + #13 + #13 +
                    '1 = Imprimir listagem'+#13+
                    '2 = Imprimir pedido   ', 2);

          if not strtoint(imp) in [1..2] then abort;


          if imp = '1' then begin

            abortaacao(tb1,nil,'chave','','','','',0);
            selecione('select endereco, numero, complemento, bairro, municipio, cep, ddd,fone,'+
                      'enderecoentrega, numeroentrega, complementoentrega, bairroentrega, municipioentrega, cepentrega '+
                      ' from tbcliente where codigo = '+ quotedstr(tb1.fieldbyname('codigocliente').AsString));

            if sqlpub.fieldbyname('enderecoentrega').AsString <> '' then entrega := 'entrega';

            endereco := 'Fone: ' +  sqlpub.fieldbyname('ddd').AsString +'-'+sqlpub.fieldbyname('fone').AsString+#13+
                        'Endereço: ' + sqlpub.fieldbyname('endereco' + entrega).AsString + ' '+
                                       sqlpub.fieldbyname('numero' + entrega).AsString +  ' '+
                                       sqlpub.fieldbyname('complemento' + entrega).AsString +#13+
                        'Bairro: ' +  sqlpub.fieldbyname('bairro' + entrega).AsString +
                        '       Cidade: ' +  sqlpub.fieldbyname('municipio' + entrega).AsString +
                        '       Cep: ' +  sqlpub.fieldbyname('cep' + entrega).AsString ;
            sqlpub := nil;

            filtrar(entgrade,tb1,nil,'chave');
            impgrade(tb1,nil,d1,entgrade,'entrega', entl1.Caption ,endereco,true);
            tb1.Filtered := false;
            entgrClick(self);
            tb1.First;
          end;


          if imp = '2' then begin
              if inputquery('Imprimir', 'Digite uma opção de impressão:' + #13 + #13 +
                            '2 = Imprime Padrão' + #13 +
                            '3 = Imprime Reduzido' + #13 +
                            '8 = Impressão texto' + #13 +
                            '10 = Proposta' + #13 +
                            '11 = Cupom' + #13 +
                            'Esc = Cancela',imp) then  else abort;;


                 if (imp = '2') or (imp = '3') or (imp = '8') or (imp = '10') or (imp = '11') then
                    imppedido(tb1.FieldByName('link').AsString,'tbpedido',imp);

          end;

end;

procedure Tfsistema2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        if (page = 'entrega') and (gravar) then btentsalvarClick(self);
end;

procedure Tfsistema2.entgrClick(Sender: TObject);
begin
      if entgr.ItemIndex = 0 then tb1.Filtered := false
      else if entgr.ItemIndex = 1 then tb1.Filter := 'entregue > 0'
      else if entgr.ItemIndex = 2 then tb1.Filter := '(entregue = 0 or entregue is null)'
      else if entgr.ItemIndex = 3 then tb1.Filter := 'entregar > 0';

      tb1.Filtered := entgr.ItemIndex > 0;
end;

procedure Tfsistema2.SpeedButton4Click(Sender: TObject);
var
nff,nfa:integer;
numero,codigo,nome,obs:string;
begin

         codigo := msgi('Digite (só números): O Código, ou o CNPJ/CPF ou o Fone, ou as iniciais do nome para pesquisa',0);
         listagem(achacp('nome',codigo),codigo,'',4,0);
         if fdm.sg.Active=false then abort;

         codigo := '1';
         nome := 'ORDEM DE PRODUÇÃO';
         obs := fdm.sg.fieldbyname('nome').AsString;

         fechatg;

        numero := inttostr(fdm.numnota('',false));
        selecione('insert into tbe(codigo,nome,numero,obs,modo,avulso,data)'+
                 ' values('+quotedstr(codigo)+','+quotedstr(nome)+','+ numero +','+quotedstr(obs)+ ',"O","N",now())');
        t2.Cancel;
        t2.Refresh;
        t2.Locate('numero',numero,[]);
        GALTERA('2', t2.FieldByName('numero').AsString, 'i');
        opselitemExecute(self);
        elocalizarop.SetFocus;

end;

procedure Tfsistema2.btopapagarClick(Sender: TObject);
begin
      abortaacao(nil,t2,'chave','','','','',0);
      if msg('',1) then  begin

         t1.First;
         while not t1.eof do begin
               baixamateriaop(t1.fieldbyname('codigo').AsString,t1.fieldbyname('qtd').AsFloat);
               t1.next;
         end;

         selecione('delete from tbeitem where link = ' + quotedstr(t2.fieldbyname('chave').AsString));
         selecione('delete from tbe where chave = ' + quotedstr(t2.fieldbyname('chave').AsString));         
         GALTERA('2', t2.FieldByName('numero').AsString, 'd');
         t2.Refresh;
         opselitemexecute(self);

      end;

end;

procedure Tfsistema2.SpeedButton6Click(Sender: TObject);
begin
      abortaacao(nil,t2,'chave','','','','',0);
      if t1.RecordCount <=0 then msg('#Não há itens.',0);
      if msg('Deseja Finalizar a Ordem de Produção?',2) then begin

         t1.First;
         while not t1.Eof do begin
               alimentaestoque(t1.fieldbyname('codigo').AsString ,
                         t1.fieldbyname('qtd').AsFloat , '1',0);
               t1.Next;
         end;

         t2.edit;
         t2['dtfechamento'] := datetostr(now);
         t2.Post;
         fdm.gentrada('tbe','tbentrada',t2.fieldbyname('numero').AsString,'',cptb,cptbitem);
         GALTERA('2', t2.FieldByName('numero').AsString, 'e');
         t2.Refresh;
         opselitemexecute(self);
      end;

end;

procedure Tfsistema2.SpeedButton7Click(Sender: TObject);
var
st,codprod:string;
begin
        abortaacao(nil,t2,'chave','','','','',0);
        ST
         := '1';
        codloc := '1';

        if responsavel <> 'LOOK PAPEIS' then
           st := msgi('Digite uma opção de impressão:' + #13 + #13 +
                      '1 = Imprime Ord. Produção' + #13 +
                      '2 = Imprime Matéria-Prima',0);

        if not strtoint(st) in [1..2] then abort;


        if st = '1' then
           impgrade(nil,t1,d1,gradeop,'op','O.P. N. ' + openum.Text +' - ' +copy(lopcodcliente.Caption+' '+lopcliente.Caption,1,30)+ ' - Data: '+opdata.Text+ ' - Prev: '+opprev.Text, opobs.Text ,true);


        if st = '2' then begin

           t1.First;
           codprod:='';
           while not t1.Eof do begin
                 if codprod = '' then codprod := ' and (tbproduto.codigo = '+ quotedstr(t1.fieldbyname('codigo').AsString)
                                 else codprod := codprod + ' or tbproduto.codigo = '+ quotedstr(t1.fieldbyname('codigo').AsString);
                 t1.Next;
           end;

           if codprod <> '' then codprod := codprod + ')';

            with fdm.Query1 do begin
                 sql.Clear;
                 sql.Add('select '+
                         ' tbprodutoitem.chave,'+
                         ' tbproduto.descricao as produto, '+
                         ' tbprodutomp.codigo,'+
                         ' tbprodutomp.descricao as Materia_Prima,'+
                         ' tbprodutomp.un,'+
                         ' tbprodutoitem.qtd, '+
                         ' tbprodutomp.estoque,'+
                         ' "                              " as obs'+
                         ' from tbprodutomp, tbprodutoitem, tbproduto '+
                         ' where tbprodutomp.codigo = tbprodutoitem.codigomp'+
                         ' and   tbproduto.codigo = tbprodutoitem.codigoproduto '+ codprod+
                         ' order by produto, Materia_Prima ');
                 fdm.tbquery1.Close;
                 fdm.tbquery1.open;
                 formatacptabela(fdm.tbquery1,nil,2);
            end;

            reltb(fdm.tbquery1,'Matéria-Prima Relacionada:     O.P. '+openum.Text+'   -  Data: '+opdata.Text,'mpop','','','','','','','','','','','','','');
            fdm.tbquery1.Close;
        end;

end;

procedure Tfsistema2.SpeedButton8Click(Sender: TObject);
begin
        vf:=true;
        codloc := '';
        relatorio('','data','numero',
                  'select chave,obs as Cliente, numero,data,dataprev,dtfechamento,peso,volume,codigo,nome from tbentrada ' ,
                  '',
                  ' and modo = "O" ',
                  '',
                  '','','','','', '','','','','','', '','','','','','','',
                  'tbentrada',
                  'Ordem de produção encerradas',
                  'tbentrada',0,10);

        vf:=false;

        if codloc <> '' then begin
           fdm.gentrada('tbentrada','tbe',codloc,'',cptb,cptbitem);
           t2.Refresh;
           t2.Locate('numero',codloc,[]);

           t1.First;
           while not t1.Eof do begin
                 alimentaestoque(t1.fieldbyname('codigo').AsString ,
                                 t1.fieldbyname('qtd').AsFloat*(-1) , '1',0);
                 t1.Next;
           end;

           codloc :='';
        end;



        //GALTERA('2', t2.FieldByName('numero').AsString, 's');

end;

procedure Tfsistema2.Label90Click(Sender: TObject);
begin
      abortaacao(nil,t2,'chave','','','','',0);
      loccampo(nil,t2,'numero','','','');

end;

procedure Tfsistema2.Label89Click(Sender: TObject);
var
st:string;
begin
      abortaacao(nil,t2,'chave','','','','',0);
      codloc := t2.fieldbyname('data').AsString;
      st := msgi('Digite a nova data inicial:',1);

      if st <> '' then begin
         t2.edit;
         t2['data'] := st;
         alteraop;
         st := quotedstr(formatdatetime('yyyy-mm-dd',strtodate(st)));
         selecione('update tbeitem set data = ' +st+' where link='+quotedstr(t2.fieldbyname('chave').AsString));
      end;

end;

procedure Tfsistema2.Label88Click(Sender: TObject);
var
st:string;
begin
      abortaacao(nil,t2,'chave','','','','',0);
      if t2['dataprev'] <> null then  codloc := t2.fieldbyname('dataprev').AsString;
      st := msgi('Digite a nova dataprev:',1);

      if st <> '' then begin
         t2.edit;
         t2['dataprev'] := st;
         alteraop;
      end;

end;

procedure Tfsistema2.elocalizaropKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key = 13 then begin
         abortaacao(nil,t2,'chave','','','','',0);
         opins(elocalizarop.Text);
      end;

end;

procedure Tfsistema2.btopnClick(Sender: TObject);
var
qtd,obs,peso,volume:string;
begin
      abortaacao(nil,t1,'chave','','','','',0);

      codloc := t1.fieldbyname('qtd').AsString;
      qtd := msgi('Digite a quantidade:',2);
      if strtofloat(qtd)<=0 then msg('#Quantidade deve ser maior que zero.',0);

      codloc :='0';
      peso := msgi('Digite o peso:',2);

      codloc :='0';
      volume := msgi('Digite o nº do volume:',2);


      codloc := t1.fieldbyname('obs').AsString;
      obs := msgi('Digite a observação:',0);
      if obs<>'' then obs :=   ', obs = '+ quotedstr(obs)
                 else obs :=   ', obs = null';

      selecione('update tbeitem set'+
               ' qtd = ' +realdblstr(strtofloat(qtd))+
               ' ,peso = ' +realdblstr(strtofloat(peso))+
               ' ,volume = ' +realdblstr(strtofloat(volume))+
                obs+
                ' where chave='+quotedstr(t1.fieldbyname('chave').AsString));

      baixamateriaop(t1.fieldbyname('codigo').AsString,t1.fieldbyname('qtd').AsFloat - strtofloat(qtd));
      t2.Refresh;
      somaop;

end;

procedure Tfsistema2.btopdClick(Sender: TObject);
begin
      if msg('',1) then  begin
         baixamateriaop(t1.fieldbyname('codigo').AsString,t1.fieldbyname('qtd').AsFloat);
         selecione('delete from tbeitem where chave = ' + quotedstr(t1.fieldbyname('chave').AsString));
         t1.Refresh;
         somaop;
      end;
end;

procedure Tfsistema2.op_Execute(Sender: TObject);
begin           
       if page = 'op' then begin
           caption := 'Ordem de produção';

           if resolucao >700 then Height := 700;

           with t2 do begin
                sql.Clear;
                sql.Add('select chave,numero,modo,data,codigo,nome,dataprev,dtfechamento,obs2,obs,peso,volume from tbe where modo = "O" order by numero');
                open;
                formatacptabela(nil,t2,2);
                d2.DataSet := t2;
                openum.DataSource := d2;
                opdata.DataSource := d2;
                opobs.DataSource := d2;
                opprev.DataSource := d2;
                loppeso.DataSource := d2;
                lopvolume.DataSource := d2;
                lopcliente.DataSource := d2;
                lopcodcliente.DataSource := d2;

           end;

           opselitemExecute(self);
           d1.DataSet := t1;
           gradeop.DataSource := d1;
           btnsair.Destroy;
           elocalizarop.SetFocus;

          selecione('select prazovendaconsignada,VCinterno, VCBarras, VCOriginal from tbconfig');
          VCinterno   := sqlpub['VCinterno'] = 'S';
          VCBarras    := sqlpub['VCBarras'] = 'S';
          VCOriginal:= sqlpub['VCOriginal'] = 'S';
          sqlpub := nil;

       end;

end;

procedure Tfsistema2.opselitemExecute(Sender: TObject);
begin
      with t1 do begin
           sql.Clear;
           sql.add('select chave, link, data, codigo, descricao, qtd, obs, modo,peso,volume from tbeitem '+
                   ' where link = '+quotedstr(t2.fieldbyname('chave').AsString)+' order by chave ');
           open;
           formatacptabela(nil,t1,2);
      end;

end;

procedure Tfsistema2.t2AfterScroll(DataSet: TDataSet);
begin
      if page = 'op' then opselitemExecute(self);
end;

procedure Tfsistema2.lopobsClick(Sender: TObject);
begin
        if lopobs.Caption = 'Obs - Clique para inserir/alterar' then begin
           t2.Edit;
           lopobs.Caption := 'Obs - Clique para gravar a alteração';
           opobs.Color := $00F0FFFF;
           opobs.ReadOnly := false;
           opobs.SetFocus;
        end else begin
           elocalizarop.SetFocus;
        end;
end;

procedure Tfsistema2.opobsExit(Sender: TObject);
begin
       if opobs.Modified then  alteraop;
end;

procedure Tfsistema2.combo_Execute(Sender: TObject);
begin
            if page = 'combo' then begin

               //controle1 e controle2 sao as contas debito e crédido

               caption := 'Selecione as contas';
               btnsair.Parent := combo;
               combos.SetFocus;

               with t1 do begin
                    sql.Clear;
                    sql.add('select chave, descricao from tbconta order by descricao');
                    open;

                    d1.DataSet := t1;
                    combos.ListField := 'descricao';
                    combos.KeyField  := 'descricao';
               end;

               with t2 do begin
                    sql.Clear;
                    sql.add('select chave, descricao from tbconta order by descricao');
                    open;

                    d2.DataSet := t2;
                    combos2.ListField := 'descricao';
                    combos2.KeyField  := 'descricao';
               end;

               with t3 do begin
                    sql.Clear;
                    sql.add('select chave, descricao from tbconta order by descricao');
                    open;

                    d3.DataSet := t3;
                    combos3.ListField := 'descricao';
                    combos3.KeyField  := 'descricao';
               end;

               if controle <> '' then begin
                  t1.Locate('chave',controle,[]);
                  combos.KeyValue := t1.fieldbyname('descricao').Value;
               end;

               if controle2 <> '' then begin
                  t2.Locate('chave',controle2,[]);
                  combos2.KeyValue := t2.fieldbyname('descricao').Value;
               end;

               if controle3 <> '' then begin
                  t3.Locate('chave',controle3,[]);
                  combos3.KeyValue := t3.fieldbyname('descricao').Value;
               end;

               combos.TabOrder :=0;
               combos2.TabOrder :=1;
               combos3.TabOrder :=2;
               btokcombo.TabOrder :=3;

               if controle4 = '' then begin
                  btokcombo.Top := 96;
                  Height:= 174;
                  Label7.Destroy;
                  combos3.Destroy;
               end else Height:= 220;

               btnsair.Top := btokcombo.top;
               btnsair.left := 118;


            end;


end;

procedure Tfsistema2.btokcomboClick(Sender: TObject);
begin

      if (combos.Text <> '') and (combos2.Text <> '') then
         codloc := t1.fieldbyname('chave').AsString +'#'+ t2.fieldbyname('chave').AsString
      else msg('#Você deve escolher a conta débito e crédito.',0);
      
      if t1.fieldbyname('chave').AsInteger = t2.fieldbyname('chave').AsInteger then
         msg('#Conta crédito está igual à conta débito.',0);

      if (combos3 <> nil) and (combos3.Text <> '') then
         codloc := codloc + '#'+ t3.fieldbyname('chave').AsString;
         
      close;
end;

procedure Tfsistema2.PageControl2Change(Sender: TObject);
begin

           width := 500;
           case  PageControl2.ActivePageIndex of

              0:begin
                 caption := 'Grupo nível2';
                 d1.DataSet := n2;
                 grade.DataSource := d1;
                 titgrade(grade,nil,n2);
              end;

              1:begin
                 caption := 'Grupo nível3';
                 d1.DataSet := n3;
                 grade.DataSource := d1;
                 titgrade(grade,nil,n3);
              end;

              2:begin
                 caption := 'Grupo nível4';
                 d1.DataSet := n4;
                 grade.DataSource := d1;
                 titgrade(grade,nil,n4);
              end;

              3:begin
                 caption := 'Grupo nível5';
                 d1.DataSet := n5;
                 grade.DataSource := d1;
                 titgrade(grade,nil,n5);
                 width := 550;
              end;

           end;


end;

procedure Tfsistema2.cadconta_Execute(Sender: TObject);
begin
            if page = 'cadconta' then begin
               n2.Open;
               n3.Open;
               n4.Open;
               n5.Open;
               pagecontrol2.ActivePageIndex :=0;
               d1.DataSet := n2;
               grade.DataSource := d1;
               titgrade(grade,nil,n2);
               btnsair.Destroy;
               ECONTA.SetFocus;

            end;
end;

procedure Tfsistema2.d1DataChange(Sender: TObject; Field: TField);
var st:string;
begin

      if page = 'cadconta' then begin

         if copy(n5.fieldbyname('contaanalitica').AsString,1, 1) = '1' then st := 'ATIVO' else
         if copy(n5.fieldbyname('contaanalitica').AsString,1, 1) = '2' then st := 'PASSIVO' else
         if copy(n5.fieldbyname('contaanalitica').AsString,1, 1) = '3' then st := 'DESPESAS' else
         if copy(n5.fieldbyname('contaanalitica').AsString,1, 1) = '4' then st := 'RECEITA' else
         if copy(n5.fieldbyname('contaanalitica').AsString,1, 1) = '5' then st := 'C. COMPENSACAO' else
                                                                            st := 'DESCONHECIDO';

         lnivel1.Caption := 'Nív1: '+ st;
         lnivel2.Caption := 'Nív2: '+ n2.fieldbyname('descricao').AsString;
         lnivel3.Caption := 'Nív3: '+ n3.fieldbyname('descricao').AsString;
         lnivel4.Caption := 'Nív4: '+ n4.fieldbyname('descricao').AsString;
         lnivel5.Caption := 'Nív5: '+ n5.fieldbyname('descricao').AsString;
      end;
      
end;

procedure Tfsistema2.gradeDblClick(Sender: TObject);
var st,nivel,tb,atua:string;
begin

          codloc := d1.DataSet.fieldbyname('descricao').AsString;;

          if (lowercase(grade.SelectedField.FieldName) = 'codigo') or
             (lowercase(grade.SelectedField.FieldName) = 'chave') then msg('#Este campo não pode ser alterado.',0);

          st := msgi('Digite para alterar:' ,0);
          if st='' then abort;

          case PageControl2.ActivePageIndex of
               0:tb :='tbnivel2';
               1:tb :='tbnivel3';
               2:tb :='tbdespesa';
               3: begin
                     tb   :='tbconta';
                     atua :=', codnivel4 = '+quotedstr(n4.fieldbyname('chave').AsString)+
                            ', codnivel3 = '+quotedstr(n3.fieldbyname('chave').AsString)+
                            ', codnivel2 = '+quotedstr(n2.fieldbyname('chave').AsString);
                  end;
          end;

          selecione('update '+tb+' set ' + grade.SelectedField.FieldName +' = '+quotedstr(st) + atua+
                    ' where chave = '+ quotedstr(d1.DataSet.fieldbyname('chave').asstring));

          n2.Refresh;
          n3.Refresh;
          n4.Refresh;
          n5.Refresh;
end;

procedure Tfsistema2.bcadClick(Sender: TObject);

var tb,campo2,v2,st:string;
begin
          ECONTA.SetFocus;
          if econta.Text = '' then msg('#Digite os dados.',0);

          case PageControl2.ActivePageIndex of
               1: if n2.RecordCount <=0 then msg('#Escolha o grupo nível 2,',0);
               2: if n3.RecordCount <=0 then msg('#Escolha o grupo nível 3,',0);
               3: if n4.RecordCount <=0 then msg('#Escolha o grupo nível 4,',0);
          end;
          st := n5.fieldbyname('contaanalitica').AsString;


          if PageControl2.ActivePageIndex = 3 then begin
             codloc := st;
             st := msgi('Digite a conta analítica. Ex:'+#13+#13+st+#13+#13+
                        '1.1.01.01.01   (grupo ATIVO)      '+#13+
                        '2.1.01.01.01   (grupo PASSIVO)  '+#13+
                        '3.1.01.01.01   (grupo DESPESAS) '+#13+
                        '4.1.01.01.01   (grupo RECEITA )   '+#13+
                        '5.1.01.01.01   (grupo COMPENSA)' ,0);

             if st='' then abort;

             if ((copy(st,1,1) <>'1') and(copy(st,1,1) <>'2') and(copy(st,1,1) <>'2') and
                (copy(st,1,1) <>'2') and(copy(st,1,1) <>'2')) or
                (length(st)<>12) then msg('#O primeiro número deve ser de 1 a 5 e deve ter 12 caracteres. ex: 3.1.01.01.01',0);

             selecione('select max(codigo)as codigo from tbconta');

              campo2 :=', contaanalitica' +
                      ', codigo' +
                      ', codnivel4' +
                      ', codnivel3' +
                      ', codnivel2' ;

              v2 :=   ','+quotedstr(st) +
                      ', '+inttostr(sqlpub.fieldbyname('codigo').AsInteger+1)+
                      ', '+quotedstr(n4.fieldbyname('chave').AsString)+
                      ', '+quotedstr(n3.fieldbyname('chave').AsString)+
                      ', '+quotedstr(n2.fieldbyname('chave').AsString);
          end;

          case PageControl2.ActivePageIndex of
               0:   tb :='tbnivel2';

               1:begin
                    tb :='tbnivel3';
                    campo2 := ',link';
                    v2 := ','+quotedstr(n2.fieldbyname('chave').AsString);
               end;

               2:begin
                    tb :='tbdespesa';
                    campo2 := ',link';
                    v2 := ','+quotedstr(n3.fieldbyname('chave').AsString);

                 end;

               3:   tb :='tbconta';
          end;

          selecione('select chave from '+tb+' where descricao = '+ quotedstr(ECONTA.Text));
          if sqlpub['chave'] <> null then msg('#Já cadastrado!!!',0);

          selecione('insert into '+tb+' (descricao'+campo2+') values('+ quotedstr(ECONTA.Text) +  v2 +')');


          n2.Refresh;
          n3.Refresh;
          n4.Refresh;
          n5.Refresh;
          ECONTA.Clear;
          ECONTA.SetFocus;

end;

procedure Tfsistema2.bimpClick(Sender: TObject);
var
imp,tb,campo,plano:string;
tbimp:tzquery;
begin
      codloc :='1';
      imp := msgi('Digite uma opção:'+#13+#13+
                  '1 = Imprime grade'+#13+
                  '2 = Imprime tudo  ' ,2);

      tbimp := tzquery.Create(application);

      case PageControl2.ActivePageIndex of
           0:tbimp :=n2;
           1:tbimp :=n3;
           2:tbimp :=n4;
           3:tbimp :=n5;
      end;

      campo := 'chave';

      case PageControl2.ActivePageIndex of
           0:tb :='tbnivel2';
           1:tb :='tbnivel3';
           2:tb :='tbdespesa';
           3:begin
             tb :='tbconta';
             campo := 'codigo'
           end;
      end;

      plano:=   'select '+
                ' a.chave, a.codigo, a.contaanalitica, a.descricao as conta,'+
                ' LEFT(contaanalitica,9) as CodSubgrupo, b.descricao as Subgrupo,'+
                ' LEFT(contaanalitica,6) as CodGrupo, c.descricao as Grupo,'+
                ' LEFT(contaanalitica,3) as codEstrutura, d.descricao as Estrutura,'+

                ' LEFT(contaanalitica,1) as codGrau,'+
                '  if(LEFT(contaanalitica,1) = 1,"ATIVO",'+
                '  if(LEFT(contaanalitica,1) = 2,"PASSIVO",'+
                '   if(LEFT(contaanalitica,1) = 3,"DESPESAS",'+
                '    if(LEFT(contaanalitica,1) = 4,"RECEITA",'+
                '     if(LEFT(contaanalitica,1) = 5,"CONTAS DE COMPENSACAO","DESCONHECIDO"))))) as Grau'+

                ' from tbconta a, tbdespesa b, tbnivel3 c, tbnivel2 d'+

                ' where a.codnivel4 = b.chave'+
                ' and   a.codnivel3 = c.chave'+
                ' and   a.codnivel2 = d.chave' ;



      if imp = '1' then impgrade(nil,tbimp,d1,grade,caption, caption,'',rvisualiza.Checked);

      if imp = '2' then begin



         with fdm.Query1 do begin
              sql.Clear;

              if PageControl2.ActivePageIndex =3 then
                 sql.Add(plano)
              else
              sql.Add('select chave, '+campo+' as codigo, descricao from '+tb+' order by descricao');

              fdm.tbquery1.close;
              fdm.tbquery1.open;

              reltb(fdm.tbquery1,'Plano de contas','','','','','','','','','','','','','','');

              fdm.tbquery1.close;
         end;

      end;
end;

procedure Tfsistema2.bconfigClick(Sender: TObject);
begin
          cadp ('tbconta', 'select chave, codigo, descricao, Banco, Agencia, Conta, Taxa, recebimento from tbconta ', 'Config Conta',
                'descricao','descricao',
                'descricao','tbconta','descricao',
                '','','',
                '','','','','', '', '',
                1,0);

end;

procedure Tfsistema2.gradeTitleClick(Column: TColumn);
begin
      case PageControl2.ActivePageIndex of
           0:n2.IndexFieldNames := Column.FieldName;
           1:n3.IndexFieldNames := Column.FieldName;
           2:n4.IndexFieldNames := Column.FieldName;
           3:n5.IndexFieldNames := Column.FieldName;
      end;
end;

procedure Tfsistema2.bcaixa_Execute(Sender: TObject);
begin

            if page = 'bcaixa' then begin
               btnsair.Destroy;
               caption := 'Transferência do caixa';
               if resolucao >700 then width := 1000;

               cxtz(t1,' where nome = "CAIXA"  and codigo =0 ');
               cxtz(t2,' where ch = "S" ');
               cxtz(t3,' where ch = "C" ');
               cxtz(t4,' where ch is null and (nome <> "CAIXA"  and codigo <> 0) ');

               p1.DataSet := t1;
               tb1.ProviderName := 'p1';
               d1.DataSet :=tb1;
               tb1.close;
               tb1.Open;
               tb1.IndexFieldNames :='chave';

               p2.DataSet := t2;
               tb2.ProviderName := 'p2';
               d2.DataSet :=tb2;
               tb2.close;
               tb2.Open;
               tb2.IndexFieldNames :='chave';

               p3.DataSet := t3;
               tb3.ProviderName := 'p3';
               d3.DataSet :=tb3;
               tb3.close;
               tb3.Open;
               tb3.IndexFieldNames :='chave';

               p4.DataSet := t4;
               tb4.ProviderName := 'p4';
               d4.DataSet :=tb4;
               tb4.close;
               tb4.Open;
               tb4.IndexFieldNames :='chave';

               gradecaixa.DataSource := d1;
               titgrade(gradecaixa,tb1,nil);

               trans:=1;
            end;
end;

procedure Tfsistema2.SpeedButton1Click(Sender: TObject);
var
transferir,valor:double;
debito,credito,baixa,codconta1, codconta2,doc,historico:string;
chave:integer;

      procedure ptb(tb:tclientdataset);
      begin
                    if debito = credito then msg('#A conta crédito não pode ser igual à conta débito.',0);
                    tb['transferir'] := valor;
                    tb['gp'] := trans;

                    tb['codconta'] := debito;
                    selecione('select descricao from tbconta where codigo = '+ quotedstr(debito));
                    tb['contad'] := sqlpub.fieldbyname('descricao').AsString;

                    tb['codconta2'] := credito;
                    selecione('select descricao from tbconta where codigo = '+ quotedstr(credito));
                    tb['contac'] := sqlpub.fieldbyname('descricao').AsString;

                    if rgcx.ItemIndex in [1..2] then begin
                    tb['codbaixa'] := baixa;
                    selecione('select descricao from tbconta where codigo = '+ quotedstr(credito));
                    tb['contab'] := sqlpub.fieldbyname('descricao').AsString;

                    end;

                    if historico <> '' then tb['historico'] := uppercase(historico);

                    tb.Post;
      end;


      procedure separa(tb:tclientdataset);
      var contabaixa,fl :string;
      begin

            contabaixa:='';
            if rgcx.ItemIndex in [1..2] then begin
               fl :='0';
               selecione('select contacheque, contacartao from tbconfig');

               if (rgcx.ItemIndex in [1]) and
                  (sqlpub['contacheque'] <> null) then contabaixa := sqlpub.fieldbyname('contacheque').AsString;

               if (rgcx.ItemIndex in [2]) and
                  (sqlpub['contacartao'] <> null) then contabaixa := sqlpub.fieldbyname('contacartao').AsString;

               sqlpub := nil;

            end;

            debito      :='';
            debito := combotb2(tb.fieldbyname('codconta').AsString,'',contabaixa,fl);
            if debito = '' then abort;

            //showmessage('debito:'+debito+'  codloc:'+codloc+'  valorconfig:'+valorconfig) ;

            credito := codloc;
            baixa   := valorconfig;
            codloc  :='';
            historico := msgi('Digite o histórico:',0);

            filtrar(gradecaixa,tb,nil,'chave');

            valor :=0;
            tb.First;
            while not tb.Eof do begin
                  valor := valor + tb.fieldbyname('valor').AsFloat;
                  tb.Next;
            end;

            tb.First;
            while not tb.Eof do begin
                  tb.edit;
                  ptb(tb);
                  
                  tb.Next;
            end;
            inc(trans);
            tb.Filtered := false;

      end;




begin

         //caixa dinheiro
         case rgcx.ItemIndex of
           0 : begin
                  tb1.Close;
                  tb1.Open;
                  titgrade(gradecaixa,tb1,nil);
               end;
         end;


        if (rgcx.ItemIndex = 0) and (tb1.FieldByName('valor').AsFloat>0) then begin
           transferir := tb1.fieldbyname('valor').AsFloat;
           codconta1  := tb1.fieldbyname('codconta').AsString;


           while transferir > 0 do begin

                 codloc := floattostr(transferir);
                 valor := strtofloat(msgi('Digite o valor:',2));
                 transferir := transferir - valor;

                 if transferir <0 then begin
                    transferir :=0;
                    msg('Você não pode transferir mais do que tem no caixa. Faça novamente.',0);
                    abort;
                 end;

                 doc := tb1['documento'];
                 chave := tb1['chave'];

                 debito := '';
                 codloc := '';
                 while (debito = '') or (codloc = '') do
                       debito := combotb2(codconta1,'','','');
                 credito := codloc;

                 codloc :='';
                 historico := msgi('Digite o histórico:',0);

                 if tb1['transferir'] = 0 then begin
                    tb1.edit;
                    ptb(tb1);
                    inc(trans);

                 end else begin
                    tb1.insert;
                    tb1['chave'] := chave + 1;
                    inc(chave);
                    tb1['documento'] := doc;
                    ptb(tb1);
                    inc(trans);

                 end;
           end;
        end;


        if (rgcx.ItemIndex = 1) and (tb2.FieldByName('valor').AsFloat>0) then separa(tb2) else
        if (rgcx.ItemIndex = 2) and (tb3.FieldByName('valor').AsFloat>0) then separa(tb3) else
        if (rgcx.ItemIndex = 3) and (tb4.FieldByName('valor').AsFloat>0) then separa(tb4) ;


end;

procedure Tfsistema2.rgcxClick(Sender: TObject);
begin
      case rgcx.ItemIndex of
           0 : begin
                  gradecaixa.DataSource := d1;
                  titgrade(gradecaixa,tb1,nil);
               end;
           1 : begin
                  gradecaixa.DataSource := d2;
                  titgrade(gradecaixa,tb2,nil);
                  tb2.Filtered := false;
               end;
           2 : begin
                  gradecaixa.DataSource := d3;
                  titgrade(gradecaixa,tb3,nil);
                  tb3.Filtered := false;
               end;
           3 : begin
                  gradecaixa.DataSource := d4;
                  titgrade(gradecaixa,tb4,nil);
                  tb4.Filtered := false;
               end;
      end;


end;

procedure Tfsistema2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (key = 13) then
           Perform(wm_nextdlgctl, 0,0);
        if (key = 27) then
           Perform(wm_nextdlgctl, 1,0);
end;

procedure Tfsistema2.SpeedButton2Click(Sender: TObject);
var
vr1,vr2:double;
conta:boolean;
gp:string;                

      procedure testa(tb:tclientdataset;nconta:string);
      begin
        if tb.RecordCount >0 then begin
            tb.First;
            while not tb.Eof do begin
                  if (tb['codconta2'] = null) or (tb['codconta'] = null) or
                     (tb['transferir'] = 0) or (tb['gp'] = 0) then conta := true;
                  tb.Next;
            end;

            if conta then msg('#'+nconta+': Não foram escolhidas as contas corretamente.',0);
         end;
      end;



      procedure anviarec(tb:tclientdataset);
      begin
            tb.Filtered := false;
            tb.First;
            while not tb.Eof do begin
                  selecione('update tbreceber set codconta  = '+quotedstr(tb.fieldbyname('codconta').AsString)+
                                               ', codconta2 = '+quotedstr(tb.fieldbyname('codconta2').AsString)+
                                               ', codconta3 = '+quotedstr(tb.fieldbyname('CodBaixa').AsString)+
                            ' where               chave     = '+quotedstr(tb.fieldbyname('chave').AsString));
                  tb.Next;
            end;
      end;




      procedure enviatudo(tb:tclientdataset);
      begin
         tb.Filtered := false;
         if tb.RecordCount >0  then begin
            tb.IndexFieldNames := 'gp';
            gp := tb.fieldbyname('gp').AsString;

            vr1 :=0;
            tb.First;
            while not tb.Eof do begin

               if tb.Name = 'tb1' then vr1 := vr1 + tb.fieldbyname('transferir').asfloat
                                  else vr1 := vr1 + tb.fieldbyname('valor').asfloat;
               tb.Next;
               if (tb['gp'] <> gp) then begin

                  alimentaconta(tb.fieldbyname('codconta').AsString ,
                       tb.fieldbyname('codconta2').AsString ,
                       tb.fieldbyname('historico').AsString ,
                       '34',controle, date, vr1);

                   gp := tb.fieldbyname('gp').AsString;
                   vr1 :=0;
               end;

         end;
         alimentaconta(tb.fieldbyname('codconta').AsString ,
                 tb.fieldbyname('codconta2').AsString ,
                 tb.fieldbyname('historico').AsString ,
                 '34',controle, date, vr1);
         anviarec(tb);
         tb.IndexFieldNames := 'chave';
      end;
   end;


begin

        //dinheiro

        if tb1.RecordCount >0 then begin
            tb1.First;
            vr1 :=0;
            vr2 :=0;
            while not tb1.Eof do begin
                  vr1 := vr1 + tb1.fieldbyname('valor').asfloat;
                  vr2 := vr2 + tb1.fieldbyname('Transferir').asfloat;
                  tb1.Next;
            end;

            if vr1 > vr2 then msg('#Transferência em dinheiro não bate.',0);
         end;


         testa(tb2,'Cheques');
         testa(tb3,'Cartões');
         testa(tb4,'A prazo');

         if msg('Deseja enviar os valores às contas escolhidas?',2) then else abort;

         enviatudo(tb1);
         enviatudo(tb2);
         enviatudo(tb3);
         enviatudo(tb4);

         selecione('update tbcaixagrupo set dataconta = now(), usuconta ='+inttostr(usuariolink)+
                   ' where chave = '+quotedstr(controle));
         close;

end;

procedure Tfsistema2.precomateria_Execute(Sender: TObject);
begin
            if page = 'precomateria' then begin
               btnsair.Destroy;
               with t1 do begin
                    sql.Clear;
                    sql.Add('select p.chave, p.codigo, p.descricao, e.vrcompra, e.fracao, p.custocompra, p.despesaacessoria, p.frete, e.icm as imposto,'+
                            ' e.IPI, p.custocompraunit, p.vrunit, p.cpliq, p.totalmp, p.percent, p.vrvenda, p.percentatacado, '+
                            ' p.vratacado, p.percent3, p.valor3, p.icmvr, p.IPIv, p.Fretev, p.despesaacessoriaV '+
                            ' from tbprodutomp p, tbeitemmp e '+
                            ' where p.codigo = e.codigo and e.link = ' + quotedstr(controle));

                    p1.DataSet := t1;
                    tb1.ProviderName := 'p1';
                    d1.DataSet := tb1;
                    tb1.Open;
                    formatacptabela(tb1,nil,4);
                    emp1.DataSource := d1;
                    emp2.DataSource := d1;
                    emp3.DataSource := d1;
                    emp4.DataSource := d1;
                    emp5.DataSource := d1;
                    emp6.DataSource := d1;
                    emp7.DataSource := d1;
                    emp8.DataSource := d1;
                    emp9.DataSource := d1;
                    emp10.DataSource := d1;
                    emp11.DataSource := d1;
                    emp12.DataSource := d1;
                    emp13.DataSource := d1;
                    emp14.DataSource := d1;
                    emp15.DataSource := d1;
                    emp16.DataSource := d1;
                    emp17.DataSource := d1;
                    db1.DataSource := d1;
                    totmp(nil,tb1);

                    total := tb1.RecordCount;
                    tb1.First;
               end;

            end;
end;

procedure Tfsistema2.balteraClick(Sender: TObject);
begin
       altera(nil,t1,'tbprodutomp');
       atualizaprodutomp(nil,tb1);
       tb1.Next;
       total := total -1;
       if total=0 then close;
end;

procedure Tfsistema2.bnalteraClick(Sender: TObject);
begin
       tb1.Next;
       total := total -1;
       if total=0 then close;
end;

procedure Tfsistema2.emp11Exit(Sender: TObject);
begin
      totmp( nil, tb1);
end;

procedure Tfsistema2.prontuario_Execute(Sender: TObject);

begin

        if page = 'prontuario' then begin
           btnnovop.Glyph := btcadastrar;
           btneditarp.Glyph := btalterar;
           btnanotacoesp.Glyph := btanotacoes;
           btnimprimirp.Glyph := btimprimir;
           imagepanel('imagemenu1', altop, panel8, '',menucad);

           caption := 'Ficha do cliente';

           btnsair.Destroy;

           with t1 do begin
                sql.Clear;
                sql.add('select * from tbcliente where chave = ' + quotedstr(controle));
                open;
                d1.DataSet := t1;
           end;


           if fileexists(servpath + 'imagem\cliente\' + t1.fieldbyname('codigo').AsString + '.jpg') then
              vimagep.Picture.loadfromFile(servpath + 'imagem\cliente\' + t1.fieldbyname('codigo').AsString + '.jpg');

           if t1['nascimento'] <> null then pr5.Text :=  inttostr(Trunc((Date - t1.fieldbyname('nascimento').AsDateTime)/365.25)) +' ANOS';

           criacoluna(gprontuario,'inicio','Início',67);
           criacoluna(gprontuario,'fim','Fim',67);
           criacoluna(gprontuario,'descricao','Descriçao',146);
           criacoluna(gprontuario,'status','Status',100);
           criacoluna(gprontuario,'medico','Médico',100);
           criacoluna(gprontuario,'convenio','Convênio',100);
           ncol:=0;
           criacoluna(gprontuarioitem,'data','Data',67);
           criacoluna(gprontuarioitem,'descricao','Descriçao',120);


           pr1.DataSource := d1;
           pr2.DataSource := d1;
           pr3.DataSource := d1;
           pr4.DataSource := d1;
           
           pr7.DataSource := d1;
           pr8.DataSource := d1;
           pr9.DataSource := d1;
           pr10.DataSource := d1;
           pr11.DataSource := d1;
           pr12.DataSource := d1;
           pr13.DataSource := d1;
           pr14.DataSource := d1;
           pr15.DataSource := d1;
           pr16.DataSource := d1;
           pr17.DataSource := d1;
           pr18.DataSource := d1;
           pr19.DataSource := d1;
           pr20.DataSource := d1;
           pr21.DataSource := d1;
           pr22.DataSource := d1;
           pr23.DataSource := d1;
           pr24.DataSource := d1;
           pr25.DataSource := d1;
           pr26.DataSource := d1;
           pr27.DataSource := d1;
           pr28.DataSource := d1;
           pr29.DataSource := d1;
           pr30.DataSource := d1;
           pr31.DataSource := d1;
           pr32.DataSource := d1;
           pr33.DataSource := d1;
           pr34.DataSource := d1;
           pr35.DataSource := d1;
           PageControl3.ActivePageIndex:=0;

           qmedico.DataSource := d2;
           qdatil.DataSource  := d3;
           pi1.Picture := vimagep.Picture;
           pfantasia.Caption := fantasiaempresa;

        end;

end;

procedure Tfsistema2.btnnovopClick(Sender: TObject);
begin

         cadp ('tbacompanhamento', '','Diagnósticos',

              '','',           //campos que nao devem duplicar
              'status','tbstatus','nome',        //combo1(campo,tabela,nomecampotabela)
              'convenio','tbconv','nome',        //combo2(campo,tabela,nomecampotabela)
              'medico','tbfuncionario','nome',
              'inicio',              //campo auto incremento
              '',              //campo auto incremento
              'descricao',                       //campo que nao ser nulo
              '',
              1,t1.fieldbyname('chave').AsInteger);   //onde vai comecar a criar os campos + link
         t2.refresh;     


end;

procedure Tfsistema2.PageControl3Change(Sender: TObject);
begin
         if PageControl3.ActivePageIndex = 1 then begin

            with t2 do begin
                 sql.Clear;
                 sql.Add('select * from tbacompanhamento where link = '+t1.fieldbyname('chave').AsString);
                 open;
                 d2.DataSet := t2;
                 gprontuario.DataSource := d2;
                 //titgrade(gprontuario,nil,t2);
                 fsistema2.Top := 100;
                 fsistema2.Height := 600;
            end;

            with t3 do begin
                 sql.Clear;
                 sql.Add('select * from tbacompanhamentoitem');
                 MasterSource := d2;
                 MasterFields := 'chave';
                 LinkedFields := 'link'; 
                 open;
                 d2.DataSet := t2;
                 gprontuarioitem.DataSource := d3;
                 emp.DataSource := d3;
            end;


            end else fsistema2.Height := 489;
end;

procedure Tfsistema2.btnimprimirpClick(Sender: TObject);
var imp:string;
begin
          codloc:='1';
          imp:=msgi('Digite uma opção de impressão:' + #13 + #13 +
                    '1 = Listagem'+#13+
                    '2 = Tudo . . .  ', 2);

          if not strtoint(imp) in [1..2] then abort;

          if imp = '1' then impgrade(nil,t2,d2,gprontuario,name, pr2.Text +pr3.Text,'',rv2.checked);
          if imp = '2' then qmedico.PreviewModal;

end;                                                     

procedure Tfsistema2.btneditarpClick(Sender: TObject);
begin
         cadp ('tbacompanhamentoitem', '','acompanhamento',

              '','',           //campos que nao devem duplicar
              '','','',        //combo1(campo,tabela,nomecampotabela)
              '','','',        //combo2(campo,tabela,nomecampotabela)
              '','','',
              'data',          //campo auto incremento
              '',              //campo auto incremento
              'descricao',     //campo que nao ser nulo
              'obs',
              1,t2.fieldbyname('chave').AsInteger);   //onde vai comecar a criar os campos + link
         t3.refresh;
end;

procedure Tfsistema2.RLDBText11BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
      text := t1.fieldbyname('endereco').AsString + ' '+
              t1.fieldbyname('numero').AsString + ' '+
              t1.fieldbyname('complemento').AsString;
end;

procedure Tfsistema2.btnanotacoespClick(Sender: TObject);
begin
      ag('P');
end;

procedure Tfsistema2.passacheque_Execute(Sender: TObject);
begin

        if page = 'passacheque' then begin
           btnsair.Destroy ;

           caption := 'Passar cheque';

           with t1 do begin
                sql.Clear;
                sql.add('select chave, dtemissao,dtvencimento,dtpagamento,total,cheque,conta,codigo,nome,banco,agencia,obs from tbreceber where diferenca >0 and (recebido is null or recebido = 0) and ch = "S"');
                open;
                formatacptabela(nil,t1,2);
                d1.DataSet := t1;
                gcheque.DataSource := d1;
                t1.IndexFieldNames := 'cheque';
           end;

           d2.DataSet := cheque;
           gcheque2.DataSource := d2;
           cm1.DataSource := d1;


           if fileexists(PChar(servpath + '\imagem\cheque.cds')) then
              cheque.FileName := PChar(servpath + '\imagem\cheque.cds')
           else cheque.CreateDataSet;
           cheque.Open;


           schequeExecute(self);
           ec2.SetFocus;
        end;

end;




procedure Tfsistema2.btnconfirmarClick(Sender: TObject);
begin
      if cheque.RecordCount <= 0 then msg('#Não há cheque(s) na listagem.',0);
      totcheque;

      if tch > vrpub then msg('#O valor passado é maior que da compra',0);
      vrpub := tch;
      cht:=true;
      close;
end;

procedure Tfsistema2.schequeExecute(Sender: TObject);
var
tch:double;
begin

        chts:='';
        tch := 0;

        cheque.First;
        while not cheque.Eof do begin
               tch := tch + cheque.FieldByName('total').Asfloat;
               cheque.Next;
        end;

        c1.Caption := format('%n',[tch]);
        c2.Caption := format('%n',[vrpub]);
        c3.Caption := format('%n',[vrpub-tch]);

end;

procedure Tfsistema2.ec2Change(Sender: TObject);
begin
       t1.Locate('conta', ec2.text, []);
end;

procedure Tfsistema2.ec1Change(Sender: TObject);
begin

      if ec2.Text <> '' then t1.Locate('conta;cheque', VarArrayOf([ec2.text, ec1.text]), [])
                        else t1.Locate('cheque',ec1.text, []);
end;

procedure Tfsistema2.ec1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key = 40 then t1.Next;
      if key = 38 then t1.Prior;

    if key = 13 then begin
       sinserirExecute(self);
       ec1.Clear;
       ec2.Clear;
       ec2.setfocus;
    end;

    if key = 27 then ec2.setfocus;

end;

procedure Tfsistema2.sinserirExecute(Sender: TObject);
begin

       if cheque.locate('chave',t1.fieldbyname('chave').asstring,[]) then
          msg('#Este cheque já foi baixado!',0);

       cheque.Insert;
       cheque['chave'] := t1.fieldbyname('chave').asinteger;
       cheque['banco'] := t1.fieldbyname('banco').AsString;
       cheque['cheque'] := t1.fieldbyname('cheque').AsString;
       cheque['nome'] := t1.fieldbyname('nome').AsString;
       cheque['conta'] := t1.fieldbyname('conta').AsString;
       cheque['agencia'] := t1.fieldbyname('agencia').AsString;
       cheque['total'] := t1.fieldbyname('total').asfloat;
       cheque.Post;
       cheque.SaveToFile(PChar(servpath + '\imagem\cheque.cds'));
       schequeExecute(self);

end;

procedure Tfsistema2.gchequeTitleClick(Column: TColumn);
begin
      t1.IndexFieldNames :=  Column.FieldName ;
end;

procedure Tfsistema2.gchequeDblClick(Sender: TObject);
begin
      sinserirExecute(self);
end;

procedure Tfsistema2.ec2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key = 40 then t1.Next;
      if key = 38 then t1.Prior;
end;

procedure Tfsistema2.bchClick(Sender: TObject);
begin

       if cheque.RecordCount <=0 then abort;
       cheque.Delete;
       cheque.SaveToFile(PChar(servpath + '\imagem\cheque.cds'));
       schequeExecute(self);

end;

end.




