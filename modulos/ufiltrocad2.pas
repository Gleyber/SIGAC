unit ufiltrocad2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls, DB, DBClient,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids;

type
  Tffiltrocad2 = class(TForm)
    panimal: TPanel;
    BTOK: TSpeedButton;
    tbcampo: TClientDataSet;
    ds: TDataSource;
    sq: TScrollBox;
    Label5: TLabel;

    procedure criadbcombo(nomecampo:string);
    procedure criadbedit(nomecampo:string);

    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTOKClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

  topcp:integer;
  tz_    :tzquery;
  tabela_:tclientdataset;

    { Private declarations }
  public
    { Public declarations }

    constructor Create(AOwner: TComponent; tabela:tclientdataset; tz:tzquery); reintroduce;

  end;

var
  ffiltrocad2: Tffiltrocad2;

implementation

{$R *.dfm}


uses funcoes, udm;

constructor Tffiltrocad2.Create(AOwner: TComponent; tabela:tclientdataset; tz:tzquery);




var
i,count:integer;
dados:boolean;
begin

      Inherited Create(AOwner);

      topcp := 7;
      dados := false;


       if tz <> nil then begin
          tz_:=tz;

         //campos strings
         for i:=0 to tz.FieldCount-1 do begin

            if ((tz.fieldbyname(tz.Fields[i].FieldName).ClassName = 'TStringField') or
                (tz.fieldbyname(tz.Fields[i].FieldName).ClassName = 'TStringField'))  then begin

                try
                tbcampo.FieldDefs.Add(tz.Fields[i].FieldName, ftString, tz.Fields[i].Size , False);
                tbcampo.FieldDefs.Add('__'+tz.Fields[i].FieldName, ftString, tz.Fields[i].Size , False);
                except end;
                dados := true;
            end;
         end;



       //preenche os dados
       if (tz <> nil) and (dados) then begin

          tbcampo.CreateDataSet;
          tbcampo.Open;

          tz.First;
          while not tz.Eof do begin
                tbcampo.Insert;

                for i:=0 to tz.FieldCount-1 do begin
                   if ((tz.fieldbyname(tz.Fields[i].FieldName).ClassName = 'TStringField') or
                       (tz.fieldbyname(tz.Fields[i].FieldName).ClassName = 'TStringField'))  then begin

                        if tz.fieldbyname(tz.Fields[i].FieldName).AsString <> '' then
                           tbcampo[tz.Fields[i].FieldName] := tz.fieldbyname(tz.Fields[i].FieldName).AsString;
                   end;
                end;
                tbcampo.Post;
                tz.Next;
          end;
       end;



         //cria os combos
         for i:=0 to tz.FieldCount-1 do begin

            if ((tz.fieldbyname(tz.Fields[i].FieldName).ClassName = 'TStringField') or
                (tz.fieldbyname(tz.Fields[i].FieldName).ClassName = 'TStringField'))  then begin

                try
                   criadbcombo(tz.Fields[i].FieldName);
                except end;
            end;
         end;





         //campos valores
         topcp := topcp +20;
         tbcampo.Close;
         for i:=0 to tz.FieldCount-1 do begin



            if ((tz.fieldbyname(tz.Fields[i].FieldName).ClassName = 'TLargeintField') or
                (tz.fieldbyname(tz.Fields[i].FieldName).ClassName = 'TTimeField')     or
                (tz.fieldbyname(tz.Fields[i].FieldName).ClassName = 'TFloatField')    or
                (tz.fieldbyname(tz.Fields[i].FieldName).ClassName = 'TIntegerField'))  then begin

                try
                tbcampo.FieldDefs.Add(tz.Fields[i].FieldName, ftFloat, 0 , False);
                tbcampo.FieldDefs.Add('__'+tz.Fields[i].FieldName, ftFloat, 0 , False);
                except end;

                try
                   criadbedit(tz.Fields[i].FieldName);
                except end;
            end;
         end;

       end;//fiz do tz







      //se o componente for tabela 
      if tabela <> nil then begin
          tabela_:=tabela;

         //campos strings
         for i:=0 to tabela.FieldCount-1 do begin

            if ((tabela.fieldbyname(tabela.Fields[i].FieldName).ClassName = 'TStringField') or
                (tabela.fieldbyname(tabela.Fields[i].FieldName).ClassName = 'TStringField'))  then begin

                try
                tbcampo.FieldDefs.Add(tabela.Fields[i].FieldName, ftString, tabela.Fields[i].Size , False);
                tbcampo.FieldDefs.Add('__'+tabela.Fields[i].FieldName, ftString, tabela.Fields[i].Size , False);
                except end;
                dados := true;
            end;
         end;



       //preenche os dados
       if (tabela <> nil) and (dados) then begin

          try
             tbcampo.CreateDataSet;
             tbcampo.Open;
          except end;


          if tbcampo.Active then begin
              tabela.First;
              tabela.DisableControls;

              while not tabela.Eof do begin
                    tbcampo.Insert;

                    for i:=0 to tabela.FieldCount-1 do begin
                       if ((tabela.fieldbyname(tabela.Fields[i].FieldName).ClassName = 'TStringField') or
                           (tabela.fieldbyname(tabela.Fields[i].FieldName).ClassName = 'TStringField'))  then begin

                            if tabela.fieldbyname(tabela.Fields[i].FieldName).AsString <> '' then
                               tbcampo[tabela.Fields[i].FieldName] := tabela.fieldbyname(tabela.Fields[i].FieldName).AsString;
                       end;
                    end;
                    tbcampo.Post;
                    tabela.Next;
              end;
              tabela.EnableControls;

           end;   
       end;



         //cria os combos
         for i:=0 to tabela.FieldCount-1 do begin

            if ((tabela.fieldbyname(tabela.Fields[i].FieldName).ClassName = 'TStringField') or
                (tabela.fieldbyname(tabela.Fields[i].FieldName).ClassName = 'TStringField'))  then begin

                try
                   criadbcombo(tabela.Fields[i].FieldName);
                except end;
            end;
         end;





         //campos valores
         topcp := topcp +20;
         tbcampo.Close;
         for i:=0 to tabela.FieldCount-1 do begin



            if ((tabela.fieldbyname(tabela.Fields[i].FieldName).ClassName = 'TLargeintField') or
                (tabela.fieldbyname(tabela.Fields[i].FieldName).ClassName = 'TTimeField')     or
                (tabela.fieldbyname(tabela.Fields[i].FieldName).ClassName = 'TFloatField')    or
                (tabela.fieldbyname(tabela.Fields[i].FieldName).ClassName = 'TIntegerField'))  then begin

                try
                tbcampo.FieldDefs.Add(tabela.Fields[i].FieldName, ftFloat, 0 , False);
                tbcampo.FieldDefs.Add('__'+tabela.Fields[i].FieldName, ftFloat, 0 , False);
                except end;

                try
                   criadbedit(tabela.Fields[i].FieldName);
                except end;
            end;
         end;

       end;//fiz do tabela

       tbcampo.CreateDataSet;
       tbcampo.Open;

       if topcp > resolucao then Height := resolucao-40
       else Height :=topcp +70;
       imagepanel('imagemenu1', altop, panimal, '',menucad);

end;








procedure Tffiltrocad2.criadbcombo(nomecampo:string);
var
  i:integer;
  combo,combo2:TdbComboBox;
  lb,lb2:tlabel;
  cp:string;
begin
           nomecampo :=  lowercase(nomecampo);
           //nao criar se estes forem es campos
           if   (nomecampo = 'linkvenda') or
                (nomecampo = 'tipoestoque') or
                (nomecampo = 'chavepedido')or
                (nomecampo = 'chavepedido_1')or
                (nomecampo = 'chave1')or
                (nomecampo = 'chave')or
                (nomecampo = 'link')or
                (nomecampo = 'chavegrade')or
                (nomecampo = 'estoquedepois')or
                (nomecampo = 'estoqueantes')or
                (nomecampo = 'divergencia')or
                (nomecampo = 'contado')or
                (nomecampo =  'obs1') then

           else begin

           with combo do begin
               combo:= TdbComboBox.Create(application);
               Width := 191;
               Height := 16;

               left       :=114;
               datafield  := nomecampo;
               name       := nomecampo;

               top:=topcp;
               BevelKind := bkFlat;
               Ctl3D := True;
               DropDownCount := 30;
               ItemHeight := 12;
               Parent := sq;
               datasource := ds;
               style := csOwnerDrawFixed;

               tbcampo.IndexFieldNames := nomecampo;
               tbcampo.First;
               cp :=  tbcampo.fieldbyname(nomecampo).AsString;
               Items.Add(' ');
               if cp <>'' then  Items.Add(cp);
                     

               while not tbcampo.Eof do begin
                     if tbcampo.fieldbyname(nomecampo).AsString <> cp then begin
                        cp :=  tbcampo.fieldbyname(nomecampo).AsString;
                        if cp <> '' then combo.Items.Add(cp);
                     end;
                     tbcampo.Next;
               end;

           end;

          if combo.Items.Count <=1 then combo.Destroy

          else begin

               with combo2 do begin
                   combo2:= TdbComboBox.Create(application);
                   Width := 191;
                   Height := 16;

                   left       :=338;
                   datafield  := '__'+nomecampo;
                   name       := '__'+nomecampo;

                   top:=topcp;
                   BevelKind := bkFlat;
                   Ctl3D := True;
                   DropDownCount := 30;
                   ItemHeight := 12;
                   Parent := sq;
                   text:='';
                   datasource := ds;
                   style := csOwnerDrawFixed;
               end;

               combo2.Items := combo.Items;
               combo.ItemIndex :=0;


              lb := tlabel.Create(application);
              with lb do begin
                Parent := sq;
                left := 0;
                caption := capcp(nomecampo);
                autosize := false;
                width:=110;
                top := topcp+2;
                height:=17;
                Alignment := taRightJustify;

               end;



              lb2 := tlabel.Create(application);
              with lb2 do begin
                Parent := sq;
                caption := 'OU';
                autosize := true;
                width:=125;
                top := topcp+2;
                height:=17;
                left := 315;
               end;

             topcp := topcp + 20;
           end;
        end;
end;



procedure Tffiltrocad2.criadbedit(nomecampo:string);
var
  i:integer;
  edit,edit2:tdbedit;
  lb,lb2,lb3:tlabel;
begin


           nomecampo :=  lowercase(nomecampo);
           //nao criar se estes forem es campos
           if   (nomecampo = 'linkvenda') or
                (nomecampo = 'tipoestoque') or
                (nomecampo = 'chavepedido')or
                (nomecampo = 'chavepedido_1')or
                (nomecampo = 'chave1')or
                (nomecampo = 'chave')or
                (nomecampo = 'link')or
                (nomecampo = 'chavegrade')or
                (nomecampo = 'estoquedepois')or
                (nomecampo = 'estoqueantes')or
                (nomecampo = 'divergencia')or
                (nomecampo = 'contado')or
                (nomecampo =  'obs1') then

           else begin

           with edit do begin
               edit:= tdbedit.Create(application);
               Width := 100;
               Height := 16;

               left       :=205;
               datafield  := nomecampo;
               name       := nomecampo;

               top:=topcp;
               BevelInner := bvLowered;
               BevelKind := bkFlat;
               BorderStyle := bsNone;
               Parent := sq;
               datasource := ds;
               onenter := fdm.Enterdbedit;
               onexit  := fdm.Exitdbedit;

           end;


           with edit2 do begin
               edit2:= tdbedit.Create(application);
               Width := 100;
               Height := 16;

               left       :=338;
               datafield  := '__'+nomecampo;
               name       := '__'+nomecampo;

               top:=topcp;
               BevelInner := bvLowered;
               BevelKind := bkFlat;
               BorderStyle := bsNone;
               Parent := sq;
               datasource := ds;
               onenter := fdm.Enterdbedit;
               onexit  := fdm.Exitdbedit;
               
           end;



          lb := tlabel.Create(application);
          with lb do begin
            Parent := sq;
            left := 70;
            caption := capcp(nomecampo);
            autosize := false;
            width:=110;
            top := topcp+2;
            height:=17;
            Alignment := taRightJustify;

           end;


          lb2 := tlabel.Create(application);
          with lb2 do begin
            Parent := sq;
            caption := 'A';
            autosize := true;
            width:=125;
            top := topcp+2;
            height:=17;
            left := 318;
           end;

          lb3 := tlabel.Create(application);
          with lb3 do begin
            Parent := sq;
            caption := 'DE';
            autosize := true;
            width:=125;
            top := topcp+2;
            height:=17;
            left := edit.Left-20 ;
           end;

         topcp := topcp + 20;
      end;
end;




procedure Tffiltrocad2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if key = vk_insert then BTOKClick(self);
      if (key = 13) then Perform(wm_nextdlgctl, 0,0);
      if (key = 27) then close;
end;

procedure Tffiltrocad2.BTOKClick(Sender: TObject);
var
i:integer;
filtro:WideString;
begin

         focuscontrol(nil);
         filtro :='chave >0';
         for i:=0 to tbcampo.FieldCount-1 do begin
            //strings
           // showmessage(tbcampo.Fields[i].FieldName+'---'+tbcampo.Fields[i].ClassName);
            if ((tbcampo.fieldbyname(tbcampo.Fields[i].FieldName).ClassName = 'TStringField') or
                (tbcampo.fieldbyname(tbcampo.Fields[i].FieldName).ClassName = 'TTimeField'))  then begin

                if (copy(tbcampo.Fields[i].FieldName,1,2) <> '__') and
                   (tbcampo.fieldbyname(tbcampo.Fields[i].FieldName).AsString <> '') then

                   if tbcampo.fieldbyname('__'+tbcampo.Fields[i].FieldName).AsString ='' then
                      filtro := filtro + ' and ' + tbcampo.Fields[i].FieldName + ' = ' + quotedstr(tbcampo.fieldbyname(tbcampo.Fields[i].FieldName).AsString)
                   else
                      filtro := filtro + ' and (' + tbcampo.Fields[i].FieldName + ' = ' + quotedstr(tbcampo.fieldbyname(tbcampo.Fields[i].FieldName).AsString)+
                                         ' or ' + tbcampo.Fields[i].FieldName + ' = ' + quotedstr(tbcampo.fieldbyname('__'+tbcampo.Fields[i].FieldName).AsString)+')';



            //valores
            end else begin

                if (copy(tbcampo.Fields[i].FieldName,1,2) <> '__') and
                   (tbcampo.fieldbyname(tbcampo.Fields[i].FieldName).AsFloat >0) then

                   if tbcampo.fieldbyname('__'+tbcampo.Fields[i].FieldName).AsFloat <=0 then
                      filtro := filtro + ' and ' + tbcampo.Fields[i].FieldName + ' = ' + realdblstr(tbcampo.fieldbyname(tbcampo.Fields[i].FieldName).AsFloat)
                   else
                      filtro := filtro + ' and (' + tbcampo.Fields[i].FieldName + ' >= ' + realdblstr(tbcampo.fieldbyname(tbcampo.Fields[i].FieldName).AsFloat)+
                                         ' and ' + tbcampo.Fields[i].FieldName + ' <= ' + realdblstr(tbcampo.fieldbyname('__'+tbcampo.Fields[i].FieldName).AsFloat)+')';


            end;

         end;




         if tz_ <> nil then begin
            tz_.Filter   := filtro;
            tz_.Filtered := true;
         end;

         if tabela_ <> nil then begin
            tabela_.Filter   := filtro;
            tabela_.Filtered := true;
         end;

        // showmessage(filtro);

      close;
end;

procedure Tffiltrocad2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      RELEASE;
      ffiltrocad2 := nil;
end;

end.

