unit uecf_aux_;

interface
  uses
    Dialogs,Inifiles, SysUtils, Variants, Classes, uecf_, udm,ZDataset;

  function IntToMarcaECF(Value:Integer):TMarcaEcf;
  function Concumitante: boolean;
  function ImpOperador: boolean;
  function ImpFiscal: boolean;
  function ImpECFPedido: boolean;
  function Gaveta: boolean;
  function NumSerieImpFiscal: string;
  function NumCaixaImpFiscal: string;
  function check_aliquotas(const Aliqs: Tstrings): boolean;
  function ImpFiscalActive: boolean;
  function IntToFormaPagto(value:Integer):string;
  function VerConfMarcaECF:TMarcaEcf;
  function VerConfFormaPgtoECF(Desc: string):integer;
  function VerConfTrunc:Boolean;
  function ind_aliquota(const Aliq: string): string;
  function CheckRecSintegraHoje:boolean;
  function CheckRecTotParcial(aliq:extended):boolean;
  function CheckMFD:boolean;

implementation

uses
  Funcoes;


function IntToMarcaECF(Value:Integer):TMarcaEcf;
begin
  case Value of
    0:Result:= Bematech;
    1:Result:= Yanco;
    2:Result:= Daruma;
  else
    Result:=Bematech;
  end;
end;

function Concumitante: boolean;
var
  Ini: Tinifile;
begin
  Ini := TIniFile.Create(conf_local);
  if (Ini.ReadBool('ImpFiscal', 'Concumitante', False)) and
    (Ini.ReadBool('ImpFiscal', 'Ativar', False)) then
    Result := True
  else
    Result := False;
  Ini.Free;
end;

function Impfiscal: boolean;
var
  Ini: Tinifile;
begin
  Ini := TIniFile.Create(conf_local);
  if Ini.ReadBool('ImpFiscal', 'Ativar', False) then
    Result := True
  else
    Result := False;
  Ini.Free;
end;

function ImpECFPedido: boolean;
var
  Ini: Tinifile;
begin
  Ini := TIniFile.Create(conf_local);
  if Ini.ReadBool('ImpFiscal', 'ECFPedido', False) then
    Result := True
  else
    Result := False;
  Ini.Free;
end;


function Gaveta: boolean;
var
  Ini: Tinifile;
begin
  Ini := TIniFile.Create(conf_local);
  if Ini.ReadBool('ImpFiscal', 'Acgaveta', False) then
    Result := True
  else
    Result := False;
  Ini.Free;
end;


function NumCaixaImpFiscal: string;
var
  Ini: TInifile;
begin
  Ini := TIniFile.Create(conf_local);
  Result := Ini.ReadString('ImpFiscal', 'NumECF', '');
  Ini.Free;
end;

function NumSerieImpFiscal: string;
var
  Ini: TInifile;
begin
  Ini := TIniFile.Create(conf_local);
  Result := Ini.ReadString('ImpFiscal', 'NumSerieECF', '');
  Ini.Free;
end;

function check_aliquotas(const Aliqs: Tstrings): boolean;
var
  Qr: tzquery;
  count: integer;
begin
  Result := false;
  Qr := tzquery.Create(nil);
  with Qr do
    Connection := fdm.conector;

  if ImpFiscal then
  begin
    try
      for count:=0 to Aliqs.Count-1 do
      begin
        with Qr do
        begin
          Close;
          Sql.Clear;
          Sql.Add('Select IndECF from tbindecf where imposto=' + QuotedStr(Aliqs[count]) +
            ' and NumImpECF=' + QuotedStr(NumCaixaImpFiscal));
          Open;
        end;
        showmessage(' ') ;
        if Length(Qr.FieldByName('IndEcf').AsString) = 0 then
        begin
          result:=False;
          raise
          Exception.Create(PChar('Para emitir cupom fiscal deste produto,' + #13 +
            'é necessário cadastrá-lo em cadastro de impostos,' + #13 +
            'ou configurar corretamente a impressora fiscal.'));
        end
        else
          result:=True;
      end;

    finally
      Qr.Free;
    end;
  end;
end;

function ImpfiscalActive: boolean;
var
  Ini: Tinifile;
begin
  Ini := TIniFile.Create(conf_local);
  if Ini.ReadBool('ImpFiscal', 'Active', False) then
    Result := True
  else
    Result := False;
  Ini.Free;
end;

function IntToFormaPagto(value:Integer):string;
var
  Ini: TInifile;
  Stream: TMemoryStream;
  ListFormas: TStrings;
begin
  Stream:=TMemoryStream.Create;
  Ini := TIniFile.Create(conf_local);
  ListFormas:= TStringList.Create;
  try
    Ini.ReadBinaryStream('ImpFiscal', 'FormasPgto', Stream);
    ListFormas.LoadFromStream(Stream);
    if (value -1 <= ListFormas.Count -1) and (ListFormas.Count > 0) then
    begin
      if (value > 0) then
        Result := ListFormas[value -1]
      else
        Result := ListFormas[0];
    end
    else
      Result:='';
  finally
    Stream.Free;
    Ini.Free;
  end;
end; 

function VerConfMarcaECF:TMarcaEcf;
var
  Ini:TInifile;
begin
  Ini := TIniFile.Create(conf_local);
  try
    Result:= IntToMarcaECF(Ini.ReadInteger('ImpFiscal','Marca', 0));
  finally
    Ini.Free;
  end;
end;

function VerConfFormaPgtoECF(Desc: string):integer;
var
  Ini: TInifile;
begin
  Ini := TIniFile.Create(conf_local);
  try
    Result:= Ini.ReadInteger('ImpFiscal', Desc , 0);
  finally
    Ini.Free;
  end; 

end;

function VerConfTrunc:Boolean;
var
  Ini: TInifile;
begin
  Ini := TIniFile.Create(conf_local);
  try
    Result:= Ini.ReadBool('ImpFiscal', 'Trunc' , false);
  finally
    Ini.Free;
  end;
end;

function ImpOperador:Boolean;
var
  Ini: TInifile;
begin
  Ini := TIniFile.Create(conf_local);
  try
    Result:= Ini.ReadBool('ImpFiscal', 'ImpOp' , True);
  finally
    Ini.Free;
  end;
end;

function ind_aliquota(const Aliq: string): string;
var
  Qr: tzquery;
begin
//  showmessage(Aliq);
  Result := '';
  Qr := tzquery.Create(nil);
  if ImpFiscal then
  begin
    try
      with Qr do
      begin
        Connection := fdm.conector;
        Close;
        Sql.Clear;
        Sql.Add('Select IndECF from tbindecf where imposto=' + QuotedStr(Aliq) +
                ' and NumImpECF=' + QuotedStr(NumCaixaImpFiscal));
        //sql.SaveToFile('c:\ecf.sql');
        Open;
      end;

 ///   showmessage(Aliq);
 //     showmessage(NumCaixaImpFiscal);
  //    showmessage(Qr.FieldByName('IndEcf').AsString);

      if Length(Qr.FieldByName('IndEcf').AsString) = 0 then
        raise
        Exception.Create(PChar('Para emitir cupom fiscal deste produto,' + #13 +
          'é necessário cadastrá-lo em cadastro de impostos,' + #13 +
          'ou configurar corretamente a impressora fiscal.'));
    finally
      Result := Qr.FieldByName('IndEcf').AsString;
      Qr.Free;
    end;
  end;
end;

function CheckRecSintegraHoje:boolean;
var
  Qr: tzquery;
begin
  Qr:= tzquery.Create(nil);
  Result:=False;
  try
    with Qr do
    begin
      Connection:= Fdm.conector;
      Close;
      Sql.Clear;
      Sql.Add('SELECT data FROM tbsintegra WHERE data='+
        QuotedStr(FormatDateTime('yyyy-mm-dd', now())) +
        ' and num_serie_ecf='+QuotedStr(NumSerieImpFiscal));
      Open;
    end;

    if Qr['data'] <> NULL then
      Result:=True
    else
      Result:=False;

  finally
    Qr.Free;
  end;
end;

function CheckRecTotParcial(aliq:extended):boolean;
var
  Qr: tzquery;
begin
  Qr:= tzquery.Create(nil);
  Result:=False;
  try
    with Qr do
    begin
      Connection:= Fdm.conector;
      Close;
      Sql.Clear;
      Sql.Add('SELECT data FROM tbsintegra_aliq WHERE data='+
        QuotedStr(FormatDateTime('yyyy-mm-dd', now())) +
        ' and num_serie_ecf='+QuotedStr(NumSerieImpFiscal)+
        ' and aliquota='+realdblstr(aliq));
      Open;
    end;

    if Qr['data'] <> NULL then
      Result:=True
    else
      Result:=False;

  finally
    Qr.Free;
  end;
end;

function CheckMFD:boolean;
var
  Ini: Tinifile;
begin
  Ini:= TIniFile.Create('sigacnet.ini');
  Result:= Ini.ReadBool('ImpFiscal', 'MFD', false);
  Ini.Free;
end;
end.
