unit uacesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, jpeg, StdCtrls;

type
  TFacesso = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    euso: TEdit;
    esenha: TEdit;
    Image2: TImage;
    Image1: TImage;
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Facesso: TFacesso;

implementation

{$R *.dfm}

procedure TFacesso.SpeedButton2Click(Sender: TObject);
begin
        close;
end;

procedure TFacesso.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if (key = 13) then
           Perform(wm_nextdlgctl, 0,0);
        if (key = 27) then
           Perform(wm_nextdlgctl, 1,0);
end;

end.
