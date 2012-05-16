unit uimpterm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Db, Inifiles;

type

  TA_Set_Darkness = function(darkness: integer): integer;stdcall;
  TA_CreatePrn = function(selection: integer; FileName: PChar): integer;stdcall;
  TA_Print_Out = function(Width, Height, copies, amount: integer): integer;stdcall;
  TA_Prn_Text = function(x, y, ori, font, typee, hor_factor, ver_factor: integer;
    mode: char; numeric: integer; Data: PChar): integer;stdcall;
  TA_Prn_Barcode = function(x, y, ori: integer; typee: char;
    narrow, Width, Height: integer; mode: char; numeric: integer;
    Data: PChar): integer;stdcall;
  TA_Prn_Text_TrueType = function(x, y, FSize: integer; FType: PChar;
    Fspin, FWeight, FItalic, FUnline, FStrikeOut: integer; id_name, Data: PChar;
    mem_mode: integer): integer;stdcall;
  TA_Get_Graphic = function(x, y, mem_mode: integer; format: char;
    filename: PChar): integer;stdcall;
  TA_Draw_Box = function(mode, x, y, Width, Height, top, side: integer): integer;stdcall;
  TA_Draw_Line = function(mode, x, y, Width, Height: integer): integer;stdcall;
  TA_Set_Unit = function(unittype: PChar): integer;
  TA_ClosePrn = procedure();stdcall;
  TA_Clear_Memory = procedure();stdcall;

  Tfimpterm = class(TForm)
    Label1: TLabel;
    eqtd: TEdit;
    Label2: TLabel;
    BtCancel: TBitBtn;
    btOk: TBitBtn;
    Label3: TLabel;
    etamx: TEdit;
    Label4: TLabel;
    etamy: TEdit;
    EMsg1: TEdit;
    Label5: TLabel;
    EMsg2: TEdit;
    rpreco: TCheckBox;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOkClick(Sender: TObject);
    procedure EMsg1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EMsg2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure etamxKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    FTable: TDataset;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent; const Table: TDataset); reintroduce;
    { Public declarations }
  end;

const
  IMPTERMLIB = 'WINPPLA.DLL';
  SLIBNOTFOUND = 'Biblioteca dinânica %s não encontrada.';

var
  fimpterm: Tfimpterm;

  hDLL: THandle = 0;
  A_Set_Darkness: TA_Set_Darkness;
  A_CreatePrn: TA_CreatePrn;
  A_Print_Out: TA_Print_Out;
  A_Prn_Text: TA_Prn_Text;
  A_Prn_Barcode: TA_Prn_Barcode;
  A_Prn_Text_TrueType: TA_Prn_Text_TrueType;
  A_Get_Graphic: TA_Get_Graphic;
  A_Draw_Box: TA_Draw_Box;
  A_Draw_Line: TA_Draw_Line;
  A_ClosePrn: TA_ClosePrn;
  A_Set_Unit: TA_Set_Unit;
  A_Clear_Memory: TA_Clear_Memory;

  function Load_PPLA: integer;
  procedure UnLoad_PPLA;

implementation

uses
  Funcoes;

{$R *.dfm}


function Load_PPLA: integer;
begin
  Result := 0;
  if hDLL = 0 then
    hDLL := LoadLibrary(PChar(IMPTERMLIB));
  if hDLL <> 0 then
  begin @A_Set_Darkness := GetProcAddress(hDLL, 'A_Set_Darkness');
      @A_CreatePrn := GetProcAddress(hDLL, 'A_CreatePrn');
      @A_Print_Out := GetProcAddress(hDLL, 'A_Print_Out');
      @A_Prn_Text := GetProcAddress(hDLL, 'A_Prn_Text');
      @A_Prn_Barcode := GetProcAddress(hDLL, 'A_Prn_Barcode');
      @A_Prn_Text_TrueType := GetProcAddress(hDLL, 'A_Prn_Text_TrueType');
      @A_Get_Graphic := GetProcAddress(hDLL, 'A_Get_Graphic');
      @A_Draw_Box := GetProcAddress(hDLL, 'A_Draw_Box');
      @A_Draw_Line := GetProcAddress(hDLL, 'A_Draw_Line');
      @A_ClosePrn := GetProcAddress(hDLL, 'A_ClosePrn');
      @A_Set_Unit := GetProcAddress(hDLL, 'A_Set_Unit');
      @A_Clear_Memory :=GetProcAddress(hDLL, 'A_Clear_Memory');

    Result := 1;
  end
  else
  begin
    Result := 0;
    raise
    Exception.Create(Format(SLIBNOTFOUND, [IMPTERMLIB]));
  end;
end;

procedure UnLoad_PPLA;
begin
  if hDLL > 0 then
  begin
    if freeLibrary(hDLL) then
      hdll := 0;
  end;
end;

constructor Tfimpterm.Create(AOwner: TComponent; const Table: TDataset); 
begin
  inherited Create(AOwner);

  if Table <> nil then
     FTable := Table;
end;

procedure Tfimpterm.FormCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'etiqueta.ini');
  with Ini do
  begin
    Eqtd.Text:=Readstring('PPLA', 'qtd', '3');
    ETamX.Text:=Readstring('PPLA', 'tamx', '35');
    ETamY.Text:=Readstring('PPLA', 'tamy', '60');
    EMsg1.Text:= ReadString('PPLA', 'msg1', '');
    EMsg2.Text:= ReadString('PPLA', 'msg2', '');
    Free;
  end;
  Load_PPLA;
end;

procedure Tfimpterm.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Ini: TIniFile;
begin
  Unload_PPLA;
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'etiqueta.ini');
  with Ini do
  begin
    Writestring('PPLA', 'qtd', Eqtd.Text);
    Writestring('PPLA', 'tamx', ETamX.Text);
    Writestring('PPLA', 'tamy', ETamY.Text);
    Writestring('PPLA', 'msg1', EMsg1.Text);
    Writestring('PPLA', 'msg2', EMsg2.Text);
    Free;
  end;

end;

procedure Tfimpterm.btOkClick(Sender: TObject);
var
  PrecoVenda, PrecoAtacado, CodigoBarras, Tam: string;
  QtdEtiq, count, left, tamX, tamY, qtd:Integer;
  Ini: TIniFile;
begin
  tamX:=Trunc(StrToInt(etamx.Text) * 100 / 25);
  qtd:=1;
  A_CreatePrn(1, 'ppla.txt');     // Inicia Operacao da Impressora
  A_Set_Darkness(12);             // Seta funcao de Intensidade da impressao

  try
    with FTable do begin
         First;

      while not EOF do
      begin
        for count:=0 to StrToInt(Eqtd.Text)-1 do
        begin
          if FTable.FieldByName('descricao').AsString <> '' then
          begin
            PrecoVenda := '';
            PrecoAtacado := '';
            left:=Trunc(count * tamX);

            CodigoBarras := FTable.FieldByName('codigo').AsString;
            if rpreco.Checked then
               PrecoVenda := precoformatdata(FTable.FieldByName('vrvenda').AsFloat)
            else
               PrecoVenda := format('%n',[FTable.FieldByName('vrvenda').AsFloat]);            

            Tam:= '';//FTable.FieldByName('tamanho').AsString;
            QtdEtiq := StrToInt(eqtd.Text);
            if Length(PrecoVenda) > 0 then  begin
              A_Prn_Text(left+2, 2, 1, 9, 3, 2, 1, 'n', 2, PChar(Copy(PrecoVenda, 1,8)));
              A_Prn_Text(left+2, 20, 1, 9, 2, 1, 1, 'n', 2, Pchar(emsg2.Text));
              A_Prn_Text(left+2, 30, 1, 9, 2, 1, 1, 'n', 2, Pchar(emsg1.Text));
              A_Prn_Barcode(left+6, 50, 1, 'I', 0,  6, 50, 'b', 0, PChar(CodigoBarras));
              A_Prn_Text(left+105, 70, 1, 9, 6, 1, 1, 'n', 2, Pchar(Tam));
              A_Prn_Text(left+2, 120, 1, 9, 4, 1, 1, 'n', 2, Pchar(CodigoBarras));
              A_Prn_Text(left+2, 145, 1, 9, 2, 1, 1, 'n', 2, pchar(Copy(FTable.FieldByName('descricao').AsString, 37, 18)));
              A_Prn_Text(left+2, 155, 1, 9, 2, 1, 1, 'n', 2, pchar(Copy(FTable.FieldByName('descricao').AsString, 19, 18)));
              A_Prn_Text(left+2, 165, 1, 9, 2, 1, 1, 'n', 2, pchar(Copy(FTable.FieldByName('descricao').AsString, 1, 18)));
              A_Draw_Box(65,left+4,185,tamX-8, 40, 2, 3);
            end;
          end;

          //controla a qtd de etiqueta por prod.
          if qtd = FTable.FieldByName('qtd').AsInteger  then
          begin
            FTable.Next;
            qtd:=1;
            if FTable.Eof then
              Break;
          end
          else
            inc(qtd);

        end;

        //Imprime e limpa a memória.
        A_Print_Out(1, 1, 1, 1);
        A_Clear_Memory;

      end;{while}
    end; {with}
  finally
    A_ClosePrn;
  end;
end;

procedure Tfimpterm.EMsg1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Length(EMsg1.Text)>=20 then
    Abort;
end;

procedure Tfimpterm.EMsg2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Length(EMsg2.Text)>=20 then
    Abort;
end;

procedure Tfimpterm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) or (key = vk_down) then
    Perform(wm_nextdlgctl, 0,0);
  if (key = vk_up) then
    Perform(wm_nextdlgctl, 1,0);
  if key = 27 then
    Close; 
end;

procedure Tfimpterm.etamxKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9']) then
    Abort;
end;

procedure Tfimpterm.Button1Click(Sender: TObject);
begin
     A_CreatePrn(1, 'ppla.txt');
     A_Set_Darkness(12);
     A_Get_Graphic(20, 10, 1, 'B', pchar('bb.bmp'));
     A_Prn_Barcode(20, 70, 1, 'A', 0, 0, 20, 'b', 1, pchar('ABCD'));
     A_Prn_Text(20, 55, 1, 9, 0, 1, 1, 'n', 2, pchar('ComScience PPLA Charlie Mei'));
     A_Prn_Text_TrueType(20, 120, 40, pchar('Times New Roman'), 1, 400, 0, 0, 0, pchar('AA'), pchar('Library Test'), 1);
     A_Prn_Text_TrueType(20, 100, 40, pchar('Arial'), 1, 400, 0, 0, 0, pchar('AB'), pchar('Dlephi Linking Succeed'), 1);
     A_Draw_Box(65,50,30,100,50,2,3);
     A_Draw_Line(65,40,50,120,3);
     A_Print_Out(1, 1, 1, 1);
     A_ClosePrn;
end;

end.
