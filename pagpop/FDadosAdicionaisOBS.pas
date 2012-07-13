unit FDadosAdicionaisOBS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, ExtCtrls;

type
  TFrmDadosAdicionaisOBS = class(TForm)
    pnlSuperior: TPanel;
    pnlInferior: TPanel;
    btnOk: TBitBtn;
    dbmObs: TDBMemo;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDadosAdicionaisOBS: TFrmDadosAdicionaisOBS;

implementation

{$R *.dfm}

procedure TFrmDadosAdicionaisOBS.btnOkClick(Sender: TObject);
begin
  Close;
end;

end.
