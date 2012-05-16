unit uimp;

interface

uses

  rltypes,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RLReport, ComCtrls,  ActnList, Buttons,
   ExtDlgs,  Grids, DBGrids, DB, DBClient,
  Provider, ZAbstractRODataset, ZAbstractDataset, ZDataset,shellapi,
  ExtCtrls, Spin;

type
  Tfimp = class(TForm)
    Progresso1: TProgressBar;
    ActionList1: TActionList;
    fontepag: TAction;
    contar: TAction;
    Label35: TLabel;
    btnimprimir: TBitBtn;
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    rpagina: TRadioGroup;
    rfonte: TRadioGroup;
    Label36: TLabel;
    etitulo: TEdit;
    SpeedButton1: TSpeedButton;
    vimage: TImage;
    rendereco: TCheckBox;
    Label37: TLabel;
    m2: TMemo;
    opendialog: TOpenPictureDialog;
    rqtd: TCheckBox;
    TabSheet3: TTabSheet;
    rcoluna: TRadioGroup;
    tbsoma: TClientDataSet;
    grupog: TRadioGroup;
    StaticText1: TStaticText;
    tb: TClientDataSet;
    tbnome: TStringField;
    tbcap: TStringField;
    tbx: TStringField;
    tbtm: TIntegerField;
    tbpos: TIntegerField;
    gsrupog: TRadioGroup;
    soma: TAction;
    tbsomanome: TStringField;
    tbsomacap: TStringField;
    tbsomaX: TStringField;
    tbindex: TIntegerField;
    tbsomaindex: TIntegerField;
    tbini: TClientDataSet;
    tbininome: TStringField;
    tbinix: TStringField;
    sitconta: TAction;
    r6: TMemo;
    Label1: TLabel;
    rlin: TCheckBox;
    rcol: TCheckBox;
    Label2: TLabel;
    ealtura: TEdit;
    cpagina: TCheckBox;
    tbinisoma: TClientDataSet;
    tbinisomanome: TStringField;
    tbinisomaX: TStringField;
    cborda: TCheckBox;
    Label4: TLabel;
    llargura: TSpinEdit;
    gsrupog3: TRadioGroup;
    TabSheet4: TTabSheet;
    gindex2: TComboBox;
    Label3: TLabel;
    gindex: TComboBox;
    Label13: TLabel;
    gsrupog4: TRadioGroup;


    procedure criacampo(tm,f:integer;nomecampo,cap:string;num:integer;ds:TDataSource;s,s1,s3,s4:boolean);
    procedure titBeforePrint(Sender: TObject; var PrintIt: Boolean);


    procedure rpaginaClick(Sender: TObject);
    procedure fontepagExecute(Sender: TObject);
    procedure rfonteClick(Sender: TObject);
    procedure contarExecute(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure rCodigoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure gsrupogClick(Sender: TObject);
    procedure somaExecute(Sender: TObject);
    procedure sitcontaExecute(Sender: TObject);
    procedure ealturaKeyPress(Sender: TObject; var Key: Char);
    procedure renderecoClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure cgrupoClick(Sender: TObject);
    procedure gindex2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grupogClick(Sender: TObject);
    procedure gsrupog3Click(Sender: TObject);
    procedure gsrupog4Click(Sender: TObject);
  private

        fonte, caracteres, local:integer;
        indexgrupo,indexgrupoS,indexgrupo3,indexgrupo4,indexcampo,indexcampo2:string;
        qimpressao: TRLReport;
        rlpainel: TRLPanel;
        rl1,rl3,rl4, tsoma1, tsoma2, tsoma3, tsoma4 : TRLBand;
        rl,rl_3,rl_4:TRLDetailGrid;
        ltm: TRLLabel;

    { Private declarations }
  public
    tabest:tclientdataset;
    dstb:tdatasource;
    tbz:tzquery;
    tbin,titulo,rodape:string;
    { Public declarations }
    constructor Create(AOwner: TComponent; ds:tdatasource;
                                           tabes:tclientdataset;tbz_:tzquery;
                                           tbi,titul,rodap:string); reintroduce;

  end;

var
  fimp: Tfimp;

    const descricao1: integer = 248;

implementation

uses   udm, funcoes;

{$R *.dfm}

constructor Tfimp.Create(AOwner: TComponent; ds:tdatasource;
                                           tabes:tclientdataset;tbz_:tzquery;
                                           tbi,titul,rodap:string);
begin

  Inherited Create(AOwner);
        dstb := tdatasource.Create (application);
        dstb := ds;

        //se clientdataset
        if tabes <> nil then begin
           tabest :=  tclientdataset.Create(application);
           tabest:= tabes;
           tabest.Open;
        end;

        //se tzquery
        if tbz_ <> nil then begin
           tbz :=  tzquery.Create(application);
           tbz:= tbz_;
           tbz.Open;
        end;

        if (tbi = 'CONSIG') and(fileexists('c:\rel.txt')) then r6.Lines.LoadFromFile('c:\rel.txt');

        tbin:=tbi;
        titulo :=titul;
        rodape :=rodap;
        etitulo.Text := titul ;
        m2.Lines.Add(rodap) ;
end;


procedure Tfimp.titBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
         if (qimpressao.PageNumber =2) and
            (cpagina.Checked=false) and
            (rendereco.Checked) then
             rlpainel.Destroy;
end;


procedure tfimp.criacampo(tm,f:integer;nomecampo,cap:string;num:integer;ds:TDataSource;s,s1,s3,s4:boolean);
var
  nome: TRLDBmemo;
  nome1: trllabel;
  nome2:TRLDBText;
  i:integer;
  soma: TRLDBResult;
begin

  ltm.Font.Size := f;

  ltm.Caption:='';

  for i := 1 to tm do
      ltm.Caption := ltm.Caption +  '0';

  if ds.DataSet.fieldbyname(nomecampo).ClassName = 'TMemoField' then begin
     nome := TRLDBmemo.Create(application);
     with nome do begin
       Height := rl.Height;
       autosize := false;
       Parent := rl;
       align := faLeftBottom;
       width := ltm.Width;
       DataField := nomecampo;
       DataSource := ds;
       Font.Name := 'Arial Narrow';
       Font.Size :=f;
       transparent := true;

       if rcol.Checked then
          Borders.DrawLeft := true;

       if rlin.Checked then
          Borders.DrawBottom := true;

    //    height := tmfonte+3;

       if num = 1 then
          alignment := taRightJustify
       else if num = 2 then
          alignment := tacenter;

       if tbin = 'impfincli' then
          font.Name :='Lucida Console';
       top := -2;
     end;


  end else begin

     nome2 := TRLDBText.Create(application);
     with nome2 do begin
       Height := rl.Height;
       autosize := false;
       Parent := rl;
       align := faLeftBottom;
       width := ltm.Width;
       DataField := nomecampo;
       DataSource := ds;
       Font.Name := 'Arial Narrow';
       Font.Size :=f;
       if (tbin = 'bcc') and ((lowercase(nomecampo)='data') or (lowercase(nomecampo)='saldo')) then
           Font.Style := [fsbold];

       transparent := true;

       if rcol.Checked then
          Borders.DrawLeft := true;

       if rlin.Checked then
          Borders.DrawBottom := true;

    //    height := tmfonte+3;

       if num = 1 then
          alignment := taRightJustify
       else if num = 2 then
          alignment := tacenter;

       if tbin = 'impfincli' then
          font.Name :='Lucida Console';
       top := -2;
     end;
  end;


  nome1 := trllabel.Create(application);
  with nome1 do begin
    Parent := rl1;
    align := faLeftBottom;
    autosize := false;
    width := ltm.Width;
    Font.Name := 'Arial Narrow';
    Font.Size :=f;
    caption := cap;
    font.Style :=   [fsbold];

    if rcol.Checked then
        Borders.DrawLeft := true;

    if rlin.Checked then
        Borders.DrawBottom := true;

    if num = 1 then
       alignment := taRightJustify
    else if num = 2 then
       alignment := tacenter;
   end;


  //somar dados
  soma := TRLDBResult.Create(application);
  with soma do begin
    Parent := tsoma1;

    align := faLeftBottom;
    autosize := false;
    width := ltm.Width;
    Font.Name := 'Arial Narrow';
    if (indexgrupo<>'') or (indexgrupos<>'') or (indexgrupo3<>'') then  Font.Color:=$000000B9;
    Font.Size :=f;
    transparent := true;
    alignment := taRightJustify;
    font.Style :=   [fsbold];
    Info := riSum;
    top := 0;

    if s then begin
      // text := ' = ';
       DataField := nomecampo;
       DataSource := ds;
       displaymask :=',0.00';
       Borders.DrawTop := True;
    end else
       Info := riSimple;
  end;


    
  //somar dados 2º grupo
  soma := TRLDBResult.Create(application);
  with soma do begin
    Parent := tsoma2;

    align := faLeftBottom;
    autosize := false;
    width := ltm.Width;
    Font.Name := 'Arial Narrow';
    Font.Color := $00000040;
    Font.Size :=f;
    transparent := true;
    alignment := taRightJustify;
    font.Style :=   [fsbold];
    Info := riSum;
    top := 0;

    if s1 then begin
//       text := indexgrupos+' = ';
       DataField := nomecampo;
       DataSource := ds;
       displaymask :=',0.00';
       Borders.DrawTop := True;
    end else
       Info := riSimple;
  end;


  //somar dados 3º grupo
  soma := TRLDBResult.Create(application);
  with soma do begin
    Parent := tsoma3;

    align := faLeftBottom;
    autosize := false;
    width := ltm.Width;
    Font.Name := 'Arial Narrow';
    Font.Color := clMaroon;

    Font.Size :=f;
    transparent := true;
    alignment := taRightJustify;
    font.Style :=   [fsbold];
    Info := riSum;
    top := 0;

    if s3 then begin
    //   text := indexgrupo3+' = ';
       DataField := nomecampo;
       DataSource := ds;
       displaymask :=',0.00';
       Borders.DrawTop := True;
    end else
       Info := riSimple;
  end;


  //somar dados 4º grupo
  soma := TRLDBResult.Create(application);
  with soma do begin
    Parent := tsoma4;

    align := faLeftBottom;
    autosize := false;
    width := ltm.Width;
    Font.Name := 'Arial Narrow';
    Font.Size :=f;

    transparent := true;
    alignment := taRightJustify;
    font.Style :=   [fsbold];
    Info := riSum;
    top := 0;

    if s4 then begin
      // text := indexgrupo4+' = ';
       DataField := nomecampo;
       DataSource := ds;
       displaymask :=',0.00';
       Borders.DrawTop := True;
    end else
       Info := riSimple;
  end;

end;





procedure Tfimp.rpaginaClick(Sender: TObject);
begin
      if fimp.Active then
        fontepagExecute(self);
end;

procedure Tfimp.fontepagExecute(Sender: TObject);
var
i:integer;
begin
        if rpagina.ItemIndex = 0 then begin

           if rfonte.ItemIndex = 0 then
              fonte := 160
           else if rfonte.ItemIndex = 1 then
              fonte := 150
           else if rfonte.ItemIndex = 2 then
              fonte := 110
           else if rfonte.ItemIndex = 3 then
              fonte := 90
           else if rfonte.ItemIndex = 4 then
              fonte := 76

        end else if rpagina.ItemIndex = 1 then begin


           if rfonte.ItemIndex = 0 then
              fonte := 250
           else if rfonte.ItemIndex = 1 then
              fonte := 230
           else if rfonte.ItemIndex = 2 then
              fonte := 165
           else if rfonte.ItemIndex = 3 then
              fonte := 137
           else if rfonte.ItemIndex = 4 then
              fonte := 115
        end;

        i:=  trunc(fonte /(rcoluna.ItemIndex + 1)) ;

        Progresso1.Max := i;

        if pagecontrol1.ActivePageIndex =1  then
        with sender as tcheckbox do begin
             tb.Locate('nome',name,[]);
             tb.Edit;


             if checked then begin
                caracteres :=  caracteres + tb.fieldbyname('tm').AsInteger;
                tb['x'] :='X';
             end else begin
               caracteres :=  caracteres - tb.fieldbyname('tm').AsInteger;
               tb['x'] :=null;
             end;

             tb.Post;
        end;

        contarExecute(self);
end;

procedure Tfimp.rfonteClick(Sender: TObject);
begin
                fontepagExecute(self);
end;

procedure Tfimp.contarExecute(Sender: TObject);
var
i:integer;
begin

          progresso1.Position := caracteres;

          i:=  trunc(fonte /(rcoluna.ItemIndex + 1)) ;

          {if progresso1.Position >= i then  begin
             if Active then
               msg('Você atingiu a área total da impressão. Reconfigure para visualizar todo o relatório sem corte!',0);

             btnimprimir.Enabled := false;
          end else   btnimprimir.Enabled := true;}

end;

procedure Tfimp.BitBtn2Click(Sender: TObject);
begin
        close;
end;

procedure Tfimp.FormCreate(Sender: TObject);
begin

        qtdlinha:=0;
        ii:=0;
        jj:=0;

        TabSheet1.Show;

        tb.CreateDataSet;
        tb.Open;

        tbsoma.CreateDataSet;
        tbsoma.Open;

    if FileExists(servpath+'imagem\' + tbin+'.cds') then begin
       tbini.FileName := servpath+'imagem\' + tbin+'.cds';
       tbini.Open;
    end;

    if FileExists(servpath+'imagem\' + tbin+'S.cds') then begin
       tbinisoma.FileName := servpath+'imagem\' + tbin+'S.cds';
       tbinisoma.Open;
    end;

    fdm.tbconfig.Open;

    try
    ealtura.Text := fdm.tbconfig.fieldbyname('Areport').AsString;
    except
    end;
    fdm.tbconfig.close;

    ltm:= TRLLabel.Create(application) ;

end;

procedure Tfimp.SpeedButton1Click(Sender: TObject);
begin

  opendialog.FileName := '';
  opendialog.Execute;

  if opendialog.FileName <> '' then
    vimage.Picture.LoadFromFile(opendialog.FileName)
  else
    vimage.Picture := nil;

end;

procedure Tfimp.rCodigoClick(Sender: TObject);
begin
        fontepagExecute(self);
end;

procedure Tfimp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        tb.First;

              tbini.Close;
              tbini.CreateDataSet;

        while not tb.Eof do begin
              tbini.Insert;
              tbini['nome']:= tb.fieldbyname('nome').AsString;
              tbini['x']:= tb.fieldbyname('x').AsString;
              tbini.Post;
              tb.Next;
        end;

        try
           tbini.SaveToFile(servpath+'imagem\'+ tbin+'.cds');
        except msg('O programa não está encontrando este caminho: '+ servpath+'imagem\',0);
               close;
        end;
        tbini.close;


        tbsoma.First;

              tbinisoma.Close;
              tbinisoma.CreateDataSet;

        while not tbsoma.Eof do begin
              tbinisoma.Insert;
              tbinisoma['nome']:= tbsoma.fieldbyname('nome').AsString;
              tbinisoma['x']:= tbsoma.fieldbyname('x').AsString;
              tbinisoma.Post;
              tbsoma.Next;
        end;

        try
           tbinisoma.SaveToFile(servpath +'imagem\'+ tbin+'S.cds');
        except msg('O programa não está encontrando este caminho: '+ servpath+'imagem\',0);
               close;
        end;

        tbinisoma.close;

        tbsoma.close;
        tb.close;
        tp:=0;


           fimp:=nil;
           release;
end;

procedure Tfimp.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
        if not (key in['0'..'9',#8,',','-']) then abort;
end;

procedure Tfimp.gsrupogClick(Sender: TObject);
begin
       if gsrupog.ItemIndex >0 then begin
          tb.Locate('cap',gsrupog.Items[gsrupog.ItemIndex] ,[]);
          indexgrupos:= tb['nome'];
       end else indexgrupos :='';
end;

procedure Tfimp.somaExecute(Sender: TObject);
begin

       with sender as tcheckbox do begin
          tbsoma.Locate('nome',copy(name,2,40) ,[]);
          tbsoma.edit;

          if checked then
             tbsoma['X']:= 'X'
          else
             tbsoma['X']:= null;

          tbsoma.Post;
       end;


end;

procedure Tfimp.sitcontaExecute(Sender: TObject);
var
  nome: TRLDBResult;
  nome1: trllabel;
  i:integer;
begin

  ltm.Caption:='';

  for i := 1 to 13 do
      ltm.Caption := ltm.Caption +  '0';


  nome := TRLDBResult.Create(application);
  with nome do begin
    nome.Height := rl.Height;
    autosize := false;
    Parent := rl;
    align := faLeftBottom;
    width := ltm.Width;
    DataField := 'valor';
    DataSource := dstb;
    Font.Name := 'Arial';
    Font.Size :=strtoint(rfonte.Items[rfonte.ItemIndex]) ;
    transparent := true;
    alignment := taRightJustify;
    font.Style :=   [fsbold];
    Info := riSum;
    top := -2;
    displaymask :=',0.00';
    end;

          nome1 := trllabel.Create(application);
          with nome1 do begin
            Parent := rl1;
            align := faLeftBottom;
            autosize := false;
            width := ltm.Width;
            Font.Name := 'Arial';
            Font.Size :=ltm.Font.Size;
            caption := 'Acúmulo';
            font.Style :=   [fsbold];
            alignment := taRightJustify;
          end;

end;

procedure Tfimp.ealturaKeyPress(Sender: TObject; var Key: Char);
begin
        if not(key in['0'..'9',#8]) then abort;
end;

procedure Tfimp.renderecoClick(Sender: TObject);
begin
        cpagina.Visible := rendereco.Checked;
        cborda.Visible := rendereco.Checked;
end;

procedure Tfimp.btnimprimirClick(Sender: TObject);
var

ufcep,cmp,exp,imp,ind,indtb,qt:string;
nome : TRLDBText;
i1: TImage;
m1,LTITULO: TRLAngleLabel;
e0,e1,e2,e3,e4: TRLLabel;
ldatahora: TRLSystemInfo;
r6_,M2_: TRLMemo;
ggrupo2: TRLGroup;
tit,RLBand1,rg2,rg3, rg4: TRLBand;
lgrupo2,lg2,lg3, lg4: TRLDBText;
lqtd: TRLDBResult;
IM2: timage;
tmfonte:integer;
som1,som2,som3,som4,nasc:boolean;
list:tstrings;

begin

       local :=0;

       if (Progresso1.Position = 0) and (active=false) then begin
           show;
           abort;

       end else if Progresso1.Position = 0 then begin
          Application.MessageBox('Você deve escolher os campos que vão imprimir!',
                                 'Erro', 0 + MB_ICONerror);
          abort;
       end;


       imp:='1';
       if inputquery('Imprimir', 'Digite uma opção de impressão:' + #13 + #13 +
                     '1 = Imprimir'+#13+
                     '2 = Exportar'+#13+
                     '3 = Exportar para o Excel (apenas 1 planilha)'+#13+
                     'Esc = Cancela ', imp) then  else

          if active=false then begin
             close;
             abort;
          end else abort;

       if (imp<>'1') and (imp<>'2') and (imp<>'3') then begin
           Application.MessageBox('Escolha uma opção válida!!!', 'Atenção', 0 + MB_ICONWARNING);

          if active=false then begin
             close;
             abort;
          end else abort;
       end;   


          if imp='3' then begin
             list := tstringlist.Create;

             //timblre
             if rendereco.Checked then begin
                fdm.tbempresa.Open;
                list.Add(fdm.tbempresa.fieldbyname('fantasia').AsString);

                      list.Add('Endereço: ' + fdm.tbempresa.fieldbyname('Endereco').AsString + ' - '+
                                   fdm.tbempresa.fieldbyname('numero').AsString + '   '+
                                   fdm.tbempresa.fieldbyname('Complemento').AsString + ' - '+
                                   '   Birro: ' + fdm.tbempresa.fieldbyname('bairro').AsString);



                      list.Add('Cidade: '+fdm.tbempresa.fieldbyname('municipio').AsString+
                                  '   UF: ' + fdm.tbempresa.fieldbyname('uf').AsString +
                                  '   CEP: '+  fdm.tbempresa.fieldbyname('cep').AsString);


                      list.Add('CNPJ: ' + fdm.tbempresa.fieldbyname('cnpj').AsString+
                                 '  IE: '+ fdm.tbempresa.fieldbyname('ie').AsString) ;

                      list.Add('E-Mail: ' + fdm.tbempresa.fieldbyname('email').AsString+
                              '   Site: ' + fdm.tbempresa.fieldbyname('site').AsString);


                list.Add(' ');
                list.Add(' ');
                fdm.tbempresa.Close;
             end;


             //nome das colunas
             tb.First;
             while not tb.Eof do begin
                   if tb['x'] = 'X' then
                      if cmp= '' then
                         cmp :=tb.fieldbyname('cap').AsString
                      else
                         cmp :=cmp + '	'+ tb.fieldbyname('cap').AsString;
                     tb.Next;
             end;

            list.Add(cmp);
            list.Add(' ');



           if (tbz <> nil) and (tbz.Active) then begin
             tbz.First;
             while not tbz.Eof do begin

                   cmp :='';
                   tb.First;
                   while not tb.Eof do begin
                         if tb['x'] = 'X' then
                            if cmp= '' then
                               cmp :=tbz.fieldbyname(tb.fieldbyname('nome').AsString).AsString
                            else
                               cmp :=cmp + '	'+ tbz.fieldbyname(tb.fieldbyname('nome').AsString).AsString;

                         tb.Next;
                   end;

                   list.Add(cmp);
                   tbz.Next;
             end;




           end else begin
             tabest.First;
             tabest.DisableControls;
             while not tabest.Eof do begin

                   cmp :='';
                   tb.First;
                   while not tb.Eof do begin
                         if tb['x'] = 'X' then
                            if cmp= '' then
                               cmp :=tabest.fieldbyname(tb.fieldbyname('nome').AsString).AsString
                            else
                               cmp :=cmp + '	'+ tabest.fieldbyname(tb.fieldbyname('nome').AsString).AsString;

                         tb.Next;
                   end;

                   list.Add(cmp);
                   tabest.Next;
             end;
             tabest.EnableControls;

          end;



             try
                list.SaveToFile('c:\impexcel.xls');
                ShellExecute(Handle, 'Open', 'c:\impexcel.xls', '', Nil, sw_ShowMaximized);
             except
                Application.MessageBox('A planilha impexcel está aberta, feche-a, para exportar novamente.', 'Atenção', 0 + MB_ICONEXCLAMATION);
             end;

             list.Destroy;
             if active=false then close;

          end else begin

        qimpressao:= TRLReport.Create(application);
        with qimpressao do begin;
          Top := -2000;
          left := -300;
          parent:= TabSheet2;
          Width := 794;
          Height := 1123;
//          DefaultFilter := fdm.filtro;
          PageSetup.PaperSize := fpCustom;
          PageSetup.PaperWidth := 210;

          if strtofloat(ealtura.text) >1 then
             PageSetup.PaperHeight:=strtofloat(ealtura.text)
          else
             PageSetup.PaperHeight := 297;

           if rpagina.ItemIndex = 0 then
              PageSetup.Orientation := poPortrait
           else
              PageSetup.Orientation := poLandscape;

          ExpressionParser := fdm.RLExpressionParser1;
          DataSource :=dstb;
        end;

       ltm.Font.Size :=  strtoint(rfonte.Items[rfonte.itemindex]);
       tmfonte :=  strtoint(rfonte.Items[rfonte.itemindex]) ;

        //titulo do relatorio

        tit:= TRLBand.Create(application);
        with tit do begin
             parent:=qimpressao;
             Height := 133;
             AutoSize := True;
             BandType := btHeader;
             BeforePrint := titBeforePrint;
        end;


        if rendereco.Checked then begin


              //painel do timbre da impressao
              rlpainel:= TRLPanel.Create(application);
              with rlpainel do begin
                   parent:=tit;
                   Height := 87;
                   Align := faTop;

                   if cborda.Checked then begin
                       Borders.DrawTop := true;
                       Borders.DrawLeft := true;
                       Borders.DrawRight := true;
                       Borders.DrawBottom := true;
                   end;

              end;
              fdm.tbempresa.open;


        if responsavel <> '13.097.477/0001-89' then begin//negocie brasil

                 //imagem
                 i1:= TImage.Create(application);
                 with i1 do begin
                      parent:=rlpainel;
                      Left := 5;
                      Top := 4;
                      Width := 95;
                      Height := 69;
                      Stretch := True;

                      if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\' +fdm.tbempresa.FieldByName('codigo').AsString + '.jpg')) then
                         Picture.LoadFromFile(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\' + fdm.tbempresa.FieldByName('codigo').AsString + '.jpg'));
                 end;

                 //nome e endereco empresa
                 m1:= TRLAngleLabel.Create(application);
                 with m1 do begin
                         parent:= rlpainel;
                         Left := 111;
                         Top := 4;
                         Width := 606;
                         Height := 29;
                         Alignment := taCenter;
                         AutoSize := False;
                         Font.Charset := DEFAULT_CHARSET;
                         Font.Color := clBlack;
                         //Font.Height := -24;
                         Font.Name := 'Arial';
                         Font.Style := [fsBold];
                         ParentFont := False;
                         caption := fdm.tbempresa.fieldbyname('fantasia').AsString;
                 end;


                 ufcep := 'UF: ' + fdm.tbempresa.fieldbyname('uf').AsString + '  CEP: '+
                                              fdm.tbempresa.fieldbyname('cep').AsString ;

                 e0:= TRLLabel.Create(application) ;
                 with e0 do begin
                          parent:=rlpainel;
                          Left := 111;
                          Top := 29;
                          Width := 606;
                          Height := 16;
                          Alignment := taCenter;
                          AutoSize := False;
                          Color := clWhite;
                          Font.Charset := ANSI_CHARSET;
                          Font.Color := clBlack;
                          Font.Height := -11;
                          Font.Name := 'Arial';
                          Caption := 'CNPJ: '+fdm.tbempresa.fieldbyname('cnpj').AsString +
                                     ' - IE:'+ fdm.tbempresa.fieldbyname('ie').AsString ;
                  end;


                 e1:= TRLLabel.Create(application) ;
                 with e1 do begin
                          parent:=rlpainel;
                          Left := 111;
                          Top := 41;
                          Width := 606;
                          Height := 16;
                          Alignment := taCenter;
                          AutoSize := False;
                          Color := clWhite;
                          Font.Charset := ANSI_CHARSET;
                          Font.Color := clBlack;
                          Font.Height := -11;
                          Font.Name := 'Arial';
                          Caption := fdm.tbempresa.fieldbyname('Endereco').AsString + ' - '+
                                     fdm.tbempresa.fieldbyname('bairro').AsString + ' - '+
                                     fdm.tbempresa.fieldbyname('municipio').AsString;
                  end;


                  e2:= TRLLabel.Create(application) ;
                  with e2 do begin
                          parent:=rlpainel;
                          Left := 111;
                          Top := 55;
                          Width := 606;
                          Height := 13;
                          Alignment := taCenter;
                          AutoSize := False;
                          Color := clWhite;
                          Font.Charset := ANSI_CHARSET;
                          Font.Color := clBlack;
                          Font.Height := -11;
                          Font.Name := 'Arial';
                          e2.Caption := ufcep+ '  Fone/Fax: (' +
                                              fdm.tbempresa.fieldbyname('ddd').AsString +') '+
                                              fdm.tbempresa.fieldbyname('fone1').AsString + '   -   '+
                                              fdm.tbempresa.fieldbyname('fax').AsString;
                end;


                e3:= TRLLabel.Create(application) ;
                with e3 do begin
                          parent:=rlpainel;
                          Left := 111;
                          Top := 69;
                          Width := 606;
                          Height := 16;
                          Alignment := taCenter;
                          AutoSize := False;
                          Color := clWhite;
                          Font.Charset := ANSI_CHARSET;
                          Font.Color := clBlack;
                          Font.Height := -11;
                          Font.Name := 'Arial';
                          Caption :=  'E-Mail: ' +  fdm.tbempresa.fieldbyname('email').AsString+ '  Site: ' +
                                                    fdm.tbempresa.fieldbyname('site').AsString;
                end;
                fdm.tbempresa.close;



      //negocie brasil
      end else begin

                 //imagem
                 i1:= TImage.Create(application);
                 with i1 do begin
                      parent:=rlpainel;
                      Left := 5;
                      Top := 4;
                      Width := 180;
                      Height := 79;
                      Stretch := true;

                      if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\' +fdm.tbempresa.FieldByName('codigo').AsString + '.jpg')) then
                         Picture.LoadFromFile(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\' + fdm.tbempresa.FieldByName('codigo').AsString + '.jpg'));
                 end;


                 m1:= TRLAngleLabel.Create(application);
                 with m1 do begin
                         parent:= rlpainel;
                         Left := i1.Width + 50;
                         Top := 4;
                         AutoSize := true;
                         Font.Color := clBlack;
                         Font.size := 20;
                         Font.Name := 'Arial';
                         Font.Style := [fsBold];
                         caption := fdm.tbempresa.fieldbyname('fantasia').AsString;
                 end;


                e1:= TRLLabel.Create(application) ;
                with e1 do begin
                          parent:=rlpainel;
                          Left := i1.Width + 50;
                          Top := 30;
                          AutoSize := true;
                          Font.Color := clBlack;
                          Font.size := 12;
                          Font.Name := 'Arial';
                          Font.Style := [fsBold];
                          Caption :=  fdm.tbempresa.fieldbyname('site').AsString;
                end;


                e2:= TRLLabel.Create(application) ;
                with e2 do begin
                          parent:=rlpainel;
                          Left := i1.Width + 50;
                          Top := 47;
                          AutoSize := true;
                          Font.Color := clBlack;
                          Font.size := 12;
                          Font.Name := 'Arial';
                          Font.Style := [fsBold];
                          Caption :=  fdm.tbempresa.fieldbyname('email').AsString;
                end;

                e3:= TRLLabel.Create(application) ;
                with e3 do begin
                          parent:=rlpainel;
                          Left := i1.Width + 50;
                          Top := 64;
                          AutoSize := true;
                          Font.Color := clBlack;
                          Font.size := 12;
                          Font.Name := 'Arial';
                          Font.Style := [fsBold];
                          Caption :=  'Fone: (' +
                                              fdm.tbempresa.fieldbyname('ddd').AsString +') '+
                                              fdm.tbempresa.fieldbyname('fone1').AsString ;
                end;
                fdm.tbempresa.close;


      end;
    end;


     //titulo opcional (criar so se tiver)
     if length(r6.Text) >3 then begin
        r6_:= TRLMemo.Create(application);
        with r6_ do begin
           parent:=tit;
           autosize:=true;
           Height := 18;
           Align := faTop;
           
           if tbin = 'movprod' then
           Font.Name := 'Lucida Console';

           Borders.Sides := sdCustom;
           Borders.DrawBottom := True;
           Lines.Clear;
           Lines.Add(r6.Text);
        end;
     end;

     if tbin = 'movprod' then begin
         e4:= TRLLabel.Create(application) ;
         with e4 do begin
           parent:=tit;
           autosize:=true;
           Height := 18;
           Align := fabottom;
           Font.Size :=10;
           font.Style :=[fsbold];
           Font.Name := 'Lucida Console';
           Borders.Sides := sdCustom;
           Borders.DrawBottom := True;
           Caption := '........Estoque ini......Entrada.......Dev For.........Vendas......Devolução Cli....Estoq Fin';
        end;
     end;


      //numpagina
      ldatahora:= TRLSystemInfo.Create(application);
      with ldatahora do begin
            parent:=tit;
            Height := 10;
            Align := faTop;
            Alignment := taRightJustify;
            Font.Height := -8;
            Font.Name := 'Small Fonts';
            Font.Style:=[fsunderline];
            Info := itPagePreview;

            if (tbz <> nil) and (tbz.Active) then
               qt := inttostr(tbz.RecordCount)
            else
               qt := inttostr(tabest.RecordCount);

            Text := uppercase(formatdatetime('dddd',date) + ', '+
                              formatdatetime('dd/mm/yy',date) +' '+
                              timetostr(now) +'  Pag.: # de #'+  '  -  '+
                              qt+' Linhas');
      end;


      //titulo
      LTITULO := TRLAngleLabel.Create(application);
      with LTITULO do begin
                    parent:=tit;
                    Left := 111;
                    Top := 77;
                    Width := 607;
                    Height := 16;
                    Align := faTop;
                    Alignment := taCenter;
                    Borders.Sides := sdCustom;
                    Borders.DrawBottom := True;
                    Font.Charset := DEFAULT_CHARSET;
                    //Font.Color := clBlack;
                    Font.Height := -14;
                    Font.Name := 'Arial';
                    Font.Style := [fsBold];
                    caption :='                       '+etitulo.Text;
                    font.Name := etitulo.Font.Name;
      end;






      //cria grupo1
      ggrupo2:= TRLGroup.Create(application);
      with ggrupo2 do begin
           parent:=qimpressao;
           Height := 136;

           if indexgrupo <> '' then ind := indexgrupo;

           if indexgrupos <> '' then
              if ind = '' then
                 ind := indexgrupos
              else
                 ind := indexgrupo +';'+indexgrupos;


           if indexgrupo3 <> '' then
              if ind = '' then
                 ind := indexgrupo3
              else
                 ind := ind + ';'+indexgrupo3;

           if indexgrupo4 <> '' then
              if ind = '' then
                 ind := indexgrupo4
              else
                 ind := ind + ';'+indexgrupo4;



           if indexcampo = '' then
              indtb:= ind
           else if ind <> '' then
              indtb:= ind + ';'+indexcampo
           else
              indtb:= indexcampo ;

           if indexcampo2 <> '' then
              if indtb = '' then
                 indtb:= indexcampo2
              else
              indtb:= indtb + ';'+indexcampo2;


           if (tbz <> nil) and (tbz.Active) then
               tbz.IndexFieldNames :=indtb
           else if indtb ='' then
              tabest.IndexFieldNames:= 'chave'
           else
              tabest.IndexFieldNames:= indtb;

           if ind <>'' then
              ggrupo2.DataFields := ind;
      end;




      // cabeca do grupo
   if indexgrupo = '' then else begin

      RLBand1:= TRLBand.Create(application);
      with RLBand1 do begin
           parent:=ggrupo2;
           Height := 35;
           BandType := btHeader;
      end;

      // cria dbtext na cabeca do grupo
      lgrupo2:= TRLDBText.Create(application);
      with lgrupo2 do begin
           parent:=RLBand1;
           Left := local;
           local := local + 30;
           Top := 15;
           Height := 18;
           Borders.FixedBottom := True;
           font.Style:=[fsbold];

           Text := uppercase(indexgrupo) + ': ' ;
           DataField :=indexgrupo;
           DataSource :=dstb;

           if ind <>'' then
              lgrupo2.DataSource := dstb;
          end;
        end;


      //cabeca grupo 2
      if indexgrupoS = '' then else begin

        rg2:= TRLBand.Create(application);
        with rg2 do begin
             parent:=ggrupo2;
             Height := 35;
             BandType := btHeader;
        end;

      // cria dbtext na cabeca do grupo
      lg2:= TRLDBText.Create(application);
      with lg2 do begin
           parent:=rg2;
           font.Style:=[fsbold];
           font.Color := $00000040;

           Left := local;
           local := local + 30;

           Top := 15;
           Height := 18;
           Borders.FixedBottom := True;

           Text := uppercase(indexgrupos) + ': ' ;
           DataField :=indexgrupos;
           DataSource :=dstb;

        end;
     end;








      //cabeca grupo 3
      if indexgrupo3 = '' then else begin

        rg3:= TRLBand.Create(application);
        with rg3 do begin
             parent:=ggrupo2;
             Height := 35;
             BandType := btHeader;
        end;

      // cria dbtext na cabeca do grupo
      lg3:= TRLDBText.Create(application);
      with lg3 do begin
           parent:=rg3;
           font.Style:=[fsbold];
           font.Color := clMaroon;

           Left := local;
           local := local + 30;

           Top := 15;
           Height := 18;
           Borders.FixedBottom := True;

           Text := uppercase(indexgrupo3) + ': ' ;
           DataField :=indexgrupo3;
           DataSource :=dstb;

        end;
     end;






      //cabeca grupo 4
      if indexgrupo4 = '' then else begin

        rg4:= TRLBand.Create(application);
        with rg4 do begin
             parent:=ggrupo2;
             Height := 35;
             BandType := btHeader;
        end;

      // cria dbtext na cabeca do grupo
      lg4:= TRLDBText.Create(application);
      with lg4 do begin
           parent:=rg4;
           font.Style:=[fsbold];
           font.Color := $000000B9;

           Left := local;
           local := local + 30;

           Top := 15;
           Height := 18;
           Borders.FixedBottom := True;

           Text := uppercase(indexgrupo4) + ': ' ;
           DataField :=indexgrupo4;
           DataSource :=dstb;

        end;
     end;


        {

     // caption dos itens4
     rl4:= TRLBand.Create(application);
     with rl4 do begin
          parent:=ggrupo2;
          Height := 19;
          BandType := btColumnHeader;
          Borders.DrawBottom := True;
     end;

     //itens da tabela
     rl_4:= TRLDetailGrid.create(application);
     with rl_4 do begin
          parent:=ggrupo2;
          Height:= (tmfonte + 5)*llargura.Value;
          ColCount :=  rcoluna.ItemIndex + 1;

     end;


     tsoma4:= TRLBand.Create(application);
     with tsoma4 do begin
          parent:=ggrupo2;
          Height := 36;
          BandType := btSummary;
     end;




     // caption dos itens3
     rl3:= TRLBand.Create(application);
     with rl3 do begin
          parent:=ggrupo2;
          Height := 19;
          BandType := btColumnHeader;
          Borders.DrawBottom := True;
     end;

     //itens da tabela
     rl_3:= TRLDetailGrid.create(application);
     with rl_3 do begin
          parent:=ggrupo2;
          Height:= (tmfonte + 5)*llargura.Value;
          ColCount :=  rcoluna.ItemIndex + 1;

     end;


     {tsoma3:= TRLBand.Create(application);
     with tsoma3 do begin
          parent:=ggrupo2;
          Height := 15;
          BandType := btSummary;
     end;}




     // caption dos itens  2
     rl1:= TRLBand.Create(application);
     with rl1 do begin
          parent:=ggrupo2;
          Height := 19;
          BandType := btColumnHeader;
          Borders.DrawBottom := True;
     end;

     //itens da tabela
     rl:= TRLDetailGrid.create(application);
     with rl do begin
          parent:=ggrupo2;
          Height:= (tmfonte + 5)*llargura.Value;
          ColCount :=  rcoluna.ItemIndex + 1;

     end;







     //contar os itens







     //sumary4 (rodape)
     tsoma4:= TRLBand.Create(application);
     with  tsoma4 do begin
           parent:=qimpressao;
           Height := 51;
           AutoSize := True;
           BandType := btSummary;
    end;

     //sumary3 (rodape)
     tsoma3:= TRLBand.Create(application);
     with  tsoma3 do begin
           parent:=qimpressao;
           Height := 51;
           AutoSize := True;
           BandType := btSummary;
    end;

     //sumary2 (rodape)
     tsoma2:= TRLBand.Create(application);
     with  tsoma2 do begin
           parent:=qimpressao;
           Height := 51;
           AutoSize := True;
           BandType := btSummary;
    end;

     tsoma1:= TRLBand.Create(application);
     with tsoma1 do begin
          parent:=ggrupo2;
          Height := 51;
          BandType := btSummary;
     end;


     if rqtd.Checked then begin

      lqtd:= TRLDBResult.Create(application);
       with lqtd do begin
          parent:=tsoma2;
          Left := 0;
          Top := 2;
          Width := 68;
          Height := 19;
          Borders.FixedTop := True;
          Borders.FixedBottom := True;
          DataField := tb.fieldbyname('nome').AsString;
          datasource:=dstb;
          Font.Color := clBlack;
          Font.Height := -11;
          Font.Name := 'Arial';
          Font.Style := [fsBold];
          Info := riCount;
          Text := ' #  Itens';
       end;
     end;



    // memo do rodape;
    if length(m2.Text) >2 then begin
       M2_:= TRLMemo.Create(application);
       with M2_ do begin
            parent:= tsoma2;
            Height := 16;
            Align := faBottom;
            M2_.Font.Name := 'Lucida Console';
            Lines.Add(m2.Text);
       end;
    end;

    //image rodape
    if vimage.Picture <> nil then begin
       IM2:= TImage.Create(application);
        with IM2 do begin
            Height := 1;
            Align := alBottom;
            AutoSize := True;
            Picture := vimage.Picture;
       end;
    end;


        tb.First;
        som1 := false;
        som2 := false;
        som3 := false;
        som4 := false;


        while not tb.Eof do begin
           if tb['x']= 'X' then begin

              if tbsoma.Locate('nome',tb.fieldbyname('nome').AsString,[]) then begin
                 if tbsoma['x']= 'X' then som1:=true
                                     else som1:=false;

                 //segundo grupo
                 if ((indexgrupos <> '') or (indexgrupo<>''))and
                    (tbsoma['x']= 'X') then som2:=true
                                       else som2:=false;

                 //3 grupo
                 if ((indexgrupos <> '') or (indexgrupo<>'') or (indexgrupo3<>''))and
                    (tbsoma['x']= 'X') then som3:=true
                                       else som3:=false;

                 //4 grupo
                 if ((indexgrupos <> '') or (indexgrupo<>'') or (indexgrupo3<>'')or (indexgrupo4<>''))and
                    (tbsoma['x']= 'X') then som4:=true
                                       else som4:=false;


               end;

               criacampo(tb['tm'],tmfonte,tb['nome'],tb['cap'],tb['pos'],dstb,som1,som2,som3,som4);

               som1 := false;
               som2 := false;
               som3 := false;
               som4 := false;


           end;
           tb.Next;

        end;


           if tbin= 'sitconta' then
              sitcontaexecute(self);

           if (tbz <> nil) and (tbz.Active) then
              tbz.DisableControls
           else
              tabest.DisableControls;

           if imp= '1' then
              qimpressao.PreviewModal
           else
            exportarRL(qimpressao,'nome' ,'email@email.com');


           if (tbz <> nil) and (tbz.Active) then
              tbz.EnableControls
           else
              tabest.EnableControls;

           if nasc then
              if (tbz <> nil) and (tbz.Active) then
                 tbz.FieldByName('nascimento').EditMask := '99/99/9999'
              else
                 tabest.FieldByName('nascimento').EditMask := '99/99/9999';

        qimpressao.Free;

        if active=false then close;

        end;

end;

procedure Tfimp.cgrupoClick(Sender: TObject);
begin
       if (gindex.Text <>'') and(gindex.Text <>'Não Ordenar') then begin
          tb.Locate('cap',gindex.Text ,[]);
          indexcampo:= tb['nome'];
       end else indexcampo :='';

end;

procedure Tfimp.gindex2Click(Sender: TObject);
begin
       if (gindex2.Text <>'') and(gindex2.Text <>'Não Ordenar') then begin
          tb.Locate('cap',gindex2.Text ,[]);
          indexcampo2:= tb['nome'];
       end else indexcampo2 :='';

end;

procedure Tfimp.FormShow(Sender: TObject);
var
st:string;
begin

        gindex2.Items := gindex.Items;
        gindex2.ItemIndex:=0;

        if (tbin = 'movprod') then begin
           rpagina.ItemIndex :=1;
           btnimprimir.Enabled := true;
           rcol.Checked := true;
           st := r6.Text;
           r6.Lines.LoadFromFile('c:\rel.txt');
           r6.Lines.Add(st);
        end;

end;

procedure Tfimp.grupogClick(Sender: TObject);
begin
       if grupog.ItemIndex >0 then begin
          tb.Locate('cap',grupog.Items[grupog.ItemIndex] ,[]);
          indexgrupo:= tb['nome'];
       end else indexgrupo :='';

end;

procedure Tfimp.gsrupog3Click(Sender: TObject);
begin
       if gsrupog3.ItemIndex >0 then begin
          tb.Locate('cap',gsrupog3.Items[gsrupog3.ItemIndex] ,[]);
          indexgrupo3:= tb['nome'];
       end else indexgrupo3 :='';

end;

procedure Tfimp.gsrupog4Click(Sender: TObject);
begin
       if gsrupog4.ItemIndex >0 then begin
          tb.Locate('cap',gsrupog4.Items[gsrupog4.ItemIndex] ,[]);
          indexgrupo4:= tb['nome'];
       end else indexgrupo4 :='';

end;

end.

