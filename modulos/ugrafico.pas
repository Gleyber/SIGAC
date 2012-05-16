unit ugrafico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, ComCtrls, Grids, MXGRID, MXPIVSRC,
  MXDB, Mxstore, DB, DBTables, MXTABLES, TeeProcs, TeEngine, Chart, MXGRAPH,
  Series, Buttons, DbChart, DBGrids, ActnList, FMTBcd, DBClient, Provider,
  SqlExpr, Spin;

type
  Tfgrafico = class(TForm)
    Panel1: TPanel;
    Bevel4: TBevel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    Label9: TLabel;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    e1: TSpinEdit;
    e2: TSpinEdit;
    SpinEdit1: TSpinEdit;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    CheckBox3: TCheckBox;
    CheckBox2: TCheckBox;
    DBChart1: TDBChart;
    BarSeries1: TBarSeries;
    SpeedButton3: TSpeedButton;
    RadioGroup2: TRadioGroup;
    ds: TDataSource;
    rindex: TRadioGroup;
    tabela: TClientDataSet;
    tabelanome: TStringField;
    tabelatotal: TFloatField;
    tabelacont: TIntegerField;
    tabelanum: TFloatField;
    tabeladata: TDateField;
    tabelanm: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure e1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public


    { Public declarations }
  end;

var
  fgrafico: Tfgrafico;

implementation

//uses ureports;


{$R *.dfm}

procedure Tfgrafico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Release;
end;

{procedure Tfgrafico.Query1UpdateError(DataSet: TDataSet;
  E: EDatabaseError; UpdateKind: TUpdateKind;
  var UpdateAction: TUpdateAction);
begin
  ShowMessage('Não há dados para consulta');
  abort;
end;}

procedure Tfgrafico.ComboBox1Click(Sender: TObject);
begin
  if BarSeries1 is TCustomBarSeries then
    BarSeries1.BarStyle := TBarStyle(ComboBox1.ItemIndex); { <-- change bar style }
end;

procedure Tfgrafico.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    dbchart1.Legend.Visible := True
  else
    dbchart1.Legend.Visible := False;
end;

procedure Tfgrafico.SpeedButton1Click(Sender: TObject);
var
imp : string;
total:real;
begin

{         imp :='1';
          if inputquery('Imprimir', 'Digite uma opção de impressão:' + #13 + #13 +
             '1 = Imprime o gráfico inteiro' + #13 +
             '2 = Imprime a penas os valores '+#13+
             'Esc = Cancela ', imp) then else abort;

             if (imp <> '1') and (imp<>'2') then abort;

             if imp ='1' then DBChart1.PrintLandscape

             else if imp ='2' then begin

                      total :=0;
                      tabela.First;
                      tabela.DisableControls;
                      while not tabela.Eof do begin
                            total := total + tabela.fieldbyname('total').asfloat;
                            tabela.Next;
                      end;
                      tabela.EnableControls;

                      application.Createform(tfreports,freports);
                      freports.qgenerico.DataSource := ds;

                      freports.ltitulo.Caption :=  caption;
                      freports.RLBand13.Destroy;
                      freports.pcabeca.Destroy;

                      freports.lt2.DataSource := ds;
                      freports.l2.Caption := 'Nome';
                      freports.lt2.DataField := 'Nome';
                      freports.lt2.Width := 400;

                      freports.lt10.DataSource := ds;
                      freports.l10.Caption := 'TOTAL';
                      freports.lt10.DataField := 'total';

                      freports.ltotal.Caption := 'SOMA =  '+ format('%n',[Total]);
                      freports.qgenerico.PreviewModal;

                      freports.release;


             end;


 }
end;

procedure Tfgrafico.RadioGroup1Click(Sender: TObject);
begin
          dbChart1.Legend.Alignment:=TLegendAlignment(RadioGroup1.ItemIndex);
end;

procedure Tfgrafico.CheckBox2Click(Sender: TObject);
begin
  dbChart1.View3d:=CheckBox2.Checked; { <-- 3d on / off }
end;

procedure Tfgrafico.SpinEdit1Change(Sender: TObject);
begin

          BarSeries1.BarWidthPercent:=SpinEdit1.Value-Round(SpinEdit1.Value*55.0/100.0);

end;

procedure Tfgrafico.BitBtn1Click(Sender: TObject);
begin
        dbChart1.ZoomPercent(105);
end;

procedure Tfgrafico.BitBtn2Click(Sender: TObject);
begin
        dbChart1.ZoomPercent(95);
end;

procedure Tfgrafico.BitBtn3Click(Sender: TObject);
begin
  dbChart1.UndoZoom;
end;

procedure Tfgrafico.CheckBox3Click(Sender: TObject);
begin

  barSeries1.Marks.Visible:=CheckBox3.Checked; { switch on/off Marks }
  
end;

procedure Tfgrafico.SpeedButton3Click(Sender: TObject);
begin

        tabela.Filter := 'cont >= ' + quotedstr(e1.Text) +
                         ' and cont <= ' + quotedstr(e2.Text);
        tabela.Filtered := true;
        tabela.IndexName:= 'total';
        dbchart1.RefreshData;
 
end;

procedure Tfgrafico.FormShow(Sender: TObject);

begin
        SpeedButton3Click(self);
end;

procedure Tfgrafico.RadioGroup2Click(Sender: TObject);
begin
        if RadioGroup2.ItemIndex = 0 then
           tabela.IndexName := 'totaldesc'
        else if RadioGroup2.ItemIndex = 1 then
           tabela.IndexName := 'total'
        else begin

             if tabela['num']  <> null then tabela.IndexFieldNames := 'num' else
             if tabela['data'] <> null then tabela.IndexFieldNames := 'data' else
                                            tabela.IndexFieldNames := 'nome';
        end;

        dbchart1.RefreshData;
end;

procedure Tfgrafico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13)  then
    Perform(wm_nextdlgctl, 0,0);
  if (key = 27) then
    Perform(wm_nextdlgctl, 1,0);

end;

procedure Tfgrafico.e1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
        if key = 13 then SpeedButton3Click(self);
end;

end.
