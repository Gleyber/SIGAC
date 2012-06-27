{******************************************************************************}
{ Projeto: Componentes ACBr                                                    }
{  Biblioteca multiplataforma de componentes Delphi para intera��o com equipa- }
{ mentos de Automa��o Comercial utilizados no Brasil                           }
{                                                                              }
{ Direitos Autorais Reservados (c) 2009   Isaque Pinheiro                      }
{                                                                              }
{ Colaboradores nesse arquivo:                                                 }
{                                                                              }
{  Voc� pode obter a �ltima vers�o desse arquivo na pagina do  Projeto ACBr    }
{ Componentes localizado em      http://www.sourceforge.net/projects/acbr      }
{                                                                              }
{  Esta biblioteca � software livre; voc� pode redistribu�-la e/ou modific�-la }
{ sob os termos da Licen�a P�blica Geral Menor do GNU conforme publicada pela  }
{ Free Software Foundation; tanto a vers�o 2.1 da Licen�a, ou (a seu crit�rio) }
{ qualquer vers�o posterior.                                                   }
{                                                                              }
{  Esta biblioteca � distribu�da na expectativa de que seja �til, por�m, SEM   }
{ NENHUMA GARANTIA; nem mesmo a garantia impl�cita de COMERCIABILIDADE OU      }
{ ADEQUA��O A UMA FINALIDADE ESPEC�FICA. Consulte a Licen�a P�blica Geral Menor}
{ do GNU para mais detalhes. (Arquivo LICEN�A.TXT ou LICENSE.TXT)              }
{                                                                              }
{  Voc� deve ter recebido uma c�pia da Licen�a P�blica Geral Menor do GNU junto}
{ com esta biblioteca; se n�o, escreva para a Free Software Foundation, Inc.,  }
{ no endere�o 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA.          }
{ Voc� tamb�m pode obter uma copia da licen�a em:                              }
{ http://www.opensource.org/licenses/lgpl-license.php                          }
{                                                                              }
{ Daniel Sim�es de Almeida  -  daniel@djsystem.com.br  -  www.djsystem.com.br  }
{              Pra�a Anita Costa, 34 - Tatu� - SP - 18270-410                  }
{                                                                              }
{******************************************************************************}

{******************************************************************************
|* Historico
|*
|* 29/03/2012: Isaque Pinheiro / R�gys Borges da Silveira
|*  - Cria��o e distribui��o da Primeira Versao
*******************************************************************************}
unit uPrincipal;

interface

uses
  JclIDEUtils, JclCompilerUtils,

  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, pngimage, JvExControls,
  JvAnimatedImage, JvGIFCtrl, JvWizard, JvWizardRouteMapNodes, JvExComCtrls,
  JvComCtrls, JvCheckTreeView, uFrameLista;

type
  TfrmPrincipal = class(TForm)
    wizPrincipal: TJvWizard;
    wizMapa: TJvWizardRouteMapNodes;
    wizPgConfiguracao: TJvWizardInteriorPage;
    wizPgObterFontes: TJvWizardInteriorPage;
    wizPgInstalacao: TJvWizardInteriorPage;
    wizPgFinalizar: TJvWizardInteriorPage;
    wizPgInicio: TJvWizardWelcomePage;
    Label4: TLabel;
    Label5: TLabel;
    edtDelphiVersion: TComboBox;
    edtPlatform: TComboBox;
    Label2: TLabel;
    edtDirDestino: TEdit;
    Label6: TLabel;
    Label1: TLabel;
    edtURL: TEdit;
    imgLogomarca: TImage;
    lblInfoObterFontes: TLabel;
    lstMsgInstalacao: TListBox;
    pnlTopo: TPanel;
    Label9: TLabel;
    btnSelecDirInstall: TSpeedButton;
    imgGifPropagandaACBrSAC: TJvGIFAnimator;
    Label3: TLabel;
    pgbInstalacao: TProgressBar;
    lblUrlACBrSac1: TLabel;
    lblUrlForum1: TLabel;
    lblUrlACBr1: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label7: TLabel;
    btnSVNCheckoutUpdate: TSpeedButton;
    btnInstalarACBr: TSpeedButton;
    ckbFecharTortoise: TCheckBox;
    btnVisualizarLogCompilacao: TSpeedButton;
    pnlInfoCompilador: TPanel;
    lblInfoCompilacao: TLabel;
    ckbInstalarCapicom: TCheckBox;
    ckbInstalarOpenSSL: TCheckBox;
    wizPgPacotes: TJvWizardInteriorPage;
    gbxFramePacotes: TGroupBox;
    frameDpk: TframePacotes;
    procedure imgPropaganda1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtDelphiVersionChange(Sender: TObject);
    procedure wizPgInicioNextButtonClick(Sender: TObject; var Stop: Boolean);
    procedure URLClick(Sender: TObject);
    procedure btnSelecDirInstallClick(Sender: TObject);
    procedure wizPrincipalCancelButtonClick(Sender: TObject);
    procedure wizPrincipalFinishButtonClick(Sender: TObject);
    procedure wizPgConfiguracaoNextButtonClick(Sender: TObject;
      var Stop: Boolean);
    procedure btnSVNCheckoutUpdateClick(Sender: TObject);
    procedure wizPgObterFontesEnterPage(Sender: TObject;
      const FromPage: TJvWizardCustomPage);
    procedure btnInstalarACBrClick(Sender: TObject);
    procedure wizPgObterFontesNextButtonClick(Sender: TObject;
      var Stop: Boolean);
    procedure wizPgInstalacaoNextButtonClick(Sender: TObject;
      var Stop: Boolean);
    procedure btnVisualizarLogCompilacaoClick(Sender: TObject);
    procedure wizPgInstalacaoEnterPage(Sender: TObject;
      const FromPage: TJvWizardCustomPage);
  private
    FCountErros: Integer;
    oACBr: TJclBorRADToolInstallations;
    iVersion: Integer;
    tPlatform: TJclBDSPlatform;
    sDirRoot: string;
    sDirLibrary: string;
    sDirPackage: string;
    sDirBPLPath: string;
    sDirDCPpath: string;
    procedure BeforeExecute(Sender: TJclBorlandCommandLineTool);
    procedure AddLibrarySearchPath;
    procedure OutputCallLine(const Text: string);
    procedure SetPlatformSelected;
    function IsCheckOutJaFeito(const ADiretorio: String): Boolean;
    procedure CreateDirectoryLibrarysNotExist;
    procedure GravarConfiguracoes;
    procedure LerConfiguracoes;
    function PathApp: String;
    function PathArquivoIni: String;
    function PathArquivoLog: String;
    procedure InstalarCapicom;
    procedure InstalarOpenSSL;
    function PathSystem: String;
    function RegistrarActiveXServer(const AServerLocation: string;
      const ARegister: Boolean): Boolean;
    procedure CopiarArquivoToSystem(const ANomeArquivo: String);
  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  SVN_Class, ACBrUtil,
  {$WARNINGS off} FileCtrl, {$WARNINGS on} ShellApi, IniFiles;

{$R *.dfm}

// retornar o path do aplicativo
function TfrmPrincipal.PathApp: String;
begin
  Result := IncludeTrailingPathDelimiter(ExtractFilePath(ParamStr(0)));
end;

// retornar o caminho completo para o arquivo .ini de configura��es
function TfrmPrincipal.PathArquivoIni: String;
var
  NomeApp: String;
begin
  NomeApp := ExtractFileName(ParamStr(0));
  Result := PathApp + ChangeFileExt(NomeApp, '.ini');
end;

// retornar o caminho completo para o arquivo de logs
function TfrmPrincipal.PathArquivoLog: String;
begin
  Result :=
    PathApp + 'log_' +
    StringReplace(edtDelphiVersion.Text, ' ', '_', [rfReplaceAll]) +
    '.txt';
end;

// verificar se no caminho informado j� existe o .svn indicando que o
// checkout j� foi feito no diretorio
function TfrmPrincipal.IsCheckOutJaFeito(const ADiretorio: String): Boolean;
begin
  Result := DirectoryExists(IncludeTrailingPathDelimiter(ADiretorio) + '.svn')
end;

// retorna o diret�rio de sistema atual
function TfrmPrincipal.PathSystem: String;
var
  strTmp: array[0..MAX_PATH] of char;
  DirWindows: String;
const
  SYS_64 = 'SysWOW64';
  SYS_32 = 'System32';
begin
  Result := '';

  //SetLength(strTmp, MAX_PATH);
  if Windows.GetWindowsDirectory(strTmp, MAX_PATH) > 0 then
  begin
    DirWindows := Trim(StrPas(strTmp));
    DirWindows := IncludeTrailingPathDelimiter(DirWindows);

    if DirectoryExists(DirWindows + SYS_64) then
      Result := DirWindows + SYS_64
    else
    if DirectoryExists(DirWindows + SYS_32) then
      Result := DirWindows + SYS_32
    else
      raise EFileNotFoundException.Create('Diret�rio de sistema n�o encontrado.');
  end
  else
    raise EFileNotFoundException.Create('Ocorreu um erro ao tentar obter o diret�rio do windows.');
end;

function TfrmPrincipal.RegistrarActiveXServer(const AServerLocation: string;
  const ARegister: Boolean): Boolean;
var
  ServerDllRegisterServer: function: HResult; stdcall;
  ServerDllUnregisterServer: function: HResult; stdcall;
  ServerHandle: THandle;

  procedure UnloadServerFunctions;
  begin
    @ServerDllRegisterServer := nil;
    @ServerDllUnregisterServer := nil;
    FreeLibrary(ServerHandle);
  end;

  function LoadServerFunctions: Boolean;
  begin
    Result := False;
    ServerHandle := SafeLoadLibrary(AServerLocation);

    if (ServerHandle <> 0) then
    begin
      @ServerDllRegisterServer := GetProcAddress(ServerHandle, 'DllRegisterServer');
      @ServerDllUnregisterServer := GetProcAddress(ServerHandle, 'DllUnregisterServer');

      if (@ServerDllRegisterServer = nil) or (@ServerDllUnregisterServer = nil) then
        UnloadServerFunctions
      else
        Result := True;
    end;
  end;
begin
  Result := False;
  try
    if LoadServerFunctions then
    try
      if ARegister then
        Result := ServerDllRegisterServer = S_OK
      else
        Result := ServerDllUnregisterServer = S_OK;
    finally
      UnloadServerFunctions;
    end;
  except
  end;
end;

procedure TfrmPrincipal.CopiarArquivoToSystem(const ANomeArquivo: String);
var
  PathOrigem: String;
  PathDestino: String;
  DirSystem: String;
  DirACBr: String;
begin
  DirSystem := Trim(PathSystem);
  DirACBr   := IncludeTrailingPathDelimiter(edtDirDestino.Text);

  if DirSystem = '' then
    raise EFileNotFoundException.Create('Diret�rio de sistema n�o encontrado.')
  else
    DirSystem := IncludeTrailingPathDelimiter(DirSystem);

  PathOrigem  := DirACBr + 'DLLs\Capicom\' + ANomeArquivo;
  PathDestino := DirSystem + ANomeArquivo;

  if FileExists(PathOrigem) and not(FileExists(PathDestino)) then
  begin
    if not CopyFileTo(PathOrigem, PathDestino, True) then
      raise EFilerError.CreateFmt(
        'Ocorreu o seguinte erro ao tentar copiar o arquivo "%s": %d - %s', [
        ANomeArquivo,
        GetLastError,
        SysErrorMessage(GetLastError)
      ]);
  end;
end;

// copia as dlls da pasta capcom para a pasta de sistema e registra a dll
procedure TfrmPrincipal.InstalarCapicom;
begin
  CopiarArquivoToSystem('capicom.dll');
  CopiarArquivoToSystem('msxml5.dll');
  CopiarArquivoToSystem('msxml5r.dll');

  RegistrarActiveXServer('capicom.dll', True);
  RegistrarActiveXServer('msxml5.dll', True);
end;

// copia as dlls da pasta openssl, estas dlls s�o utilizadas para assinar
// arquivos e outras coisas mais
procedure TfrmPrincipal.InstalarOpenSSL;
begin
  CopiarArquivoToSystem('libeay32.dll');
  CopiarArquivoToSystem('ssleay32.dll');
end;

// ler o arquivo .ini de configura��es e setar os campos com os valores lidos
procedure TfrmPrincipal.LerConfiguracoes;
var
  ArqIni: TIniFile;
  I: Integer;
begin
  ArqIni := TIniFile.Create(PathArquivoIni);
  try
    edtDirDestino.Text         := ArqIni.ReadString('CONFIG', 'DiretorioInstalacao', 'C:\ACBr');
    edtPlatform.ItemIndex      := edtPlatform.Items.IndexOf(ArqIni.ReadString('CONFIG', 'Plataforma', 'Win32'));
    edtDelphiVersion.ItemIndex := edtDelphiVersion.Items.IndexOf(ArqIni.ReadString('CONFIG', 'DelphiVersao', ''));
    ckbFecharTortoise.Checked  := ArqIni.ReadBool('CONFIG', 'FecharTortoise', True);
    ckbInstalarCapicom.Checked := ArqIni.ReadBool('CONFIG', 'InstalarCapicom', True);
    ckbInstalarOpenSSL.Checked := ArqIni.ReadBool('CONFIG', 'InstalarOpenSSL', True);

    if Trim(edtDelphiVersion.Text) = '' then
      edtDelphiVersion.ItemIndex := 0;

    edtDelphiVersionChange(edtDelphiVersion);

    for I := 0 to frameDpk.Pacotes.Count - 1 do
      frameDpk.Pacotes[I].Checked := ArqIni.ReadBool('PACOTES', frameDpk.Pacotes[I].Caption, False);
  finally
    ArqIni.Free;
  end;
end;

// gravar as configura��es efetuadas pelo usu�rio
procedure TfrmPrincipal.GravarConfiguracoes;
var
  ArqIni: TIniFile;
  I: Integer;
begin
  ArqIni := TIniFile.Create(PathArquivoIni);
  try
    ArqIni.WriteString('CONFIG', 'DiretorioInstalacao', edtDirDestino.Text);
    ArqIni.WriteString('CONFIG', 'DelphiVersao', edtDelphiVersion.Text);
    ArqIni.WriteString('CONFIG', 'Plataforma', edtPlatform.Text);
    ArqIni.WriteBool('CONFIG', 'FecharTortoise', ckbFecharTortoise.Checked);
    ArqIni.WriteBool('CONFIG', 'InstalarCapicom', ckbInstalarCapicom.Checked);
    ArqIni.WriteBool('CONFIG', 'InstalarOpenSSL', ckbInstalarOpenSSL.Checked);

    for I := 0 to frameDpk.Pacotes.Count - 1 do
      ArqIni.WriteBool('PACOTES', frameDpk.Pacotes[I].Caption, frameDpk.Pacotes[I].Checked);
  finally
    ArqIni.Free;
  end;
end;

// cria��o dos diret�rios necess�rios
procedure TfrmPrincipal.CreateDirectoryLibrarysNotExist;
var
  sVersion: string;
begin
  sVersion := oACBr.Installations[iVersion].VersionNumberStr;
  sVersion := UpperCase(Copy(sVersion, 1, 1)) + LowerCase(Copy(sVersion, 2, Length(sVersion)));

  // Guarda na VAR o diret�rio da instala��o do ACBr
  sDirRoot    := edtDirDestino.Text;
  sDirLibrary := sDirRoot + '\Lib\Delphi\';

  // Plataforma
  if edtPlatform.ItemIndex = 0 then // bpWin32
    sDirLibrary := sDirLibrary + 'Lib' + sVersion
  else
  if edtPlatform.ItemIndex = 1 then // bpWin64
    sDirLibrary := sDirLibrary + 'Lib' + sVersion + 'x64';

  // Checa se existe diret�rio da plataforma
  if not DirectoryExists(sDirLibrary) then
    ForceDirectories(sDirLibrary);

  with oACBr.Installations[iVersion] do
  begin
    sDirBPLPath := BPLOutputPath[tPlatform];
    sDirDCPpath := DCPOutputPath[tPlatform];

    if VersionNumberStr = 'd9' then
    begin
      sDirBPLPath := sDirBPLPath + '\3.0\';
      sDirDCPpath := sDirDCPpath + '\3.0\';
    end
    else if VersionNumberStr = 'd10' then
    begin
      sDirBPLPath := sDirBPLPath + '\4.0\';
      sDirDCPpath := sDirDCPpath + '\4.0\';
    end;

    // Checa se existe diret�rio da plataforma
    if not DirectoryExists(sDirBPLPath) then
      ForceDirectories(sDirBPLPath);

    // Checa se existe diret�rio da plataforma
    if not DirectoryExists(sDirDCPpath) then
      ForceDirectories(sDirDCPpath);

    AddToLibrarySearchPath(sDirBPLPath, tPlatform);
    AddToLibrarySearchPath(sDirDCPpath, tPlatform);
  end;
end;

// adicionar o paths ao library path do delphi
procedure TfrmPrincipal.AddLibrarySearchPath;
begin
  // -- Adiciona todos os paths dos fontes na vers�o do delphi selecionada
  // -- se os paths j� existirem n�o ser�o duplicados.
  with oACBr.Installations[iVersion] do
  begin
    AddToLibrarySearchPath(sDirRoot + '\Fontes\synalist', tPlatform);
    AddToLibrarySearchPath(sDirRoot + '\Fontes\PCN2', tPlatform);
    AddToLibrarySearchPath(sDirRoot + '\Fontes\ACBrComum', tPlatform);
    AddToLibrarySearchPath(sDirRoot + '\Fontes\ACBrDiversos', tPlatform);
    AddToLibrarySearchPath(sDirRoot + '\Fontes\ACBrSerial', tPlatform);
    AddToLibrarySearchPath(sDirRoot + '\Fontes\ACBrTCP', tPlatform);
    AddToLibrarySearchPath(sDirRoot + '\Fontes\ACBrTEFD', tPlatform);
    AddToLibrarySearchPath(sDirRoot + '\Fontes\ACBrCapicom', tPlatform);
    AddToLibrarySearchPath(sDirRoot + '\Fontes\ACBrBoleto', tPlatform);
    AddToLibrarySearchPath(sDirRoot + '\Fontes\ACBrPAF', tPlatform);
    AddToLibrarySearchPath(sDirRoot + '\Fontes\ACBrCTe', tPlatform);
    AddToLibrarySearchPath(sDirRoot + '\Fontes\ACBrNFe2', tPlatform);
    AddToLibrarySearchPath(sDirRoot + '\Fontes\ACBrSintegra', tPlatform);
    AddToLibrarySearchPath(sDirRoot + '\Fontes\ACBrSPED', tPlatform);
    AddToLibrarySearchPath(sDirRoot + '\Fontes\ACBrSPED\ACBrSPEDContabil', tPlatform);
    AddToLibrarySearchPath(sDirRoot + '\Fontes\ACBrSPED\ACBrSPEDFCont', tPlatform);
    AddToLibrarySearchPath(sDirRoot + '\Fontes\ACBrSPED\ACBrSPEDFiscal', tPlatform);
    AddToLibrarySearchPath(sDirRoot + '\Fontes\ACBrSPED\ACBrSPEDPisCofins', tPlatform);

    AddToLibraryBrowsingPath(sDirLibrary, tPlatform);
    // AddToDebugDCUPath(sDirLibrary, tPlatform);
  end;
end;

// setar a plataforma de compila��o
procedure TfrmPrincipal.SetPlatformSelected;
begin
  iVersion := edtDelphiVersion.ItemIndex;

  if edtPlatform.ItemIndex = 0 then // Win32
    tPlatform := bpWin32
  else
  if edtPlatform.ItemIndex = 1 then // Win64
    tPlatform := bpWin64;
end;

// Evento disparado a cada a��o do instalador
procedure TfrmPrincipal.OutputCallLine(const Text: string);
begin
  // remover a warnings de convers�o de string (delphi 2010 em diante)
  // as diretivas -W e -H n�o removem estas mensagens
  if (pos('Warning: W1057', Text) <= 0) and ((pos('Warning: W1058', Text) <= 0)) then
    ACBrUtil.WriteToTXT(AnsiString(PathArquivoLog), AnsiString(Text));
end;

// evento para setar os par�metros do compilador antes de compilar
procedure TfrmPrincipal.BeforeExecute(Sender: TJclBorlandCommandLineTool);
begin
  // limpar os par�metros do compilador
  Sender.Options.Clear;

  // n�o utilizar o dcc32.cfg
  if oACBr.Installations[iVersion].SupportsNoConfig then
    Sender.Options.Add('--no-config');

  // -B = Build all units
  Sender.Options.Add('-B');
  // O+ = Optimization
  Sender.Options.Add('-$O-');
  // W- = Generate stack frames
  Sender.Options.Add('-$W+');
  // Y+ = Symbol reference info
  Sender.Options.Add('-$Y-');
  // -M = Make modified units
  Sender.Options.Add('-M');
  // -Q = Quiet compile
  Sender.Options.Add('-Q');
  // n�o mostrar warnings
  Sender.Options.Add('-H-');
  // n�o mostrar hints
  Sender.Options.Add('-W-');
  // -D<syms> = Define conditionals
  Sender.Options.Add('-DRELEASE');
  // -U<paths> = Unit directories
  Sender.AddPathOption('U', sDirLibrary);
  // -U<paths> = Unit directories
  Sender.AddPathOption('U', oACBr.Installations[iVersion].LibrarySearchPath[tPlatform]);
  // -I<paths> = Include directories
  Sender.AddPathOption('I', oACBr.Installations[iVersion].LibrarySearchPath[tPlatform]);
  // -R<paths> = Resource directories
  Sender.AddPathOption('R', oACBr.Installations[iVersion].LibrarySearchPath[tPlatform]);
  // -N0<path> = unit .dcu output directory
  Sender.AddPathOption('N0', sDirLibrary);

  Sender.AddPathOption('LE', sDirBPLPath);
  Sender.AddPathOption('LN', sDirDCPPath);

  // -- Na vers�o XE2 por motivo da nova tecnologia FireMonkey, deve-se adicionar
  // -- os prefixos dos nomes, para identificar se ser� compilado para VCL ou FMX
  if oACBr.Installations[iVersion].VersionNumberStr = 'd16' then
    Sender.Options.Add('-NSData.Win;Datasnap.Win;Web.Win;Soap.Win;Xml.Win;Bde;Vcl;Vcl.Imaging;Vcl.Touch;Vcl.Samples;Vcl.Shell;System;Xml;Data;Datasnap;Web;Soap;Winapi;System.Win');
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  iFor: Integer;
begin
  iVersion := -1;
  sDirRoot    := '';
  sDirLibrary := '';
  sDirPackage := '';
  sDirBPLPath := '';
  sDirDCPpath := '';

  oACBr := TJclBorRADToolInstallations.Create;

  // popular o combobox de vers�es do delphi instaladas na m�quina
  for iFor := 0 to oACBr.Count - 1 do
  begin
    if oACBr.Installations[iFor].VersionNumberStr = 'd3' then
      edtDelphiVersion.Items.Add('Delphi 3')
    else if oACBr.Installations[iFor].VersionNumberStr = 'd4' then
      edtDelphiVersion.Items.Add('Delphi 4')
    else if oACBr.Installations[iFor].VersionNumberStr = 'd5' then
      edtDelphiVersion.Items.Add('Delphi 5')
    else if oACBr.Installations[iFor].VersionNumberStr = 'd6' then
      edtDelphiVersion.Items.Add('Delphi 6')
    else if oACBr.Installations[iFor].VersionNumberStr = 'd7' then
      edtDelphiVersion.Items.Add('Delphi 7')
    else if oACBr.Installations[iFor].VersionNumberStr = 'd9' then
      edtDelphiVersion.Items.Add('Delphi 2005')
    else if oACBr.Installations[iFor].VersionNumberStr = 'd10' then
      edtDelphiVersion.Items.Add('Delphi 2006')
    else if oACBr.Installations[iFor].VersionNumberStr = 'd11' then
      edtDelphiVersion.Items.Add('Delphi 2007')
    else if oACBr.Installations[iFor].VersionNumberStr = 'd12' then
      edtDelphiVersion.Items.Add('Delphi 2009')
    else if oACBr.Installations[iFor].VersionNumberStr = 'd14' then
      edtDelphiVersion.Items.Add('Delphi 2010')
    else if oACBr.Installations[iFor].VersionNumberStr = 'd15' then
      edtDelphiVersion.Items.Add('Delphi XE')
    else if oACBr.Installations[iFor].VersionNumberStr = 'd16' then
      edtDelphiVersion.Items.Add('Delphi XE2');

    // -- Evento disparado antes de iniciar a execu��o do processo.
    oACBr.Installations[iFor].DCC32.OnBeforeExecute := BeforeExecute;

    // -- Evento para saidas de mensagens.
    oACBr.Installations[iFor].OutputCallback := OutputCallLine;
  end;

  if edtDelphiVersion.Items.Count > 0 then
  begin
    edtDelphiVersion.ItemIndex := 0;
    iVersion := 0;
  end;

  LerConfiguracoes;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oACBr.Free;
end;

// bot�o de compila��o e instala��o dos pacotes selecionados no treeview
procedure TfrmPrincipal.btnInstalarACBrClick(Sender: TObject);
var
  iDpk: Integer;
  bRunOnly: Boolean;
  NomePacote: String;
  Cabecalho: String;
begin
  FCountErros := 0;

  btnInstalarACBr.Enabled := False;
  wizPgInstalacao.EnableButton(bkNext, False);
  wizPgInstalacao.EnableButton(bkBack, False);
  wizPgInstalacao.EnableButton(TJvWizardButtonKind(bkCancel), False);
  try
    Cabecalho :=
      'Caminho: ' + edtDirDestino.Text + sLineBreak +
      'Vers�o do delphi: ' + edtDelphiVersion.Text + ' (' + IntToStr(iVersion)+ ')' + sLineBreak +
      'Plataforma: ' + edtPlatform.Text + '(' + IntToStr(Integer(tPlatform)) + ')' + sLineBreak +
      StringOfChar('=', 80);

    // limpar o log
    lstMsgInstalacao.Clear;
    ACBrUtil.WriteToTXT(AnsiString(PathArquivoLog), AnsiString(Cabecalho), False);

    // setar barra de progresso
    pgbInstalacao.Position := 0;
    pgbInstalacao.Max := (frameDpk.Pacotes.Count * 2) + 3;

    // Seta a plataforna selecionada
    SetPlatformSelected;
    pgbInstalacao.Position := pgbInstalacao.Position + 1;
    lstMsgInstalacao.Items.Add('Setando par�metros de plataforma...');
    Application.ProcessMessages;
    ACBrUtil.WriteToTXT(AnsiString(PathArquivoLog), AnsiString('Setando par�metros de plataforma...'));

    // Cria diret�rio de biblioteca da vers�o do delphi selecionada,
    // s� ser� criado se n�o existir
    CreateDirectoryLibrarysNotExist;
    pgbInstalacao.Position := pgbInstalacao.Position + 1;
    lstMsgInstalacao.Items.Add('Criando diret�rios de bibliotecas...');
    Application.ProcessMessages;
    ACBrUtil.WriteToTXT(AnsiString(PathArquivoLog), AnsiString('Criando diret�rios de bibliotecas...'));

    // Adiciona os paths dos fontes na vers�o do delphi selecionada
    AddLibrarySearchPath;
    pgbInstalacao.Position := pgbInstalacao.Position + 1;
    lstMsgInstalacao.Items.Add('Adicionando libray paths...');
    Application.ProcessMessages;
    ACBrUtil.WriteToTXT(AnsiString(PathArquivoLog), AnsiString('Adicionando libray paths...'));

    // compilar os pacotes primeiramente
    lstMsgInstalacao.Items.Add('');
    lstMsgInstalacao.Items.Add('COMPILANDO OS PACOTES...');
    for iDpk := 0 to frameDpk.Pacotes.Count - 1 do
    begin
      NomePacote := frameDpk.Pacotes[iDpk].Caption;

      if frameDpk.IsPacoteNF2(NomePacote) then
        sDirPackage := sDirRoot + '\Pacotes\Delphi\ACBrNFe2\'
      else
        sDirPackage := sDirRoot + '\Pacotes\Delphi\';

      if (IsDelphiPackage(NomePacote)) and (frameDpk.Pacotes[iDpk].Checked) then
      begin
        ACBrUtil.WriteToTXT(AnsiString(PathArquivoLog), AnsiString(''));

        if oACBr.Installations[iVersion].CompilePackage(
          sDirPackage + NomePacote,
          sDirBPLPath,
          sDirDCPpath) then
        begin
          lstMsgInstalacao.Items.Add(Format('Pacote "%s" compilado com sucesso.', [sDirPackage + NomePacote]));
          lstMsgInstalacao.ItemIndex := lstMsgInstalacao.Count - 1;
        end
        else
        begin
          Inc(FCountErros);
          lstMsgInstalacao.Items.Add(Format('Erro ao compilar o pacote "%s".', [sDirPackage + NomePacote]));
          lstMsgInstalacao.ItemIndex := lstMsgInstalacao.Count - 1;
        end;
      end;

      pgbInstalacao.Position := pgbInstalacao.Position + 1;
      Application.ProcessMessages;
    end;

    // instalar os pacotes somente se n�o ocorreu erro na compila��o
    if (edtPlatform.ItemIndex = 0) then
    begin
      if (FCountErros <= 0) then
      begin
        lstMsgInstalacao.Items.Add('');
        lstMsgInstalacao.Items.Add('INSTALANDO OS PACOTES...');
        lstMsgInstalacao.ItemIndex := lstMsgInstalacao.Count - 1;

        for iDpk := 0 to frameDpk.Pacotes.Count - 1 do
        begin
          NomePacote := frameDpk.Pacotes[iDpk].Caption;

          if frameDpk.IsPacoteNF2(NomePacote) then
            sDirPackage := sDirRoot + '\Pacotes\Delphi\ACBrNFe2\'
          else
            sDirPackage := sDirRoot + '\Pacotes\Delphi\';

          if IsDelphiPackage(NomePacote) then
          begin
            // instalar somente os pacotes de designtime
            GetDPKFileInfo(sDirPackage + NomePacote, bRunOnly);
            if not bRunOnly then
            begin
              // se o pacote estiver marcado instalar, sen�o desinstalar
              if frameDpk.Pacotes[iDpk].Checked then
              begin
                ACBrUtil.WriteToTXT(AnsiString(PathArquivoLog), AnsiString(''));

                if oACBr.Installations[iVersion].InstallPackage(
                  sDirPackage + NomePacote,
                  sDirBPLPath,
                  sDirDCPpath) then
                begin
                  lstMsgInstalacao.Items.Add(Format('Pacote "%s" instalado com sucesso.', [sDirPackage + NomePacote]));
                  lstMsgInstalacao.ItemIndex := lstMsgInstalacao.Count - 1;
                end
                else
                begin
                  Inc(FCountErros);
                  lstMsgInstalacao.Items.Add(Format('Ocorreu um erro ao instalar o pacote "%s".', [sDirPackage + NomePacote]));
                  lstMsgInstalacao.ItemIndex := lstMsgInstalacao.Count - 1;
                end;
              end
              else
              begin
                ACBrUtil.WriteToTXT(AnsiString(PathArquivoLog), AnsiString(''));

                if oACBr.Installations[iVersion].UninstallPackage(
                  sDirPackage + NomePacote,
                  sDirBPLPath,
                  sDirDCPpath) then
                begin
                  lstMsgInstalacao.Items.Add(Format('Pacote "%s" removido com sucesso...', [NomePacote]));
                  lstMsgInstalacao.ItemIndex := lstMsgInstalacao.Count - 1;
                end;
              end;
            end;
          end;

          pgbInstalacao.Position := pgbInstalacao.Position + 1;
          Application.ProcessMessages;
        end;
      end
      else
      begin
        lstMsgInstalacao.Items.Add('');
        lstMsgInstalacao.Items.Add('Abortando... Ocorreram erros na compila��o dos pacotes.');
        lstMsgInstalacao.ItemIndex := lstMsgInstalacao.Count - 1;
      end;
    end
    else
    begin
      lstMsgInstalacao.Items.Add('');
      lstMsgInstalacao.Items.Add('Para a plataforma de 64 bits os pacotes s�o somente compilados.');
      lstMsgInstalacao.ItemIndex := lstMsgInstalacao.Count - 1;
    end;

    // instalar capicom
    if ckbInstalarCapicom.Checked then
    begin
      try
        InstalarCapicom;
        lstMsgInstalacao.Items.Add(Format('CAPICOM instalado com sucesso em "%s".', [PathSystem]));
        lstMsgInstalacao.ItemIndex := lstMsgInstalacao.Count - 1;
      except
        on E: Exception do
        begin
          lstMsgInstalacao.Items.Add(Format('Ocorreu erro ao instalar a CAPICOM em "%s": %s', [PathSystem, E.Message]));
          lstMsgInstalacao.ItemIndex := lstMsgInstalacao.Count - 1;
        end;
      end;
    end;

    // instalar OpenSSL
    if ckbInstalarOpenSSL.Checked then
    begin
      try
        InstalarOpenSSL;
        lstMsgInstalacao.Items.Add(Format('OPENSSL instalado com sucesso em "%s".', [PathSystem]));
        lstMsgInstalacao.ItemIndex := lstMsgInstalacao.Count - 1;
      except
        on E: Exception do
        begin
          lstMsgInstalacao.Items.Add(Format('Ocorreu erro ao instalar a OPENSSL em "%s": %s', [PathSystem, E.Message]));
          lstMsgInstalacao.ItemIndex := lstMsgInstalacao.Count - 1;
        end;
      end;
    end;
  finally
    btnInstalarACBr.Enabled := True;
    wizPgInstalacao.EnableButton(bkBack, True);
    wizPgInstalacao.EnableButton(bkNext, FCountErros = 0);
    wizPgInstalacao.EnableButton(TJvWizardButtonKind(bkCancel), True);
  end;

  if FCountErros = 0 then
  begin
    Application.MessageBox(
      PWideChar(
        'Pacotes compilados e instalados com sucesso! '+sLineBreak+
        'Clique em "Pr�ximo" para finalizar a instala��o.'
      ),
      'Instala��o',
      MB_ICONINFORMATION + MB_OK
    );
  end
  else
  begin
    if Application.MessageBox(
      PWideChar(
        'Ocorreram erros durante o processo de instala��o, '+sLineBreak+
        'para maiores informa��es verifique o arquivo de log gerado.'+sLineBreak+sLineBreak+
        'Deseja visualizar o arquivo de log gerado?'
      ),
      'Instala��o',
      MB_ICONQUESTION + MB_YESNO
    ) = ID_YES then
    begin
      btnVisualizarLogCompilacao.Click;
    end;
  end;
end;

// chama a caixa de dialogo para selecionar o diret�rio de instala��o
// seria bom que a caixa fosse aquele que possui o bot�o de criar pasta
procedure TfrmPrincipal.btnSelecDirInstallClick(Sender: TObject);
var
  Dir: String;
begin
  if SelectDirectory('Selecione o diret�rio de instala��o', '', Dir, [sdNewFolder, sdNewUI, sdValidateDir]) then
    edtDirDestino.Text := Dir;
end;

// quando trocar a vers�o verificar se libera ou n�o o combo
// da plataforma de compila��o
procedure TfrmPrincipal.edtDelphiVersionChange(Sender: TObject);
const
  VXE2 = 'd16';
begin
  iVersion := edtDelphiVersion.ItemIndex;

  // -- Plataforma s� habilita para Delphi XE2
  // -- Desabilita para vers�o diferente de Delphi XE2
  edtPlatform.Enabled := oACBr.Installations[iVersion].VersionNumberStr = VXE2;
  if oACBr.Installations[iVersion].VersionNumberStr <> VXE2 then
    edtPlatform.ItemIndex := 0;
end;

// abrir o endere�o do ACBrSAC quando clicar na propaganda
procedure TfrmPrincipal.imgPropaganda1Click(Sender: TObject);
begin
  // ir para o endere�o do ACBrSAC
  ShellExecute(Handle, 'open', PWideChar(lblUrlACBrSac1.Caption), '', '', 1);
end;

// quando clicar em alguma das urls chamar o link mostrado no caption
procedure TfrmPrincipal.URLClick(Sender: TObject);
begin
  ShellExecute(Handle, 'open', PWideChar(TLabel(Sender).Caption), '', '', 1);
end;

procedure TfrmPrincipal.wizPgInicioNextButtonClick(Sender: TObject;
  var Stop: Boolean);
begin
  // Verificar se o delphi est� aberto
  if oACBr.AnyInstanceRunning then
  begin
    Stop := True;
    Application.MessageBox(
      'Feche a IDE do delphi antes de continuar.',
      PWideChar(Application.Title),
      MB_ICONERROR + MB_OK
    );
  end;

  // Verificar se o tortoise est� instalado
  if not TSVN_Class.IsTortoiseInstalado then
  begin
    Stop := True;
    Application.MessageBox(
      'Tortoise n�o foi instalado, instale primeiro o tortoise antes de continuar.',
      PWideChar(Application.Title),
      MB_ICONERROR + MB_OK
    );
  end;
end;

procedure TfrmPrincipal.wizPgInstalacaoEnterPage(Sender: TObject;
  const FromPage: TJvWizardCustomPage);
begin
  SetPlatformSelected;

  // para 64 bit somente compilar
  if tPlatform = bpWin32 then // Win32
    btnInstalarACBr.Caption := 'Instalar'
  else // win64
    btnInstalarACBr.Caption := 'Compilar';

  // mostrar ao usu�rio as informa��es de compila��o
  lblInfoCompilacao.Caption :=
    edtDelphiVersion.Text + ' ' + edtPlatform.Text + sLineBreak +
    'Dir. Instala��o: ' + edtDirDestino.Text + sLineBreak +
    'Dir. BPL: ' + oACBr.Installations[iVersion].BPLOutputPath[tPlatform];
end;

procedure TfrmPrincipal.wizPgInstalacaoNextButtonClick(Sender: TObject;
  var Stop: Boolean);
begin
  if (lstMsgInstalacao.Count <= 0) then
  begin
    Stop := True;
    Application.MessageBox(
      'Clique no bot�o instalar antes de continuar.',
      'Erro.',
      MB_OK + MB_ICONERROR
    );
  end;

  if (FCountErros > 0) then
  begin
    Stop := True;
    Application.MessageBox(
      'Ocorreram erros durante a compila��o e instala��o dos pacotes, verifique.',
      'Erro.',
      MB_OK + MB_ICONERROR
    );
  end;
end;

procedure TfrmPrincipal.wizPgConfiguracaoNextButtonClick(Sender: TObject;
  var Stop: Boolean);
begin
  if Pos(oACBr.Installations[iVersion].VersionNumberStr, 'd3, d4, d5, d6') > 0 then
  begin
    Stop := True;
    edtDelphiVersion.SetFocus;
    Application.MessageBox(
      'Vers�o do delphi n�o suportada pelo ACBr.',
      'Erro.',
      MB_OK + MB_ICONERROR
    );
  end;

  // verificar se foi informado o diret�rio
  if Trim(edtDirDestino.Text) = EmptyStr then
  begin
    Stop := True;
    edtDirDestino.SetFocus;
    Application.MessageBox(
      'Diret�rio de instala��o n�o foi informado.',
      'Erro.',
      MB_OK + MB_ICONERROR
    );
  end;

  // prevenir vers�o do delphi em branco
  if Trim(edtDelphiVersion.Text) = '' then
  begin
    Stop := True;
    edtDelphiVersion.SetFocus;
    Application.MessageBox(
      'Vers�o do delphi n�o foi informada.',
      'Erro.',
      MB_OK + MB_ICONERROR
    );
  end;

  // prevenir plataforma em branco
  if Trim(edtPlatform.Text) = '' then
  begin
    Stop := True;
    edtPlatform.SetFocus;
    Application.MessageBox(
      'Plataforma de compila��o n�o foi informada.',
      'Erro.',
      MB_OK + MB_ICONERROR
    );
  end;

  // Gravar as configura��es em um .ini para utilizar depois
  GravarConfiguracoes;
end;

procedure TfrmPrincipal.wizPgObterFontesEnterPage(Sender: TObject;
  const FromPage: TJvWizardCustomPage);
begin
  // verificar se o checkout j� foi feito se sim, atualizar
  // se n�o fazer o checkout
  if IsCheckOutJaFeito(edtDirDestino.Text) then
  begin
    lblInfoObterFontes.Caption := 'Clique em "Atualizar" para efetuar a atualiza��o do reposit�rio ACBr.';
    btnSVNCheckoutUpdate.Caption := 'Atualizar...';
    btnSVNCheckoutUpdate.Tag := -1;
  end
  else
  begin
    lblInfoObterFontes.Caption := 'Clique em "Download" para efetuar o download do reposit�rio ACBr.';
    btnSVNCheckoutUpdate.Caption := 'Download...';
    btnSVNCheckoutUpdate.Tag := 1;
  end;
end;

procedure TfrmPrincipal.btnSVNCheckoutUpdateClick(Sender: TObject);
begin
  // chamar o m�todo de update ou checkout conforme a necessidade
  if TButton(Sender).Tag > 0 then
  begin
    // criar o diret�rio onde ser� baixado o reposit�rio
    if not DirectoryExists(edtDirDestino.Text) then
    begin
      if not ForceDirectories(edtDirDestino.Text) then
      begin
        raise EDirectoryNotFoundException.Create(
          'Ocorreu o seguinte erro ao criar o diret�rio' + sLineBreak +
            SysErrorMessage(GetLastError));
      end;
    end;

    // checkout
    TSVN_Class.SVNTortoise_CheckOut(edtURL.Text, edtDirDestino.Text, ckbFecharTortoise.Checked );
  end
  else
  begin
    // update
    TSVN_Class.SVNTortoise_Update(edtDirDestino.Text, ckbFecharTortoise.Checked);
  end;
end;

procedure TfrmPrincipal.btnVisualizarLogCompilacaoClick(Sender: TObject);
begin
  ShellExecute(Handle, 'open', PWideChar(PathArquivoLog), '', '', 1);
end;

procedure TfrmPrincipal.wizPgObterFontesNextButtonClick(Sender: TObject;
  var Stop: Boolean);
var
  I: Integer;
  NomePacote: String;
begin
  GravarConfiguracoes;

  // verificar se os pacotes existem antes de seguir para o pr�ximo paso
  for I := 0 to frameDpk.Pacotes.Count - 1 do
  begin
    if frameDpk.Pacotes[I].Checked then
    begin
      sDirRoot := edtDirDestino.Text;
      NomePacote := frameDpk.Pacotes[I].Caption;

      // adicionar o n�vel do diret�rio da nota eletronica
      if frameDpk.IsPacoteNF2(NomePacote) then
        sDirPackage := sDirRoot + '\Pacotes\Delphi\ACBrNFe2\'
      else
        sDirPackage := sDirRoot + '\Pacotes\Delphi\';

      if IsDelphiPackage(NomePacote) then
      begin
        if not FileExists(sDirPackage + NomePacote) then
        begin
          Stop := True;
          Application.MessageBox(PWideChar(Format(
            'Pacote "%s" n�o encontrado, efetue novamente o download do reposit�rio', [NomePacote])),
            'Erro.',
            MB_ICONERROR + MB_OK
          );
          Break;
        end;
      end;
    end;
  end;
end;

procedure TfrmPrincipal.wizPrincipalCancelButtonClick(Sender: TObject);
begin
  if Application.MessageBox(
    'Deseja realmente cancelar a instala��o?',
    'Fechar',
    MB_ICONQUESTION + MB_YESNO
  ) = ID_YES then
  begin
    Self.Close;
  end;
end;

procedure TfrmPrincipal.wizPrincipalFinishButtonClick(Sender: TObject);
begin
  Self.Close;
end;

end.
