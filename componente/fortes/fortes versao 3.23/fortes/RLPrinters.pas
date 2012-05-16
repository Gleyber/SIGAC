{@unit RLPrinters - Implementação do wrapper para o objeto Printer. }
unit RLPrinters;

interface

uses
  Classes, SysUtils, Math,
{$ifndef LINUX}
  Windows, WinSpool, Graphics,
  Messages, Printers,
{$else}
  QGraphics,
  QPrinters, Types,
{$endif}
  RLConsts, RLTypes, RLUtils;

type
  TRLPrinterWrapper=class
  private
    fPrinters    :TStrings;
    fCustomWidth :double;
    fCustomHeight:double;
    //
    function    GetPrinterIndex:integer;
    procedure   SetPrinterIndex(const Value:integer);
    function    GetCopies:integer;
    procedure   SetCopies(const Value:integer);
    function    GetPrinterName:string;
    procedure   SetPrinterName(const aPrinterName:string);
    function    GetPrinterPort:string;
    procedure   LoadPrintersList(aPrinters:TStrings);
    procedure   PrintersNeeded;
    function    AnyPrinter:boolean;
    function    GetPrinterNames(aIndex:integer):string;
    function    GetPrinterPorts(aIndex:integer):string;
    procedure   SelectSystemPaperSize(aPaperSize:TRLSystemPaperType; aPaperWidthMM,aPaperHeightMM:double; aOrientation:TRLSystemOrientation);
    function    GetCanvas:TCanvas;
  public
    constructor Create;
    destructor  Destroy; override;
    //
    procedure   BeginDoc;
    procedure   EndDoc;
    procedure   AbortDoc;
    //
    procedure   NewPage;
    function    Printers:TStrings;
    procedure   ExecuteSetup;
    function    SetupEnabled:boolean;
    procedure   Refresh;
    //
    procedure   SetPaperSize(aPaperWidthMM,aPaperHeightMM:double; aOrientationLandscape:boolean; aForceEmulation:boolean);
    procedure   LoadMetrics(var aPrinterMetrics:TRLPrinterMetrics);
    //
    property    PrinterIndex:integer     read GetPrinterIndex write SetPrinterIndex;
    property    PrinterName :string      read GetPrinterName  write SetPrinterName;
    property    PrinterPort :string      read GetPrinterPort;
    property    Copies      :integer     read GetCopies       write SetCopies;
    property    Canvas      :TCanvas     read GetCanvas;
    //
    property    PrinterNames[aIndex:integer]:string read GetPrinterNames;
    property    PrinterPorts[aIndex:integer]:string read GetPrinterPorts;
  end;

function RLPrinter:TRLPrinterWrapper;

implementation

var
  WarningDisplayed :boolean;
  RLPrinterInstance:TRLPrinterWrapper;

// UTILS

function RLPrinter:TRLPrinterWrapper;
begin
  if not Assigned(RLPrinterInstance) then
    RLPrinterInstance:=TRLPrinterWrapper.Create;
  Result:=RLPrinterInstance;
end;

function TruePrinterName(const aPrinterName:string):string;
var
  i:integer;
begin
  i:=Pos(' on ',aPrinterName);
  if i>0 then
    Result:=Copy(aPrinterName,1,i-1)
  else
    Result:=aPrinterName;
end;

function TruePrinterPort(const aPrinterName:string):string;
var
  i:integer;
begin
  i:=Pos(' on ',aPrinterName);
  if i>0 then
    Result:=Copy(aPrinterName,i+4,length(aPrinterName))
  else
    Result:=aPrinterName;
end;

{ TPrinterEx }

{$ifndef LINUX}
type
  TPrinterEx=class(TPrinter)
  public
    procedure SetPrinterIndex(const aNewPrinter:integer);
  end;

procedure TPrinterEx.SetPrinterIndex(const aNewPrinter:integer);
var
  Device,Driver,Port:array[0..MAX_PATH] of char;
  hDeviceMode:THandle;
begin
  inherited PrinterIndex:=aNewPrinter;
  //
  Self.GetPrinter(Device,Driver,Port,hDeviceMode);
  hDeviceMode:=0;
  Self.SetPrinter(Device,Driver,Port,hDeviceMode);
end;
{$endif}

{ TRLPrinterWrapper }

constructor TRLPrinterWrapper.Create;
begin
  fPrinters:=nil;
  //
  inherited;
end;

destructor TRLPrinterWrapper.Destroy;
begin
  if Assigned(fPrinters) then
    fPrinters.free;
  //
  inherited;
end;

procedure TRLPrinterWrapper.PrintersNeeded;
begin
  if not Assigned(fPrinters) then
  begin
    fPrinters:=TStringList.Create; 
    LoadPrintersList(fPrinters);
  end;
end;

procedure TRLPrinterWrapper.BeginDoc;
begin
  Printer.BeginDoc;
{$ifndef LINUX}
  Printer.Canvas.Font.PixelsPerInch:=GetDeviceCaps(Printer.Handle,LOGPIXELSY);
{$else}
  Printer.Canvas.Font.PixelsPerInch:=Printer.YDPI;
{$endif}
end;

procedure TRLPrinterWrapper.EndDoc;
var
  savedprinterindex:integer;
begin
  // Na CLX o método EndDoc destroi o objeto PrinterAdapter.
  // Com isso se perde a referência para o OutputDevice escolhido. Nele se baseia o nosso PrinterIndex.
  // Temos que salvá-lo aqui e restaurar depois do EndDoc.
  savedprinterindex:=PrinterIndex;
  Printer.EndDoc;
  PrinterIndex:=savedprinterindex;
end;

procedure TRLPrinterWrapper.AbortDoc;
begin
  Printer.Abort;
end;

procedure TRLPrinterWrapper.NewPage;
begin
  Printer.NewPage;
end;

function TRLPrinterWrapper.GetCanvas:TCanvas;
begin
  Result:=Printer.Canvas;
end;

{$ifndef LINUX}
function ConvOrientation(aOrientation:TRLSystemOrientation):TPrinterOrientation;
begin
  if aOrientation=DMORIENT_PORTRAIT then
    Result:=Printers.poPortrait
  else
    Result:=Printers.poLandscape;
end;  
procedure TRLPrinterWrapper.SelectSystemPaperSize(aPaperSize:TRLSystemPaperType; aPaperWidthMM,aPaperHeightMM:double; aOrientation:TRLSystemOrientation);
var
  fCapabilities:longint;
  fDeviceMode  :PDeviceMode;
  fDriverHandle:THandle;
  fDevice      :PChar;
  fDriver      :PChar;
  fPort        :PChar;
  fPrinterName :string;
  function Able(Hability:integer):boolean;
  begin
    Result:=(fCapabilities and Hability)>0;
  end;
begin
  fDriverHandle:=0;
  fDevice      :=nil;
  fDriver      :=nil;
  fPort        :=nil;
  if AnyPrinter then
    try
      GetMem(fDevice,255);
      GetMem(fDriver,255);
      GetMem(fPort  ,255);
      Printer.GetPrinter(fDevice,fDriver,fPort,fDriverHandle);
      if fDriverHandle=0 then
      begin
        TPrinterEx(Printer).SetPrinterIndex(Printer.PrinterIndex);
        Printer.GetPrinter(fDevice,fDriver,fPort,fDriverHandle);
      end;
      if fDriverHandle=0 then
        abort;
      fDeviceMode:=GlobalLock(fDriverHandle);
      if fDeviceMode=nil then
        Abort;
      try
        fCapabilities:=fDeviceMode^.dmFields;
        //
        //if Able(DM_PAPERSIZE) then // não funciona no Win2k/XP
        fDeviceMode^.dmPaperSize:=aPaperSize;
        fDeviceMode^.dmFields   :=fDeviceMode^.dmFields or DM_PAPERSIZE;
        if aPaperSize=DMPAPER_USER then
        begin
          if aPaperWidthMM<>0 then
          begin
            fDeviceMode^.dmPaperWidth:=Round(aPaperWidthMM*10);
            fDeviceMode^.dmFields    :=fDeviceMode^.dmFields or DM_PAPERWIDTH;
          end;
          if aPaperHeightMM<>0 then
          begin
            fDeviceMode^.dmPaperLength:=Round(aPaperHeightMM*10);
            fDeviceMode^.dmFields     :=fDeviceMode^.dmFields or DM_PAPERLENGTH;
          end;
        end;
        //
        if Able(DM_ORIENTATION) then
        begin
          fDeviceMode^.dmOrientation:=aOrientation;
          fDeviceMode^.dmFields     :=fDeviceMode^.dmFields or DM_ORIENTATION;
        end;
        //
      finally
        GlobalUnlock(fDriverHandle);
      end;
    finally
      if fDevice<>nil then
        FreeMem(fDevice,255);
      if fDriver<>nil then
        FreeMem(fDriver,255);
      if fPort<>nil then
        FreeMem(fPort,255);
    end;
  //
  Printer.Orientation:=ConvOrientation(aOrientation);
  fPrinterName:=PrinterName;
  PostMessage(HWND_BROADCAST,WM_DEVMODECHANGE,0,integer(@fPrinterName[1]));
end;
{$else}
procedure TRLPrinterWrapper.SelectSystemPaperSize(aPaperSize:TRLSystemPaperType; aPaperWidthMM,aPaperHeightMM:double; aOrientation:TRLSystemOrientation);
begin
  Printer.PrintAdapter.PageSize:=aPaperSize;
  // adaptação de dimensões para o componente
  if aPaperSize=UserPaperCode then
  begin
    {
    if aPaperWidthMM<>0 then
      Printer.PrintAdapter.PageWidth:=aPaperWidthMM;
    if aPaperHeightMM<>0 then
      Printer.PrintAdapter.PageHeight:=aPaperHeightMM;
    }
  end;
  // orientação do papel
  Printer.Orientation:=aOrientation;
end;
{$endif}

procedure TRLPrinterWrapper.SetPaperSize(aPaperWidthMM,aPaperHeightMM:double;
  aOrientationLandscape:boolean; aForceEmulation:boolean);
var
  ResultPaperSize  :TRLSystemPaperType;
  ResultPaperWidth :double;
  ResultPaperHeight:double;
  ResultOrientation:TRLSystemOrientation;
begin
  DetectPaperSize(aPaperWidthMM,aPaperHeightMM,aOrientationLandscape,aForceEmulation,
    ResultPaperSize,ResultPaperWidth,ResultPaperHeight,ResultOrientation);
  SelectSystemPaperSize(ResultPaperSize,ResultPaperWidth,ResultPaperHeight,ResultOrientation);
  fCustomWidth :=aPaperWidthMM;
  fCustomHeight:=aPaperHeightMM;
end;

procedure TRLPrinterWrapper.LoadMetrics(var aPrinterMetrics:TRLPrinterMetrics);
{$ifndef LINUX}
var
  dc:HDC;
{$endif}
begin
  try
    if not AnyPrinter then
      raise Exception.Create(LS_PrinterNotFoundStr);
{$ifndef LINUX}
    dc:=Printer.Handle;
    if dc=0 then
    begin
      TPrinterEx(Printer).SetPrinterIndex(Printer.PrinterIndex);
      dc:=Printer.Handle;
      if dc=0 then
        raise Exception.Create(LS_PrinterDriverErrorStr);
    end;
    aPrinterMetrics.PPIX          :=GetDeviceCaps(dc,LOGPIXELSX);      // Number of pixels per logical inch along the page width
    aPrinterMetrics.PPIY          :=GetDeviceCaps(dc,LOGPIXELSY);      // Number of pixels per logical inch along the page height
    aPrinterMetrics.PhysicalWidth :=GetDeviceCaps(dc,PHYSICALWIDTH);   // Width of the physical page, in device units
    aPrinterMetrics.PhysicalHeight:=GetDeviceCaps(dc,PHYSICALHEIGHT);  // Height of the physical page, in device units
    aPrinterMetrics.MarginLeft    :=GetDeviceCaps(dc,PHYSICALOFFSETX); // Distance from the left edge of the physical page to the left edge of the printable area, in device units
    aPrinterMetrics.MarginTop     :=GetDeviceCaps(dc,PHYSICALOFFSETY); // Distance from the top edge of the physical page to the top edge of the printable area, in device units
    aPrinterMetrics.ClientWidth   :=GetDeviceCaps(dc,HORZRES);         // Width, in pixels, of the page
    aPrinterMetrics.ClientHeight  :=GetDeviceCaps(dc,VERTRES);         // Height, in raster lines, of the page
    aPrinterMetrics.MarginRight   :=aPrinterMetrics.PhysicalWidth-(aPrinterMetrics.MarginLeft+aPrinterMetrics.ClientWidth);
    aPrinterMetrics.MarginBottom  :=aPrinterMetrics.PhysicalHeight-(aPrinterMetrics.MarginTop+aPrinterMetrics.ClientHeight);
{$else}
    aPrinterMetrics.PPIX          :=Printer.XDPI;
    aPrinterMetrics.PPIY          :=Printer.YDPI;
    if Printer.PageWidth=0 then
      aPrinterMetrics.PhysicalWidth:=Round(fCustomWidth*aPrinterMetrics.PPIX/InchAsMM)
    else  
      aPrinterMetrics.PhysicalWidth:=Printer.PageWidth;
    if Printer.PageHeight=0 then
      aPrinterMetrics.PhysicalHeight:=Round(fCustomHeight*aPrinterMetrics.PPIY/InchAsMM)
    else  
      aPrinterMetrics.PhysicalHeight:=Printer.PageHeight;
    aPrinterMetrics.MarginLeft    :=Printer.Margins.CX;
    aPrinterMetrics.MarginTop     :=Printer.Margins.CY;
    aPrinterMetrics.MarginRight   :=aPrinterMetrics.MarginLeft;
    aPrinterMetrics.MarginBottom  :=aPrinterMetrics.MarginTop;
    aPrinterMetrics.ClientWidth   :=aPrinterMetrics.PhysicalWidth -(aPrinterMetrics.MarginLeft+aPrinterMetrics.MarginRight);
    aPrinterMetrics.ClientHeight  :=aPrinterMetrics.PhysicalHeight-(aPrinterMetrics.MarginTop+aPrinterMetrics.MarginBottom);
{$endif}
  except
    on e:Exception do
    begin
      // configuração padrão da "HP LaserJet Plus"
      aPrinterMetrics.PPIX          :=300;
      aPrinterMetrics.PPIY          :=300;
      aPrinterMetrics.PhysicalWidth :=2550;
      aPrinterMetrics.PhysicalHeight:=3300;
      aPrinterMetrics.MarginLeft    :=75;
      aPrinterMetrics.MarginTop     :=75;
      aPrinterMetrics.MarginRight   :=aPrinterMetrics.MarginLeft;
      aPrinterMetrics.MarginBottom  :=aPrinterMetrics.MarginTop;
      aPrinterMetrics.ClientWidth   :=aPrinterMetrics.PhysicalWidth -(aPrinterMetrics.MarginLeft+aPrinterMetrics.MarginRight);
      aPrinterMetrics.ClientHeight  :=aPrinterMetrics.PhysicalHeight-(aPrinterMetrics.MarginTop+aPrinterMetrics.MarginBottom);
      //
      if not WarningDisplayed then
      begin
        //ShowMessage(LS_LoadDefaultConfigStr+#13#13+'Mensagem: '+e.Message);
        WarningDisplayed:=True;
      end;
    end;
  end;
end;

function TRLPrinterWrapper.Printers:TStrings;
begin
  PrintersNeeded;
  Result:=fPrinters;
end;

function TRLPrinterWrapper.GetPrinterNames(aIndex:integer):string;
begin
  Result:=Token(Printers[aIndex],1,'|');
end;

function TRLPrinterWrapper.GetPrinterPorts(aIndex:integer):string;
begin
  Result:=Token(Printers[aIndex],2,'|');
end;

{$ifdef LINUX}
procedure TRLPrinterWrapper.LoadPrintersList(aPrinters:TStrings);
var
  i:integer;
  s:string;
begin
  aPrinters.Clear;
  with TStringList.Create do
    try
      LoadFromFile('/etc/printcap');
      for i:=0 to Count-1 do
      begin
        s:=Trim(Strings[i]);
        if (s<>'') and not (s[1] in [':','|','#']) then
          if Pos('|',s)>0 then
            aPrinters.Add(Copy(s,1,Pos('|',s)-1))
          else if Pos(':',s)>0 then
            aPrinters.Add(Copy(s,1,Pos(':',s)-1))
          else
            aPrinters.Add(s);
      end;
    finally
      Free;
    end;
end;
{$else}
procedure TRLPrinterWrapper.LoadPrintersList(aPrinters:TStrings);
var
  i:integer;
begin
  aPrinters.Clear;
  for i:=0 to Printer.Printers.Count-1 do
    aPrinters.Add(Printer.Printers[i]);
end;
{$endif}

{$ifdef LINUX}
function TRLPrinterWrapper.AnyPrinter:boolean;
begin
  if Printer.PrintAdapter.OutputDevice='' then
    if Printers.Count>0 then
      Printer.SetPrinter(PrinterNames[0]);
  Result:=(Printer.PrintAdapter.OutputDevice<>'');
end;
{$else}
function TRLPrinterWrapper.AnyPrinter:boolean;
begin
  if Printer.PrinterIndex=-1 then
    if Printers.Count>0 then
      TPrinterEx(Printer).SetPrinterIndex(0);
  Result:=(Printer.PrinterIndex<>-1);
end;
{$endif}

{$ifdef LINUX}
function GetPrinterDevice(Index:integer):string;
var
  l:TStringList;
  i,p:integer;
  s:string;
begin
  Result:='';
  l:=TStringList.Create;
  try
    l.LoadFromFile('/etc/printcap');
    p:=-1;
    for i:=0 to l.Count-1 do
    begin
      s:=Trim(l[i]);
      if s<>'' then
      begin
        if not (s[1] in [':','|','#']) then
          Inc(p);
        if (Copy(s,1,4)=':sd=') and (p=Index) then
          Result:=Copy(s,5,MaxInt);
      end;
    end;
  finally
    l.Free;
  end;
end;
{$else}
function GetPrinterDevice(Index:integer):string;
const
  foodefs:TPrinterDefaults=(pDatatype:nil; pDevMode:nil; DesiredAccess:PRINTER_ACCESS_USE);
var
  foodevice,foodriver,
  fooport    :array[0..255] of char;
  hdevicemode:THandle;
  ok         :boolean;
  pInfo      :PPrinterInfo2;
  bytesNeeded:DWORD;
  hPrinter   :THandle;
begin
  try
    // GetCurrentPrinterHandle
    Printer.GetPrinter(foodevice,foodriver,fooport,hdevicemode);
    ok:=OpenPrinter(@foodevice,hPrinter,@foodefs);
    if not ok then RaiseLastOSError;
    try
      GetPrinter(hPrinter,2,nil,0,@bytesNeeded);
      if bytesNeeded=0 then
        bytesNeeded:=32768;
      pInfo:=AllocMem(bytesNeeded);
      try
        GetPrinter(hPrinter,2,pInfo,bytesNeeded,@bytesNeeded);
        if pInfo^.pServerName<>'' then
          Result:=pInfo^.pServerName+'\'+pInfo^.pShareName
        else
          Result:=pInfo^.pPortName;
      finally
        FreeMem(pInfo);
      end;
    finally
      ClosePrinter(hPrinter);
    end;
  except
    Result:='';
  end;
end;
{$endif}

function TRLPrinterWrapper.GetPrinterPort:string;
begin
  if not AnyPrinter then
    Result:=''
  else if (PrinterIndex<0) or not (PrinterIndex<Printers.Count) then
    Result:=''
  else
    Result:=GetPrinterDevice(PrinterIndex);
end;

function TRLPrinterWrapper.GetPrinterName:string;
begin
  if not AnyPrinter then
    Result:=''
  else if (PrinterIndex<0) or not (PrinterIndex<Printers.Count) then
    Result:=''
  else
    Result:=Token(Printers[PrinterIndex],1,'|');
end;

procedure TRLPrinterWrapper.SetPrinterName(const aPrinterName:string);
var
  n:string;
  i:integer;
begin
  n:=TruePrinterName(Token(aPrinterName,1,'|'));
  for i:=0 to Printers.Count-1 do
    if AnsiSameText(TruePrinterName(Token(Printers[i],1,'|')),n) then
    begin
      SetPrinterIndex(i);
      break;
    end;
end;

function TRLPrinterWrapper.GetPrinterIndex:integer;
{$ifdef LINUX}
var
  i:integer;
{$endif}
begin
  AnyPrinter;
{$ifdef LINUX}
  Result:=-1;
  for i:=0 to Printer.Printers.Count-1 do
    if AnsiSameText(TruePrinterName(PrinterNames[i]),Printer.OutputDevice) then
    begin
      Result:=i;
      break;
    end;
{$else}
  Result:=Printer.PrinterIndex;
{$endif}
end;

procedure TRLPrinterWrapper.SetPrinterIndex(const Value:integer);
begin
  PrintersNeeded;
  if (Value>=0) and (Value<Printers.Count) then
{$ifndef LINUX}
    TPrinterEx(Printer).SetPrinterIndex(Value);
{$else}
    Printer.SetPrinter(PrinterNames[Value]);
{$endif}
end;

procedure TRLPrinterWrapper.Refresh;
{$ifndef LINUX}
var
  savedprinterindex:integer;
{$endif}
begin
  if Assigned(fPrinters) then
    fPrinters.free;
  fPrinters:=nil;
{$ifndef LINUX}
  savedprinterindex:=Printer.PrinterIndex;
  Printer.Refresh;
  try
    TPrinterEx(Printer).SetPrinterIndex(-1);
    TPrinterEx(Printer).SetPrinterIndex(Min(savedprinterindex,Printer.Printers.Count-1));
  except
  end;
{$endif}
end;

function TRLPrinterWrapper.GetCopies:integer;
begin
  Result:=Max(1,Printer.Copies);
end;

procedure TRLPrinterWrapper.SetCopies(const Value:integer);
begin
  Printer.Copies:=Value;
end;

function TRLPrinterWrapper.SetupEnabled:boolean;
begin
{$ifndef LINUX}
  Result:=True;
{$else}
  Result:=False;
{$endif}
end;

procedure TRLPrinterWrapper.ExecuteSetup;
{$ifndef LINUX}
var
  PrinterHandle:THandle;
  PrinterInfo2 :PPrinterInfo2;
  BytesNeeded  :DWORD;
  FullDevMode  :PDeviceMode;
{$endif}
begin
  Refresh;
{$ifndef LINUX}
  if WinSpool.OpenPrinter(pchar(PrinterName),PrinterHandle,nil) then
    try
      WinSpool.GetPrinter(PrinterHandle,2,nil,0,@BytesNeeded);
      GetMem(PrinterInfo2,BytesNeeded);
      try
        WinSpool.GetPrinter(PrinterHandle,2,PrinterInfo2,BytesNeeded,@BytesNeeded);
        FullDevMode:=PrinterInfo2^.pDevMode;
        WinSpool.DocumentProperties(0,PrinterHandle,pchar(PrinterName),FullDevMode^,FullDevMode^,DM_IN_PROMPT);
      finally
        FreeMem(PrinterInfo2);
      end;
    finally
      WinSpool.ClosePrinter(PrinterHandle);
    end;
{$endif}
end;

initialization
  WarningDisplayed :=False;
  RLPrinterInstance:=nil;

finalization
  if Assigned(RLPrinterInstance) then
    RLPrinterInstance.free;

end.

