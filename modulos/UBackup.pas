unit UBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, backup, DBTables, MySQLBackUp, Inifiles,
  ComCtrls, ExtCtrls, MPlayer, ImgList, jpeg;

type
  TFBackup = class(TForm)
    SalvaDialogo: TSaveDialog;
    AbreDialogo: TOpenDialog;
    MySQLBackUp1: TMySQLBackUp;
    Progresso: TProgressBar;
    Progresso1: TProgressBar;
    ImageList2: TImageList;
    Timer1: TTimer;
    BtBackup: TSpeedButton;
    BtRestaura: TSpeedButton;
    Image1: TImage;
    BackupFile: TBackupFile;
    CkDiv: TCheckBox;
    lbstatus: TLabel;
    lt1: TLabel;
    lt2: TLabel;
    procedure BackupFileProgress(Sender: TObject; Filename: string;
      Percent: TPercentage; var Continue: boolean);
    procedure FormCreate(Sender: TObject);
    procedure BackupFileError(Sender: TObject; const Error: integer; ErrString: string);
    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure BtBackupClick(Sender: TObject);
    procedure BtRestauraClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MySQLBackUp1ServerConnect(Sender: TObject;
      data: TServerInfo);
  private
    Index: integer;
    senha:boolean;
  public
    Data: string;
  end;
  procedure restoredbs;

var
  FBackup: TFBackup;
implementation

uses funcoes,udm;

{$R *.dfm}

procedure restoredbs;
begin
  Application.CreateForm(TFBackup, FBackup);
  FBackup.Data := databasename;
  Fbackup.ShowModal;
  FBackup.free;
  FBackup := nil;
end;

procedure TFBackup.BackupFileProgress(Sender: TObject; Filename: string;
  Percent: TPercentage; var Continue: boolean);
begin
  Progresso1.Position := Percent;
end;

procedure TFBackup.FormCreate(Sender: TObject);
var
  Ini: TInifile;
begin

  Ini := TIniFile.Create(conf_local);
  with MySQLBackUp1 do
  begin
    Host := Ini.ReadString('Rede', 'Host', 'localhost');
    Database := Data;
    User := Ini.ReadString('Rede', 'User_Name', 'root');
    Password := Ini.ReadString('Rede', 'Password', '');
    Connect;
    if not Connected then
      lbstatus.Caption:='Desconectado...';
  end;
  Ini.Free;
end;

procedure TFBackup.BackupFileError(Sender: TObject; const Error: integer;
  ErrString: string);
begin
  Application.MessageBox('Não foi possível realizar o Back-up.', 'Atenção', 0 + 16);
end;

procedure TFBackup.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin

          if key = 27 then
             Close;

          senha := key = vk_f10;

end;  

procedure TFBackup.Timer1Timer(Sender: TObject);
begin
  if Index >= 9 then
    Index := 0
  else
    Inc(Index);
  ImageList2.GetBitmap(Index, Image1.Picture.Bitmap);
  Image1.Repaint;
  Image1.Update;
end;

procedure TFBackup.BtBackupClick(Sender: TObject);
var
  I: integer;
  dir: string;
  Tabelas, Arquivo: Tstrings;
  Ini: TInifile;
  SysDir: array [0..144] of char;
  SR: TSearchRec;
begin

  GetSystemDirectory(SysDir, 144);
  dir := ExtractFilePath(ParamStr(0));
  Tabelas := TStringList.Create;
  Arquivo := TStringList.Create;

  with MySQLBackUp1 do
  begin
    LogFileName:=dir+'backup.log';
    LogFileOpt:=True;
    Connect;
    if not Connected then
    begin
      lbstatus.Caption:='Desconectado...';
      Application.MessageBox(Pchar('Não foi possível conectar ao servidor para realizar a tarefa.'#13+
                                   'Verifique se as configurações estão corretas, ou se o servidor de dados está funcionando.'),
                                   'Falha ao Conectar', 0+16);
      Abort;
    end;
  end;


  if not ((FileExists(Dir + 'MyBackup.dll')) or
    (FileExists(StrPas(Sysdir) + '\MyBackup.dll'))) then
  begin
    Application.MessageBox(PChar('Não será possivel efetuar o Backup.' + #13 +
      'O arquivo myBackup.dll é necessário e não foi encontrado.' +
      #13 +
      'Entre em contato com o suporte.'),
      'Anexo não encontrado.', 0 + 16);
    Close;
    Abort;
  end;

  if not DirectoryExists(Dir + 'backups') then
    CreateDir(Dir + 'backups');

  if not DirectoryExists(Dir + 'backups\tmp') then
    CreateDir(Dir + 'backups\tmp');


  if CkDiv.Checked then
    BackupFile.MaxSize:=1380000
  else
    BackupFile.MaxSize:=600000000;


  if Progresso.Position > 1 then
    Progresso.Position := 0;


  Ini := TIniFile.Create(CONF_GLOBAL);
  try
    MySQLBackUp1.Connect;
    Timer1.Enabled := True;
    MySQLBackUp1.WriteLogHeading := True;

    if Tabelas.Count > 0 then
      Tabelas.Clear;

    Cursor := crHourGlass;
    FBackup.Caption := FBackup.Caption + ' -  Aguarde....';

    with MySQLBackUp1 do
      if GetTables(Data) > 0 then Tabelas.Assign(Tables);

    for i := 0 to Tabelas.Count - 1 do
    begin
      with MySQLBackUp1 do
      begin
        BackFileName := dir + 'Backups\tmp\'+Tabelas[i]+'.sql';
        Database := Data;
        //if  Tabelas[i] <> 'tbconfig' then

        MakeBackUp(Tabelas[i]);
      end;
    end;

    Arquivo.Clear;
    BtBackup.Enabled := False;
    BtRestaura.Enabled := False;
    Arquivo.Add(dir + 'Backups\tmp\*.sql');
    FBackup.Caption := 'Backup-up';
    Cursor := crDefault;
    Timer1.Enabled := False;
    Image1.Picture := nil;
    Image1.Refresh;
  except
    Cursor := crDefault;
    Timer1.Enabled := False;
    Image1.Picture := nil;
    Image1.Refresh;
  end;
  
  try
    SalvaDialogo.InitialDir :=Ini.ReadString('Backup', 'InitialDir', 'C:\');

    if SalvaDialogo.Execute then
    begin
      Ini.WriteString('Backup', 'InitialDir', ExtractFilePath(SalvaDialogo.Filename));
      if BackupFile.Backup(Arquivo, SalvaDialogo.FileName) then
      begin
        Application.MessageBox('Back-up efetuado com sucesso.', 'Back-up efetuado', 0 + 64);

        Ini := TIniFile.Create(CONF_GLOBAL);
        Ini.WriteString('Backup', 'Ultimo', DateTimeToStr(Now));
      end;
    end;

  finally
    Ini.Free;
    BtBackup.Enabled := True;
    BtRestaura.Enabled := True;
    Tabelas.Free;
    Arquivo.Free;

    I := FindFirst(ExtractFilePath(ParamStr(0)) + 'Backups\tmp\*.sql', faAnyFile, SR);
    while I = 0 do
    begin
      if (SR.Attr and faDirectory) <> faDirectory then
        DeleteFile(ExtractFilePath(ParamStr(0)) + 'Backups\tmp\'+SR.Name);
        
      I := FindNext(SR);
    end;

  end;
  if Progresso1.Position <> 0 then
    Progresso1.Position := 0;

    GALTERA('16', '.', 'i');

  if Application.MessageBox('Posso fechar esta janela?', 'Backup concluído', 4 + 32) = 6 then
    Close;
end;

procedure TFBackup.BtRestauraClick(Sender: TObject);
var
  Recs, I: integer;
  Ini: TInifile;
  List: TStrings;
  SR: TSearchRec;
  BakTmpDir: pchar;
begin


   senhagerencial('Backup','DIGITE A SENHA GERENCIAL:', 'Restaurar backup');


  BakTmpDir:=Pchar(ExtractFilePath(ParamStr(0)) + 'Backups\tmp\');
  List:= TStringList.Create;
  Ini := TInifile.Create(CONF_GLOBAL);


  with MySQLBackUp1 do
  begin
    LogFileName:=ExtractFilePath(ParamStr(0))+'backup.log';
    LogFileOpt:=True;
    Connect;
    if not Connected then
    begin
      lbstatus.Caption:='Desconectado...';
      Application.MessageBox(Pchar('Não foi possível conectar ao servidor para realizar a tarefa.'#13+
                                   'Verifique se as configurações estão corretas, ou se o servidor de dados está funcionando.'),
                                   'Falha ao Conectar', 0+16);
      Abort;
    end;
  end;

  //limpa possiveis antigos sqls
  I := FindFirst(ExtractFilePath(ParamStr(0)) + 'Backups\tmp\*.sql', faAnyFile, SR);
  while I = 0 do
  begin
    if (SR.Attr and faDirectory) <> faDirectory then
      DeleteFile(SR.Name);

    I := FindNext(SR);
  end;

  Progresso.Position := 0;
  try
    BtBackup.Enabled := False;
    BtRestaura.Enabled := False;

    AbreDialogo.InitialDir:= Ini.ReadString('Backup', 'InitialDir', 'C:\');

    if AbreDialogo.Execute then

    if BackupFile.Restore(AbreDialogo.FileName, BAKTMPDIR) then
    begin
      I := FindFirst(ExtractFilePath(ParamStr(0)) + 'Backups\tmp\*.sql', faAnyFile, SR);
      while I = 0 do
      begin
        if (SR.Attr and faDirectory) <> faDirectory then
          List.Add(SR.Name);

        I := FindNext(SR);
      end;
      //showmessage(ExtractFilePath(AbreDialogo.FileName));
      //Ini.WriteString('Backup', 'InitialDir', ExtractFilePath(AbreDialogo.FileName));

      with MySQLBackUp1 do
      begin
        Database := Data;
        for I:=0 to List.Count-1 do
        begin
          RestoreFileName := BakTmpDir + List[I];
          Recs := Recs+ RestoreSQLFile;

          //Limpa diretório tmp
          if FileExists(BakTmpDir + List[I]) then
            DeleteFile(BakTmpDir + List[I]);

          FBackup.Update;
        end;
      end;

      if Recs > 0 then
        Application.MessageBox(PChar(IntToStr(Recs) +
          ' registros restaurados com sucesso.'),
          'Back-up Restaurado', 0 + 64);
    end
    else
      Application.MessageBox('Não foi Possivel restaurar o Banco de dados.' +
        #13 + 'O arquivo de Back-up pode estar ' +
        'corrompido, ou o disco danificado.' + #13 +
        'Tente outro arquivo.', 'A Restauração Falhou', + 0 + 16);

  finally
    Ini.Free;
    Cursor := crDefault;
    BtBackup.Enabled := True;
    BtRestaura.Enabled := True;

    GALTERA('16', '.', 'i');

    if Application.MessageBox('Posso fechar está janela', 'Transação cocluída',
      4 + 32) = 6 then
      Close;
  end;
end;

procedure TFBackup.FormShow(Sender: TObject);
begin
        imageform('imt', altop, self, '',idlg);
        lt2.Caption := application.Title;
        lt1.Caption := lt2.Caption;

end;

procedure TFBackup.MySQLBackUp1ServerConnect(Sender: TObject;
  data: TServerInfo);
begin
  lbstatus.Caption:='Conectado em '+ MySQLBackUp1.Host+':'+IntToStr(MySQLBackUp1.Port);
end;

end.
