program Editor;

uses
  Forms,
  REMain in 'REMain.pas' {MainForm};

{$R *.RES}

begin
  Application.Title := 'Rich Edit Control Demo';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
