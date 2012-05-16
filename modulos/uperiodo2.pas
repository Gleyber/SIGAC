unit uperiodo2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, DB, DBClient, StdCtrls, Buttons, Mask, DBCtrls,
  ActnList, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls,
  Grids, DBGrids, ExtDlgs, dbcgrids,inifiles;

type
  Tfperiodo2 = class(TForm)
    PageControl1: TPageControl;
    ActionList1: TActionList;
    tbbanco: TClientDataSet;
    tbbancochave: TIntegerField;
    tbbancodata: TDateField;
    tbbancohora: TTimeField;
    tbbancohistorico: TStringField;
    tbbancodc: TStringField;
    tbbancovalor: TFloatField;
    tbbancoconta: TStringField;
    tbbancomodulo: TStringField;
    tbbancodocumento: TStringField;
    tbbancolinkvenda: TIntegerField;
    dsbanco: TDataSource;
    tbbancotipo: TStringField;
    tbbancousu: TIntegerField;
    tbbancodtcompensacao: TDateField;
    opendialog: TOpenPictureDialog;
    btnsair: TBitBtn;
    produto: TClientDataSet;
    produtocodigo2: TIntegerField;
    produtovrcompra2: TFloatField;
    produtomargem2: TFloatField;
    produtovrvenda2: TFloatField;
    produtovendasite: TFloatField;
    produtopercentvendasite: TFloatField;
    produtocompra: TFloatField;
    produtoestoque: TFloatField;
    dsproduto: TDataSource;
    produtochave: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
  private
  tot,tot1 : double;
  mem  : Trichedit;

    { Private declarations }
  public
  page,controle,controle2,documento,historico,dc:string;
  valor:double;
    { Public declarations }
  end;

var
  fperiodo2: Tfperiodo2;

implementation

uses udm,funcoes;

{$R *.dfm}

procedure Tfperiodo2.FormClose(Sender: TObject; var Action: TCloseAction);
begin

        fperiodo2 := nil;
        Release;
end;

procedure Tfperiodo2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
          if (key = 13) or (key = vk_down) then
             Perform(wm_nextdlgctl, 0,0);
          if (key = 27) or (key = vk_up) then
             Perform(wm_nextdlgctl, 1,0);



end;

procedure Tfperiodo2.FormShow(Sender: TObject);
var
i,j:integer;
begin
         page := lowercase(page);

         pagecontrol1.ActivePageIndex :=0;
         j := pagecontrol1.PageCount ;

         for i:=0 to j-1 do begin
             if lowercase(pagecontrol1.ActivePage.Name) <> lowercase(page) then
                pagecontrol1.ActivePage.Destroy
             else begin
                  pagecontrol1.ActivePage.Caption :='';
                  pagecontrol1.ActivePageIndex := pagecontrol1.ActivePageIndex+1;
             end;
         end;

        pagecontrol1.ActivePageIndex :=0;
        pagecontrol1.TabHeight := 1;


end;

procedure Tfperiodo2.btnsairClick(Sender: TObject);
begin
        close;
end;

end.



