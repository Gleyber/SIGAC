unit uabout;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  Tfabout = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    Label2: TLabel;
    Image1: TImage;
    Label3: TLabel;
    StaticText3: TStaticText;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fabout: Tfabout;

implementation

uses shellapi, udm, umanu;
{$R *.dfm}

procedure Tfabout.FormCreate(Sender: TObject);
var
  Region1, Region2: hRgn;
begin
  // Cria círculo externo
  Region1 := CreateEllipticRgn(0,0,300,300);
  // Cria círculo interno
  Region2 := CreateEllipticRgn(100,100,200,200);
  // Combina duas regiões para fazer a rosca
  CombineRgn(Region1, Region1, Region2, RGN_DIFF);
  // Da formato a janela  
  SetWindowRgn(Handle, Region1, True);
end;

procedure Tfabout.Label2Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', PChar('mailto: contato@bitpamp.com.br ?subject=' +
    'Digite aqui o assunto'), nil, '', Sw_ShowNormal)
end;

procedure Tfabout.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfabout.FormShow(Sender: TObject);
begin
          if fileexists(PChar(ExtractFilePath(ParamStr(0)) + 'imagem\cadastrop.jpg')) then
                            image1.Picture.LoadFromFile(PChar(ExtractFilePath(ParamStr(0)) +
                              'imagem\cadastrop.jpg'));
end;

procedure Tfabout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
end;

end.
