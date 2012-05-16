unit REMain;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Menus, ComCtrls, ClipBrd,
  ToolWin, ImgList, FileCtrl;

type
  TMainForm = class(TForm)
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
    Editor: TRichEdit;
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
    FileListBox1: TFileListBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;

    procedure SelectionChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FileNew(Sender: TObject);
    procedure FileOpen(Sender: TObject);
    procedure FileSave(Sender: TObject);
    procedure FileSaveAs(Sender: TObject);
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
    procedure RichEditChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FileListBox1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
  private
    FFileName: string;
    FUpdating,pedetit: Boolean;
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
  end;

var
  MainForm: TMainForm;

implementation

uses  RichEdit, ShellAPI;

const
  RulerAdj = 4/3;
  GutterWid = 6;

{$R *.DFM}

procedure TMainForm.SelectionChange(Sender: TObject);
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

function TMainForm.CurrText: TTextAttributes;
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

procedure TMainForm.GetFontNames;
var
  DC: HDC;
begin
  DC := GetDC(0);
  EnumFonts(DC, nil, @EnumFontsProc, Pointer(FontName.Items));
  ReleaseDC(0, DC);
  FontName.Sorted := True;
end;

procedure TMainForm.SetFileName(const FileName: String);
begin


//////
  FFileName := FileName;
  Caption := 'Editor de Texto';
end;

procedure TMainForm.CheckFileSave;
var
  SaveResp: Integer;
begin
  if not Editor.Modified then Exit;
  SaveResp := MessageDlg(Format('Salvar alterações no %s?', [FFileName]),
    mtConfirmation, mbYesNoCancel, 0);
  case SaveResp of
    idYes: FileSave(Self);
    idNo: {Nothing};
    idCancel: Abort;
  end;
end;

procedure TMainForm.SetupRuler;
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

procedure TMainForm.SetEditRect;
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

procedure TMainForm.FormCreate(Sender: TObject);
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

procedure TMainForm.ShowHint(Sender: TObject);
begin
  if Length(Application.Hint) > 0 then
  begin
    StatusBar.SimplePanel := True;
    StatusBar.SimpleText := Application.Hint;
  end
  else StatusBar.SimplePanel := False;
end;

procedure TMainForm.FileNew(Sender: TObject);
begin
  SetFileName('Untitled');
  Editor.Lines.Clear;
  Editor.Modified := False;
  SetModified(False);
end;

procedure TMainForm.PerformFileOpen(const AFileName: string);
begin
  Editor.Lines.LoadFromFile(AFileName);
  SetFileName(AFileName);
  Editor.SetFocus;
  Editor.Modified := False;
  SetModified(False);
end;

procedure TMainForm.FileOpen(Sender: TObject);
begin
        FileNew(self);
end;

procedure TMainForm.FileSave(Sender: TObject);
var
tit,nome,pag:string;
i,j:integer;
pt : boolean;
begin

        if Editor.Text = '' then abort;

        case pagecontrol1.ActivePageIndex of
             0 : pag :='musicas';
             1 : pag :='dados';
             2 : pag :='ideias';
        end;

        focuscontrol(nil);
         if filelistbox1.FileName <>'' then
             tit:= filelistbox1.Items[filelistbox1.itemindex];

        j:=  length(tit);
        nome :='';

        for i := 1 to j do begin

            if copy(tit,i,1) = '.' then pt := true;

            if pt = false then
               nome := nome  + copy(tit,i,1);
        end;

        if (not pedetit) or (tit='') then
           inputquery('Título', 'Confirme o título da música:',nome);

        i:= filelistbox1.ItemIndex;
        Editor.Lines.SaveToFile(ExtractFilePath(ParamStr(0)) +pag+'\'+nome+'.DOC');
        filelistbox1.Directory := 'c:\';
        filelistbox1.Directory := ExtractFilePath(ParamStr(0)) +pag+'\';
        Editor.Modified := False;
        SetModified(False);
        filelistbox1.ItemIndex := i;
        editor.SetFocus;

{  if FFileName = 'Untitled' then
    FileSaveAs(Sender)
  else
  begin
    Editor.Lines.SaveToFile(FFileName);
    Editor.Modified := False;
    SetModified(False);
  end;}
end;

procedure TMainForm.FileSaveAs(Sender: TObject);
begin
{  if SaveDialog.Execute then
  begin
    if FileExists(SaveDialog.FileName) then
      if MessageDlg(Format('OK to overwrite %s', [SaveDialog.FileName]),
        mtConfirmation, mbYesNoCancel, 0) <> idYes then Exit;
    Editor.Lines.SaveToFile(SaveDialog.FileName);
    SetFileName(SaveDialog.FileName);
    Editor.Modified := False;
    SetModified(False);
  end;}
end;

procedure TMainForm.FilePrint(Sender: TObject);
begin
  if PrintDialog.Execute then
    Editor.Print(FFileName);
end;

procedure TMainForm.FileExit(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.EditUndo(Sender: TObject);
begin
  with Editor do
    if HandleAllocated then SendMessage(Handle, EM_UNDO, 0, 0);
end;

procedure TMainForm.EditCut(Sender: TObject);
begin
  Editor.CutToClipboard;
end;

procedure TMainForm.EditCopy(Sender: TObject);
begin
  Editor.CopyToClipboard;
end;

procedure TMainForm.EditPaste(Sender: TObject);
begin
  Editor.PasteFromClipboard;
end;

procedure TMainForm.HelpContents(Sender: TObject);
begin
  Application.HelpCommand(HELP_CONTENTS, 0);
end;

procedure TMainForm.HelpSearch(Sender: TObject);
const
  EmptyString: PChar = '';
begin
  Application.HelpCommand(HELP_PARTIALKEY, Longint(EmptyString));
end;

procedure TMainForm.HelpHowToUse(Sender: TObject);
begin
  Application.HelpCommand(HELP_HELPONHELP, 0);
end;

procedure TMainForm.SelectFont(Sender: TObject);
begin
  FontDialog1.Font.Assign(Editor.SelAttributes);
  if FontDialog1.Execute then
    CurrText.Assign(FontDialog1.Font);
  Editor.SetFocus;
end;

procedure TMainForm.RulerResize(Sender: TObject);
begin
  RulerLine.Width := Ruler.ClientWidth - (RulerLine.Left*2);
end;

procedure TMainForm.FormResize(Sender: TObject);
begin
  SetEditRect;
  SelectionChange(Sender);
end;

procedure TMainForm.FormPaint(Sender: TObject);
begin
  SetEditRect;
end;

procedure TMainForm.BoldButtonClick(Sender: TObject);
begin
  if FUpdating then Exit;
  if BoldButton.Down then
    CurrText.Style := CurrText.Style + [fsBold]
  else
    CurrText.Style := CurrText.Style - [fsBold];
end;

procedure TMainForm.ItalicButtonClick(Sender: TObject);
begin
  if FUpdating then Exit;
  if ItalicButton.Down then
    CurrText.Style := CurrText.Style + [fsItalic]
  else
    CurrText.Style := CurrText.Style - [fsItalic];
end;

procedure TMainForm.FontSizeChange(Sender: TObject);
begin
  if FUpdating then Exit;
  CurrText.Size := StrToInt(FontSize.Text);
end;

procedure TMainForm.AlignButtonClick(Sender: TObject);
begin
  if FUpdating then Exit;
  Editor.Paragraph.Alignment := TAlignment(TControl(Sender).Tag);
end;

procedure TMainForm.FontNameChange(Sender: TObject);
begin
  if FUpdating then Exit;
  CurrText.Name := FontName.Items[FontName.ItemIndex];
end;

procedure TMainForm.UnderlineButtonClick(Sender: TObject);
begin
  if FUpdating then Exit;
  if UnderlineButton.Down then
    CurrText.Style := CurrText.Style + [fsUnderline]
  else
    CurrText.Style := CurrText.Style - [fsUnderline];
end;

procedure TMainForm.BulletsButtonClick(Sender: TObject);
begin
  if FUpdating then Exit;
  Editor.Paragraph.Numbering := TNumberingStyle(BulletsButton.Down);
end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
{  try
    CheckFileSave;
  except
    CanClose := False;
  end;}
end;

{ Ruler Indent Dragging }

procedure TMainForm.RulerItemMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FDragOfs := (TLabel(Sender).Width div 2);
  TLabel(Sender).Left := TLabel(Sender).Left+X-FDragOfs;
  FDragging := True;
end;

procedure TMainForm.RulerItemMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  if FDragging then
    TLabel(Sender).Left :=  TLabel(Sender).Left+X-FDragOfs
end;

procedure TMainForm.FirstIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
  Editor.Paragraph.FirstIndent := Trunc((FirstInd.Left+FDragOfs-GutterWid) / RulerAdj);
  LeftIndMouseUp(Sender, Button, Shift, X, Y);
end;

procedure TMainForm.LeftIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
  Editor.Paragraph.LeftIndent := Trunc((LeftInd.Left+FDragOfs-GutterWid) / RulerAdj)-Editor.Paragraph.FirstIndent;
  SelectionChange(Sender);
end;

procedure TMainForm.RightIndMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FDragging := False;
  Editor.Paragraph.RightIndent := Trunc((Ruler.ClientWidth-RightInd.Left+FDragOfs-2) / RulerAdj)-2*GutterWid;
  SelectionChange(Sender);
end;

procedure TMainForm.UpdateCursorPos;
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

procedure TMainForm.FormShow(Sender: TObject);
begin
  pagecontrol1.ActivePageIndex :=0;
  UpdateCursorPos;
  DragAcceptFiles(Handle, True);
  RichEditChange(nil);
  Editor.SetFocus;
  ClipboardChanged;

  // check if we should load a file from the command line
  if (ParamCount > 0) and FileExists(ParamStr(1)) then
    PerformFileOpen(ParamStr(1));

     filelistbox1.Directory := ExtractFilePath(ParamStr(0)) +'musicas\';

       if filelistbox1.FileName <>'' then
          editor.Lines.LoadFromFile(filelistbox1.FileName);

  PageControl1Change(self);          

end;

procedure TMainForm.WMDropFiles(var Msg: TWMDropFiles);
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

procedure TMainForm.RichEditChange(Sender: TObject);
begin
  SetModified(Editor.Modified);
  UndoButton.Enabled := SendMessage(Editor.Handle, EM_CANUNDO, 0, 0) <> 0;
  EditUndoItem.Enabled := UndoButton.Enabled;
end;

procedure TMainForm.SetModified(Value: Boolean);
begin
  if Value then StatusBar.Panels[1].Text := 'Modified'
  else StatusBar.Panels[1].Text := '';
end;

procedure TMainForm.WMChangeCBChain(var Msg: TWMChangeCBChain);
begin
  if Msg.Remove = FClipboardOwner then FClipboardOwner := Msg.Next
  else SendMessage(FClipboardOwner, WM_CHANGECBCHAIN, Msg.Remove, Msg.Next);
  Msg.Result := 0;
end;

procedure TMainForm.ClipboardChanged;
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

procedure TMainForm.WMDrawClipboard(var Msg: TWMDrawClipboard);
begin
  SendMessage(FClipboardOwner, WM_DRAWCLIPBOARD, 0, 0);
  Msg.Result := 0;
  ClipboardChanged;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  // remove ourselves from the viewer chain
  ChangeClipboardChain(Handle, FClipboardOwner);
end;

procedure TMainForm.FileListBox1Change(Sender: TObject);
begin
       if filelistbox1.FileName <>'' then
          editor.Lines.LoadFromFile(filelistbox1.FileName);

end;

procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = vk_insert then begin
           pedetit := true;
           FileSave(self);
           pedetit := false;           
        end;

end;

procedure TMainForm.PageControl1Change(Sender: TObject);
var
pag :string;
begin
        case pagecontrol1.ActivePageIndex of
             0 : pag :='musicas';
             1 : pag :='dados';
             2 : pag :='ideias';
        end;

        filelistbox1.Directory :='c:\';
        filelistbox1.Directory := ExtractFilePath(ParamStr(0)) +pag+'\';
        editor.Lines.Clear;
        FileListBox1.ItemIndex :=0;
        FileListBox1Change(self);

        caption := inttostr(FileListBox1.Count) + ' Item(ns)';

end;

end.
