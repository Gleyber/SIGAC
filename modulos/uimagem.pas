unit uimagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls;

type
  Tfimagem = class(TForm)
    vimage: TDBImage;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fimagem: Tfimagem;

implementation

{$R *.dfm}

procedure Tfimagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
          Release;
          fimagem := nil;
end;

procedure Tfimagem.FormKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if key = 27 then Close;

  if key = 107 then begin
     fimagem.Height :=  fimagem.Height + 5;
     fimagem.Width :=  fimagem.Width + 5;
     fimagem.Position := poScreenCenter;
  end;

  if key = 109 then begin
     fimagem.Height :=  fimagem.Height - 5;
     fimagem.Width :=  fimagem.Width - 5;
     fimagem.Position := poScreenCenter;
  end;

end;

procedure Tfimagem.CheckBox1Click(Sender: TObject);
begin
        vimage.Stretch := CheckBox1.Checked;
end;

end.
