program pagpop;
       
uses
  Forms,
  windows,
  inifiles,
  Backup,
  SysUtils,
  shellapi,
  umanu in 'umanu.pas' {fmenu},
  UvalidaIE in '..\modulos\UvalidaIE.pas',
  Funcoes in '..\modulos\Funcoes.pas',
  UBackup in '..\modulos\UBackup.pas' {FBackup},
  ucad in '..\modulos\ucad.pas' {fcad},
  ucadg in '..\modulos\ucadg.pas' {fcadg},
  ucadgv in '..\modulos\ucadgv.pas' {fcadgv},
  ufiltrocad in '..\modulos\ufiltrocad.pas' {ffiltrocad},
  ugrafico in '..\modulos\ugrafico.pas' {fgrafico},
  uimagem in '..\modulos\uimagem.pas' {fimagem},
  uimp in '..\modulos\uimp.pas' {fimp},
  ulista in '..\modulos\ulista.pas' {flista},
  ulocaliza in '..\modulos\ulocaliza.pas' {flocaliza},
  urelatorio in '..\modulos\urelatorio.pas' {frelatorio},
  umail in '..\modulos\email\umail.pas' {fmail},
  uimpterm in '..\modulos\etiqueta\uimpterm.pas' {fimpterm},
  uetprod in '..\modulos\etiqueta\uetprod.pas' {fetqprod},
  umovimento in '..\modulos\movimento\umovimento.pas' {fmovimento},
  uperiodo2 in 'uperiodo2.pas' {fperiodo2},
  udlg in '..\modulos\udlg.pas' {fdlg},
  uicliente in '..\modulos\cliente\uicliente.pas' {ficliente},
  usistema in '..\modulos\usistema.pas' {fsistema},
  impmat in '..\modulos\impmat.pas',
  uconfigimp in '..\modulos\uconfigimp.pas' {fconfigimp},
  uparcelado in '..\modulos\pagar_receber\uparcelado.pas' {fparcelado},
  uconsumotexto in '..\modulos\uconsumotexto.pas' {fconsumotexto},
  uacesso in '..\modulos\acesso\uacesso.pas' {Facesso},
  uagendapessoal in '..\modulos\agenda\uagendapessoal.pas' {fagendapessoal},
  uagenda in '..\modulos\agenda\uagenda.pas' {fagenda},
  uconfig in '..\modulos\uconfig.pas' {fconfig},
  mapimail in '..\modulos\mapimail.pas',
  uimpressora in '..\modulos\uimpressora.pas' {fimpressora},
  usistema2 in '..\modulos\usistema2.pas' {fsistema2},
  principal in '..\modulos\RecuperarXML\principal.pas' {frmPrincipal},
  GIFImage in '..\modulos\RecuperarXML\GifImage.pas',
  ACBrHTMLtoXML in '..\modulos\RecuperarXML\ACBrHTMLtoXML.pas',
  ufiltrocad2 in '..\modulos\ufiltrocad2.pas' {ffiltrocad2},
  ueditor in '..\modulos\ueditor.pas' {feditor},
  uclienteadicional in '..\modulos\cliente\uclienteadicional.pas' {fclienteadicional},
  upedido in 'upedido.pas' {fpedido},
  uipedido in 'uipedido.pas' {fipedido},
  udm in 'udm.pas' {fdm: TDataModule},
  uacerto in '..\modulos\uacerto.pas' {facerto},
  uecf_ in '..\modulos\ecfv\uecf_.pas',
  uecf_aux_ in '..\modulos\ecfv\uecf_aux_.pas',
  uecf_imp_ in '..\modulos\ecfv\uecf_imp_.pas',
  ucontaconf in '..\modulos\pagar_receber\ucontaconf.pas' {fcontaconf},
  ufinanceiro in '..\modulos\pagar_receber\ufinanceiro.pas' {ffinanceiro},
  ufinanceirovalor in '..\modulos\pagar_receber\ufinanceirovalor.pas' {ffinanceirovalor},
  uclientelocaliza in '..\modulos\cliente\uclientelocaliza.pas' {fclientelocaliza},
  uclientevalor1 in '..\modulos\cliente\uclientevalor1.pas' {fclientevalor1},
  uConnect in '..\modulos\uConnect.pas',
  dmTestConnect in '..\modulos\dmTestConnect.pas' {dtmTestConnect: TDataModule},
  FDadosAdicionaisOBS in 'FDadosAdicionaisOBS.pas' {FrmDadosAdicionaisOBS};

{$R *.res}

procedure VerDlls;

var
  myadm: HWND;
  winDir, tmpdir: array [0..144] of char;
  myini, Ini: TIniFile;
  mysqldir, IniHost, Dir, Serv: string;
  Count: integer;

        procedure repairdlls(dir: string);
        var
          Bac: TBackupFile;
        begin
          Bac := TBackupFile.Create(Application);
          Bac.RestoreMode := rmNoOverwrite;
          Bac.Restore(ExtractFilePath(ParamStr(0)) + 'imagem\libs.dat', dir);
          Bac.Free;
        end;

var
  System: array [0..144] of char;

begin
  GetWindowsDirectory(System, 144);

  CONF_GLOBAL:= ExtractFilePath(ParamStr(0)) + 'imagem\sigacnet.ini';

  if lowercase(copy(System,1,2)) <> 'c:' then
    conf_local := copy(System,1,2)+'\sigacnet.ini'
  else
    conf_local := 'c:\sigacnet.ini';

  Ini          := TInifile.Create(CONF_GLOBAL);
  databasename := Ini.Readstring('databasename', 'databasename', '');
  // Gleyber - 10/07/2012 - Início
  if ini.Readstring('mysqld', 'ipnet', '') = '' then
    Ini.WriteString('mysqld', 'ipnet', 'mysql.vitalcred.com.br');
  if ini.Readstring('mysqld', 'databasenet', '') = '' then
    Ini.WriteString('mysqld', 'databasenet', 'odontocred1');
  if ini.Readstring('mysqld', 'usernet', '') = '' then
    Ini.WriteString('mysqld', 'usernet', 'odontoc_soft');
  if ini.Readstring('mysqld', 'pwdnet', '') = '' then
  Ini.WriteString('mysqld', 'pwdnet', 'soft1423');
  // Gleyber - 10/07/2012 - Fim
  ini.Free;

  if databasename = '' then
    databasename := 'sigac';

  Application.Title := 'PagPop';
  ini               := TInifile.Create('my.ini');
  mysqldir          := ini.Readstring('mysqld', 'basedir', 'c:\mysql');
  ini.Free;

  if not DirectoryExists('c:\windows') then
    ForceDirectories('c:\windows');

  if FileExists(mysqldir+'\libs.dat') then
    if not FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\libs.dat') then
      copyfile(pchar(mysqldir+'\libs.dat'),PChar(extractfilepath(ParamStr(0)) + '\imagem\libs.dat'), False);

  GetSystemDirectory(System, 144);

  if (not FileExists(string(System) + '\dbexpmysql.dll')) or
     (not FileExists(string(System) + '\libmysql50.dll')) or
     (not FileExists(string(System) + '\mybackup.dll')) or
     (not FileExists(string(System) + '\midas.dll')) then

  if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\libs.dat') then
  begin
    repairdlls(string(System) + '\');
    sleep(1000);
  end;

  // Se não achar as dlls
  if (not FileExists(string(System) + '\libmysql50.dll')) then
  begin
    msg('Não foram encontradas em '+string(System)+' do windows as DLLs: '+#13+#13+
        'libmysql50.dll, dbexpmysql.dll, mybackup.dll, midas.dll.'+#13+ #13+
        'Contate a central: '+#13+
        'Fone  : (16) 3975-2014 - '+#13+
        'E-Mail : contato@bitpamp.com.br '+#13+
        'MSN   : contato@bitpamp.com.br ',0);
    vf:=true;
    application.Terminate;
  end
  else
  begin
    Dir   := ExtractFilePath(ParamStr(0));

    GetWindowsDirectory(windir, 144);
    GetTempPath(144, tmpdir);

    myadm   := FindWindow('TForm1', 'WinMySQLAdmin 1.4');
    Serv    := '';
    Ini     := TInifile.Create(conf_local);
    IniHost := Ini.ReadString('Rede', 'Host', '');
    Ini.Free;

    myini    := TInifile.Create('my.ini');
    mysqldir := myini.Readstring('mysqld', 'basedir', 'C:/mysql');

    MyIni.Free;

    if Dir[2] = '\' then
    begin //se o segundo caracter do path for '\' então e' rede
      Count := 3;

      while Dir[Count] <> '\' do
        Inc(Count);

      Serv := Copy(Dir, 3, Count - 3);

      if not FileExists(conf_local) then
      begin // Verificar se existe o arquivo
        ini := TIniFile.Create(conf_local);
        Ini.WriteString('Rede', 'Host', serv);
        IniHost := Serv;
        Ini.Free;
      end;
    end;

    // Se nao for atalho, se for o my está no servidor
    if Serv = '' then
    begin
      if not fileexists (ExtractFilePath(ParamStr(0)) + 'cliente.txt') then
      begin
        if myadm = 0 then
          WinExec(PChar(mysqldir + '\bin\winmysqladmin.exe'), Sw_hide);

        ShellExecute(0,nil, PChar(mysqldir + '\bin\mysqld-nt.exe'), ' - start ', nil, sw_hide);
      end;
    end;

    // Seta variáveis
    ThousandSeparator := '.'; // Separador de milhares
    DecimalSeparator  := ','; // Ponto decimal
    ShortDateFormat   := 'dd/mm/yyyy'; // Formato de data
    DateSeparator     := '/'; // Separador de data
    TimeSeparator     := ':'; // Separador de hora

    // Nome dos meses por extenso
    LongMonthNames[1]  := 'JANEIRO';
    LongMonthNames[2]  := 'FEVEREIRO';
    LongMonthNames[3]  := 'MARÇO';
    LongMonthNames[4]  := 'ABRIL';
    LongMonthNames[5]  := 'MAIO';
    LongMonthNames[6]  := 'JUNHO';
    LongMonthNames[7]  := 'JULHO';
    LongMonthNames[8]  := 'AGOSTO';
    LongMonthNames[9]  := 'SETEMBRO';
    LongMonthNames[10] := 'OUTUBRO';
    LongMonthNames[11] := 'NOVEMBRO';
    LongMonthNames[12] := 'DEZEMBRO';
  end;
end;

begin
  VerDlls;

  if not vf then
  begin
    Application.CreateForm(Tfmenu, fmenu);
  Application.CreateForm(TdtmTestConnect, dtmTestConnect);
  Application.Initialize;
    Application.Run;
  end;
end.
