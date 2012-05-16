unit uconsumotexto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, Buttons, ActnList, FileCtrl, DB,
  DBClient, RLReport, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfconsumotexto = class(TForm)
    mtext: TRichEdit;
    Splitter1: TSplitter;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    pmenu: TPanel;
    SpeedButton1: TSpeedButton;
    ltitulo: TLabel;
    FileListBox1: TFileListBox;
    btndeletar: TSpeedButton;
    qimpressao: TRLReport;
    RLBand1: TRLBand;
    lmemo: TRLMemo;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    LABELTIRULO: TRLLabel;
    tb: TClientDataSet;
    ds: TDataSource;
    tbcampo: TStringField;
    btnabortar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure btndeletarClick(Sender: TObject);
    procedure qimpressaoBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnabortarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fconsumotexto: Tfconsumotexto;

implementation

uses udm, funcoes;

{$R *.dfm}

procedure Tfconsumotexto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
end;

procedure Tfconsumotexto.SpeedButton1Click(Sender: TObject);
begin
  cabecaimpressao(self,true);
  memo1.Lines.Add('');
  memo1.Lines.Add(mtext.lines.Text);
  rodapeimpressao(false,false);
end;

procedure Tfconsumotexto.Action1Execute(Sender: TObject);
begin
        mtext.ReadOnly := false;
end;

procedure Tfconsumotexto.Action2Execute(Sender: TObject);
var
  sql: tzquery;
begin
          sql :=  tzquery.Create(application);
          sql.Connection := fdm.conector ;


  with sql do begin
    Close;
          sql.clear;
          sql.add( mtext.Text);
    execsql;
    destroy;
 end;

 showmessage('ok');

end;

procedure Tfconsumotexto.FileListBox1Change(Sender: TObject);
begin
       if filelistbox1.FileName <>'' then
          mtext.Lines.LoadFromFile(filelistbox1.FileName);

end;

procedure Tfconsumotexto.btndeletarClick(Sender: TObject);
begin
        if msg('',1) then
           if FileListBox1.FileName <> '' then
                deletefile(FileListBox1.FileName);

end;

procedure Tfconsumotexto.qimpressaoBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
        tb.Close;
        tb.CreateDataSet;
        tb.Open;
        tb.insert;
        tb['campo'] := '1';
end;

procedure Tfconsumotexto.FormShow(Sender: TObject);
begin
  if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\menu3.jpg')) then
     imagepanel('imagepeca',altop,pmenu, (PChar(ExtractFilePath(ParamStr(0)) +'imagem\menu3.jpg')),nil);

     if filelistbox1.Visible then
     filelistbox1.Directory := ExtractFilePath(ParamStr(0)) +'caixas\';

       if filelistbox1.FileName <>'' then
          mtext.Lines.LoadFromFile(filelistbox1.FileName);

end;

procedure Tfconsumotexto.FormCreate(Sender: TObject);
begin
        tmpapel(fconsumotexto.qimpressao);
end;

procedure Tfconsumotexto.btnabortarClick(Sender: TObject);
begin
        vf := true;
        close;
end;

end.
