unit dmTestConnect;

interface

uses
  SysUtils, Classes, ZConnection;

type
  TdtmTestConnect = class(TDataModule)
    cnWeb: TZConnection;
    cnLocal: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmTestConnect: TdtmTestConnect;

implementation

{$R *.dfm}

end.
