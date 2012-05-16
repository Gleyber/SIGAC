(* Copyright (c) by DATATEC Computer u. Elektronik GmbH

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA *)

(******************************************************************
**
** TMySQLBackUp component version 1.0
**
** Author Ch. Friedrich 20.5.2001
**
** Dependencies: libmysql.dll
**               MyBackUp.dll
**
*******************************************************************)

unit MySQLBackUp;


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Extctrls,MyBackUpDll,comctrls;

const
  MSDVersion = '1.0';

type

  TServerInfo = RECORD
    Host : String[40];
    User : String[40];
    Database : String[40];
  end;

  TMyErrRec = RECORD
    MyErrStr : String[255];
    MyErrNo : integer;
  end;

  TMyDumpRec = RECORD
    Table : String[100];
    Database : String[100];
    Records : integer;
  end;

  TSvInfo = procedure (Sender : TObject; data : TServerInfo) of Object;
  TMyDataError = procedure (Sender : TObject; ErrInfo : TMyErrRec) of Object;
  TCompError = procedure (Sender : TObject; PrgError : string) of Object;
  TMyDumpInfo = procedure (Sender : TObject; DumpInfo : TMyDumpRec) of Object;

  TMySQLBackUp = class(TComponent)
  private

    FSvInfo : TServerInfo;
    FOnSvInfo : TSvInfo;

    FMyErrRec : TMyErrRec;
    FOnMyDataError : TMyDataError;

    FOnCompError:TCompError;

    FMyDumpRec : TMyDumpRec;
    FOnAfterDump : TMyDumpInfo;

    FSQL: TStrings;
    FDatabases: TStrings;
    FTables: TStrings;
    FDatabase: String;
    FHost: String;
    FPort: Integer;
    FUser: String;
    FPassword: String;
    FBackFileName: string;
    FRestoreFileName: string;
    FLogFileName: string;
    FDumpVersion: string;

    FInitDLL,FIsDLL,FConnected:boolean;
    FLockOpt, FtOpt, FcOpt, FwhereOpt,
    FExtInsOpt,FdropOpt,FmultiOpt:boolean;
    FWriteLogHeading:boolean;
    FSqlWhere: String;
    FLogFileOpt: boolean;
    FServerInfo: string;
    FHostInfo: string;
    FBackUpRecords: Integer;
    FTimer:TTimer;
    FRefreshTime:Cardinal;
    FProgressBar:TProgressBar;
    FProgressStep: Integer;
    FOnDisconnect  : TNotifyEvent;
//    function GetServerStatus: string;

  protected
    procedure SetSQL(const Value: TStrings);
    procedure CreateError(const ErrStr: String);
//
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure DoOpen;
    procedure DoClose;
    procedure Connect;
    function DoQuery:integer;
    function IsTheServerAlive:boolean;
    function MakeBackUp(TableName:string):boolean;
    function RestoreSQLFile:integer;
    function GetDatabases:integer;
    function GetTables(Database:String):integer;
    function GetTableStructure(TableName:string):integer;
    function ReadRecords:integer;
//    property ServerInfo: string read FServerInfo;

  published
    property DumpVersion: String read FDumpVersion;
    property Databases: TStrings read FDatabases;
    property Tables: TStrings read FTables;
    property SQL: TStrings read FSQL write SetSQL;

    property Database: String read FDatabase write FDatabase;
    property BackFileName: String read FBackFileName write FBackFileName;
    property RestoreFileName: String read FRestoreFileName write FRestoreFileName;
    property LogFileName: String read FLogFileName write FLogFileName;


    property Host: String read FHost write FHost;
    property Port: Integer read FPort write FPort;
    property User: String read FUser write FUser;
    property Password: String read FPassword write FPassword;
    property Connected: boolean read FConnected;
    property BackUpRecords: integer read ReadRecords;
    property LockOpt: boolean read FLockOpt write FLockOpt;
    property DropOpt: boolean read FdropOpt write FdropOpt;
    property tOption: boolean read FtOpt write FtOpt;
    property cOption: boolean read FcOpt write FcOpt;
    property ExtInsOpt: boolean read FExtInsOpt write FExtInsOpt;
    property MultiTbOpt: boolean read FmultiOpt write FmultiOpt;
    property LogFileOpt: boolean read FLogFileOpt write FLogFileOpt;
    property WriteLogHeading: boolean read FWriteLogHeading write FWriteLogHeading;
    property WhereOpt: boolean read FwhereOpt write FwhereOpt;
    property SqlWhere: String read FSqlWhere write FSqlWhere;

    property ProgressBar:TProgressBar read FProgressBar write FProgressBar;
    property ProgressStep: integer read FProgressStep write FProgressStep;

    property OnServerConnect : TSvInfo read FOnSvInfo write FOnSvInfo;
    property OnMyDataError : TMyDataError read FOnMyDataError write FOnMyDataError;
    property OnAfterDump : TMyDumpInfo read FOnAfterDump write FOnAfterDump;
    property OnDisconnect  : TNotifyEvent read FOnDisconnect write FOnDisconnect;
    property OnActionError : TCompError read FOnCompError write FOnCompError;

  end;

procedure Register;

implementation

{ TMYSQLBACKUP.dcr }

constructor TMySQLBackUp.Create(AOwner: TComponent);
begin
  inherited; // Create;
  try
     FDatabases:= TStringList.Create;
     FTables:= TStringList.Create;
     FSQL:= TStringList.Create;

     FHost := 'localhost';
     FPort := 3306;
     FUser := 'Administrator';
     FPassword := '';
     FDumpVersion:='';
     FDatabase :='mysql';
     FBackFileName:='Backup.sql';
     FBackFileName:='Backup.log';
     FSqlWhere:='';

     FBackUpRecords:=0;
     FConnected:=false;
     FInitDLL:=false;
     FIsDLL:=MySqlLoadLib>0;
     FProgressBar:=nil;
     FProgressStep:=100;

    //  Backup-Options
    FLockOpt:=true;
    FtOpt:=false;
    FcOpt:=true;
    FdropOpt:=true;
    FmultiOpt:=true;
    FLogFileOpt:=true;
    FExtInsOpt:=true;
    FwhereOpt:=false;
    FSqlWhere:='';

    if FIsDLL then
       if InitUpdDLL > 0 then begin
       FInitDLL:=true;
       FDumpVersion:=GetDumpVersion;
    end;
   except
   end;
end;

destructor TMySQLBackUp.Destroy;
begin
   try
     FDatabases.Free;
     FTables.Free;
     FSQL.Free;
   except
   end;
   inherited Destroy;
end;


procedure TMySQLBackUp.DoClose;
begin
     try
        if FConnected and FInitDLL then begin
           FConnected:=false;
           DisConnect;
           if Assigned(FOnDisconnect) then FOnDisconnect(Self);
        end;
     finally
        FConnected:=false;
     end;
end;

function TMySQLBackUp.IsTheServerAlive:boolean;
begin
   result:=false;
   try
      if FConnected and FInitDLL then begin
        if SendPing = 0 then result:=true
        else begin
         FMyErrRec.MyErrStr:= LastMyError;
         FMyErrRec.MyErrNo:= LastMyErrorNo;
         if Assigned(FOnMyDataError)
           then FOnMyDataError(Self,FMyErrRec);
        end;
      end
   except
     CreateError('Server-Error');
   end;
end;



procedure TMySQLBackUp.SetSQL(const Value: TStrings);
begin
     FSQL.Assign(Value);
end;

procedure TMySQLBackUp.CreateError(const ErrStr: String);
begin
   if Assigned(FOnCompError)
     then FOnCompError(Self, ErrStr);
end;


function TMySQLBackUp.DoQuery:integer;
var
  Query: string;
  AffectedRows :integer;
begin
 try
   Result:=-1;
   if FConnected then begin
     if SelectMyDB(PChar(FDatabase)) = 0 then begin
       Query := FSQL.GetText;
       AffectedRows :=ExecQuery(PChar(Query));
       if  AffectedRows < 0 then begin
         FMyErrRec.MyErrStr:= LastMyError;
         FMyErrRec.MyErrNo:= LastMyErrorNo;
         if Assigned(FOnMyDataError)
           then FOnMyDataError(Self,FMyErrRec);
         Result:=-1;
       end else Result:=AffectedRows;
      end;
   end;
 except
     CreateError('SQL-Error');
     Result:=-1;
 end;
end;

procedure TMySQLBackUp.Connect;
begin
 DoOpen;
end;



procedure TMySQLBackUp.DoOpen;
begin
   FConnected:=false;
   if FInitDLL then begin
     if ConnectServer(PChar(FHost),PChar(FDatabase), PChar(FUser), PChar(FPassword)) = 1
     then begin
        FConnected:=true;
        GetDatabases;
         FSvInfo.Host:=FHost;
         FSvInfo.User:=FUser;
         FSvInfo.Database:=FDatabase;
         if Assigned(FOnSvInfo) then FOnSvInfo(Self,FSvInfo);
     end else begin
       FMyErrRec.MyErrStr:= LastMyError;
       FMyErrRec.MyErrNo:= LastMyErrorNo;
       if Assigned(FOnMyDataError)
         then FOnMyDataError(Self,FMyErrRec);
     end;
  end;
end;




function TMySQLBackUp.RestoreSQLFile:integer;
var  Res,InsRecords:integer;
     F:TextFile;
     s:string;

begin
  Result:=0;
  InsRecords:=0;
  try
  if FConnected then begin
    if FProgressBar<>nil then begin
       SetProgressBar(FProgressBar);
       SetProgressStep(FProgressStep);
    end;
    FSQL.Clear;
    if (not FileExists(FRestoreFileName))then exit;
    AssignFile(F, FRestoreFileName);
    {$I-}
      Reset(F);
    {$I+}
    if IOResult<>0 then begin
       CreateError('Restore-File-Error');
       Result:=-1;
       exit;
    end;
    Readln(F, s);
    if copy(s,2,Length(s)-1)<> FDumpVersion then begin
        CloseFile(F);
        CreateError('Excuse, but I cannot read this Dump-File');
        Result:=-1;
        exit;
    end;
    while not Eof(F) do begin
      Readln(F, s);
      if FProgressBar<>nil then begin
         FProgressBar.StepIt;
      end;
      if copy(s,1,1)<>'#' then begin   // Comment
        if copy(s,Length(s),1)=';' then begin  // it is the End-statement
          FSQL.Add(copy(s,1,Length(s)-1));  // Query without ";"
          Res:=DoQuery;
          FSQL.Clear;
          if Res <0 then break; // SQL-Error
          InsRecords:=InsRecords+Res;
        end else begin
          FSQL.Add(s); // normal Line
        end;
      end;
    end;
    CloseFile(F);
    if FProgressBar<>nil then FProgressBar.Position:=0;
    Result:=InsRecords;
  end;
  except
     CreateError('Restore-Error');
  end;
end;



function TMySQLBackUp.MakeBackUp(TableName:string):boolean;
var  ExtIns,cFlag,tFlag,Drop,
     Lock,Multi,DmpRecords:integer;
     F:TextFile;
     FileErr,neu:boolean;

  procedure WriteHead;
  begin
   FWriteLogHeading:=false;
   Writeln(F,'MySQL-Table Backup  Date: '+DateToStr(now));
   Writeln(F,'MySQL - Server / User : '+FHost+' / '+FUser);
   Writeln(F,'-------------------------------------------');
   Writeln(F);
  end;


begin
  Result:=false;
  DmpRecords:=0;
  neu:=false;
  try
   if FConnected then begin
    Multi:=0;Lock:=0;Drop:=0;cFlag:=0;
    tFlag:=0;ExtIns:=0;
    FileErr:=true;

    // BackUp-Options

    // all tables in the same file?
    if FmultiOpt then Multi:=1;

    if FLockOpt then Lock:=1;
    if FdropOpt then Drop:=1;
    if FcOpt then cFlag:=1;
    if FtOpt then tFlag:=1;
    if ExtInsOpt then ExtIns:=1;
    if FwhereOpt then SetWhereOption(PChar(FSqlWhere),1)
    else SetWhereOption(PChar(''),0);
    if (LogFileOpt) and (trim(FLogFileName)<>'')
    then begin
      if (not FileExists(FLogFileName)) or (not FmultiOpt) then neu:=true;
      AssignFile(F, FLogFileName);
      {$I-}
        if neu then Rewrite(F);
        Append(F);
        FileErr:=IOResult<>0;
      {$I+}
    end;
    if FileErr then CreateError('Logfile-Error');
    SetDropOption(Drop);
    SetLockOption(Lock);
    SetCFlagOption(cFlag);
    SetTFlagOption(tFlag);
    SetExInsOption(ExtIns);
    if FProgressBar<>nil then begin
       SetProgressBar(FProgressBar);
       SetProgressStep(FProgressStep);
    end;
    DoBackUp(PChar(FDatabase),PChar(TableName), PChar(FBackFileName), Multi);
    DmpRecords:=GetRecord;
    FMyDumpRec.Records:=DmpRecords;
    FMyDumpRec.Table:=TableName;
    FMyDumpRec.Database:=FDatabase;
    if Assigned(FOnAfterDump)
             then FOnAfterDump(Self,FMyDumpRec);
    if (LogFileOpt) and (not FileErr) then begin
      if FWriteLogHeading then WriteHead;
      Writeln(F,'Database: "'+FDatabase+'" Table: "'+TableName+'" -> Records: '+IntToStr(DmpRecords));
      Flush(F);
      CloseFile(F);
    end;
    Result:=DmpRecords>0;
    if FProgressBar<>nil then FProgressBar.Position:=0;
   end;
  except
     CreateError('Backup-Error');
  end;
end;


function TMySQLBackUp.GetTableStructure(TableName:string):integer;
var  Multi:integer;
begin
 Result:=0;
 try
   if FConnected then begin
    Multi:=0;
    // all tables in the same file?
    if FmultiOpt then Multi:=1;

    SetDropOption(0);
    SetLockOption(0);
    Result:= GetTableStruct(Pchar(FDatabase),Pchar(TableName), PChar(FBackFileName), Multi);
   end;
 except
     CreateError('GetTableStruct-Error');
 end;
end;

function TMySQLBackUp.ReadRecords:integer;
begin
 try
    FBackUpRecords:=GetRecord;
    Result:=FBackUpRecords;
 except
   CreateError('ReadRecords-Error');
   Result:=0;
 end;
end;

function TMySQLBackUp.GetDatabases:integer;
var s:string;
begin
 try
    FDatabases.Clear;
    FTables.Clear;
    s:=FindFirstDb;
    if trim(s)<>'' then begin
      FDatabases.add(s);
      while (s<>'') do begin
        s:=FindNextDb;
        if trim(s)='' then break;
        FDatabases.add(s);
      end;
    end;
    Result:=FDatabases.Count;
 except
   CreateError('GetDatabase-Error');
   Result:=0;
 end;
end;

function TMySQLBackUp.GetTables(Database:string):integer;
var s:string;
begin
  try
    FTables.Clear;
    s:=FindFirstTb(PChar(Database));
    if trim(s)<>'' then begin
      FTables.add(s);
      while (s<>'') do begin
        s:=FindNextTb;
        if trim(s)='' then break;
        FTables.add(s);
      end;
    end;
    Result:=FTables.Count;
  except
   CreateError('GetTable-Error');
   Result:=0;
  end;
end;



procedure Register;
begin
     RegisterComponents('Data Access', [TMySQLBackUp]);
end;

end.
