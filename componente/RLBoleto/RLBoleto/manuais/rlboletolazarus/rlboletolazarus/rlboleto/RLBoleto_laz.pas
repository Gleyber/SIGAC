{ Este arquivo foi automaticamente criado pelo Lazarus. Não edite!
  Este fonte é usado apenas para compilar e instalar o pacote.
 }

unit RLBoleto_laz; 

interface

uses
    RLBoleto, RLCob033, RLCob104, RLCob237, RLCob275, RLCob341, RLCob356, 
  RLCob399, RLCob409, RLCob479, RLCob748, BoletoLayout, RLCob000, RLCob001, 
  LazarusPackageIntf;

implementation

procedure Register; 
begin
  RegisterUnit('RLBoleto', @RLBoleto.Register); 
end; 

initialization
  RegisterPackage('RLBoleto_laz', @Register); 
end.
