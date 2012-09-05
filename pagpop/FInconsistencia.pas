unit FInconsistencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, fcOutlookList, fcButton, fcImgBtn, fcShapeBtn,
  fcClearPanel, fcButtonGroup, fcOutlookBar, StdCtrls, DBClient, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Provider, Mask, Buttons,
  ComCtrls, ppVar, ppCtrls, jpeg, ppPrnabl, ppClass, ppBands,
  ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  ppViewr, ppTypes, ppForms, ppPrvDlg, ppUtils, DBCtrls, wwdblook;

type
  TFrmInconsistencia = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    rg1Opcao: TRadioGroup;
    Bevel1: TBevel;
    lblExplic: TLabel;
    pnlLocalXWeb: TPanel;
    pnlWebXLocal: TPanel;
    dtpBaseLocal: TDataSetProvider;
    sqlBaseLocal: TZQuery;
    cdsBaseLocal: TClientDataSet;
    dtpBaseWeb: TDataSetProvider;
    sqlBaseWeb: TZQuery;
    cdsBaseWeb: TClientDataSet;
    PageControl1: TPageControl;
    tbsRelatorio: TTabSheet;
    tbsInsercao: TTabSheet;
    Panel3: TPanel;
    pnlPreviewBar: TPanel;
    spbPreviewPrint: TSpeedButton;
    spbPreviewWhole: TSpeedButton;
    spbPreviewFirst: TSpeedButton;
    spbPreviewPrior: TSpeedButton;
    spbPreviewNext: TSpeedButton;
    spbPreviewLast: TSpeedButton;
    spbPreviewWidth: TSpeedButton;
    spbPreview100Percent: TSpeedButton;
    Bevel2: TBevel;
    mskPreviewPercentage: TMaskEdit;
    mskPreviewPage: TMaskEdit;
    pnlCancelButton: TPanel;
    spbPreviewCancel: TSpeedButton;
    pnlStatusBar: TPanel;
    qryReport: TZQuery;
    dsReport: TDataSource;
    cdsReport: TClientDataSet;
    dtpReport: TDataSetProvider;
    qryAux: TZQuery;
    Label2: TLabel;
    cbbItem: TComboBox;
    btnSeek: TBitBtn;
    Label3: TLabel;
    edtItem: TEdit;
    grp1: TGroupBox;
    Label4: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    Label5: TLabel;
    edtCPF: TEdit;
    Label6: TLabel;
    edtRG: TEdit;
    Label7: TLabel;
    edtData: TEdit;
    Label8: TLabel;
    btnInsere: TBitBtn;
    procedure rg1OpcaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fcBtnRelClick(Sender: TObject);
    procedure spbPreviewPrintClick(Sender: TObject);
    procedure spbPreviewWholeClick(Sender: TObject);
    procedure spbPreviewWidthClick(Sender: TObject);
    procedure spbPreview100PercentClick(Sender: TObject);
    procedure spbPreviewFirstClick(Sender: TObject);
    procedure spbPreviewPriorClick(Sender: TObject);
    procedure mskPreviewPageKeyPress(Sender: TObject; var Key: Char);
    procedure spbPreviewNextClick(Sender: TObject);
    procedure spbPreviewLastClick(Sender: TObject);
    procedure mskPreviewPercentageKeyPress(Sender: TObject; var Key: Char);
    procedure spbPreviewCancelClick(Sender: TObject);
    procedure ppViewer1PageChange(Sender: TObject);
    procedure ppViewer1PrintStateChange(Sender: TObject);
    procedure ppViewer1StatusChange(Sender: TObject);
    procedure fcnBtnInsClick(Sender: TObject);
    procedure dblItemExit(Sender: TObject);
    procedure cbbItemCloseUp(Sender: TObject);
    procedure btnSeekClick(Sender: TObject);
    procedure btnInsereClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInconsistencia: TFrmInconsistencia;

implementation

uses udm, Funcoes, uConnect, ppPreviewFormSettings;

{$R *.dfm}

procedure TFrmInconsistencia.FormCreate(Sender: TObject);
begin
  TestCryptoIni;

  fdm.conectnet.Disconnect;
  ipnet       :=  sWebHost;
  databasenet :=  sWebDb;
  Usernet     :=  sWebUser;
  Passwordnet :=  sWebPwd;

  pnlWebXLocal.BringToFront;
end;

procedure TFrmInconsistencia.rg1OpcaoClick(Sender: TObject);
begin
  qryReport.Close;
  cdsReport.Close;

  if rg1Opcao.ItemIndex = 0 then
    lblExplic.Caption := 'Verificando dados existentes na base web que não existam na base local.'
  else
    lblExplic.Caption := 'Verificando dados existentes na base local que não existam na base web.';

  if Not cdsBaseLocal.Active then
  begin
    pnlWebXLocal.Visible:= True;
    pnlWebXLocal.Caption:= 'Abrindo base de dados para pesquisa... por favor, aguarde.';

    Update;

    cdsBaseLocal.Open;
    cdsBaseWeb.Open;

    pnlWebXLocal.Caption:= '';

    Update;
  end;

  tbsRelatorio.TabVisible := False;
  tbsInsercao.TabVisible  := False;
end;

procedure TFrmInconsistencia.fcBtnRelClick(
  Sender: TObject);
var
  sCPF   : string;
  sMsgI,
  sMsg   : string;
  bAchei : Boolean;
begin
  sMsgI := 'Montando dados para o relatório... confrontando dados.';

  if rg1Opcao.ItemIndex = 0 then
  begin // Diferenças entre base local x base web
    cdsBaseWeb.First;

    fdm.conectnet.Disconnect;
    fdm.conector.Disconnect;

    if not cdsReport.Active then
    begin
      cdsReport.Open;

      while not cdsBaseWeb.Eof do
      begin
        sCPF := QuotedStr(cdsBaseWeb.fieldbyname('cpf').AsString);



        cdsBaseWeb.edit;
        cdsBaseWeb['cpf']  := formatacpf_cnpj(FormatNumeric(cdsBaseWeb.fieldbyname('cpf').AsString));

        bAchei := cdsBaseLocal.Locate('cnpj',cdsBaseWeb.fieldbyname('cpf').AsString,[]);

//        selecione('SELECT * '+
//                  'FROM TBCLIENTE '+
//                  'WHERE REPLACE(REPLACE(REPLACE(REPLACE(CNPJ,''.'',''''),''-'',''''),''/'',''''),'' '','''')  = '+
//                    'REPLACE(REPLACE(REPLACE(REPLACE('+sCPF+',''.'',''''),''-'',''''),''/'',''''),'' '','''')');
        if (bAchei) and
           (cdsBaseWeb.FieldByName('nome').AsString <> cdsBaseLocal.FieldByName('nome').AsString) then
        begin
          cdsReport.Insert;
          cdsReport.FieldByName('cod').AsInteger            := cdsBaseWeb.FieldByName('cod').AsInteger;
          cdsReport.FieldByName('nome').AsString            := cdsBaseWeb.FieldByName('nome').AsString;
          cdsReport.FieldByName('cpf').AsString             := cdsBaseWeb.FieldByName('cpf').AsString;
          cdsReport.FieldByName('rg').AsString              := cdsBaseWeb.FieldByName('rg').AsString;
          cdsReport.FieldByName('data_insercao').AsDateTime := cdsBaseWeb.FieldByName('data_insercao').AsDateTime;
          cdsReport.Post;
        end;
        sMsg := sMsgI + ' Analisando o registro '+ IntToStr(cdsBaseWeb.RecNo)+' de '+IntToStr(cdsBaseWeb.RecordCount)+'.';
        pnlWebXLocal.Caption:= sMsg;
        Update;

        cdsBaseWeb.Next;
      end;
    end;
    pnlLocalXWeb.BringToFront;

    tbsRelatorio.TabVisible := True;
    tbsInsercao.TabVisible  := False;

    ppLabel2.Caption :=  'Ausencias encontradas na base local';

    ppViewer1.Reset;

    ppViewer1.Report := rReport;

    rReport.PrintToDevices;
  end
  else
  begin // Diferenças entre base web x base local
    cdsBaseLocal.First;

    cdsReport.Open;

    fdm.conectnet.Disconnect;
    
    while not cdsBaseLocal.Eof do
    begin
      sCPF := QuotedStr(cdsBaseLocal.fieldbyname('cnpj').AsString);

      fdm.conector.Disconnect;
      fdm.conector.connect;

      selecione('SELECT * '+
                'FROM tab_clientes '+
                'WHERE REPLACE(REPLACE(REPLACE(REPLACE(cpf,''.'',''''),''-'',''''),''/'',''''),'' '','''')  = '+
                  'REPLACE(REPLACE(REPLACE(REPLACE('+sCPF+',''.'',''''),''-'',''''),''/'',''''),'' '','''')');
      if (not sqlpub.IsEmpty) and
         (cdsBaseLocal.FieldByName('nome').AsString <> sqlpub.FieldByName('nome').AsString) then
      begin
        cdsReport.Insert;
        cdsReport.FieldByName('cod').AsInteger            := cdsBaseLocal.FieldByName('cod').AsInteger;
        cdsReport.FieldByName('nome').AsString            := cdsBaseLocal.FieldByName('nome').AsString;
        cdsReport.FieldByName('cpf').AsString             := cdsBaseLocal.FieldByName('cpf').AsString;
        cdsReport.FieldByName('rg').AsString              := cdsBaseLocal.FieldByName('rg').AsString;
        cdsReport.FieldByName('data_insercao').AsDateTime := cdsBaseLocal.FieldByName('data_insercao').AsDateTime;

      end;
      sMsg := sMsgI + ' Analisando o registro '+ IntToStr(cdsBaseLocal.RecNo)+' de '+IntToStr(cdsBaseLocal.RecordCount)+'.';
      pnlWebXLocal.Caption:= sMsg;
      Update;

      cdsBaseLocal.Next;
    end;

    cdsReport.Post;

    pnlLocalXWeb.BringToFront;

    tbsRelatorio.TabVisible := True;
    tbsInsercao.TabVisible  := False;

    ppLabel2.Caption :=  'Ausencias encontradas na base web';

    ppViewer1.Reset;

    ppViewer1.Report := rReport;

    rReport.PrintToDevices;
  end;
end;

procedure TFrmInconsistencia.spbPreviewPrintClick(Sender: TObject);
begin
  ppViewer1.Print
end;

procedure TFrmInconsistencia.spbPreviewWholeClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsWholePage;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  pnlPreviewBar.SetFocus;
end;

procedure TFrmInconsistencia.spbPreviewWidthClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zsPageWidth;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  pnlPreviewBar.SetFocus;
end;

procedure TFrmInconsistencia.spbPreview100PercentClick(Sender: TObject);
begin
  ppViewer1.ZoomSetting := zs100Percent;

  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);

  pnlPreviewBar.SetFocus;
end;

procedure TFrmInconsistencia.spbPreviewFirstClick(Sender: TObject);
begin
  ppViewer1.FirstPage;
end;

procedure TFrmInconsistencia.spbPreviewPriorClick(Sender: TObject);
begin
  ppViewer1.PriorPage;
end;

procedure TFrmInconsistencia.mskPreviewPageKeyPress(Sender: TObject;
  var Key: Char);
var
  liPage: Longint;
begin
  if (Key = #13) then
  begin
     liPage := StrToInt(mskPreviewPage.Text);
     ppViewer1.GotoPage(liPage);
  end;
end;

procedure TFrmInconsistencia.spbPreviewNextClick(Sender: TObject);
begin
  ppViewer1.NextPage;
end;

procedure TFrmInconsistencia.spbPreviewLastClick(Sender: TObject);
begin
  ppViewer1.LastPage;
end;

procedure TFrmInconsistencia.mskPreviewPercentageKeyPress(Sender: TObject;
  var Key: Char);
var
  liPercentage: Integer;
begin
  if (Key = #13) then
    begin
      liPercentage := StrToIntDef(mskPreviewPercentage.Text, 100);

      ppViewer1.ZoomPercentage := liPercentage;

      spbPreviewWhole.Down := False;
      spbPreviewWidth.Down := False;
      spbPreview100Percent.Down := False;

      mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
    end; 
end;

procedure TFrmInconsistencia.spbPreviewCancelClick(Sender: TObject);
begin
  if ppViewer1.Report.Printing then
    ppViewer1.Cancel;
end;

procedure TFrmInconsistencia.ppViewer1PageChange(Sender: TObject);
begin
  mskPreviewPage.Text := IntToStr(ppViewer1.AbsolutePageNo);
  mskPreviewPercentage.Text := IntToStr(ppViewer1.CalculatedZoom);
end;

procedure TFrmInconsistencia.ppViewer1PrintStateChange(Sender: TObject);
var
  lPosition: TPoint;
begin

  if ppViewer1.Busy then
    begin
      mskPreviewPercentage.Enabled := False;
      mskPreviewPage.Enabled := False;

      pnlPreviewBar.Cursor := crHourGlass;

      ppViewer1.Cursor := crHourGlass;

      pnlStatusBar.Cursor := crHourGlass;

      spbPreviewCancel.Cursor := crArrow;

      spbPreviewCancel.Enabled := True;
    end
  else
    begin
      mskPreviewPercentage.Enabled := True;
      mskPreviewPage.Enabled := True;

      pnlPreviewBar.Cursor := crDefault;

      ppViewer1.Cursor := crDefault;

      pnlStatusBar.Cursor := crDefault;

      spbPreviewCancel.Cursor := crDefault;

      spbPreviewCancel.Enabled := False;
    end;

  GetCursorPos(lPosition);
  SetCursorPos(lPosition.X, lPosition.Y);

end;

procedure TFrmInconsistencia.ppViewer1StatusChange(Sender: TObject);
begin
  pnlStatusBar.Caption := ppViewer1.Status;
end;

procedure TFrmInconsistencia.fcnBtnInsClick(Sender: TObject);
begin
  tbsRelatorio.TabVisible := False;
  tbsInsercao.TabVisible  := True;

  dblItem.Visible := False;
  dblItem.Enabled := False;

  edtItem.Visible := True ;
  edtItem.Enabled := True;

  edtCodigo.Text  := '';
  edtNome.Text    := '';
  edtCPF.Text     := '';
  edtRG.Text      := '';
  edtData.Text    := '';
end;

procedure TFrmInconsistencia.dblItemExit(Sender: TObject);
begin
  btnSeek.SetFocus;
end;

procedure TFrmInconsistencia.cbbItemCloseUp(Sender: TObject);
begin

  if (cdsReport.Active) and (cbbItem.ItemIndex > -1) then
  begin
    if cbbItem.ItemIndex = 1 then
    begin // Nome
      dblItem.Visible := True;
      dblItem.Enabled := True;
      edtItem.Visible := False;
      edtItem.Enabled := False;
      dblItem.Text    := '';
    end
    else
    begin // Nome
      dblItem.Visible := False;
      dblItem.Enabled := False;
      edtItem.Visible := True;
      edtItem.Enabled := True;
      edtItem.Text    := '';
    end;

    edtCodigo.Text := '';
    edtNome.Text   := '';
    edtCPF.Text    := '';
    edtRG.Text     := '';
    edtData.Text   := '';
  end;
end;

procedure TFrmInconsistencia.btnSeekClick(Sender: TObject);
var
  sSql : string;
begin
  if (dblItem.Enabled) and (Trim(dblItem.Text) <> '') then
  begin
    edtCodigo.Text := cdsReport.FieldByName('cod').AsString;
    edtNome.Text   := cdsReport.FieldByName('nome').AsString;
    edtCPF.Text    := cdsReport.FieldByName('cpf').AsString;
    edtRG.Text     := cdsReport.FieldByName('rg').AsString;
    edtData.Text   := cdsReport.FieldByName('data_insercao').AsString;

    cdsBaseWeb.Locate('cod',cdsReport.FieldByName('cod').AsString,[]);
  end;

  if (edtItem.Visible) and (Trim(edtItem.Text) <> '') then
  begin
    if rg1Opcao.ItemIndex = 0 then
    begin  // Busca os dados na base web
      sSql := 'select c.cod, c.nome, c.cpf, c.rg, c.data_insercao from tab_clientes c ';
    end
    else
    begin  // Busca os dados na base local
      sSql := 'select c.codigo as cod, c.nome, c.cnpj as cpf, c.ie as rg, c.data as data_insercao from tbcliente c ';
    end;


    case cbbItem.ItemIndex of
     0 : // Código
         begin
           if rg1Opcao.ItemIndex = 0 then
             sSql := sSql + 'where c.cod = '+edtItem.Text
           else
             sSql := sSql + 'where c.codigo = '+edtItem.Text;
         end;
     1 : // Nome
         begin
           sSql := sSql + 'where c.nome = '+QuotedStr(edtItem.Text);
         end;
     2 : // cpf
         begin
           if rg1Opcao.ItemIndex = 0 then
             sSql := sSql + 'where c.cpf = '+QuotedStr(edtItem.Text)
           else
             sSql := sSql + 'where c.cnpj = '+QuotedStr(edtItem.Text);
         end;
     3 : // rg
         begin
           if rg1Opcao.ItemIndex = 0 then
             sSql := sSql + 'where c.rg = '+QuotedStr(edtItem.Text)
           else
             sSql := sSql + 'where c.ie = '+QuotedStr(edtItem.Text);
         end;
     4 : // data de inserção
         begin
           if rg1Opcao.ItemIndex = 0 then
             sSql := sSql + 'where c.data_insercao = '+QuotedStr( FormatDateTime('yyyy-mm-dd', StrToDate(edtItem.Text)))
           else
             sSql := sSql + 'where c.data = '+QuotedStr( FormatDateTime('yyyy-mm-dd', StrToDate(edtItem.Text)));
         end;
    end;

    try
      TestCryptoIni;

      qryAux.SQL.Clear;
      qryAux.SQL.Add(sSql);
      if rg1Opcao.ItemIndex = 0 then
      begin
        fdm.conectnet.Disconnect;
        qryAux.Connection := fdm.conectnet;
        fdm.conectnet.Connect;
      end
      else
      begin
        fdm.conector.Disconnect;
        qryAux.Connection := fdm.conector;
        fdm.conector.Connect;
      end;
      qryAux.Open;
    except
      qryAux.SQL.SaveToFile('c:\erro.sql');

      Application.MessageBox('Erro na pesquisa do registro. Verfique o arquivo de erro.',
                             'Atenção', 0 + MB_ICONWARNING);
      Exit;
    end;

    if qryAux.IsEmpty then
    begin
      Application.MessageBox('Registro não localizado. Confira os dados no relatório.',
                             'Atenção', 0 + MB_ICONWARNING);
      Exit;
    end;

    if rg1Opcao.ItemIndex = 0 then
    begin
      cdsBaseWeb.Locate('cod',qryAux.FieldByName('cod').AsString,[]);

      sSql := 'select c.codigo as cod, c.nome, c.cnpj as cpf, c.ie as rg, c.data as data_insercao '+ #13 +
              'from tbcliente c '+ #13 +
              'where (c.cnpj = '+QuotedStr(cdsBaseWeb.FieldByName('cpf').AsString) +
              ' or c.ie = '+QuotedStr(cdsBaseWeb.FieldByName('rg').AsString) +')'+ #13 +
              ' and c.nome <> '+QuotedStr(cdsBaseWeb.FieldByName('nome').AsString);

      try
        qryAux.SQL.Clear;
        qryAux.Connection := fdm.conector;
        fdm.conector.Connect;
        qryAux.SQL.Add(sSql);
        qryAux.Open;
      except
        sqlpub.SQL.SaveToFile('c:\erro.sql');

        Application.MessageBox('Erro no confronto do registro. Verfique o arquivo de erro.',
                               'Atenção', 0 + MB_ICONWARNING);
        Exit;
      end;

      if qryAux.IsEmpty then
      begin
        Application.MessageBox('Registro não possui inconsistência. Confira os dados no relatório.',
                               'Atenção', 0 + MB_ICONWARNING);
        Exit;
      end;

      edtCodigo.Text := cdsBaseWeb.FieldByName('cod').AsString;
      edtNome.Text   := cdsBaseWeb.FieldByName('nome').AsString;
      edtCPF.Text    := cdsBaseWeb.FieldByName('cpf').AsString;
      edtRG.Text     := cdsBaseWeb.FieldByName('rg').AsString;
      edtData.Text   := cdsBaseWeb.FieldByName('data_insercao').AsString;
    end
    else
    begin
      cdsBaseLocal.Locate('cod',qryAux.FieldByName('cod').AsString,[]);

      sSql := 'select select c.cod, c.nome, c.cpf, c.rg, c.data_insercao '+ #13 +
              'from tab_clientes c '+ #13 +
              'where (c.cpf = '+QuotedStr(cdsBaseLocal.FieldByName('cnpj').AsString) +
              ' or c.rg = '+QuotedStr(cdsBaseLocal.FieldByName('ie').AsString) +')'+ #13 +
              ' and c.nome <> '+QuotedStr(cdsBaseLocal.FieldByName('nome').AsString);

      try
        qryAux.SQL.Clear;
        qryAux.Connection := fdm.conectnet;
        qryAux.SQL.Add(sSql);
        qryAux.Open;
      except
        qryAux.SQL.SaveToFile('c:\erro.sql');

        Application.MessageBox('Erro no confronto do registro. Verfique o arquivo de erro.',
                               'Atenção', 0 + MB_ICONWARNING);
        Exit;
      end;

      if qryAux.IsEmpty then
      begin
        Application.MessageBox('Registro não possui inconsistência. Confira os dados no relatório.',
                               'Atenção', 0 + MB_ICONWARNING);
        Exit;
      end;

      edtCodigo.Text := cdsBaseLocal.FieldByName('cod').AsString;
      edtNome.Text   := cdsBaseLocal.FieldByName('nome').AsString;
      edtCPF.Text    := cdsBaseLocal.FieldByName('cpf').AsString;
      edtRG.Text     := cdsBaseLocal.FieldByName('rg').AsString;
      edtData.Text   := cdsBaseLocal.FieldByName('data_insercao').AsString;
    end;
  end;
end;

procedure TFrmInconsistencia.btnInsereClick(Sender: TObject);
var
  sDatai,
  sDataNasc,
  sTipo,
  sCod,
  sDesc,
  sSql       : string;
begin
  if rg1Opcao.ItemIndex = 0 then
  begin
      if not fdm.conector.Connected then
        fdm.conector.Connect;

      if cdsBaseWeb['tipo']='2' then
        sTipo :=','+ QuotedStr('J')
      else
        sTipo :=','+ QuotedStr('F');

      if cdsBaseWeb['data_nascimento'] <> null then
         sDataNasc := ','+quotedstr(formatdatetime('yyyy-mm-dd',cdsBaseWeb.fieldbyname('data_nascimento').AsDateTime))
      else
         sDataNasc := ',null';

      if cdsBaseWeb['data_insercao'] <> null then
         sDatai := ','+quotedstr(formatdatetime('yyyy-mm-dd',strtodate(copy(cdsBaseWeb.fieldbyname('data_insercao').AsString ,1,10))))
      else
         sDatai := ',null';

      selecione('select max(codigo)as codigo from tbcliente');
      sCod := inttostr(sqlpub.fieldbyname('codigo').AsInteger + 1);

      sSql := 'insert into tbcliente( '+
              'transportadora'+
              ',filial'+
              ',np'+
              ',pontos'+
              ',fisjur'+
              ',nome'+
              ',codigogp'+
              ',cnpj'+
              ',ie '+
              ',nascimento '+
              ',data'+
              ',dtvenda'+
              ',statu'+
              ',CRO'+
              ',nomecurto'+
              ',endereco '+
              ',complemento'+
              ',bairro '+
              ',municipio'+
              ',uf'+
              ',cep'+
              ',fone'+
              ',fone2'+
              ',fone3'+
              ',email'+
              ',vendedor'+
              ',vinculo'+
              ',codigo'+
              ',TITULAR'+
              ',CNPJCONTA'+
              ',TPCONTA'+
              ',NBANCO'+
              ',BANCO'+
              ',CONTA'+
              ',AGENCIA'+
              ',TIPOCLIENTE'+
              ',cargo'+
              ',obs'+
              ') values('+
              quotedstr(cdsBaseWeb.fieldbyname('usuario').AsString)+
              ','+quotedstr(cdsBaseWeb.fieldbyname('senha').AsString)+
              ',"I"'+
              ',1'+
              sTipo+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('nome').AsString)+
              ','+ quotedstr(inttostr(cdsBaseWeb.fieldbyname('codigogrupo').asinteger))+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('cpf').AsString)+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('rg').AsString)+
              sDataNasc+
              sDatai+
              sDatai+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('crea').AsString)+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('numero_crea').AsString)+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('razao').AsString)+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('endereco').AsString)+
              ','+ quotedstr(Copy(cdsBaseWeb.fieldbyname('complemento').AsString,1,10))+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('bairro').AsString)+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('cidade').AsString)+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('estado').AsString)+
              ','+ quotedstr(formatnumeric(cdsBaseWeb.fieldbyname('cep').AsString))+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('telefone1').AsString)+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('telefone2').AsString)+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('celular').AsString)+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('email').AsString)+
              ',"SITE"'+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('tipo_user').AsString)+
              ','+ quotedstr(sCod) +
              ','+ quotedstr(cdsBaseWeb.fieldbyname('TITULAR').AsString)+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('CPFCNPJ_CONTA').AsString)+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('TIPO_CONTA').AsString)+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('NUMERO_BANCO').AsString)+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('NOME_BANCO').AsString)+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('CONTA').AsString)+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('AGENCIA').AsString)+
              ','+ quotedstr(cdsBaseWeb.fieldbyname('PROFISSAO').AsString)+
              ','+ QuotedStr('DUP')+
              ','+ QuotedStr('*** DUPLICAÇÃO FORÇADA - VERIFICAR CPF E/OU RG ***')+
              ')';
      Try
        if not fdm.conector.InTransaction then
          fdm.conector.StartTransaction;

        selecione(sSql);

        selecione('select descricao from tbconffin where tp = 10 and codigo = '+
                   inttostr(cdsBaseWeb.fieldbyname('codigogrupo').asinteger));
        sDesc := sqlpub.fieldbyname('descricao').asstring;

        selecione('update tbcliente set gp  = ' + quotedstr(sDesc)+
                  ' where codigo = '+quotedstr(sCod));

        fdm.conector.Commit;
        Application.MessageBox('Registro inserido com sucesso!!',
                               'Informação', 0 + MB_ICONINFORMATION);
      except
        sqlpub.SQL.SaveToFile('c:\erro.sql');
        if fdm.conector.InTransaction then
          fdm.conector.Rollback;
        Application.MessageBox('Erro na inserção do registro. Verificar arquivo de erro.',
                               'Atenção', 0 + MB_ICONWARNING);
        Exit;
      end;
  end;
end;

end.
