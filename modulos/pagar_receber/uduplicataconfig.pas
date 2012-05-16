unit uduplicataconfig;

interface
                          
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Spin, Inifiles,
   RLFilters, RLDraftFilter, DBCtrls, RLReport;

type
  Tfduplicataconfig = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
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
    TabSheet2: TTabSheet;
    Label4: TLabel;
    rvencimento: TRadioButton;
    rdata: TRadioButton;
    rdocumento: TRadioButton;
    rmora: TRadioButton;
    robs: TRadioButton;
    rinstrucao: TRadioButton;
    rnome: TRadioButton;
    rcnpj: TRadioButton;
    rie: TRadioButton;
    rendereco: TRadioButton;
    renderecocobranca: TRadioButton;
    Button3: TButton;
    Button4: TButton;
    ScrollBox1: TScrollBox;
    GroupBox3: TGroupBox;
    lph: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    lpv: TLabel;
    TkHor: TScrollBar;
    tkvert: TScrollBar;
    Button2: TButton;
    Button1: TButton;
    qduplicata: TRLReport;
    RLBand1: TRLBand;
    lvencimento: TRLDBText;
    lcnpj: TRLDBText;
    ldocumento: TRLDBText;
    ldata: TRLDBText;
    lvalor: TRLDBText;
    lnome: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText5: TRLDBText;
    lextenso: TRLLabel;
    RLDBText10: TRLDBText;
    qduplicataG: TRLReport;
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
    RLDBText31: TRLDBText;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SCabecalhoKeyPress(Sender: TObject; var Key: Char);
    procedure tkvertChange(Sender: TObject);
    procedure tkvertEnter(Sender: TObject);
    procedure TkHorEnter(Sender: TObject);
    procedure TkHorChange(Sender: TObject);
    procedure lextensoBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure qduplicataGBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fduplicataconfig: Tfduplicataconfig;

implementation
  uses udm,funcoes,  ureceberlocaliza;

{$R *.dfm}

procedure Tfduplicataconfig.FormCreate(Sender: TObject);
var
Ini:TInifile;
begin
{
  fdm.tbconfig.Open;

  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\conf.ini');

  //Configuração do Papel
  SAltura.Value:=Ini.ReadInteger('Config', 'Altura', 100);
  SLargura.Value:=Ini.ReadInteger('Config', 'Largura', 170);
  SMInferior.Value:=Ini.ReadInteger('Config', 'MInferior',  0);
  SMsuperior.Value:=Ini.ReadInteger('Config', 'MSuperior', 0);
  SMEsquerda.Value:=Ini.ReadInteger('Config', 'MEsquerda', 5);
  SMDireita.Value:=Ini.ReadInteger('Config', 'MDireita',  5);

  qboleto.PageSetup.PaperWidth:=SLargura.Value;
  qboleto.PageSetup.PaperHeight:=SAltura.Value;

  qboleto.Margins.BottomMargin:=SMInferior.Value;
  qboleto.Margins.TopMargin:=SMsuperior.Value;
  qboleto.Margins.LeftMargin:=SMEsquerda.Value;
  qboleto.Margins.RightMargin:=SMDireita.Value;

  TkHor.Max:=qboleto.Width;
  TkVert.Max:=qboleto.Height;

  //Posição Top

  lvencimento.top:=Ini.ReadInteger('lvencimento', 'top',lvencimento.top);
  ldata.top:=Ini.ReadInteger('ldata', 'top',ldata.top);
  ldocumento.top:=Ini.ReadInteger('ldocumento', 'top',ldocumento.top);
  lmora.top:=Ini.ReadInteger('lmora', 'top',lmora.top);
  lobs.top:=Ini.ReadInteger('lobs', 'top',lobs.top);
  linstrucao.top:=Ini.ReadInteger('linstrucao', 'top',linstrucao.top);
  lnome.top:=Ini.ReadInteger('lnome', 'top',lnome.top);
  lcnpj.top:=Ini.ReadInteger('lcnpj', 'top',lcnpj.top);
  lie.top:=Ini.ReadInteger('lie', 'top',lie.top);
  lendereco.top:=Ini.ReadInteger('lendereco', 'top',lendereco.top);
  lenderecocobranca.top:=Ini.ReadInteger('lenderecocobranca', 'top',lenderecocobranca.top);

  //Posição Left

  lvencimento.left:=Ini.ReadInteger('lvencimento', 'left',lvencimento.left);
  ldata.left:=Ini.ReadInteger('ldata', 'left',ldata.left);
  ldocumento.left:=Ini.ReadInteger('ldocumento', 'left',ldocumento.left);
  lmora.left:=Ini.ReadInteger('lmora', 'left',lmora.left);
  lobs.left:=Ini.ReadInteger('lobs', 'left',lobs.left);
  linstrucao.left:=Ini.ReadInteger('linstrucao', 'left',linstrucao.left);
  lnome.left:=Ini.ReadInteger('lnome', 'left',lnome.left);
  lcnpj.left:=Ini.ReadInteger('lcnpj', 'left',lcnpj.left);
  lie.left:=Ini.ReadInteger('lie', 'left',lie.left);
  lendereco.left:=Ini.ReadInteger('lendereco', 'left',lendereco.left);
  lenderecocobranca.left:=Ini.ReadInteger('lenderecocobranca', 'left',lenderecocobranca.left);
  Ini.Free;
}  
end;

procedure Tfduplicataconfig.Button1Click(Sender: TObject);
var
 Ini:TInifile;
begin

{  altera(fdm.tbconfig,'tbconfig');

  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\conf.ini');

  Ini.WriteInteger('Config', 'Altura', SAltura.Value);
  Ini.WriteInteger('Config', 'Largura', SLargura.Value);
  Ini.WriteInteger('Config', 'MInferior', SMInferior.Value);
  Ini.WriteInteger('Config', 'MSuperior', SMsuperior.Value);
  Ini.WriteInteger('Config', 'MEsquerda', SMEsquerda.Value);
  Ini.WriteInteger('Config', 'MDireita', SMDireita.Value);

  Ini.WriteInteger('lvencimento', 'top',lvencimento.top);
  Ini.WriteInteger('ldata', 'top',ldata.top);
  Ini.WriteInteger('ldocumento', 'top',ldocumento.top);
  Ini.WriteInteger('lmora', 'top',lmora.top);
  Ini.WriteInteger('lobs', 'top',lobs.top);
  Ini.WriteInteger('linstrucao', 'top',linstrucao.top);
  Ini.WriteInteger('lnome', 'top',lnome.top);
  Ini.WriteInteger('lcnpj', 'top',lcnpj.top);
  Ini.WriteInteger('lie', 'top',lie.top);
  Ini.WriteInteger('lendereco', 'top',lendereco.top);
  Ini.WriteInteger('lenderecocobranca', 'top',lenderecocobranca.top);

  Ini.WriteInteger('lvencimento', 'left',lvencimento.left);
  Ini.WriteInteger('ldata', 'left',ldata.left);
  Ini.WriteInteger('ldocumento', 'left',ldocumento.left);
  Ini.WriteInteger('lmora', 'left',lmora.left);
  Ini.WriteInteger('lobs', 'left',lobs.left);
  Ini.WriteInteger('linstrucao', 'left',linstrucao.left);
  Ini.WriteInteger('lnome', 'left',lnome.left);
  Ini.WriteInteger('lcnpj', 'left',lcnpj.left);
  Ini.WriteInteger('lie', 'left',lie.left);
  Ini.WriteInteger('lendereco', 'left',lendereco.left);
  Ini.WriteInteger('lenderecocobranca', 'left',lenderecocobranca.left);

  Ini.Free;

  FormCreate(Self);
}
end;

procedure Tfduplicataconfig.Button2Click(Sender: TObject);
begin
          Qduplicata.Preview;
end;

procedure Tfduplicataconfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//          Button1Click(self); 
end;

procedure Tfduplicataconfig.SCabecalhoKeyPress(Sender: TObject; var Key: Char);
begin
          if not (key in ['0'..'9', #8]) then abort;
end;

procedure Tfduplicataconfig.tkvertChange(Sender: TObject);
begin
{
  lpv.Caption := floattostr(Tkvert.position);

  if rvencimento.checked then lvencimento.top:=Tkvert.Position;
  if rdata.checked then Ldata.top:=Tkvert.Position;
  if rdocumento.checked then  ldocumento.top:=Tkvert.Position;
  if rmora.checked then Lmora.top:=Tkvert.Position;
  if robs.checked then Lobs.top:=Tkvert.Position;
  if rinstrucao.checked then Linstrucao.top:=Tkvert.Position;
  if rnome.checked then Lnome.top:=Tkvert.Position;
  if rcnpj.checked then Lcnpj.top:=Tkvert.Position;
  if rie.checked then Lie.top:=Tkvert.Position;
  if rendereco.checked then Lendereco.top:=Tkvert.Position;
  if renderecocobranca.checked then Lenderecocobranca.top:=Tkvert.Position;
    
 }
end;

procedure Tfduplicataconfig.tkvertEnter(Sender: TObject);
begin
          //i := tkvert.Position;
end;

procedure Tfduplicataconfig.TkHorEnter(Sender: TObject);
begin
//  i := barh.Position;
end;

procedure Tfduplicataconfig.TkHorChange(Sender: TObject);
begin
{
  lph.Caption := floattostr(TkHor.position);

  if rvencimento.checked then lvencimento.left:=TkHor.Position;
  if rdata.checked then Ldata.left:=TkHor.Position;
  if rdocumento.checked then  ldocumento.left:=TkHor.Position;
  if rmora.checked then Lmora.left:=TkHor.Position;
  if robs.checked then Lobs.left:=TkHor.Position;
  if rinstrucao.checked then Linstrucao.left:=TkHor.Position;
  if rnome.checked then Lnome.left:=TkHor.Position;
  if rcnpj.checked then Lcnpj.left:=TkHor.Position;
  if rie.checked then Lie.left:=TkHor.Position;
  if rendereco.checked then Lendereco.left:=TkHor.Position;
  if renderecocobranca.checked then Lenderecocobranca.left:=TkHor.Position;
}
end;

procedure Tfduplicataconfig.lextensoBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
        text :='*** '+extenso(freceberlocaliza.tabela.fieldbyname('vrdocumento').asfloat,'Real','Reais')+'***';
end;

procedure Tfduplicataconfig.qduplicataGBeforePrint(Sender: TObject;
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
            ljuro.Caption:= 'PERMANENCIA DE       % AO DIA. (' +
            formatfloat('####,##0.00',fdm.tbconfig.fieldbyname('juro').Asfloat *
            freceberlocaliza.tabela.fieldbyname('total').asfloat / 100) + ' R$)';
            fdm.tbconfig.close;

            lvrextenso.Caption := extenso(freceberlocaliza.tabela.fieldbyname('total').asfloat,'Real','Reais')+' ***********';
            lrodapeduplicata.Lines.Clear;
            lrodapeduplicata.Lines.Add('RECONHEÇO(EMOS) A EXATIDÃO DESTA DUPLICATA DE VENDA MERCANTIL, NA '+
                                       'IMPORTÂNCIA ACIMA QUE PAGAREI(EMOS) À '+ fdm.tbempresa.fieldbyname('nome').AsString+ ', OU A SUA '+
                                       'ORDEM NA PRAÇA E VENCIMENTO INDICADOS.');
          fdm.tbempresa.close;

end;

end.
