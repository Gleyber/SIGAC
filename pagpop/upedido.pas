unit upedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList;

type
  Tfpedido = class(TForm)
    evendedor: TEdit;
    CFPgto: TEdit;
    btneditargrupo: TButton;
    venda: TZQuery;
    btnnovo: TButton;
    btnnovoD: TButton;
    tbdevolucao: TZQuery;
    ActionList1: TActionList;
    preencherproduto: TAction;
    tbitem: TZQuery;
    totalitem: TAction;
    btngravarD: TButton;
    procedure btneditargrupoClick(Sender: TObject);
    procedure btnnovoClick(Sender: TObject);
    procedure preencherprodutoExecute(Sender: TObject);
    procedure totalitemExecute(Sender: TObject);
    procedure btnnovoDClick(Sender: TObject);
    procedure btngravarDClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpedido: Tfpedido;

implementation

{$R *.dfm}

procedure Tfpedido.btneditargrupoClick(Sender: TObject);
begin
showmessage('');
end;

procedure Tfpedido.btnnovoClick(Sender: TObject);
begin
showmessage('');
end;

procedure Tfpedido.preencherprodutoExecute(Sender: TObject);
begin
close;
end;

procedure Tfpedido.totalitemExecute(Sender: TObject);
begin
close
end;

procedure Tfpedido.btnnovoDClick(Sender: TObject);
begin
showmessage('');
end;

procedure Tfpedido.btngravarDClick(Sender: TObject);
begin
showmessage('');
end;

end.
