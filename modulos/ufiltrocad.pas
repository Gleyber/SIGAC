{
        //cria form e config campos da grade informada
        //radiogroup: 'campo','label','tipocomp','col','col','col','col',top
        //cria mask:  'campo','label','topo',qtd mask
        //criacombo: nomecampo,cap,tabela,campo,topo;
}

unit ufiltrocad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ActnList, Buttons, ExtCtrls,  DBClient,
  DB, Provider, Grids, DBGrids, ComCtrls,ZDataset;

type
  Tffiltrocad = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Label28: TLabel;
    ActionList1: TActionList;
    combos: TAction;
    campograde: TAction;
    grava: TAction;
    fontepag: TAction;
    TabSheet1: TTabSheet;
    tb: TClientDataSet;
    tbnome: TStringField;
    tbcap: TStringField;
    tbx: TStringField;
    tbindex: TIntegerField;
    tbini: TClientDataSet;
    tbininome: TStringField;
    tbinix: TStringField;
    tbcampo: TClientDataSet;
    StringField1: TStringField;
    ra: TAction;
    tbcampox: TStringField;
    ma: TAction;
    tbcampo_x: TStringField;
    ch: TAction;
    maenter: TAction;
    chenter: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dbl: TAction;
    dblenter: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure vr1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure fontepagExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure campogradeExecute(Sender: TObject);
    procedure raExecute(Sender: TObject);
    procedure maExecute(Sender: TObject);
    procedure chExecute(Sender: TObject);
    procedure maenterExecute(Sender: TObject);
    procedure chenterExecute(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure dblExecute(Sender: TObject);
    procedure dblenterExecute(Sender: TObject);
  private

  nummodulo : integer;
    { Private declarations }
  public

    sqld:tzquery;
    tabest:tclientdataset;
    ntb,tbin,script,from,criterio,criterio2,gpby:string;
    grade :tdbgrid;
    rel:boolean;

    { Public declarations }


    constructor Create(AOwner: TComponent; tabes:tclientdataset;
                                           sq:tzquery;
                                           ntb1,tbi:string;grade1:tdbgrid;nummodulo_:integer); reintroduce;


  end;

var
  ffiltrocad: Tffiltrocad;

implementation

uses udm, funcoes, ucadg, urelatorio;

{$R *.dfm}



//// constroi
constructor Tffiltrocad.Create(AOwner: TComponent;
                                           tabes:tclientdataset;
                                           sq:tzquery;
                                           ntb1,tbi:string;grade1:tdbgrid;nummodulo_:integer);

begin

  Inherited Create(AOwner);
        sqld :=  tzquery.Create(application);
        tabest :=  tclientdataset.Create(application);

        sqld := sq;

        if tabes <> nil then begin
           tabest:= tabes;
           tabest.Open;
        end else
        sqld.open;

        tbin:=tbi;
        grade:=grade1;
        ntb:=ntb1;
        nummodulo := nummodulo_;

end;






procedure Tffiltrocad.FormCreate(Sender: TObject);
begin
        qtdlinha:=0;
        ii:=0;
        jj:=0;

        TabSheet1.Show;

        tb.CreateDataSet;
        tb.Open;

        tbcampo.CreateDataSet;
        tbcampo.Open;


    if FileExists(servpath+'imagem\' + tbin+'.cds') then begin
       tbini.FileName := servpath+'imagem\' + tbin+'.cds';
       tbini.Open;
    end;

    tabsheet1.Show;
end;

procedure Tffiltrocad.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13)  then
    Perform(wm_nextdlgctl, 0,0);
  if (key = 27)   then
    Perform(wm_nextdlgctl, 1,0);

end;

procedure Tffiltrocad.vr1KeyPress(Sender: TObject;
  var Key: Char);
begin

       // if key = ',' then key := '.';
        if not(key in['0'..'9',#8,',']) then abort;
end;

procedure Tffiltrocad.BitBtn2Click(Sender: TObject);
begin
        close;
end;

procedure Tffiltrocad.FormClose(Sender: TObject;
  var Action: TCloseAction);

begin
        campogradeExecute(self);

        tb.First;

              tbini.Close;
              tbini.CreateDataSet;

        while not tb.Eof do begin
              tbini.Insert;
              tbini['nome']:= tb.fieldbyname('nome').AsString;
              tbini['x']:= tb.fieldbyname('x').AsString;
              tbini.Post;
              tb.Next;
        end;

        tbini.SaveToFile(servpath +'imagem\'+ tbin+'.cds');
        tbini.close;

        tb.close;


        ffiltrocad := nil;
        release;
end;

procedure Tffiltrocad.FormDeactivate(Sender: TObject);
begin
        height := 50;
        top :=511;
end;

procedure Tffiltrocad.FormActivate(Sender: TObject);
begin
        height := 385;
        top := 180;

end;

procedure Tffiltrocad.fontepagExecute(Sender: TObject);
begin
        if pagecontrol1.ActivePageIndex =1  then
        with sender as tcheckbox do begin
             tb.Locate('nome',name,[]);
             tb.Edit;

             if checked then
                tb['x'] :='X'
             else
               tb['x'] :=null;
             tb.Post;
        end;

end;

procedure Tffiltrocad.FormShow(Sender: TObject);
var
  nome: TCheckBox;
  i,top1,left1:integer;
begin

  //////// cria os checks de acordo com campos da grade

  top1:=24;//posicoes iniciais
  left1:=0;

  for i:=0 to grade.Columns.Count-1 do begin
       if lowercase(grade.Columns[i].FieldName) <> 'chave' then begin

          nome := TCheckBox.Create(application);
          with nome do begin
            name:='C'+grade.Columns[i].FieldName;
            Caption := grade.Columns[i].Title.Caption ;
            Left := left1;
            Top := top1;
            Parent := TabSheet2;
            Width := 97;
            height:=15;
            onclick:=fontepagExecute;
            color:=$00B68C76;
            font.Color := clwhite;

            tb.Insert;
            tb['nome']:= 'C'+grade.Columns[i].FieldName;
            tb['cap']:= grade.Columns[i].Title.Caption;
            tb['index']:= i;

            if tbini.Active=false then begin
               checked := true;
               tb['x']:='X';
            end;

            tb.Post;

            if tbini.Active then begin
               tbini.Locate('nome','C'+grade.Columns[i].FieldName,[]);

               if tbini['x']='X' then begin
                  nome.Checked:= true;
                  tb.Locate('nome',name,[]);
                  tb.Edit;
                  tb['x'] :='X';
                  tb.Post;
               end;

//               showmessage(ffiltrocad.tbini.fieldbyname('x').asstring);
            end;
          end;

          top1:=top1+16;
        end;

          if  top1 = 296 then begin
              left1 := left1 + 100;
              top1:=24;
          end;

      end;

      if (tbini.Active)and(tbini.RecordCount > 69) then
         pagecontrol1.Width :=500
      else if (tbini.Active)and(tbini.RecordCount > 54) then
              pagecontrol1.Width :=400;

      if tbcampo.RecordCount >13 then
         pagecontrol1.Height := pagecontrol1.Height + (tbcampo.RecordCount -13) * 18;


end;

procedure Tffiltrocad.BitBtn1Click(Sender: TObject);
var
fil,ntba,flag:string;
begin


        if nummodulo in[4, 5, 20, 6, 7, 18] then flag := ' and (flag <> "D" or flag is null) ';

        if rel=false then
           fil := ' select * from '+ ntb+
                  ' where chave is not null '
        else begin
           if from = '' then//so uma tabela
              fil := script+ ' where chave is not null '
           else begin//tabela vinculada
             fil := script+ from+' where '+ntb+'.chave is not null '+  criterio;
             ntba := ntb+'.';
           end;
        end;

        tbcampo.First;
        while not tbcampo.Eof do begin

              if tbcampo['x']<>null then begin

                 //aniversario  dia
                 if lowercase(tbcampo.fieldbyname('nome').AsString)='dnascimento' then
                    fil := fil + ' and  extract(day from '+ntba+'nascimento) = ' +
                           quotedstr(tbcampo.fieldbyname('x').AsString)

                 //aniversario mes
                 else if lowercase(tbcampo.fieldbyname('nome').AsString)='nascimento' then
                    fil := fil + ' and  extract(month from '+ntba+'nascimento) = ' +
                           quotedstr(tbcampo.fieldbyname('x').AsString)


                 //menor e maior
                 else if (StrIsfloat(tbcampo.fieldbyname('_x').AsString)=true) and
                    (StrIsfloat(tbcampo.fieldbyname('x').AsString)=true) then
                    fil := fil + ' and '+ ntba+tbcampo.fieldbyname('nome').AsString+ ' >= '+
                                 realdblstr(strtofloat(tbcampo.fieldbyname('x').asstring))+
                                 ' and '+ ntba+tbcampo.fieldbyname('nome').AsString+ ' <= '+
                                 realdblstr(strtofloat(tbcampo.fieldbyname('_x').asstring))

                 //periodo
                 else if (StrIsDate(tbcampo.fieldbyname('_x').AsString)=true) and
                    (StrIsDate(tbcampo.fieldbyname('x').AsString)=true) then
                    fil := fil + ' and '+ ntba+tbcampo.fieldbyname('nome').AsString+ ' between '+
                                 quotedstr(formatdatetime('yyyy-mm-dd',tbcampo.fieldbyname('x').AsDateTime))+
                                 ' and '+quotedstr(formatdatetime('yyyy-mm-dd',tbcampo.fieldbyname('_x').AsDateTime))

                 //data >=
                 else if copy(tbcampo.fieldbyname('nome').AsString,1,3)  ='hhh' then
                    fil := fil + ' and '+ntba+copy(tbcampo.fieldbyname('nome').AsString,4,30)+ ' >= '+
                                 quotedstr(formatdatetime('yyyy-mm-dd',tbcampo.fieldbyname('x').AsDateTime))

                 //data <
                 else if copy(tbcampo.fieldbyname('nome').AsString,1,2)  ='hh' then
                    fil := fil + ' and '+ ntba+copy(tbcampo.fieldbyname('nome').AsString,3,30)+ ' < '+
                                 quotedstr(formatdatetime('yyyy-mm-dd',tbcampo.fieldbyname('x').AsDateTime))

                 //outros
                 else
                    fil := fil + ' and '+ ntba+tbcampo.fieldbyname('nome').AsString+ ' = '+
                                   quotedstr(tbcampo.fieldbyname('x').AsString);


              end;
              tbcampo.Next;
        end;

        sqld.SQL.Clear;
        sqld.SQL.Add(fil+flag+gpby+criterio+criterio2) ;
        //debugstr(sql);
        if tabest.Active then begin
           tabest.close;
           tabest.open;
        end else begin
           sqld.Close;
           sqld.Open;
        end;


        if fcadg <> nil then
           close
        else
           campogradeExecute(self);

        if frelatorio <> nil then
           titgrade(frelatorio.grade,frelatorio.tabela,nil);

       close;    
end;

procedure Tffiltrocad.campogradeExecute(Sender: TObject);
var
i:integer;
begin

        if rel=false then
           i:=1
        else i:=0;

        tb.First;
        while not tb.Eof do begin
              if tb['x']= 'X' then
                 grade.Columns[tb.RecNo-i].Visible := true
              else
                 grade.Columns[tb.RecNo-i].Visible := false;
              tb.Next;
        end;

        if lowercase(grade.Columns[0].FieldName) ='chave' then
           grade.Columns[0].Visible:=false;

        grade.Repaint;
end;

procedure Tffiltrocad.raExecute(Sender: TObject);
begin
      with sender as tradiogroup do begin
           tbcampo.Locate('nome',name,[]);
           tbcampo.edit;

           if itemindex>0 then
              tbcampo['x'] := copy(items[ItemIndex],1,1)
           else
              tbcampo['x'] :=null;
           tbcampo.Post;
     end;
end;

procedure Tffiltrocad.maExecute(Sender: TObject);
begin
      with sender as tmaskedit do begin
           tbcampo.Locate('nome',name,[]);
           tbcampo.edit;

           if copy(name,1,1)='_' then
             if text<>'  /  /    ' then
                tbcampo['_x'] := text
             else
                tbcampo['_x'] :=null;

           if copy(name,1,1)<>'_' then
             if text<>'  /  /    ' then
                tbcampo['x'] := text
             else
                tbcampo['x'] :=null;

           tbcampo.Post;

           if text='  /  /    ' then clear;

           if text<>'  /  /    ' then
              if StrIsDate(text)=false then begin
                 showmessage('Esta data não é válida. Digite novamente!!!');
                 setfocus;
              end;
           color:=clwhite;   
     end;

end;

procedure Tffiltrocad.chExecute(Sender: TObject);
begin
      with sender as TComboBox do begin
           tbcampo.Locate('nome',name,[]);
           tbcampo.edit;


           if (tbcampo['nome'] = 'nascimento') and
              (text<>'') then
              tbcampo['x'] := inttostr(itemindex+1)

           else if text<>'' then
              tbcampo['x'] := text
           else
              tbcampo['x'] :=null;

           tbcampo.Post;
           color:=clwhite;
     end;

end;

procedure Tffiltrocad.maenterExecute(Sender: TObject);
begin
      with sender as tmaskedit do
           color := clinfobk;
end;

procedure Tffiltrocad.chenterExecute(Sender: TObject);
begin
      with sender as TComboBox do
           color := clinfobk;

end;

procedure Tffiltrocad.TabSheet1Show(Sender: TObject);
begin
          TabSheet1.Highlighted := true;
          TabSheet2.Highlighted := false;
end;

procedure Tffiltrocad.TabSheet2Show(Sender: TObject);
begin
          TabSheet2.Highlighted := true;
          TabSheet1.Highlighted := false;
end;

procedure Tffiltrocad.dblExecute(Sender: TObject);
begin
      with sender as tedit do begin
           tbcampo.Locate('nome',name,[]);
           tbcampo.edit;

           if copy(name,1,1)='_' then
             if text<>'' then
                tbcampo['_x'] := text
             else
                tbcampo['_x'] :=null;

           if copy(name,1,1)<>'_' then
             if text<>'' then
                tbcampo['x'] := text
             else
                tbcampo['x'] :=null;

           tbcampo.Post;

           if text='' then clear;

           if text<>'' then
              if StrIsfloat(text)=false then begin
                 showmessage(pchar(text+' não é um número válido. Digite novamente!!!'));
                 setfocus;
              end;
           color:=clwhite;
     end;

end;

procedure Tffiltrocad.dblenterExecute(Sender: TObject);
begin
      with sender as tedit do
           color := clinfobk;

end;

end.



