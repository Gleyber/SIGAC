program ExemploRLBoleto;

{$MODE Delphi}

uses
  Forms, LResources, Interfaces,
  Unit1 in 'Unit1.pas', RLBoleto_laz, fortes324forlaz {Form1};

{$R *.res}

{$IFDEF WINDOWS}{$R ExemploRLBoleto.rc}{$ENDIF}

begin
  {$I ExemploRLBoleto.lrs}
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
