unit uclienteadicional;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,
    ComCtrls,  Spin, DBClient, Provider, 
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DB;

type
  Tfclienteadicional = class(TForm)
    Bevel3: TBevel;
    Label1: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    eie: TDBEdit;
    enascimento: TDBEdit;
    ecnpj: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit9: TDBEdit;
    eagencia: TDBEdit;
    econta: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit12: TDBEdit;
    Label4: TLabel;
    DBEdit13: TDBEdit;
    Label5: TLabel;
    DBEdit22: TDBEdit;
    Label6: TLabel;
    Bevel1: TBevel;
    Label8: TLabel;
    DBEdit23: TDBEdit;
    Label9: TLabel;
    DBEdit24: TDBEdit;
    Bevel2: TBevel;
    BitBtn1: TBitBtn;
    Label69: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit6: TDBEdit;
    DBEdit25: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    Label12: TLabel;
    DBEdit33: TDBEdit;
    Label16: TLabel;
    DBEdit34: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    Label19: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBEdit38: TDBEdit;
    Label22: TLabel;
    DBEdit39: TDBEdit;
    Label28: TLabel;
    Bevel6: TBevel;
    DBEdit40: TDBEdit;
    Label29: TLabel;
    pproprietario: TPanel;
    Label15: TLabel;
    Label72: TLabel;
    Label71: TLabel;
    Label70: TLabel;
    Label20: TLabel;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit37: TDBEdit;
    Label30: TLabel;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    Label31: TLabel;
    DBEdit43: TDBEdit;
    Label32: TLabel;
    DBEdit44: TDBEdit;
    Label33: TLabel;
    Label35: TLabel;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    Label36: TLabel;
    DBEdit47: TDBEdit;
    Label37: TLabel;
    DBEdit48: TDBEdit;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    tabela: TZQuery;
    ds: TDataSource;
    Label21: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit23Enter(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
  modo:string;  
    { Public declarations }
  end;

var
  fclienteadicional: Tfclienteadicional;


implementation
uses
funcoes ;
{$R *.dfm}

procedure Tfclienteadicional.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

        FOCUSCONTROL(NIL);
        if tabela['chave'] = null then grava(nil,tabela,'tbclienteadicional')
                                  else altera(nil,tabela,'tbclienteadicional');        
        release;

end;

procedure Tfclienteadicional.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) or (key = vk_down) then
    Perform(wm_nextdlgctl, 0,0);
  if (key = 27) or (key = vk_up) then
    Perform(wm_nextdlgctl, 1,0);
end;

procedure Tfclienteadicional.DBEdit23Enter(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clinfobk;

end;

procedure Tfclienteadicional.DBEdit23Exit(Sender: TObject);
begin
  with  Sender as tdbedit do
    color := clwhite;

end;

procedure Tfclienteadicional.FormShow(Sender: TObject);
begin
        with tabela do begin
             sql.clear;
             sql.add('select * from tbclienteadicional where codigo = '+quotedstr(codloc));
             open;

             tabela.edit;
             tabela['codigo'] := codloc;
             
        end;

       
        formatacptabela(nil,tabela,2);
end;

procedure Tfclienteadicional.BitBtn1Click(Sender: TObject);
begin

        close;
end;

end.



