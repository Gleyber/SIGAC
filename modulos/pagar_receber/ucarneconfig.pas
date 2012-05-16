unit ucarneconfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Spin, Inifiles,
  RLReport,  RLFilters, RLDraftFilter, DBCtrls, ActnList,
  Buttons;

type
  Tfcarneconfig = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
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
    rparcela: TRadioButton;
    rdata: TRadioButton;
    rvencimento: TRadioButton;
    rvalor: TRadioButton;
    rcliente: TRadioButton;
    rdata1: TRadioButton;
    rparcela1: TRadioButton;
    rvencimento1: TRadioButton;
    rValor1: TRadioButton;
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
    Qcarne: TRLReport;
    banda: TRLBand;
    lvencimento: TRLDBText;
    ldata: TRLDBText;
    lparcela: TRLDBText;
    lvalor: TRLDBText;
    Button2: TButton;
    Button1: TButton;
    ActionList2: TActionList;
    abre: TAction;
    grava: TAction;
    lvalor1: TRLDBText;
    lvencimento1: TRLDBText;
    ldata1: TRLDBText;
    lparcela1: TRLDBText;
    lcliente: TRLMemo;
    SALTURA: TEdit;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    qcarneG: TRLReport;
    RLDetailGrid2: TRLDetailGrid;
    qcolunas: TRLDetailGrid;
    RLLabel1: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    LCLIENTE1: TRLMemo;
    RLDBText12: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel3: TRLLabel;
    er1: TRLLabel;
    er2: TRLLabel;
    er3: TRLLabel;
    ltitulo1: TRLAngleLabel;
    i1: TRLImage;
    ljuro: TRLLabel;
    procedure rparcelaClick(Sender: TObject);
    procedure rvencimentoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SCabecalhoKeyPress(Sender: TObject; var Key: Char);
    procedure tkvertChange(Sender: TObject);
    procedure tkvertEnter(Sender: TObject);
    procedure TkHorEnter(Sender: TObject);
    procedure TkHorChange(Sender: TObject);
    procedure rdataClick(Sender: TObject);
    procedure rvalorClick(Sender: TObject);
    procedure rclienteClick(Sender: TObject);
    procedure rdata1Click(Sender: TObject);
    procedure rparcela1Click(Sender: TObject);
    procedure rvencimento1Click(Sender: TObject);
    procedure rValor1Click(Sender: TObject);
    procedure abreExecute(Sender: TObject);
    procedure gravaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SALTURAKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure SALTURAExit(Sender: TObject);
    procedure qcolunasBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure lparcelaBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure lparcela1BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
    procedure qcarneGBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDBText10BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcarneconfig: Tfcarneconfig;

implementation
  uses udm,funcoes,  umanu, ureceberlocaliza;

{$R *.dfm}

procedure Tfcarneconfig.rparcelaClick(Sender: TObject);
begin
  TkHor.Position:=lparcela.TOP;
  TkVert.Position:=lparcela.Left;
end;

procedure Tfcarneconfig.rvencimentoClick(Sender: TObject);
begin
  TkHor.Position:=lvencimento.Left;
  TkVert.Position:=lvencimento.Top;
end;

procedure Tfcarneconfig.Button2Click(Sender: TObject);
begin

          freceberlocaliza.tabela.Filter := 'chave '''+ freceberlocaliza.tabela.fieldbyname('chave').AsString + '''';
          freceberlocaliza.tabela.Filtered := true;
          qcarne.Previewmodal;
          freceberlocaliza.tabela.Filtered := false;
end;

procedure Tfcarneconfig.SCabecalhoKeyPress(Sender: TObject; var Key: Char);
begin
          if not (key in ['0'..'9', #8]) then abort;
end;

procedure Tfcarneconfig.tkvertChange(Sender: TObject);
begin

  lpv.Caption := floattostr(Tkvert.position);

  if rparcela.checked then lparcela.top:=Tkvert.Position;
  if rdata.checked then ldata.top:=Tkvert.Position;
  if rvencimento.checked then lvencimento.top:=Tkvert.Position;
  if rvalor.checked then lvalor.top:=Tkvert.Position;
  if rcliente.checked then lcliente.top:=Tkvert.Position;
  if rparcela1.checked then lparcela1.top:=Tkvert.Position;
  if rdata1.checked then ldata1.top:=Tkvert.Position;
  if rvencimento1.checked then lvencimento1.top:=Tkvert.Position;
  if rvalor1.checked then lvalor1.top:=Tkvert.Position;


end;

procedure Tfcarneconfig.tkvertEnter(Sender: TObject);
begin
          //i := tkvert.Position;
end;

procedure Tfcarneconfig.TkHorEnter(Sender: TObject);
begin
//  i := barh.Position;
end;

procedure Tfcarneconfig.TkHorChange(Sender: TObject);
begin

  lph.Caption := floattostr(TkHor.position);

  if rparcela.checked then lparcela.left:=TkHor.Position;
  if rdata.checked then ldata.left:=TkHor.Position;
  if rvencimento.checked then lvencimento.left:=TkHor.Position;
  if rvalor.checked then lvalor.left:=TkHor.Position;
  if rcliente.checked then lcliente.left:=TkHor.Position;
  if rparcela1.checked then lparcela1.left:=TkHor.Position;
  if rdata1.checked then ldata1.left:=TkHor.Position;
  if rvencimento1.checked then lvencimento1.left:=TkHor.Position;
  if rvalor1.checked then lvalor1.left:=TkHor.Position;


end;

procedure Tfcarneconfig.rdataClick(Sender: TObject);
begin
  TkHor.Position:=ldata.Left;
  TkVert.Position:=ldata.Top;
end;

procedure Tfcarneconfig.rvalorClick(Sender: TObject);
begin
  TkHor.Position:=lvalor.Left;
  TkVert.Position:=lvalor.Top;
end;

procedure Tfcarneconfig.rclienteClick(Sender: TObject);
begin
  TkHor.Position:=lcliente.Left;
  TkVert.Position:=lcliente.Top;
end;

procedure Tfcarneconfig.rdata1Click(Sender: TObject);
begin
  TkHor.Position:=ldata1.Left;
  TkVert.Position:=ldata1.Top;
end;

procedure Tfcarneconfig.rparcela1Click(Sender: TObject);
begin
  TkHor.Position:=lparcela1.Left;
  TkVert.Position:=lparcela1.Top;
end;

procedure Tfcarneconfig.rvencimento1Click(Sender: TObject);
begin
  TkHor.Position:=lvencimento1.Left;
  TkVert.Position:=lvencimento1.Top;
end;

procedure Tfcarneconfig.rValor1Click(Sender: TObject);
begin
  TkHor.Position:=lValor1.Left;
  TkVert.Position:=lValor1.Top;
end;

procedure Tfcarneconfig.abreExecute(Sender: TObject);
var
Ini:TInifile;
begin

  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\carne.ini');

  SAltura.text:=floattostr(Ini.Readfloat('Config', 'Altura', 76.6));
  SLargura.Value:=Ini.ReadInteger('Config', 'Largura', 145);
  SMInferior.Value:=Ini.ReadInteger('Config', 'MInferior',  0);
  SMsuperior.Value:=Ini.ReadInteger('Config', 'MSuperior', 0);
  SMEsquerda.Value:=Ini.ReadInteger('Config', 'MEsquerda', 5);
  SMDireita.Value:=Ini.ReadInteger('Config', 'MDireita',  5);

  qcarne.PageSetup.PaperWidth:=SLargura.Value;
  qcarne.PageSetup.PaperHeight:=strtofloat(SAltura.text);

  qcarne.Margins.BottomMargin:=SMInferior.Value;
  qcarne.Margins.TopMargin:=SMsuperior.Value;
  qcarne.Margins.LeftMargin:=SMEsquerda.Value;
  qcarne.Margins.RightMargin:=SMDireita.Value;

  TkHor.Max:=qcarne.Width;
  TkVert.Max:=qcarne.Height;

  //Posição Top

  lparcela.top:=Ini.ReadInteger('lparcela', 'top',lparcela.top);
  ldata.top:=Ini.ReadInteger('ldata', 'top',ldata.top);
  lvencimento.top:=Ini.ReadInteger('lvencimento', 'top',lvencimento.top);
  lvalor.top:=Ini.ReadInteger('lvalor', 'top',lvalor.top);
  lcliente.top:=Ini.ReadInteger('lcliente', 'top',lcliente.top);
  lparcela1.top:=Ini.ReadInteger('lparcela1', 'top',lparcela1.top);
  ldata1.top:=Ini.ReadInteger('ldata1', 'top',ldata1.top);
  lvencimento1.top:=Ini.ReadInteger('lvencimento1', 'top',lvencimento1.top);
  lvalor1.top:=Ini.ReadInteger('lvalor1', 'top',lvalor1.top);

  lparcela.left:=Ini.ReadInteger('lparcela', 'left',lparcela.left);
  ldata.left:=Ini.ReadInteger('ldata', 'left',ldata.left);
  lvencimento.left:=Ini.ReadInteger('lvencimento', 'left',lvencimento.left);
  lvalor.left:=Ini.ReadInteger('lvalor', 'left',lvalor.left);
  lcliente.left:=Ini.ReadInteger('lcliente', 'left',lcliente.left);
  lparcela1.left:=Ini.ReadInteger('lparcela1', 'left',lparcela1.left);
  ldata1.left:=Ini.ReadInteger('ldata1', 'left',ldata1.left);
  lvencimento1.left:=Ini.ReadInteger('lvencimento1', 'left',lvencimento1.left);
  lvalor1.left:=Ini.ReadInteger('lvalor1', 'left',lvalor1.left);

  

  Ini.Free;


end;

procedure Tfcarneconfig.gravaExecute(Sender: TObject);
var
 Ini:TInifile;
begin



  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\carne.ini');

  Ini.Writefloat('Config', 'Altura', strtofloat(SAltura.text));
  Ini.WriteInteger('Config', 'Largura', SLargura.Value);
  Ini.WriteInteger('Config', 'MInferior', SMInferior.Value);
  Ini.WriteInteger('Config', 'MSuperior', SMsuperior.Value);
  Ini.WriteInteger('Config', 'MEsquerda', SMEsquerda.Value);
  Ini.WriteInteger('Config', 'MDireita', SMDireita.Value);

  Ini.WriteInteger('lparcela', 'top',lparcela.top);
  Ini.WriteInteger('ldata', 'top',ldata.top);
  Ini.WriteInteger('lvencimento', 'top',lvencimento.top);
  Ini.WriteInteger('lvalor', 'top',lvalor.top);
  Ini.WriteInteger('lcliente', 'top',lcliente.top);
  Ini.WriteInteger('lparcela1', 'top',lparcela1.top);
  Ini.WriteInteger('ldata1', 'top',ldata1.top);
  Ini.WriteInteger('lvencimento1', 'top',lvencimento1.top);
  Ini.WriteInteger('lvalor1', 'top',lvalor1.top);

  Ini.WriteInteger('lparcela', 'left',lparcela.left);
  Ini.WriteInteger('ldata', 'left',ldata.left);
  Ini.WriteInteger('lvencimento', 'left',lvencimento.left);
  Ini.WriteInteger('lvalor', 'left',lvalor.left);
  Ini.WriteInteger('lcliente', 'left',lcliente.left);
  Ini.WriteInteger('lparcela1', 'left',lparcela1.left);
  Ini.WriteInteger('ldata1', 'left',ldata1.left);
  Ini.WriteInteger('lvencimento1', 'left',lvencimento1.left);
  Ini.WriteInteger('lvalor1', 'left',lvalor1.left);

  Ini.Free;

end;

procedure Tfcarneconfig.FormCreate(Sender: TObject);
begin

    abreexecute(self);

end;

procedure Tfcarneconfig.SALTURAKeyPress(Sender: TObject; var Key: Char);
begin
        if not (key in['0'..'9',#8,'.']) then abort;
end;

procedure Tfcarneconfig.Button1Click(Sender: TObject);
begin

        gravaExecute(self);
        abreExecute(self);

end;

procedure Tfcarneconfig.SALTURAExit(Sender: TObject);
begin
        if  SALTURA.Text = '' then
            SALTURA.Text := '0';
end;

procedure Tfcarneconfig.qcolunasBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin


        lcliente1.Lines.clear;
        lcliente1.Lines.Add(freceberlocaliza.tabela.fieldbyname('nome').AsString);
        lcliente1.Lines.Add(freceberlocaliza.tabela.fieldbyname('endereco').AsString+' '+
                           freceberlocaliza.tabela.fieldbyname('numero').AsString+' '+
                           freceberlocaliza.tabela.fieldbyname('complemento').AsString +' '+

                             freceberlocaliza.tabela.FieldByName('municipio').AsString);
        lcliente1.Lines.Add('Cep: '+ freceberlocaliza.tabela.FieldByName('cep').AsString + ' UF: '+
                             freceberlocaliza.tabela.FieldByName('uf').AsString + ' Fone: '+
                             freceberlocaliza.tabela.FieldByName('fone').AsString);

end;

procedure Tfcarneconfig.lparcelaBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
        text := inttostr(freceberlocaliza.tabela.RecNo) + '/'+
                         inttostr(freceberlocaliza.tabela.RecordCount);
end;

procedure Tfcarneconfig.lparcela1BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
        text := inttostr(freceberlocaliza.tabela.RecNo) + '/'+
                         inttostr(freceberlocaliza.tabela.RecordCount);
end;

procedure Tfcarneconfig.qcarneGBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
          fdm.tbempresa.open;

                   i1.Picture := fmenu.imagelogo.Picture;

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
          fdm.tbempresa.close;

          fdm.tbconfig.Open;

          if fdm.tbconfig.fieldbyname('juro').AsFloat >0 then
             ljuro.Caption := '(Após '+fdm.tbconfig.fieldbyname('carencia').asstring+
                              ' dia(s) de atraso juros de '+fdm.tbconfig.fieldbyname('juro').asstring
                              +' ao dia )'
          else ljuro.Caption := '';

          fdm.tbconfig.close;

end;

procedure Tfcarneconfig.RLDBText10BeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
begin
        text := inttostr(freceberlocaliza.tabela.RecNo) + '/'+
                         inttostr(freceberlocaliza.tabela.RecordCount);
end;

end.
