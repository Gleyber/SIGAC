{******************************************************************************}
{ Projeto: Componente ACBrCTe                                                  }
{  Biblioteca multiplataforma de componentes Delphi para emiss�o de Nota Fiscal}
{ eletr�nica - CTe - http://www.CTe.fazenda.gov.br                          }
{                                                                              }
{ Direitos Autorais Reservados (c) 2008 Wemerson Souto                         }
{                                       Wiliam Zacarias da Silva Rosa          }
{                                       Daniel Simoes de Almeida               }
{                                       Andr� Ferreira de Moraes               }
{                                                                              }
{ Desenvolvimento                                                              }
{         de Cte: Wiliam Zacarias da Silva Rosa                                }
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
******************************************************************************}
{$I ACBr.inc}

unit ACBrCTe;

interface

uses
  Classes, Sysutils,
  {$IFDEF VisualCLX}
     QDialogs,
  {$ELSE}
     Dialogs,
  {$ENDIF}
  pcteCTe, pcnConversao, ACBrCTeConhecimentos, ACBrCTeConfiguracoes,
  ACBrCTeWebServices, ACBrCTeUtil, ACBrCTeDACTeClass;

{$IFDEF PL_103}
const
  ACBRCTE_VERSAO = '0.6.0a XML 1.03';
{$ENDIF}
{$IFDEF PL_104}
const
  ACBRCTE_VERSAO = '0.6.0a XML 1.04';
{$ENDIF}

type
  TACBrCTeAboutInfo = (ACBrCTeAbout);

  EACBrCTeException = class(Exception);

  { Evento para gerar log das mensagens do Componente }
  TACBrCTeLog = procedure(const Mensagem : String) of object ;

  TACBrCTe = class(TComponent)
  private
    fsAbout: TACBrCTeAboutInfo;
    FDACTe : TACBrCTeDACTeClass;
    FConhecimentos: TConhecimentos;
    FWebServices: TWebServices;
    FConfiguracoes: TConfiguracoes;
    FStatus : TStatusACBrCTe;
    FOnStatusChange: TNotifyEvent;
    FOnGerarLog : TACBrCTeLog;
  	procedure SetDACTe(const Value: TACBrCTeDACTeClass);
  protected
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    function Enviar(ALote: Integer; Imprimir:Boolean = True): Boolean;
    function Cancelamento(AJustificativa:WideString): Boolean;
    function Consultar: Boolean;
    property WebServices: TWebServices read FWebServices write FWebServices;
    property Conhecimentos: TConhecimentos read FConhecimentos write FConhecimentos;
    property Status: TStatusACBrCTe read FStatus;
    procedure SetStatus( const stNewStatus : TStatusACBrCTe );
  published
    property Configuracoes: TConfiguracoes read FConfiguracoes write FConfiguracoes;
    property OnStatusChange: TNotifyEvent read FOnStatusChange write FOnStatusChange;
  	property DACTe: TACBrCTeDACTeClass read FDACTe write SetDACTe ;
    property AboutACBrCTe : TACBrCTeAboutInfo read fsAbout write fsAbout
                          stored false ;
    property OnGerarLog : TACBrCTeLog read FOnGerarLog write FOnGerarLog ;
  end;

procedure ACBrAboutDialog ;

implementation

procedure ACBrAboutDialog ;
var Msg : String ;
begin
    Msg := 'Componente ACBrCTe'+#10+
           'Vers�o: '+ACBRCTe_VERSAO+#10+#10+
           'Automa��o Comercial Brasil'+#10+#10+
           'http://acbr.sourceforge.net'+#10+#10+
           'Projeto Cooperar - PCN'+#10+#10+
           'http://www.projetocooperar.org/pcn/';

     MessageDlg(Msg ,mtInformation ,[mbOk],0) ;
end;

{ TACBrCTe }

constructor TACBrCTe.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  FConfiguracoes     := TConfiguracoes.Create( self );
  FConfiguracoes.Name:= 'Configuracoes' ;
  {$IFDEF COMPILER6_UP}
   FConfiguracoes.SetSubComponent( true );{ para gravar no DFM/XFM }
  {$ENDIF}

  FConhecimentos      := TConhecimentos.Create(Self,Conhecimento);
  FConhecimentos.Configuracoes := FConfiguracoes;
  FWebServices       := TWebServices.Create(Self);

  if FConfiguracoes.WebServices.Tentativas <= 0 then
     FConfiguracoes.WebServices.Tentativas := 5;
  {$IFDEF ACBrCTeOpenSSL}
     CteUtil.InitXmlSec ;
  {$ENDIF}
  FOnGerarLog := nil ;
end;

destructor TACBrCTe.Destroy;
begin
  FConfiguracoes.Free;
  FConhecimentos.Free;
  FWebServices.Free;
  {$IFDEF ACBrCTeOpenSSL}
     CteUtil.ShutDownXmlSec ;
  {$ENDIF}
  inherited;
end;

procedure TACBrCTe.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);

  if (Operation = opRemove) and (FDACTe <> nil) and (AComponent is TACBrCTeDACTeClass) then
     FDACTe := nil ;
end;

procedure TACBrCTe.SetDACTe(const Value: TACBrCTeDACTeClass);
 Var OldValue: TACBrCTeDACTeClass ;
begin
  if Value <> FDACTe then
  begin
     if Assigned(FDACTe) then
        FDACTe.RemoveFreeNotification(Self);

     OldValue  := FDACTe ;   // Usa outra variavel para evitar Loop Infinito
     FDACTe    := Value;    // na remo��o da associa��o dos componentes

     if Assigned(OldValue) then
        if Assigned(OldValue.ACBrCTe) then
           OldValue.ACBrCTe := nil ;

     if Value <> nil then
     begin
        Value.FreeNotification(self);
        Value.ACBrCTe := self ;
     end ;
  end ;
end;

procedure TACBrCTe.SetStatus( const stNewStatus : TStatusACBrCTe );
begin
  if ( stNewStatus <> FStatus ) then
  begin
    FStatus := stNewStatus;
    if Assigned(fOnStatusChange) then
      FOnStatusChange(Self);
  end;
end;

function TACBrCTe.Cancelamento(
  AJustificativa: WideString): Boolean;
var
  i : Integer;
begin
  if Self.Conhecimentos.Count = 0 then
   begin
      if Assigned(Self.OnGerarLog) then
         Self.OnGerarLog('ERRO: Nenhum Conhecimento de Transporte Eletr�nico Informado!');
      raise Exception.Create('Nenhum Conhecimento de Transporte Eletr�nico Informado!');
   end;

  for i:= 0 to self.Conhecimentos.Count-1 do
  begin
    WebServices.Cancelamento.CTeChave := copy(self.Conhecimentos.Items[i].CTe.infCTe.ID,
     (length(self.Conhecimentos.Items[i].CTe.infCTe.ID)-44)+1, 44);
    WebServices.Consulta.CTeChave := WebServices.Cancelamento.CTeChave;
    WebServices.Cancela(AJustificativa);
  end;

  Result := true;
end;

function TACBrCTe.Consultar: Boolean;
var
  i : Integer;
begin
  if Self.Conhecimentos.Count = 0 then
   begin
      if Assigned(Self.OnGerarLog) then
         Self.OnGerarLog('ERRO: Nenhum Conhecimento de Transporte Eletr�nico Informado!');
      raise Exception.Create('Nenhum Conhecimento de Transporte Eletr�nico Informado!');
   end;

  for i := 0 to Self.Conhecimentos.Count-1 do
  begin
    WebServices.Consulta.CTeChave := copy(self.Conhecimentos.Items[i].CTe.infCTe.ID,
     (length(self.Conhecimentos.Items[i].CTe.infCTe.ID)-44)+1, 44);
    WebServices.Consulta.Executar;
  end;
  Result := True;
end;

function TACBrCTe.Enviar(ALote: Integer; Imprimir:Boolean = True): Boolean;
var
  i: Integer;
begin
  if Conhecimentos.Count <= 0 then
   begin
      if Assigned(Self.OnGerarLog) then
         Self.OnGerarLog('ERRO: Nenhum CT-e adicionado ao Lote');
      raise Exception.Create('ERRO: Nenhum CT-e adicionado ao Lote');
     exit;
   end;

  if Conhecimentos.Count > 50 then
   begin
      if Assigned(Self.OnGerarLog) then
         Self.OnGerarLog('ERRO: Conjunto de CT-e transmitidos (m�ximo de 50 CT-e) excedido. Quantidade atual: '+IntToStr(Conhecimentos.Count));
      raise Exception.Create('ERRO: Conjunto de CT-e transmitidos (m�ximo de 50 CT-e) excedido. Quantidade atual: '+IntToStr(Conhecimentos.Count));
     exit;
   end;

  Conhecimentos.Assinar;
  Conhecimentos.Valida;

  Result := WebServices.Envia(ALote);

  if DACTe <> nil then
  begin
     for i:= 0 to Conhecimentos.Count-1 do
     begin
       if Conhecimentos.Items[i].Confirmada and Imprimir then
       begin
          // A linha abaixo foi comentada por Italo em 08/09/2010
          // DaCTe.ProtocoloCTe:=WebServices.Retorno.CTeRetorno.ProtCTe.Items[i].nProt;
          Conhecimentos.Items[i].Imprimir;
       end;
     end;
  end;

end;

end.
