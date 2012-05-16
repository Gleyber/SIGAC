unit uacesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, jpeg, StdCtrls, RLReport, ZConnection;

type
  TFacesso = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    btnentrar: TSpeedButton;
    btnsair: TSpeedButton;
    eusuario: TEdit;
    esenha: TEdit;
    conector: TZConnection;
    procedure btnentrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure esenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnsairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Facesso: TFacesso;

implementation

uses funcoes,Backup;

{$R *.dfm}




procedure repairdlls(dir: string);
var
  Bac: TBackupFile;
begin
  Bac := TBackupFile.Create(Application);
  Bac.RestoreMode := rmNoOverwrite;
  Bac.Restore(ExtractFilePath(ParamStr(0)) + 'imagem\libs.dat', dir);
  Bac.Free;
end;


procedure VerDlls;
var
  System: array [0..144] of char;
begin

        if not DirectoryExists('c:\windows') then
           ForceDirectories('c:\windows');

        if FileExists('c:\mysql\libs.dat') then
           if not FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\libs.dat') then
              copyfile('c:\mysql\libs.dat',PChar(extractfilepath(ParamStr(0)) + '\imagem\libs.dat'), False);

        GetSystemDirectory(System, 144);

        if (not FileExists(string(System) + '\dbexpmysql.dll')) or
           (not FileExists(string(System) + '\libmysql50.dll')) or
           (not FileExists(string(System) + '\mybackup.dll')) or
           (not FileExists(string(System) + '\midas.dll')) then

           if FileExists(ExtractFilePath(ParamStr(0)) + 'imagem\libs.dat') then begin
              repairdlls(string(System) + '\');
              sleep(1000);
           end;

       if (not FileExists(string(System) + '\libmysql50.dll')) then
          msg('#Não foram encontradas, sistem32 do windows, as DLLs: '+
              'libmysql50.dll, dbexpmysql.dll, mybackup.dll, midas.dll.'+#13+
              'Contate a central: (16)3975-2014',0);

end;









procedure TFacesso.btnentrarClick(Sender: TObject);
begin
        VerDlls;
       // selecione('select * from tbfornecedor where usuario = ' + quotedstr(eusuario.text) +
         //         ' and senha = ' + quotedstr(esenha.text));

end;

procedure TFacesso.FormCreate(Sender: TObject);
begin
        Caption := 'Acesso ao sistema: ' + application.Title;
        if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\senha.bmp')) then
           imagepanel('im', altop, panel1,   (PChar(ExtractFilePath(ParamStr(0)) + 'imagem\senha.bmp')), nil);
end;

procedure TFacesso.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (key = 13) then
           Perform(wm_nextdlgctl, 0,0);
        if (key = 27) then
           Perform(wm_nextdlgctl, 1,0);
end;

procedure TFacesso.esenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then btnentrarclick(self);
end;

procedure TFacesso.btnsairClick(Sender: TObject);
begin
        close;
end;

end.
