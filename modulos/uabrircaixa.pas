unit uabrircaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Buttons, DB, DBClient, Grids, DBGrids;

type
  Tfabrircaixa = class(TForm)
    MaskEdit1: TMaskEdit;
    Label2: TLabel;
    MaskEdit3: TMaskEdit;
    BitBtn1: TBitBtn;
    Edit2: TEdit;
    tbcaixagrupo: TClientDataSet;
    encaixa: TEdit;
    tbcaixagrupochave: TIntegerField;
    tbcaixagrupomodo: TStringField;
    tbcaixagruponumerocaixa: TIntegerField;
    tbcaixagrupodatainicial: TDateField;
    tbcaixagrupodatafinal: TDateField;
    tbcaixagrupohoraabertura: TTimeField;
    tbcaixagrupohorafechamento: TTimeField;
    tbcaixagrupousuario: TStringField;
    tbcaixagrupovalorinicial: TFloatField;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    evrinicial: TEdit;
    Label3: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit3Exit(Sender: TObject);
    procedure MaskEdit3Enter(Sender: TObject);
    procedure encaixaEnter(Sender: TObject);
    procedure encaixaExit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure evrinicialKeyPress(Sender: TObject; var Key: Char);
    procedure evrinicialExit(Sender: TObject);
    procedure evrinicialEnter(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  fabrircaixa: Tfabrircaixa;

implementation

uses udm,  funcoes, uecf_aux, uecf_imp;

{$R *.dfm}

procedure Tfabrircaixa.FormKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
  if (key = 13) or (key = vk_down) then
    Perform(wm_nextdlgctl, 0,0);
  if (key = 27) or (key = vk_up) then
    Perform(wm_nextdlgctl, 1,0);
end;

procedure Tfabrircaixa.FormShow(Sender: TObject);
var
tb:string;
begin

          if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\menu2.jpg')) then
             imageform('imagecliente',altop,fabrircaixa, (PChar(ExtractFilePath(ParamStr(0)) +'imagem\menu2.jpg')),nil);

          maskedit1.Text := datetostr(now);
          maskedit3.Text := timetostr(now);
          edit2.Text := usuario;
          //ematricula.text := inttostr(usuariolink);
          //ematricula.Visible := impfiscal;
          //lmatricula.Visible := impfiscal;
          encaixa.SetFocus;


          fdm.tbconfig.Open;
          evrinicial.Text :=  fdm.tbconfig.fieldbyname('valorinicial').AsString;
          fdm.tbconfig.close;

          tb:='tbcxg';
          if not impfiscal then begin
             tb := 'tbcaixagrupo';
             encaixa.ReadOnly := false;
          end;


          selecione('select max(chave)as chave from '+tb);
          encaixa.Text := inttostr(sqlpub.fieldbyname('chave').asinteger + 1);
          sqlpub := nil;


end;

procedure Tfabrircaixa.Edit1KeyPress(Sender: TObject; var Key: char);
begin
  if not (key in ['0'..'9', #8,',']) then abort;
end;

procedure Tfabrircaixa.BitBtn1Click(Sender: TObject);
begin

        if (encaixa.Text = '') or (maskedit1.Text = '  /  /    ') or
           (maskedit3.Text = '  :  :  ') or (edit2.Text = '') then begin
           encaixa.SetFocus;
           msg('#Preencha os valores corretamente!',0);
        end;


    // caixa da imp fiscal - osmar contador
    if impfiscal then begin

        selecione('select max(chave)as chave from tbcxg');
        encaixa.Text := inttostr(sqlpub.fieldbyname('chave').asinteger + 1);
        sqlpub := nil;

       if evrinicial.Text <> '0' then begin
          impecf := false;
          suprimento(strtofloat(evrinicial.Text), 'Dinheiro');

          if not impecf then
             msg('#A impressora fiscal não responde, o caixa não pode ser aberto.',0);
       end;


       selecione('insert into tbcxg (datainicial, horaabertura,numerocaixa, modo,ip) values ('+
                 quotedstr(formatdatetime('yyyy-mm-dd',strtodate(MaskEdit1.Text)))+
                 ', '+quotedstr(MaskEdit3.Text)+
                 ', '+quotedstr(encaixa.Text)+ ',"A"'+
                 ','+quotedstr(formatnumeric(getip))+')');

       close;
    end else begin


    with fdm.query1 do  begin
         Close;
         sql.Clear;
         sql.add('select chave, usuario from tbcaixagrupo where modo = "ABERTO" ' +
                 ' and numerocaixa = ' + quotedstr(encaixa.Text));
      Open;
    end;

    if fdm.query1['chave'] <> null then begin
      encaixa.SetFocus;
      msg('Este caixa está sendo usado por ' + fdm.query1.FieldByName('usuario').AsString + '!',0);
      fdm.query1.Close;
      abort;
    end;

    fdm.query1.Close;
    fdm.tbconfig.Open;

    tbcaixagrupo.CreateDataSet;
    tbcaixagrupo.Open;
    tbcaixagrupo.Insert;
    tbcaixagrupo['datainicial'] := strtodate(maskedit1.Text);
    tbcaixagrupo['horaabertura'] := strtotime(maskedit3.Text);
    tbcaixagrupo['numerocaixa'] := StrToInt(encaixa.Text);

    NCAIXA := encaixa.Text;

    tbcaixagrupo['usuario'] := usuario;

    tbcaixagrupo['modo'] := 'ABERTO';
    grava(tbcaixagrupo, nil,'tbcaixagrupo');
    tbcaixagrupo.Close;
    fdm.tbcaixagrupo.refresh;

    fdm.tbconfig.Close;

    if evrinicial.Text <> '0' then  begin
      fdm.tbentradacaixa.CreateDataSet;
      fdm.tbentradacaixa.Open;
      fdm.tbentradacaixa.Insert;

      fdm.tbentradacaixa['documento'] := 'CAIXA INICIAL';
      fdm.tbentradacaixa['descricao'] := 'CAIXA INICIAL';
      fdm.tbentradacaixa['tipo'] := 'CX_INI';
      fdm.tbentradacaixa['link'] := fdm.tbcaixagrupo['chave'];
      fdm.tbentradacaixa['dinheiro'] := evrinicial.Text;
      fdm.tbentradacaixa['data'] := datetostr(now);
      fdm.tbentradacaixa['hora'] := timetostr(now);
      fdm.tbentradacaixa['usuario'] := usuario;
      grava(fdm.tbentradacaixa, nil,'tbentradacaixa');
      fdm.tbentradacaixa.Close;
    end;

  end;
  close;

end;

procedure Tfabrircaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  release;
end;

procedure Tfabrircaixa.MaskEdit1Enter(Sender: TObject);
begin
  MaskEdit1.Color := clinfobk;
end;

procedure Tfabrircaixa.MaskEdit1Exit(Sender: TObject);
begin
  MaskEdit1.Color := clwhite;
end;

procedure Tfabrircaixa.MaskEdit3Exit(Sender: TObject);
begin
  MaskEdit3.Color := clwhite;
end;

procedure Tfabrircaixa.MaskEdit3Enter(Sender: TObject);
begin
  MaskEdit3.Color := clinfobk;
end;

procedure Tfabrircaixa.encaixaEnter(Sender: TObject);
begin
  encaixa.Color := clinfobk;
end;

procedure Tfabrircaixa.encaixaExit(Sender: TObject);
begin
  encaixa.Color := clwhite;
end;

procedure Tfabrircaixa.Edit2Exit(Sender: TObject);
begin
  Edit2.Color := clwhite;
end;

procedure Tfabrircaixa.Edit2Enter(Sender: TObject);
begin
  Edit2.Color := clinfobk;
end;

procedure Tfabrircaixa.BitBtn2Click(Sender: TObject);
begin
        close;
end;

procedure Tfabrircaixa.evrinicialKeyPress(Sender: TObject; var Key: Char);
begin
        if not (key in ['0'..'9',#8,',']) then abort;
end;

procedure Tfabrircaixa.evrinicialExit(Sender: TObject);
begin
  evrinicial.Color := clwhite;
        if evrinicial.Text = '' then evrinicial.Text := '0';
end;

procedure Tfabrircaixa.evrinicialEnter(Sender: TObject);
begin
  evrinicial.Color := clinfobk;
end;

end.
