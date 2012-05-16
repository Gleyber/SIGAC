unit uicliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Spin, Inifiles,
  RLFilters, RLDraftFilter, DBCtrls, ActnList,
  Buttons,  DB, DBClient, Provider, 
  RLReport;

type
  Tficliente = class(TForm)
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
    rbairro: TRadioButton;
    rmunicipio: TRadioButton;
    rcep: TRadioButton;
    ruf: TRadioButton;
    rnome: TRadioButton;
    rendereco: TRadioButton;
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
    qetiqueta: TRLReport;
    RLDetailGrid1: TRLDetailGrid;
    qcolunas: TRLDetailGrid;
    lnome: TRLDBText;
    lendereco: TRLDBText;
    lbairro: TRLDBText;
    lmunicipio: TRLDBText;
    lcep: TRLDBText;
    luf: TRLDBText;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    smqtd: TSpinEdit;
    smaltura: TSpinEdit;
    smespaco: TSpinEdit;
    Label10: TLabel;
    efonte: TSpinEdit;
    Label11: TLabel;
    Bevel1: TBevel;
    ActionList1: TActionList;
    abre: TAction;
    padrao: TAction;
    lempresa: TRLLabel;
    rempresa: TRadioButton;
    tabela: TClientDataSet;
    renderecoempresa: TRadioButton;
    GroupBox5: TGroupBox;
    rempresa1: TCheckBox;
    renderecoempresa1: TCheckBox;
    robs1: TCheckBox;
    robs: TRadioButton;
    lobs: TRLDBText;
    lnf: TRLDBText;
    rnf1: TCheckBox;
    rnf: TRadioButton;
    lenderecoempresa: TRLMemo;
    mostrar: TAction;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SCabecalhoKeyPress(Sender: TObject; var Key: Char);
    procedure tkvertChange(Sender: TObject);
    procedure tkvertEnter(Sender: TObject);
    procedure TkHorEnter(Sender: TObject);
    procedure TkHorChange(Sender: TObject);
    procedure rnomeClick(Sender: TObject);
    procedure renderecoClick(Sender: TObject);
    procedure rbairroClick(Sender: TObject);
    procedure rmunicipioClick(Sender: TObject);
    procedure rcepClick(Sender: TObject);
    procedure abreExecute(Sender: TObject);
    procedure padraoExecute(Sender: TObject);
    procedure rconfigClick(Sender: TObject);
    procedure qetiquetaBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rempresaClick(Sender: TObject);
    procedure renderecoempresaClick(Sender: TObject);
    procedure robsClick(Sender: TObject);
    procedure rufClick(Sender: TObject);
    procedure rnfClick(Sender: TObject);
    procedure mostrarExecute(Sender: TObject);
    procedure rempresa1Click(Sender: TObject);
    procedure lenderecoBeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
  img,endereco:boolean;
  controle,numero,nf:string;
  ds:tdatasource;
    { Public declarations }
  end;

var
  ficliente: Tficliente;

implementation
  uses udm,funcoes, umanu,  ucadg;

{$R *.dfm}

procedure Tficliente.FormCreate(Sender: TObject);
var
obs:string;
begin

        abreexecute(self);

        if rempresa1.Checked then
           lempresa.Caption := fantasiaempresa;


        if rnf1.Checked then
           lnf.Caption := nf;

        if robs1.Checked then begin
           obs:= msgi('Digite uma observação para o rodapé da etiqueta:',0);
           lobs.Text :=obs;
           lobs.Borders.DrawTop := length(obs)>0;
        end;

        if responsavel = 'VITALCRED' then begin
           lbairro.DataField :='bairrocobranca';
           lcep.DataField :='cepcobranca';
           lmunicipio.DataField :='municipiocobranca';
           luf.DataField :='ufcobranca';
        end;



end;

procedure Tficliente.Button1Click(Sender: TObject);
var
 Ini:TInifile;
begin

  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\etiquetacliente.ini');
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


  //Ini.WriteInteger('left', 'lempresa',lempresa.left);
  //Ini.WriteInteger('left', 'lenderecoempresa',lenderecoempresa.left);
  Ini.WriteInteger('left', 'lnome',lnome.left);
  Ini.WriteInteger('left', 'lendereco',lendereco.left);
  Ini.WriteInteger('left', 'lbairro',lbairro.left);
  Ini.WriteInteger('left', 'lmunicipio',lmunicipio.left);
  Ini.WriteInteger('left', 'lcep',lcep.left);
  Ini.WriteInteger('left', 'luf',luf.left);
  Ini.WriteInteger('left', 'lnf',lnf.left);
  //Ini.WriteInteger('left', 'lobs',lobs.left);


  Ini.Free;

  abreexecute(Self);

end;

procedure Tficliente.Button2Click(Sender: TObject);
begin
          qetiqueta.Previewmodal;
end;

procedure Tficliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
          Button1Click(self);
          release;
end;

procedure Tficliente.SCabecalhoKeyPress(Sender: TObject; var Key: Char);
begin
          if not (key in ['0'..'9', #8]) then abort;
end;

procedure Tficliente.tkvertChange(Sender: TObject);
begin

  lpv.Caption := floattostr(Tkvert.position);

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

procedure Tficliente.tkvertEnter(Sender: TObject);
begin
          //i := tkvert.Position;
end;

procedure Tficliente.TkHorEnter(Sender: TObject);
begin
//  i := barh.Position;
end;

procedure Tficliente.TkHorChange(Sender: TObject);
begin

  lph.Caption := floattostr(TkHor.position);

  if rnome.checked then lnome.left:=TkHor.Position;
  if rendereco.checked then lendereco.left:=TkHor.Position;
  if rbairro.checked then lbairro.left:=TkHor.Position;
  if rmunicipio.checked then lmunicipio.left:=TkHor.Position;
  if rcep.checked then lcep.left:=TkHor.Position;
  if ruf.checked then luf.left:=TkHor.Position;
  if rnf.checked then lnf.left:=TkHor.Position;


end;

procedure Tficliente.rnomeClick(Sender: TObject);
begin
  TkHor.Position:=lnome.Left;
  TkVert.Position:=lnome.top;
end;

procedure Tficliente.renderecoClick(Sender: TObject);
begin
  TkHor.Position:=lendereco.Left;
  TkVert.Position:=lendereco.top;
end;

procedure Tficliente.rbairroClick(Sender: TObject);
begin
  TkHor.Position:=lbairro.Left;
  TkVert.Position:=lbairro.top;
end;

procedure Tficliente.rmunicipioClick(Sender: TObject);
begin
  TkHor.Position:=lmunicipio.Left;
  TkVert.Position:=lmunicipio.top;
end;

procedure Tficliente.rcepClick(Sender: TObject);
begin
  TkHor.Position:=lcep.Left;
  TkVert.Position:=lcep.top;
end;

procedure Tficliente.abreExecute(Sender: TObject);
var
ini:TInifile;
begin


        fdm.tbempresa.Open;
        lempresa.Caption := fdm.tbempresa.fieldbyname('fantasia').AsString;

        if controle <> 'empresa' then
           fdm.tbempresa.close;





  Ini:=TInifile.Create(ExtractFilePath(ParamStr(0)) + 'imagem\etiquetacliente.ini');

  //Configuração do Papel
  efonte.Value:=Ini.ReadInteger('Config', 'tmfonte', efonte.Value);
  SAltura.Value:=Ini.ReadInteger('Config', 'Altura', SAltura.Value);
  SLargura.Value:=Ini.ReadInteger('Config', 'Largura', SLargura.Value);
  SMInferior.Value:=Ini.ReadInteger('Config', 'MInferior',  SMInferior.Value);
  SMsuperior.Value:=Ini.ReadInteger('Config', 'MSuperior', SMsuperior.Value);
  SMEsquerda.Value:=Ini.ReadInteger('Config', 'MEsquerda', SMEsquerda.Value);
  SMDireita.Value:=Ini.ReadInteger('Config', 'MDireita',  SMDireita.Value);
  smqtd.Value:=Ini.ReadInteger('Config', 'smqtd', smqtd.Value);
  smaltura.Value:=Ini.ReadInteger('Config', 'smaltura', smaltura.Value);
  smespaco.Value:=Ini.ReadInteger('Config', 'smespaco',  smespaco.Value);

  rempresa1.Checked:= Ini.ReadBool('Config', 'rempresa1', false);
  renderecoempresa1.Checked:= Ini.ReadBool('Config', 'renderecoempresa1', false);
  rnf1.Checked:= Ini.ReadBool('Config', 'rnf1', false);
  robs1.Checked:= Ini.ReadBool('Config', 'robs1', false);


        lempresa.Font.Size := efonte.Value + 2;
        lnome.Font.Size := efonte.Value;
        lendereco.Font.Size := efonte.Value;
        lbairro.Font.Size := efonte.Value;
        lcep.Font.Size := efonte.Value;
        lmunicipio.Font.Size := efonte.Value;
        luf.Font.Size := efonte.Value;
        lnf.Font.Size := efonte.Value;
        lobs.Font.Size := efonte.Value+2;

  qetiqueta.PageSetup.PaperWidth:=SLargura.Value;
  qetiqueta.PageSetup.PaperHeight:=SAltura.Value;
  qetiqueta.Margins.BottomMargin:=SMInferior.Value;
  qetiqueta.Margins.TopMargin:=SMsuperior.Value;
  qetiqueta.Margins.LeftMargin:=SMEsquerda.Value;
  qetiqueta.Margins.RightMargin:=SMDireita.Value;
  qcolunas.Height:=smaltura.Value;
  qcolunas.ColSpacing :=smespaco.Value;
  qcolunas.ColCount :=smqtd.Value;

  //Posição Top

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

  //Posição Left

  //lempresa.left:=Ini.ReadInteger('left', 'lempresa',lempresa.left);
  //lenderecoempresa.left:=Ini.ReadInteger('left', 'lenderecoempresa',lenderecoempresa.left);
  lnome.left:=Ini.ReadInteger('left', 'lnome',lnome.left);
  lendereco.left:=Ini.ReadInteger('left', 'lendereco',lendereco.left);
  lbairro.left:=Ini.ReadInteger('left', 'lbairro',lbairro.left);
  lmunicipio.left:=Ini.ReadInteger('left', 'lmunicipio',lmunicipio.left);
  lcep.left:=Ini.ReadInteger('left', 'lcep',lcep.left);
  luf.left:=Ini.ReadInteger('left', 'luf',luf.left);
  lnf.left:=Ini.ReadInteger('left', 'lnf',lnf.left);
  //lobs.left:=Ini.ReadInteger('left', 'lobs',lobs.left);

  Ini.Free;
  mostrarExecute(self);

end;

procedure Tficliente.padraoExecute(Sender: TObject);
begin

     msg('Deseja vaotar à configuração padrão?',2);
       if fileexists(ExtractFilePath(ParamStr(0)) + 'imagem\etiquetacliente.ini') then
          deletefile(ExtractFilePath(ParamStr(0)) + 'imagem\etiquetacliente.ini');
          abreExecute(self);

end;

procedure Tficliente.rconfigClick(Sender: TObject);
begin

       if fileexists(ExtractFilePath(ParamStr(0)) + 'imagem\etiquetacliente.ini') then
         abreExecute(self)
       else
         padraoExecute(self);
end;

procedure Tficliente.qetiquetaBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
t,w:integer;
begin


       if controle = 'cliente' then begin

               lnome.DataSource := ds;
               lendereco.DataSource := ds;
               lbairro.DataSource := ds;
               lcep.DataSource := ds;
               luf.DataSource := ds;
               lnome.DataSource := ds;
               lmunicipio.DataSource := ds;
               qetiqueta.DataSource := ds;
       end else

       if controle = 'empresa' then begin
               lnome.DataSource := fdm.dsempresa;
               lendereco.DataSource := fdm.dsempresa;
               lbairro.DataSource := fdm.dsempresa;
               lcep.DataSource := fdm.dsempresa;
               luf.DataSource := fdm.dsempresa;
               lmunicipio.DataSource := fdm.dsempresa;

       end else


       if controle = 'cadg' then begin
               lnome.DataSource := fcadg.ds;
               lendereco.DataSource := fcadg.ds;
               lbairro.DataSource := fcadg.ds;
               lcep.DataSource := fcadg.ds;
               luf.DataSource := fcadg.ds;
               lnome.DataSource := fcadg.ds;
               qetiqueta.DataSource := fcadg.ds;
               lmunicipio.DataSource := fcadg.ds;
       end else


       if controle = 'nf' then begin
           lnome.DataSource := fdm.dsquery1;
           lendereco.DataSource := fdm.dsquery1;
           lbairro.DataSource := fdm.dsquery1;
           lcep.DataSource := fdm.dsquery1;
           luf.DataSource := fdm.dsquery1;
           lnome.DataSource := fdm.dsquery1;
           qetiqueta.DataSource := fdm.dsquery1;
           lmunicipio.DataSource := fdm.dsquery1;
           lnf.Text :=nf;
           lnome.Text := 'Nome: ';
           lendereco.Text := 'End.: ';
           lbairro.Text := 'Bairro: ';
           lcep.Text := 'Cep: ';;
           lmunicipio.Text := 'Cidade: ';
           luf.Text := 'UF: ';
       end;


       t := lempresa.Top;
       lempresa.Align := fatop;
       w := lempresa.Width;
       lempresa.Align := fanone;
       lempresa.Top :=t;
       lenderecoempresa.Width := w;
       lobs.Width := w;

        if renderecoempresa1.Checked then
           lenderecoempresa.Lines.Add(dadosempresa);       


end;

procedure Tficliente.rempresaClick(Sender: TObject);
begin
  TkHor.Position:=lempresa.left;
  TkVert.Position:=lempresa.top;

end;

procedure Tficliente.renderecoempresaClick(Sender: TObject);
begin
  TkHor.Position:=lenderecoempresa.left;
  TkVert.Position:=lenderecoempresa.top;

end;

procedure Tficliente.robsClick(Sender: TObject);
begin
  TkHor.Position:=lobs.Left;
  TkVert.Position:=lobs.top;

end;

procedure Tficliente.rufClick(Sender: TObject);
begin
  TkHor.Position:=luf.Left;
  TkVert.Position:=luf.top;

end;

procedure Tficliente.rnfClick(Sender: TObject);
begin
  TkHor.Position:=lnf.Left;
  TkVert.Position:=lnf.top;

end;

procedure Tficliente.mostrarExecute(Sender: TObject);
begin
        lempresa.Visible := rempresa1.Checked;
        lenderecoempresa.Visible := renderecoempresa1.Checked;
        lnf.Visible := rnf1.Checked;
        lobs.Visible := robs1.Checked;

end;

procedure Tficliente.rempresa1Click(Sender: TObject);
begin
        mostrarExecute(self);
end;

procedure Tficliente.lenderecoBeforePrint(Sender: TObject;
  var Text: String; var PrintIt: Boolean);
var
  vital:string;
begin

       if responsavel = 'VITALCRED' then
          vital :='cobranca';

       if controle = 'cadg' then
          text := fcadg.tabela.fieldbyname('endereco').AsString + '  '+
                  fcadg.tabela.fieldbyname('numero').AsString + '  '+
                  fcadg.tabela.fieldbyname('complemento').AsString

       else if controle = 'cliente' then
          text := tabela.fieldbyname('endereco'+vital).AsString + '  '+
                  tabela.fieldbyname('numero'+vital).AsString + '  '+
                  tabela.fieldbyname('complemento'+vital).AsString

       else if controle = 'empresa' then
          text := fdm.tbempresa.fieldbyname('endereco').AsString + '  '+
                  fdm.tbempresa.fieldbyname('numero').AsString + '  '+
                  fdm.tbempresa.fieldbyname('Complemento').AsString

       else if controle = 'nf' then
          text := 'End.: '+fdm.tbquery1.fieldbyname('endereco').AsString + '  '+
                  fdm.tbquery1.fieldbyname('numero').AsString + '  '+
                  fdm.tbquery1.fieldbyname('complemento').AsString;



end;

end.


