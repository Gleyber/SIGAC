program Project1;

uses
  Forms,
  uacesso in '..\..\modulos\acesso\uacesso.pas' {Facesso};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFacesso, Facesso);
  Application.Run;
end.
