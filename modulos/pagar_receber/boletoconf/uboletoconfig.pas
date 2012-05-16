unit uboletoconfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Spin, Inifiles,
  RLReport, RLFilters, RLDraftFilter, DBCtrls, ActnList,
  Buttons;

type
  Tfboletoconfig = class(TForm)
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
    qboleto: TRLReport;
    banda: TRLBand;
    lvencimento: TRLDBText;
    lobs: TRLDBText;
    LEndereco: TRLDBText;
    lie: TRLDBText;
    lnome: TRLDBText;
    lcnpj: TRLDBText;
    ldocumento: TRLDBText;
    ldata: TRLDBText;
    lenderecocobranca: TRLDBText;
    lvalor: TRLDBText;
    Button2: TButton;
    Button1: TButton;
    Label8: TLabel;
    minstrucao: TMemo;
    ActionList2: TActionList;
    boleto1: TAction;
    boleto2: TAction;
    boleto3: TAction;
    boleto4: TAction;
    boleto5: TAction;
    boleto6: TAction;
    Gboleto1: TAction;
    Gboleto2: TAction;
    Gboleto3: TAction;
    GBoleto4: TAction;
    GBoleto5: TAction;
    Gboleto6: TAction;
    padrao: TAction;
    Bevel1: TBevel;
    lbanco: TLabel;
    SpeedButton1: TSpeedButton;
    rb6: TRadioButton;
    rb5: TRadioButton;
    rb4: TRadioButton;
    rb3: TRadioButton;
    rb2: TRadioButton;
    rb1: TRadioButton;
    Linstrucao: TRLMemo;
    rvalor: TRadioButton;
    einstrcao2: TEdit;
    Label9: TLabel;
    rinstrucao2: TRadioButton;
    Linstrucao2: TRLLabel;
    lmora: TRLLabel;
    lsacado: TRLDBText;
    rsacado: TRadioButton;
    Ldesconto: TRLDBText;
    ltotal: TRLDBText;
    rdesconto: TRadioButton;
    rtotal: TRadioButton;
    procedure rvencimentoClick(Sender: TObject);
    procedure rdocumentoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SCabecalhoKeyPress(Sender: TObject; var Key: Char);
    procedure tkvertChange(Sender: TObject);
    procedure tkvertEnter(Sender: TObject);
    procedure TkHorEnter(Sender: TObject);
    procedure TkHorChange(Sender: TObject);
    procedure rdataClick(Sender: TObject);
    procedure rmoraClick(Sender: TObject);
    procedure robsClick(Sender: TObject);
    procedure rinstrucaoClick(Sender: TObject);
    procedure rnomeClick(Sender: TObject);
    procedure rcnpjClick(Sender: TObject);
    procedure rieClick(Sender: TObject);
    procedure renderecoClick(Sender: TObject);
    procedure renderecocobrancaClick(Sender: TObject);
    procedure boleto1Execute(Sender: TObject);
    procedure boleto2Execute(Sender: TObject);
    procedure boleto3Execute(Sender: TObject);
    procedure boleto4Execute(Sender: TObject);
    procedure boleto5Execute(Sender: TObject);
    procedure boleto6Execute(Sender: TObject);
    procedure Gboleto1Execute(Sender: TObject);
    procedure Gboleto2Execute(Sender: TObject);
    procedure Gboleto3Execute(Sender: TObject);
    procedure GBoleto4Execute(Sender: TObject);
    procedure GBoleto5Execute(Sender: TObject);
    procedure Gboleto6Execute(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure rb3Click(Sender: TObject);
    procedure rb4Click(Sender: TObject);
    procedure rb5Click(Sender: TObject);
    procedure rb6Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure padraoExecute(Sender: TObject);
    procedure rvalorClick(Sender: TObject);
    procedure rinstrucao2Click(Sender: TObject);
    procedure bandaBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure qboletoBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure LEnderecoBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure rsacadoClick(Sender: TObject);
    procedure rdescontoClick(Sender: TObject);
    procedure rtotalClick(Sender: TObject);
    procedure lenderecocobrancaBeforePrint(Sender: TObject;
      var Text: String; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fboletoconfig: Tfboletoconfig;

implementation
  uses udm,funcoes, ureceberlocaliza;

{$R *.dfm}

procedure Tfboletoconfig.rvencimentoClick(Sender: TObject);
begin
  TkHor.Position:=lvencimento.Left;
  TkVert.Position:=lvencimento.Top;

end;

procedure Tfboletoconfig.rdocumentoClick(Sender: TObject);
begin
  TkHor.Position:=ldocumento.Left;
  TkVert.Position:=ldocumento.Top;
end;

procedure Tfboletoconfig.Button1Click(Sender: TObject);
begin

        if rb1.Checked = true then gboleto1execute(self);
        if rb2.Checked = true then gboleto2execute(self);
        if rb3.Checked = true then gboleto3execute(self);
        if rb4.Checked = true then gboleto4execute(self);
        if rb5.Checked = true then gboleto5execute(self);
        if rb6.Checked = true then gboleto6execute(self);

end;

procedure Tfboletoconfig.Button2Click(Sender: TObject);
begin
          fdm.tbconfig.Open;
          Qboleto.Previewmodal;
          fdm.tbconfig.close;

end;

procedure Tfboletoconfig.SCabecalhoKeyPress(Sender: TObject; var Key: Char);
begin
          if not (key in ['0'..'9', #8]) then abort;
end;

procedure Tfboletoconfig.tkvertChange(Sender: TObject);
begin

  lpv.Caption := floattostr(Tkvert.position);

  if rinstrucao2.checked then linstrucao2.top:=Tkvert.Position;
  if rdata.checked then Ldata.top:=Tkvert.Position;
  if rvencimento.checked then lvencimento.top:=Tkvert.Position;
  if rdocumento.checked then  ldocumento.top:=Tkvert.Position;
  if rvalor.checked then  lvalor.top:=Tkvert.Position;
  if rmora.checked then Lmora.top:=Tkvert.Position;
  if rdesconto.checked then ldesconto.top:=Tkvert.Position;
  if rtotal.checked then ltotal.top:=Tkvert.Position;

  if robs.checked then Lobs.top:=Tkvert.Position;
  if rinstrucao.checked then Linstrucao.top:=Tkvert.Position;
  if rnome.checked then Lnome.top:=Tkvert.Position;
  if rcnpj.checked then Lcnpj.top:=Tkvert.Position;
  if rie.checked then Lie.top:=Tkvert.Position;
  if rendereco.checked then Lendereco.top:=Tkvert.Position;
  if renderecocobranca.checked then Lenderecocobranca.top:=Tkvert.Position;
  if rsacado.checked then lsacado.top:=Tkvert.Position;


end;

procedure Tfboletoconfig.tkvertEnter(Sender: TObject);
begin
          //i := tkvert.Position;
end;

procedure Tfboletoconfig.TkHorEnter(Sender: TObject);
begin
//  i := barh.Position;
end;

procedure Tfboletoconfig.TkHorChange(Sender: TObject);
begin

  lph.Caption := floattostr(TkHor.position);

  if rinstrucao2.checked then linstrucao2.left:=TkHor.Position;
  if rdata.checked then Ldata.left:=TkHor.Position;
  if rvencimento.checked then lvencimento.left:=TkHor.Position;
  if rdocumento.checked then  ldocumento.left:=TkHor.Position;
  if rvalor.checked then  lvalor.left:=TkHor.Position;
  if rmora.checked then Lmora.left:=TkHor.Position;
  if rdesconto.checked then  ldesconto.left:=TkHor.Position;
  if rtotal.checked then ltotal.left:=TkHor.Position;

  if robs.checked then Lobs.left:=TkHor.Position;
  if rinstrucao.checked then Linstrucao.left:=TkHor.Position;
  if rnome.checked then Lnome.left:=TkHor.Position;
  if rcnpj.checked then Lcnpj.left:=TkHor.Position;
  if rie.checked then Lie.left:=TkHor.Position;
  if rendereco.checked then Lendereco.left:=TkHor.Position;
  if renderecocobranca.checked then Lenderecocobranca.left:=TkHor.Position;
  if rsacado.checked then lsacado.left:=TkHor.Position;

end;

procedure Tfboletoconfig.rdataClick(Sender: TObject);
begin
  TkHor.Position:=ldata.Left;
  TkVert.Position:=ldata.Top;
end;

procedure Tfboletoconfig.rmoraClick(Sender: TObject);
begin
  TkHor.Position:=lmora.Left;
  TkVert.Position:=lmora.Top;
end;

procedure Tfboletoconfig.robsClick(Sender: TObject);
begin
  TkHor.Position:=lobs.Left;
  TkVert.Position:=lobs.Top;
end;

procedure Tfboletoconfig.rinstrucaoClick(Sender: TObject);
begin
  TkHor.Position:=linstrucao.Left;
  TkVert.Position:=linstrucao.Top;
end;

procedure Tfboletoconfig.rnomeClick(Sender: TObject);
begin
  TkHor.Position:=lnome.Left;
  TkVert.Position:=lnome.Top;
end;

procedure Tfboletoconfig.rcnpjClick(Sender: TObject);
begin
  TkHor.Position:=lcnpj.Left;
  TkVert.Position:=lcnpj.Top;
end;

procedure Tfboletoconfig.rieClick(Sender: TObject);
begin
  TkHor.Position:=lie.Left;
  TkVert.Position:=lie.Top;
end;

procedure Tfboletoconfig.renderecoClick(Sender: TObject);
begin
  TkHor.Position:=lendereco.Left;
  TkVert.Position:=lendereco.Top;
end;

procedure Tfboletoconfig.renderecocobrancaClick(Sender: TObject);
begin
  TkHor.Position:=lenderecocobranca.Left;
  TkVert.Position:=lenderecocobranca.Top;
end;

procedure Tfboletoconfig.boleto1Execute(Sender: TObject);
var
Ini:TInifile;

texto:tmemorystream;
begin

  texto := tmemorystream.Create;
  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\boleto1.ini');

  //Configuração do Papel
  ini.ReadBinaryStream('config','memo',texto);
  minstrucao.Lines.LoadFromStream(texto);
  texto.Free;

  einstrcao2.text:=Ini.Readstring('Config', 'einstrucao2', einstrcao2.text);
  lbanco.Caption:=Ini.Readstring('Config', 'lbanco', 'Boleto1');
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
  Linstrucao2.Caption := einstrcao2.text;

  TkHor.Max:=qboleto.Width;
  TkVert.Max:=qboleto.Height;

  //Posição Top

  linstrucao2.top:=Ini.ReadInteger('linstrucao2', 'top',linstrucao2.top);
  ldata.top:=Ini.ReadInteger('ldata', 'top',ldata.top);
  lvencimento.top:=Ini.ReadInteger('lvencimento', 'top',lvencimento.top);
  ldocumento.top:=Ini.ReadInteger('ldocumento', 'top',ldocumento.top);
  lvalor.top:=Ini.ReadInteger('lvalor', 'top',lvalor.top);
  lmora.top:=Ini.ReadInteger('lmora', 'top',lmora.top);
  ldesconto.top:=Ini.ReadInteger('ldesconto', 'top',ldesconto.top);
  ltotal.top:=Ini.ReadInteger('ltotal', 'top',ltotal.top);

  lobs.top:=Ini.ReadInteger('lobs', 'top',lobs.top);
  linstrucao.top:=Ini.ReadInteger('linstrucao', 'top',linstrucao.top);
  lnome.top:=Ini.ReadInteger('lnome', 'top',lnome.top);
  lcnpj.top:=Ini.ReadInteger('lcnpj', 'top',lcnpj.top);
  lie.top:=Ini.ReadInteger('lie', 'top',lie.top);
  lendereco.top:=Ini.ReadInteger('lendereco', 'top',lendereco.top);
  lenderecocobranca.top:=Ini.ReadInteger('lenderecocobranca', 'top',lenderecocobranca.top);
  lsacado.top:=Ini.ReadInteger('lsacado', 'top',lsacado.top);

  //Posição Left

  linstrucao2.left:=Ini.ReadInteger('linstrucao2', 'left',linstrucao2.left);
  ldata.left:=Ini.ReadInteger('ldata', 'left',ldata.left);
  lvencimento.left:=Ini.ReadInteger('lvencimento', 'left',lvencimento.left);
  ldocumento.left:=Ini.ReadInteger('ldocumento', 'left',ldocumento.left);
  lvalor.left:=Ini.ReadInteger('lvalor', 'left',lvalor.left);
  lmora.left:=Ini.ReadInteger('lmora', 'left',lmora.left);

  ldesconto.left:=Ini.ReadInteger('ldesconto', 'left',ldesconto.left);
  ltotal.left:=Ini.ReadInteger('ltotal', 'left',ltotal.left);

  lobs.left:=Ini.ReadInteger('lobs', 'left',lobs.left);
  linstrucao.left:=Ini.ReadInteger('linstrucao', 'left',linstrucao.left);
  lnome.left:=Ini.ReadInteger('lnome', 'left',lnome.left);
  lcnpj.left:=Ini.ReadInteger('lcnpj', 'left',lcnpj.left);
  lie.left:=Ini.ReadInteger('lie', 'left',lie.left);
  lendereco.left:=Ini.ReadInteger('lendereco', 'left',lendereco.left);
  lenderecocobranca.left:=Ini.ReadInteger('lenderecocobranca', 'left',lenderecocobranca.left);
  lsacado.left:=Ini.ReadInteger('lsacado', 'left',lsacado.left);
  Ini.Free;


end;

procedure Tfboletoconfig.boleto2Execute(Sender: TObject);

var
Ini:TInifile;

texto:tmemorystream;
begin

  texto := tmemorystream.Create;
  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\boleto2.ini');

  //Configuração do Papel
  ini.ReadBinaryStream('config','memo',texto);
  minstrucao.Lines.LoadFromStream(texto);
  texto.Free;

  einstrcao2.text:=Ini.Readstring('Config', 'einstrucao2', 'Boleto2');
  lbanco.Caption:=Ini.Readstring('Config', 'lbanco', 'Boleto2');
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

  linstrucao2.top:=Ini.ReadInteger('linstrucao2', 'top',linstrucao2.top);
  ldata.top:=Ini.ReadInteger('ldata', 'top',ldata.top);
  lvencimento.top:=Ini.ReadInteger('lvencimento', 'top',lvencimento.top);
  ldocumento.top:=Ini.ReadInteger('ldocumento', 'top',ldocumento.top);
  lvalor.top:=Ini.ReadInteger('lvalor', 'top',lvalor.top);
  lmora.top:=Ini.ReadInteger('lmora', 'top',lmora.top);

  ldesconto.top:=Ini.ReadInteger('ldesconto', 'top',ldesconto.top);
  ltotal.top:=Ini.ReadInteger('ltotal', 'top',ltotal.top);

  lobs.top:=Ini.ReadInteger('lobs', 'top',lobs.top);
  linstrucao.top:=Ini.ReadInteger('linstrucao', 'top',linstrucao.top);
  lnome.top:=Ini.ReadInteger('lnome', 'top',lnome.top);
  lcnpj.top:=Ini.ReadInteger('lcnpj', 'top',lcnpj.top);
  lie.top:=Ini.ReadInteger('lie', 'top',lie.top);
  lendereco.top:=Ini.ReadInteger('lendereco', 'top',lendereco.top);
  lenderecocobranca.top:=Ini.ReadInteger('lenderecocobranca', 'top',lenderecocobranca.top);
  lsacado.top:=Ini.ReadInteger('lsacado', 'top',lsacado.top);

  //Posição Left

  linstrucao2.left:=Ini.ReadInteger('linstrucao2', 'left',linstrucao2.left);
  ldata.left:=Ini.ReadInteger('ldata', 'left',ldata.left);
  lvencimento.left:=Ini.ReadInteger('lvencimento', 'left',lvencimento.left);
  ldocumento.left:=Ini.ReadInteger('ldocumento', 'left',ldocumento.left);
  lvalor.left:=Ini.ReadInteger('lvalor', 'left',lvalor.left);
  lmora.left:=Ini.ReadInteger('lmora', 'left',lmora.left);

  ldesconto.left:=Ini.ReadInteger('ldesconto', 'left',ldesconto.left);
  ltotal.left:=Ini.ReadInteger('ltotal', 'left',ltotal.left);

  lobs.left:=Ini.ReadInteger('lobs', 'left',lobs.left);
  linstrucao.left:=Ini.ReadInteger('linstrucao', 'left',linstrucao.left);
  lnome.left:=Ini.ReadInteger('lnome', 'left',lnome.left);
  lcnpj.left:=Ini.ReadInteger('lcnpj', 'left',lcnpj.left);
  lie.left:=Ini.ReadInteger('lie', 'left',lie.left);
  lendereco.left:=Ini.ReadInteger('lendereco', 'left',lendereco.left);
  lenderecocobranca.left:=Ini.ReadInteger('lenderecocobranca', 'left',lenderecocobranca.left);
  lsacado.left:=Ini.ReadInteger('lsacado', 'left',lsacado.left);
  Ini.Free;

end;

procedure Tfboletoconfig.boleto3Execute(Sender: TObject);
var
Ini:TInifile;

texto:tmemorystream;
begin

  texto := tmemorystream.Create;
  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\boleto3.ini');

  //Configuração do Papel
  ini.ReadBinaryStream('config','memo',texto);
  minstrucao.Lines.LoadFromStream(texto);
  texto.Free;

  einstrcao2.text:=Ini.Readstring('Config', 'einstrucao2', 'Boleto3');
  lbanco.Caption:=Ini.Readstring('Config', 'lbanco', 'Boleto3');
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

  linstrucao2.top:=Ini.ReadInteger('linstrucao2', 'top',linstrucao2.top);
  ldata.top:=Ini.ReadInteger('ldata', 'top',ldata.top);
  lvencimento.top:=Ini.ReadInteger('lvencimento', 'top',lvencimento.top);
  ldocumento.top:=Ini.ReadInteger('ldocumento', 'top',ldocumento.top);
  lvalor.top:=Ini.ReadInteger('lvalor', 'top',lvalor.top);
  lmora.top:=Ini.ReadInteger('lmora', 'top',lmora.top);

  ldesconto.top:=Ini.ReadInteger('ldesconto', 'top',ldesconto.top);
  ltotal.top:=Ini.ReadInteger('ltotal', 'top',ltotal.top);

  lobs.top:=Ini.ReadInteger('lobs', 'top',lobs.top);
  linstrucao.top:=Ini.ReadInteger('linstrucao', 'top',linstrucao.top);
  lnome.top:=Ini.ReadInteger('lnome', 'top',lnome.top);
  lcnpj.top:=Ini.ReadInteger('lcnpj', 'top',lcnpj.top);
  lie.top:=Ini.ReadInteger('lie', 'top',lie.top);
  lendereco.top:=Ini.ReadInteger('lendereco', 'top',lendereco.top);
  lenderecocobranca.top:=Ini.ReadInteger('lenderecocobranca', 'top',lenderecocobranca.top);
  lsacado.top:=Ini.ReadInteger('lsacado', 'top',lsacado.top);

  //Posição Left

  linstrucao2.left:=Ini.ReadInteger('linstrucao2', 'left',linstrucao2.left);
  ldata.left:=Ini.ReadInteger('ldata', 'left',ldata.left);
  lvencimento.left:=Ini.ReadInteger('lvencimento', 'left',lvencimento.left);
  ldocumento.left:=Ini.ReadInteger('ldocumento', 'left',ldocumento.left);
  lvalor.left:=Ini.ReadInteger('lvalor', 'left',lvalor.left);
  lmora.left:=Ini.ReadInteger('lmora', 'left',lmora.left);

  ldesconto.left:=Ini.ReadInteger('ldesconto', 'left',ldesconto.left);
  ltotal.left:=Ini.ReadInteger('ltotal', 'left',ltotal.left);

  lobs.left:=Ini.ReadInteger('lobs', 'left',lobs.left);
  linstrucao.left:=Ini.ReadInteger('linstrucao', 'left',linstrucao.left);
  lnome.left:=Ini.ReadInteger('lnome', 'left',lnome.left);
  lcnpj.left:=Ini.ReadInteger('lcnpj', 'left',lcnpj.left);
  lie.left:=Ini.ReadInteger('lie', 'left',lie.left);
  lendereco.left:=Ini.ReadInteger('lendereco', 'left',lendereco.left);
  lenderecocobranca.left:=Ini.ReadInteger('lenderecocobranca', 'left',lenderecocobranca.left);
  lsacado.left:=Ini.ReadInteger('lsacado', 'left',lsacado.left);
  Ini.Free;

end;

procedure Tfboletoconfig.boleto4Execute(Sender: TObject);
var
Ini:TInifile;

texto:tmemorystream;
begin

  texto := tmemorystream.Create;
  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\boleto4.ini');

  //Configuração do Papel
  ini.ReadBinaryStream('config','memo',texto);
  minstrucao.Lines.LoadFromStream(texto);
  texto.Free;

  einstrcao2.text:=Ini.Readstring('Config', 'einstrucao2', 'Boleto4');
  lbanco.Caption:=Ini.Readstring('Config', 'lbanco', 'Boleto4');
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

  linstrucao2.top:=Ini.ReadInteger('linstrucao2', 'top',linstrucao2.top);
  ldata.top:=Ini.ReadInteger('ldata', 'top',ldata.top);
  lvencimento.top:=Ini.ReadInteger('lvencimento', 'top',lvencimento.top);
  ldocumento.top:=Ini.ReadInteger('ldocumento', 'top',ldocumento.top);
  lvalor.top:=Ini.ReadInteger('lvalor', 'top',lvalor.top);
  lmora.top:=Ini.ReadInteger('lmora', 'top',lmora.top);

  ldesconto.top:=Ini.ReadInteger('ldesconto', 'top',ldesconto.top);
  ltotal.top:=Ini.ReadInteger('ltotal', 'top',ltotal.top);

  lobs.top:=Ini.ReadInteger('lobs', 'top',lobs.top);
  linstrucao.top:=Ini.ReadInteger('linstrucao', 'top',linstrucao.top);
  lnome.top:=Ini.ReadInteger('lnome', 'top',lnome.top);
  lcnpj.top:=Ini.ReadInteger('lcnpj', 'top',lcnpj.top);
  lie.top:=Ini.ReadInteger('lie', 'top',lie.top);
  lendereco.top:=Ini.ReadInteger('lendereco', 'top',lendereco.top);
  lenderecocobranca.top:=Ini.ReadInteger('lenderecocobranca', 'top',lenderecocobranca.top);
  lsacado.top:=Ini.ReadInteger('lsacado', 'top',lsacado.top);

  //Posição Left

  linstrucao2.left:=Ini.ReadInteger('linstrucao2', 'left',linstrucao2.left);
  ldata.left:=Ini.ReadInteger('ldata', 'left',ldata.left);
  lvencimento.left:=Ini.ReadInteger('lvencimento', 'left',lvencimento.left);
  ldocumento.left:=Ini.ReadInteger('ldocumento', 'left',ldocumento.left);
  lvalor.left:=Ini.ReadInteger('lvalor', 'left',lvalor.left);
  lmora.left:=Ini.ReadInteger('lmora', 'left',lmora.left);

  ldesconto.left:=Ini.ReadInteger('ldesconto', 'left',ldesconto.left);
  ltotal.left:=Ini.ReadInteger('ltotal', 'left',ltotal.left);

  lobs.left:=Ini.ReadInteger('lobs', 'left',lobs.left);
  linstrucao.left:=Ini.ReadInteger('linstrucao', 'left',linstrucao.left);
  lnome.left:=Ini.ReadInteger('lnome', 'left',lnome.left);
  lcnpj.left:=Ini.ReadInteger('lcnpj', 'left',lcnpj.left);
  lie.left:=Ini.ReadInteger('lie', 'left',lie.left);
  lendereco.left:=Ini.ReadInteger('lendereco', 'left',lendereco.left);
  lenderecocobranca.left:=Ini.ReadInteger('lenderecocobranca', 'left',lenderecocobranca.left);
  lsacado.left:=Ini.ReadInteger('lsacado', 'left',lsacado.left);
  Ini.Free;

end;

procedure Tfboletoconfig.boleto5Execute(Sender: TObject);
var
Ini:TInifile;

texto:tmemorystream;
begin

  texto := tmemorystream.Create;
  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\boleto5.ini');

  //Configuração do Papel
  ini.ReadBinaryStream('config','memo',texto);
  minstrucao.Lines.LoadFromStream(texto);
  texto.Free;

  einstrcao2.text:=Ini.Readstring('Config', 'einstrucao2', 'Boleto2');
  lbanco.Caption:=Ini.Readstring('Config', 'lbanco', 'Boleto5');
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

  linstrucao2.top:=Ini.ReadInteger('linstrucao2', 'top',linstrucao2.top);
  ldata.top:=Ini.ReadInteger('ldata', 'top',ldata.top);
  lvencimento.top:=Ini.ReadInteger('lvencimento', 'top',lvencimento.top);
  ldocumento.top:=Ini.ReadInteger('ldocumento', 'top',ldocumento.top);
  lvalor.top:=Ini.ReadInteger('lvalor', 'top',lvalor.top);
  lmora.top:=Ini.ReadInteger('lmora', 'top',lmora.top);


  ldesconto.top:=Ini.ReadInteger('ldesconto', 'top',ldesconto.top);
  ltotal.top:=Ini.ReadInteger('ltotal', 'top',ltotal.top);

  lobs.top:=Ini.ReadInteger('lobs', 'top',lobs.top);
  linstrucao.top:=Ini.ReadInteger('linstrucao', 'top',linstrucao.top);
  lnome.top:=Ini.ReadInteger('lnome', 'top',lnome.top);
  lcnpj.top:=Ini.ReadInteger('lcnpj', 'top',lcnpj.top);
  lie.top:=Ini.ReadInteger('lie', 'top',lie.top);
  lendereco.top:=Ini.ReadInteger('lendereco', 'top',lendereco.top);
  lenderecocobranca.top:=Ini.ReadInteger('lenderecocobranca', 'top',lenderecocobranca.top);
  lsacado.top:=Ini.ReadInteger('lsacado', 'top',lsacado.top);

  //Posição Left

  linstrucao2.left:=Ini.ReadInteger('linstrucao2', 'left',linstrucao2.left);
  ldata.left:=Ini.ReadInteger('ldata', 'left',ldata.left);
  lvencimento.left:=Ini.ReadInteger('lvencimento', 'left',lvencimento.left);
  ldocumento.left:=Ini.ReadInteger('ldocumento', 'left',ldocumento.left);
  lvalor.left:=Ini.ReadInteger('lvalor', 'left',lvalor.left);
  lmora.left:=Ini.ReadInteger('lmora', 'left',lmora.left);

  ldesconto.left:=Ini.ReadInteger('ldesconto', 'left',ldesconto.left);
  ltotal.left:=Ini.ReadInteger('ltotal', 'left',ltotal.left);

  lobs.left:=Ini.ReadInteger('lobs', 'left',lobs.left);
  linstrucao.left:=Ini.ReadInteger('linstrucao', 'left',linstrucao.left);
  lnome.left:=Ini.ReadInteger('lnome', 'left',lnome.left);
  lcnpj.left:=Ini.ReadInteger('lcnpj', 'left',lcnpj.left);
  lie.left:=Ini.ReadInteger('lie', 'left',lie.left);
  lendereco.left:=Ini.ReadInteger('lendereco', 'left',lendereco.left);
  lenderecocobranca.left:=Ini.ReadInteger('lenderecocobranca', 'left',lenderecocobranca.left);
  lsacado.left:=Ini.ReadInteger('lsacado', 'left',lsacado.left);
  Ini.Free;


end;

procedure Tfboletoconfig.boleto6Execute(Sender: TObject);
var
Ini:TInifile;

texto:tmemorystream;
begin

  texto := tmemorystream.Create;
  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\boleto6.ini');

  //Configuração do Papel
  ini.ReadBinaryStream('config','memo',texto);
  minstrucao.Lines.LoadFromStream(texto);
  texto.Free;

  einstrcao2.text:=Ini.Readstring('Config', 'einstrucao2', 'Boleto6');
  lbanco.Caption:=Ini.Readstring('Config', 'lbanco', 'Boleto6');
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

  linstrucao2.top:=Ini.ReadInteger('linstrucao2', 'top',linstrucao2.top);
  ldata.top:=Ini.ReadInteger('ldata', 'top',ldata.top);
  lvencimento.top:=Ini.ReadInteger('lvencimento', 'top',lvencimento.top);
  ldocumento.top:=Ini.ReadInteger('ldocumento', 'top',ldocumento.top);
  lvalor.top:=Ini.ReadInteger('lvalor', 'top',lvalor.top);
  lmora.top:=Ini.ReadInteger('lmora', 'top',lmora.top);

  ldesconto.top:=Ini.ReadInteger('ldesconto', 'top',ldesconto.top);
  ltotal.top:=Ini.ReadInteger('ltotal', 'top',ltotal.top);

  lobs.top:=Ini.ReadInteger('lobs', 'top',lobs.top);
  linstrucao.top:=Ini.ReadInteger('linstrucao', 'top',linstrucao.top);
  lnome.top:=Ini.ReadInteger('lnome', 'top',lnome.top);
  lcnpj.top:=Ini.ReadInteger('lcnpj', 'top',lcnpj.top);
  lie.top:=Ini.ReadInteger('lie', 'top',lie.top);
  lendereco.top:=Ini.ReadInteger('lendereco', 'top',lendereco.top);
  lenderecocobranca.top:=Ini.ReadInteger('lenderecocobranca', 'top',lenderecocobranca.top);
  lsacado.top:=Ini.ReadInteger('lsacado', 'top',lsacado.top);

  //Posição Left

  linstrucao2.left:=Ini.ReadInteger('linstrucao2', 'left',linstrucao2.left);
  ldata.left:=Ini.ReadInteger('ldata', 'left',ldata.left);
  lvencimento.left:=Ini.ReadInteger('lvencimento', 'left',lvencimento.left);
  ldocumento.left:=Ini.ReadInteger('ldocumento', 'left',ldocumento.left);
  lvalor.left:=Ini.ReadInteger('lvalor', 'left',lvalor.left);
  lmora.left:=Ini.ReadInteger('lmora', 'left',lmora.left);

  ldesconto.left:=Ini.ReadInteger('ldesconto', 'left',ldesconto.left);
  ltotal.left:=Ini.ReadInteger('ltotal', 'left',ltotal.left);

  lobs.left:=Ini.ReadInteger('lobs', 'left',lobs.left);
  linstrucao.left:=Ini.ReadInteger('linstrucao', 'left',linstrucao.left);
  lnome.left:=Ini.ReadInteger('lnome', 'left',lnome.left);
  lcnpj.left:=Ini.ReadInteger('lcnpj', 'left',lcnpj.left);
  lie.left:=Ini.ReadInteger('lie', 'left',lie.left);
  lendereco.left:=Ini.ReadInteger('lendereco', 'left',lendereco.left);
  lenderecocobranca.left:=Ini.ReadInteger('lenderecocobranca', 'left',lenderecocobranca.left);
  lsacado.left:=Ini.ReadInteger('lsacado', 'left',lsacado.left);
  Ini.Free;

end;

procedure Tfboletoconfig.Gboleto1Execute(Sender: TObject);
var
 Ini:TInifile;
 texto:tstringstream;
 st:string;
begin

  texto := tstringstream.Create(minstrucao.Text);
  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\boleto1.ini');

  Ini.WriteBinaryStream('Config', 'memo', texto);
  texto.Free;

  st:=lbanco.Caption;
  inputquery('Nome do Banco','Qual o nome do banco?',st);
  if st ='' then st := 'Boleto1';

  Ini.Writestring('Config', 'lbanco', st);
  Ini.Writestring('Config', 'linstrucao2', Linstrucao2.Caption);

  Ini.WriteInteger('Config', 'Altura', SAltura.Value);
  Ini.WriteInteger('Config', 'Largura', SLargura.Value);
  Ini.WriteInteger('Config', 'MInferior', SMInferior.Value);
  Ini.WriteInteger('Config', 'MSuperior', SMsuperior.Value);
  Ini.WriteInteger('Config', 'MEsquerda', SMEsquerda.Value);
  Ini.WriteInteger('Config', 'MDireita', SMDireita.Value);

  Ini.WriteInteger('linstrucao2', 'top',linstrucao2.top);
  Ini.WriteInteger('ldata', 'top',ldata.top);
  Ini.WriteInteger('lvencimento', 'top',lvencimento.top);
  Ini.WriteInteger('ldocumento', 'top',ldocumento.top);
  Ini.WriteInteger('lvalor', 'top',lvalor.top);
  Ini.WriteInteger('lmora', 'top',lmora.top);

  Ini.WriteInteger('ldesconto', 'top',ldesconto.top);
  Ini.WriteInteger('ltotal', 'top',ltotal.top);

  Ini.WriteInteger('lobs', 'top',lobs.top);
  Ini.WriteInteger('linstrucao', 'top',linstrucao.top);
  Ini.WriteInteger('lnome', 'top',lnome.top);
  Ini.WriteInteger('lcnpj', 'top',lcnpj.top);
  Ini.WriteInteger('lie', 'top',lie.top);
  Ini.WriteInteger('lendereco', 'top',lendereco.top);
  Ini.WriteInteger('lenderecocobranca', 'top',lenderecocobranca.top);
  Ini.WriteInteger('lsacado', 'top',lsacado.top);


  Ini.WriteInteger('linstrucao2', 'left',linstrucao2.left);
  Ini.WriteInteger('ldata', 'left',ldata.left);
  Ini.WriteInteger('lvencimento', 'left',lvencimento.left);
  Ini.WriteInteger('ldocumento', 'left',ldocumento.left);
  Ini.WriteInteger('lvalor', 'left',lvalor.left);
  Ini.WriteInteger('lmora', 'left',lmora.left);

  Ini.WriteInteger('ldesconto', 'left',ldesconto.left);
  Ini.WriteInteger('ltotal', 'left',ltotal.left);

  Ini.WriteInteger('lobs', 'left',lobs.left);
  Ini.WriteInteger('linstrucao', 'left',linstrucao.left);
  Ini.WriteInteger('lnome', 'left',lnome.left);
  Ini.WriteInteger('lcnpj', 'left',lcnpj.left);
  Ini.WriteInteger('lie', 'left',lie.left);
  Ini.WriteInteger('lendereco', 'left',lendereco.left);
  Ini.WriteInteger('lenderecocobranca', 'left',lenderecocobranca.left);
  Ini.WriteInteger('lsacado', 'left',lsacado.left);

  Ini.Free;

  boleto1execute(self);

end;

procedure Tfboletoconfig.Gboleto2Execute(Sender: TObject);
var
 Ini:TInifile;
 texto:tstringstream;
 st :string;
begin

  texto := tstringstream.Create(minstrucao.Text);
  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\boleto2.ini');

  Ini.WriteBinaryStream('Config', 'memo', texto);
  texto.Free;

  st:=lbanco.Caption;
  inputquery('Nome do Banco','Qual o nome do banco?',st);
  if st ='' then st := 'Boleto2';
  Ini.Writestring('Config', 'lbanco', st);

  Ini.Writestring('Config', 'linstrucao2', st);  

  Ini.WriteInteger('Config', 'Altura', SAltura.Value);
  Ini.WriteInteger('Config', 'Largura', SLargura.Value);
  Ini.WriteInteger('Config', 'MInferior', SMInferior.Value);
  Ini.WriteInteger('Config', 'MSuperior', SMsuperior.Value);
  Ini.WriteInteger('Config', 'MEsquerda', SMEsquerda.Value);
  Ini.WriteInteger('Config', 'MDireita', SMDireita.Value);


  Ini.WriteInteger('ldata', 'top',ldata.top);
  Ini.WriteInteger('lvencimento', 'top',lvencimento.top);
  Ini.WriteInteger('ldocumento', 'top',ldocumento.top);
  Ini.WriteInteger('lvalor', 'top',lvalor.top);
  Ini.WriteInteger('lmora', 'top',lmora.top);

  Ini.WriteInteger('ldesconto', 'top',ldesconto.top);
  Ini.WriteInteger('ltotal', 'top',ltotal.top);

  Ini.WriteInteger('lobs', 'top',lobs.top);
  Ini.WriteInteger('linstrucao', 'top',linstrucao.top);
  Ini.WriteInteger('lnome', 'top',lnome.top);
  Ini.WriteInteger('lcnpj', 'top',lcnpj.top);
  Ini.WriteInteger('lie', 'top',lie.top);
  Ini.WriteInteger('lendereco', 'top',lendereco.top);
  Ini.WriteInteger('lenderecocobranca', 'top',lenderecocobranca.top);
  Ini.WriteInteger('linstrucao2', 'top',linstrucao2.top);
  Ini.WriteInteger('lsacado', 'top',lsacado.top);


  Ini.WriteInteger('linstrucao2', 'left',linstrucao2.left);
  Ini.WriteInteger('ldata', 'left',ldata.left);
  Ini.WriteInteger('lvencimento', 'left',lvencimento.left);
  Ini.WriteInteger('ldocumento', 'left',ldocumento.left);
  Ini.WriteInteger('lvalor', 'left',lvalor.left);
  Ini.WriteInteger('lmora', 'left',lmora.left);

  Ini.WriteInteger('ldesconto', 'left',ldesconto.left);
  Ini.WriteInteger('ltotal', 'left',ltotal.left);

  Ini.WriteInteger('lobs', 'left',lobs.left);
  Ini.WriteInteger('linstrucao', 'left',linstrucao.left);
  Ini.WriteInteger('lnome', 'left',lnome.left);
  Ini.WriteInteger('lcnpj', 'left',lcnpj.left);
  Ini.WriteInteger('lie', 'left',lie.left);
  Ini.WriteInteger('lendereco', 'left',lendereco.left);
  Ini.WriteInteger('lenderecocobranca', 'left',lenderecocobranca.left);
  Ini.WriteInteger('lsacado', 'left',lsacado.left);

  Ini.Free;

end;

procedure Tfboletoconfig.Gboleto3Execute(Sender: TObject);
var
 Ini:TInifile;
 texto:tstringstream;
 st:string;
begin

  texto := tstringstream.Create(minstrucao.Text);
  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\boleto3.ini');

  Ini.WriteBinaryStream('Config', 'memo', texto);
  texto.Free;

  st:=lbanco.Caption;
  inputquery('Nome do Banco','Qual o nome do banco?',st);
  if st ='' then st := 'Boleto3';
  Ini.Writestring('Config', 'lbanco', st);
  Ini.Writestring('Config', 'linstrucao2', st);

  Ini.WriteInteger('Config', 'Altura', SAltura.Value);
  Ini.WriteInteger('Config', 'Largura', SLargura.Value);
  Ini.WriteInteger('Config', 'MInferior', SMInferior.Value);
  Ini.WriteInteger('Config', 'MSuperior', SMsuperior.Value);
  Ini.WriteInteger('Config', 'MEsquerda', SMEsquerda.Value);
  Ini.WriteInteger('Config', 'MDireita', SMDireita.Value);


  Ini.WriteInteger('ldata', 'top',ldata.top);
  Ini.WriteInteger('lvencimento', 'top',lvencimento.top);
  Ini.WriteInteger('ldocumento', 'top',ldocumento.top);
  Ini.WriteInteger('lvalor', 'top',lvalor.top);
  Ini.WriteInteger('lmora', 'top',lmora.top);

  Ini.WriteInteger('ldesconto', 'top',ldesconto.top);
  Ini.WriteInteger('ltotal', 'top',ltotal.top);

  Ini.WriteInteger('lobs', 'top',lobs.top);
  Ini.WriteInteger('linstrucao', 'top',linstrucao.top);
  Ini.WriteInteger('lnome', 'top',lnome.top);
  Ini.WriteInteger('lcnpj', 'top',lcnpj.top);
  Ini.WriteInteger('lie', 'top',lie.top);
  Ini.WriteInteger('lendereco', 'top',lendereco.top);
  Ini.WriteInteger('lenderecocobranca', 'top',lenderecocobranca.top);
  Ini.WriteInteger('linstrucao2', 'top',linstrucao2.top);
  Ini.WriteInteger('lsacado', 'top',lsacado.top);


  Ini.WriteInteger('linstrucao2', 'left',linstrucao2.left);
  Ini.WriteInteger('ldata', 'left',ldata.left);
  Ini.WriteInteger('lvencimento', 'left',lvencimento.left);
  Ini.WriteInteger('ldocumento', 'left',ldocumento.left);
  Ini.WriteInteger('lvalor', 'left',lvalor.left);
  Ini.WriteInteger('lmora', 'left',lmora.left);

  Ini.WriteInteger('ldesconto', 'left',ldesconto.left);
  Ini.WriteInteger('ltotal', 'left',ltotal.left);

  Ini.WriteInteger('lobs', 'left',lobs.left);
  Ini.WriteInteger('linstrucao', 'left',linstrucao.left);
  Ini.WriteInteger('lnome', 'left',lnome.left);
  Ini.WriteInteger('lcnpj', 'left',lcnpj.left);
  Ini.WriteInteger('lie', 'left',lie.left);
  Ini.WriteInteger('lendereco', 'left',lendereco.left);
  Ini.WriteInteger('lenderecocobranca', 'left',lenderecocobranca.left);
  Ini.WriteInteger('lsacado', 'left',lsacado.left);

  Ini.Free;

end;

procedure Tfboletoconfig.GBoleto4Execute(Sender: TObject);
var
 Ini:TInifile;
 texto:tstringstream;
 st:string;
begin

  texto := tstringstream.Create(minstrucao.Text);
  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\boleto4.ini');

  Ini.WriteBinaryStream('Config', 'memo', texto);
  texto.Free;

  st:=lbanco.Caption;
  inputquery('Nome do Banco','Qual o nome do banco?',st);
  if st ='' then st := 'Boleto4';
  Ini.Writestring('Config', 'lbanco', st);
  Ini.Writestring('Config', 'linstrucao2', st);

  Ini.WriteInteger('Config', 'Altura', SAltura.Value);
  Ini.WriteInteger('Config', 'Largura', SLargura.Value);
  Ini.WriteInteger('Config', 'MInferior', SMInferior.Value);
  Ini.WriteInteger('Config', 'MSuperior', SMsuperior.Value);
  Ini.WriteInteger('Config', 'MEsquerda', SMEsquerda.Value);
  Ini.WriteInteger('Config', 'MDireita', SMDireita.Value);


  Ini.WriteInteger('ldata', 'top',ldata.top);
  Ini.WriteInteger('lvencimento', 'top',lvencimento.top);
  Ini.WriteInteger('ldocumento', 'top',ldocumento.top);
  Ini.WriteInteger('lvalor', 'top',lvalor.top);
  Ini.WriteInteger('lmora', 'top',lmora.top);

  Ini.WriteInteger('ldesconto', 'top',ldesconto.top);
  Ini.WriteInteger('ltotal', 'top',ltotal.top);

  Ini.WriteInteger('lobs', 'top',lobs.top);
  Ini.WriteInteger('linstrucao', 'top',linstrucao.top);
  Ini.WriteInteger('lnome', 'top',lnome.top);
  Ini.WriteInteger('lcnpj', 'top',lcnpj.top);
  Ini.WriteInteger('lie', 'top',lie.top);
  Ini.WriteInteger('lendereco', 'top',lendereco.top);
  Ini.WriteInteger('lenderecocobranca', 'top',lenderecocobranca.top);
  Ini.WriteInteger('linstrucao2', 'top',linstrucao2.top);
  Ini.WriteInteger('lsacado', 'top',lsacado.top);


  Ini.WriteInteger('linstrucao2', 'left',linstrucao2.left);
  Ini.WriteInteger('ldata', 'left',ldata.left);
  Ini.WriteInteger('lvencimento', 'left',lvencimento.left);
  Ini.WriteInteger('ldocumento', 'left',ldocumento.left);
  Ini.WriteInteger('lvalor', 'left',lvalor.left);
  Ini.WriteInteger('lmora', 'left',lmora.left);

  Ini.WriteInteger('ldesconto', 'left',ldesconto.left);
  Ini.WriteInteger('ltotal', 'left',ltotal.left);

  Ini.WriteInteger('lobs', 'left',lobs.left);
  Ini.WriteInteger('linstrucao', 'left',linstrucao.left);
  Ini.WriteInteger('lnome', 'left',lnome.left);
  Ini.WriteInteger('lcnpj', 'left',lcnpj.left);
  Ini.WriteInteger('lie', 'left',lie.left);
  Ini.WriteInteger('lendereco', 'left',lendereco.left);
  Ini.WriteInteger('lenderecocobranca', 'left',lenderecocobranca.left);
  Ini.WriteInteger('lsacado', 'left',lsacado.left);

  Ini.Free;


end;

procedure Tfboletoconfig.GBoleto5Execute(Sender: TObject);
var
 Ini:TInifile;
 texto:tstringstream;
 st:string;
begin

  texto := tstringstream.Create(minstrucao.Text);
  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\boleto5.ini');

  Ini.WriteBinaryStream('Config', 'memo', texto);
  texto.Free;

  st:=lbanco.Caption;
  inputquery('Nome do Banco','Qual o nome do banco?',st);
  if st ='' then st := 'Boleto5';
  Ini.Writestring('Config', 'lbanco', st);

  Ini.Writestring('Config', 'linstrucao2', st);
  Ini.WriteInteger('Config', 'Altura', SAltura.Value);
  Ini.WriteInteger('Config', 'Largura', SLargura.Value);
  Ini.WriteInteger('Config', 'MInferior', SMInferior.Value);
  Ini.WriteInteger('Config', 'MSuperior', SMsuperior.Value);
  Ini.WriteInteger('Config', 'MEsquerda', SMEsquerda.Value);
  Ini.WriteInteger('Config', 'MDireita', SMDireita.Value);


  Ini.WriteInteger('ldata', 'top',ldata.top);
  Ini.WriteInteger('lvencimento', 'top',lvencimento.top);
  Ini.WriteInteger('ldocumento', 'top',ldocumento.top);
  Ini.WriteInteger('lvalor', 'top',lvalor.top);
  Ini.WriteInteger('lmora', 'top',lmora.top);

  Ini.WriteInteger('ldesconto', 'top',ldesconto.top);
  Ini.WriteInteger('ltotal', 'top',ltotal.top);

  Ini.WriteInteger('lobs', 'top',lobs.top);
  Ini.WriteInteger('linstrucao', 'top',linstrucao.top);
  Ini.WriteInteger('lnome', 'top',lnome.top);
  Ini.WriteInteger('lcnpj', 'top',lcnpj.top);
  Ini.WriteInteger('lie', 'top',lie.top);
  Ini.WriteInteger('lendereco', 'top',lendereco.top);
  Ini.WriteInteger('lenderecocobranca', 'top',lenderecocobranca.top);
  Ini.WriteInteger('linstrucao2', 'top',linstrucao2.left);
  Ini.WriteInteger('lsacado', 'top',lsacado.left);


  Ini.WriteInteger('linstrucao2', 'left',linstrucao2.left);
  Ini.WriteInteger('ldata', 'left',ldata.left);
  Ini.WriteInteger('lvencimento', 'left',lvencimento.left);
  Ini.WriteInteger('ldocumento', 'left',ldocumento.left);
  Ini.WriteInteger('lvalor', 'left',lvalor.left);
  Ini.WriteInteger('lmora', 'left',lmora.left);

  Ini.WriteInteger('ldesconto', 'left',ldesconto.left);
  Ini.WriteInteger('ltotal', 'left',ltotal.left);

  Ini.WriteInteger('lobs', 'left',lobs.left);
  Ini.WriteInteger('linstrucao', 'left',linstrucao.left);
  Ini.WriteInteger('lnome', 'left',lnome.left);
  Ini.WriteInteger('lcnpj', 'left',lcnpj.left);
  Ini.WriteInteger('lie', 'left',lie.left);
  Ini.WriteInteger('lendereco', 'left',lendereco.left);
  Ini.WriteInteger('lenderecocobranca', 'left',lenderecocobranca.left);
  Ini.WriteInteger('lsacado', 'left',lsacado.left);

  Ini.Free;


end;

procedure Tfboletoconfig.Gboleto6Execute(Sender: TObject);
var
 Ini:TInifile;
 texto:tstringstream;
st:string;
begin

  texto := tstringstream.Create(minstrucao.Text);
  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\boleto6.ini');

  Ini.WriteBinaryStream('Config', 'memo', texto);
  texto.Free;

  st:=lbanco.Caption;
  inputquery('Nome do Banco','Qual o nome do banco?',st);
  if st ='' then st := 'Boleto6';
  Ini.Writestring('Config', 'lbanco', st);
  Ini.Writestring('Config', 'linstrucao2', st);

  Ini.WriteInteger('Config', 'Altura', SAltura.Value);
  Ini.WriteInteger('Config', 'Largura', SLargura.Value);
  Ini.WriteInteger('Config', 'MInferior', SMInferior.Value);
  Ini.WriteInteger('Config', 'MSuperior', SMsuperior.Value);
  Ini.WriteInteger('Config', 'MEsquerda', SMEsquerda.Value);
  Ini.WriteInteger('Config', 'MDireita', SMDireita.Value);


  Ini.WriteInteger('ldata', 'top',ldata.top);
  Ini.WriteInteger('lvencimento', 'top',lvencimento.top);
  Ini.WriteInteger('ldocumento', 'top',ldocumento.top);
  Ini.WriteInteger('lvalor', 'top',lvalor.top);
  Ini.WriteInteger('lmora', 'top',lmora.top);

  Ini.WriteInteger('ldesconto', 'top',ldesconto.top);
  Ini.WriteInteger('ltotal', 'top',ltotal.top);

  Ini.WriteInteger('lobs', 'top',lobs.top);
  Ini.WriteInteger('linstrucao', 'top',linstrucao.top);
  Ini.WriteInteger('lnome', 'top',lnome.top);
  Ini.WriteInteger('lcnpj', 'top',lcnpj.top);
  Ini.WriteInteger('lie', 'top',lie.top);
  Ini.WriteInteger('lendereco', 'top',lendereco.top);
  Ini.WriteInteger('lenderecocobranca', 'top',lenderecocobranca.top);
  Ini.WriteInteger('linstrucao2', 'top',linstrucao2.left);
  Ini.WriteInteger('lsacado', 'top',lsacado.left);


  Ini.WriteInteger('linstrucao2', 'left',linstrucao2.left);
  Ini.WriteInteger('ldata', 'left',ldata.left);
  Ini.WriteInteger('lvencimento', 'left',lvencimento.left);
  Ini.WriteInteger('ldocumento', 'left',ldocumento.left);
  Ini.WriteInteger('lvalor', 'left',lvalor.left);
  Ini.WriteInteger('lmora', 'left',lmora.left);

  Ini.WriteInteger('ldesconto', 'left',ldesconto.left);
  Ini.WriteInteger('ltotal', 'left',ltotal.left);

  Ini.WriteInteger('lobs', 'left',lobs.left);
  Ini.WriteInteger('linstrucao', 'left',linstrucao.left);
  Ini.WriteInteger('lnome', 'left',lnome.left);
  Ini.WriteInteger('lcnpj', 'left',lcnpj.left);
  Ini.WriteInteger('lie', 'left',lie.left);
  Ini.WriteInteger('lendereco', 'left',lendereco.left);
  Ini.WriteInteger('lenderecocobranca', 'left',lenderecocobranca.left);
  Ini.WriteInteger('lsacado', 'left',lsacado.left);

  Ini.Free;


end;

procedure Tfboletoconfig.rb1Click(Sender: TObject);
begin
        boleto1execute(self);
end;

procedure Tfboletoconfig.rb2Click(Sender: TObject);
begin
        boleto2execute(self);
end;

procedure Tfboletoconfig.rb3Click(Sender: TObject);
begin
        boleto3execute(self);
end;

procedure Tfboletoconfig.rb4Click(Sender: TObject);
begin
        boleto4execute(self);
end;

procedure Tfboletoconfig.rb5Click(Sender: TObject);
begin
        boleto5execute(self);
end;

procedure Tfboletoconfig.rb6Click(Sender: TObject);
begin
        boleto6execute(self);
end;

procedure Tfboletoconfig.FormCreate(Sender: TObject);
begin

        if freceberlocaliza.controleimpressao = '1' then
           rb1.Checked := true;
        if freceberlocaliza.controleimpressao = '2' then
           rb2.Checked := true;
        if freceberlocaliza.controleimpressao = '3' then
           rb3.Checked := true;
        if freceberlocaliza.controleimpressao = '4' then
           rb4.Checked := true;
        if freceberlocaliza.controleimpressao = '5' then
           rb5.Checked := true;
        if freceberlocaliza.controleimpressao = '6' then
           rb6.Checked := true;

end;

procedure Tfboletoconfig.SpeedButton1Click(Sender: TObject);
begin
        if msg('',1) then
        
    if rb1.Checked = true then
       if FileExists (ExtractFilePath(ParamStr(0)) + 'imagem\boleto1.ini') then
          DeleteFile (ExtractFilePath(ParamStr(0)) + 'imagem\boleto1.ini');


    padraoExecute(self);

end;

procedure Tfboletoconfig.padraoExecute(Sender: TObject);
begin

linstrucao2.Left := 8;
linstrucao2.Top := 0;

ldata.Left := 8;
ldata.Top := 24;

lvencimento.Left := 519;
lvencimento.Top := 12;

ldocumento.Left := 96;
ldocumento.Top := 24;


lvalor.Left := 504;
lvalor.Top := 76;

lmora.Left := 8;
lmora.Top := 104;

ldesconto.Left := 524;
ldesconto.Top := 120;

ltotal.Left := 548;
ltotal.Top := 160;

lobs.Left := 8;
lobs.top := 116;

linstrucao.Left := 8;
linstrucao.Top := 132;

lcnpj.Left := 492;
lcnpj.Top := 148;

lie.Left := 492;
lie.Top := 168;


lnome.Left := 52;
lnome.Top := 294;

lenderecocobranca.Left := 52;
lenderecocobranca.Top := 344;

lbanco.Caption :='';
end;

procedure Tfboletoconfig.rvalorClick(Sender: TObject);
begin
  TkHor.Position:=lvalor.Left;
  TkVert.Position:=lvalor.Top;
end;

procedure Tfboletoconfig.rinstrucao2Click(Sender: TObject);
begin
  TkHor.Position:=linstrucao2.Left;
  TkVert.Position:=linstrucao2.Top;
end;

procedure Tfboletoconfig.bandaBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
        Linstrucao.Lines := minstrucao.Lines;
end;

procedure Tfboletoconfig.qboletoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
        lmora.Caption := 'Mora Diária: ' + format('%n',[fdm.tbconfig.fieldbyname('juro').asfloat])+
                         '%  =  ' +  format('%n',[fdm.tbconfig.fieldbyname('juro').asfloat *
                                                    freceberlocaliza.tabela.fieldbyname('vrdocumento').asfloat /100]);

end;

procedure Tfboletoconfig.LEnderecoBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
        text :=  freceberlocaliza.tabela.fieldbyname('endereco').AsString + ' - '+
                 freceberlocaliza.tabela.fieldbyname('numero').AsString  +'  '+
                 freceberlocaliza.tabela.fieldbyname('complemento').AsString + ' - '+
                 freceberlocaliza.tabela.fieldbyname('bairro').AsString + ' - '+
                 freceberlocaliza.tabela.fieldbyname('municipio').AsString + '  CEP:'+
                 freceberlocaliza.tabela.fieldbyname('cep').AsString + ' '+
                 freceberlocaliza.tabela.fieldbyname('Uf').AsString;
end;

procedure Tfboletoconfig.rsacadoClick(Sender: TObject);
begin
  TkHor.Position:=lsacado.Left;
  TkVert.Position:=lsacado.Top;
end;

procedure Tfboletoconfig.rdescontoClick(Sender: TObject);
begin
  TkHor.Position:=ldesconto.Left;
  TkVert.Position:=ldesconto.Top;

end;

procedure Tfboletoconfig.rtotalClick(Sender: TObject);
begin
  TkHor.Position:=ltotal.Left;
  TkVert.Position:=ltotal.Top;
end;

procedure Tfboletoconfig.lenderecocobrancaBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin

        if (freceberlocaliza.tabela['enderecocobranca'] <> null) and
          (freceberlocaliza.tabela.fieldbyname('enderecocobranca').AsString<>'') then

          text :=  freceberlocaliza.tabela.fieldbyname('enderecocobranca').AsString+ ' - '+
                   freceberlocaliza.tabela.fieldbyname('bairrocobranca').AsString +' - '+
                   freceberlocaliza.tabela.fieldbyname('municipiocobranca').AsString + '  CEP:'+
                   freceberlocaliza.tabela.fieldbyname('cepcobranca').AsString + ' '+
                   freceberlocaliza.tabela.fieldbyname('Ufcobranca').AsString

          else begin
             text := '';
             lenderecocobranca.Text :='';
          end;


end;

end.
