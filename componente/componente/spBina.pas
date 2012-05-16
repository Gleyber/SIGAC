
 {*******************************************************************
 * Componente spBina (identificador de Chamadas Telefônicas DTMF)   *
 * Herança de Classe: "TComport"                                    *
 * Original escrito por Djnan Crnila (CPort.pas)                    *
 *                                                                  *
 * Transformado em BINA por Valdomiro Emídio da Silva               *
 *                          valdomiro.silva@terra.com.br
 *
 * Versäo 1.00   15/03/2001
 * Versäo 1.02   01/07/2001
 *
 *                                                                  *
 * ComPort Library ver. 2.60                                        *
 *   for Delphi 3, 4, 5 and C++ Builder 3, 4, 5                     *
 * written by Dejan Crnila, 1998 - 2000                             *
 * email: dejancrn@yahoo.com                                        *
 *                                                                  *
 ********************************************************************
 *   !!IMPORTANTE!!                                                 *
 *                                                                  *
 * Para Funcionar:                                                  *
 * (1) - Deverá ser colocado um resistor antes da linha             *
 *       telefônica entrar em seu modem (veja o arquivo spBina.htm) *
 * (2) - A linha deverá estar habilitada para receber sinais de     *
 *       BINA DTMF (somente para a função BINA)                     *
 *                                                                  *
 * (3) - Funciona também como um exelente Detector DTMF. Você poderá*
 *       fazer seus aplicativos responder a nuneros digitados pela  *
 *       linha telefonica (veja exemplos)                           *
 *                                                                  *
 ********************************************************************
 *                                                                  *
 *            LEIA............LEIA...........LEIA                   *
 *                                                                  *
 *                                                                  *
 *  APÓS ANALIZAR OS FONTES VOCÊ PERCEBERÁ QUE O SUPERBINA É APENAS *
 *  A "GRANDE IDÉIA". AFINAL,QUASE NADA É ADICIONADO ÀQUILO QUE JÁ  *
 *  SABEMOS. TODO O SEGREDO ESTÁ NA COLOCAÇÃO DO RESISTOR NA LINHA. *
 *                                                                  *
 *  DEPENDENDO DO MODEM,ESTE RESISTOR PODE SER ALTERADO POR UM VALOR*
 *  MAIS ALTO (TESTEI ATÉ COM 8K2 1/2 W). A VANTAGEM DE UM RESISTOR *
 * ALTO É A SEGUINTE: SEU TELEFONE TOCARÁ NORMALMENTE.  MAS, USANDO *
 * UM TRUQUE ELE TOCARÁ DA MESMA FORMA: BASTA FINALIZAR A PORTA LOGO*
 * APÓS  A DETECÇÃO (ver exemplos)                                  *
 ********************************************************************


 Historico da Versäo 1

 Versão 1.00   15/03/2001
  - Em alguns modems, surgiram problelmas com o comando +FCLASS,
    responsavel pela deteccäo do DTMF. Seu formato deve ser mudado,
    caso o modem näo aceite o formato do comando.
  - O spBina fazia 'discagem cega' e colocava a mensagem 'Ativo' mesmo
    se tivesse ocorrido algum erro nos comandos.

 Versão 1.02   01/07/2001
  - Problemas corrigidos
  Novas funcoes:
  - Tela de configuracäo
  - Bloqueia o envio de comandos, caso a resposta seja: ERROR
  - Varias opcoes para o comando AT e FCLASS
  - Verifica se o modem trabalha na Classe 8 ou Classe 80
  - Tela de teste de recepcao DTMF de tecla digitada via fone
 }

unit spBina;

{$I spBina.inc}

interface

uses
  Windows, Dialogs, Messages, Classes, SysUtils, IniFiles, Registry;

type
  TPorta = string;
  TDDDLocal = string;
  TBaudRate = (brCustom, br110, br300, br600, br1200, br2400, br4800, br9600, br14400,
    br19200, br38400, br56000, br57600, br115200, br128000, br256000);
  TStopBits = (sbOneStopBit, sbOne5StopBits, sbTwoStopBits);
  TDataBits = (dbFive, dbSix, dbSeven, dbEight);
  TParityBits = (prNone, prOdd, prEven, prMark, prSpace);
  TDTRFlowControl = (dtrDisable, dtrEnable, dtrHandshake);
  TRTSFlowControl = (rtsDisable, rtsEnable, rtsHandshake, rtsToggle);
  TFlowControl = (fcHardware, fcSoftware, fcNone, fcCustom);
  TComEvent = (evDTMF, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR,
    evError, evRLSD, evRx80Full);
  TComEvents = set of TComEvent;
  TComSignal = (csCTS, csDSR, csRing, csRLSD);
  TComSignals = set of TComSignal;
  TComLedSignal = (lsCTS, lsDSR, lsRLSD, lsRing, lsRx, lsTx);
  TComError = (ceFrame, ceRxParity, ceOverrun, ceBreak, ceIO, ceMode, ceRxOver,
    ceTxFull);
  TComErrors = set of TComError;
  TSyncMethod = (smThreadSync, smWindowSync, smNone);
  TStoreType = (stRegistry, stIniFile);
  TStoredProp = (spBasic, spFlowControl, spBuffer, spTimeouts, spParity,
    spOthers);
  TStoredProps = set of TStoredProp;

  TDTMFEvent = procedure(Sender: TObject; Count: integer) of object;

  TRxBufEvent = procedure(Sender: TObject; const Buffer;
    Count: integer) of object;
  TRxStrEvent = procedure(Sender: TObject; Str: string) of object;
  TComErrorEvent = procedure(Sender: TObject; Errors: TComErrors) of object;
  TComSignalEvent = procedure(Sender: TObject; OnOff: boolean) of object;

  TOperationKind = (okWrite, okRead);
  TAsync = record
    Overlapped: TOverlapped;
    Kind: TOperationKind;
  end;
  PAsync = ^TAsync;

  TSspBina = class;

  TComLink = class
  private
    FOnRxBuf: TRxBufEvent;
    FOnCTSChange: TComSignalEvent;
    FOnDSRChange: TComSignalEvent;
    FOnRLSDChange: TComSignalEvent;
    FOnRing: TNotifyEvent;
    FOnTx: TComSignalEvent;
    FOnRx: TComSignalEvent;
  public
    property OnRxBuf: TRxBufEvent read FOnRxBuf write FOnRxBuf;
    property OnCTSChange: TComSignalEvent read FOnCTSChange write FOnCTSChange;
    property OnDSRChange: TComSignalEvent read FOnDSRChange write FOnDSRChange;
    property OnRLSDChange: TComSignalEvent read FOnRLSDChange write FOnRLSDChange;
    property OnRing: TNotifyEvent read FOnRing write FOnRing;
    property OnTx: TComSignalEvent read FOnTx write FOnTx;
    property OnRx: TComSignalEvent read FOnRx write FOnRx;
  end;

  TComThread = class(TThread)
  private
    FCspBina: TSspBina;
    FStopEvent: THandle;
    FEvents: TComEvents;
  protected
    procedure DispatchComMsg;
    procedure DoEvents;
    procedure Execute; override;
    procedure SendEvents;
    procedure Stop;
  public
    constructor Create(ACspBina: TSspBina);
    destructor Destroy; override;
  end;

  TComTimeouts = class(TPersistent)
  private
    FCspBina: TSspBina;
    FReadInterval: integer;
    FReadTotalM: integer;
    FReadTotalC: integer;
    FWriteTotalM: integer;
    FWriteTotalC: integer;
    procedure SetBINA(const ACspBina: TSspBina);
    procedure SetReadInterval(const Value: integer);
    procedure SetReadTotalM(const Value: integer);
    procedure SetReadTotalC(const Value: integer);
    procedure SetWriteTotalM(const Value: integer);
    procedure SetWriteTotalC(const Value: integer);
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create;
    property BINA: TSspBina read FCspBina;
  published
    property ReadInterval: integer read FReadInterval write SetReadInterval default - 1;
    property ReadTotalMultiplier: integer read FReadTotalM write SetReadTotalM default 0;
    property ReadTotalConstant: integer read FReadTotalC write SetReadTotalC default 0;
    property WriteTotalMultiplier: integer read FWriteTotalM write SetWriteTotalM default 100;
    property WriteTotalConstant: integer read FWriteTotalC write SetWriteTotalC default 1000;
  end;

  TComFlowControl = class(TPersistent)
  private
    FCspBina: TSspBina;
    FOutCTSFlow: boolean;
    FOutDSRFlow: boolean;
    FControlDTR: TDTRFlowControl;
    FControlRTS: TRTSFlowControl;
    FXonXoffOut: boolean;
    FXonXoffIn: boolean;
    FDSRSensitivity: boolean;
    FTxContinueOnXoff: boolean;
    FXonChar: char;
    FXoffChar: char;
    procedure SetBINA(const ACspBina: TSspBina);
    procedure SetOutCTSFlow(const Value: boolean);
    procedure SetOutDSRFlow(const Value: boolean);
    procedure SetControlDTR(const Value: TDTRFlowControl);
    procedure SetControlRTS(const Value: TRTSFlowControl);
    procedure SetXonXoffOut(const Value: boolean);
    procedure SetXonXoffIn(const Value: boolean);
    procedure SetDSRSensitivity(const Value: boolean);
    procedure SetTxContinueOnXoff(const Value: boolean);
    procedure SetXonChar(const Value: char);
    procedure SetXoffChar(const Value: char);
    procedure SetFlowControl(const Value: TFlowControl);
    function GetFlowControl: TFlowControl;
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create;
    property BINA: TSspBina read FCspBina;
  published
    property FlowControl: TFlowControl read GetFlowControl write SetFlowControl stored False;
    property OutCTSFlow: boolean read FOutCTSFlow write SetOutCTSFlow;
    property OutDSRFlow: boolean read FOutDSRFlow write SetOutDSRFlow;
    property ControlDTR: TDTRFlowControl read FControlDTR write SetControlDTR;
    property ControlRTS: TRTSFlowControl read FControlRTS write SetControlRTS;
    property XonXoffOut: boolean read FXonXoffOut write SetXonXoffOut;
    property XonXoffIn: boolean read FXonXoffIn write SetXonXoffIn;
    property DSRSensitivity: boolean read FDSRSensitivity write SetDSRSensitivity
      default False;
    property TxContinueOnXoff: boolean read FTxContinueOnXoff write SetTxContinueOnXoff
      default False;
    property XonChar: char read FXonChar write SetXonChar default #17;
    property XoffChar: char read FXoffChar write SetXoffChar default #19;
  end;

  TComParity = class(TPersistent)
  private
    FCspBina: TSspBina;
    FBits: TParityBits;
    FCheck: boolean;
    FReplace: boolean;
    FReplaceChar: char;
    procedure SetBINA(const ACspBina: TSspBina);
    procedure SetBits(const Value: TParityBits);
    procedure SetCheck(const Value: boolean);
    procedure SetReplace(const Value: boolean);
    procedure SetReplaceChar(const Value: char);
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create;
    property BINA: TSspBina read FCspBina;
  published
    property Bits: TParityBits read FBits write SetBits;
    property Check: boolean read FCheck write SetCheck default False;
    property Replace: boolean read FReplace write SetReplace default False;
    property ReplaceChar: char read FReplaceChar write SetReplaceChar default #0;
  end;

  TComBuffer = class(TPersistent)
  private
    FCspBina: TSspBina;
    FInputSize: integer;
    FOutputSize: integer;
    procedure SetBINA(const ACspBina: TSspBina);
    procedure SetInputSize(const Value: integer);
    procedure SetOutputSize(const Value: integer);
  protected
    procedure AssignTo(Dest: TPersistent); override;
  public
    constructor Create;
    property BINA: TSspBina read FCspBina;
  published
    property InputSize: integer read FInputSize write SetInputSize default 1024;
    property OutputSize: integer read FOutputSize write SetOutputSize default 1024;
  end;

  TSspBina = class(TComponent)
  private
    FEventThread: TComThread;
    FThreadCreated: boolean;
    FHandle: THandle;
    FWindow: THandle;
    FUpdateCount: integer;
    FLinks: TList;
    FConectado: boolean;
    FBaudRate: TBaudRate;
    FCustomBaudRate: integer;
    FPort: TPorta;
    FDDDL: TDDDLocal;
    FStopBits: TStopBits;
    FDataBits: TDataBits;
    FDiscardNull: boolean;
    FEventChar: char;
    FEvents: TComEvents;
    FBuffer: TComBuffer;
    FParity: TComParity;
    FTimeouts: TComTimeouts;
    FFlowControl: TComFlowControl;
    FSyncMethod: TSyncMethod;
    FStoredProps: TStoredProps;

    FOnDTMF: TDTMFEvent;

    FOnRxBuf: TRxBufEvent;
    FOnTxEmpty: TNotifyEvent;
    FOnBreak: TNotifyEvent;
    FOnRing: TNotifyEvent;
    FOnCTSChange: TComSignalEvent;
    FOnDSRChange: TComSignalEvent;
    FOnRLSDChange: TComSignalEvent;
    FOnError: TComErrorEvent;
    FOnRxFlag: TNotifyEvent;
    FOnAfterOpen: TNotifyEvent;
    FOnAfterClose: TNotifyEvent;
    FOnBeforeOpen: TNotifyEvent;
    FOnBeforeClose: TNotifyEvent;
    FOnRx80Full: TNotifyEvent;
    function GetTriggersOnDTMF: boolean;
    procedure SetConectado(const Value: boolean);
    procedure SetBaudRate(const Value: TBaudRate);
    procedure SetCustomBaudRate(const Value: integer);
    procedure SetPort(const Value: TPorta);
    procedure SetDDDL(const Value: TDDDLocal);
    procedure SetStopBits(const Value: TStopBits);
    procedure SetDataBits(const Value: TDataBits);
    procedure SetDiscardNull(const Value: boolean);
    procedure SetEventChar(const Value: char);
    procedure SetSyncMethod(const Value: TSyncMethod);
    procedure SetParity(const Value: TComParity);
    procedure SetTimeouts(const Value: TComTimeouts);
    procedure SetBuffer(const Value: TComBuffer);
    procedure SetFlowControl(const Value: TComFlowControl);
    procedure SendSignals(Signal: TComLedSignal; OnOff: boolean);
    procedure CheckSignals(Open: boolean);
    procedure WindowMethod(var Message: TMessage);
    procedure CallAfterOpen;
    procedure CallAfterClose;
    procedure CallBeforeOpen;
    procedure CallBeforeClose;
    procedure CallDTMF;
    procedure CallTxEmpty;
    procedure CallBreak;
    procedure CallRing;
    procedure CallRxFlag;
    procedure CallCTSChange;
    procedure CallDSRChange;
    procedure CallError;
    procedure CallRLSDChange;
    procedure CallRx80Full;
  protected
    procedure Loaded; override;
    procedure DoAfterClose; dynamic;
    procedure DoAfterOpen; dynamic;
    procedure DoBeforeClose; dynamic;
    procedure DoBeforeOpen; dynamic;

    procedure DoDTMF(Count: integer); dynamic;

    procedure DoRxBuf(const Buffer; Count: integer); dynamic;
    procedure DoTxEmpty; dynamic;
    procedure DoBreak; dynamic;
    procedure DoRing; dynamic;
    procedure DoRxFlag; dynamic;
    procedure DoCTSChange(OnOff: boolean); dynamic;
    procedure DoDSRChange(OnOff: boolean); dynamic;
    procedure DoError(Errors: TComErrors); dynamic;
    procedure DoRLSDChange(OnOff: boolean); dynamic;
    procedure DoRx80Full; dynamic;
    procedure StoreRegistry(Reg: TRegistry); virtual;
    procedure StoreIniFile(IniFile: TIniFile); virtual;
    procedure LoadRegistry(Reg: TRegistry); virtual;
    procedure LoadIniFile(IniFile: TIniFile); virtual;
    procedure CreateHandle; virtual;
    procedure DestroyHandle; virtual;
    procedure ApplyDCB; dynamic;
    procedure ApplyTimeouts; dynamic;
    procedure ApplyBuffer; dynamic;
    procedure SetupBINA; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure BeginUpdate;
    procedure EndUpdate;
    procedure StoreSettings(StoreType: TStoreType; StoreTo: string);
    procedure LoadSettings(StoreType: TStoreType; LoadFrom: string);
    procedure Open;
    procedure Close;
    function InputCount: integer;
    function OutputCount: integer;
    function Signals: TComSignals;
    function StateFlags: TComStateFlags;
    procedure SetDTR(OnOff: boolean);
    procedure SetRTS(OnOff: boolean);
    procedure SetXonXoff(OnOff: boolean);
    procedure SetBreak(OnOff: boolean);
    procedure ClearBuffer(Input, Output: boolean);
    function LastErrors: TComErrors;
    function Write(const Buffer; Count: integer): integer;
    function Read(var Buffer; Count: integer): integer;

    /////////////////
    procedure LoadComandosAT(const ArquivoATcmd: string; var TipoModem, setado: string);
    procedure ShowATComandSetup(const Setup, Ativar, desativar: boolean;
      var PortaCom, vDDD: string);
    function LeiaDTMF(var str: string; Count: integer): integer;
    procedure SalvarComandos;
    function FormateResultado(var stexto, smascara, stipo, sddd, sfone: string): string;
    function WriteDTMF(Str: string): integer;
    procedure LocalizaPorta(porta: string);
    //////////////////

    function WriteAsync(const Buffer; Count: integer;
      var AsyncPtr: PAsync): integer;
    function WriteStrAsync(Str: string; var AsyncPtr: PAsync): integer;
    function ReadAsync(var Buffer; Count: integer;
      var AsyncPtr: PAsync): integer;
    function ReadStrAsync(var Str: string; Count: integer;
      var AsyncPtr: PAsync): integer;
    function WaitForAsync(var AsyncPtr: PAsync): integer;
    function IsAsyncCompleted(AsyncPtr: PAsync): boolean;
    procedure WaitForEvent(var Events: TComEvents; Timeout: integer);
    procedure AbortAllAsync;
    procedure TransmitChar(Ch: char);
    procedure RegisterLink(AComLink: TComLink);
    procedure UnRegisterLink(AComLink: TComLink);
    property Handle: THandle read FHandle;
    property TriggersOnDTMF: boolean read GetTriggersOnDTMF;
    property StoredProps: TStoredProps read FStoredProps write FStoredProps;
    property Conectado: boolean read FConectado write SetConectado default False;
    property BaudRate: TBaudRate read FBaudRate write SetBaudRate;
    property CustomBaudRate: integer read FCustomBaudRate write SetCustomBaudRate;
    property DDDLocal: TDDDLocal read FDDDL write SetDDDL;
    property Porta: TPorta read FPort write SetPort;
    property Parity: TComParity read FParity write SetParity;
    property StopBits: TStopBits read FStopBits write SetStopBits;
    property DataBits: TDataBits read FDataBits write SetDataBits;
    property DiscardNull: boolean read FDiscardNull write SetDiscardNull default False;
    property EventChar: char read FEventChar write SetEventChar default #0;
    property Events: TComEvents read FEvents write FEvents;
    property Buffer: TComBuffer read FBuffer write SetBuffer;
    property FlowControl: TComFlowControl read FFlowControl write SetFlowControl;
    property Timeouts: TComTimeouts read FTimeouts write SetTimeouts;
    property SyncMethod: TSyncMethod read FSyncMethod write SetSyncMethod default
      smThreadSync;
    property OnAfterOpen: TNotifyEvent read FOnAfterOpen write FOnAfterOpen;
    property OnAfterClose: TNotifyEvent read FOnAfterClose write FOnAfterClose;
    property OnBeforeOpen: TNotifyEvent read FOnBeforeOpen write FOnBeforeOpen;
    property OnBeforeClose: TNotifyEvent read FOnBeforeClose write FOnBeforeClose;
    property OnDTMF: TDTMFEvent read FOnDTMF write FOnDTMF;
    property OnRxBuf: TRxBufEvent read FOnRxBuf write FOnRxBuf;
    property OnTxEmpty: TNotifyEvent read FOnTxEmpty write FOnTxEmpty;
    property OnBreak: TNotifyEvent read FOnBreak write FOnBreak;
    property OnRing: TNotifyEvent read FOnRing write FOnRing;
    property OnCTSChange: TComSignalEvent read FOnCTSChange write FOnCTSChange;
    property OnDSRChange: TComSignalEvent read FOnDSRChange write FOnDSRChange;
    property OnRLSDChange: TComSignalEvent read FOnRLSDChange write FOnRLSDChange;
    property OnRxFlag: TNotifyEvent read FOnRxFlag write FOnRxFlag;
    property OnError: TComErrorEvent read FOnError write FOnError;
    property OnRx80Full: TNotifyEvent read FOnRx80Full write FOnRx80Full;
  end;

  TspBina = class(TSspBina)
    property Conectado;
    property Porta;
    property DDDLocal;
    property OnDTMF;
    property OnRing;
  end;

  TComDataPacket = class(TComponent)
  private
    FComLink: TComLink;
    FCspBina: TSspBina;
    FStartString: string;
    FStopString: string;
    FMaxBufferSize: integer;
    FSize: integer;
    FIncludeStrings: boolean;
    FCaseInsensitive: boolean;
    FInPacket: boolean;
    FBuffer: string;
    FOnPacket: TRxStrEvent;
    FOnDiscard: TRxStrEvent;
    procedure SetBINA(const Value: TSspBina);
    procedure SetCaseInsensitive(const Value: boolean);
    procedure SetSize(const Value: integer);
    procedure SetStartString(const Value: string);
    procedure SetStopString(const Value: string);
    procedure RxBuf(Sender: TObject; const Buffer; Count: integer);
    procedure CheckIncludeStrings(var Str: string);
    function Upper(Str: string): string;
    procedure EmptyBuffer;
  protected
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure DoDiscard(Str: string); dynamic;
    procedure DoPacket(Str: string); dynamic;
    procedure HandleBuffer; virtual;
    property Buffer: string read FBuffer write FBuffer;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property BINA: TSspBina read FCspBina write SetBINA;
    property CaseInsensitive: boolean read FCaseInsensitive write SetCaseInsensitive
      default False;
    property IncludeStrings: boolean read FIncludeStrings write FIncludeStrings default False;
    property MaxBufferSize: integer read FMaxBufferSize write FMaxBufferSize default 1024;
    property StartString: string read FStartString write SetStartString;
    property StopString: string read FStopString write SetStopString;
    property Size: integer read FSize write SetSize default 0;
    property OnDiscard: TRxStrEvent read FOnDiscard write FOnDiscard;
    property OnPacket: TRxStrEvent read FOnPacket write FOnPacket;
  end;

  ECspBina = class(Exception)
  private
    FWinCode: integer;
    FCode: integer;
  public
    constructor Create(ACode: integer; AWinCode: integer);
    constructor CreateNoWinCode(ACode: integer);
    property WinCode: integer read FWinCode write FWinCode;
    property Code: integer read FCode write FCode;
  end;

procedure InitAsync(var AsyncPtr: PAsync);
procedure DoneAsync(var AsyncPtr: PAsync);
procedure EnumBINAs(Ports: TStrings);

function StrToBaudRate(Str: string): TBaudRate;
function StrToStopBits(Str: string): TStopBits;
function StrToDataBits(Str: string): TDataBits;
function StrToParity(Str: string): TParityBits;
function StrToFlowControl(Str: string): TFlowControl;
function BaudRateToStr(BaudRate: TBaudRate): string;
function StopBitsToStr(StopBits: TStopBits): string;
function DataBitsToStr(DataBits: TDataBits): string;
function ParityToStr(Parity: TParityBits): string;
function FlowControlToStr(FlowControl: TFlowControl): string;

const
  WaitInfinite = integer(INFINITE);

  CError_OpenFailed = 1;
  CError_WriteFailed = 2;
  CError_ReadFailed = 3;
  CError_InvalidAsync = 4;
  CError_PurgeFailed = 5;
  CError_AsyncCheck = 6;
  CError_SetStateFailed = 7;
  CError_TimeoutsFailed = 8;
  CError_SetupComFailed = 9;
  CError_ClearComFailed = 10;
  CError_ModemStatFailed = 11;
  CError_EscapeComFailed = 12;
  CError_TransmitFailed = 13;
  CError_SyncMeth = 14;
  CError_EnumPortsFailed = 15;
  CError_StoreFailed = 16;
  CError_LoadFailed = 17;
  CError_RegFailed = 18;
  CError_LedStateFailed = 19;
  CError_ThreadCreated = 20;
  CError_WaitFailed = 21;

procedure Register;  

implementation

uses
  spBinaSetup, Controls, Forms, WinSpool;

const

  ComErrorMessages: array[1..21] of string =
    ('Impossível Abrir Porta de comunicação! ' +
    'Por favor, sete-a corretamente e volte a ' +
    'ativar o SuperBina!',
    'Erro ao Esccrever na Porta',
    'Erro na Leitura da Porta',
    'Inválido Parâmero',
    'Falha na Limpeza do Buffer',
    '',
    '',
    '',
    '',
    'Faha na Limpeza do Buffer',
    '',
    '',
    '',
    'Impossível mudar o modo quando Conectado',
    'Falha na enumeração da Porta',
    '',
    '',
    '',
    '',
    '',
    '');

  dcb_Binary = $00000001;
  dcb_Parity = $00000002;
  dcb_OutxCTSFlow = $00000004;
  dcb_OutxDSRFlow = $00000008;
  dcb_DTRControl = $00000030;
  dcb_DSRSensivity = $00000040;
  dcb_TxContinueOnXoff = $00000080;
  dcb_OutX = $00000100;
  dcb_InX = $00000200;
  dcb_ErrorChar = $00000400;
  dcb_Null = $00000800;
  dcb_RTSControl = $00003000;
  dcb_AbortOnError = $00004000;

  CM_BINA = WM_USER + 1;


function EventsToInt(const Events: TComEvents): integer;
begin
  Result := 0;
  if evDTMF in Events then
    Result := Result or EV_RXCHAR;
  if evRxFlag in Events then
    Result := Result or EV_RXFLAG;
  if evTxEmpty in Events then
    Result := Result or EV_TXEMPTY;
  if evRing in Events then
    Result := Result or EV_RING;
  if evCTS in Events then
    Result := Result or EV_CTS;
  if evDSR in Events then
    Result := Result or EV_DSR;
  if evRLSD in Events then
    Result := Result or EV_RLSD;
  if evError in Events then
    Result := Result or EV_ERR;
  if evBreak in Events then
    Result := Result or EV_BREAK;
  if evRx80Full in Events then
    Result := Result or EV_RX80FULL;
end;

function IntToEvents(Mask: integer): TComEvents;
begin
  Result := [];
  if (EV_RXCHAR and Mask) <> 0 then
    Result := Result + [evDTMF];
  if (EV_TXEMPTY and Mask) <> 0 then
    Result := Result + [evTxEmpty];
  if (EV_BREAK and Mask) <> 0 then
    Result := Result + [evBreak];
  if (EV_RING and Mask) <> 0 then
    Result := Result + [evRing];
  if (EV_CTS and Mask) <> 0 then
    Result := Result + [evCTS];
  if (EV_DSR and Mask) <> 0 then
    Result := Result + [evDSR];
  if (EV_RXFLAG and Mask) <> 0 then
    Result := Result + [evRxFlag];
  if (EV_RLSD and Mask) <> 0 then
    Result := Result + [evRLSD];
  if (EV_ERR and Mask) <> 0 then
    Result := Result + [evError];
  if (EV_RX80FULL and Mask) <> 0 then
    Result := Result + [evRx80Full];
end;


constructor TComThread.Create(ACspBina: TSspBina);
begin
  inherited Create(True);
  FStopEvent := CreateEvent(nil, True, False, nil);
  FCspBina := ACspBina;
  SetCommMask(FCspBina.Handle, EventsToInt(FCspBina.Events));
  Resume;
end;

destructor TComThread.Destroy;
begin
  Stop;
  inherited Destroy;
end;

procedure TComThread.Execute;
var
  EventHandles: array[0..1] of THandle;
  Overlapped: TOverlapped;
  Signaled, BytesTrans, Mask: DWORD;
begin
  FillChar(Overlapped, SizeOf(Overlapped), 0);
  Overlapped.hEvent := CreateEvent(nil, True, True, nil);
  EventHandles[0] := FStopEvent;
  EventHandles[1] := Overlapped.hEvent;
  repeat
    WaitCommEvent(FCspBina.Handle, Mask, @Overlapped);
    Signaled := WaitForMultipleObjects(2, @EventHandles, False, INFINITE);
    if (Signaled = WAIT_OBJECT_0 + 1) and GetOverlappedResult(FCspBina.Handle,
      Overlapped, BytesTrans, False) then
    begin
      FEvents := IntToEvents(Mask);
      DispatchComMsg;
    end;
  until Signaled <> (WAIT_OBJECT_0 + 1);
  SetCommMask(FCspBina.Handle, 0);
  PurgeComm(FCspBina.Handle, PURGE_TXCLEAR or PURGE_RXCLEAR);
  CloseHandle(Overlapped.hEvent);
  CloseHandle(FStopEvent);
end;

procedure TComThread.Stop;
begin
  SetEvent(FStopEvent);
  Sleep(0);
end;

procedure TComThread.DispatchComMsg;
begin
  case FCspBina.SyncMethod of
    smThreadSync: Synchronize(DoEvents);
    smWindowSync: SendEvents;
    smNone: DoEvents;
  end;
end;

// Transmitir eventos parao spBina usando a TAPI
procedure TComThread.SendEvents;
begin
  if evDTMF in FEvents then
    SendMessage(FCspBina.FWindow, CM_BINA, EV_RXCHAR, 0);
  if evTxEmpty in FEvents then
    SendMessage(FCspBina.FWindow, CM_BINA, EV_TXEMPTY, 0);
  if evBreak in FEvents then
    SendMessage(FCspBina.FWindow, CM_BINA, EV_BREAK, 0);
  if evRing in FEvents then
    SendMessage(FCspBina.FWindow, CM_BINA, EV_RING, 0);
  if evCTS in FEvents then
    SendMessage(FCspBina.FWindow, CM_BINA, EV_CTS, 0);
  if evDSR in FEvents then
    SendMessage(FCspBina.FWindow, CM_BINA, EV_DSR, 0);
  if evRxFlag in FEvents then
    SendMessage(FCspBina.FWindow, CM_BINA, EV_RXFLAG, 0);
  if evRing in FEvents then
    SendMessage(FCspBina.FWindow, CM_BINA, EV_RLSD, 0);
  if evError in FEvents then
    SendMessage(FCspBina.FWindow, CM_BINA, EV_ERR, 0);
  if evRx80Full in FEvents then
    SendMessage(FCspBina.FWindow, CM_BINA, EV_RX80FULL, 0);
end;

// Chamadas aos eventos
procedure TComThread.DoEvents;
begin
  if evDTMF in FEvents then
    FCspBina.CallDTMF;
  if evTxEmpty in FEvents then
    FCspBina.CallTxEmpty;
  if evBreak in FEvents then
    FCspBina.CallBreak;
  if evRing in FEvents then
    FCspBina.CallRing;
  if evCTS in FEvents then
    FCspBina.CallCTSChange;
  if evDSR in FEvents then
    FCspBina.CallDSRChange;
  if evRxFlag in FEvents then
    FCspBina.CallRxFlag;
  if evRLSD in FEvents then
    FCspBina.CallRLSDChange;
  if evError in FEvents then
    FCspBina.CallError;
  if evRx80Full in FEvents then
    FCspBina.CallRx80Full;
end;

constructor TComTimeouts.Create;
begin
  inherited Create;
  FReadInterval := -1;
  FWriteTotalM := 100;
  FWriteTotalC := 1000;
end;

procedure TComTimeouts.AssignTo(Dest: TPersistent);
begin
  if Dest is TComTimeouts then
  begin
    with TComTimeouts(Dest) do
    begin
      FReadInterval := Self.ReadInterval;
      FReadTotalM := Self.ReadTotalMultiplier;
      FReadTotalC := Self.ReadTotalConstant;
      FWriteTotalM := Self.WriteTotalMultiplier;
      FWriteTotalC := Self.WriteTotalConstant;
    end
  end
  else
    inherited AssignTo(Dest);
end;

procedure TComTimeouts.SetBINA(const ACspBina: TSspBina);
begin
  FCspBina := ACspBina;
end;

procedure TComTimeouts.SetReadInterval(const Value: integer);
begin
  if Value <> FReadInterval then
  begin
    FReadInterval := Value;
    if FCspBina <> nil then
      FCspBina.ApplyTimeouts;
  end;
end;

procedure TComTimeouts.SetReadTotalC(const Value: integer);
begin
  if Value <> FReadTotalC then
  begin
    FReadTotalC := Value;
    if FCspBina <> nil then
      FCspBina.ApplyTimeouts;
  end;
end;

procedure TComTimeouts.SetReadTotalM(const Value: integer);
begin
  if Value <> FReadTotalM then
  begin
    FReadTotalM := Value;
    if FCspBina <> nil then
      FCspBina.ApplyTimeouts;
  end;
end;

procedure TComTimeouts.SetWriteTotalC(const Value: integer);
begin
  if Value <> FWriteTotalC then
  begin
    FWriteTotalC := Value;
    if FCspBina <> nil then
      FCspBina.ApplyTimeouts;
  end;
end;

procedure TComTimeouts.SetWriteTotalM(const Value: integer);
begin
  if Value <> FWriteTotalM then
  begin
    FWriteTotalM := Value;
    if FCspBina <> nil then
      FCspBina.ApplyTimeouts;
  end;
end;

constructor TComFlowControl.Create;
begin
  inherited Create;
  FXonChar := #17;
  FXoffChar := #19;
end;

procedure TComFlowControl.AssignTo(Dest: TPersistent);
begin
  if Dest is TComFlowControl then
  begin
    with TComFlowControl(Dest) do
    begin
      FOutCTSFlow := Self.OutCTSFlow;
      FOutDSRFlow := Self.OutDSRFlow;
      FControlDTR := Self.ControlDTR;
      FControlRTS := Self.ControlRTS;
      FXonXoffOut := Self.XonXoffOut;
      FXonXoffIn := Self.XonXoffIn;
      FTxContinueOnXoff := Self.TxContinueOnXoff;
      FDSRSensitivity := Self.DSRSensitivity;
      FXonChar := Self.XonChar;
      FXoffChar := Self.XoffChar;
    end
  end
  else
    inherited AssignTo(Dest);
end;

procedure TComFlowControl.SetBINA(const ACspBina: TSspBina);
begin
  FCspBina := ACspBina;
end;

procedure TComFlowControl.SetControlDTR(const Value: TDTRFlowControl);
begin
  if Value <> FControlDTR then
  begin
    FControlDTR := Value;
    if FCspBina <> nil then
      FCspBina.ApplyDCB;
  end;
end;

procedure TComFlowControl.SetControlRTS(const Value: TRTSFlowControl);
begin
  if Value <> FControlRTS then
  begin
    FControlRTS := Value;
    if FCspBina <> nil then
      FCspBina.ApplyDCB;
  end;
end;

procedure TComFlowControl.SetOutCTSFlow(const Value: boolean);
begin
  if Value <> FOutCTSFlow then
  begin
    FOutCTSFlow := Value;
    if FCspBina <> nil then
      FCspBina.ApplyDCB;
  end;
end;

procedure TComFlowControl.SetOutDSRFlow(const Value: boolean);
begin
  if Value <> FOutDSRFlow then
  begin
    FOutDSRFlow := Value;
    if FCspBina <> nil then
      FCspBina.ApplyDCB;
  end;
end;

procedure TComFlowControl.SetXonXoffIn(const Value: boolean);
begin
  if Value <> FXonXoffIn then
  begin
    FXonXoffIn := Value;
    if FCspBina <> nil then
      FCspBina.ApplyDCB;
  end;
end;

procedure TComFlowControl.SetXonXoffOut(const Value: boolean);
begin
  if Value <> FXonXoffOut then
  begin
    FXonXoffOut := Value;
    if FCspBina <> nil then
      FCspBina.ApplyDCB;
  end;
end;

procedure TComFlowControl.SetDSRSensitivity(const Value: boolean);
begin
  if Value <> FDSRSensitivity then
  begin
    FDSRSensitivity := Value;
    if FCspBina <> nil then
      FCspBina.ApplyDCB;
  end;
end;

procedure TComFlowControl.SetTxContinueOnXoff(const Value: boolean);
begin
  if Value <> FTxContinueOnXoff then
  begin
    FTxContinueOnXoff := Value;
    if FCspBina <> nil then
      FCspBina.ApplyDCB;
  end;
end;

procedure TComFlowControl.SetXonChar(const Value: char);
begin
  if Value <> FXonChar then
  begin
    FXonChar := Value;
    if FCspBina <> nil then
      FCspBina.ApplyDCB;
  end;
end;

procedure TComFlowControl.SetXoffChar(const Value: char);
begin
  if Value <> FXoffChar then
  begin
    FXoffChar := Value;
    if FCspBina <> nil then
      FCspBina.ApplyDCB;
  end;
end;

function TComFlowControl.GetFlowControl: TFlowControl;
begin
  if (FControlRTS = rtsHandshake) and (FOutCTSFlow) and (not FXonXoffIn) and
    (not FXonXoffOut) then
    Result := fcHardware
  else if (FControlRTS = rtsDisable) and (not FOutCTSFlow) and (FXonXoffIn) and
    (FXonXoffOut) then
    Result := fcSoftware
  else if (FControlRTS = rtsDisable) and (not FOutCTSFlow) and
    (not FXonXoffIn) and (not FXonXoffOut) then
    Result := fcNone
  else
    Result := fcCustom;
end;

procedure TComFlowControl.SetFlowControl(const Value: TFlowControl);
begin
  if Value <> fcCustom then
  begin
    FControlRTS := rtsDisable;
    FOutCTSFlow := False;
    FXonXoffIn := False;
    FXonXoffOut := False;
    case Value of
      fcHardware:
      begin
        FControlRTS := rtsHandshake;
        FOutCTSFlow := True;
      end;
      fcSoftware:
      begin
        FXonXoffIn := True;
        FXonXoffOut := True;
      end;
    end;
  end;
  if FCspBina <> nil then
    FCspBina.ApplyDCB;
end;

constructor TComParity.Create;
begin
  inherited Create;
  FBits := prNone;
end;

procedure TComParity.AssignTo(Dest: TPersistent);
begin
  if Dest is TComParity then
  begin
    with TComParity(Dest) do
    begin
      FBits := Self.Bits;
      FCheck := Self.Check;
      FReplace := Self.Replace;
      FReplaceChar := Self.ReplaceChar;
    end
  end
  else
    inherited AssignTo(Dest);
end;

procedure TComParity.SetBINA(const ACspBina: TSspBina);
begin
  FCspBina := ACspBina;
end;

procedure TComParity.SetBits(const Value: TParityBits);
begin
  if Value <> FBits then
  begin
    FBits := Value;
    if FCspBina <> nil then
      FCspBina.ApplyDCB;
  end;
end;

procedure TComParity.SetCheck(const Value: boolean);
begin
  if Value <> FCheck then
  begin
    FCheck := Value;
    if FCspBina <> nil then
      FCspBina.ApplyDCB;
  end;
end;

procedure TComParity.SetReplace(const Value: boolean);
begin
  if Value <> FReplace then
  begin
    FReplace := Value;
    if FCspBina <> nil then
      FCspBina.ApplyDCB;
  end;
end;

procedure TComParity.SetReplaceChar(const Value: char);
begin
  if Value <> FReplaceChar then
  begin
    FReplaceChar := Value;
    if FCspBina <> nil then
      FCspBina.ApplyDCB;
  end;
end;

constructor TComBuffer.Create;
begin
  inherited Create;
  FInputSize := 1024;
  FOutputSize := 1024;
end;

procedure TComBuffer.AssignTo(Dest: TPersistent);
begin
  if Dest is TComBuffer then
  begin
    with TComBuffer(Dest) do
    begin
      FOutputSize := Self.OutputSize;
      FInputSize := Self.InputSize;
    end
  end
  else
    inherited AssignTo(Dest);
end;

procedure TComBuffer.SetBINA(const ACspBina: TSspBina);
begin
  FCspBina := ACspBina;
end;

procedure TComBuffer.SetInputSize(const Value: integer);
begin
  if Value <> FInputSize then
  begin
    FInputSize := Value;
    if (FInputSize mod 2) = 1 then
      Dec(FInputSize);
    if FCspBina <> nil then
      FCspBina.ApplyBuffer;
  end;
end;

procedure TComBuffer.SetOutputSize(const Value: integer);
begin
  if Value <> FOutputSize then
  begin
    FOutputSize := Value;
    if (FOutputSize mod 2) = 1 then
      Dec(FOutputSize);
    if FCspBina <> nil then
      FCspBina.ApplyBuffer;
  end;
end;

(*****************************************
 * TSspBina componente              *
 *****************************************)

// cria o componente
constructor TSspBina.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FComponentStyle := FComponentStyle - [csInheritable];
  FLinks := TList.Create;
  FBaudRate := br4800;
  FCustomBaudRate := 4800;
  FPort := 'COM1';
  FDDDL := '00';
  FStopBits := sbOneStopBit;
  FDataBits := dbEight;
  FEvents := [evDTMF, evTxEmpty, evRxFlag, evRing, evBreak,
    evCTS, evDSR, evError, evRLSD, evRx80Full];
  FHandle := INVALID_HANDLE_VALUE;
  FStoredProps := [spBasic];
  FParity := TComParity.Create;
  FParity.SetBINA(Self);
  FFlowControl := TComFlowControl.Create;
  FFlowControl.SetBINA(Self);
  FTimeouts := TComTimeouts.Create;
  FTimeouts.SetBINA(Self);
  FBuffer := TComBuffer.Create;
  FBuffer.SetBINA(Self);
end;

// destroi o componente
destructor TSspBina.Destroy;
begin
  Close;
  FBuffer.Free;
  FFlowControl.Free;
  FTimeouts.Free;
  FParity.Free;
  inherited Destroy;
  FLinks.Free;
end;

// cria o handle da porta serial
procedure TSspBina.CreateHandle;
var
  ATcomandosEX: TIniFile;
begin
  ATcomandosEX := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'ComandAT.ini');



  FHandle := CreateFile(PChar('\\.\' + FPort),
    GENERIC_READ or GENERIC_WRITE,
    0,
    nil,
    OPEN_EXISTING,
    FILE_FLAG_OVERLAPPED,
    0);

  if FHandle = INVALID_HANDLE_VALUE then
  begin
    ATcomandosEX.EraseSection('Modem');
    raise ECspBina.Create(CError_OpenFailed, GetLastError);
  end;
end;

// Fecha o handle da porta serial
procedure TSspBina.DestroyHandle;
begin
  if FHandle <> INVALID_HANDLE_VALUE then
    CloseHandle(FHandle);
end;

procedure TSspBina.Loaded;
begin
  inherited Loaded;
  if (FConectado) and (not (csDesigning in ComponentState)) then
  begin
    FConectado := False;
    try
      Open;
    except
      on E: Exception do
        Application.ShowException(E);
    end;
  end;
end;

procedure TSspBina.WindowMethod(var Message: TMessage);
begin
  with Message do
    if Msg = CM_BINA then
    begin
      case wParam of
        EV_RXCHAR: CallDTMF;
        EV_TXEMPTY: CallTxEmpty;
        EV_BREAK: CallBreak;
        EV_RING: CallRing;
        EV_CTS: CallCTSChange;
        EV_DSR: CallDSRChange;
        EV_RXFLAG: CallRxFlag;
        EV_RLSD: CallRLSDChange;
        EV_ERR: CallError;
        EV_RX80FULL: CallRx80Full;
      end
    end
  else
    Result := DefWindowProc(FWindow, Msg, wParam, lParam);
end;

procedure TSspBina.BeginUpdate;
begin
  FUpdateCount := FUpdateCount + 1;
end;

procedure TSspBina.EndUpdate;
begin
  if FUpdateCount > 0 then
  begin
    FUpdateCount := FUpdateCount - 1;
    if FUpdateCount = 0 then
      SetupBINA;
  end;
end;

procedure TSspBina.Open;
begin
  if (not FConectado) and (not (csDesigning in ComponentState)) then
  begin
    CallBeforeOpen;
    CreateHandle;
    FConectado := True;
    try
      SetupBINA;
    except
      DestroyHandle;
      FConectado := False;
      raise;
    end;
    if (FEvents = []) then
      FThreadCreated := False
    else
    begin
      if (FSyncMethod = smWindowSync) then
        FWindow := AllocateHWnd(WindowMethod);
      FEventThread := TComThread.Create(Self);
      FThreadCreated := True;
    end;
    CallAfterOpen;
  end;
end;

procedure TSspBina.Close;
begin
  if (FConectado) and (not (csDesigning in ComponentState)) then
  begin
    CallBeforeClose;
    AbortAllAsync;
    if FThreadCreated then
    begin
      FEventThread.Free;
      FThreadCreated := False;
      if FSyncMethod = smWindowSync then
        DeallocateHWnd(FWindow);
    end;
    DestroyHandle;
    FConectado := False;
    CallAfterClose;
  end;
end;

procedure TSspBina.ApplyDCB;
const
  CParityBits: array[TParityBits] of integer =
    (NOPARITY, ODDPARITY, EVENPARITY, MARKPARITY, SPACEPARITY);
  CStopBits: array[TStopBits] of integer =
    (ONESTOPBIT, ONE5STOPBITS, TWOSTOPBITS);
  CBaudRate: array[TBaudRate] of integer =
    (0, CBR_110, CBR_300, CBR_600, CBR_1200, CBR_2400, CBR_4800, CBR_9600,
    CBR_14400, CBR_19200, CBR_38400, CBR_56000, CBR_57600, CBR_115200,
    CBR_128000, CBR_256000);
  CDataBits: array[TDataBits] of integer = (5, 6, 7, 8);
  CControlRTS: array[TRTSFlowControl] of integer =
    (RTS_CONTROL_DISABLE shl 12,
    RTS_CONTROL_ENABLE shl 12,
    RTS_CONTROL_HANDSHAKE shl 12,
    RTS_CONTROL_TOGGLE shl 12);
  CControlDTR: array[TDTRFlowControl] of integer =
    (DTR_CONTROL_DISABLE shl 4,
    DTR_CONTROL_ENABLE shl 4,
    DTR_CONTROL_HANDSHAKE shl 4);
var
  DCB: TDCB;
begin
  if (FConectado) and (FUpdateCount = 0) and
    (not ((csDesigning in ComponentState) or (csLoading in ComponentState))) then
  begin
    DCB.DCBlength := SizeOf(TDCB);
    DCB.XonLim := FBuffer.InputSize div 4;
    DCB.XoffLim := DCB.XonLim;
    DCB.EvtChar := char(FEventChar);

    DCB.Flags := dcb_Binary;
    if FDiscardNull then
      DCB.Flags := DCB.Flags or dcb_Null;

    with FFlowControl do
    begin
      DCB.XonChar := XonChar;
      DCB.XoffChar := XoffChar;
      if OutCTSFlow then
        DCB.Flags := DCB.Flags or dcb_OutxCTSFlow;
      if OutDSRFlow then
        DCB.Flags := DCB.Flags or dcb_OutxDSRFlow;
      DCB.Flags := DCB.Flags or CControlDTR[ControlDTR] or CControlRTS[ControlRTS];
      if XonXoffOut then
        DCB.Flags := DCB.Flags or dcb_OutX;
      if XonXoffIn then
        DCB.Flags := DCB.Flags or dcb_InX;
      if DSRSensitivity then
        DCB.Flags := DCB.Flags or dcb_DSRSensivity;
      if TxContinueOnXoff then
        DCB.Flags := DCB.Flags or dcb_TxContinueOnXoff;
    end;

    DCB.Parity := CParityBits[FParity.Bits];
    DCB.StopBits := CStopBits[FStopBits];
    if FBaudRate <> brCustom then
      DCB.BaudRate := CBaudRate[FBaudRate]
    else
      DCB.BaudRate := FCustomBaudRate;
    DCB.ByteSize := CDataBits[FDataBits];

    if FParity.Check then
    begin
      DCB.Flags := DCB.Flags or dcb_Parity;
      if FParity.Replace then
      begin
        DCB.Flags := DCB.Flags or dcb_ErrorChar;
        DCB.ErrorChar := char(FParity.ReplaceChar);
      end;
    end;

    if not SetCommState(FHandle, DCB) then
      raise ECspBina.Create(CError_SetStateFailed, GetLastError);
  end;
end;

procedure TSspBina.ApplyTimeouts;
var
  Timeouts: TCommTimeouts;

  function GetTOValue(const Value: integer): DWORD;
  begin
    if Value = -1 then
      Result := MAXDWORD
    else
      Result := Value;
  end;
begin
  if (FConectado) and (FUpdateCount = 0) and
    (not ((csDesigning in ComponentState) or (csLoading in ComponentState))) then
  begin
    Timeouts.ReadIntervalTimeout := GetTOValue(FTimeouts.ReadInterval);
    Timeouts.ReadTotalTimeoutMultiplier := GetTOValue(FTimeouts.ReadTotalMultiplier);
    Timeouts.ReadTotalTimeoutConstant := GetTOValue(FTimeouts.ReadTotalConstant);
    Timeouts.WriteTotalTimeoutMultiplier := GetTOValue(FTimeouts.WriteTotalMultiplier);
    Timeouts.WriteTotalTimeoutConstant := GetTOValue(FTimeouts.WriteTotalConstant);

    if not SetCommTimeouts(FHandle, Timeouts) then
      raise ECspBina.Create(CError_TimeoutsFailed, GetLastError);
  end;
end;

procedure TSspBina.ApplyBuffer;
begin
  if (FConectado) and (FUpdateCount = 0) and
    (not ((csDesigning in ComponentState) or (csLoading in ComponentState))) then
    if not SetupComm(FHandle, FBuffer.InputSize, FBuffer.OutputSize) then
      raise ECspBina.Create(CError_SetupComFailed, GetLastError);
end;

procedure TSspBina.SetupBINA;
begin
  ApplyBuffer;
  ApplyDCB;
  ApplyTimeouts;
end;

function TSspBina.InputCount: integer;
var
  Errors: DWORD;
  ComStat: TComStat;
begin
  if not ClearCommError(FHandle, Errors, @ComStat) then
    raise ECspBina.Create(CError_ClearComFailed, GetLastError);
  Result := ComStat.cbInQue;
end;

function TSspBina.OutputCount: integer;
var
  Errors: DWORD;
  ComStat: TComStat;
begin
  if not ClearCommError(FHandle, Errors, @ComStat) then
    raise ECspBina.Create(CError_ClearComFailed, GetLastError);
  Result := ComStat.cbOutQue;
end;

function TSspBina.Signals: TComSignals;
var
  Status: DWORD;
begin
  if not GetCommModemStatus(FHandle, Status) then
    raise ECspBina.Create(CError_ModemStatFailed, GetLastError);
  Result := [];

  if (MS_CTS_ON and Status) <> 0 then
    Result := Result + [csCTS];
  if (MS_DSR_ON and Status) <> 0 then
    Result := Result + [csDSR];
  if (MS_RING_ON and Status) <> 0 then
    Result := Result + [csRing];
  if (MS_RLSD_ON and Status) <> 0 then
    Result := Result + [csRLSD];
end;

function TSspBina.StateFlags: TComStateFlags;
var
  Errors: DWORD;
  ComStat: TComStat;
begin
  if not ClearCommError(FHandle, Errors, @ComStat) then
    raise ECspBina.Create(CError_ClearComFailed, GetLastError);
  Result := ComStat.Flags;
end;

procedure TSspBina.SetBreak(OnOff: boolean);
var
  Act: integer;
begin
  if OnOff then
    Act := Windows.SETBREAK
  else
    Act := Windows.CLRBREAK;

  if not EscapeCommFunction(FHandle, Act) then
    raise ECspBina.Create(CError_EscapeComFailed, GetLastError);
end;

procedure TSspBina.SetDTR(OnOff: boolean);
var
  Act: DWORD;
begin
  if OnOff then
    Act := Windows.SETDTR
  else
    Act := Windows.CLRDTR;

  if not EscapeCommFunction(FHandle, Act) then
    raise ECspBina.Create(CError_EscapeComFailed, GetLastError);
end;

procedure TSspBina.SetRTS(OnOff: boolean);
var
  Act: DWORD;
begin
  if OnOff then
    Act := Windows.SETRTS
  else
    Act := Windows.CLRRTS;

  if not EscapeCommFunction(FHandle, Act) then
    raise ECspBina.Create(CError_EscapeComFailed, GetLastError);
end;

procedure TSspBina.SetXonXoff(OnOff: boolean);
var
  Act: DWORD;
begin
  if OnOff then
    Act := Windows.SETXON
  else
    Act := Windows.SETXOFF;

  if not EscapeCommFunction(FHandle, Act) then
    raise ECspBina.Create(CError_EscapeComFailed, GetLastError);
end;

procedure TSspBina.ClearBuffer(Input, Output: boolean);
var
  Flag: DWORD;
begin
  Flag := 0;
  if Input then
    Flag := PURGE_RXCLEAR;
  if Output then
    Flag := Flag or PURGE_TXCLEAR;

  if not PurgeComm(FHandle, Flag) then
    raise ECspBina.Create(CError_PurgeFailed, GetLastError);
end;

function TSspBina.LastErrors: TComErrors;
var
  Errors: DWORD;
  ComStat: TComStat;
begin
  if not ClearCommError(FHandle, Errors, @ComStat) then
    raise ECspBina.Create(CError_ClearComFailed, GetLastError);
  Result := [];

  if (CE_FRAME and Errors) <> 0 then
    Result := Result + [ceFrame];
  if ((CE_RXPARITY and Errors) <> 0) and FParity.Check then
    Result := Result + [ceRxParity];
  if (CE_OVERRUN and Errors) <> 0 then
    Result := Result + [ceOverrun];
  if (CE_RXOVER and Errors) <> 0 then
    Result := Result + [ceRxOver];
  if (CE_TXFULL and Errors) <> 0 then
    Result := Result + [ceTxFull];
  if (CE_BREAK and Errors) <> 0 then
    Result := Result + [ceBreak];
  if (CE_IOE and Errors) <> 0 then
    Result := Result + [ceIO];
  if (CE_MODE and Errors) <> 0 then
    Result := Result + [ceMode];
end;

function TSspBina.WriteAsync(const Buffer; Count: integer;
  var AsyncPtr: PAsync): integer;
var
  Success: boolean;
  BytesTrans: DWORD;
begin
  AsyncPtr^.Kind := okWrite;

  Success := WriteFile(FHandle, Buffer, Count, BytesTrans,
    @AsyncPtr^.Overlapped) or (GetLastError = ERROR_IO_PENDING);

  if not Success then
    raise ECspBina.Create(CError_WriteFailed, GetLastError);

  SendSignals(lsTx, True);
  Result := BytesTrans;
end;

function TSspBina.Write(const Buffer; Count: integer): integer;
var
  AsyncPtr: PAsync;
begin
  InitAsync(AsyncPtr);
  try
    WriteAsync(Buffer, Count, AsyncPtr);
    Result := WaitForAsync(AsyncPtr);
  finally
    DoneAsync(AsyncPtr);
  end;
end;

function TSspBina.WriteStrAsync(Str: string; var AsyncPtr: PAsync): integer;
var
  Success: boolean;
  BytesTrans: DWORD;
begin
  AsyncPtr^.Kind := okWrite;

  Success := WriteFile(FHandle, Str[1], Length(Str), BytesTrans,
    @AsyncPtr^.Overlapped) or (GetLastError = ERROR_IO_PENDING);

  if not Success then
    raise ECspBina.Create(CError_WriteFailed, GetLastError);

  SendSignals(lsTx, True);
  Result := BytesTrans;
end;

// Escrever caracter no modo  sincrono
function TSspBina.WriteDTMF(str: string): integer;
var
  AsyncPtr: PAsync;
begin
  InitAsync(AsyncPtr);
  try
    WriteStrAsync(Str, AsyncPtr);
    Result := WaitForAsync(AsyncPtr);
  finally
    DoneAsync(AsyncPtr);
  end;
end;

// Ler no modo sincrono
function TSspBina.ReadAsync(var Buffer; Count: integer; var AsyncPtr: PAsync): integer;
var
  Success: boolean;
  BytesTrans: DWORD;
begin
  AsyncPtr^.Kind := okRead;

  Success := ReadFile(FHandle, Buffer, Count, BytesTrans,
    @AsyncPtr^.Overlapped) or (GetLastError = ERROR_IO_PENDING);

  if not Success then
    raise ECspBina.Create(CError_ReadFailed, GetLastError);

  Result := BytesTrans;
end;

// Ler no momdo sincrono
function TSspBina.Read(var Buffer; Count: integer): integer;
var
  AsyncPtr: PAsync;
begin
  InitAsync(AsyncPtr);
  try
    ReadAsync(Buffer, Count, AsyncPtr);
    Result := WaitForAsync(AsyncPtr);
  finally
    DoneAsync(AsyncPtr);
  end;
end;

// Ler no modo sincrono
function TSspBina.ReadStrAsync(var Str: string; Count: integer;
  var AsyncPtr: PAsync): integer;
var
  Success: boolean;
  BytesTrans: DWORD;
begin
  AsyncPtr^.Kind := okRead;
  SetLength(Str, Count);

  Success := ReadFile(FHandle, Str[1], Count, BytesTrans,
    @AsyncPtr^.Overlapped) or (GetLastError = ERROR_IO_PENDING);

  if not Success then
    raise ECspBina.Create(CError_ReadFailed, GetLastError);

  Result := BytesTrans;
end;

function TSspBina.LeiaDTMF(var Str: string; Count: integer): integer;
var
  AsyncPtr: PAsync;
begin
  InitAsync(AsyncPtr);
  try
    ReadStrAsync(Str, Count, AsyncPtr);
    Result := WaitForAsync(AsyncPtr);
    SetLength(Str, Result);
  finally
    DoneAsync(AsyncPtr);
  end;
end;

function ErrorCode(AsyncPtr: PAsync): integer;
begin
  Result := 0;
  case AsyncPtr^.Kind of
    okWrite: Result := CError_WriteFailed;
    okRead: Result := CError_ReadFailed;
  end;
end;

function TSspBina.WaitForAsync(var AsyncPtr: PAsync): integer;
var
  BytesTrans, Signaled: DWORD;
  Success: boolean;
begin
  if AsyncPtr = nil then
    raise ECspBina.CreateNoWinCode(CError_InvalidAsync);

  Signaled := WaitForSingleObject(AsyncPtr^.Overlapped.hEvent, INFINITE);
  Success := (Signaled = WAIT_OBJECT_0) and
    (GetOverlappedResult(FHandle, AsyncPtr^.Overlapped, BytesTrans, False));

  if (AsyncPtr^.Kind = okRead) and (InputCount = 0) then
    SendSignals(lsRx, False);

  if not Success then
    raise ECspBina.Create(ErrorCode(AsyncPtr), GetLastError);

  Result := BytesTrans;
end;

procedure TSspBina.AbortAllAsync;
begin
  if not PurgeComm(FHandle, PURGE_TXABORT or PURGE_RXABORT) then
    raise ECspBina.Create(CError_PurgeFailed, GetLastError);
end;

function TSspBina.IsAsyncCompleted(AsyncPtr: PAsync): boolean;
var
  BytesTrans: DWORD;
begin
  if AsyncPtr = nil then
    raise ECspBina.CreateNoWinCode(CError_InvalidAsync);

  Result := GetOverlappedResult(FHandle, AsyncPtr^.Overlapped, BytesTrans, False);
  if not Result then
    if GetLastError <> ERROR_IO_PENDING then
      raise ECspBina.Create(CError_AsyncCheck, GetLastError);
end;

procedure TSspBina.WaitForEvent(var Events: TComEvents; Timeout: integer);
var
  Overlapped: TOverlapped;
  Mask: DWORD;
  Success: boolean;
  Signaled: integer;
begin
  if FThreadCreated then
    raise ECspBina.CreateNoWinCode(CError_ThreadCreated);
  FillChar(Overlapped, SizeOf(TOverlapped), 0);
  Overlapped.hEvent := CreateEvent(nil, True, False, nil);
  try
    SetCommMask(FHandle, EventsToInt(Events));
    Success := WaitCommEvent(FHandle, Mask, @Overlapped);
    if (Success) or (GetLastError = ERROR_IO_PENDING) then
    begin
      Signaled := WaitForSingleObject(Overlapped.hEvent, Timeout);
      if Signaled = WAIT_TIMEOUT then
        SetCommMask(FHandle, 0);
      Success := (Signaled = WAIT_OBJECT_0) or (Signaled = WAIT_TIMEOUT);
    end;
    if not Success then
      raise ECspBina.Create(CError_WaitFailed, GetLastError);
    Events := IntToEvents(Mask);
  finally
    CloseHandle(Overlapped.hEvent);
  end;
end;

procedure TSspBina.TransmitChar(Ch: char);
begin
  if not TransmitCommChar(FHandle, Ch) then
    raise ECspBina.Create(CError_TransmitFailed, GetLastError);
end;

function BoolToStr(const Value: boolean): string;
begin
  if Value then
    Result := 'Yes'
  else
    Result := 'No';
end;

function StrToBool(const Value: string): boolean;
begin
  if UpperCase(Value) = 'YES' then
    Result := True
  else
    Result := False;
end;

function DTRToStr(DTRFlowControl: TDTRFlowControl): string;
const
  DTRStrings: array[TDTRFlowControl] of string = ('Disable', 'Enable',
    'Handshake');
begin
  Result := DTRStrings[DTRFlowControl];
end;

function RTSToStr(RTSFlowControl: TRTSFlowControl): string;
const
  RTSStrings: array[TRTSFlowControl] of string = ('Disable', 'Enable',
    'Handshake', 'Toggle');
begin
  Result := RTSStrings[RTSFlowControl];
end;

function StrToRTS(Str: string): TRTSFlowControl;
var
  I: TRTSFlowControl;
begin
  I := Low(TRTSFlowControl);
  while (I <= High(TRTSFlowControl)) do
  begin
    if UpperCase(Str) = UpperCase(RTSToStr(I)) then
      Break;
    I := Succ(I);
  end;
  if I > High(TRTSFlowControl) then
    Result := rtsDisable
  else
    Result := I;
end;

function StrToDTR(Str: string): TDTRFlowControl;
var
  I: TDTRFlowControl;
begin
  I := Low(TDTRFlowControl);
  while (I <= High(TDTRFlowControl)) do
  begin
    if UpperCase(Str) = UpperCase(DTRToStr(I)) then
      Break;
    I := Succ(I);
  end;
  if I > High(TDTRFlowControl) then
    Result := dtrDisable
  else
    Result := I;
end;

function StrToChar(Str: string): char;
var
  A: integer;
begin
  if Length(Str) > 0 then
  begin
    if (Str[1] = '#') and (Length(Str) > 1) then
    begin
      try
        A := StrToInt(Copy(Str, 2, Length(Str) - 1));
      except
        A := 0;
      end;
      Result := Chr(byte(A));
    end
    else
      Result := Str[1];
  end
  else
    Result := #0;
end;

function CharToStr(Ch: char): string;
begin
  if Ch in [#33..#127] then
    Result := Ch
  else
    Result := '#' + IntToStr(Ord(Ch));
end;

procedure TSspBina.StoreIniFile(IniFile: TIniFile);
begin
  if spBasic in FStoredProps then
  begin
    IniFile.WriteString(Name, 'Port', Porta);
    IniFile.WriteString(Name, 'BaudRate', BaudRateToStr(BaudRate));
    if BaudRate = brCustom then
      IniFile.WriteInteger(Name, 'CustomBaudRate', CustomBaudRate);
    IniFile.WriteString(Name, 'StopBits', StopBitsToStr(StopBits));
    IniFile.WriteString(Name, 'DataBits', DataBitsToStr(DataBits));
    IniFile.WriteString(Name, 'Parity', ParityToStr(Parity.Bits));
    IniFile.WriteString(Name, 'FlowControl', FlowControlToStr(FlowControl.FlowControl));
  end;
  if spOthers in FStoredProps then
  begin
    IniFile.WriteString(Name, 'EventChar', CharToStr(EventChar));
    IniFile.WriteString(Name, 'DiscardNull', BoolToStr(DiscardNull));
  end;
  if spParity in FStoredProps then
  begin
    IniFile.WriteString(Name, 'Parity.Check', BoolToStr(Parity.Check));
    IniFile.WriteString(Name, 'Parity.Replace', BoolToStr(Parity.Replace));
    IniFile.WriteString(Name, 'Parity.ReplaceChar', CharToStr(Parity.ReplaceChar));
  end;
  if spBuffer in FStoredProps then
  begin
    IniFile.WriteInteger(Name, 'Buffer.OutputSize', Buffer.OutputSize);
    IniFile.WriteInteger(Name, 'Buffer.InputSize', Buffer.InputSize);
  end;
  if spTimeouts in FStoredProps then
  begin
    IniFile.WriteInteger(Name, 'Timeouts.ReadInterval', Timeouts.ReadInterval);
    IniFile.WriteInteger(Name, 'Timeouts.ReadTotalConstant', Timeouts.ReadTotalConstant);
    IniFile.WriteInteger(Name, 'Timeouts.ReadTotalMultiplier',
      Timeouts.ReadTotalMultiplier);
    IniFile.WriteInteger(Name, 'Timeouts.WriteTotalConstant', Timeouts.WriteTotalConstant);
    IniFile.WriteInteger(Name, 'Timeouts.WriteTotalMultiplier',
      Timeouts.WriteTotalMultiplier);
  end;
  if spFlowControl in FStoredProps then
  begin
    IniFile.WriteString(Name, 'FlowControl.ControlRTS', RTSToStr(FlowControl.ControlRTS));
    IniFile.WriteString(Name, 'FlowControl.ControlDTR', DTRToStr(FlowControl.ControlDTR));
    IniFile.WriteString(Name, 'FlowControl.DSRSensitivity',
      BoolToStr(FlowControl.DSRSensitivity));
    IniFile.WriteString(Name, 'FlowControl.OutCTSFlow', BoolToStr(FlowControl.OutCTSFlow));
    IniFile.WriteString(Name, 'FlowControl.OutDSRFlow', BoolToStr(FlowControl.OutDSRFlow));
    IniFile.WriteString(Name, 'FlowControl.TxContinueOnXoff',
      BoolToStr(FlowControl.TxContinueOnXoff));
    IniFile.WriteString(Name, 'FlowControl.XonXoffIn', BoolToStr(FlowControl.XonXoffIn));
    IniFile.WriteString(Name, 'FlowControl.XonXoffOut', BoolToStr(FlowControl.XonXoffOut));
    IniFile.WriteString(Name, 'FlowControl.XoffChar', CharToStr(FlowControl.XoffChar));
    IniFile.WriteString(Name, 'FlowControl.XonChar', CharToStr(FlowControl.XonChar));
  end;
end;

procedure TSspBina.StoreRegistry(Reg: TRegistry);
begin
  if spBasic in FStoredProps then
  begin
    Reg.WriteString('Port', Porta);
    Reg.WriteString('BaudRate', BaudRateToStr(BaudRate));
    if BaudRate = brCustom then
      Reg.WriteInteger('CustomBaudRate', CustomBaudRate);
    Reg.WriteString('StopBits', StopBitsToStr(StopBits));
    Reg.WriteString('DataBits', DataBitsToStr(DataBits));
    Reg.WriteString('Parity', ParityToStr(Parity.Bits));
    Reg.WriteString('FlowControl', FlowControlToStr(FlowControl.FlowControl));
  end;
  if spOthers in FStoredProps then
  begin
    Reg.WriteString('EventChar', CharToStr(EventChar));
    Reg.WriteString('DiscardNull', BoolToStr(DiscardNull));
  end;
  if spParity in FStoredProps then
  begin
    Reg.WriteString('Parity.Check', BoolToStr(Parity.Check));
    Reg.WriteString('Parity.Replace', BoolToStr(Parity.Replace));
    Reg.WriteString('Parity.ReplaceChar', CharToStr(Parity.ReplaceChar));
  end;
  if spBuffer in FStoredProps then
  begin
    Reg.WriteInteger('Buffer.OutputSize', Buffer.OutputSize);
    Reg.WriteInteger('Buffer.InputSize', Buffer.InputSize);
  end;
  if spTimeouts in FStoredProps then
  begin
    Reg.WriteInteger('Timeouts.ReadInterval', Timeouts.ReadInterval);
    Reg.WriteInteger('Timeouts.ReadTotalConstant', Timeouts.ReadTotalConstant);
    Reg.WriteInteger('Timeouts.ReadTotalMultiplier', Timeouts.ReadTotalMultiplier);
    Reg.WriteInteger('Timeouts.WriteTotalConstant', Timeouts.WriteTotalConstant);
    Reg.WriteInteger('Timeouts.WriteTotalMultiplier', Timeouts.WriteTotalMultiplier);
  end;
  if spFlowControl in FStoredProps then
  begin
    Reg.WriteString('FlowControl.ControlRTS', RTSToStr(FlowControl.ControlRTS));
    Reg.WriteString('FlowControl.ControlDTR', DTRToStr(FlowControl.ControlDTR));
    Reg.WriteString('FlowControl.DSRSensitivity', BoolToStr(FlowControl.DSRSensitivity));
    Reg.WriteString('FlowControl.OutCTSFlow', BoolToStr(FlowControl.OutCTSFlow));
    Reg.WriteString('FlowControl.OutDSRFlow', BoolToStr(FlowControl.OutDSRFlow));
    Reg.WriteString('FlowControl.TxContinueOnXoff',
      BoolToStr(FlowControl.TxContinueOnXoff));
    Reg.WriteString('FlowControl.XonXoffIn', BoolToStr(FlowControl.XonXoffIn));
    Reg.WriteString('FlowControl.XonXoffOut', BoolToStr(FlowControl.XonXoffOut));
    Reg.WriteString('FlowControl.XoffChar', CharToStr(FlowControl.XoffChar));
    Reg.WriteString('FlowControl.XonChar', CharToStr(FlowControl.XonChar));
  end;
end;

procedure TSspBina.LoadIniFile(IniFile: TIniFile);
begin
  if spBasic in FStoredProps then
  begin
    Porta := IniFile.ReadString(Name, 'Port', Porta);
    BaudRate := StrToBaudRate(IniFile.ReadString(Name, 'BaudRate', BaudRateToStr(BaudRate)));
    if BaudRate = brCustom then
      CustomBaudRate := IniFile.ReadInteger(Name, 'CustomBaudRate', 9600);
    StopBits := StrToStopBits(IniFile.ReadString(Name, 'StopBits', StopBitsToStr(StopBits)));
    DataBits := StrToDataBits(IniFile.ReadString(Name, 'DataBits', DataBitsToStr(DataBits)));
    Parity.Bits := StrToParity(IniFile.ReadString(Name, 'Parity', ParityToStr(Parity.Bits)));
    FlowControl.FlowControl := StrToFlowControl(IniFile.ReadString(Name,
      'FlowControl', FlowControlToStr(FlowControl.FlowControl)));
  end;
  if spOthers in FStoredProps then
  begin
    EventChar := StrToChar(IniFile.ReadString(Name, 'EventChar', CharToStr(EventChar)));
    DiscardNull := StrToBool(IniFile.ReadString(Name, 'DiscardNull',
      BoolToStr(DiscardNull)));
  end;
  if spParity in FStoredProps then
  begin
    Parity.Check := StrToBool(IniFile.ReadString(Name, 'Parity.Check',
      BoolToStr(Parity.Check)));
    Parity.Replace := StrToBool(IniFile.ReadString(Name, 'Parity.Replace',
      BoolToStr(Parity.Replace)));
    Parity.ReplaceChar := StrToChar(IniFile.ReadString(Name,
      'Parity.ReplaceChar', CharToStr(Parity.ReplaceChar)));
  end;
  if spBuffer in FStoredProps then
  begin
    Buffer.OutputSize := IniFile.ReadInteger(Name, 'Buffer.OutputSize', Buffer.OutputSize);
    Buffer.InputSize := IniFile.ReadInteger(Name, 'Buffer.InputSize', Buffer.InputSize);
  end;
  if spTimeouts in FStoredProps then
  begin
    Timeouts.ReadInterval := IniFile.ReadInteger(Name, 'Timeouts.ReadInterval',
      Timeouts.ReadInterval);
    Timeouts.ReadTotalConstant := IniFile.ReadInteger(Name,
      'Timeouts.ReadTotalConstant', Timeouts.ReadTotalConstant);
    Timeouts.ReadTotalMultiplier := IniFile.ReadInteger(Name,
      'Timeouts.ReadTotalMultiplier', Timeouts.ReadTotalMultiplier);
    Timeouts.WriteTotalConstant := IniFile.ReadInteger(Name,
      'Timeouts.WriteTotalConstant', Timeouts.WriteTotalConstant);
    Timeouts.WriteTotalMultiplier := IniFile.ReadInteger(Name,
      'Timeouts.WriteTotalMultiplier', Timeouts.WriteTotalMultiplier);
  end;
  if spFlowControl in FStoredProps then
  begin
    FlowControl.ControlRTS := StrToRTS(IniFile.ReadString(Name,
      'FlowControl.ControlRTS', RTSToStr(FlowControl.ControlRTS)));
    FlowControl.ControlDTR := StrToDTR(IniFile.ReadString(Name,
      'FlowControl.ControlDTR', DTRToStr(FlowControl.ControlDTR)));
    FlowControl.DSRSensitivity := StrToBool(IniFile.ReadString(Name,
      'FlowControl.DSRSensitivity', BoolToStr(FlowControl.DSRSensitivity)));
    FlowControl.OutCTSFlow := StrToBool(IniFile.ReadString(Name,
      'FlowControl.OutCTSFlow', BoolToStr(FlowControl.OutCTSFlow)));
    FlowControl.OutDSRFlow := StrToBool(IniFile.ReadString(Name,
      'FlowControl.OutDSRFlow', BoolToStr(FlowControl.OutCTSFlow)));
    FlowControl.TxContinueOnXoff := StrToBool(IniFile.ReadString(Name,
      'FlowControl.TxContinueOnXoff', BoolToStr(FlowControl.TxContinueOnXoff)));
    FlowControl.XonXoffIn := StrToBool(IniFile.ReadString(Name,
      'FlowControl.XonXoffIn', BoolToStr(FlowControl.XonXoffIn)));
    FlowControl.XonXoffOut := StrToBool(IniFile.ReadString(Name,
      'FlowControl.XonXoffOut', BoolToStr(FlowControl.XonXoffOut)));
    FlowControl.XoffChar := StrToChar(IniFile.ReadString(Name,
      'FlowControl.XoffChar', CharToStr(FlowControl.XoffChar)));
    FlowControl.XonChar := StrToChar(IniFile.ReadString(Name,
      'FlowControl.XonChar', CharToStr(FlowControl.XonChar)));
  end;
end;

procedure TSspBina.LoadRegistry(Reg: TRegistry);
begin
  if spBasic in FStoredProps then
  begin
    Porta := Reg.ReadString('Port');
    BaudRate := StrToBaudRate(Reg.ReadString('BaudRate'));
    if BaudRate = brCustom then
      CustomBaudRate := Reg.ReadInteger('CustomBaudRate');
    StopBits := StrToStopBits(Reg.ReadString('StopBits'));
    DataBits := StrToDataBits(Reg.ReadString('DataBits'));
    Parity.Bits := StrToParity(Reg.ReadString('Parity'));
    FlowControl.FlowControl := StrToFlowControl(Reg.ReadString('FlowControl'));
  end;
  if spOthers in FStoredProps then
  begin
    EventChar := StrToChar(Reg.ReadString('EventChar'));
    DiscardNull := StrToBool(Reg.ReadString('DiscardNull'));
  end;
  if spParity in FStoredProps then
  begin
    Parity.Check := StrToBool(Reg.ReadString('Parity.Check'));
    Parity.Replace := StrToBool(Reg.ReadString('Parity.Replace'));
    Parity.ReplaceChar := StrToChar(Reg.ReadString('Parity.ReplaceChar'));
  end;
  if spBuffer in FStoredProps then
  begin
    Buffer.OutputSize := Reg.ReadInteger('Buffer.OutputSize');
    Buffer.InputSize := Reg.ReadInteger('Buffer.InputSize');
  end;
  if spTimeouts in FStoredProps then
  begin
    Timeouts.ReadInterval := Reg.ReadInteger('Timeouts.ReadInterval');
    Timeouts.ReadTotalConstant := Reg.ReadInteger('Timeouts.ReadTotalConstant');
    Timeouts.ReadTotalMultiplier := Reg.ReadInteger('Timeouts.ReadTotalMultiplier');
    Timeouts.WriteTotalConstant := Reg.ReadInteger('Timeouts.WriteTotalConstant');
    Timeouts.WriteTotalMultiplier := Reg.ReadInteger('Timeouts.WriteTotalMultiplier');
  end;
  if spFlowControl in FStoredProps then
  begin
    FlowControl.ControlRTS := StrToRTS(Reg.ReadString('FlowControl.ControlRTS'));
    FlowControl.ControlDTR := StrToDTR(Reg.ReadString('FlowControl.ControlDTR'));
    FlowControl.DSRSensitivity := StrToBool(Reg.ReadString('FlowControl.DSRSensitivity'));
    FlowControl.OutCTSFlow := StrToBool(Reg.ReadString('FlowControl.OutCTSFlow'));
    FlowControl.OutDSRFlow := StrToBool(Reg.ReadString('FlowControl.OutDSRFlow'));
    FlowControl.TxContinueOnXoff := StrToBool(Reg.ReadString('FlowControl.TxContinueOnXoff'));
    FlowControl.XonXoffIn := StrToBool(Reg.ReadString('FlowControl.XonXoffIn'));
    FlowControl.XonXoffOut := StrToBool(Reg.ReadString('FlowControl.XonXoffOut'));
    FlowControl.XoffChar := StrToChar(Reg.ReadString('FlowControl.XoffChar'));
    FlowControl.XonChar := StrToChar(Reg.ReadString('FlowControl.XonChar'));
  end;
end;

procedure SetRegistry(Reg: TRegistry; Key: string; Name: string);
var
  I: integer;
  Temp: string;
begin
  I := Pos('\', Key);
  if I > 0 then
  begin
    Temp := Copy(Key, 1, I - 1);
    if UpperCase(Temp) = 'HKEY_LOCAL_MACHINE' then
      Reg.RootKey := HKEY_LOCAL_MACHINE
    else if UpperCase(Temp) = 'HKEY_CURRENT_USER' then
      Reg.RootKey := HKEY_CURRENT_USER;
    Key := Copy(Key, I + 1, Length(Key) - I);
    if Key[Length(Key)] <> '\' then
      Key := Key + '\';
    Key := Key + Name;
    Reg.OpenKey(Key, True);
  end;
end;

procedure TSspBina.StoreSettings(StoreType: TStoreType; StoreTo: string);
var
  IniFile: TIniFile;
  Reg: TRegistry;
begin
  try
    if StoreType = stRegistry then
    begin
      Reg := TRegistry.Create;
      try
        SetRegistry(Reg, StoreTo, Name);
        StoreRegistry(Reg);
      finally
        Reg.Free;
      end
    end 
    else
    begin
      IniFile := TIniFile.Create(StoreTo);
      try
        StoreIniFile(IniFile);
      finally
        IniFile.Free;
      end
    end;
  except
    raise ECspBina.CreateNoWinCode(CError_StoreFailed);
  end;
end;

procedure TSspBina.LoadSettings(StoreType: TStoreType; LoadFrom: string);
var
  IniFile: TIniFile;
  Reg: TRegistry;
begin
  BeginUpdate;
  try
    try
      if StoreType = stRegistry then
      begin
        Reg := TRegistry.Create;
        try
          SetRegistry(Reg, LoadFrom, Name);
          LoadRegistry(Reg);
        finally
          Reg.Free;
        end
      end 
      else
      begin
        IniFile := TIniFile.Create(LoadFrom);
        try
          LoadIniFile(IniFile);
        finally
          IniFile.Free;
        end
      end;
    finally
      EndUpdate;
    end;
  except
    raise ECspBina.CreateNoWinCode(CError_LoadFailed);
  end;
end;

procedure TSspBina.RegisterLink(AComLink: TComLink);
begin
  if FLinks.IndexOf(Pointer(AComLink)) > -1 then
    raise ECspBina.CreateNoWinCode(CError_RegFailed)
  else
    FLinks.Add(Pointer(AComLink));
end;

procedure TSspBina.UnRegisterLink(AComLink: TComLink);
begin
  if FLinks.IndexOf(Pointer(AComLink)) = -1 then
    raise ECspBina.CreateNoWinCode(CError_RegFailed)
  else
    FLinks.Remove(Pointer(AComLink));
end;


procedure TSspBina.DoBeforeClose;
begin
  if Assigned(FOnBeforeClose) then
    FOnBeforeClose(Self);
end;

procedure TSspBina.DoBeforeOpen;
begin
  if Assigned(FOnBeforeOpen) then
    FOnBeforeOpen(Self);
end;

procedure TSspBina.DoAfterOpen;
begin
  if Assigned(FOnAfterOpen) then
    FOnAfterOpen(Self);
end;

procedure TSspBina.DoAfterClose;
begin
  if Assigned(FOnAfterClose) then
    FOnAfterClose(Self);
end;

procedure TSspBina.DoDTMF(Count: integer);
begin
  if Assigned(FOnDTMF) then
    FOnDTMF(Self, Count);
end;

procedure TSspBina.DoRxBuf(const Buffer; Count: integer);
begin
  if Assigned(FOnRxBuf) then
    FOnRxBuf(Self, Buffer, Count);
end;

procedure TSspBina.DoBreak;
begin
  if Assigned(FOnBreak) then
    FOnBreak(Self);
end;

procedure TSspBina.DoTxEmpty;
begin
  if Assigned(FOnTxEmpty) then FOnTxEmpty(Self);
end;

procedure TSspBina.DoRing;
begin
  if Assigned(FOnRing) then
    FOnRing(Self);
end;

procedure TSspBina.DoCTSChange(OnOff: boolean);
begin
  if Assigned(FOnCTSChange) then
    FOnCTSChange(Self, OnOff);
end;

procedure TSspBina.DoDSRChange(OnOff: boolean);
begin
  if Assigned(FOnDSRChange) then
    FOnDSRChange(Self, OnOff);
end;

procedure TSspBina.DoRLSDChange(OnOff: boolean);
begin
  if Assigned(FOnRLSDChange) then
    FOnRLSDChange(Self, OnOff);
end;

procedure TSspBina.DoError(Errors: TComErrors);
begin
  if Assigned(FOnError) then
    FOnError(Self, Errors);
end;

procedure TSspBina.DoRxFlag;
begin
  if Assigned(FOnRxFlag) then
    FOnRxFlag(Self);
end;

procedure TSspBina.DoRx80Full;
begin
  if Assigned(FOnRx80Full) then
    FOnRx80Full(Self);
end;

procedure TSspBina.CheckSignals(Open: boolean);
begin
  if Open then
  begin
    CallCTSChange;
    CallDSRChange;
    CallRLSDChange;
  end 
  else
  begin
    SendSignals(lsCTS, False);
    SendSignals(lsDSR, False);
    SendSignals(lsRLSD, False);
    DoCTSChange(False);
    DoDSRChange(False);
    DoRLSDChange(False);
  end;
end;


procedure TSspBina.CallAfterClose;
begin
  DoAfterClose;
end;

procedure TSspBina.CallAfterOpen;
begin
  DoAfterOpen;
  CheckSignals(True);
end;

procedure TSspBina.CallBeforeClose;
begin
  DoBeforeClose;
  CheckSignals(False);
end;

procedure TSspBina.CallBeforeOpen;
begin
  DoBeforeClose;
end;

procedure TSspBina.CallBreak;
begin
  DoBreak;
end;

procedure TSspBina.CallCTSChange;
var
  OnOff: boolean;
begin
  OnOff := csCTS in Signals;
  SendSignals(lsCTS, OnOff);
  DoCTSChange(csCTS in Signals);
end;

procedure TSspBina.CallDSRChange;
var
  OnOff: boolean;
begin
  OnOff := csDSR in Signals;
  SendSignals(lsDSR, OnOff);
  DoDSRChange(csDSR in Signals);
end;

procedure TSspBina.CallRLSDChange;
var
  OnOff: boolean;
begin
  OnOff := csRLSD in Signals;
  SendSignals(lsRLSD, OnOff);
  DoRLSDChange(csRLSD in Signals);
end;

procedure TSspBina.CallError;
begin
  DoError(LastErrors);
end;

procedure TSspBina.CallRing;
var
  I: integer;
  ComLink: TComLink;
begin
  if (FLinks.Count > 0) then
    for I := 0 to FLinks.Count - 1 do
    begin
      ComLink := TComLink(FLinks[I]);
      if Assigned(ComLink.OnRing) then
        ComLink.OnRing(Self);
    end;
  DoRing;
end;

procedure TSspBina.CallRx80Full;
begin
  DoRx80Full;
end;

procedure TSspBina.CallDTMF;
var
  Count: integer;

  procedure CheckLinks;
    {$WARNINGS OFF}
  var
    I: integer;
    P: Pointer;
    ComLink: TComLink;
    ReadFromBuffer: boolean;
  begin
    if (Count > 0) and (FLinks.Count > 0) then
    begin
      ReadFromBuffer := False;
      try
        for I := 0 to FLinks.Count - 1 do
        begin
          ComLink := TComLink(FLinks[I]);
          if Assigned(ComLink.OnRxBuf) then
          begin
            if not ReadFromBuffer then
            begin
              GetMem(P, Count);
              ReadFromBuffer := True;
              Read(P^, Count);
              DoRxBuf(P^, Count);
            end;
            ComLink.OnRxBuf(Self, P^, Count);
          end
        end;
      finally
        if ReadFromBuffer then
        begin
          FreeMem(P);
          Count := 0;
        end;
      end;
    end;
  end;
begin
  Count := InputCount;
  if Count > 0 then
    SendSignals(lsRx, True);
  CheckLinks;
  if Count > 0 then
    DoDTMF(Count);
end;

procedure TSspBina.CallRxFlag;
begin
  DoRxFlag;
end;

procedure TSspBina.CallTxEmpty;
begin
  SendSignals(lsTx, False);
  DoTxEmpty;
end;

procedure TSspBina.SendSignals(Signal: TComLedSignal; OnOff: boolean);
var
  I: integer;
  ComLink: TComLink;
  SignalEvent: TComSignalEvent;
begin
  if (FLinks.Count > 0) then
    for I := 0 to FLinks.Count - 1 do
    begin
      ComLink := TComLink(FLinks[I]);
      SignalEvent := nil;
      case Signal of
        lsCTS: SignalEvent := ComLink.OnCTSChange;
        lsDSR: SignalEvent := ComLink.OnDSRChange;
        lsRLSD: SignalEvent := ComLink.OnRLSDChange;
        lsTx: SignalEvent := ComLink.OnTx;
        lsRx: SignalEvent := ComLink.OnRx;
      end;
      if Assigned(SignalEvent) then
        SignalEvent(Self, OnOff);
    end;
end;

procedure TSspBina.SetConectado(const Value: boolean);
begin
  if not ((csDesigning in ComponentState) or (csLoading in ComponentState)) then
  begin
    if Value <> FConectado then
      if Value then
        Open
      else
        Close;
  end
  else
    FConectado := Value;
end;

procedure TSspBina.SetBaudRate(const Value: TBaudRate);
begin
  if Value <> FBaudRate then
  begin
    FBaudRate := Value;
    ApplyDCB;
  end;
end;

procedure TSspBina.SetCustomBaudRate(const Value: integer);
begin
  if Value <> FCustomBaudRate then
  begin
    FCustomBaudRate := Value;
    ApplyDCB;
  end;
end;

procedure TSspBina.SetDataBits(const Value: TDataBits);
begin
  if Value <> FDataBits then
  begin
    FDataBits := Value;
    ApplyDCB;
  end;
end;

procedure TSspBina.SetDiscardNull(const Value: boolean);
begin
  if Value <> FDiscardNull then
  begin
    FDiscardNull := Value;
    ApplyDCB;
  end;
end;

procedure TSspBina.SetEventChar(const Value: char);
begin
  if Value <> FEventChar then
  begin
    FEventChar := Value;
    ApplyDCB;
  end;
end;

function ComString(Str: string): TPorta;
var
  Num: integer;
begin
  if UpperCase(Copy(Str, 1, 3)) = 'COM' then
    Str := Copy(Str, 4, Length(Str) - 3);
  try
    Num := StrToInt(Str);
  except
    Num := 1;
  end;
  if (Num < 1) or (Num > 16) then
    Num := 1;
  Result := Format('COM%d', [Num]);
end;

procedure TSspBina.SetPort(const Value: TPorta);
var
  Str: string;
begin
  Str := ComString(Value);
  if Str <> FPort then
  begin
    FPort := Str;
    if (FConectado) and (not ((csDesigning in ComponentState) or
      (csLoading in ComponentState))) then
    begin
      Close;
      Open;
    end;
  end;
end;

procedure TSspBina.SetStopBits(const Value: TStopBits);
begin
  if Value <> FStopBits then
  begin
    FStopBits := Value;
    ApplyDCB;
  end;
end;

procedure TSspBina.SetSyncMethod(const Value: TSyncMethod);
begin
  if Value <> FSyncMethod then
  begin
    if (FConectado) and (not ((csDesigning in ComponentState) or
      (csLoading in ComponentState))) then
      raise ECspBina.CreateNoWinCode(CError_SyncMeth)
    else
      FSyncMethod := Value;
  end;
end;

function TSspBina.GetTriggersOnDTMF: boolean;
var
  I: integer;
  ComLink: TComLink;
begin
  Result := True;
  if FLinks.Count > 0 then
    for I := 0 to FLinks.Count - 1 do
    begin
      ComLink := TComLink(FLinks[I]);
      if Assigned(ComLink.OnRxBuf) then
        Result := False;
    end;
end;

procedure TSspBina.SetFlowControl(const Value: TComFlowControl);
begin
  FFlowControl.Assign(Value);
  ApplyDCB;
end;

procedure TSspBina.SetParity(const Value: TComParity);
begin
  FParity.Assign(Value);
  ApplyDCB;
end;

procedure TSspBina.SetTimeouts(const Value: TComTimeouts);
begin
  FTimeouts.Assign(Value);
  ApplyTimeouts;
end;

procedure TSspBina.SetBuffer(const Value: TComBuffer);
begin
  FBuffer.Assign(Value);
  ApplyBuffer;
end;

constructor TComDataPacket.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FComLink := TComLink.Create;
  FComLink.OnRxBuf := RxBuf;
  FMaxBufferSize := 1024;
end;

destructor TComDataPacket.Destroy;
begin
  BINA := nil;
  FComLink.Free;
  inherited Destroy;
end;

procedure TComDataPacket.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (AComponent = FCspBina) and (Operation = opRemove) then
    BINA := nil;
end;

procedure TComDataPacket.DoDiscard(Str: string);
begin
  if Assigned(FOnDiscard) then
    FOnDiscard(Self, Str);
end;

procedure TComDataPacket.DoPacket(Str: string);
begin
  if Assigned(FOnPacket) then
    FOnPacket(Self, Str);
end;

procedure TComDataPacket.CheckIncludeStrings(var Str: string);
var
  LenStart, LenStop: integer;
begin
  if FIncludeStrings then
    Exit;
  LenStart := Length(FStartString);
  LenStop := Length(FStopString);
  if Pos(Upper(FStartString), Upper(Str)) = 1 then
    Str := Copy(Str, LenStart + 1, Length(Str) - LenStart);
  if Pos(Upper(FStopString), Upper(Str)) = (Length(Str) - LenStop + 1) then
    Str := Copy(Str, 1, Length(Str) - LenStop);
end;

function TComDataPacket.Upper(Str: string): string;
begin
  if FCaseInsensitive then
    Result := UpperCase(Str)
  else
    Result := Str;
end;

procedure TComDataPacket.HandleBuffer;

  procedure StartPacket;
  var
    Found: integer;
    Str: string;
  begin
    if Length(FStartString) > 0 then
    begin
      Found := Pos(Upper(FStartString), Upper(Buffer));
      if Found > 0 then
      begin
        Str := Copy(Buffer, 1, Found - 1);
        Buffer := Copy(Buffer, Found, Length(Buffer) - Found + 1);
        FInPacket := True;
        DoDiscard(Str);
      end;
    end
    else
      FInPacket := True;
  end;

  procedure EndPacket;
  var
    Found, CutSize, Len: integer;
    Str: string;
  begin
    Len := Length(Buffer);
    if (FSize > 0) and (Len >= FSize) then
    begin
      FInPacket := False;
      CutSize := FSize;
    end
    else
    begin
      Found := Pos(Upper(FStopString), Upper(Buffer));
      if Found > 0 then
      begin
        CutSize := Found + Length(FStopString) + 1;
        FInPacket := False;
      end;
    end;
    if not FInPacket then
    begin
      Str := Copy(Buffer, 1, CutSize);
      Buffer := Copy(Buffer, CutSize + 1, Length(Buffer) - CutSize);
      CheckIncludeStrings(Str);
      DoPacket(Str);
    end;
  end;

  function BufferTooLarge: boolean;
  begin
    Result := (Length(Buffer) >= FMaxBufferSize) and (FMaxBufferSize > 0);
  end;
begin
  try
    if not FInPacket then
      StartPacket;
    if FInPacket then
    begin
      EndPacket;
      if not FInPacket then
        HandleBuffer;
    end;
  finally
    if BufferTooLarge then
      EmptyBuffer;
  end;
end;

procedure TComDataPacket.RxBuf(Sender: TObject; const Buffer; Count: integer);
var
  Str: string;

  function Valid: boolean;
  begin
    Result := (FSize > 0) or (Length(FStopString) > 0)
  end;
begin
  SetLength(Str, Count);
  Move(Buffer, Str[1], Count);
  if Valid then
  begin
    Self.Buffer := Self.Buffer + Str;
    HandleBuffer;
  end
  else
    DoPacket(Str);
end;

procedure TComDataPacket.EmptyBuffer;
begin
  if Buffer <> '' then
  begin
    try
      DoDiscard(Buffer);
    finally
      Buffer := '';
      FInPacket := False;
    end;
  end;
end;

procedure TComDataPacket.SetBINA(const Value: TSspBina);
begin
  if Value <> FCspBina then
  begin
    if FCspBina <> nil then
      FCspBina.UnRegisterLink(FComLink);
    FCspBina := Value;
    if FCspBina <> nil then
    begin
      FCspBina.FreeNotification(Self);
      FCspBina.RegisterLink(FComLink);
    end;
  end;
end;

procedure TComDataPacket.SetCaseInsensitive(const Value: boolean);
begin
  if FCaseInsensitive <> Value then
  begin
    FCaseInsensitive := Value;
    if not (csLoading in ComponentState) then
      EmptyBuffer;
  end;
end;

procedure TComDataPacket.SetSize(const Value: integer);
begin
  if FSize <> Value then
  begin
    FSize := Value;
    if not (csLoading in ComponentState) then
      EmptyBuffer;
  end;
end;

procedure TComDataPacket.SetStartString(const Value: string);
begin
  if FStartString <> Value then
  begin
    FStartString := Value;
    if not (csLoading in ComponentState) then
      EmptyBuffer;
  end;
end;

procedure TComDataPacket.SetStopString(const Value: string);
begin
  if FStopString <> Value then
  begin
    FStopString := Value;
    if not (csLoading in ComponentState) then
      EmptyBuffer;
  end;
end;

constructor ECspBina.Create(ACode: integer; AWinCode: integer);
begin
  FWinCode := AWinCode;
  FCode := ACode;
  inherited CreateFmt(ComErrorMessages[ACode] + ' (win error code: %d)', [AWinCode]);
end;

constructor ECspBina.CreateNoWinCode(ACode: integer);
begin
  FWinCode := -1;
  FCode := ACode;
  inherited Create(ComErrorMessages[ACode]);
end;

procedure InitAsync(var AsyncPtr: PAsync);
begin
  New(AsyncPtr);
  with AsyncPtr^ do
  begin
    FillChar(Overlapped, SizeOf(TOverlapped), 0);
    Overlapped.hEvent := CreateEvent(nil, True, True, nil);
  end;
end;

procedure DoneAsync(var AsyncPtr: PAsync);
begin
  with AsyncPtr^ do
    CloseHandle(Overlapped.hEvent);
  Dispose(AsyncPtr);
  AsyncPtr := nil;
end;

procedure EnumBINAs(Ports: TStrings);
var
  BytesNeeded, Returned, I: DWORD;
  Success: boolean;
  PortsPtr: Pointer;
  InfoPtr: PPortInfo1;
  TempStr: string;
begin
  Success := EnumPorts(nil,
    1,
    nil,
    0,
    BytesNeeded,
    Returned);

  if (not Success) and (GetLastError = ERROR_INSUFFICIENT_BUFFER) then
  begin
    GetMem(PortsPtr, BytesNeeded);
    try
      Success := EnumPorts(nil,
        1,
        PortsPtr,
        BytesNeeded,
        BytesNeeded,
        Returned);

      for I := 0 to Returned - 1 do
      begin
        InfoPtr := PPortInfo1(DWORD(PortsPtr) + I * SizeOf(TPortInfo1));
        TempStr := InfoPtr^.pName;
        if Copy(TempStr, 1, 3) = 'COM' then
          Ports.Add(Copy(TempStr, 1, 4));
      end;
    finally
      FreeMem(PortsPtr);
    end;
  end;

  if not Success then
    raise ECspBina.Create(CError_EnumPortsFailed, GetLastError);
end;

function StrToBaudRate(Str: string): TBaudRate;
var
  I: TBaudRate;
begin
  I := Low(TBaudRate);
  while (I <= High(TBaudRate)) do
  begin
    if UpperCase(Str) = UpperCase(BaudRateToStr(TBaudRate(I))) then
      Break;
    I := Succ(I);
  end;
  if I > High(TBaudRate) then
    Result := br9600
  else
    Result := I;
end;

function StrToStopBits(Str: string): TStopBits;
var
  I: TStopBits;
begin
  I := Low(TStopBits);
  while (I <= High(TStopBits)) do
  begin
    if UpperCase(Str) = UpperCase(StopBitsToStr(TStopBits(I))) then
      Break;
    I := Succ(I);
  end;
  if I > High(TStopBits) then
    Result := sbOneStopBit
  else
    Result := I;
end;

function StrToDataBits(Str: string): TDataBits;
var
  I: TDataBits;
begin
  I := Low(TDataBits);
  while (I <= High(TDataBits)) do
  begin
    if UpperCase(Str) = UpperCase(DataBitsToStr(I)) then
      Break;
    I := Succ(I);
  end;
  if I > High(TDataBits) then
    Result := dbEight
  else
    Result := I;
end;

function StrToParity(Str: string): TParityBits;
var
  I: TParityBits;
begin
  I := Low(TParityBits);
  while (I <= High(TParityBits)) do
  begin
    if UpperCase(Str) = UpperCase(ParityToStr(I)) then
      Break;
    I := Succ(I);
  end;
  if I > High(TParityBits) then
    Result := prNone
  else
    Result := I;
end;

function StrToFlowControl(Str: string): TFlowControl;
var
  I: TFlowControl;
begin
  I := Low(TFlowControl);
  while (I <= High(TFlowControl)) do
  begin
    if UpperCase(Str) = UpperCase(FlowControlToStr(I)) then
      Break;
    I := Succ(I);
  end;
  if I > High(TFlowControl) then
    Result := fcCustom
  else
    Result := I;
end;

function BaudRateToStr(BaudRate: TBaudRate): string;
const
  BaudRateStrings: array[TBaudRate] of string = ('Custom', '110', '300', '600',
    '1200', '2400', '4800', '9600', '14400', '19200', '38400', '56000', '57600',
    '115200', '128000', '256000');
begin
  Result := BaudRateStrings[BaudRate];
end;

function StopBitsToStr(StopBits: TStopBits): string;
const
  StopBitsStrings: array[TStopBits] of string = ('1', '1.5', '2');
begin
  Result := StopBitsStrings[StopBits];
end;

function DataBitsToStr(DataBits: TDataBits): string;
const
  DataBitsStrings: array[TDataBits] of string = ('5', '6', '7', '8');
begin
  Result := DataBitsStrings[DataBits];
end;

function ParityToStr(Parity: TParityBits): string;
const
  ParityBitsStrings: array[TParityBits] of string = ('None', 'Odd', 'Even',
    'Mark', 'Space');
begin
  Result := ParityBitsStrings[Parity];
end;

function FlowControlToStr(FlowControl: TFlowControl): string;
const
  FlowControlStrings: array[TFlowControl] of string = ('Hardware',
    'Software', 'None', 'Custom');
begin
  Result := FlowControlStrings[FlowControl];
end;

//Setar DDD Local
procedure TSspBina.SetDDDL(const Value: TDDDLocal);
begin
  if Value <> FDDDL then
  begin
    FDDDL := Value;
    if FConectado and not ((csDesigning in ComponentState) or
      (csLoading in ComponentState)) then
    begin
      Close;
      Open;
    end;
  end;
end;

//Salvar Comandos AT aceitos pelo Modem
procedure TSspBina.SalvarComandos;
var
  i: integer;
  arquivo: string;
  SalvarReg: TIniFile;
begin
  //Abre o qrquivo de definicoes
  Arquivo := ExtractFilePath(Application.ExeName) + 'ComandAT.ini';
  SalvarReg := TIniFile.Create(Arquivo);

  // Salva setado, marca, Porta, e DDDLocal
  SalvarReg.WriteString('Modem', 'Setado', 'Sim');
  SalvarReg.WriteString('Modem', 'Marca', FormConfig.CheckBox2.Caption);
  SalvarReg.WriteString('Modem', 'Porta', FormConfig.Combo2.Text);
  SalvarReg.WriteString('Modem', 'DDDLocal', FormConfig.Combo3.Text);

  // Deleta (se existir) e cria como Default na chave 'AutoAtivar'
  SalvarReg.EraseSection('AutoAtivar');
  SalvarReg.WriteString('AutoAtivar', '0', FormConfig.ListBox1.items.Strings[0]);
  SalvarReg.WriteString('AutoAtivar', '1', FormConfig.ListBox1.items.Strings[1]);

  for i := 2 to FormConfig.ListBox1.Items.Count - 1 do 
  begin
    SalvarReg.WriteString('AutoAtivar', IntToStr(i),
      FormConfig.ListBox1.items.Strings[i]);
  end;

  // Deleta e cria a chave 'Historico'
  SalvarReg.EraseSection('Historico');
  SalvarReg.WriteString('Historico', 'Tipo', FormConfig.CheckBox2.Caption);
  for i := 0 to FormConfig.memo1.Lines.Count do
    if FormConfig.memo1.Lines.Strings[i] <> '' then
      SalvarReg.WriteString('Historico', IntToStr(i),
        FormConfig.memo1.Lines.Strings[i]);

  //Salva .INI
  FormConfig.button2.Click;

  //Recarrega-o no memo2
  FormConfig.Memo2.Clear;
  FormConfig.Memo2.Lines.LoadFromFile(arquivo);

  //Abre o arquivo de .INI
  Arquivo := ExtractFilePath(Application.ExeName) + 'ComandAT.ini';
  SalvarReg := TIniFile.Create(Arquivo);

  //Recarrega-o no memo2
  FormConfig.Memo2.Clear;
  FormConfig.Memo2.Lines.LoadFromFile(arquivo);
  FormConfig.Combo4.Text := 'Default';
  FormConfig.Label2.Caption := '     spBina' + #13 + '  Configurado!';

  SalvarReg.Free;
end;

// Localizar porta disponível
procedure TSspBina.LocalizaPorta(porta: string);
var
  FHandle: THandle;
  Reg: TRegistry;
  Lista: TStrings;
  i: integer;
  varPorta, varModelo: string;
begin
  Reg := TRegistry.Create;

  //Procurar na secção...
  Reg.RootKey := HKEY_LOCAL_MACHINE;

  //Chave onde estão as Portas de comunicação disponíveis
  if Reg.OpenKey('\Hardware\DeviceMap\SerialComm', False) then 
  begin
    //Cria a uma 'lista' das portas encontradas (mouse, modem... etc..)
    lista := TStringList.Create;

    //Adiciona a 'lista' as portas encontradas
    Reg.GetValueNames(lista);
    FormConfig.combo2.Clear;
    for i := 0 to lista.Count - 1 do 
    begin
      if trim(porta) = '' then
      begin
        varPorta := Reg.ReadString(lista[i]);// Lê nome da porta
        FormConfig.combo2.Items.Add(varPorta);
      end
      else
        varPorta := porta;
    end;
       {Cria o Handle para receber a porta e faz tentativa de abertura
       em todas as portas encontradas no modo leitura ou escrita (modem) }
    for i := 0 to FormConfig.combo2.items.Count - 1 do 
    begin
      varPorta := FormConfig.combo2.Items.Strings[i];
      FHandle := CreateFile(PChar('\\.\' + varPorta),
        GENERIC_READ or GENERIC_WRITE,
        0,
        nil,
        OPEN_EXISTING,
        FILE_FLAG_OVERLAPPED,
        0);

      // Se for uma porta válida para modem...
      if FHandle <> INVALID_HANDLE_VALUE then  
      begin
        CloseHandle(FHandle); // Fecha o Handle e a porta
      end
      else
        FormConfig.Combo2.Items.Delete(i); //se não for válido, deleta o item
    end;

    //Pegar nomes/modelos dos modems instalados nas portas existentes
    if Reg.OpenKey('\System\CurrentControlSet\' +
      'Services\Class\Modem\0000\', False) then 
    begin
      FormConfig.Combo2.ItemIndex := 0;
      varModelo := Reg.ReadString('Model');
      FormConfig.CheckBox2.Caption := varModelo + ' - ' + FormConfig.Combo2.Text;
      FormConfig.CheckBox2.Checked := True;
    end;
    if FormConfig.Combo2.items.Count > 1 then
      if Reg.OpenKey('\System\CurrentControlSet\' +
        'Services\Class\Modem\0001\', False) then 
      begin
        varModelo := Reg.ReadString('Model');
        FormConfig.CheckBox3.Caption := varModelo; // +' - '+varPorta;
      end;
    Reg.CloseKey;
    Lista.Free;
    Reg.Free;
  end;
end;

procedure SubstituaModem;
var
  cmd, marca: string;
  ATcomandosEX: TIniFile;
  i, posic: integer;
  reg: Tregistry;
  Lista: TStrings;
begin
  ATcomandosEX := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'ComandAT.ini');

  if FormConfig.Combo2.ItemIndex = 0 then 
  begin
    reg := TRegistry.Create;
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKey('\System\CurrentControlSet\' +
      'Services\Class\Modem\0000\', False) then 
    begin
      marca := Reg.ReadString('Model');
      FormConfig.CheckBox2.Caption := marca;
    end;
    if Reg.OpenKey('\System\CurrentControlSet\' +
      'Services\Class\Modem\0000\VoiceAnswer', False) then 
    begin
      FormConfig.ListBox1.Clear;
      FormConfig.ListBox1.Items.Add('at&f');
      FormConfig.ListBox1.Items.Add('at&c0v1x3');
      lista := TStringList.Create;
      Reg.GetValueNames(lista);
      for i := 0 to lista.Count - 1 do 
      begin
        cmd := Reg.ReadString(lista[i]);
        posic := POS('<cr>', cmd);
        if posic > 0 then
          Delete(cmd, posic, 4);
        FormConfig.ListBox1.Items.Add(cmd);
      end;
      ATcomandosEX.WriteString('Modem', 'Marca', marca);
      ATcomandosEX.WriteString('Modem', 'Porta', FormConfig.Combo2.Text);
      FormConfig.CheckBox2.Caption := marca + ' - ' + FormConfig.Combo2.Text;
      FormConfig.CheckBox2.Checked := True;
      FormConfig.CheckBox3.Checked := False;

      FormConfig.class8 := '';
      ATcomandosEX.UpdateFile;
      ATcomandosEX.Free;
      Reg.CloseKey;
      Lista.Free;
      Reg.Free;
    end;
  end;

  if FormConfig.Combo2.ItemIndex = 1 then 
  begin
    reg := TRegistry.Create;
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKey('\System\CurrentControlSet\' +
      'Services\Class\Modem\0001\', False) then 
    begin
      marca := Reg.ReadString('Model');
      FormConfig.CheckBox3.Caption := marca;
    end;
    if Reg.OpenKey('\System\CurrentControlSet\' +
      'Services\Class\Modem\0001\VoiceAnswer', False) then 
    begin
      FormConfig.ListBox1.Clear;
      FormConfig.ListBox1.Items.Add('at&f');
      FormConfig.ListBox1.Items.Add('at&c0v1x3');
      lista := TStringList.Create;
      Reg.GetValueNames(lista);
      for i := 0 to lista.Count - 1 do 
      begin
        cmd := Reg.ReadString(lista[i]);
        posic := POS('<cr>', cmd);
        if posic > 0 then
          Delete(cmd, posic, 4);
        FormConfig.ListBox1.Items.Add(cmd);
      end;
      ATcomandosEX.WriteString('Modem', 'Marca', marca);
      ATcomandosEX.WriteString('Modem', 'Porta', FormConfig.Combo2.Text);
      FormConfig.CheckBox3.Caption := marca + ' - ' + FormConfig.Combo2.Text;
      FormConfig.CheckBox3.Checked := True;
      FormConfig.CheckBox2.Checked := False;
    end;
    FormConfig.class8 := '';
    ATcomandosEX.UpdateFile;
    ATcomandosEX.Free;
    Reg.CloseKey;
    Lista.Free;
    Reg.Free;
  end;
end;

procedure TSspBina.ShowATComandSetup(const Setup, Ativar,
  Desativar: boolean; var PortaCom, vDDD: string);
var
  tipoModem, setado, cmd, marca: string;
  ATcomandosEX: TIniFile;
  i, posic, ativo: integer;
  reg: Tregistry;
  Lista: TStrings;
begin
  ativo := 1;
  if trim(PortaCom) = '' then ativo := 0;

  // Se for apenas setar nova porta ou trocar o DDD
  if (setup = False) and
    (Ativar = False) and
    (Desativar = False) and
    (ativo = 0) then 
  begin
    ATcomandosEX := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'ComandAT.ini');
    ATcomandosEX.WriteString('Modem', 'Porta', PortaCom);
    ATcomandosEX.WriteString('Modem', 'DDDLocal', vDDD);
    ATcomandosEX.UpdateFile;
    ATcomandosEX.Free;
    exit;
  end;

  // Setup ou Ativar
  if (setup) or (Ativar) then 
  begin
    FormConfig := TFormConfig.Create(self);

    // Carrega arquivo de definições de comandos AT
    ATcomandosEX := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'ComandAT.ini');

    Setado := ATcomandosEX.ReadString('Modem', 'Setado', '');
    FormConfig.CheckBox2.Caption := ATcomandosEX.ReadString('Modem', 'Marca', '');
    PortaCom := ATcomandosEX.ReadString('Modem', 'Porta', '');
    vDDD := ATcomandosEX.ReadString('Modem', 'DDDLocal', '');

    FormConfig.combo2.Text := PortaCom;
    FormConfig.combo3.Text := vDDD;

    // se ainda não foi setado
    if trim(setado) = '' then
      TipoModem := 'Configurar'
    else
      TipoModem := 'Default';

    if TipoModem = 'Default' then 
    begin
      lista := TStringList.Create;
      FormConfig.classe := 1;
      ATcomandosEX.ReadSectionValues('AutoAtivar', lista);
      FormConfig.listbox1.Clear;
      //Preencher Listbox1
      for i := 0 to lista.Count - 1 do 
      begin
        cmd := lista[i];
        Delete(cmd, 1,2); //remove nome das subChaves
        FormConfig.ListBox1.Items.Add(cmd);
      end;
      FormConfig.Button1.Click;
    end;

    if TipoModem = 'Configurar' then 
    begin
      reg := TRegistry.Create;
      FormConfig.classe := 0;
      Reg.RootKey := HKEY_LOCAL_MACHINE;
      if Reg.OpenKey('\System\CurrentControlSet\' +
        'Services\Class\Modem\0000\', False) then 
      begin
        marca := Reg.ReadString('Model');
        FormConfig.CheckBox2.Caption := marca;
      end;
      if Reg.OpenKey('\System\CurrentControlSet\' +
        'Services\Class\Modem\0000\VoiceAnswer', False) then 
      begin
        FormConfig.ListBox1.Items.Add('at&f');
        FormConfig.ListBox1.Items.Add('at&c0v1x3');
        lista := TStringList.Create;
        Reg.GetValueNames(lista);
        for i := 0 to lista.Count - 1 do 
        begin
          cmd := Reg.ReadString(lista[i]);
          posic := POS('<cr>', cmd);
          if posic > 0 then
            Delete(cmd, posic, 4);
          FormConfig.ListBox1.Items.Add(cmd);
        end;
        ATcomandosEX.WriteString('Modem', 'Marca', marca);
        ATcomandosEX.WriteString('Modem', 'Setado', 'Sim');
        ATcomandosEX.WriteString('Modem', 'Porta', PortaCom);
        ATcomandosEX.WriteString('Modem', 'DDDLocal', vDDD);
        FormConfig.CheckBox2.Caption := marca;

        lista := TStringList.Create;
        FormConfig.classe := 1;
        ATcomandosEX.ReadSectionValues('AutoAtivar', lista);
        FormConfig.listbox1.Clear;
        //Preencher Listbox1
        for i := 0 to lista.Count - 1 do 
        begin
          cmd := lista[i];
          Delete(cmd, 1,2); //remove nome das subChaves
          FormConfig.ListBox1.Items.Add(cmd);
        end;
        FormConfig.Button1.Click;
        FormConfig.classe := 1;
      end
      else
        FormConfig.classe := 0;

      ATcomandosEX.UpdateFile;
      ATcomandosEX.Free;
      Reg.CloseKey;
      Lista.Free;
      Reg.Free;
    end; // Fim Configurar
  end;   // Fim Cria FormConfig apenas se for para setup ou ativar

  // Setup
  if Setup then 
  begin
    FormConfig.Memo1.Clear;
    FormConfig.combo2.Text := PortaCom;
    FormConfig.combo3.Text := vDDD;
    FormConfig.Combo4.Text := TipoModem;
    FormConfig.ShowModal;
  end
  //Ativar
  else if Ativar then 
  begin
    FormConfig.Memo1.Clear;
    FormConfig.combo2.Text := PortaCom;
    FormConfig.combo3.Text := vDDD;
    FormConfig.Combo4.Text := TipoModem;
    FormConfig.Combo4.ItemIndex := 0;
    FormConfig.Combo4Change(Self);
  end
  //Desativar
  else if Desativar then
    FormConfig.Button3.Click;

  if FormConfig.class8 = 'S' then
    SubstituaModem;
end;

procedure TSspBina.LoadComandosAT(const ArquivoATcmd: string;
  var TipoModem, setado: string);
var
  ATcomandosEX: TIniFile;
  i, posic: integer;
  Lista: TStrings;
  cmd, marca: string;
  reg: TRegistry;
begin
  // Pega arquivo de definição de comandos AT
  ATcomandosEX := TIniFile.Create(ArquivoATcmd);


  if TipoModem = 'Default' then 
  begin
    lista := TStringList.Create;
    ATcomandosEX.ReadSectionValues('AutoAtivar', lista);
    FormConfig.listbox1.Clear;
    FormConfig.classe := 1;
    //Preencher Listbox
    for i := 0 to lista.Count - 1 do 
    begin
      cmd := lista[i];
      Delete(cmd, 1,2); //remove nome das subChaves
      FormConfig.ListBox1.Items.Add(cmd);
    end;
  end;
  if TipoModem = 'Configurar' then 
  begin
    reg := TRegistry.Create;
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    if Reg.OpenKey('\System\CurrentControlSet\' +
      'Services\Class\Modem\0000\', False) then 
    begin
      marca := Reg.ReadString('Model');
      FormConfig.CheckBox2.Caption := marca;
    end;
    if Reg.OpenKey('\System\CurrentControlSet\' +
      'Services\Class\Modem\0000\VoiceAnswer', False) then 
    begin
      FormConfig.ListBox1.Items.Add('at&f');
      FormConfig.ListBox1.Items.Add('at&c0v1x3');
      lista := TStringList.Create;
      Reg.GetValueNames(lista);
      for i := 0 to lista.Count - 1 do 
      begin
        cmd := Reg.ReadString(lista[i]);
        posic := POS('<cr>', cmd);
        if posic > 0 then
          Delete(cmd, posic, 4);
        FormConfig.ListBox1.Items.Add(cmd);
      end;
      ATcomandosEX.WriteString('Modem', 'Marca', marca);
      ATcomandosEX.WriteString('Modem', 'Setado', 'Sim');
      FormConfig.CheckBox2.Caption := marca;
      FormConfig.classe := 1;
    end
    else
      FormConfig.classe := 0;
    Reg.CloseKey;
    Lista.Free;
    Reg.Free;
    ATcomandosEX.Free;
  end; // Fim Configurar
end;
//// Função para formatar o munero
{ AQUÍ SUA ATENÇAO TEM QUE SER REDOBRADA. O SPBINA
TRABALHA COM O COMPRIMENTO DO NUMERO PARA DETERMINAR:
LIGAÇÃO LOCAL/INTERURBANA, TIPO, DDD, PREFIXO E FONE}

function TSspBina.FormateResultado(var stexto, smascara, stipo,
  sddd, sfone: string): string;
var
  i: integer;
  leitura, final: string;
begin
  for i := 1 to length(stexto) do
    if stexto[i] in ['0'..'9'] then
    begin
      leitura := leitura + stexto[i];
    end
  else
    leitura := leitura;

  stexto := leitura;
  /// separar tipos ( tipo, ddd, prefix e numero)
  // vamos determinar o numero 8 para o tamanho minimo...
  // se for menor, não formata, apenas mostra (exemplo: 1500, 121, 130 etc)

  final := '';
  if length(stexto) > 7 then  
  begin
    // Tipo de chamada   LOCAL
    if length(stexto) = 8 then
    begin
      for i := 1 to length(trim(stexto)) - 7 do // Localize o 1º caracter (Tipo)
        final := final + stexto[i];
      stipo := final; // localizamos o "Tipo" de uma chamada local.

      // achar Prefixo e numero (exemplo: 222-2222)
      final := '';
      for i := 2 to length(stexto) do  // pule o primeiro caracter (Tipo)
        final := final + stexto[i];
      smascara := '000\-0000;0;';  // 222-2222
      sfone := final;
      final := '';
    end

    // 1 - 2222-2222   = 9 digitos LOCAL
    else if length(stexto) = 9 then    // 1 - 2222-2222
    begin
      // Tipo de chamada
      for i := 1 to length(stexto) - 8 do
        final := final + stexto[i];
      stipo := final;
      final := '';

      // Prefixo e numero   2222-2222
      for i := 2 to length(stexto) do
        final := final + stexto[i];
      smascara := '0000\-0000;0;';  // 2222-2222
      sfone := final;
      final := '';
    end

    // 1 17 222 2222   = 10 digitos
    else if length(stexto) = 10 then
    // Tipo de chamada
    begin
      final := '';
      for i := 1 to length(stexto) - 9 do
        final := final + stexto[i];
      stipo := final;

      // DDD    1 17 222 2222
      final := '';
      for i := 2 to length(stexto) - 7 do
        final := final + stexto[i];
      sddd := final;
      final := '';

      // Prefixo e numero   222-2222
      for i := 4 to length(stexto) do
        final := final + stexto[i];
      smascara := '000\-0000;0;';  // 2222-2222
      sfone := final;
      final := '';
    end

    // 1 17 2222 2222   = 11 digitos
    else if length(stexto) = 11 then
    begin
      final := '';
      // Tipo de chamada
      for i := 1 to length(stexto) - 10 do
        final := final + stexto[i];
      stipo := final;

      // DDD    1 17 2222 2222
      final := '';
      for i := 2 to length(stexto) - 8 do
        final := final + stexto[i];
      sddd := final;
      final := '';

      // Prefixo e numero   2222-2222
      for i := 4 to length(stexto) do
        final := final + stexto[i];
      smascara := '0000\-0000;0;';  // 2222-2222
      sfone := final;
      final := '';
    end;
  end
  else
  begin
    // Se numeros especiais usados pela companhias telefônicas
    smascara := '';  // 000000000000
    sfone := stexto;
  end;
end;
//Final Formatação



procedure Register;
begin
  RegisterComponents('Extras', [TspBina]);
end;


end.
