unit ueditor;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, ComCtrls, ClipBrd,
  ToolWin, ImgList, FileCtrl, Grids, DBGrids, DB, Provider, DBClient,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls,Variants,
  RLReport, RLRichText;

type
  Tfeditor = class(TForm)
    MainMenu: TMainMenu;
    FileNewItem: TMenuItem;
    FileOpenItem: TMenuItem;
    FileSaveItem: TMenuItem;
    FileSaveAsItem: TMenuItem;
    FilePrintItem: TMenuItem;
    FileExitItem: TMenuItem;
    EditUndoItem: TMenuItem;
    EditCutItem: TMenuItem;
    EditCopyItem: TMenuItem;
    EditPasteItem: TMenuItem;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    PrintDialog: TPrintDialog;
    Ruler: TPanel;
    FontDialog1: TFontDialog;
    FirstInd: TLabel;
    LeftInd: TLabel;
    RulerLine: TBevel;
    RightInd: TLabel;
    N5: TMenuItem;
    miEditFont: TMenuItem;
    StatusBar: TStatusBar;
    ToolBar: TToolBar;
    OpenButton: TToolButton;
    SaveButton: TToolButton;
    PrintButton: TToolButton;
    ToolButton5: TToolButton;
    UndoButton: TToolButton;
    CutButton: TToolButton;
    CopyButton: TToolButton;
    PasteButton: TToolButton;
    ToolButton10: TToolButton;
    FontName: TComboBox;
    FontSize: TEdit;
    ToolButton11: TToolButton;
    UpDown1: TUpDown;
    BoldButton: TToolButton;
    ItalicButton: TToolButton;
    UnderlineButton: TToolButton;
    ToolButton16: TToolButton;
    LeftAlign: TToolButton;
    CenterAlign: TToolButton;
    RightAlign: TToolButton;
    ToolButton20: TToolButton;
    BulletsButton: TToolButton;
    ToolbarImages: TImageList;
    Panel2: TPanel;
    t1: TZQuery;
    tb1: TClientDataSet;
    p1: TDataSetProvider;
    d1: TDataSource;
    Editor: TRichEdit;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText3: TDBText;
    ToolButton1: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FileNew(Sender: TObject);
    procedure FileOpen(Sender: TObject);
    procedure FilePrint(Sender: TObject);
    procedure FileExit(Sender: TObject);
    procedure EditUndo(Sender: TObject);
    procedure EditCut(Sender: TObject);
    procedure EditCopy(Sender: TObject);
    procedure EditPaste(Sender: TObject);
    procedure HelpContents(Sender: TObject);
    procedure HelpSearch(Sender: TObject);
    procedure HelpHowToUse(Sender: TObject);
    procedure SelectFont(Sender: TObject);
    procedure RulerResize(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure BoldButtonClick(Sender: TObject);
    procedure ItalicButtonClick(Sender: TObject);
    procedure FontSizeChange(Sender: TObject);
    procedure AlignButtonClick(Sender: TObject);
    procedure FontNameChange(Sender: TObject);
    procedure UnderlineButtonClick(Sender: TObject);
    procedure BulletsButtonClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RulerItemMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RulerItemMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FirstIndMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LeftIndMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure RightIndMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditorSelectionChange(Sender: TObject);
    procedure EditorChange(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure EditorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tb1AfterScroll(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FontSizeKeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton1Click(Sender: TObject);


 public
    constructor Create(AOwner: TComponent;_chave,_nummodulo:integer;_qtd,_valor,_total:double;_descricao,_condpgto,_prazo:string); reintroduce;


  private
    ntb:string;

    chave,nummodulo:integer;
    qtd,valor,total:double;
    descricao,condpgto,prazo:string;

    FFileName: string;
    FUpdating,pedetit,va: Boolean;
    FDragOfs: Integer;
    FDragging: Boolean;
    FClipboardOwner: HWnd;
    function CurrText: TTextAttributes;
    procedure GetFontNames;
    procedure SetFileName(const FileName: String);
    procedure CheckFileSave;
    procedure SetupRuler;
    procedure SetEditRect;
    procedure UpdateCursorPos;
    procedure ClipboardChanged;
    procedure WMDropFiles(var Msg: TWMDropFiles); message WM_DROPFILES;
    procedure WMChangeCBChain(var Msg: TWMChangeCBChain); message WM_CHANGECBCHAIN;
    procedure WMDrawClipboard(var Msg: TWMDrawClipboard); message WM_DRAWCLIPBOARD;
    procedure PerformFileOpen(const AFileName: string);
    procedure SetModified(Value: Boolean);
    procedure SelectionChange(Sender: TObject);
    procedure RichEditChange(Sender: TObject);

  end;

var
  feditor: Tfeditor;

implementation

uses  RichEdit, ShellAPI,funcoes;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.DFM}



constructor Tfeditor.Create(AOwner: TComponent; _chave,_nummodulo:integer;_qtd,_valor,_total:double;_descricao,_condpgto,_prazo:string);
begin

  Inherited Create(AOwner);

      chave     := _chave;
      nummodulo := _nummodulo;

      qtd       := _qtd;
      valor     := _valor;
      total     := _total;
      condpgto  := _condpgto;
      prazo     := _prazo;
      descricao := _descricao;

      ntb := captb(inttostr(nummodulo));

      selecione('select codigo,nome from '+ntb+ ' where chave = '+inttostr(chave));
      caption := '"'+uppercase(copy(ntb,3,30))+'"       >>      ' + sqlpub.fieldbyname('codigo').AsString +  '  -  '
                                                                  + sqlpub.fieldbyname('nome').AsString ;
      sqlpub := nil;
      with t1 do begin
           sql.clear;
           sql.Add('select * from tbdocumento where link = ' + inttostr(chave)+ ' and modulo = '+ inttostr(nummodulo));
           tb1.Open;
           formatacptabela(tb1,nil,2);
      end;
end;



procedure Tfeditor.RichEditChange(Sender: TObject);
begin
  SetModified(Editor.Modified);
  UndoButton.Enabled := SendMessage(Editor.Handle, EM_CANUNDO, 0, 0) <> 0;
  EditUndoItem.Enabled := UndoButton.Enabled;
end;

procedure Tfeditor.SelectionChange(Sender: TObject);
begin
  with Editor.Paragraph do
  try
    FUpdating := True;
    FirstInd.Left := Trunc(FirstIndent*RulerAdj)-4+GutterWid;
    LeftInd.Left := Trunc((LeftIndent+FirstIndent)*RulerAdj)-4+GutterWid;
    RightInd.Left := Ruler.ClientWidth-6-Trunc((RightIndent+GutterWid)*RulerAdj);
    BoldButton.Down := fsBold in Editor.SelAttributes.Style;
    ItalicButton.Down := fsItalic in Editor.SelAttributes.Style;
    UnderlineButton.Down := fsUnderline in Editor.SelAttributes.Style;
    BulletsButton.Down := Boolean(Numbering);
    FontSize.Text := IntToStr(Editor.SelAttributes.Size);
    FontName.Text := Editor.SelAttributes.Name;
    case Ord(Alignment) of
      0: LeftAlign.Down := True;
      1: RightAlign.Down := True;
      2: CenterAlign.Down := True;
    end;
    UpdateCursorPos;
  finally
    FUpdating := False;
  end;
end;


function Tfeditor.CurrText: TTextAttributes;
begin
  if Editor.SelLength > 0 then Result := Editor.SelAttributes
  else Result := Editor.DefAttributes;
end;

function EnumFontsProc(var LogFont: TLogFont; var TextMetric: TTextMetric;
  FontType: Integer; Data: Pointer): Integer; stdcall;
begin
  TStrings(Data).Add(LogFont.lfFaceName);
  Result := 1;
end;

procedure Tfeditor.GetFontNames;
var
  DC: HDC;
begin
  DC := GetDC(0);
  EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
  ReleaseDC(0, DC);
  FontName.Sorted := True;
end;

procedure Tfeditor.SetFileName(const FileName: String);
begin


//////
  FFileName := FileName;
  Caption := 'Editor de Texto';
end;

procedure Tfeditor.CheckFileSave;
var
  SaveResp: Integer;
begin
  if not Editor.Modified then Exit;
  SaveResp := MessageDlg(Format('Salvar alterações no %s?', [FFileName]),
    mtConfirmation, mbYesNoCancel, 0);
  case SaveResp of
//    idYes: FileSave(Self);
    idNo: {Nothing};
    idCancel: Abort;
  end;
end;

procedure Tfeditor.SetupRuler;
var
  I: Integer;
  S: String;
begin
  SetLength(S, 201);
  I := 1;
  while I < 200 do
  begin
    S[I] := #9;
    S[I+1] := '|';
    Inc(I, 2);
  end;
  Ruler.Caption := S;
end;

procedure Tfeditor.SetEditRect;
var
  R: TRect;
begin
  with Editor do
  begin
    R := Rect(GutterWid, 0, ClientWidth-GutterWid, ClientHeight);
    SendMessage(Handle, EM_SETRECT, 0, Longint(@R));
  end;
end;

{ Event Handlers }

procedure Tfeditor.FormCreate(Sender: TObject);
begin
  Application.OnHint := ShowHint;
  OpenDialog.InitialDir := ExtractFilePath(ParamStr(0));
  SaveDialog.InitialDir := OpenDialog.InitialDir;
  SetFileName('Editor');
  GetFontNames;
  SetupRuler;
  SelectionChange(Self);
  FClipboardOwner := SetClipboardViewer(Handle);

end;

procedure Tfeditor.ShowHint(Sender: TObject);
begin
  if Length(Application.Hint) > 0 then
  begin
    StatusBar.SimplePanel := True;
    StatusBar.SimpleText := Application.Hint;
  end
  else StatusBar.SimplePanel := False;
end;

procedure Tfeditor.FileNew(Sender: TObject);
begin
  SetFileName('Untitled');
  Editor.Lines.Clear;
  Editor.Modified := False;
  SetModified(False);
end;

procedure Tfeditor.PerformFileOpen(const AFileName: string);
begin
  Editor.Lines.LoadFromFile(AFileName);
  SetFileName(AFileName);
  Editor.SetFocus;
  Editor.Modified := False;
  SetModified(False);
end;

procedure Tfeditor.FileOpen(Sender: TObject);
var imp,cam,nome:string;




      function capdoc(const mn: string): string;
      begin
             result :='';
             case strtoint(mn) of
                  //0: result := datetostr(now);
                  1 : result := 'fantasia';
                  2 : result := 'nome';
                  3 : result := 'ddd';
                  4 : result := 'fone1';
                  5 : result := 'fone2';
                  6 : result := 'endereco';
                  7 : result := 'numero';
                  8 : result := 'bairro';
                  9 : result := 'municipio';
                  10: result := 'cep';
                  11: result := 'uf';
                  12: result := 'nome';
                  13: result := 'endereco';
                  14: result := 'numero';
                  15: result := 'bairro';
                  16: result := 'municipio';
                  17: result := 'cep';
                  18: result := 'uf';
                  19: result := 'enderecoentrega';
                  20: result := 'numeroentrega';
                  21: result := 'bairroentrega';
                  22: result := 'municipioentrega';
                  23: result := 'cepentrega';
                  24: result := 'ufentrega';
                  25: result := 'enderecocobranca';
                  26: result := 'numerocobranca';
                  27: result := 'bairrocobranca';
                  28: result := 'municipiocobranca';
                  29: result := 'cepcobranca';
                  30: result := 'ufcobranca';
                  31: result := 'ddd';
                  32: result := 'fone';
                  33: result := 'fone2';
                  34: result := 'cnpj';
                  35: result := 'ie';
             end;

      end;






      procedure preenche(Ent: string);
      var
        bruto,liq:string;
        cont,i,j: integer;



            procedure substtext;
            var    ver: String;
                    i, ii, cont: Integer;
                    de, para: String;
            begin
                    cont:=0;
                    de:= '|'+liq+'|';

                    try
                    if liq = '0' then para:= Datetostr(now)      else
                    if liq = '36' then para:= floattostr(qtd)   else
                    if liq = '37' then para:= floattostr(valor) else
                    if liq = '38' then para:= floattostr(total) else
                    if liq = '39' then para:= condpgto          else
                    if liq = '40' then para:= prazo             else
                    if liq = '41' then para:= descricao         else                    
                    para:= sqlpub2.fieldbyname(capdoc(liq)).AsString;
                    except
                       showmessage('Erro neste campo:'+liq);
                    end;

                    For i:= 0 To editor.Lines.Count -1 Do
                    Begin
                            For ii:=1 To Length(editor.Lines.Strings[i]) Do
                            Begin
                                    ver:= Copy(editor.Lines.Strings[i], ii, Length(de));
                                    If ver = de Then
                                    Begin
                                            ver:= Copy(editor.Lines.Strings[i], 1, ii-1)  + para +
                                            Copy(editor.Lines.Strings[i], ii + Length(de), Length(editor.Lines.Strings[i]));
                                            editor.Lines.Strings[i] := ver;
                                            Inc(cont);
                                    End;
                            End;
                    End;
            end;

      begin
              selecione2('select * from tbempresa');

              if ent <> '' then begin
                 bruto := ent;
                 liq:='';
                 j:=0;

                 for i:=1 to length(bruto) do begin
                     if copy(bruto,i,1) = '|' then if j=0 then j :=1 else j:=0;
                     if j = 1 then liq:=liq + copy(bruto,i,1);

                     if (liq <> '') and (j=0) then begin

                        liq := copy(liq,2,30);

                        if strtoint(liq) <= 11 then substtext

                        else begin
                           selecione2('select * from ' + ntb + ' where chave = ' + inttostr(chave));
                           substtext;
                        end;


                        liq :='';
                     end;


                  end;

              end;
      end;




      procedure inserir;
      begin
           if nome = '' then abort;

          tb1.Insert;
          tb1['link']   := chave;
          tb1['modulo'] := nummodulo;
          tb1['nome']   := nome;
          tb1['data']   := datetostr(now);
          editor.SetFocus;
      end;








begin

          if not DirectoryExists(servpath + 'imagem\documentos\') then ForceDirectories(servpath + 'imagem\documentos\');
          codloc :='1';
          nome := '';
          imp := msgi('Criar o documento (digite uma opção):' + #13 + #13 +
                       '1 = De um modelo ' + #13 +
                       '2 = Doc em branco',2);

          if not (strtoint(imp) in [1..2]) then abort;


          if imp = '1' then begin

             cam := servpath + 'imagem\modelos\';
             if not DirectoryExists(cam) then ForceDirectories(cam);
             OpenDialog.InitialDir := cam;
             OpenDialog.Execute;
             if OpenDialog.FileName <> '' then nome := msgi('Qual é o nome do documento?',0);

             inserir;
             Editor.Lines.Clear;
             Editor.Lines.LoadFromFile(OpenDialog.FileName);
             OpenDialog.FileName :='';
             preenche(editor.Text);
             tb1.Post;
          end else begin
             nome := msgi('Qual é o nome do documento?',0);
             inserir;
             Editor.Clear;
             tb1.Post;
          end;

          va := true;
          grava(tb1,nil,'tbdocumento');
          tb1.Close;
          tb1.Open;
          formatacptabela(tb1,nil,2);
          tb1.IndexFieldNames := 'chave';
          tb1.Last;
          Editor.lines.SaveToFile(servpath + 'imagem\documentos\'+tb1.fieldbyname('chave').AsString+'.doc');
          va :=false;

end;

procedure Tfeditor.FilePrint(Sender: TObject);
var
imp:string;
begin
          codloc :='1';
          imp := msgi('Imprimir documento (digite uma opção):' + #13 + #13 +
                      '1 = No Word  ' + #13 +
                      '2 = No Local',2);

          if not (strtoint(imp) in [1..2]) then abort;


          if imp = '1' then begin
             editor.Lines.SaveToFile('c:\doc.doc');
             ShellExecute(Handle, 'open', PChar('c:\doc.doc'), nil, '', SW_SHOWMAXIMIZED);

          end else if PrintDialog.Execute then   Editor.Print(FFileName);

end;

procedure Tfeditor.FileExit(Sender: TObject);
begin
  Close;
end;

procedure Tfeditor.EditUndo(Sender: TObject);
begin
  with Editor do
    if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure Tfeditor.EditCut(Sender: TObject);
begin
  Editor.CutToClipboard;
end;

procedure Tfeditor.EditCopy(Sender: TObject);
begin
  Editor.CopyToClipboard;
end;

procedure Tfeditor.EditPaste(Sender: TObject);
begin
  Editor.PasteFromClipboard;
end;

procedure Tfeditor.HelpContents(Sender: TObject);
begin
  Application.HelpCommand(HELP_CONTENTS, 0);
end;

procedure Tfeditor.HelpSearch(Sender: TObject);
const
  EmptyString: PChar = '';
begin
  Application.HelpCommand(HELP_PARTIALKEY, Longint(EmptyString));
end;

procedure Tfeditor.HelpHowToUse(Sender: TObject);
begin
  Application.HelpCommand(HELP_HELPONHELP, 0);
end;

procedure Tfeditor.SelectFont(Sender: TObject);
begin
  FontDialog1.Font.Assign(Editor.SelAttributes);
  if FontDialog1.Execute then
    CurrText.Assign(FontDialog1.Font);
  Editor.SetFocus;
end;

procedure Tfeditor.RulerResize(Sender: TObject);
begin
  RulerLine.Width := Ruler.ClientWidth - (RulerLine.Left*2);
end;

procedure Tfeditor.FormResize(Sender: TObject);
begin
  SetEditRect;
  SelectionChange(Self);
end;

procedure Tfeditor.FormPaint(Sender: TObject);
begin
  SetEditRect;
end;

procedure Tfeditor.BoldButtonClick(Sender: TObject);
begin
  if FUpdating then Exit;
  if BoldButton.Down then
    CurrText.Style := CurrText.Style + [fsBold]
  else
    CurrText.Style := CurrText.Style - [fsBold];
end;

procedure Tfeditor.ItalicButtonClick(Sender: TObject);
begin
  if FUpdating then Exit;
  if ItalicButton.Down then
    CurrText.Style := CurrText.Style + [fsItalic]
  else
    CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure Tfeditor.FontSizeChange(Sender: TObject);
begin
  if FUpdating then Exit;
  CurrText.Size := StrToInt(FontSize.Text);
end;

procedure Tfeditor.AlignButtonClick(Sender: TObject);
begin
  if FUpdating then Exit;
  Editor.Paragraph.Alignment := TAlignment(TControl(Sender).Tag);
end;

procedure Tfeditor.FontNameChange(Sender: TObject);
begin
  if FUpdating then Exit;
  CurrText.Name := FontName.Items[FontName.ItemIndex];
end;

procedure Tfeditor.UnderlineButtonClick(Sender: TObject);
begin
  if FUpdating then Exit;
  if UnderlineButton.Down then
    CurrText.Style := CurrText.Style + [fsUnderline]
  else
    CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure Tfeditor.BulletsButtonClick(Sender: TObject);
begin
  if FUpdating then Exit;
  Editor.Paragraph.Numbering := TNumberingStyle(BulletsButton.Down);
end;

procedure Tfeditor.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
      if editor.Lines.Count >0 then SaveButtonClick(self);
{  try
    CheckFileSave;
  except
    CanClose := False;
  end;}
end;

{ Ruler Indent Dragging }

procedure Tfeditor.RulerItemMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FDragOfs := (TLabel(Sender).Width div 2);
  TLabel(Sender).Left := TLabel(Sender).Left+X-FDragOfs;
  FDragging := True;
end;

procedure Tfeditor.RulerItemMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if FDragging then
    TLabel(Sender).Left :=  TLabel(Sender).Left+X-FDragOfs
end;

procedure Tfeditor.FirstIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
  Editor.Paragraph.FirstIndent := Trunc((FirstInd.Left+FDragOfs-GutterWid) / RulerAdj);
  LeftIndMouseUp(Sender, Button, Shift, X, Y);
end;

procedure Tfeditor.LeftIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
  Editor.Paragraph.LeftIndent := Trunc((LeftInd.Left+FDragOfs-GutterWid) / RulerAdj)-Editor.Paragraph.FirstIndent;
  SelectionChange(Self);
end;

procedure Tfeditor.RightIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
  Editor.Paragraph.RightIndent := Trunc((Ruler.ClientWidth-RightInd.Left+FDragOfs-2) / RulerAdj)-2*GutterWid;
  SelectionChange(Self);
end;

procedure Tfeditor.UpdateCursorPos;
var
  CharPos: TPoint;
begin
  CharPos.Y := SendMessage(Editor.Handle, EM_EXLINEFROMCHAR, 0,
    Editor.SelStart);
  CharPos.X := (Editor.SelStart -
    SendMessage(Editor.Handle, EM_LINEINDEX, CharPos.Y, 0));
  Inc(CharPos.Y);
  Inc(CharPos.X);
  StatusBar.Panels[0].Text := Format('Line: %3d   Col: %3d', [CharPos.Y, CharPos.X]);

  // update the status of the cut and copy command
  CopyButton.Enabled := Editor.SelLength > 0;
  EditCopyItem.Enabled := CopyButton.Enabled;
  CutButton.Enabled := CopyButton.Enabled;
  EditCutItem.Enabled := CopyButton.Enabled;
end;

procedure Tfeditor.FormShow(Sender: TObject);
begin

  UpdateCursorPos;
  DragAcceptFiles(Handle, True);
  RichEditChange(nil);
  Editor.SetFocus;
  ClipboardChanged;

  // check if we should load a file from the command line
  if (ParamCount > 0) and FileExists(ParamStr(1)) then
    PerformFileOpen(ParamStr(1));



end;

procedure Tfeditor.WMDropFiles(var Msg: TWMDropFiles);
var
  CFileName: array[0..MAX_PATH] of Char;
begin
  try
    if DragQueryFile(Msg.Drop, 0, CFileName, MAX_PATH) > 0 then
    begin
      CheckFileSave;
      PerformFileOpen(CFileName);
      Msg.Result := 0;
    end;
  finally
    DragFinish(Msg.Drop);
  end;
end;

procedure Tfeditor.SetModified(Value: Boolean);
begin
  if Value then StatusBar.Panels[1].Text := 'Modified'
  else StatusBar.Panels[1].Text := '';
end;

procedure Tfeditor.WMChangeCBChain(var Msg: TWMChangeCBChain);
begin
  if Msg.Remove = FClipboardOwner then FClipboardOwner := Msg.Next
  else SendMessage(FClipboardOwner, WM_CHANGECBCHAIN, Msg.Remove, Msg.Next);
  Msg.Result := 0;
end;

procedure Tfeditor.ClipboardChanged;
var
  I: Integer;
  Format: Word;
  E: Boolean;
begin
  // check to see if we can paste what's on the clipboard
  E := False;
  for I := 0 to Clipboard.FormatCount - 1 do
  begin
    Format := Clipboard.Formats[I];
    if SendMessage(Editor.Handle, EM_CANPASTE, Format, 0) <> 0 then
    begin
      E := True;
      Break;
    end;
  end;
  PasteButton.Enabled := E;
  EditPasteItem.Enabled := E;
end;

procedure Tfeditor.WMDrawClipboard(var Msg: TWMDrawClipboard);
begin
  SendMessage(FClipboardOwner, WM_DRAWCLIPBOARD, 0, 0);
  Msg.Result := 0;
  ClipboardChanged;
end;

procedure Tfeditor.FormDestroy(Sender: TObject);
begin
  // remove ourselves from the viewer chain
  ChangeClipboardChain(Handle, FClipboardOwner);
end;

procedure Tfeditor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_insert then begin
           pedetit := true;
           pedetit := false;
        end;

end;

procedure Tfeditor.EditorSelectionChange(Sender: TObject);
begin
  with Editor.Paragraph do
  try
    FUpdating := True;
    FirstInd.Left := Trunc(FirstIndent*RulerAdj)-4+GutterWid;
    LeftInd.Left := Trunc((LeftIndent+FirstIndent)*RulerAdj)-4+GutterWid;
    RightInd.Left := Ruler.ClientWidth-6-Trunc((RightIndent+GutterWid)*RulerAdj);
    BoldButton.Down := fsBold in Editor.SelAttributes.Style;
    ItalicButton.Down := fsItalic in Editor.SelAttributes.Style;
    UnderlineButton.Down := fsUnderline in Editor.SelAttributes.Style;
    BulletsButton.Down := Boolean(Numbering);
    FontSize.Text := IntToStr(Editor.SelAttributes.Size);
    FontName.Text := Editor.SelAttributes.Name;
    case Ord(Alignment) of
      0: LeftAlign.Down := True;
      1: RightAlign.Down := True;
      2: CenterAlign.Down := True;
    end;
    UpdateCursorPos;
  finally
    FUpdating := False;
  end;
end;

procedure Tfeditor.EditorChange(Sender: TObject);
begin
  SetModified(Editor.Modified);
  UndoButton.Enabled := SendMessage(Editor.Handle, EM_CANUNDO, 0, 0) <> 0;
  EditUndoItem.Enabled := UndoButton.Enabled;
end;

procedure Tfeditor.SaveButtonClick(Sender: TObject);
var loc:string;
begin
      if tb1['chave'] <> null then begin
         loc := tb1.fieldbyname('chave').AsString;
         altera(tb1,nil,'tbdocumento');
         Editor.lines.SaveToFile(servpath + 'imagem\documentos\'+tb1.fieldbyname('chave').AsString+'.doc');

         tb1.Close;
         tb1.Open;
         formatacptabela(tb1,nil,2);

         tb1.Locate('chave',loc,[]);
      end;   
end;

procedure Tfeditor.EditorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if tb1.RecordCount <=0 then begin
         Editor.Lines.Clear;
         //msg('Clique em novo para começar.',0);
         Editor.Lines.Clear;
         Editor.Lines.Clear;
         FileOpen(self);
      end;
end;

procedure Tfeditor.tb1AfterScroll(DataSet: TDataSet);
begin


      if (not va) and (not active) and (tb1['chave']<> null) and (tb1.RecordCount >0) and (fileexists(servpath + 'imagem\documentos\'+tb1.fieldbyname('chave').AsString+'.doc')) then
         Editor.lines.LoadFromFile(servpath + 'imagem\documentos\'+tb1.fieldbyname('chave').AsString+'.doc');

end;

procedure Tfeditor.SpeedButton1Click(Sender: TObject);
begin
      tb1.IndexFieldNames := 'nome';
      loccampo(tb1,nil,'nome','','','');
end;

procedure Tfeditor.FontSizeKeyPress(Sender: TObject; var Key: Char);
begin
      if not (key in['0'..'9']) then abort;
end;

procedure Tfeditor.ToolButton1Click(Sender: TObject);
begin
      if not msg('Deseja apagar?',2) then abort;
      if fileexists(servpath + 'imagem\documentos\'+tb1.fieldbyname('chave').AsString+'.doc') then
         DeleteFile(pchar(servpath + 'imagem\documentos\'+tb1.fieldbyname('chave').AsString+'.doc'));
      selecione('delete from tbdocumento where chave = ' + quotedstr(tb1.fieldbyname('chave').AsString));

      tb1.Close;
      tb1.Open;
      formatacptabela(tb1,nil,2);
      tb1.IndexFieldNames := 'chave';
      tb1.Last;
end;

end.






{fantasia |1|

nome |2|

Fones: (|3|)  |4|   |5|
endereco |6|   |7|   |8|   |9|   Cep: |10|   UF: |11|

Contrato de Locação

Nome: |12|
Endereço: |13|
Endereço de entrega: |14|    Data: |15|
Bairro: |16|    Cidade: |17|    Cep: |18|    UF: |19|
Telefone: |20|
CPF/CNPJ: |21|    RG/IE: |22|

}