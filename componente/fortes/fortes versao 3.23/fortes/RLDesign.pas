unit RLDesign;

interface

uses
  Classes, TypInfo, Db, SysUtils,
{$ifdef DELPHI5}
  DsgnIntF,
{$else}
  DesignEditors, DesignIntf,
{$endif}
  Forms,
{$ifndef DELPHI7}
  WideStrings,
{$endif}
  RLReport, RLConsts, RLUtils, RLTypes,
  RLAbout;

type

{$ifdef DELPHI5}
  IDesignerClass=IFormDesigner;
{$else}
  IDesignerClass=IDesigner;
{$endif}

  { TRLReportDesigner }

  TRLReportDesigner=class(TComponentEditor)
  protected
    // variables
    fReport:TRLReport;
    // custom methods
    procedure   ShowAboutBox; virtual;
  public
    // constructors & destructors
    constructor Create(aComponent:TComponent; aDesigner:IDesignerClass); override;
    // override methods
    procedure   Edit; override;
    procedure   ExecuteVerb(Index:Integer); override;
    function    GetVerb(Index:Integer):string; override;
    function    GetVerbCount:integer; override;
  end;

  // property editors

  { TRLListEditor }

  TRLListEditor=class(TStringProperty)
  public
    function  GetAttributes:TPropertyAttributes; override;
    procedure GetValues(Proc:TGetStrProc); override;
    //
   {$ifndef DELPHI7}
    procedure GetValueList(List:TWideStrings); virtual; abstract;
   {$ELSE}
    procedure GetValueList(List:TStrings); virtual; abstract;
   {$ENDIF}
  end;


  TRLDataEditor=class(TRLListEditor)
  public
   {$ifndef DELPHI7}
    procedure GetValueList(List:TWideStrings); override;
   {$ELSE}
    procedure GetValueList(List:TStrings); override;
   {$ENDIF}
    //
    function GetDataSource:TDataSource; virtual; abstract;
  end;

  TRLDataFieldEditor=class(TRLDataEditor)
  public
    function GetDataSource:TDataSource; override;
  end;

  TRLDataFieldsEditor=class(TRLDataEditor)
  public
    function GetDataSource:TDataSource; override;
  end;

  TRLPaperSizeEditor=class(TRLListEditor)
  public
   {$ifndef DELPHI7}
    procedure GetValueList(List:TWideStrings); override;
    {$else}
    procedure GetValueList(List:TStrings); override;
   {$ENDIF}
  end;

implementation

{ TRLReportDesigner }

constructor TRLReportDesigner.Create(aComponent:TComponent; aDesigner:IDesignerClass);
begin
  inherited;
  fReport:=TRLReport(aComponent);
end;

function TRLReportDesigner.GetVerb(Index:Integer):string;
begin
  case Index of
    0: result:=LS_AboutTheStr+' '+CS_ProductTitleStr+'...';
    1: result:='-';
    2: result:=LS_PreviewStr;
  end;
end;

function TRLReportDesigner.GetVerbCount:integer;
begin
  result:=3;
end;

procedure TRLReportDesigner.ShowAboutBox;
begin
  with TfrmRLAbout.Create(nil) do
  begin
    ShowModal;
    free;
  end;
end;

procedure TRLReportDesigner.Edit;
begin
  fReport.Preview;
  TForm(fReport.Owner).Invalidate;
end;

procedure TRLReportDesigner.ExecuteVerb(Index:Integer);
begin
  case Index of
    0: ShowAboutBox;
    1:;
    2: Edit;
  end;
end;

function GetPropertyValue(Instance:TPersistent; const PropName:string):TPersistent;
var
  PropInfo:PPropInfo;
begin
  result  :=nil;
  PropInfo:=TypInfo.GetPropInfo(Instance.ClassInfo,PropName);
  if (PropInfo<>nil) and (PropInfo^.PropType^.Kind=tkClass) then
    result:=TObject(GetOrdProp(Instance,PropInfo)) as TPersistent;
end;

{ TRLListEditor }

function TRLListEditor.GetAttributes:TPropertyAttributes;
begin
  result:=[paValueList,paSortList,paMultiSelect];
end;

procedure TRLListEditor.GetValues(Proc:TGetStrProc);
var
 {$ifndef DELPHI7}
  l:TWideStrings;
  {$else}
  l:TStrings;
  {$endif}
  i:integer;
begin
 {$ifndef DELPHI7}
  l:=TWideStrings.Create;
  {$else}
  l:=TStrings.Create;
  {$endif}
  try
    GetValueList(l);
    for i:=0 to l.Count-1 do
      Proc(l[i]);
  finally
    l.free;
  end;
end;

{ TRLDataEditor }

{$ifndef DELPHI7}
procedure TRLDataEditor.GetValueList(List:TWideStrings);
{$else}
procedure TRLDataEditor.GetValueList(List:TStrings);
{$endif}
var
  ds:TDataSource;
begin
  ds:=GetDataSource;
  if (ds<>nil) and (ds.DataSet<>nil) then
    ds.DataSet.GetFieldNames(List);
end;

{ TRLDataFieldEditor }

function TRLDataFieldEditor.GetDataSource:TDataSource;
begin
  result:=GetPropertyValue(GetComponent(0),'DataSource') as TDataSource;
end;

{ TRLDataFieldsEditor }

function TRLDataFieldsEditor.GetDataSource:TDataSource;
var
  skipper:TRLCustomSkipper;
begin
  skipper:=TRLGroup(GetComponent(0)).FindParentSkipper;
  if skipper<>nil then
    result:=skipper.DataSource
  else
    result:=nil;
end;

{ TRLPaperSizeEditor }

{$ifndef DELPHI7}
procedure TRLPaperSizeEditor.GetValueList(List:TWideStrings);
{$else}
procedure TRLPaperSizeEditor.GetValueList(List:TStrings);
{$endif}
var
  i:TRLPaperSize;
  v:string;
begin
  for i:=low(TRLPaperSize) to high(TRLPaperSize) do
  begin
    v:=PaperInfoArray[i].Description;
    if PaperInfoArray[i].Emulated then
      v:=v+'*';
    List.Add(v);
  end;  
end;

end.

