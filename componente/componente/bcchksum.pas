unit bcchksum;
{
Checksum Functions by Andreas Schmidt

21.07.1999


mailto://shmia@bizerba.de

or

mailto://a_j_schmidt@rocketmail.com
}


interface

uses SysUtils;

  { used for EAN 8/13 }
function CheckSumModulo10(const Data: string): string;



implementation


{


}

function CheckSumModulo10(const Data: string): string;
var 
  i, fak, sum: integer;
begin
  sum := 0;
  fak := Length(Data);
  for i := 1 to Length(Data) do
  begin
    if (fak mod 2) = 0 then
      sum := sum + (StrToInt(Data[i]) * 1)
    else
      sum := sum + (StrToInt(Data[i]) * 3);
    dec(fak);
  end;
  if (sum mod 10) = 0 then
    Result := Data + '0'
  else
    Result := Data + IntToStr(10 - (sum mod 10));
end;




end.
