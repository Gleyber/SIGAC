{******************************************************************************}
{ Projeto: Componente ACBrNFe                                                  }
{  Biblioteca multiplataforma de componentes Delphi para emiss�o de Nota Fiscal}
{ eletr�nica - NFe - http://www.nfe.fazenda.gov.br                             }
{                                                                              }
{ Direitos Autorais Reservados (c) 2008 Wemerson Souto                         }
{                                       Daniel Simoes de Almeida               }
{                                       Andr� Ferreira de Moraes               }
{                                                                              }
{ Colaboradores nesse arquivo:                                                 }
{                                                                              }
{  Voc� pode obter a �ltima vers�o desse arquivo na pagina do Projeto ACBr     }
{ Componentes localizado em http://www.sourceforge.net/projects/acbr           }
{                                                                              }
{                                                                              }
{  Esta biblioteca � software livre; voc� pode redistribu�-la e/ou modific�-la }
{ sob os termos da Licen�a P�blica Geral Menor do GNU conforme publicada pela  }
{ Free Software Foundation; tanto a vers�o 2.1 da Licen�a, ou (a seu crit�rio) }
{ qualquer vers�o posterior.                                                   }
{                                                                              }
{  Esta biblioteca � distribu�da na expectativa de que seja �til, por�m, SEM   }
{ NENHUMA GARANTIA; nem mesmo a garantia impl�cita de COMERCIABILIDADE OU      }
{ ADEQUA��O A UMA FINALIDADE ESPEC�FICA. Consulte a Licen�a P�blica Geral Menor}
{ do GNU para mais detalhes. (Arquivo LICEN�A.TXT ou LICENSE.TXT)              }
{                                                                              }
{  Voc� deve ter recebido uma c�pia da Licen�a P�blica Geral Menor do GNU junto}
{ com esta biblioteca; se n�o, escreva para a Free Software Foundation, Inc.,  }
{ no endere�o 59 Temple Street, Suite 330, Boston, MA 02111-1307 USA.          }
{ Voc� tamb�m pode obter uma copia da licen�a em:                              }
{ http://www.opensource.org/licenses/lgpl-license.php                          }
{                                                                              }
{ Daniel Sim�es de Almeida  -  daniel@djsystem.com.br  -  www.djsystem.com.br  }
{              Pra�a Anita Costa, 34 - Tatu� - SP - 18270-410                  }
{                                                                              }
{******************************************************************************}

{******************************************************************************
|* Historico
|*
|* 16/12/2008: Wemerson Souto
|*  - Doa��o do componente para o Projeto ACBr
|* 20/08/2009: Caique Rodrigues
|*  - Doa��o units para gera��o do Danfe via QuickReport
|* 20/11/2009: Peterson de Cerqueira Matos
|*             E-mail: peterson161@yahoo.com - Tel: (11) 7197-1474 / 8059-4055
|*  - Componente e Units do QuickReport clonados
|*    e transformados em FORTES REPORT
|* 27/01/2010: Peterson de Cerqueira Matos
|*  - Acr�scimo da propriedade "LarguraCodProd", que definir� a largura da
|*    "C�digo do Produto" no DANFE
|* 15/03/2010: Felipe Feltes
|*  - Adequa��o na se��o 'USES' para ser utilizado em CLX
|* 19/03/2010: Peterson de Cerqueira Matos
|*  - Tratamento das propriedades "FormularioContinuo", "ExpandirLogoMarca" e
|*    "MostrarPreview" de "ACBrNFeDANFeClass"
|*  - Acr�scimo da propriedade "PosCanhoto", que permite ao usu�rio escolher
|*    entre "pcCabecalho" e "pcRodape"
|* 22/03/2010: Peterson de Cerqueira Matos
|*  - Tratamento das margens em "ACBrNFeDANFeClass"
|*  - Acr�scimo da propriedade "FonteDANFE", que permite ao usu�rio escolher
|*    entre "fdArial", "fdTimesNewRoman" e "fdCourierNew"
|* 13/04/2010: Peterson de Cerqueira Matos
|*  - Adequa��o � NF-e 2.0, Manual de Integra��o do Contribuinte 4.0.1NT2009.006
|*  - Tratamento das casas decimais em "ACBrNFeDANFeClass"
|* 06/07/2010: Peterson de Cerqueira Matos
|*  - Tratamento da quantidade de produtos por p�gina em "ACBrNFeDANFeClass"
|*  - Exibi��o do DANFe em modo paisagem
|* 20/07/2010: Peterson de Cerqueira Matos
|*  - Envia o DANFe para a impressora informada em "Impressora" de
|*  - "ACBrNFeDANFeClass"
|* 28/07/2010: Peterson de Cerqueira Matos
|*  - Altera��o do sulfixo do arquivo PDF de '-nfe.pdf' para '.pdf'
|* 10/08/2010: Peterson de Cerqueira Matos
|*  - Tratamento do tamanho da fonte da raz�o social do emitente
|* 25/11/2010: Peterson de Cerqueira Matos
|*  - Acr�scimo da propriedade "ExibirEAN"
|* 16/02/2011: Fernando Emiliano David Nunes
|*  - Acrescentado ao M�todo ImprimeDANFEPDF a condi��o ELSE quando NFE <> NIL
|* 01/03/2011: Fernando Emiliano David Nunes
|*  - Quando DPEC, nao estava imprimindo o valor FProtocoloNFe, acrescentei o
|*    envio do Atributo: ProtocoloNFe
|* 20/05/2010: Peterson de Cerqueira Matos
|*  - Tratamento da propriedade "ExibirResumoCanhoto_Texto"
|* 23/05/2011: Waldir Paim
|*  - In�cio da prepara��o para Lazarus: Somente utiliza TClientDataSet quando
|*    estiver no Delphi. Obrigat�ria a utiliza��o da vers�o 3.70B ou superior
|*    do Fortes Report. Download dispon�vel em
|*    http://sourceforge.net/projects/fortesreport/files/
******************************************************************************}
{$I ACBr.inc}
unit ACBrNFeDANFeRLClass;

interface

uses SysUtils, Classes,
  {$IFDEF CLX}
  QForms, QDialogs,
  {$ELSE}
  Forms, Dialogs,
  {$ENDIF}
  ACBrNFeDANFEClass, ACBrNFeDANFeRL,RLConsts, ACBrNFeDANFeRLRetrato,
  ACBrNFeDANFeRLPaisagem, pcnNFe, pcnConversao, StrUtils;

type
  TACBrNFeDANFeRL = class( TACBrNFeDANFEClass )
  private
    FMarcadagua: string;
    FLarguraCodProd: Integer;
    FPosCanhoto: TPosCanhoto;
    FFonteDANFE: TFonteDANFE;
    FTamanhoFonte_RazaoSocial: Integer;
    FExibirEAN: Boolean;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure ImprimirDANFE(NFE : TNFe = nil); override ;
    procedure ImprimirDANFEPDF(NFE : TNFe = nil); override ;
    procedure SetExibirEAN(Value: Boolean); virtual;
    procedure SetTipoDANFE(Value: TpcnTipoImpressao); virtual;
  published
    property MarcadAgua : String read FMarcadagua write FMarcadagua ;
    property LarguraCodProd: Integer read FLarguraCodProd write FLarguraCodProd;
    property PosCanhoto: TPosCanhoto read FPosCanhoto write FPosCanhoto
                                                          default pcCabecalho;
    property FonteDANFE: TFonteDANFE read FFonteDANFE write FFonteDANFE
                                                      default fdTimesNewRoman;
    property TamanhoFonte_RazaoSocial: Integer read FTamanhoFonte_RazaoSocial
                                              write FTamanhoFonte_RazaoSocial;
    property ExibirEAN: Boolean read FExibirEAN write SetExibirEAN;
    property TipoDANFE: TpcnTipoImpressao read FTipoDANFE write SetTipoDANFE;
  end;

implementation

uses ACBrNFe, ACBrNFeUtil, ACBrUtil;

var
  i : Integer;
  frlDANFeRL: TfrlDANFeRL;

constructor TACBrNFeDANFeRL.Create(AOwner: TComponent);
begin
  //SetVersion(CommercialVersion,ReleaseVersion,CommentVersion);
  inherited create( AOwner );
  FLarguraCodProd := 54;
  FMargemSuperior := 0.70;
  FMargemInferior := 0.70;
  FMargemEsquerda := 0.70;
  FMargemDireita := 0.70;
  FCasasDecimais._qCom := 4;
  FCasasDecimais._vUnCom := 4;
  FProdutosPorPagina := 0;
  FTamanhoFonte_RazaoSocial := 8;
  FExibirEAN := False;
end;

destructor TACBrNFeDANFeRL.Destroy;
begin
  inherited Destroy ;
end;

procedure TACBrNFeDANFeRL.ImprimirDANFE(NFE : TNFe = nil);
begin
  case TipoDANFE of
    tiRetrato:   frlDANFeRL := TfrlDANFeRLRetrato.Create(Self);
    tiPaisagem:  frlDANFeRL := TfrlDANFeRLPaisagem.Create(Self);
  end;

  if NFE = nil then
    begin
      for i:= 0 to TACBrNFe(ACBrNFe).NotasFiscais.Count - 1 do
        begin
          frlDANFeRL.Imprimir(TACBrNFe(ACBrNFe).NotasFiscais.Items[i].NFe,
          Logo, MarcaDagua, LarguraCodProd, Email, ExibirResumoCanhoto, Fax,
          NumCopias, Sistema, Site, Usuario, PosCanhoto, FormularioContinuo,
          ExpandirLogoMarca, MostrarPreview, FonteDANFE, MargemSuperior,
          MargemInferior, MargemEsquerda, MargemDireita, CasasDecimais._qCom,
          CasasDecimais._vUnCom, ProdutosPorPagina, Impressora,
          TamanhoFonte_RazaoSocial, ExibirEAN, ProtocoloNFe,
          ExibirResumoCanhoto_Texto);
        end;
    end
  else
    begin
      frlDANFeRL.Imprimir(NFE,
      Logo, MarcaDagua, LarguraCodProd, Email, ExibirResumoCanhoto, Fax,
      NumCopias, Sistema, Site, Usuario, PosCanhoto, FormularioContinuo,
      ExpandirLogoMarca, MostrarPreview, FonteDANFE, MargemSuperior,
      MargemInferior, MargemEsquerda, MargemDireita, CasasDecimais._qCom,
      CasasDecimais._vUnCom, ProdutosPorPagina, Impressora,
      TamanhoFonte_RazaoSocial, ExibirEAN, ProtocoloNFe,
      ExibirResumoCanhoto_Texto);
    end;

  frlDANFeRL.Free;
end;

procedure TACBrNFeDANFeRL.ImprimirDANFEPDF(NFE : TNFe = nil);
var sFile: String;
begin
  case TipoDANFE of
    tiRetrato:   frlDANFeRL := TfrlDANFeRLRetrato.Create(Self);
    tiPaisagem:  frlDANFeRL := TfrlDANFeRLPaisagem.Create(Self);
  end;

  if NFE = nil then
    begin
      for i:= 0 to TACBrNFe(ACBrNFe).NotasFiscais.Count-1 do
        begin
          sFile := TACBrNFe(ACBrNFe).DANFE.PathPDF +
                   Copy(TACBrNFe(ACBrNFe).NotasFiscais.Items[i].NFe.infNFe.ID,
                   4, 44) + '.pdf';
          frlDANFeRL.SavePDF(TACBrNFe(ACBrNFe).NotasFiscais.Items[i].NFe,
          Logo, MarcaDagua, LarguraCodProd, Email, ExibirResumoCanhoto, Fax,
          NumCopias, Sistema, Site, Usuario, sFile, PosCanhoto, FormularioContinuo,
          ExpandirLogoMarca, FonteDANFE, MargemSuperior,
          MargemInferior, MargemEsquerda, MargemDireita, CasasDecimais._qCom,
          CasasDecimais._vUnCom, ProdutosPorPagina, TamanhoFonte_RazaoSocial,
          ExibirEAN, ProtocoloNFe, ExibirResumoCanhoto_Texto);
        end;
    end
  else
    begin
      sFile := Self.PathPDF + Copy(NFe.infNFe.ID, 4, 44) + '.pdf';
      frlDANFeRL.SavePDF(NFe, Logo, MarcaDagua, LarguraCodProd, Email,
      ExibirResumoCanhoto, Fax, NumCopias, Sistema, Site, Usuario, sFile,
      PosCanhoto, FormularioContinuo, ExpandirLogoMarca, FonteDANFE,
      MargemSuperior, MargemInferior, MargemEsquerda, MargemDireita,
      CasasDecimais._qCom, CasasDecimais._vUnCom, ProdutosPorPagina,
      TamanhoFonte_RazaoSocial, ExibirEAN, ProtocoloNFe,
      ExibirResumoCanhoto_Texto);
    end;
   

  frlDANFeRL.Free;
end;

procedure TACBrNFeDANFeRL.SetExibirEAN(Value: Boolean);
begin
  if FTipoDANFE = tiRetrato then
    FExibirEAN := False
  else
    FExibirEAN := Value;
end;

procedure TACBrNFeDANFeRL.SetTipoDANFE(Value: TpcnTipoImpressao);
begin
  if Value = tiRetrato then
    begin
      FExibirEAN := False;
    end;

  FTipoDANFE := Value;
end;

end.
