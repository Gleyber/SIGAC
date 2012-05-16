unit uconfig;

interface

uses
  printers, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, Buttons, StdCtrls, DBCtrls, Mask, ComCtrls, Inifiles,
  jpeg, Spin, Registry, ExtCtrls, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  Tfconfig = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PnConfECF: TPanel;
    CkConcumitante: TCheckBox;
    RMarca: TRadioGroup;
    RPorta: TRadioGroup;
    MmLembrete: TDBMemo;
    Label15: TLabel;
    EdNumCaixaEcf: TEdit;
    LNumEcf: TLabel;
    TabSheet3: TTabSheet;
    Label6: TLabel;
    cimpressao: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    emensagem2: TEdit;
    Label9: TLabel;
    elinha: TEdit;
    Label10: TLabel;
    emensagem1: TEdit;
    Label11: TLabel;
    ecoluna: TComboBox;
    Label12: TLabel;
    EdNumSerieEcf: TEdit;
    Bevel2: TBevel;
    TabSheet4: TTabSheet;
    ckgaveta: TCheckBox;
    etipoempresa: TDBRadioGroup;
    GroupBox2: TGroupBox;
    eestoquenegativo: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    GroupBox5: TGroupBox;
    DBEdit5: TDBEdit;
    Label21: TLabel;
    DBCheckBox8: TDBCheckBox;
    b1: TSpeedButton;
    Label27: TLabel;
    emensagem3: TEdit;
    Label47: TLabel;
    emensagem4: TEdit;
    CkGavetaReverso: TCheckBox;
    BtCapturar: TButton;
    GroupBox7: TGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Bevel1: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    SpDinheiro: TSpinEdit;
    SpCheque: TSpinEdit;
    SpChequePre: TSpinEdit;
    SpCartaoCred: TSpinEdit;
    SpCartaoDeb: TSpinEdit;
    SpPrazo: TSpinEdit;
    SpConvenio: TSpinEdit;
    SpTicket: TSpinEdit;
    SpValeTransp: TSpinEdit;
    BtProgTrunc: TSpeedButton;
    BtProgHorVerao: TSpeedButton;
    lsFormas: TListBox;
    Label61: TLabel;
    SpeedButton1: TSpeedButton;
    Label62: TLabel;
    Bevel11: TBevel;
    SpCredito: TSpinEdit;
    CkImpOperador: TCheckBox;
    TabSheet5: TTabSheet;
    ecaixa: TDBComboBox;
    Label1: TLabel;
    DBEdit24: TDBEdit;
    Label51: TLabel;
    Label63: TLabel;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    TabSheet6: TTabSheet;
    Bevel12: TBevel;
    Label64: TLabel;
    Bevel13: TBevel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    Tabvenda: TTabSheet;
    pvalor: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    GroupBox6: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBRadioGroup3: TDBRadioGroup;
    GroupBox4: TGroupBox;
    lmesa: TLabel;
    emesa: TDBEdit;
    cpedidocliente: TDBCheckBox;
    cos: TDBCheckBox;
    rbalcao: TDBCheckBox;
    cmesa: TDBCheckBox;
    Ccomissaovendedor: TDBCheckBox;
    Ccomissaoservico: TDBCheckBox;
    rcomissaobalcao: TDBCheckBox;
    rdescontobalcao: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBRadioGroup5: TDBRadioGroup;
    CkECFPedido: TCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    SpeedButton3: TSpeedButton;
    GroupBox8: TGroupBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    cpp: TDBCheckBox;
    eestoqueavisar: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBEdit35: TDBEdit;
    Label24: TLabel;
    DBEdit36: TDBEdit;
    Label25: TLabel;
    ccodigoproduto: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    lcodigoproduto: TLabel;
    ecodigoproduto: TDBEdit;
    Label23: TLabel;
    DBEdit32: TDBEdit;
    Label18: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    Label75: TLabel;
    Label74: TLabel;
    Label73: TLabel;
    DBEdit34: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit31: TDBEdit;
    Bevel14: TBevel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label76: TLabel;
    DBRadioGroup6: TDBRadioGroup;
    DBCheckBox36: TDBCheckBox;
    Label35: TLabel;
    Label34: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label36: TLabel;
    Label49: TLabel;
    Label48: TLabel;
    DBEdit22: TDBEdit;
    TabSheet7: TTabSheet;
    DBEdit37: TDBEdit;
    Label72: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    Label79: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Bevel15: TBevel;
    Label80: TLabel;
    Label81: TLabel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBCheckBox38: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    DBCheckBox39: TDBCheckBox;
    DBCheckBox40: TDBCheckBox;
    DBRadioGroup8: TDBRadioGroup;
    DBEdit42: TDBEdit;
    Label82: TLabel;
    DBCheckBox41: TDBCheckBox;
    epercent: TDBEdit;
    lpercent: TLabel;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox42: TDBCheckBox;
    DBEdit43: TDBEdit;
    Label83: TLabel;
    DBCheckBox43: TDBCheckBox;
    PnBalanca: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    ImgLogoBal: TImage;
    LbDescricaobal: TLabel;
    Label17: TLabel;
    lbDescCodbarras: TLabel;
    CbPortaBal: TComboBox;
    CbBaudRateBal: TComboBox;
    CbProtoBal: TComboBox;
    CkBalanca: TCheckBox;
    CbTipoBarcode: TComboBox;
    Bevel16: TBevel;
    CkMFD: TCheckBox;
    DBMemo1: TDBMemo;
    Label84: TLabel;
    Label85: TLabel;
    DBEdit44: TDBEdit;
    DBCheckBox44: TDBCheckBox;
    DBCheckBox46: TDBCheckBox;
    Label86: TLabel;
    DBEdit45: TDBEdit;
    DBMemo2: TDBMemo;
    Label87: TLabel;
    DBCheckBox47: TDBCheckBox;
    Label88: TLabel;
    DBEdit46: TDBEdit;
    DBCheckBox49: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    DBRadioGroup7: TDBRadioGroup;
    Label91: TLabel;
    DBEdit50: TDBEdit;
    DBCheckBox45: TDBCheckBox;
    DBCheckBox50: TDBCheckBox;
    DBCheckBox51: TDBCheckBox;
    SpeedButton6: TSpeedButton;
    DBCheckBox53: TDBCheckBox;
    SpeedButton4: TSpeedButton;
    Label90: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit49: TDBEdit;
    DBCheckBox52: TDBCheckBox;
    DBCheckBox54: TDBCheckBox;
    DBCheckBox55: TDBCheckBox;
    DBCheckBox56: TDBCheckBox;
    DBCheckBox57: TDBCheckBox;
    DBCheckBox58: TDBCheckBox;
    Label92: TLabel;
    DBEdit51: TDBEdit;
    DBCheckBox59: TDBCheckBox;
    Label93: TLabel;
    evia: TEdit;
    Label94: TLabel;
    DBEdit52: TDBEdit;
    DBCheckBox60: TDBCheckBox;
    Label95: TLabel;
    ecod_mod: TEdit;
    Label96: TLabel;
    eecf_mod: TEdit;
    DBCheckBox61: TDBCheckBox;
    DBCheckBox62: TDBCheckBox;
    sconta: TZQuery;
    dsconta: TDataSource;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label50: TLabel;
    Label22: TLabel;
    Label26: TLabel;
    Label37: TLabel;
    Label89: TLabel;
    DBEdit23: TDBEdit;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBEdit6: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit7: TDBEdit;
    DBEdit21: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBCheckBox48: TDBCheckBox;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label99: TLabel;
    DBEdit53: TDBEdit;
    DBCheckBox63: TDBCheckBox;
    btef: TSpeedButton;
    GroupBox3: TGroupBox;
    DBLookupComboBox6: TDBLookupComboBox;
    Label98: TLabel;
    Label97: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    DBCheckBox64: TDBCheckBox;
    DBCheckBox65: TDBCheckBox;
    DBCheckBox66: TDBCheckBox;
    DBCheckBox67: TDBCheckBox;
    DBCheckBox68: TDBCheckBox;

    procedure LoadDynCaption;
    procedure ativafiscal;
    procedure GravaConfigini;
    procedure LoadConfig;
    procedure SetMaxValueSpins;
    procedure HighLigth(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cimpressaoDropDown(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure emensagem1Change(Sender: TObject);
    procedure emensagem2Change(Sender: TObject);
    procedure ecolunaChange(Sender: TObject);
    procedure ecolunaKeyPress(Sender: TObject; var Key: char);
    procedure TabSheet4Show(Sender: TObject);
    procedure TabSheet4Hide(Sender: TObject);
    procedure CkBalancaClick(Sender: TObject);
    procedure CbProtoBalClick(Sender: TObject);
    procedure ckgavetaClick(Sender: TObject);
    procedure DBCheckBox5Click(Sender: TObject);
    procedure cosClick(Sender: TObject);
    procedure rbalcaoClick(Sender: TObject);
    procedure MmLembreteEnter(Sender: TObject);
    procedure MmLembreteExit(Sender: TObject);
    procedure BtCapturarClick(Sender: TObject);
    procedure BtProgTruncClick(Sender: TObject);
    procedure BtProgHorVeraoClick(Sender: TObject);
    procedure SpDinheiroEnter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure eestoquenegativoClick(Sender: TObject);
    procedure cpedidoclienteClick(Sender: TObject);
    procedure RMarcaClick(Sender: TObject);
    procedure DBMemo1Enter(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure btefClick(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
    Trunca:Boolean;
  public
    { Public declarations }
  end;

var
  fconfig: Tfconfig;
  LogosBal: array [0..1] of TBitmap;

implementation

uses funcoes, udm, Uecf_aux_, uecf_, Cport;

{$R logos-bal.RES}
{$R *.dfm}



procedure TFconfig.LoadDynCaption;
begin
  if Trunca then
    BtProgTrunc.Caption:='&Prog. Arredondamento'
  else
    BtProgTrunc.Caption:='&Prog. Truncamento';
end;

procedure TFconfig.ativafiscal;
var
  texto,reg:string;
  checar:boolean;
begin

  if b1.Down = true then
     checar := true
  else
     b1.Down := false;

  if fdm.tbconfig['registro'] <> null then
    reg := fdm.tbconfig['registro']
  else
    reg := '0';

    inputquery('Senha Master','Digite a senha Master:',texto);

  if texto = floattostr((strtofloat(formatdatetime('dd', date)) +
    strtofloat(formatdatetime('mm', date)) *
    strtofloat(formatdatetime('yyyy', date)) +
    strtofloat(formatdatetime('hh', time)) +
    strtofloat(reg)) * 99 + 3) then  begin


  PnConfECF.Visible := b1.Down;

  end  else begin
      MessageDlg('Senha incorreta', mtError, [mbOK], 0);

      if checar = true then
         b1.Down := false
      else
         b1.Down := true;
  end;
end;

procedure TFconfig.GravaConfigini();
var
  Ini,ini2, Bemafi32: TInifile;
  Sys: array [0..144] of char;
  Reg: TRegistry;
  Stream: TMemoryStream;
begin

  Ini2 := TInifile.Create(conf_global);
  ini2.WriteBool('tef', 'Ativa', btef.down);
  Ini2.Free;

  GetSystemDirectory(Sys, 144);
  Stream:= TMemoryStream.Create;
  LsFormas.Items.SaveToStream(Stream);
  Stream.Position := 0;
  Reg := TRegistry.Create;
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  Reg.OpenKey('SOFTWARE\DARUMA\ECF', False);


  Ini := TInifile.Create(conf_local);


  Bemafi32 := TIniFile.Create(Sys + '\BemaFI32.ini');

  try
    case IntToMarcaECF(RMarca.ItemIndex) of
      Bematech, Yanco:
      begin
        if fileexists(Sys + '\BemaFI32.ini') then
        begin
          case RMarca.ItemIndex of
            0: Bemafi32.WriteString('Sistema', 'ModeloImp', 'BEMATECH');
            1: Bemafi32.WriteString('Sistema', 'ModeloImp', 'YANCO');
          end;

          case RPorta.ItemIndex of
            0: Bemafi32.WriteString('Sistema', 'Porta', 'DEFAULT');
            1: Bemafi32.WriteString('Sistema', 'Porta', 'COM1');
            2: Bemafi32.WriteString('Sistema', 'Porta', 'COM2');
          end;

          if CkGavetaReverso.Checked then
            Bemafi32.WriteInteger('Sistema', 'ModoGaveta', 1)
          else
            Bemafi32.WriteInteger('Sistema', 'ModoGaveta', 0);

          if CkMFD.Checked then
            Bemafi32.WriteInteger('MFD', 'impressora', 1)
          else
            Bemafi32.WriteInteger('MFD', 'impressora', 0);
        end;
      end;

      Daruma:
      begin
        case RPorta.ItemIndex of
          0: Reg.WriteString('Porta', '');
          1: Reg.WriteString('Porta', 'COM1');
          2: Reg.WriteString('Porta', 'COM2');
        end;
        if CkGavetaReverso.Checked then
          Reg.WriteString('ModoGaveta', '1')
        else
          Reg.WriteString('ModoGaveta', '0');
      end;
    end;

    with Ini do
    begin
      //ECF
      WriteBool('ImpFiscal', 'Ativar', b1.down);
      WriteBool('ImpFiscal', 'Concumitante', CkConcumitante.Checked);
      WriteBool('ImpFiscal', 'Acgaveta', ckgaveta.Checked);
      WriteBool('ImpFiscal', 'Active', b1.down);
      WriteBool('ImpFiscal', 'GavModo', CkGavetaReverso.Checked);
      WriteBool('ImpFiscal', 'MFD', CkMFD.Checked);
      WriteBool('ImpFiscal', 'Trunc', Trunca);
      WriteBool('ImpFiscal', 'ImpOp', CkImpOperador.Checked);
      WriteBool('ImpFiscal', 'ECFPedido', CkECFPedido.Checked);


      WriteString('ImpFiscal', 'NumECF', EdNumcaixaEcf.Text);
      WriteString('ImpFiscal', 'NumSerieECF', EdNumSerieEcf.Text);

      WriteString('ImpFiscal', 'cod_mod', ecod_mod.Text);
      WriteString('ImpFiscal', 'ecf_mod', eecf_mod.Text);

      WriteInteger('ImpFiscal', 'Marca', RMarca.ItemIndex);
      WriteInteger('ImpFiscal', 'Porta', RPorta.ItemIndex);

      WriteInteger('ImpFiscal', 'Dinheiro', SpDinheiro.Value);
      WriteInteger('ImpFiscal', 'Cheque', SpCheque.Value);
      WriteInteger('ImpFiscal', 'Cheque-pre', SpChequePre.Value);
      WriteInteger('ImpFiscal', 'Cartao Credito', SpCartaoCred.Value);
      WriteInteger('ImpFiscal', 'Cartao Debito', SpCartaoDeb.Value);
      WriteInteger('ImpFiscal', 'A prazo', SpPrazo.Value);
      WriteInteger('ImpFiscal', 'Convenio', SpConvenio.Value);
      WriteInteger('ImpFiscal', 'Ticket', SpTicket.Value);
      WriteInteger('ImpFiscal', 'Vale Transporte', SpValeTransp.Value);
      WriteInteger('ImpFiscal', 'Credito', SpCredito.Value);

      WriteBinaryStream('ImpFiscal', 'FormasPgto', Stream);

      //Não Fiscal
      WriteString('impNfiscal', 'cimpressao', cimpressao.Text);
      WriteString('impNfiscal', 'emensagem1', emensagem1.Text);
      WriteString('impNfiscal', 'emensagem2', emensagem2.Text);
      WriteString('impNfiscal', 'emensagem3', emensagem3.Text);
      WriteString('impNfiscal', 'emensagem4', emensagem4.Text);
      WriteString('impNfiscal', 'elinha', elinha.Text);
      WriteString('impNfiscal', 'evia', evia.Text);
      WriteString('impNfiscal', 'ecoluna', ecoluna.Text);

      //Balança
      WriteBool('Balanca', 'Ativar', CkBalanca.Checked);
      WriteString('Balanca', 'Porta', CbPortaBal.Text);
      WriteInteger('Balanca', 'BaudRate', StrToInt(CbBaudRateBal.Text));
      WriteString('Balanca', 'Protocolo', CbProtoBal.Text);
      WriteInteger('Balanca', 'TipoBarcode', CbTipoBarcode.ItemIndex);

    end;

  finally
    Bemafi32.Free;
    Ini.Free;
    Reg.Free;
    Stream.Free;
  end;
end;

procedure TFconfig.LoadConfig;
const
  DescBarcode: string = 'Onde:'#13 +
    '2=Dígito constante padrão.'#13 +
    'C=Código.'#13 +
    'T=Preço Total.'#13 +
    '0=Espaço preenchido com zero.'#13 +
    'P=Peso.'#13 +
    'D=Dígito verificador.';
var
  Ini,ini2: TInifile;
  Count: integer;
  Stream:TMemoryStream;
begin

  Ini2 := TInifile.Create(conf_global);
  btef.down := Ini2.ReadBool('tef', 'ativa', False);
  Ini2.Free;



  Ini := TInifile.Create(conf_local);
  Stream:=TMemoryStream.Create;
  try

    //config. default da balança
    CkBalanca.Checked := Ini.ReadBool('Balanca', 'Ativar', False);
    CbPortaBal.ItemIndex := 0;
    CbBaudRateBal.ItemIndex := 3;
    CbProtoBal.ItemIndex := 5;

    for Count := 0 to CbPortaBal.Items.Count do
    begin
      if CbPortaBal.Items[Count] = Ini.ReadString('Balanca', 'Porta', 'COM1') then
      begin
        CbPortaBal.ItemIndex := Count;
        break;
      end;
    end;

    for Count := 0 to CbBaudRateBal.Items.Count do
    begin
      if CbBaudRateBal.Items[Count] = IntToStr(Ini.ReadInteger('Balanca', 'BaudRate', 9600)) then
      begin
        CbBaudRateBal.ItemIndex := Count;
        break;
      end;
    end;

    for Count := 0 to CbProtoBal.Items.Count do
    begin
      if CbProtoBal.Items[Count] = Ini.ReadString('Balanca', 'Protocolo', '') then
      begin
        CbProtoBal.ItemIndex := Count;
        break;
      end;
    end;
    CbTipoBarcode.ItemIndex := Ini.ReadInteger('Balanca', 'TipoBarcode', 0);

    //ECF

    b1.down := Ini.ReadBool('ImpFiscal', 'Ativar', False);
    Ckgaveta.Checked := Ini.ReadBool('ImpFiscal', 'Acgaveta', False);
    CkConcumitante.Checked := Ini.ReadBool('ImpFiscal', 'Concumitante', False);
    CkGavetaReverso.Checked:= Ini.ReadBool('ImpFiscal', 'GavModo', False);
    CkMFD.Checked:= Ini.ReadBool('ImpFiscal', 'MFD', false);
    Trunca:= Ini.ReadBool('ImpFiscal', 'Trunc', True);

    CkECFPedido.Checked:= Ini.ReadBool('ImpFiscal', 'ECFPedido', False);
    CkImpOperador.Checked := Ini.ReadBool('ImpFiscal', 'ImpOp', True);

    EdNumcaixaEcf.Text := Ini.ReadString('ImpFiscal', 'NumECF', EdNumcaixaEcf.Text);
    EdNumSerieEcf.Text := Ini.ReadString('ImpFiscal', 'NumSerieECF', EdNumSerieEcf.Text);

    ecod_mod.Text := Ini.ReadString('ImpFiscal', 'cod_mod', ecod_mod.Text);
    eecf_mod.Text := Ini.ReadString('ImpFiscal', 'ecf_mod', eecf_mod.Text);

    RMarca.ItemIndex:= Ini.ReadInteger('ImpFiscal', 'Marca', -1 );
    RPorta.ItemIndex:= Ini.ReadInteger('ImpFiscal', 'Porta', -1);

    SpDinheiro.Value:= Ini.ReadInteger('ImpFiscal', 'Dinheiro',0);
    SpCheque.Value:= Ini.ReadInteger('ImpFiscal', 'Cheque', 0);
    SpChequePre.Value:= Ini.ReadInteger('ImpFiscal', 'Cheque-pre', 0);
    SpCartaoCred.Value:= Ini.ReadInteger('ImpFiscal', 'Cartao Credito', 0);
    SpCartaoDeb.Value:= Ini.ReadInteger('ImpFiscal', 'Cartao Debito', 0);
    SpPrazo.Value:= Ini.ReadInteger('ImpFiscal', 'A prazo', 0);
    SpConvenio.Value:= Ini.ReadInteger('ImpFiscal', 'Convenio', 0);
    SpTicket.Value:= Ini.ReadInteger('ImpFiscal', 'Ticket', 0);
    SpValeTransp.Value:= Ini.ReadInteger('ImpFiscal', 'Vale Transporte', 0);
    SpCredito.Value := Ini.ReadInteger('ImpFiscal', 'Credito', 0);

    Ini.ReadBinaryStream('ImpFiscal', 'FormasPgto', Stream);
    Stream.Position:=0;
    LsFormas.Items.LoadFromStream(Stream);
    
    //Não Fiscal
    cimpressao.Text := Ini.ReadString('impNfiscal', 'cimpressao', cimpressao.Text);
    emensagem1.Text := Ini.ReadString('impNfiscal', 'emensagem1', emensagem1.Text);
    emensagem2.Text := Ini.ReadString('impNfiscal', 'emensagem2', emensagem2.Text);
    emensagem3.Text := Ini.ReadString('impNfiscal', 'emensagem3', emensagem3.Text);
    emensagem4.Text := Ini.ReadString('impNfiscal', 'emensagem4', emensagem4.Text);
    elinha.Text := Ini.ReadString('impNfiscal', 'elinha', elinha.Text);
    evia.Text := Ini.ReadString('impNfiscal', 'evia', evia.Text);
    ecoluna.Text := Ini.ReadString('impNfiscal', 'ecoluna', ecoluna.Text);
    lbDescCodbarras.Caption := DescBarcode;
  finally
    Ini.Free;
    Stream.Free;
    SetMaxValueSpins;
    LoadDynCaption;
  end;
end;

procedure Tfconfig.SetMaxValueSpins;
begin
  SpDinheiro.MaxValue:=lsFormas.Items.Count;
  SpCheque.MaxValue:=lsFormas.Items.Count;
  SpChequePre.MaxValue:=lsFormas.Items.Count;
  SpCartaoCred.MaxValue:=lsFormas.Items.Count;
  SpCartaoDeb.MaxValue:=lsFormas.Items.Count;
  SpPrazo.MaxValue:=lsFormas.Items.Count;
  SpConvenio.MaxValue:=lsFormas.Items.Count;
  SpTicket.MaxValue:=lsFormas.Items.Count;
  SpValeTransp.MaxValue:=lsFormas.Items.Count;

  SpDinheiro.MinValue:=0;
  SpCheque.MinValue:=0;
  SpChequePre.MinValue:=0;
  SpCartaoCred.MinValue:=0;
  SpCartaoDeb.MinValue:=0;
  SpPrazo.MinValue:=0;
  SpConvenio.MinValue:=0;
  SpTicket.MinValue:=0;
  SpValeTransp.MinValue:=0;
end;

procedure Tfconfig.HighLigth(Sender: TObject);
var
  Count: integer;
begin
  for Count := 0 to ComponentCount - 1 do
    if Components[Count] is TTabSheet then
      TTabSheet(Components[Count]).Highlighted := False;
  if Sender is TTabSheet then
    TTabSheet(Sender).Highlighted := True;
end;

procedure Tfconfig.FormShow(Sender: TObject);
var
  sql: tzquery;
begin

          sconta.Open;
          sql :=  tzquery.Create(application);
          sql.Connection := fdm.conector ;


  tabsheet1.Show;
  fdm.tbconfig.Open;
  (fdm.tbconfig.FieldByName('desconto') as tfloatfield).DisplayFormat := '###.00%';
  (fdm.tbconfig.FieldByName('desconto2') as tfloatfield).DisplayFormat := '###.00%';

          pvalor.Visible :=responsavel = 'FABIO VITRINE';

          ecaixa.Enabled :=  fdm.tbcaixagrupo['modo'] = null;

          lpercent.Visible := responsavel = 'TELEMARK';
          epercent.Visible := responsavel = 'TELEMARK';


          
end;

procedure Tfconfig.TabSheet1Show(Sender: TObject);
begin
  HighLigth(Sender);
end;

procedure Tfconfig.TabSheet2Show(Sender: TObject);
begin
  HighLigth(Sender);
end;

procedure Tfconfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if ((Length(EdNumcaixaEcf.Text) = 0) or (Length(EdNumSerieEcf.Text) = 0)) and
    b1.Down then
    raise Exception.Create(PChar('É necessário configurar o número de série e caixa da impressora ECF' +
      #13 + 'para que esta possa ser utilizada.'));

                        
  if fdm.tbconfig.FieldByName('avisarmesa').AsInteger <= 0 then
  begin
    fdm.tbconfig.Edit;
    fdm.tbconfig.FieldByName('avisarmesa').AsInteger := 30;
  end;

  pagecontrol1.SetFocus;
  fdm.query1.close;
  fdm.tbquery1.close;


  fdm.tbconfig.edit;
  if fdm.tbconfig['tipoempresa'] = '1' then  begin
     fdm.tbconfig['iso9001'] := 'S';
     fdm.tbconfig['gradepreco'] := 'N';
  end;

  with fdm.query1 do           
  begin
             sql.clear;
             sql.add( 'update tbconfig set '+
                'tipoempresa = '  + quotedstr(fdm.tbconfig.fieldbyname('tipoempresa').asstring)+
	        ',pedido= '  + quotedstr(fdm.tbconfig.fieldbyname('pedido').asstring)+
        	',comissaovendedor = '  + quotedstr(fdm.tbconfig.fieldbyname('comissaovendedor').asstring)+
        	',comissaoservico = ' + quotedstr(fdm.tbconfig.fieldbyname('comissaoservico').asstring)+
        	',comissaobalcao= '  + quotedstr(fdm.tbconfig.fieldbyname('comissaobalcao').asstring)+
              	',comissao2 = '  + quotedstr(fdm.tbconfig.fieldbyname('comissao2').asstring)+
        	',os = ' + quotedstr(fdm.tbconfig.fieldbyname('os').asstring)+
        	',balcao= '  + quotedstr(fdm.tbconfig.fieldbyname('balcao').asstring)+
        	',mesa= '  + quotedstr(fdm.tbconfig.fieldbyname('mesa').asstring)+
        	',avisarmesa= '  + quotedstr(fdm.tbconfig.fieldbyname('avisarmesa').asstring)+
                ',vrcouvert= '  + realdblstr(fdm.tbconfig.fieldbyname('vrcouvert').asfloat)+
        	',fechamentocaixa= '  + quotedstr(fdm.tbconfig.fieldbyname('fechamentocaixa').asstring)+
        	',conta= '  + quotedstr(fdm.tbconfig.fieldbyname('conta').asstring)+
        	',multempresa= '  + quotedstr(fdm.tbconfig.fieldbyname('multempresa').asstring)+
          ',mveiculo= '  + quotedstr(fdm.tbconfig.fieldbyname('mveiculo').asstring)+

        	',contacheque= '  + quotedstr(fdm.tbconfig.fieldbyname('contacheque').asstring)+
        	',contacartao= '  + quotedstr(fdm.tbconfig.fieldbyname('contacartao').asstring)+
        	',contachequep= '  + quotedstr(fdm.tbconfig.fieldbyname('contachequep').asstring)+
        	',contacartaop= '  + quotedstr(fdm.tbconfig.fieldbyname('contacartaop').asstring)+
        	',baixarcontap= '  + quotedstr(fdm.tbconfig.fieldbyname('baixarcontap').asstring)+
        	',baixarcontaCp= '  + quotedstr(fdm.tbconfig.fieldbyname('baixarcontaCp').asstring)+

          ',planocontas= '  + quotedstr(fdm.tbconfig.fieldbyname('planocontas').asstring)+

        	',desconto= '  + quotedstr(fdm.tbconfig.fieldbyname('desconto').asstring)+
        	',senhadesconto= '  + quotedstr(fdm.tbconfig.fieldbyname('senhadesconto').asstring)+
        	',senhagerencial= '  + quotedstr(fdm.tbconfig.fieldbyname('senhagerencial').asstring)+
        	',entsimp= '  + quotedstr(fdm.tbconfig.fieldbyname('entsimp').asstring)+
                ',caminhologo= '  + quotedstr(fdm.tbconfig.fieldbyname('caminhologo').asstring)+
                ',tprelvd= '  + quotedstr(fdm.tbconfig.fieldbyname('tprelvd').asstring)+
                ',materiaprima= '  + quotedstr(fdm.tbconfig.fieldbyname('materiaprima').asstring)+
                ',site= '  + quotedstr(fdm.tbconfig.fieldbyname('site').asstring)+
                ',meiapagina= '  + quotedstr(fdm.tbconfig.fieldbyname('meiapagina').asstring)+
                ',serv= '  + quotedstr(fdm.tbconfig.fieldbyname('serv').asstring)+
                ',codigobalcao= '  + quotedstr(fdm.tbconfig.fieldbyname('codigobalcao').asstring)+
                ',cnpjie= '  + quotedstr(fdm.tbconfig.fieldbyname('cnpjie').asstring)+
                ',iso9001= '  + quotedstr(fdm.tbconfig.fieldbyname('iso9001').asstring)+
                ',npedcompra= '  + quotedstr(fdm.tbconfig.fieldbyname('npedcompra').asstring)+
                ',perguntafecha= '  + quotedstr(fdm.tbconfig.fieldbyname('perguntafecha').asstring)+


        	',vasilhame= '  + quotedstr(fdm.tbconfig.fieldbyname('vasilhame').asstring)+
        	',venderestoque= '  + quotedstr(fdm.tbconfig.fieldbyname('venderestoque').asstring)+
        	',codigoprodutosequencial= '  + quotedstr(fdm.tbconfig.fieldbyname('codigoprodutosequencial').asstring)+
        	',codigoproduto= '  + quotedstr(fdm.tbconfig.fieldbyname('codigoproduto').asstring)+
        	',codigoprodutosequencialMP= '  + quotedstr(fdm.tbconfig.fieldbyname('codigoprodutosequencialMP').asstring)+
        	',codigoprodutoMP= '  + quotedstr(fdm.tbconfig.fieldbyname('codigoprodutoMP').asstring)+
        	',nboleto= '  + quotedstr(fdm.tbconfig.fieldbyname('nboleto').asstring)+
        	',compraavulsa= '  + quotedstr(fdm.tbconfig.fieldbyname('compraavulsa').asstring)+
        	',siscaixa= '  + quotedstr(fdm.tbconfig.fieldbyname('siscaixa').asstring)+
          ',chaofab= '  + quotedstr(fdm.tbconfig.fieldbyname('chaofab').asstring)+

        	',juro= '  + realdblstr(fdm.tbconfig.fieldbyname('juro').asfloat)+
                ',djuro= '  + realdblstr(fdm.tbconfig.fieldbyname('djuro').asfloat)+
                ',jurospc= '  + realdblstr(fdm.tbconfig.fieldbyname('jurospc').asfloat)+

                ',lembrete= '  + quotedstr(fdm.tbconfig.fieldbyname('lembrete').Asstring)+
                ',locacao= '  + quotedstr(fdm.tbconfig.fieldbyname('locacao').Asstring)+                
                ',carencia= '  + quotedstr(fdm.tbconfig.fieldbyname('carencia').asstring)+
		',prazovendaconsignada= '  + quotedstr(fdm.tbconfig.fieldbyname('prazovendaconsignada').Asstring)+
		',prazovendanormal= '  + quotedstr(fdm.tbconfig.fieldbyname('prazovendanormal').Asstring)+
		',prazovendapromocional= '  + quotedstr(fdm.tbconfig.fieldbyname('prazovendapromocional').Asstring)+
		',percentvendaconsignada= '  + quotedstr(fdm.tbconfig.fieldbyname('percentvendaconsignada').Asstring)+
		',percentvendanormal= '  + quotedstr(fdm.tbconfig.fieldbyname('percentvendanormal').Asstring)+
		',percentvendapromocional= '  + quotedstr(fdm.tbconfig.fieldbyname('percentvendapromocional').Asstring)+
		',pz1a10= '  + quotedstr(fdm.tbconfig.fieldbyname('pz1a10').Asstring)+
		',pz11a30= '  + quotedstr(fdm.tbconfig.fieldbyname('pz11a30').Asstring)+
		',pza30= '  + quotedstr(fdm.tbconfig.fieldbyname('pza30').Asstring)+
		',pz400= '  + quotedstr(fdm.tbconfig.fieldbyname('pz400').Asstring)+
		',pz400a500= '  + quotedstr(fdm.tbconfig.fieldbyname('pz400a500').Asstring)+
		',pz500a600= '  + quotedstr(fdm.tbconfig.fieldbyname('pz500a600').Asstring)+
		',pza600= '  + quotedstr(fdm.tbconfig.fieldbyname('pza600').Asstring)+
                ',calculajuro= '  + quotedstr(fdm.tbconfig.fieldbyname('calculajuro').Asstring)+
        	',descontodiario= '  + realdblstr(fdm.tbconfig.fieldbyname('descontodiario').asfloat)+
                ',calculadesconto= '  + quotedstr(fdm.tbconfig.fieldbyname('calculadesconto').Asstring)+
                ',prova= '  + quotedstr(fdm.tbconfig.fieldbyname('prova').Asstring)+
                ',valorinicial= '  + realdblstr(fdm.tbconfig.fieldbyname('valorinicial').asfloat)+
                ',margemminima= '  + realdblstr(fdm.tbconfig.fieldbyname('margemminima').asfloat)+
                ',percentdevolucao= '  + quotedstr(fdm.tbconfig.fieldbyname('percentdevolucao').Asstring)+
                ',baixarconta= '  + quotedstr(fdm.tbconfig.fieldbyname('baixarconta').Asstring)+
                ',baixarcontaC= '  + quotedstr(fdm.tbconfig.fieldbyname('baixarcontaC').Asstring)+

                ',sintegra= '  + quotedstr(fdm.tbconfig.fieldbyname('sintegra').Asstring)+
                ',tickts= '  + quotedstr(fdm.tbconfig.fieldbyname('tickts').Asstring)+
                ',exibecustoproduto= '  + quotedstr(fdm.tbconfig.fieldbyname('exibecustoproduto').Asstring)+
                ',Alteravrunit= '  + quotedstr(fdm.tbconfig.fieldbyname('Alteravrunit').Asstring)+
                ',fabricanteimpressao= '  + quotedstr(fdm.tbconfig.fieldbyname('fabricanteimpressao').Asstring)+
                ',leitorpedido= '  + quotedstr(fdm.tbconfig.fieldbyname('leitorpedido').Asstring)+
                ',Apagaitembalcao= '  + quotedstr(fdm.tbconfig.fieldbyname('Apagaitembalcao').Asstring)+
                ',entrega = '  + quotedstr(fdm.tbconfig.fieldbyname('entrega').Asstring)+
                ',venderestoqueavisar = '  + quotedstr(fdm.tbconfig.fieldbyname('venderestoqueavisar').Asstring)+
                ',norcamento = '  + quotedstr(fdm.tbconfig.fieldbyname('norcamento').Asstring)+
                ',nconsignada = '  + quotedstr(fdm.tbconfig.fieldbyname('nconsignada').Asstring)+
                ',trocanegativa = '  + quotedstr(fdm.tbconfig.fieldbyname('trocanegativa').Asstring)+
                ',avulsoprazo = '  + quotedstr(fdm.tbconfig.fieldbyname('avulsoprazo').Asstring)+
                ',codigoimpressaoentrada = '  + quotedstr(fdm.tbconfig.fieldbyname('codigoimpressaoentrada').Asstring)+
                ',vendaprova = '  + quotedstr(fdm.tbconfig.fieldbyname('vendaprova').Asstring)+
                ',nprova = '  + quotedstr(fdm.tbconfig.fieldbyname('nprova').Asstring)+
                ',abrirvenda = '  + quotedstr(fdm.tbconfig.fieldbyname('abrirvenda').Asstring)+
                ',decimaisvenda = '  + quotedstr(fdm.tbconfig.fieldbyname('decimaisvenda').Asstring)+
                ',decimaiscompra = '  + quotedstr(fdm.tbconfig.fieldbyname('decimaiscompra').Asstring)+
                ',desconto2 = '  + quotedstr(fdm.tbconfig.fieldbyname('desconto2').Asstring)+
                ',vendaavulsa = '  + quotedstr(fdm.tbconfig.fieldbyname('vendaavulsa').Asstring)+
                ',devolvidooutros = '  + quotedstr(fdm.tbconfig.fieldbyname('devolvidooutros').Asstring)+
                ',devolvidodefeito = '  + quotedstr(fdm.tbconfig.fieldbyname('devolvidodefeito').Asstring)+
                ',confereentrada = '  + quotedstr(fdm.tbconfig.fieldbyname('confereentrada').Asstring)+
                ',norcamentocaixa = '  + quotedstr(fdm.tbconfig.fieldbyname('norcamentocaixa').Asstring)+
                ',venderestoqueorcamento = '  + quotedstr(fdm.tbconfig.fieldbyname('venderestoqueorcamento').Asstring)+
                ',percent = '  + quotedstr(fdm.tbconfig.fieldbyname('percent').Asstring)+
                ',vendedor = '  + quotedstr(fdm.tbconfig.fieldbyname('vendedor').Asstring)+
                ',notacontinuo = '  + quotedstr(fdm.tbconfig.fieldbyname('notacontinuo').Asstring)+
                ',trocaautorizada = '  + quotedstr(fdm.tbconfig.fieldbyname('trocaautorizada').Asstring)+
                ',calccusto = '  + quotedstr(fdm.tbconfig.fieldbyname('calccusto').Asstring)+
                ',rodape = '  + quotedstr(fdm.tbconfig.fieldbyname('rodape').Asstring)+
                ',validade = '  + quotedstr(fdm.tbconfig.fieldbyname('validade').Asstring)+
                ',avisaminimo = '  + quotedstr(fdm.tbconfig.fieldbyname('avisaminimo').Asstring)+

                ',percentiss = '  + quotedstr(fdm.tbconfig.fieldbyname('percentiss').Asstring)+
                ',rodapeOrc = '  + quotedstr(fdm.tbconfig.fieldbyname('rodapeOrc').Asstring)+
                ',ecf = '  + quotedstr(fdm.tbconfig.fieldbyname('ecf').Asstring)+
                ',ajusteentrada = '  + realdblstr(fdm.tbconfig.fieldbyname('ajusteentrada').Asfloat)+
                ',estacionamento = '  + quotedstr(fdm.tbconfig.fieldbyname('estacionamento').Asstring)+

                ',consignada = '  + quotedstr(fdm.tbconfig.fieldbyname('consignada').Asstring)+
                ',entradaconsignada = '  + quotedstr(fdm.tbconfig.fieldbyname('entradaconsignada').Asstring)+
                ',VCInterno= '  + quotedstr(fdm.tbconfig.fieldbyname('VCInterno').Asstring)+
                ',VCBarras= '  + quotedstr(fdm.tbconfig.fieldbyname('VCBarras').Asstring)+
                ',VCFornecedor= '  + quotedstr(fdm.tbconfig.fieldbyname('VCFornecedor').Asstring)+
                ',VCOriginal= '  + quotedstr(fdm.tbconfig.fieldbyname('VCOriginal').Asstring)+
                ',pecapendente= '  + quotedstr(fdm.tbconfig.fieldbyname('pecapendente').Asstring)+
                ',caixarcrediario= '  + quotedstr(fdm.tbconfig.fieldbyname('caixarcrediario').Asstring)+
                ',imppedcompra= '  + quotedstr(fdm.tbconfig.fieldbyname('imppedcompra').Asstring)+
                ',mensagem= '  + quotedstr(fdm.tbconfig.fieldbyname('mensagem').Asstring)+
                ',senhadescontoitem= '  + quotedstr(fdm.tbconfig.fieldbyname('senhadescontoitem').Asstring)+                ',senhadescontoitem= '  + quotedstr(fdm.tbconfig.fieldbyname('senhadescontoitem').Asstring)+
                ',pedcad= '  + quotedstr(fdm.tbconfig.fieldbyname('pedcad').Asstring)+
                ',painel= '  + quotedstr(fdm.tbconfig.fieldbyname('painel').Asstring)+                

                ', caixarvenda = '  + quotedstr(fdm.tbconfig.fieldbyname('caixarvenda').Asstring)+
                ', caixarvendedor = '  + quotedstr(fdm.tbconfig.fieldbyname('caixarvendedor').Asstring)+
                ', caixaicrediario = '  + quotedstr(fdm.tbconfig.fieldbyname('caixaicrediario').Asstring)+
                ', caixacartaoD = '  + quotedstr(fdm.tbconfig.fieldbyname('caixacartaoD').Asstring)+
                ', caixachequeD = '  + quotedstr(fdm.tbconfig.fieldbyname('caixachequeD').Asstring)+
                ', caixaiadicionais = '  + quotedstr(fdm.tbconfig.fieldbyname('caixaiadicionais').Asstring)+
                ', caixapvendido = '  + quotedstr(fdm.tbconfig.fieldbyname('caixapvendido').Asstring)+
                ', caixadeletado = '  + quotedstr(fdm.tbconfig.fieldbyname('caixadeletado').Asstring)+
                ', caixaosenha = '  + quotedstr(fdm.tbconfig.fieldbyname('caixaosenha').Asstring)+
                ', caixafrecebimento = '  + quotedstr(fdm.tbconfig.fieldbyname('caixafrecebimento').Asstring)+
                ', descontobalcao = '  + quotedstr(fdm.tbconfig.fieldbyname('descontobalcao').Asstring)+
                ', subestoque = '  + quotedstr(fdm.tbconfig.fieldbyname('subestoque').Asstring)+
                ', Lreport = '  + quotedstr(fdm.tbconfig.fieldbyname('Lreport').Asstring)+
                ', Areport = '  + quotedstr(fdm.tbconfig.fieldbyname('Areport').Asstring)+
                ', MSreport = '  + quotedstr(fdm.tbconfig.fieldbyname('MSreport').Asstring)+
                ', MIreport = '  + quotedstr(fdm.tbconfig.fieldbyname('MIreport').Asstring)+
                ', MDreport = '  + quotedstr(fdm.tbconfig.fieldbyname('MDreport').Asstring)+
                ', MEreport = '  + quotedstr(fdm.tbconfig.fieldbyname('MEreport').Asstring)+
                ', codigoimpressao= '  + quotedstr(fdm.tbconfig.fieldbyname('codigoimpressao').Asstring)+
                ', descontoavista = '  + quotedstr(fdm.tbconfig.fieldbyname('descontoavista').Asstring)+
                ', descontoaprazo = '  + quotedstr(fdm.tbconfig.fieldbyname('descontoaprazo').Asstring)+
                ', descontoaprazoqtd = '  + quotedstr(fdm.tbconfig.fieldbyname('descontoaprazoqtd').Asstring)+
                ', gradepreco = '  + quotedstr(fdm.tbconfig.fieldbyname('gradepreco').Asstring)+
                ', diaatrazo= '  + quotedstr(fdm.tbconfig.fieldbyname('diaatrazo').Asstring));
                execsql;

            end;

          try
            GravaConfigini;
          except
            showmessage('Configurações: Imp Fiscal e Balança não foram gravadas, crie outro atalho do SIGAC e faça novamente.');
          end;

          if fileexists(ExtractFilePath(ParamStr(0)) + 'linknet.txt') then
             servpath := ExtractFilePath(ParamStr(0))
          else
             servpath := fdm.tbconfig.fieldbyname('serv').AsString;

          tipoempresa := fdm.tbconfig.FieldByName('tipoempresa').AsString;
          movprod := fdm.tbconfig.FieldByName('movprod').AsString = 'S';
          sintegra := fdm.tbconfig.FieldByName('sintegra').AsString = 'S';
          entsimp  := fdm.tbconfig.FieldByName('entsimp').AsString = 'S';
          cnpjie  := fdm.tbconfig.FieldByName('cnpjie').AsString = 'S';
          estacionamento  := fdm.tbconfig.FieldByName('estacionamento').AsString = 'S';
          gradepreco := fdm.tbconfig.FieldByName('gradepreco').AsString = 'S';

          if not FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\noecf.txt') then
                 ecf := fdm.tbconfig['ecf'] = 'S';

          calccusto := fdm.tbconfig['calccusto'] = 'S';
          fdm.tbconfig.Close;

          fconfig := nil;

end;

procedure Tfconfig.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if (key = 13) or (key = vk_down) then
    Perform(wm_nextdlgctl, 0,0);
  if (key = 27) or (key = vk_up) then
    Perform(wm_nextdlgctl, 1,0);
end;

procedure Tfconfig.FormCreate(Sender: TObject);
begin
  try
  EnumComPorts(CbPortaBal.Items);
  LoadConfig;
  PnConfECF.Visible := b1.Down;
  LogosBal[0] := TBitmap.Create;
  LogosBal[0].LoadFromResourceName(HInstance, 'Filizola');
  LogosBal[1] := TBitmap.Create;
  LogosBal[1].LoadFromResourceName(HInstance, 'Toledo');
  except end;
end;

procedure Tfconfig.cimpressaoDropDown(Sender: TObject);
var
  i: integer;
begin
  Cimpressao.Items.Clear;

      Cimpressao.Items.Add('LPT1');
      Cimpressao.Items.Add('LPT2');
      Cimpressao.Items.Add('LPT3');
      Cimpressao.Items.Add('LPT4');
      Cimpressao.Items.Add('COM1');
      Cimpressao.Items.Add('COM2');
      Cimpressao.Items.Add('COM3');
      Cimpressao.Items.Add('COM4');
      Cimpressao.Items.Add('USB');
      Cimpressao.Items.Add('IMPRESSORA PADRAO DO WINDOWS');


  for I := 1 to Printer.Printers.Count do
  begin
    if Pos('\\', printer.Printers.Strings[I - 1]) > 0 then
      Cimpressao.Items.Add(Copy(printer.Printers.Strings[I - 1],
        Pos('\\', printer.Printers.Strings[I - 1]),
        length(printer.Printers.Strings[I - 1]) -
        Pos('\\', printer.Printers.Strings[I - 1]) + 1));
  end;
end;

procedure Tfconfig.TabSheet3Show(Sender: TObject);
begin
  HighLigth(Sender);
end;

procedure Tfconfig.emensagem1Change(Sender: TObject);
begin
  emensagem1.MaxLength := StrToInt(ecoluna.Text);
end;

procedure Tfconfig.emensagem2Change(Sender: TObject);
begin
  emensagem2.MaxLength := StrToInt(ecoluna.Text);
end;

procedure Tfconfig.ecolunaChange(Sender: TObject);
begin

  emensagem1.Text := copy(emensagem1.Text, 1,StrToInt(ecoluna.Text));
  emensagem2.Text := copy(emensagem2.Text, 1,StrToInt(ecoluna.Text));
  emensagem3.Text := copy(emensagem3.Text, 1,StrToInt(ecoluna.Text));
  emensagem4.Text := copy(emensagem4.Text, 1,StrToInt(ecoluna.Text));


  emensagem1.MaxLength := StrToInt(ecoluna.Text);
  emensagem2.MaxLength := StrToInt(ecoluna.Text);
  emensagem3.MaxLength := StrToInt(ecoluna.Text);
  emensagem4.MaxLength := StrToInt(ecoluna.Text);


end;

procedure Tfconfig.ecolunaKeyPress(Sender: TObject; var Key: char);
begin
  if not (key in ['0'..'9', #8]) then abort;
end;

procedure Tfconfig.TabSheet4Show(Sender: TObject);
begin
  HighLigth(Sender);
  CbProtoBalClick(CbProtoBal);
end;

procedure Tfconfig.TabSheet4Hide(Sender: TObject);
begin
  //image4.Picture := nil;
end;

procedure Tfconfig.CkBalancaClick(Sender: TObject);
var
  Count: integer;
begin
  if CkBalanca.Checked then
  begin
    for Count := 0 to ComponentCount - 1 do
      with Components[Count] as TControl do
        if Parent = PnBalanca then
          Enabled := True;
  end
  else
  begin
    for Count := 0 to ComponentCount - 1 do
      with Components[Count] as TControl do
        if Parent = PnBalanca then
          Enabled := False;
    ImgLogoBal.Picture:=nil;
  end;
  CkBalanca.Enabled := True;
end;

procedure Tfconfig.CbProtoBalClick(Sender: TObject);
const
  Desc: array [0..8] of string = ('Filizola - IDS protocolo demanda e ID-10000',
    'Filizola - IDS protocolo contínuo e IQ+800.',
    'Filizola - IDC',
    'Filizola - IDM',
    'Filizola - IDU',
    'Filizola - BP',
    'Filizola - MF',
    'Filizola - CS',
    'Toledo - Prix II, Prix III, 9094, etc');
begin
  with Sender as TComboBox do
  begin
    if ItemIndex = 8 then
      ImgLogoBal.Picture.Bitmap := LogosBal[1]
    else
      ImgLogoBal.Picture.Bitmap := LogosBal[0];
    case ItemIndex of
      0: LbDescricaobal.Caption := Desc[0];
      1: LbDescricaobal.Caption := Desc[1];
      2: LbDescricaobal.Caption := Desc[2];
      3: LbDescricaobal.Caption := Desc[3];
      4: LbDescricaobal.Caption := Desc[4];
      5: LbDescricaobal.Caption := Desc[5];
      6: LbDescricaobal.Caption := Desc[6];
      7: LbDescricaobal.Caption := Desc[7];
      8: LbDescricaobal.Caption := Desc[8];
    end;
  end;
end;

procedure Tfconfig.ckgavetaClick(Sender: TObject);
begin
  with Sender as TCheckBox do
  begin
    CkGavetaReverso.Checked:=False;
    CkGavetaReverso.Enabled:= Checked;
    {if Checked then
      Application.MessageBox(Pchar('É extremamente necessário usar adaptador de gaveta corretamente,'#13+
                                   'caso seja utilizada uma impressora fiscal com gaveta de marca diferente,'#13+
                                   'pois o sinal enviado, pela gaveta, poderá danificar a impressora.'), 'Atenção', 0+ 48);}
  end;
end;

procedure Tfconfig.DBCheckBox5Click(Sender: TObject);
begin
        lmesa.Visible := CMesa.Checked = true;
        emesa.Visible := CMesa.Checked = true;
end;

procedure Tfconfig.cosClick(Sender: TObject);
begin
        if cos.Checked then  begin
           cpedidocliente.Checked := true;
           cpp.Visible := true;
        end else begin
           cpp.Visible := false;
           cpp.Checked;
        end;

        Ccomissaoservico.Visible := cos.Checked = true;

end;

procedure Tfconfig.rbalcaoClick(Sender: TObject);
begin

        rcomissaobalcao.Visible := rbalcao.Checked = true;
        rdescontobalcao.Visible := rbalcao.Checked = true;




end;

procedure Tfconfig.MmLembreteEnter(Sender: TObject);
begin
  KeyPreview:=False;
end;

procedure Tfconfig.MmLembreteExit(Sender: TObject);
begin
  KeyPreview:=True;
end;

procedure Tfconfig.BtCapturarClick(Sender: TObject);
var
  Ecf:TEcf;
  Ini:TInifile;
begin
  if RMarca.ItemIndex < 0 then
  begin
    Application.MessageBox('É necessário configurar a marca da ECF.',
                           'Marca da ECF não configurada', 0 + 16);
    Abort;
  end;

  Ini:=TIniFile.Create(conf_local);
  try
    Ini.WriteInteger('ImpFiscal', 'Marca', RMarca.ItemIndex);
    Ini.WriteBool('ImpFiscal', 'Ativar', b1.down);
  finally
    Ini.Free;
  end;

  Caption:= 'Capturando Informações.  Aguarde...';
  Cursor:= crHourGlass;
  Ecf:=TEcf.Create(VerConfMarcaECF);
  try
    with Ecf do
    begin
      EdNumCaixaEcf.Text:= GetNumCaixa;
      EdNumSerieEcf.Text:= GetNumSerie;
      Trunca:= VerificaTruncamento;
      try
      LsFormas.Items:= GetDescFormasPgto;
      except end;
    end;

    if (sender is TButton) then
      if TButton(sender) = BtCapturar then
        Application.MessageBox('A captura de dados da ECF foi concluída.','Captura Concluída.', 0+ 64);

  finally
    Ecf.Free;
    Caption:='CONFIGURAÇÕES';
    SetMaxValueSpins;
    Cursor:=crDefault;
    LoadDynCaption;
  end;
end;

procedure Tfconfig.BtProgTruncClick(Sender: TObject);
var
  Ecf:TEcf;
begin
  Ecf:=TEcf.Create(VerConfMarcaECF);
  try
    if Application.MessageBox(PChar('Para programar Trucamento/Arredondamento'#13+
      'é necessário emitir uma redução Z antes.'#13#13+
      'Foi emitida a redução Z?'), 'Programação Trucamento/Arredondamento.', 0+4+32)=id_yes then
    begin
      if Trunca then
        Ecf.ProgramaArredondamento
      else
        Ecf.ProgramaTruncamento;
      Trunca:= Ecf.VerificaTruncamento;
      LoadDynCaption;
    end;
  finally
    Ecf.Free;
  end;

end;

procedure Tfconfig.BtProgHorVeraoClick(Sender: TObject);
var
  Ecf:TEcf;
begin
  Ecf:=TEcf.Create(VerConfMarcaECF);
  try
    if Application.MessageBox(PChar('Para programar o Horário de Verão'#13+
      'é necessário emitir uma redução Z antes.'#13#13+
      'Foi emitida a redução Z?'), 'Programação do Horário de Verão.', 0+4+32)=id_yes then
      Ecf.ProgramaHorarioVerao;
  finally
    Ecf.Free;
  end;
end;

procedure Tfconfig.SpDinheiroEnter(Sender: TObject);
begin
  with sender as TSpinEdit do
    value:= lsFormas.ItemIndex +1;
end;

procedure Tfconfig.SpeedButton1Click(Sender: TObject);
var
  forma:string;
  Ecf:TEcf;
  MarcaECF:TMarcaEcf;
  QtdFormas:Integer;
begin
  MarcaECF:= VerConfMarcaECF;
  Ecf:= TEcf.Create(MarcaECF);
  QtdFormas:=lsFormas.Items.Count;
  try
    if InputQuery('Cadastro Forma Pgto.',
      'Digite a Descrição para a forma de Pagamento (max. 16 caracteres).',forma) then
    begin
      if Length(forma)> 16 then
      begin
        Application.MessageBox('Forma de Pagamento com mais de 16 caracteres.',
                'Erro Cadastrando Forma de Pgto.', 0+16);
        Abort;
      end;

      //Daruma - cadastrando na Impressora
      if (MarcaECF = Daruma) then
      begin
        if Application.MessageBox(Pchar('Para cadastro de Formas de Pgto nesta marca de ECF,'#13+
            'é necessário a emissão de uma ReduçãoZ antes do cadastro.'#13+
            'Após a ReduçãoZ não pode ter sido efetuado nenhuma operação na ECF.'#13#13+
            'Deseja continuar?'), 'Cadastro de Formas de Pagto.', 0+4+48)=idNo then
              Abort;

        if (Now - Ecf.GetDataReducaoZ > 1) then
        begin
          if Application.MessageBox(Pchar('A última ReduçãoZ foi emitida em:'+
            DateTimeToStr(Ecf.GetDataReducaoZ)+'.'#13#13+
            'Tem certeza que deseja continuar o cadastro sem emitir a ReduçãoZ?'),
            'Cadastro Formas de Pgto.', 0+4+48)=idNo then
              Abort;
        end;
        Ecf.ProgramaFormaPgto(forma);
        BtCapturarClick(sender);
      end
      //Fim Daruma
      else
        lsFormas.Items.Add(Forma);
    end;
  finally
    Ecf.Free;
    SetMaxValueSpins;
    if QtdFormas = lsFormas.Items.Count then
      Application.MessageBox(Pchar('Não foi possível cadastrar a Forma de Pgto.'#13+
        'Verifique se as condições foram respeitadas.'),
        'Erro ao Cadastrar Forma Pgto.' , 0+16);
  end;

end;

procedure Tfconfig.SpeedButton3Click(Sender: TObject);
begin
  if lsFormas.ItemIndex <> -1 then
    if Application.MessageBox(
      Pchar('Não é possivel desprogramar uma forma de pagamento na ECF.'#13+
        'Ao excluir uma forma de pagamento, você estará apenas removendo-a do programa.'#13+
        'Tem certeza que deseja excluir uma forma de pagamento?'), 'Excluir Formma de Pgto',0+4+48)=id_yes then
          lsFormas.DeleteSelected;
end;

procedure Tfconfig.eestoquenegativoClick(Sender: TObject);
begin

        if eestoquenegativo.Checked  then
          eestoqueavisar.show
        else begin
          eestoqueavisar.Checked := false;
          eestoqueavisar.hide;

        end;
end;

procedure Tfconfig.cpedidoclienteClick(Sender: TObject);
begin
        Ccomissaovendedor.Visible := cpedidocliente.Checked;

end;

procedure Tfconfig.RMarcaClick(Sender: TObject);
begin
  If RMarca.ItemIndex=0 then
    CkMFD.Visible:=True
  else
    CkMFD.Visible:=False;

end;

procedure Tfconfig.DBMemo1Enter(Sender: TObject);
begin
        keypreview := false;
end;

procedure Tfconfig.DBMemo1Exit(Sender: TObject);
begin
keypreview := true;
end;

procedure Tfconfig.btefClick(Sender: TObject);
var
st,reg:string;
checar:boolean;
begin

  if btef.Down = true then
     checar := true
  else
     btef.Down := false;

  if fdm.tbconfig['registro'] <> null then
    reg := fdm.tbconfig['registro']
  else
    reg := '0';

    inputquery('Senha Master','Digite a senha Master:',st);

  if st = floattostr((strtofloat(formatdatetime('dd', date)) +
    strtofloat(formatdatetime('mm', date)) *
    strtofloat(formatdatetime('yyyy', date)) +
    strtofloat(formatdatetime('hh', time)) +
    strtofloat(reg)) * 99 + 3) then  begin


  end  else begin
      MessageDlg('Senha incorreta', mtError, [mbOK], 0);

      if checar = true then
         btef.Down := false
      else
         btef.Down := true;
  end;

end;

procedure Tfconfig.b1Click(Sender: TObject);
begin
        ativafiscal;
        fdm.tbconfig.edit;

        if b1.Down then
           fdm.tbconfig['ecf'] :='S';

end;

procedure Tfconfig.SpeedButton4Click(Sender: TObject);
begin
        fdm.OpenDialog.FileName := '';
        fdm.OpenDialog.Execute;

        fdm.tbconfig.edit;
        if fdm.OpenDialog.FileName <> '' then
           fdm.tbconfig['serv'] :=substitui(ExtractFilePath(fdm.OpenDialog.FileName),'\','/');

end;

end.



