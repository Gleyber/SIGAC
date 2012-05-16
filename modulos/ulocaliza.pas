unit ulocaliza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, Mask, jpeg, ExtCtrls, Grids, DBGrids,
  Buttons, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tflocaliza = class(TForm)
    ds: TDataSource;
    grade: TDBGrid;
    Panel1: TPanel;
    Label2: TLabel;
    elocalizar: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure elocalizarEnter(Sender: TObject);
    procedure elocalizarExit(Sender: TObject);
    procedure elocalizarChange(Sender: TObject);
    procedure elocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure elocalizarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gradeDblClick(Sender: TObject);
    procedure gradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
  tabela:tclientdataset;
  tz:tzquery;
  t,z:boolean;
  campo,campo2,campo3,campo4:string;
    { Private declarations }
  public
    { Public declarations }

    constructor Create(AOwner: TComponent;  ntb:tclientdataset; tz_:tzquery; campo_,campo2_,campo3_,campo4_ :string); reintroduce;


  end;

var
  flocaliza: Tflocaliza;

implementation

uses funcoes, udm;
{$R *.dfm}


constructor Tflocaliza.Create(AOwner: TComponent;  ntb:tclientdataset; tz_: tzquery; campo_,campo2_,campo3_,campo4_ :string);
begin

          Inherited Create(AOwner);

          campo := campo_;
          campo2 := campo2_;
          campo3 := campo3_;
          campo4 := campo4_;

          if ntb <> nil then begin
             tabela := tclientdataset.create(application);
             tabela := ntb;
             tabela.indexfieldnames := campo;
             ds.DataSet := tabela;
             t:=true;
             formatacptabela(tabela,nil,2);
          end;

          if tz_ <> nil then begin
             tz := tzquery.create(application);
             tz := tz_;
             tz.indexfieldnames := campo;
             ds.DataSet := tz;
             z:=true;
             formatacptabela(nil,tz,2);
          end;

          label2.Caption := 'Localizar por '+campo+' (A~Z)';

          ncol :=0;

          criacoluna(grade,campo,campo,240);

          if campo2 <> '' then begin
             criacoluna(grade,campo2,campo2,100);
             Width :=  Width + 100;
          end;

          if campo3 <> '' then begin
             criacoluna(grade,campo3,campo3,100);
             Width :=  Width + 100;
          end;

          if campo4 <> '' then begin
             criacoluna(grade,campo4,campo4,100);
             Width :=  Width + 100;
          end;

         if ntb <> nil then titgrade(grade,tabela,nil)
                       else titgrade(grade,nil,tz);

          elocalizar.Width := grade.Width;
          label2.Width     := grade.Width;
          caption := uppercase(application.Title)+ '   -   LOCALIZAR';
          imagepanel('imt', altop, panel1, '',menucad);

end;



procedure Tflocaliza.FormKeyDown(Sender: TObject; var Key: word;
  Shift: TShiftState);
begin
          if key = 27 then Close;
end;

procedure Tflocaliza.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
end;

procedure Tflocaliza.elocalizarEnter(Sender: TObject);
begin
         elocalizar.Color := clinfobk;

end;
procedure Tflocaliza.elocalizarExit(Sender: TObject);
begin
         elocalizar.Color := clwhite;
end;

procedure Tflocaliza.elocalizarChange(Sender: TObject);
begin
         if t then
           loctabela(tabela,nil,elocalizar)
         else
           loctabela(nil,tz,elocalizar);

end;

procedure Tflocaliza.elocalizarKeyPress(Sender: TObject; var Key: Char);
begin

        if t  then begin

           if (tabela.fieldbyname(campo).ClassName = 'TIntegerField') or
              (tabela.fieldbyname(campo).ClassName = 'TFloatField')  then
              if not (key in ['0'..'9', #8,',','%']) then abort;

           if (tabela.fieldbyname(campo).ClassName = 'TDateField')  then
              if not (key in ['0'..'9', #8,'/','%']) then abort;
        end;

        if z  then begin
           try
           if (tz.fieldbyname(campo).ClassName = 'TIntegerField') or
              (tz.fieldbyname(campo).ClassName = 'TFloatField')  then
              if not (key in ['0'..'9', #8,',','%']) then abort;

           if (tz.fieldbyname(campo).ClassName = 'TDateField')  then
              if not (key in ['0'..'9', #8,'/','%']) then abort;
           except end;
        end;


end;

procedure Tflocaliza.elocalizarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if z  then begin
            if key = 40 then
              tz.Next;
            if key = 38 then
              tz.prior;
        end;


        if t  then begin
            if key = 40 then
              tabela.Next;
            if key = 38 then
              tabela.prior;
       end;

       if key = 13 then begin

          if vf then vf:=false;
          close;

       end;
end;

procedure Tflocaliza.gradeDblClick(Sender: TObject);
begin

        if codloc = 'V' then  vf := true;
        if vf then vf:=false;
        close;

end;

procedure Tflocaliza.gradeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key = 13 then close;
end;

end.


