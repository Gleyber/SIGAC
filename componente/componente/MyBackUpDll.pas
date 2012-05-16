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
** MyBackUpDll DLL-Interface version 1.0
**
** Author Ch. Friedrich 20.5.2001
**
** Dependencies: MyBackUp.dll
**
*******************************************************************)
unit MyBackUpDll;

interface

uses Windows, Classes,comctrls;

const
  SLibNotFound = 'Dynamic library %s not found';

const
 DEFAULT_DLL_LOCATION = 'MyBackUp.dll';

type
  TConnectServer = function(host: PChar; Database:PChar; user: PChar; passwd: PChar): integer; stdcall;
  TDisConnect =  procedure stdcall;
  TSendPing  = function: integer; stdcall;
  TExecQuery = function(SqlStr: PChar): integer; stdcall;
  TDoBackUp  = function(DataBase: PChar; Table: PChar; SqlFileName: PChar;MultiFiles: integer): integer; stdcall;
  TGetTableStruct  = function(DataBase: PChar; Table: PChar; SqlFileName: PChar;MultiFiles: integer): integer; stdcall;
  TSelectMyDB  = function(DataBase: PChar): integer; stdcall;
  TInitUpdDLL = function: integer; stdcall;
  TGetRecord = function: integer; stdcall;
  TGetDumpVersion =  function: PChar; stdcall;

  TFindFirstDb = function: PChar; stdcall;
  TFindNextDb = function: PChar; stdcall;
  TFindFirstTb = function(DataBase: PChar): PChar; stdcall;
  TFindNextTb = function: PChar; stdcall;


  TLastMyErrorNo = function: integer; stdcall;
  TLastMyError = function: PChar; stdcall;

  TSetDropOption = procedure(Value: integer);stdcall;
  TSetLockOption = procedure(Value: integer);stdcall;
  TSetCFlagOption = procedure(Value: integer);stdcall;
  TSetTFlagOption = procedure(Value: integer);stdcall;
  TSetExInsOption = procedure(Value: integer);stdcall;
  TSetProgressBar = procedure(Value: TProgressBar);stdcall;
  TSetProgressStep = procedure(Value: integer);stdcall;
  TSetWhereOption = procedure(StrValue: PChar; Value: integer);stdcall;


var

  InitUpdDLL: TInitUpdDLL;
  GetDumpVersion: TGetDumpVersion;
  ConnectServer: TConnectServer;
  DisConnect:TDisConnect;
  SendPing:TSendPing;
  SelectMyDB:TSelectMyDB;
  ExecQuery: TExecQuery;
  DoBackUp:TDoBackUp;
  GetTableStruct:TGetTableStruct;
  GetRecord:TGetRecord;

  FindFirstDb:TFindFirstDb;
  FindNextDb:TFindNextDb;
  FindFirstTb:TFindFirstTb;
  FindNextTb:TFindNextTb;

  LastMyErrorNo:TLastMyErrorNo;
  LastMyError: TLastMyError;

  SetDropOption:TSetDropOption;
  SetLockOption:TSetLockOption;
  SetCFlagOption:TSetCFlagOption;
  SetTFlagOption:TSetTFlagOption;
  SetExInsOption:TSetExInsOption;
  SetProgressBar:TSetProgressBar;
  SetProgressStep:TSetProgressStep;
  SetWhereOption:TSetWhereOption;

function MySqlLoadLib: integer;

const
  DLL: string = DEFAULT_DLL_LOCATION;
var
  hDLL: THandle = 0;

implementation

uses SysUtils;

{ Initialize dynamic library }
function MySqlLoadLib: integer;
begin
  Result :=0;
  if hDLL = 0 then
    hDLL := LoadLibrary(PChar(DLL));

  if hDLL <> 0 then begin
    @InitUpdDLL    :=GetProcAddress(hDLL,'InitUpdDLL');
    @GetDumpVersion :=GetProcAddress(hDLL,'GetDumpVersion');
    @ConnectServer := GetProcAddress(hDLL,'ConnectServer');
    @DisConnect := GetProcAddress(hDLL,'DisConnect');
    @SendPing := GetProcAddress(hDLL,'SendPing');
    @SelectMyDB := GetProcAddress(hDLL,'SelectMyDB');
    @ExecQuery := GetProcAddress(hDLL,'ExecQuery');
    @DoBackUp := GetProcAddress(hDLL,'DoBackUp');
    @GetTableStruct := GetProcAddress(hDLL,'GetTableStruct');
    @GetRecord := GetProcAddress(hDLL,'GetRecord');
    @FindFirstDb := GetProcAddress(hDLL,'FindFirstDb');
    @FindNextDb := GetProcAddress(hDLL,'FindNextDb');


    @FindFirstTb := GetProcAddress(hDLL,'FindFirstTb');
    @FindNextTb := GetProcAddress(hDLL,'FindNextTb');
    @SetDropOption := GetProcAddress(hDLL,'SetDropOption');
    @SetLockOption := GetProcAddress(hDLL,'SetLockOption');
    @LastMyErrorNo := GetProcAddress(hDLL,'LastMyErrorNo');
    @LastMyError:= GetProcAddress(hDLL,'LastMyError');
    @SetCFlagOption := GetProcAddress(hDLL,'Set_C_FlagOption');
    @SetTFlagOption := GetProcAddress(hDLL,'Set_T_FlagOption');
    @SetExInsOption  := GetProcAddress(hDLL,'SetExInsOption');
    @SetProgressBar  := GetProcAddress(hDLL,'SetProgressBar');
    @SetProgressStep := GetProcAddress(hDLL,'SetProgressStep');
    @SetWhereOption := GetProcAddress(hDLL,'SetWhereOption');
    Result := 1;
  end else
    raise Exception.Create(Format(SLibNotFound,[DLL]));
end;

initialization

finalization
  if hDLL <> 0 then
  FreeLibrary(hDLL);
end.
