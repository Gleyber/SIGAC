{
3.18
- prop behavior=siteexpander n�o persistia
- filtro xls com op��o de setup de p�ginas e com margens funcionando
}


{@unit RLReport - Implementa��o dos principais componentes e tipos do FortesReport. }
unit RLReport;

interface

uses
  DB, Classes, SysUtils, Math, Contnrs, TypInfo, 
{$ifndef DELPHI5}
  Variants,
{$endif}
{$ifndef LINUX}
  Windows,
{$else}
  Types,
{$endif}
{$ifdef Win32}
  ExtCtrls, DBCtrls, Controls, Forms, Dialogs, StdCtrls, Messages, Buttons, Graphics, Mask,
  MaskUtils,
{$ifdef DELPHI}
{$ifndef DELPHI5}
//  MaskUtils,
{$endif}
{$endif}
{$ifdef CPP}
  MaskUtils,
{$endif}
{$else}
  Qt, QTypes, QExtCtrls, QDBCtrls, QControls, QForms, QDialogs, QStdCtrls, QButtons, QGraphics, MaskUtils,
{$endif}
{$ifdef Win32}
  RLMetaVCL,
{$else}
  RLMetaCLX,
{$endif}
  RLMetaFile, RLFeedBack, RLParser, RLFilters, RLConsts, RLUtils, RLPrintDialog, RLSaveDialog, RLPreviewForm,
  RLPreview, RLTypes, RLPrinters;

const
  CommercialVersion=RLConsts.CommercialVersion;
  ReleaseVersion   =RLConsts.ReleaseVersion;

type

  // CLASSES

  TRLCustomControl=class;             // tcontrol base para todos os outros
    TRLCustomDBControl=class;         // tcontrol base com acesso a banco de dados
    TRLCustomLabel=class;             // tcontrol base com texto de uma linha
      TRLLabel=class;                 // componente label
      TRLCustomDBText=class;          // label basico de campo de arquivo
        TRLDBText=class;              // label de campo de arquivo
        TRLCustomDBResult=class;      // label de operacoes com campos
          TRLDBResult=class;
      TRLCustomSystemInfo=class;      // label com informacoes de sistema (nr.pag,totais,data&hora)
        TRLSystemInfo=class;
    TRLCustomAngleLabel=class;
      TRLAngleLabel=class;
    TRLCustomMultiLine=class;         // tcontrol base com texto de varias linhas
      TRLCustomMemo=class;            // componente memo
        TRLMemo=class;
      TRLCustomDBMemo=class;          // memo de campo de arquivo
        TRLDBMemo=class;
    TRLCustomImage=class;             // componente imagem
      TRLImage=class;
      TRLCustomDBImage=class;         // imagem de campo de arquivo
        TRLDBImage=class;
    TRLCustomDraw=class;              // canvas de figuras
      TRLDraw=class;
    TRLCustomSite=class;              // controle base para todas as janelas de impressao
      TRLCustomPanel=class;
        TRLPanel=class;               // componente de design para fazer containers alinhados
      TRLCustomBandSet=class;
        TRLCustomBand=class;            // banda de impressao que pode ser: header, detail ou footer
          TRLBand=class;
          TRLCustomDetailGrid=class;    // banda de colunas de detalhe
            TRLDetailGrid=class;
        TRLCustomPager=class;           // painel paginador de tamanho variavel com header, detail e footer
          TRLCustomGroup=class;         // paginador com escopo de registros
            TRLGroup=class;
          TRLCustomSkipper=class;       // paginador controlado por base de dados
            TRLCustomSubDetail=class;   // controlador de base masterizada
              TRLSubDetail=class;
            TRLCustomReport=class;
              TRLReport=class;          // controlador principal

  TRLBorders=class;
  TRLMargins=class;
  TRLPageSetup=class;
  TRLRealBounds=class;
  TRLBackground=class;
  TRLDegradeEffect=class;
  TRLSortedBands=class;

  // CLASS TYPES

  TRLPagerClassType=class of TRLCustomPager;

  // PROPERTY TYPES

  {@type TRLDataFieldProperty - Tipo de propriedade para nome de campo de um dataset. :/}
  TRLDataFieldProperty=type string;
  
  {@type TRLDataFieldsProperty - Tipo de propriedade para lista de nomes de campos de um dataset.
   Os nomes devem ser separados por ponto-e-v�rgula (";"). :/}
  TRLDataFieldsProperty=type string;

  {@type TRLRecordRange - Faixa de registros a processar.
   Pode assumir um dos seguintes valores:
   rrAllRecords - Processa desde o primeiro registro at� o fim (default);
   rrCurrentOnly - Processa apenas o registro corrente;
   rrUntilEof - Processa a partir do registro corrente at� o fim;
   rrNextN - Processa a partir do registro corrente (inclusive) N registros. Informe N na prop RangeCount.
   @links TRLCustomSkipper.RecordRange, TRLCustomSkipper.RangeCount. :/}
  TRLRecordRange=(rrAllRecords,rrCurrentOnly,rrUntilEof,rrNextN);

  // EVENT TYPES

  {@type TRLRecordAction - A��o tomada a cada registro processado.
   Pode assumir um dos seguintes valores:
   raUseIt - Utilizar o registro e processar o pr�ximo;
   raIgnoreIt - N�o utilizar o registro e processar o pr�ximo;
   raUseAndRetain - Utilizar o registro mais de uma vez;
   raBlankAndRetain - Imprimir band em branco e utiliz� o registro mais uma vez.
   @links TRLCustomSkipper.DataFirst, TRLCustomSkipper.DataNext. :/}
  TRLRecordAction=(raUseIt,raIgnoreIt,raUseAndRetain,raBlankAndRetain);

  {@type TRLAfterPrintEvent - Ap�s a impress�o de um controle.
   Implemente um evento TRLAfterPrintEvent para tomar atitudes logo ap�s a impress�o
   de um controle.
   @links TRLBeforePrintEvent, TRLBeforeTextEvent. :/}
  TRLAfterPrintEvent=procedure(Sender:TObject) of object;

  {@type TRLBeforePrintEvent - Antes da impress�o de um controle.
   Implemente um evento TRLBeforePrintEvent para decidir se o controle ser� impresso,
   atrav�s do par�metro PrintIt, ou para alterar as suas caracter�sticas, como por
   exemplo: dimens�es, cor, bordas etc.
   @links TRLAfterPrintEvent, TRLBeforeTextEvent. :/}
  TRLBeforePrintEvent=procedure(Sender:TObject; var PrintIt:boolean) of object;

  {@type TRLBeforeTextEvent - Antes da impress�o de uma caixa de texto.
   Implemente um evento TRLBeforeTextEvent para decidir se o controle ser� impresso,
   atrav�s do par�metro PrintIt, para alterar o texto a imprimir ou para alterar as
   suas caracter�sticas, como por exemplo: dimens�es, cor, bordas etc.
   Nota: Este evento aparecer� como o nome BeforePrint nas caixas de texto.
   @links TRLAfterPrintEvent, TRLBeforePrintEvent, TRLCustomLabel. :/}
  TRLBeforeTextEvent=procedure(Sender:TObject; var Text:string; var PrintIt:boolean) of object;

  {@type TRLOnComputeEvent - Ao computar um valor durante itera��es para estat�stica dos acumuladores.
   Altere o par�metro Value e/ou Text para modificar o valor processado pelos acumuladores,
   ou altere o par�metro ComputeIt para indicar se o valor deve ser computado ou ignorado.
   @links TRLDBResult. :/}
  TRLOnComputeEvent=procedure(Sender:TObject; var Value:variant; var Text:string; var ComputeIt:boolean) of object;

  {@type TRLOnGetBreakEvent - Nas verifica��es de quebra de grupo de registros n�o autom�tica.
   Altere o par�metro BreakIt para indicar a quebra de sequ�ncia de registros num grupo.
   @links TRLGroup. :/}
  TRLOnGetBreakEvent=procedure(Sender:TObject; var BreakIt:boolean) of object;

  {@type TRLOnDataCountEvent - Ao calcular a quantidade de registros.
   Implemente este evento para informar ao gerador a quantidade de registros a serem processados.
   Isto ajuda a projetar as expectativas de t�rmino, e tamb�m elimina a consulta � prop RecordCount
   do DataSet que estiver associado pela prop DataSource.
   @links TRLCustomSkipper. :/}
  TRLOnDataCountEvent=procedure(Sender:TObject; var DataCount:integer) of object;

  {@type TRLOnNeedDataEvent - Alimenta��o de registros sem dataset.
   Implemente este evento para fornecer registros de dados a um RLReport ou RLSubDetail.
   Indique o final dos registros alterando o par�metro MoreData para False.
   @links TRLCustomSkipper. :/}
  TRLOnNeedDataEvent=procedure(Sender:TObject; var MoreData:boolean) of object;

  {@type TRLOnDataRecordEvent - Ao processar um registro.
   Este evento � disparado todas as vezes que um registro � processado, quer tenha sido
   obtido de um DataSet ou fornecido pelo evento OnNeedData.
   O par�metro RecNo representa o n�mero sequencial do registro corrente.
   O par�metro CopyNo � o n�mero de c�pia do registro, caso ele esteja sendo repetido.
   O par�metro Eof indica ou atribui o fim dos dados. � semelhante ao MoreData do evento OnNeedData.
   O par�metro RecordAction indica a pr�xima a��o a ser tomada com o registro.
   Obs.: Um registro pode ser repetido se a a��o do �ltimo evento foi raUseAndRetain e, neste caso, CopyNo ser� maior que 1.
   @links TRLCustomSkipper. :/}
  TRLOnDataRecordEvent=procedure(Sender:TObject; RecNo:integer; CopyNo:integer; var Eof:boolean; var RecordAction:TRLRecordAction) of object;

  {@type TRLOnDrawEvent - Na hora de desenhar o fundo do controle.
   Implemente este evento para desenhar aleat�riamente no fundo de uma controle.
   Surface representa a superf�cie de desenho (Canvas) do controle em quest�o.
   Rect � o ret�ngulo da �rea cliente do controle, aonde � poss�vel desenhar.
   @links TRLCustomSite. :/}
  TRLOnDrawEvent=procedure(Sender:TObject; Surface:TRLGraphicSurface; Rect:TRect) of object;

  // ENUMERATED TYPES

  {@type TRLBandType - Tipo de banda.
   O tipo indica o comportamento que a band dever� assumir durante a listagem.
   Pode assumir um dos seguintes valores:
   btHeader - Cabe�alho. Imprime uma vez na primeira p�gina e sempre que houver quebra de p�gina ou de sequ�ncia
   de dados. �til para exibir n�mero de p�gina e nome do relat�rio ou informa��es sobre a sequ�ncia de dados atual;
   btTitle - T�tulo. Imprime apenas na primeira p�gina ou no �nicio de uma sequ�ncia de dados abaixo do header. �til
   para mostrar descri��o pr�via do relat�rio;
   btColumnHeader - Cabe�alho de colunas. Mesmo comportamento do header exceto por seu posicionamento ap�s o title;
   btDetail - Detalhe. Imprime uma vez para cada registro de dados;
   btColumnFooter - Rodap� de colunas. Mesmo comportamento do rodap� exceto por seu posicionamento antes do summary;
   btSummary - Sum�rio. Imprime ao final do relat�rio ou da sequ�ncia de dados antes do footer. �til para mostrar
   resumos, somat�rios e informa��es estat�sticas;
   btFooter - Rodap�. Imprime uma vez na �ltima p�gina e sempre ap�s quebra de p�gina ou de sequ�ncia de dados.
   @links TRLBand. :/}
  TRLBandType=(btHeader,btTitle,btColumnHeader,btDetail,btColumnFooter,btSummary,btFooter);
  
  {@type TRLCompletionType - Tipo de preenchimento de p�gina.
   Indica como a p�gina deve ser preenchida ap�s o �ltimo registro ser impresso.
   Pode assumir um dos seguintes valores:
   ctNone - N�o completa p�gina;
   ctFullPage - Completa com bands em branco at� o fim da p�gina;
   ctMaxBands - Completa com bands em branco at� o n�mero m�ximo de bands do ParentPager;
   ctMinBands - Completa com bands em branco at� o n�mero m�nimo de bands do ParentPager.
   @links TRLBand, MaxBands. :/}
  TRLCompletionType=(ctNone,ctFullPage,ctMaxBands,ctMinBands);

  {@type TRLImageArrange - Tipo de arranjo de imagem.
   Indica como uma imagem deve ser distribu�da no fundo do controle.
   Pode assumir um dos seguintes valores:
   baAligned - A imagem deve ser alinhada no fundo de acordo com a prop Align;
   baSidebySide - A imagem deve ser distribu�da pelo fundo horizontalmente;
   baCenter - A imagem deve ser centralizada;
   baDistributed - A imagem deve ser distribu�da como numa parede de tijolos.
   @links TRLBackground. :/}
  TRLImageArrange=(baAligned,baSidebySide,baCenter,baDistributed);

  {@type TRLReportState - Estado atual do relat�rio.
   Indica como est� o relat�rio em rela��o � sua prepara��o.
   Pode assumir um dos seguintes valores:
   rsAbout - Ainda n�o foi preparado;
   rsWriting - Est� sendo preparado;
   rsClosing - N�o h� mais p�ginas a preparar e vai finalizar;
   rsReady - Foi preparado e est� pronto para imprimir.
   @links TRLReport. :/}
  TRLReportState=(rsAbout,rsWriting,rsClosing,rsReady);

  {@type TRLDegradeDirection - Dire��o do efeito degrad�.
  Indica a dire��o do efeito de transi��o de cores (degrad�) no fundo do controle.
  Pode assumir um dos seguintes valores:
  ddNone - Nenhuma efeito;
  ddHorizontal - Efeito horizontal da esquerda para a direita, de Color para OppositeColor;
  ddVertical - Efeito vertical de cima para baixo, de Color para OppositeColor.
   @links TRLDegradeEffect. :/}
  TRLDegradeDirection=(ddNone,ddHorizontal,ddVertical);

  {@type TRLInfoType - Tipo de informa��o de sistema.
   Indica que informa��es de sistema devem ser exibidas pelo controle TRLSystemInfo.
   Pode assumir um dos seguintes valores:
   itCarbonCopy - N�mero da c�pia de imagem da band;
   itDate - Data da impress�o (ver prop TRLReport.ReportDateTime);
   itDetailCount - Quantidade de detalhes j� impressos;
   itFullDate - Data e hora da impress�o no formato LongDateFormat;
   itHour - Hora da impress�o (ver prop TRLReport.ReportDateTime);
   itJunction - Flag de jun��o de p�ginas. Indica se o relat�rio continua nas pr�ximas p�ginas;
   itLastPageNumber - N�mero da �ltima p�gina do relat�rio;
   itMend - Flag de jun��o de p�ginas. Indica se a p�gina atual � a continua��o de p�ginas anteriores;
   itNow - Data e hora da impress�o no formato ShotDateFormat;
   itPageNumber - N�mero da p�gina atual;
   itPagePreview - N�mero da p�gina atual e total de p�ginas do relat�rio;
   itTitle - T�tulo do relat�rio obtido da prop Title do TRLReport;
   itRecNo - N�mero sequencial do registro corrente;
   itCopyNo - N�mero sequencial da c�pia do registro.
   @links TRLSystemInfo, TRLReport, TRLReport.ReportDateTime, TRLCustomBand.CarbonCopies. :}
  TRLInfoType=(itCarbonCopy,itDate,itDetailCount,itFullDate,itHour,itJunction,itLastPageNumber,itMend,itNow,
               itPageNumber,itPagePreview,itTitle,itRecNo,itCopyNo);
  {/@type}

  {@type TRLResultInfo - Tipo de informa��o estat�stica.
   Indica que informa��es estat�sticas devem ser exibidas pelo controle TRLDBResult.
   Pode assumir um dos seguintes valores:
   riAverage - M�dia aritm�tica dos valores impressos;
   riCount - N�mero de ocorr�ncias dos valores impressos; 
   riFirst - Primeiro valor impresso;
   riLast - �ltimo valor impresso;
   riMax - Maior dos valores impressos;
   riMin - Menor dos valores impressos;
   riSum - Som�t�rio de todos os valores impressos;
   riFirstText - Primeiro texto impresso;
   riLastText - �ltimo texto impresso;
   riSimple - �til para a resolu��o de f�rmulas com fun��es built-in. 
   @links TRLDBResult. :/}
  TRLResultInfo=(riAverage,riCount,riFirst,riLast,riMax,riMin,riSum,riFirstText,riLastText,riSimple);
  
  {@type TRLControlAlign - Alinhamento melhorado.
   Especifica como um controle deve ser posicionado em rela��o ao controle pai.
   Pode assumir um dos seguintes valores:
   faNone - Nenhum alinhamento. Nenhuma altera��o autom�tica no posicionamento ou dimens�o do controle;
   faLeft - Alinhado � esquerda. A largura � mantida e a altura se ajusta ao m�ximo dispon�vel no controle pai;
   faTop - Alinhado acima. A altura � mantida e a largura se ajusta ao m�ximo dispon�vel no controle pai;
   faRight - Alinhado � direita. A largura � mantida e a altura se ajusta ao m�ximo dispon�vel no controle pai;
   faBottom - Alinhado abaixo. A altura � mantida e a largura se ajusta ao m�ximo dispon�vel no controle pai;
   faLeftMost - Alinhado � esquerda com prioridade. Mesmo que faLeft com prioridade sobre os alinhamentos verticais;
   faRightMost - Alinhado � direita com prioridade. Mesmo que faRight com prioridade sobre os alinhamentos verticais;
   faClient - Alinhado � �rea cliente. O controle se ajusta � �rea que sobrou no controle pai;
   faLeftTop - Alinhado � esquerda e acima. O controle mant�m suas dimens�es e suas coordenadas s�o (0,0);
   faRightTop - Alinhado � direita e acima. O controle mant�m suas dimens�es e suas coordenadas s�o (-Width,0);
   faLeftBottom - Alinhado � esquerda e abaixo. O controle mant�m suas dimens�es e suas coordenadas s�o (0,-Height);
   faRightBottom - Alinhado � direita e abaixo. O controle mant�m suas dimens�es e suas coordenadas s�o (-Width,-Height);
   faCenter - Alinhado ao centro. O controle mant�m suas dimens�es;
   faCenterLeft - Alinhado ao centro e � esquerda. O controle mant�m suas dimens�es;
   faCenterTop - Alinhado ao centro e acima. O controle mant�m suas dimens�es;
   faCenterRight - Alinhado ao centro e � direita. O controle mant�m suas dimens�es;
   faCenterBottom - Alinhado ao centro e abaixo. O controle mant�m suas dimens�es;
   faClientLeft - Alinhado ao centro e � esquerda. O controle mant�m suas dimens�es;
   faClientTop - Alinhado ao centro e acima. O controle mant�m suas dimens�es;
   faClientRight - Alinhado ao centro e � esquerda. O controle mant�m suas dimens�es;
   faClientBottom - Alinhado ao centro e abaixo. O controle mant�m suas dimens�es;
   faHeight - Alinhado pela altura. O controle mant�m a sua largura e expande a sua altura de modo a se acomodar no controle pai;
   faWidth - Alinhado pela largura. O controle mant�m a sua altura e expande a sua largura de modo a se acomodar no controle pai;
   faLeftOnly - Alinhado � esquerda somente. O controle tem sua coordenada esquerda igual a 0;
   faRightOnly - Alinhado � direita somente. O controle tem sua coordenada direita igual a 0;
   faTopOnly - Alinhado acima somente. O controle tem sua coordenada de topo igual a 0;
   faBottomOnly - Alinhado abaixo somente. O controle tem sua coordenada abaixo igual a -Height.
   @links TRLCustomControl. :}
  TRLControlAlign=(faNone,faLeft,faTop,faRight,faBottom,faLeftMost,faRightMost,faClient,
                   faLeftTop,faRightTop,faLeftBottom,faRightBottom,
                   faCenter,faCenterLeft,faCenterTop,faCenterRight,faCenterBottom,
                   faClientLeft,faClientTop,faClientRight,faClientBottom,
                   faHeight,faWidth,
                   faLeftOnly,faRightOnly,faTopOnly,faBottomOnly);
  {/@type}                 

  {@type TRLTextAlignment - Alinhamento melhorado de texto dentro do controle.
   Especifica como o texto deve ser posicionado dentro de um controle de texto.
   Pode assumir um dos seguintes valores:
   taLeftJustify - Alinhado � esquerda (padr�o);
   taRightJustify - Alinhado � direita;
   taCenter - Alinhado ao centro do controle;
   taJustify - Espa�os s�o inseridos entre as palavras de modo que o texto ocupe toda a largura do controle.
   @links TRLCustomLabel, TRLCustomMemo. :/}
  TRLTextAlignment=(taLeftJustify,taRightJustify,taCenter,taJustify);

  {@type TRLTextLayout - Alinhamento vertical melhorado de texto dentro do controle.
   Especifica como o texto deve ser posicionado dentro de um controle de texto na vertical.
   Pode assumir um dos seguintes valores:
   tlTop - Alinhado ao topo (padr�o);
   tlCenter - Alinhado ao centro do controle;
   tlBottom - Alinhado ao fundo;
   tlJustify - Linhas em branco s�o inseridas entre as linhas de texto de modo que o texto ocupe toda a largura do controle.
   @links TRLCustomLabel, TRLCustomMemo. :/}
  TRLTextLayout=(tlTop,tlCenter,tlBottom,tlJustify);

  {@type TRLPageBreaking - Quebra de p�gina for�ada.
   Especifica se e como a band ou pager ir� for�ar a quebra de p�gina.
   Pode assumir um dos seguintes valores:
   pbNone - N�o deve haver quebra de p�gina for�ada;
   pbBeforePrint - A quebra de p�gina ser� verificada sempre antes da impress�o do controle;
   pbAfterPrint - A quebra de p�gina ser� verificada sempre ap�s da impress�o do controle.
   @links PageBreaking. :/}
  TRLPageBreaking=(pbNone,pbBeforePrint,pbAfterPrint);

  {@type TRLPrintBandResults - Resultado da impress�o de bands.
   Pode assumir um dos seguintes valores:
   brNoBands - Nenhuma band foi impressa;
   brPrinted - Ao menos uma band foi impressa;
   brStackExit - Sa�da for�ada por salto de p�gina.
   @links TRLCustomPager.PrintBands. :/}
  TRLPrintBandResults=(brNoBands,brPrinted,brStackExit);

  {@type TRLHoldStyle - Estilo de ancoragem relativa.
   Pode assumir um dos seguintes valores:
   hsAsColumn - O controle segue a posi��o horizontal do Holder e copia a sua largura, desde que a propriedade AutoSize seja False;
   hsHorizontally - O controle apenas segue a posi��o horizontal do Holder;
   hsVertically - O controle apenas segue a posi��o vertical do Holder;
   hsRelatively - O controle mant�m a posi��o horizontal e vertical em rela��o ao Holder.
   @links TRLCustomControl.Holder, TRLCustomControl.SecondHolder. :/}
  TRLHoldStyle=(hsAsColumn,hsHorizontally,hsVertically,hsRelatively,hsCopyWidth,hsCopyHeight,hsCopySize);

  {@type TRLPrintQuality - Qualidade de impress�o.
   Configura os elementos gr�ficos que devem ser impressos.
   Pode assumir um dos seguintes valores:
   pqFullFeature - Todos os recursos gr�ficos ser�o preservados;
   pqFixedOnly - Imprimir apenas bordas fixadas. Dispensa caracter�sticas gr�ficas especiais.
   @links TRLReport. :/}
  TRLPrintQuality=(pqFullFeature,pqFixedOnly);

  {@type TRLControlAnchorsType - �ncoras melhoradas.
   Indica os lados aos quais o controle ser� ancorado.
   Pode assumir um dos seguintes valores:
   fkLeft - � esquerda;
   fkTop - Ao topo;
   fkRight - � direita;
   fkBottom - � base.
   @links TRLCustomControl. :/}
  TRLControlAnchorsType=(fkLeft,fkTop,fkRight,fkBottom);
  
  {@type TRLControlStateType - Status de um controle FortesReport.
   Indica o estado atual do controle quanto � impress�o, alinhamento e dimens�es.
   Pode assumir um dos seguintes valores:
   stPrinting - Sendo impresso;
   stAligningControls - Alinhando seus controles internos;
   stAdjustingHoldeds - Ajustando os controles dos quais � o Holder;
   stAdjustingBounds - Ajustando as suas dimens�es;
   stExpandingParent - Ajustando o controle pai que � AutoSize e AutoExpand;
   stRestoringBounds - Restaurando suas dimens�es ap�s a sua impress�o;
   stMeasuringHeights - Antecipando a sua pr�pria medi��o.
   @links TRLCustomControl.ControlState, TRLCustomControl.Holder, TRLCustomControl.AutoSize, TRLCustomControl.AutoExpand. :/}
  TRLControlStateType=(stPrinting,stAligningControls,stAdjustingHoldeds,stAdjustingBounds,stExpandingParent,stRestoringBounds,stMeasuringHeights);

  {@type TRLAutoSizeDirType - Dire��o do redimensionamento autom�tico.
   Determina a dire��o do redimensionamento autom�tico.
   Pode assumir um dos seguintes valores:
   asWidthDir - Redimensionamento pela largura;
   asHeightDir - Redimensionamento pela altura.
   @links TRLCustomControl.AutoSize, TRLCustomControl.AutoExpand. :/}
  TRLAutoSizeDirType=(asWidthDir,asHeightDir);
  
  {@type TRLControlBehaviorType - Comportamento do controle.
   Determina como o controle deve se comportar sob diversos aspectos.
   Pode assumir um dos seguintes valores:
   beSiteExpander - Ao sofrer redimensionamento o controle deve expandir o seu controle pai.
   @links TRLCustomControl.AutoSize, TRLCustomControl.AutoExpand. :/}
  TRLControlBehaviorType=(beSiteExpander);

  {@type TRLFooterMeasuring - Momento de medi��o.
   Determina em que momento deve ser efetuada uma antecipa��o na medi��o de bands como btFooter ou btSummary.
   Pode assumir um dos seguintes valores:
   fmNone - Nenhuma antecipa��o � feita;
   fmAfterHeader - Sempre ap�s a impress�o dos cabe�alhos;
   fmBeforeDetail - Antes de cada band de detalhe.
   @links TRLCustomBand.BandType. :/}
  TRLFooterMeasuring=(fmNone,fmAfterHeader,fmBeforeDetail);

  // SETS

  {@type TRLControlAnchors - Conjunto de �ncoras.
   Indica os lados aos quais o controle ser� ancorado.
   @links TRLControlAnchorsType, TRLCustomControl.Anchors. :/}
  TRLControlAnchors=set of TRLControlAnchorsType;

  {@type TRLAllowedBands - Tipos de band inseridos.
   Determina que tipos de band inicialmente ser�o inseridos sobre o pager.
   Nota: Este recurso � mantido para fins de compatibilidade, pois o FortesReport permite mais de uma band
   do mesmo tipo por relat�rio.
   @links TRLBandType, TRLCustomPager.AllowedBands. :/}
  TRLAllowedBands=set of TRLBandType;

  {@type TRLControlState - Status do controle.
   Indica o estado atual do controle.
   @links TRLControlStateType. :/}
  TRLControlState=set of TRLControlStateType;
  
  {@type TRLControlBehavior - Comportamento do controle.
   Determina caracter�sticas de comportamento do controle.
   @links TRLControlBehaviorType, TRLCustomControl.Behavior. :/}
  TRLControlBehavior=set of TRLControlBehaviorType;

  {@type TRLAutoSizeDirSet - Dire��es de redimensionamento.
   Determina as dire��es do redimensionamento autom�tico.
   @links TRLAutoSizeDirType, TRLCustomControl.AutoSizeDir, TRLCustomControl.ExpandParentSite. :/}
  TRLAutoSizeDirSet=set of TRLAutoSizeDirType;

  // OBJECT PROPERTIES

  {@type TRLBorderSides - Configura��o r�pida de bordas.
   Pode assumir um dos seguintes valores:
   sdCustom - As bordas devem ser indicadas pela propriedade Borders;
   sdNone - O controle n�o deve exibir bordas;
   sdAll - Todas as bordas acionadas.
   @links TRLBorders. :/}
  TRLBorderSides=(sdCustom,sdNone,sdAll);

  {@class TRLBorders - Propriedades para as bordas de um TRLCustomControl.
   Determina que lados ser�o desenhados, a largura, estilo, cor e espessura das linhas. Possui propriedade ParentControl
   para determinar o controle onde se deve desenhar. Possui m�todo AdjustParent que chama o AdjustBounds do ParentControl
   sempre que forem alteradas as propriedades que afetam o tamanho. Invoca o Invalidate do ParentControl sempre que houver
   altera��o na cor e estilo. Este objeto n�o � respons�vel pelo Paint do ParentControl, este � que deve faze-lo no seu
   Paint de acordo com as propriedades de borda.
   @links TRLCustomControl.Borders. }
  TRLBorders=class(TPersistent)
  private

    // variables

    fParentControl:TRLCustomControl;
    fDrawLeft     :boolean;
    fDrawTop      :boolean;
    fDrawRight    :boolean;
    fDrawBottom   :boolean;
    fWidth        :integer;
    fColor        :TColor;
    fStyle        :TBrushStyle;
    fSides        :TRLBorderSides;
    fFixedLeft    :boolean;
    fFixedTop     :boolean;
    fFixedRight   :boolean;
    fFixedBottom  :boolean;

    // assign methods

    procedure   SetSides(const aValue:TRLBorderSides);
    procedure   SetDrawLeft(const aValue:boolean);
    procedure   SetDrawTop(const aValue:boolean);
    procedure   SetDrawRight(const aValue:boolean);
    procedure   SetDrawBottom(const aValue:boolean);
    procedure   SetWidth(const aValue:integer);
    procedure   SetColor(const aValue:TColor);
    procedure   SetStyle(const aValue:TBrushStyle);
    procedure   SetParentControl(const aValue:TRLCustomControl);
    procedure   SetFixedLeft(const aValue:boolean);
    procedure   SetFixedTop(const aValue:boolean);
    procedure   SetFixedRight(const aValue:boolean);
    procedure   SetFixedBottom(const aValue:boolean);

    // custom methods

    procedure   AdjustParent;
    procedure   CheckSides;
    function    IsCustom:boolean;

  public

    // constructors & destructors

    constructor Create(aOwner:TRLCustomControl);

    // custom methods

    {@method PaintTo - Desenha as bordas em um canvas delimitado por um ret�ngulo. :}
    procedure   PaintTo(aCanvas:TCanvas; aRect:TRect); overload;
    procedure   PaintTo(aSurface:TRLGraphicSurface; aRect:TRect); overload;
    {/@method}

    {@method CanDrawLeft - Indica se � p�rmitido desenhar a borda esquerda. :/}
    function    CanDrawLeft:boolean;

    {@method CanDrawTop - Indica se � p�rmitido desenhar a borda superior. :/}
    function    CanDrawTop:boolean;

    {@method CanDrawRight - Indica se � p�rmitido desenhar a borda direita. :/}
    function    CanDrawRight:boolean;

    {@method CanDrawBottom - Indica se � p�rmitido desenhar a borda inferior. :/}
    function    CanDrawBottom:boolean;

    // custom properties

    {@prop ParentControl - Controle sobre o qual as bordas ser�o desenhadas.
     @links TRLCustomControl. :/}
    property    ParentControl:TRLCustomControl read fParentControl write SetParentControl;

  published

    // custom properties

    {@prop Sides - Configura��o instant�nea das bordas.
     @links TRLBorderSides. :/}
    property    Sides        :TRLBorderSides   read fSides         write SetSides       default sdNone;

    {@prop DrawLeft - Desenhar borda esquerda. :/}
    property    DrawLeft     :boolean          read fDrawLeft      write SetDrawLeft    stored IsCustom;

    {@prop DrawTop - Desenhar borda superior. :/}
    property    DrawTop      :boolean          read fDrawTop       write SetDrawTop     stored IsCustom;

    {@prop DrawRight - Desenhar borda direita. :/}
    property    DrawRight    :boolean          read fDrawRight     write SetDrawRight   stored IsCustom;

    {@prop DrawBottom - Desenhar borda inferior. :/}
    property    DrawBottom   :boolean          read fDrawBottom    write SetDrawBottom  stored IsCustom;

    {@prop Width - Largura da borda. :/}
    property    Width        :integer          read fWidth         write SetWidth       default 1;

    {@prop Color - Cor da borda. :/}
    property    Color        :TColor           read fColor         write SetColor       default clBlack;

    {@prop Style - Estilo da borda. :/}
    property    Style        :TBrushStyle      read fStyle         write SetStyle       default bsSolid;

    {@prop FixedLeft - Desenhar borda esquerda fixa. :/}
    property    FixedLeft    :boolean          read fFixedLeft     write SetFixedLeft   default False;

    {@prop FixedTop - Desenhar borda superior fixa. :/}
    property    FixedTop     :boolean          read fFixedTop      write SetFixedTop    default False;
    
    {@prop FixedRight - Desenhar borda direita fixa. :/}
    property    FixedRight   :boolean          read fFixedRight    write SetFixedRight  default False;
    
    {@prop FixedBottom - Desenhar borda inferior fixa. :/}
    property    FixedBottom  :boolean          read fFixedBottom   write SetFixedBottom default False;
  end;
  {/@class}
  

  {@class TRLMargins - Propriedades para as margens internas de alinhamento de um CustomPanel.
   Determina largura das margens: superior, inferior e laterais em MM. Possui m�todo AdjustParent que chama o AdjustBounds
   do ParentControl sempre que forem alteradas as propriedades que afetam o tamanho.
   @links TRLCustomSite.Margins, TRLCustomSite.InsideMargins. }
  TRLMargins=class(TPersistent)
  private

    // variables

    fParentControl      :TRLCustomControl;
    fLeftMargin         :double;
    fTopMargin          :double;
    fRightMargin        :double;
    fBottomMargin       :double;
    fDefaultLeftMargin  :double;
    fDefaultTopMargin   :double;
    fDefaultRightMargin :double;
    fDefaultBottomMargin:double;

    // assign methods

    procedure   SetLeftMargin(const aValue:double);
    procedure   SetRightMargin(const aValue:double);
    procedure   SetTopMargin(const aValue:double);
    procedure   SetBottomMargin(const aValue:double);
    //
    procedure   ReadLeftMargin(Reader:TReader);
    procedure   WriteLeftMargin(Writer:TWriter);
    procedure   ReadTopMargin(Reader:TReader);
    procedure   WriteTopMargin(Writer:TWriter);
    procedure   ReadRightMargin(Reader:TReader);
    procedure   WriteRightMargin(Writer:TWriter);
    procedure   ReadBottomMargin(Reader:TReader);
    procedure   WriteBottomMargin(Writer:TWriter);

    // custom methods

    procedure   AdjustParent;

  protected

    // override

    procedure   DefineProperties(Filer:TFiler); override;

    // custom methods

    procedure   SetDefaults(aLeft,aTop,aRight,aBottom:double);

  public

    // constructors & destructors

    constructor Create(aOwner:TRLCustomControl);

    // custom properties

    {@prop ParentControl - Refer�ncia ao controle.
     @links TRLCustomControl. :/}
    property    ParentControl:TRLCustomControl read fParentControl write fParentControl;

    // override

    procedure   Assign(Source:TPersistent); override;

  published

    // custom properties

    {@prop LeftMargin - Margem esquerda em mil�metros. :/}
    property    LeftMargin   :double        read fLeftMargin   write SetLeftMargin stored False;

    {@prop TopMargin - Margem superior em mil�metros. :/}
    property    TopMargin    :double        read fTopMargin    write SetTopMargin stored False;

    {@prop RightMargin - Margem direita em mil�metros. :/}
    property    RightMargin  :double        read fRightMargin  write SetRightMargin stored False;

    {@prop BottomMargin - Margem inferior em mil�metros. :/}
    property    BottomMargin :double        read fBottomMargin write SetBottomMargin stored False;
  end;
  {/@class}
  

  {@class TRLPageSetup - Propriedades para configura��o de p�gina.
                         Determina a largura e altura do papel em MM, o tipo de papel utilizado e a orienta��o.
   @links TRLCustomReport.PageSetup. }
  TRLPageSetup=class(TPersistent)
  private

    // variables

    fParentReport  :TRLCustomReport;
    fPaperHeight   :double;
    fPaperWidth    :double;
    fPaperSize     :TRLPaperSize;
    fOrientation   :TRLPageOrientation;
    fForceEmulation:boolean;

    // assign methods

    function    GetOrientedWidth:double;
    function    GetOrientedHeight:double;
    procedure   SetOrientedHeight(const aValue:double);
    procedure   SetOrientedWidth(const aValue:double);
    procedure   SetPaperSize(const aValue:TRLPaperSize);
    procedure   SetPaperHeight(const aValue:double);
    procedure   SetPaperWidth(const aValue:double);
    procedure   SetOrientation(const aValue:TRLPageOrientation);

    // custom methods

    procedure   AdjustParent;
    function    IsCustomPaperSize:boolean;

  public

    // constructors & destructors

    constructor Create(aOwner:TRLCustomReport);

    // custom methods

    {@method Assign - Inicializa propriedades a partir de um outro objeto. :/}
    procedure   Assign(Source:TRLPageSetup); reintroduce;
    
    {@prop ParentReport - Refer�ncia ao objeto relat�rio.
     @links TRLCustomReport. :/}
    property    ParentReport  :TRLCustomReport    read fParentReport     write fParentReport;

    {@prop OrientedWidth - Largura orientada do papel em mil�metros. :/}
    property    OrientedWidth :double             read GetOrientedWidth  write SetOrientedWidth;

    {@prop OrientedHeight - Altura orientada do papel em mil�metros. :/}
    property    OrientedHeight:double             read GetOrientedHeight write SetOrientedHeight;
    
  published

    // custom properties
    
    {@prop PaperSize - Tamanho do papel.
     @links TRLPaperSize. :/}
    property    PaperSize     :TRLPaperSize       read fPaperSize        write SetPaperSize    default fpA4;
    
    {@prop Orientation - Orienta��o do papel.
     @links TRLPageOrientation. :/}
    property    Orientation   :TRLPageOrientation read fOrientation      write SetOrientation  default poPortrait;
    
    {@prop PaperWidth - Largura do papel em mil�metros. :/}
    property    PaperWidth    :double             read fPaperWidth       write SetPaperWidth   stored IsCustomPaperSize;
    
    {@prop PaperHeight - Altura do papel em mil�metros. :/}
    property    PaperHeight   :double             read fPaperHeight      write SetPaperHeight  stored IsCustomPaperSize;
    
    {@prop ForceEmulation - Emula��o for�ada. :/}
    property    ForceEmulation:boolean            read fForceEmulation   write fForceEmulation default False;
  end;
  {/@class}
  

  {@type TRLRealBoundsUnit - Unidades de medida para o dimensionamento real de um controle.
                             Nota: Esta funcionalizade n�o est� implementada. :/}
  TRLRealBoundsUnit=(buNone,buMilimeters,buInches);

  {@class TRLRealBounds - Configura��o do tamanho real de um controle em mil�metros ou polegadas.
                          Nota: Esta funcionalizade n�o est� implementada.
   @links TRLCustomControl.RealBounds. }
  TRLRealBounds=class(TPersistent)
  private

    // variables

    fParentControl:TRLCustomControl;
    fUsedUnit     :TRLRealBoundsUnit;
    fLeft         :double;
    fTop          :double;
    fHeight       :double;
    fWidth        :double;

    // assign methods

    procedure   SetLeft(const aValue:double);
    procedure   SetTop(const aValue:double);
    procedure   SetHeight(const aValue:double);
    procedure   SetWidth(const aValue:double);
    procedure   SetUsedUnit(const aValue:TRLRealBoundsUnit);

    // custom methods

    procedure   AdjustParent;
    
  public

    // constructors & destructors
    
    constructor Create(aOwner:TRLCustomControl);

    // custom methods

    {@prop ParentReport - Refer�ncia ao controle.
     @links TRLCustomControl. :/}
    property    ParentControl:TRLCustomControl  read fParentControl write fParentControl;

  published

    // custom properties
    
    {@prop UsedUnit - Unidade de medida utilizada.
     @links TRLRealBoundsUnit. :/}
    property    UsedUnit     :TRLRealBoundsUnit read fUsedUnit      write SetUsedUnit default buNone;
    
    {@prop Left - Coordenada esquerda em mil�metros. :/}
    property    Left         :double            read fLeft          write SetLeft;
         
    {@prop Top - Coordenada superior em mil�metros. :/}
    property    Top          :double            read fTop           write SetTop;
          
    {@prop Width - Largura em mil�metros. :/}
    property    Width        :double            read fWidth         write SetWidth;
        
    {@prop Height - Altura em mil�metros. :/}
    property    Height       :double            read fHeight        write SetHeight;
  end;
  {/@class}
  

  {@class TRLBackground - Propriedades para uma figura a ser desenhada no fundo de um site.
                          Determina o posicionamento ou forma de distribuicao, e o tamanho da figura no parentsite.
   @links TRLCustomSite.Background, TRLDegradeEffect. }
  TRLBackground=class(TPersistent)
  private

    // variables

    fParentSite :TRLCustomSite;
    fAlign      :TRLControlAlign;
    fArrange    :TRLImageArrange;
    fAutoSize   :boolean;
    fHeight     :integer;
    fPicture    :TPicture;
    fStretch    :boolean;
    fWidth      :integer;

    // assign methods

    procedure   SetAlign(const aValue:TRLControlAlign);
    procedure   SetArrange(const aValue:TRLImageArrange);
    procedure   SetAutoSize(const aValue:boolean);
    procedure   SetHeight(const aValue:integer);
    procedure   SetPicture(const aValue:TPicture);
    procedure   SetStretch(const aValue:boolean);
    procedure   SetWidth(const aValue:integer);

  public

    // constructors & destructors

    constructor Create(aOwner:TRLCustomSite);
    destructor  Destroy; override;

    // custom methods
    
    {@method PaintTo - Desenha em outra superf�cie. :}
    procedure   PaintTo(aCanvas:TCanvas; aRect:TRect); overload;
    procedure   PaintTo(aSurface:TRLGraphicSurface; aRect:TRect); overload;
    {/@method}

    {@method AdjustSize - Ajusta tamanho de acordo com a imagem. :/}
    procedure   AdjustSize;

    // custom properties
    
    {@prop ParentSite - Refer�ncia ao site sobre o qual o fundo ser� desenhado.
     @links TRLCustomSite. :/}
    property    ParentSite :TRLCustomSite   read fParentSite write fParentSite;
    
  published

    // custom properties
    
    {@prop Align - Alinhamento da imagem.
     @links TRLControlAlign. :/}
    property    Align      :TRLControlAlign read fAlign      write SetAlign    default faClient;
    
    {@prop Arrange - Arranjo da imagem.
     @links TRLImageArrange. :/}
    property    Arrange    :TRLImageArrange read fArrange    write SetArrange  default baAligned;

    {@prop AutoSize - Redimensionamento autom�tico da imagem. :/}
    property    AutoSize   :boolean         read fAutoSize   write SetAutoSize default True;

    {@prop Height - Altura da imagem. :/}
    property    Height     :integer         read fHeight     write SetHeight   default 40;
    
    {@prop Stretch - Esticamento da imagem. :/}
    property    Stretch    :boolean         read fStretch    write SetStretch  default False;
    
    {@prop Width - Largura da imagem. :/}
    property    Width      :integer         read fWidth      write SetWidth    default 40;
    
    {@prop Picture - Imagem de fundo. :/}
    property    Picture    :TPicture        read fPicture    write SetPicture;
  end;
  {/@class}
  

  {@class TRLDegradeEffect - Efeito de transi��o de cores no fundo de um site.
                             Determina as cores origem e destino e a dire��o do efeito.
   @links TRLCustomSite.Degrade, TRLBackground. }
  TRLDegradeEffect=class(TPersistent)
  private

    // variables

    fParentSite   :TRLCustomSite;
    fOppositeColor:TColor;
    fDirection    :TRLDegradeDirection;
    fGranularity  :integer;

    // assign methods

    procedure   SetDirection(const aValue:TRLDegradeDirection);
    procedure   SetOppositeColor(const aValue:TColor);
    procedure   SetGranularity(const aValue:integer);

    // custom methods
                        
    procedure   PaintTo(aCanvas:TCanvas; aRect:TRect; aColor:TColor); overload;
    procedure   PaintTo(aSurface:TRLGraphicSurface; aRect:TRect; aColor:TColor); overload;
    
  public

    // constructors & destructors

    constructor Create(aOwner:TRLCustomSite);

    {@prop ParentSite - Refer�ncia ao site sobre o qual o efeito ser� desenhado.
     @links TRLCustomSite. :/}
    property    ParentSite   :TRLCustomSite       read fParentSite;

  published

    // custom properties

    {@prop Direction - Dire��o do efeito.
     @links TRLDegradeDirection. :/}
    property    Direction    :TRLDegradeDirection read fDirection     write SetDirection     default ddNone;
    
    {@prop OppositeColor - Cor oposta. :/}
    property    OppositeColor:TColor              read fOppositeColor write SetOppositeColor default clBlack;
    
    {@prop Granularity - Dist�ncia entre os tons do efeito. :/}
    property    Granularity  :integer             read fGranularity   write SetGranularity   default 1;
  end;
  {/@class}
  

  {@type TRLSortedBandTypes - Tipos das bands sortedadas.
   @links TRLSortedBands. :}
  TRLSortedBandTypes=array[btHeader..btFooter] of record
    List   :TList;
    Printed:boolean;
  end;
  {/@type}

  {@class TRLSortedBands - Propriedades para atribui��o de Bands a CustomSkippers.
                           Determina as Bands incluidas pelos seus tipos bem como controla os tipos de Bands j�
                           impressos no ParentSkipper.
   @links TRLCustomPager.SortedBands, TRLSortedBandTypes. }
  TRLSortedBands=class(TPersistent)
  private

    // variables

    fTypes:TRLSortedBandTypes;

    // assign methods

    function    GetList(aType:TRLBandType):TList;
    function    GetPrinted(aType:TRLBandType):boolean;
    procedure   SetPrinted(aType:TRLBandType; aValue:boolean);
    
  public

    // constructors & destructors
    
    constructor Create;
    destructor  Destroy; override;

    // custom methods

    {@method Add - Adiciona banda ou controle semelhante.
     @links TRLCustomSite. :/}
    procedure   Add(aBand:TRLCustomSite);
    
    {@method Clear - Limpa a lista. :/}
    procedure   Clear;
    
    {@method ResetPage - Reseta os flags de impresso para bands n�o title. :/}
    procedure   ResetPage;
    
    {@method ResetAll - Reseta os flags de impresso para todas as bands. :/}
    procedure   ResetAll;
    
    // custom properties
    
    {@prop List - Refer�ncia para lista de bands do tipo informado.
     @links TRLBandType. :/}
    property    List[aType:TRLBandType]:TList      read GetList;
    
    {@prop Printed - Flag de impresso para bands do tipo informado.
     @links TRLBandType. :/}
    property    Printed[aType:TRLBandType]:boolean read GetPrinted write SetPrinted;
  end;
  {/@class}
  

  { TRLPreviewOptions }

  {@type TRLPreviewOptionsDefaults - Uso dos defaults no preview padr�o.
   Pode assumir um dos seguintes valores:
   pdUseDefaults - Utilizar as mesmas op��es deixadas pelo �ltimo preview;
   pdIgnoreDefaults - Utilizar as op��es definidas na prop PreviewOptions.
   @links TRLPreviewOptions. :/}
  TRLPreviewOptionsDefaults=(pdUseDefaults,pdIgnoreDefaults);

  {@class TRLPreviewOptions - Op��es do form de preview padr�o para um componente TRLReport em particular.
   @links TRLCustomReport.PreviewOptions, TRLPreviewOptionsDefaults. }
  TRLPreviewOptions=class(TPersistent)
  private

    // variables

    fParentReport:TRLCustomReport;
    fDefaults    :TRLPreviewOptionsDefaults;
    fShowModal   :boolean;
    fFormStyle   :TFormStyle;
    fPosition    :TPosition;
    fWindowState :TWindowState;
    fBorderIcons :TBorderIcons;
    fHelpFile    :string;
    fHelpContext :integer;
    fCaption     :TCaption;

    // assign methods

    function    IsCaption:boolean;
    
  public

    // constructors & destructors
    
    constructor Create(aOwner:TRLCustomReport);

    {@method Assign - Inicializa propriedades a partir de um outro objeto. :/}
    procedure   Assign(Source:TRLPreviewOptions); reintroduce;

    // custom properties
    
    {@prop ParentReport - Refer�ncia ao report.
     @links TRLCustomReport. :/}
    property    ParentReport:TRLCustomReport read fParentReport write fParentReport;
    
  published

    // custom properties
    
    {@prop WindowState - Indica o estado inicial da janela de preview. :/}
    property    WindowState:TWindowState              read fWindowState write fWindowState default wsMaximized;
    
    {@prop Position - Indica a posi��o da janela de preview. :/}
    property    Position   :TPosition                 read fPosition    write fPosition    default poScreenCenter;
    
    {@prop FormStyle - Indica o estilo da janela de preview. :/}
    property    FormStyle  :TFormStyle                read fFormStyle   write fFormStyle   default fsNormal;
    
    {@prop ShowModal - Indica se a janela de preview ser� modal. :/}
    property    ShowModal  :boolean                   read fShowModal   write fShowModal   default False;
    
    {@prop BorderIcons - Seleciona os bot�es da janela de preview. :/}
    property    BorderIcons:TBorderIcons              read fBorderIcons write fBorderIcons default [biSystemMenu,biMinimize,biMaximize];
    
    {@prop HelpFile - Nome do arquivo de help para a janela preview, se houver. :/}
    property    HelpFile   :string                    read fHelpFile    write fHelpFile;
    
    {@prop HelpContext - Contexto de help para a janela preview, se houver. :/}
    property    HelpContext:integer                   read fHelpContext write fHelpContext default 0;
    
    {@prop Caption - T�tulo da janela de preview. :/}
    property    Caption    :TCaption                  read fCaption     write fCaption     stored  IsCaption;
    
    {@prop Defaults - Indica como estas configura��es ser�o utilizadas pelo form de preview.
     @links TRLPreviewOptionsDefaults. :/}
    property    Defaults   :TRLPreviewOptionsDefaults read fDefaults    write fDefaults    default pdUseDefaults;
  end;
  {/@class}
  

  // CUSTOM Components

  { TRLCustomControl }

  {@class TRLCustomControl - Super classe da qual derivam todos os controles do FortesReport.
   @ancestor TCustomControl. }
  TRLCustomControl=class(TCustomControl)
  private

    // variables

    fPreparingCaption  :TCaption;

    // property variables
    
    fAfterPrint        :TRLAfterPrintEvent;
    fAlign             :TRLControlAlign;
    fAlignment         :TRLTextAlignment;
    fAutoSize          :boolean;
    fAutoSizeDir       :TRLAutoSizeDirSet;
    fAutoExpand        :boolean;
    fAutoTrunc         :boolean;
    fAnchors           :TRLControlAnchors;
    fBorders           :TRLBorders;
    fHolder            :TRLCustomControl;
    fHoldStyle         :TRLHoldStyle;
    fHolderOffset      :TPoint;
    fSecondHolder      :TRLCustomControl;
    fSecondHoldStyle   :TRLHoldStyle;
    fSecondHolderOffset:TPoint;
    fHoldeds           :TList;
    fPeekBoundsRect    :TRect;
    fRealBounds        :TRLRealBounds;
    fCaption           :TCaption;
    fLayout            :TRLTextLayout;
    fControlState      :TRLControlState;
    fBehavior          :TRLControlBehavior;
    fTransparent       :boolean;
    fOldBoundsRect     :TRect;
    fFixedSize         :TPoint;
    fSizeFixed         :boolean;
    fFriendlyName      :string;
    fCouldPrint        :boolean;
    fDefaultBehavior   :TRLControlBehavior;

    // property variables
    
    fOnMeasureHeight   :TNotifyEvent;

    // assign methods

    procedure   SetAlign(const aValue:TRLControlAlign);
    procedure   SetAnchors(const aValue:TRLControlAnchors);
    procedure   SetAutoExpand(const aValue:boolean);
    procedure   SetHolder(const aValue:TRLCustomControl);
    procedure   SetHoldStyle(const aValue:TRLHoldStyle); 
    procedure   SetSecondHolder(const aValue:TRLCustomControl);
    procedure   SetSecondHoldStyle(const aValue:TRLHoldStyle);
    procedure   SetTransparent(const aValue:boolean);
    procedure   SetCaption(const aValue:TCaption); 
    procedure   SetAlignment(const aValue:TRLTextAlignment); 
    procedure   SetAutoTrunc(const aValue:boolean);
    procedure   SetLayout(const aValue:TRLTextLayout);
    procedure   SetBorders(const aValue:TRLBorders);
    procedure   SetRealBounds(const aValue:TRLRealBounds);
    procedure   SetClientHeight(const Value:integer);
    procedure   SetClientWidth(const Value:integer);
    procedure   SetClientSize(const Value:TPoint);
    procedure   SetFriendlyName(const Value:string);
    function    GetDefaultCaption:TCaption;

    // custom methods

    function    IsFriendlyName:boolean;
    function    IsCaption:boolean;
    function    IsBehavior:boolean;

  protected

    // property variables

    fBeforeText        :TRLBeforeTextEvent;
    fBeforePrint       :TRLBeforePrintEvent;

    {@method PrintAsCustomControl - Imprimir como TRLCustomControl. :/}
    procedure   PrintAsCustomControl;

    {@method PaintAsCustomControl - Desenha como TRLCustomControl. :/}
    procedure   PaintAsCustomControl;

    // override & reintroduce
    
    procedure   Notification(aComponent: TComponent; Operation: TOperation); override;
    procedure   RequestAlign; override;
    function    GetClientRect:TRect; override;
    procedure   SetName(const Value:TComponentName); override;
{$ifdef Win32}
    procedure   SetParent(aParent:TWinControl); override;
{$else}
    procedure   SetParent(const aParent:TWidgetControl); override;
{$endif}
    procedure   InternalPaintFinish; dynamic;
    procedure   InternalPaint; dynamic;
    procedure   Paint; override;

    {@method SetAutoSize - SetAutoSize estendido. :/}
    procedure   SetAutoSize(const aValue:boolean); reintroduce;

    // assign methods
    
    {@method GetCaption - Retorna o caption dependendo do estado do relat�rio. :/}
    function    GetCaption:TCaption;
                                                  
    {@method GetMasterReport - Retorna refer�ncia ao relat�rio principal da cadeia ap�s busca recursiva atrav�s das props Parent e PriorReport.
     Se n�o encontrar, retorna nil.
     @links TRLCustomReport, TRLCustomReport.NextReport, TRLCustomReport.PriorReport. :/}
    function    GetMasterReport:TRLCustomReport;

    {@method GetClientHeight - Retorna a altura da �rea cliente.
     @links ClientRect. :/}
    function    GetClientHeight:integer;

    {@method GetClientWidth - Retorna a largura da �rea cliente.
     @links ClientRect. :/}
    function    GetClientWidth:integer;

    // static methods
    
    {@method AdjustToParentFrame - Ajusta as dimens�es do controle pai, se este for um TFrame. :/}
    procedure   AdjustToParentFrame(var aLeft,aTop,aWidth,aHeight:integer);

    {@method AdjustToFixedSize - Ajusta coordenadas de acordo com as dimens�es estabelecidas no m�todo CalcSize.
     @links CalcSize. :/}
    procedure   AdjustToFixedSize(var aLeft,aTop,aWidth,aHeight:integer);

    {@method AdjustToHolder - Ajusta coordenadas de acordo com o holder.
     @links TRLCustomControl, Holder, SecondHolder. :/}
    procedure   AdjustToHolder(aHolder:TRLCustomControl; var aLeft,aTop,aWidth,aHeight:integer);

    procedure   AdjustToConstraints(var aWidth,aHeight:integer);

    {@method OriginalSetBounds - Corresponde ao m�todo SetBounds original sem efeitos colaterais de alinhamento estendido. :/}
    procedure   OriginalSetBounds(aLeft,aTop,aWidth,aHeight:integer);

    {@method CanSetWidth - Indica se � poss�vel para o usu�rio determinar uma largura aleat�ria para o controle.
     Em determinadas circunst�ncias dependendo do alinhamento, autosize ou holder, n�o � poss�vel modificar as dimens�es.
     @links AutoSize, Align, Holder. :/}
    function    CanSetWidth:boolean;
    
    {@method CanSetHeight - Indica se � poss�vel para o usu�rio determinar uma altura aleat�ria para o controle.
     Em determinadas circunst�ncias dependendo do alinhamento, autosize ou holder, n�o � poss�vel modificar as dimens�es.
     @links AutoSize, Align, Holder. :/}
    function    CanSetHeight:boolean;

    {@method ExpandParentSite - Ajusta as dimens�es do controle pai. :/}
    procedure   ExpandParentSite;

    {@method AdjustAlignment - Ajusta as dimens�es do controle respeitando o seu alinhamento. :/}
    procedure   AdjustAlignment(var aRect:TRect);

    {@method DoAfterPrint - Invoca o evento AfterPrint.
                            N�o utilize o m�todo diretamente. Ele invoca o evento AfterPrint do controle ap�s a sua impress�o. :/}
    procedure   DoAfterPrint;

    {@method DoBeforePrint - Invoca o evento BeforePrint.
                             N�o utilize o m�todo diretamente. Ele invoca o evento BeforePrint do controle antes da sua impress�o. :/}
    procedure   DoBeforePrint(var aPrintIt:boolean);

    {@method DoBeforeText - Invoca o evento BeforePrint.
                            N�o utilize o m�todo diretamente. Ele invoca o evento BeforePrint do controle antes da sua impress�o. :/}
    procedure   DoBeforeText(var aText:string; var aPrintIt:boolean);

    {@method DoOnMeasureHeight - Invoca o evento OnMeasureHeight.
                                 N�o utilize o m�todo diretamente. Ele invoca o evento OnMeasureHeight do controle na horas das medi��es de p�gina. :/}
    procedure   DoOnMeasureHeight;

    {@method GetMadeCaption - Produz e retorna o Caption.
     @links MakeCaption. :/}
    function    GetMadeCaption:string;

    {@method MakeCaption - Produz o Caption.
     @links GetMadeCaption. :/}
    procedure   MakeCaption;

    {@method AdjustBounds - Ajusta coordenadas e tamanho. :/}
    procedure   AdjustBounds;

    {@method RealignHoldeds - Ajusta cotroles "agarrados".
     @links Hold, Holdeds. :/}
    procedure   RealignHoldeds;

    {@method Hold - Agarra controle. :/}
    procedure   Hold(aControl:TRLCustomControl; aPlace:integer);

    {@method Unhold - Libera controle agarrado. :/}
    procedure   Unhold(aControl:TRLCustomControl);
    procedure   CheckParent(var aControl:TWinControl);

    {@method IsBallast - O controle est� sendo impresso como um lastro.
                         Quando o parentpager est� imprimindo bands em branco para preencher o espa�o da p�gina, ou
                         quando o parentskipper foi instru�do a saltar um registro, o controle � dito lastro. :/}
    function    IsBallast:boolean;

    // dynamic methods
    
    {@method CanPrint - Interven��o antes da impress�o.
     N�o utilize CanPrint diretamente. Este m�todo � disparado automaticamente pelo painel sempre antes de
     sua impress�o. Este m�todo invoca o evento BeforePrint, dentro do qual se pode mudar caracter�sticas
     do painel como: tamanho, cor, etc., al�m de decidir se ele ser� impresso ou n�o.
     Nota: Paineis n�o vis�veis ou desabilitados n�o disparar�o este m�todo.
     O tamanho do painel ser� restaurado automaticamente ap�s a sua impress�o. :/}
    function    CanPrint:boolean; dynamic;

    {@method CalcSize - Cacula o tamanho do controle. :/}
    procedure   CalcSize(var aSize:TPoint); dynamic;

    {@method DrawBounds - Desenha bordas.
     N�o utilize este m�todo diretamente. Ele � disparado automaticamente para que sejam impressas as bordas
     ao redor do panel. :/}
    procedure   DrawBounds; dynamic;
    
    {@method CalcWastedPixels - Margens dispensadas do controle. :/}
    function    CalcWastedPixels:TRect; dynamic;

    {@method CalcPrintClientRect - Ret�ngulo com coordenadas relativas � linha corrente da p�gina. :/}
    function    CalcPrintClientRect:TRect; dynamic;

    {@method CalcPrintBoundsRect - Ret�ngulo com coordenadas relativas ao parentreport. :/}
    function    CalcPrintBoundsRect:TRect; dynamic;
    
    {@method CalcPrintSizeRect - Cacula o tamanho do controle para fins de impress�o. :/}
    function    CalcPrintSizeRect:TRect; dynamic;
    
    {@method CalcSizeRect - Cacula o tamanho do controle. :/}
    function    CalcSizeRect:TRect; dynamic;
    
    {@method SetClientRect - Estabelece as dimens�es do controle descontando margens etc. :/}
    procedure   SetClientRect(const aValue:TRect); virtual;
    
    {@method InternalMakeCaption - Produz Caption. :/}
    function    InternalMakeCaption:string; dynamic;

    {@method Initialize - Inicializa os acumuladores internos.
     Inicializa os acumuladores internos do controle em quest�o e de seus controles filhos.
     Estes acumuladores podem ser contadores de registros, totalizadores de campos num�ricos
     e informa��es de estat�stica. :/}
    procedure   Initialize; dynamic;

    {@method ComputeDetail - Computar novo Detail.
     N�o utilize este m�todo diretamente. Ele � invocado sempre que uma band de detalhe � impressa para
     que controles de contabilidade e estat�stica possam computar seus valores. O controle repassa a chamada
     para seus controles filhos em cascata. :/}
    procedure   ComputeDetail(aCaller:TObject); dynamic;
    
    {@method InternalPrint - Processa o controle para impress�o. :/}
    procedure   InternalPrint; dynamic;
    
    {@method RealignControls - Realinha os controles dentro deste de acordo com suas props. :/}
    procedure   RealignControls; dynamic;

    {@method InternalMeasureHeight - Mede a altura da band de acordo com seu conte�do, tentando predizer as
     quebras de folha que vir�o. :/}
    procedure   InternalMeasureHeight; dynamic;

    {@method GetAttribute - Devolve o valor do controle como um variant.
     Este valor � arbitr�rio e depende da classe que implementa o m�todo. :/}
    function    GetAttribute(const aName:string):variant; virtual;

    {@method SetAttribute - Modifica o valor do controle. :/}
    function    SetAttribute(const aName:string; aValue:variant):boolean; virtual;

{$ifdef Win32}
    procedure   CMColorChanged(var Message:TMessage); message CM_COLORCHANGED;
    procedure   CMFontChanged(var Message:TMessage); message CM_FONTCHANGED;
{$else}
    procedure   ColorChanged; override;
    procedure   FontChanged; override;
{$endif}

    {@method PrepareStatics - Prepara os controles filhos do painel antes de imprim�-los.
     Esta opera��o consiste em invocar os eventos BeforePrint de cada controle, dando oportunidade para o
     redimensionamento antes de renderizar todos os controles. :/}
    procedure   PrepareStatics;

    {@method PrintStatics - Desenha os controles filhos do painel sobre a sua superf�cie. :/}
    procedure   PrintStatics;

    {@method PrintNonStatics - For�a a impress�o de controles n�o est�ticos como subdetalhes e grupos. :/}
    procedure   PrintNonStatics;

    property    CouldPrint:boolean read fCouldPrint write fCouldPrint;

  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;
    destructor  Destroy; override;

    // override methods

    procedure   SetBounds(aLeft,aTop,aWidth,aHeight:integer); override;

    // static methods

    function    IsPreparing:boolean;

    {@method IsMeasurable - Indica se o controle pode sofrer predic��o sobre a sua altura. :/}
    function    IsMeasurable:boolean;
    
    {@method MeasureHeight - Mede a altura do controle. :/}
    procedure   MeasureHeight;
    
    {@method PushBoundsRect - Guarda as dimens�es do controle. :/}
    procedure   PushBoundsRect;
    
    {@method PopBoundsRect - Restaura as dimens�es do controle. :/}
    procedure   PopBoundsRect;
    
    {@method Print - Gera imagem do controle para impress�o.
     Gera imagem do controle junto com seus controles filhos e dispara os eventos BeforePrint e AfterPrint. :/}
    procedure   Print;
    //
    {@method FindParentSite - Refer�ncia ao site pai. Retorna refer�ncia ao site pai ap�s busca din�mica pela prop Parent.
     @links TRLCustomSite. :/}
    function    FindParentSite   :TRLCustomSite;
    
    {@method FindParentBand - Refer�ncia � band pai. Retorna refer�ncia � band pai ap�s busca din�mica pela prop Parent.
     @links TRLCustomBand. :/}
    function    FindParentBand   :TRLCustomBand;

    {@method FindParentGroup - Refer�ncia ao grupo pai. Retorna refer�ncia ao grupo pai ap�s busca din�mica pela prop Parent.
     @links TRLCustomGroup. :/}
    function    FindParentGroup  :TRLCustomGroup;

    {@method FindParentPager - Refer�ncia ao pager pai. Retorna refer�ncia ao parentpager pai ap�s busca din�mica pela prop Parent.
     @links TRLCustomPager. :/}
    function    FindParentPager  :TRLCustomPager;

    {@method FindParentSkipper - Refer�ncia � skipper pai. Retorna refer�ncia ao skipper pai ap�s busca din�mica pela prop Parent.
     @links TRLCustomSkipper. :/}
    function    FindParentSkipper:TRLCustomSkipper;
    
    {@method FindParentReport - Refer�ncia ao relat�rio pai. Retorna refer�ncia ao relat�rio pai ap�s busca din�mica pela prop Parent.
     @links TRLCustomReport. :/}
    function    FindParentReport :TRLCustomReport;
    //
    {@method RequestParentPager - Refer�ncia ao pager pai. Gera exce��o se n�o encontrar.
     @links TRLCustomPager. :/}
    function    RequestParentPager  :TRLCustomPager;

    {@method RequestParentSkipper - Refer�ncia � skipper pai. Gera exce��o se n�o encontrar.
     @links TRLCustomSkipper. :/}
    function    RequestParentSkipper:TRLCustomSkipper;
    
    {@method RequestParentSurface - Refer�ncia � skipper pai. Gera exce��o se n�o encontrar.
     @links TRLGraphicSurface. :/}
    function    RequestParentSurface:TRLGraphicSurface;

    {@method RequestParentReport - Refer�ncia ao report pai. Gera exce��o se n�o encontrar.
     @links TRLCustomReport. :/}
    function    RequestParentReport :TRLCustomReport;

    {@method Realign - For�a o realinhamento do controle dentro de seu control pai. :/}
    procedure   Realign; reintroduce;

    // dynamic methods
    
    {@method FindParentSurface - Superf�cie de desenho pai.
     Refer�ncia � superf�cie de desenho do painel pai.
     @links TRLGraphicSurface. :/}
    function    FindParentSurface:TRLGraphicSurface; dynamic;
    
    // custom properties
    
    {@prop Anchors - Ancoramento estendido. Propriedade estendida de ancoragem de controles.
     @links TRLControlAnchors. :/}
    property    Anchors           :TRLControlAnchors  read fAnchors            write SetAnchors          default [];
    
    {@prop Align - Alinhamento estendido. Propriedade estendida de alinhamento de controles.
     @links TRLControlAlign. :/}
    property    Align             :TRLControlAlign    read fAlign              write SetAlign            default faNone;

    {@prop Alignment - Especifica como o texto deve ser alinhado dentro de um controle.
     @links TRLTextAlignment. :/}
    property    Alignment         :TRLTextAlignment   read fAlignment          write SetAlignment        default taLeftJustify;

    {@prop AutoSize - Redimensionamento autom�tico. Determina se o controle ir� se
     redimensionar automaticamente de acordo com o seu conte�do. :/}
    property    AutoSize          :boolean            read fAutoSize           write SetAutoSize         default False;

    {@prop AutoSizeDir - Determina em que dire��es o controle poder� efetuar o redimensionamento autom�tico.
     @links TRLAutoSizeDirSet. :/}
    property    AutoSizeDir       :TRLAutoSizeDirSet  read fAutoSizeDir        write fAutoSizeDir        default [];
    
    {@prop AutoExpand - Determina se o controle far� a expans�o de acordo com o seu conte�do. :/}
    property    AutoExpand        :boolean            read fAutoExpand         write SetAutoExpand       default False;
    
    {@prop AutoTrunc - Determina se o tamanho do controle depende do conte�do impresso. :/}
    property    AutoTrunc         :boolean            read fAutoTrunc          write SetAutoTrunc        default False;
    
    {@prop Behavior - Comportamento do controle. Utilize Behavior para definir o comportamento do controle sob diversos aspectos.
     @links TRLControlBehavior. :/}
    property    Behavior          :TRLControlBehavior read fBehavior           write fBehavior           stored IsBehavior;
    
    {@prop Caption - Texto a imprimir. :/}
    property    Caption           :TCaption           read GetCaption          write SetCaption          stored  IsCaption;
    
    {@prop FriendlyName - Nome amig�vel para uso com o ExpressionParser e interface com o usu�rio final. :/}
    property    FriendlyName      :string             read fFriendlyName       write SetFriendlyName     stored IsFriendlyName;
    
    {@prop HoldStyle - Estilo de ancoragem. Define as regras de ancoragem entre dois controles.
     @links TRLHoldStyle. :/}
    property    HoldStyle         :TRLHoldStyle       read fHoldStyle          write SetHoldStyle        default hsAsColumn;

    {@prop HolderOffset - Dist�ncia do ancoradouro. :/}
    property    HolderOffset      :TPoint             read fHolderOffset       write fHolderOffset;

    {@prop Layout - Layout do texto. Define o posicionamento vertical do texto no controle.
     @links TRLTextLayout. :/}
    property    Layout            :TRLTextLayout      read fLayout             write SetLayout           default tlTop;

    {@prop SecondHoldStyle - Estilo de ancoragem ao segundo ancoradouro.
     @links TRLHoldStyle. :/}
    property    SecondHoldStyle   :TRLHoldStyle       read fSecondHoldStyle    write SetSecondHoldStyle  default hsAsColumn;

    {@prop SecondHolderOffset - Dist�ncia ao segundo ancoradouro. :/}
    property    SecondHolderOffset:TPoint             read fSecondHolderOffset write fSecondHolderOffset;
    
    {@prop Transparent - Transpar�ncia do controle em tempo de impress�o.
     Utilize Transparent quando for necess�rio imprimir apenas o conte�do do painel.
     Um painel normalmente sobrep�e qualquer imagem ou efeito que estiver por tr�s dele.
     Quando o painel � transparente n�o possui uma cor de preenchimento, preservando a
     imagem ou efeitos desenhados no painel pai. :/} 
    property    Transparent       :boolean            read fTransparent        write SetTransparent      default True;
    
    // internal custom properties
    
    {@prop ControlState - Estado do controle dentre as diversas atividades.
     @links TRLControlState. :/}
    property    ControlState      :TRLControlState    read fControlState       write fControlState;

    {@prop OldBoundsRect - Cont�m as �ltimas dimens�es do controle antes da �ltima altera��o. :/}
    property    OldBoundsRect     :TRect              read fOldBoundsRect      write fOldBoundsRect;

    {@prop PeekBoundsRect - Cont�m as dimens�es originais do controle salvas antes da sua impress�o. :/}
    property    PeekBoundsRect    :TRect              read fPeekBoundsRect     write fPeekBoundsRect;

    // indirections

    {@prop ClientHeight - Determina ou indica a altura da �rea cliente. :/}
    property    ClientHeight      :integer            read GetClientHeight     write SetClientHeight;

    {@prop ClientRect - Ret�ngulo da �rea cliente.
     Retorna ret�ngulo contendo as coordenadas da �rea cliente do controle.
     A �rea cliente corresponde ao ret�ngulo Rect(0,0,Width,Height), deduzido das bordas. :/}
    property    ClientRect        :TRect              read GetClientRect       write SetClientRect;

    {@prop ClientWidth - Determina ou indica a largura da �rea cliente. :/}
    property    ClientWidth       :integer            read GetClientWidth      write SetClientWidth;

    // links

    {@prop Holder - Controle refer�ncia para ancoragem.
     O mecanismo por tr�s da prop holder � um dos recursos mais interessantes do FortesReport. Esta prop
     aponta para um controle que servir� como �ncora, como refer�ncia de posicionamento.
     � poss�vel informar para um RLDBText de uma band detalhe que sua posi��o horizontal deve se
     mant�r sempre igual ao RLLabel correspondente no cabe�alho, indicando RLDBText.Holder:=RLLabel.
     Deste modo, ao mover o label do cabe�alho, em tempo de design ou impress�o, o RLDBText ser�
     movido junto com ele.
     H� v�rias op��es de ancoragem e tamb�m h� a possibilidade de um controle possuir dois
     holders: um para refer�ncia horizontal e outro para vertical, por exemplo.
     @links TRLCustomControl, HoldStyle, SecondHolder. :/}
    property    Holder            :TRLCustomControl   read fHolder             write SetHolder;

    {@prop SecondHolder - Segundo controle refer�ncia de ancoragem. Define um outro controle para refer�ncia de ancoragem.
     @links TRLCustomControl, SecondHoldStyle, Holder. :/}
    property    SecondHolder      :TRLCustomControl   read fSecondHolder       write SetSecondHolder;
    
    // agregates
    
    {@prop Borders - Bordas ao redor do controle.
     Utilize Borders para exibir bordas ao redor do painel. As bordas ser�o exibidas entre as margens
     exteriores e interiores do painel. � poss�vel informar que lados ser�o exibidos, a largura das linhas,
     o n�vel de qualidade, a cor e etc.
     @links TRLBorders. :/}
    property    Borders           :TRLBorders         read fBorders            write SetBorders;

    {@prop RealBounds - Configura��o do tamanho real de um controle em mil�metros ou polegadas.
     Nota: Esta funcionalizade n�o est� implementada.
     @links TRLRealBounds. :/}
    property    RealBounds        :TRLRealBounds      read fRealBounds         write SetRealBounds;

    // readonly

    {@prop Holdeds - Lista de controles "agarrados". Cont�m a lista dos controles que orientam suas posi��es relativamente �s coordenadas deste. :/}
    property    Holdeds           :TList              read fHoldeds;

    {@prop MasterReport - Relat�rio mestre.
     Retorna refer�ncia ao componente TRLReport do relat�rio mestre ao qual o painel pertence.
     A pesquisa � feita dinamicamente a cada chamada e utiliza a propriedade Parent.
     Nota: O FortesReport permite a composi��o de relat�rios atrav�s de concatena��o.
     Esta propriedade deve retornar uma refer�ncia ao primeiro relat�rio da composi��o, do
     qual se pode extrair informa��es comuns a todos os relat�rios, como: n�mero de p�ginas,
     tamanho do papel, etc.
     @links TRLCustomReport. :/}
    property    MasterReport      :TRLCustomReport    read GetMasterReport;

    // events
    
    {@event AfterPrint - Ap�s a impress�o. Ocorre exatamente ap�s o controle ter sua imagem impressa no relat�rio.
     @links TRLAfterPrintEvent. :/}
    property    AfterPrint        :TRLAfterPrintEvent read fAfterPrint         write fAfterPrint;

    {@event OnMeasureHeight - Na hora de medir a altura. :/}
    property    OnMeasureHeight   :TNotifyEvent       read fOnMeasureHeight    write fOnMeasureHeight;

    // standard properties

    {@prop ParentColor - Heran�a de cor. Define se o controle deve herdar a cor do controle pai. :/}
    property    ParentColor default True;

    {@prop ParentFont - Heran�a de fonte. Define se o controle deve herdar a fonte do controle pai. :/}
    property    ParentFont  default True;

    {@prop Visible - Determina se o controle ser� vis�vel em tempo de impress�o.
     Com esta propriedade configurada para False o controle ser� ignorado em tempo de impress�o e nenhum evento
     ligado a ele ser� disparado. :/}
    property    Visible;

    {@prop Color - Cor do controle. Define a cor de fundo do controle. :/}
    property    Color;

    {@prop Font - Fonte do controle. Define a fonte do controle. :/}
    property    Font;
  end;
  {/@class}
  

  { TRLCustomDBControl }

  {@class TRLCustomDBControl - Classe base da qual se pode derivar controles de impress�o dataware.
   @ancestor TRLCustomControl. }
  TRLCustomDBControl=class(TRLCustomControl)
  private

    // variables

    fDataField :TRLDataFieldProperty;
    fDataSource:TDataSource;

    // assign methods

    function    GetField:TField;
    function    GetDataSet:TDataSet;
    procedure   SetDataField(const aValue:TRLDataFieldProperty);
    procedure   SetDataSource(const aValue:TDataSource);
    
  protected

    // override methods

    function    InternalMakeCaption:string; override;
    procedure   Notification(aComponent:TComponent; Operation:TOperation); override;
    
  public

    // constructors & destructors
    
    constructor Create(aOwner:TComponent); override;

    // custom properties
    
    {@prop DataField - Nome do campo associado.
     @links TRLDataFieldProperty. :/}
    property    DataField :TRLDataFieldProperty read fDataField  write SetDataField;

    {@prop DataSource - Refer�ncia ao DataSource que controle utiliza para se conectar ao DataSet. :/}
    property    DataSource:TDataSource          read fDataSource write SetDataSource;

    // readonly
    {@prop Field - Refer�ncia para o objeto TField determinado pelas props DataField e DataSource. :/}
    property    Field     :TField               read GetField;
    
    {@prop DataSet - Refer�ncia para o objeto TDataSet determinado pela prop DataSource. :/}
    property    DataSet   :TDataSet             read GetDataSet;
  end;
  {/@class}
  

  { TRLCustomLabel }

  {@class TRLCustomLabel - Classe base da qual derivam todas as caixas de texto.
   Utilize descendentes do TRLCustomLabel para imprimir textos est�ticos ou din�micos sobre o relat�rio.
   @ancestor TRLCustomControl. }
  TRLCustomLabel=class(TRLCustomControl)
  protected

    // override methods

    procedure   CalcSize(var aSize:TPoint); override;
    procedure   InternalPrint; override;
    procedure   InternalPaint; override;
    
  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;

    // custom properties
    
    {@prop AutoSize - Redimensionamento autom�tico.
     Determina se a label ir� se redimensionar automaticamente de acordo com o tamanho do seu Caption. :/}
    property    AutoSize default True;

    {@prop Caption - Texto a ser impresso no corpo do label. :/}
    property    Caption;

    // events

    {@event BeforePrint - Antes da impress�o. Ocorre antes da impress�o do controle para alterar o texto ou
     suspender a sua impress�o.
     @links TRLBeforeTextEvent. :/}
    property    BeforePrint:TRLBeforeTextEvent read fBeforeText write fBeforeText;
  end;
  {/@class}
  

  { TRLCustomAngleLabel }

  {@class TRLCustomAngleLabel - Caixa de texto com rota��o por �ngulo.
   @ancestor TRLCustomControl. }
  TRLCustomAngleLabel=class(TRLCustomControl)
  private

    // variables

    fAngle       :double;
    fAngleBorders:boolean;

    // assign methods

    procedure   SetAngle(const aValue:double);
    procedure   SetAngleBorders(const aValue:boolean);
    function    IsAngle:boolean;
    
  protected

    // override methods

    procedure   CalcSize(var aSize:TPoint); override;
    procedure   InternalPrint; override;
    procedure   InternalPaint; override;

  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;

    // custom properties
    
    {@prop Angle - �ngulo de inclina��o.
     Determina o �ngulo de inclina��o no desenho do texto. :/}
    property    Angle       :double             read fAngle        write SetAngle        stored IsAngle;
    
    {@prop AngleBorders - Funcionalidade n�o implementada. :/}
    property    AngleBorders:boolean            read fAngleBorders write SetAngleBorders default False;
    
    // events
    
    {@event BeforePrint - Antes da impress�o.
     Ocorre antes da impress�o do controle para alterar o texto ou suspender a sua impress�o.
     @links TRLBeforeTextEvent. :/}
    property    BeforePrint :TRLBeforeTextEvent read fBeforeText   write fBeforeText;

    {@prop AutoSize - Redimensionamento autom�tico.
     Determina se a label ir� se redimensionar automaticamente de acordo com o tamanho do seu Caption. :/}
    property    AutoSize default True;
  end;
  {/@class}
  

  { TRLCustomDBText }

  {@class TRLCustomDBText - Classe base da qual podem derivar caixas de texto dataware.
   @ancestor TRLCustomLabel. }
  TRLCustomDBText=class(TRLCustomLabel)
  private

    // variables

    fText       :TCaption;
    fDataField  :TRLDataFieldProperty;
    fDataFormula:string;
    fDataSource :TDataSource;
    fDisplayMask:string;

    // assign methods

    function    GetField:TField;
    function    GetFieldLabel:string;
    function    GetDataSet:TDataSet;
    procedure   SetDataField(const aValue:TRLDataFieldProperty);
    procedure   SetDataFormula(const aValue:string);
    procedure   SetDataSource(const aValue:TDataSource);

    // custom methods

    function    ApplyMask(const aValue:variant):string;

  protected

    // override & reintroduce
    
    function    InternalMakeCaption:string; override;
    procedure   Notification(aComponent:TComponent; Operation:TOperation); override;
    procedure   SetText(const aValue:TCaption); reintroduce;

    // dynamic
    
    function    GetFieldText:string; dynamic;
    
  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;

    // custom properties
    
    {@prop Text - Texto auxiliar. Este texto dever� ser impresso junto com o conte�do do campo. :/}
    property    Text       :TCaption             read fText        write SetText;
    
    {@prop DataField - Nome do campo associado.
     @links TRLDataFieldProperty. :/}
    property    DataField  :TRLDataFieldProperty read fDataField   write SetDataField;

    {@prop DataFormula - Express�o matem�tica envolvendo campos, valores e literais. :/}
    property    DataFormula:string               read fDataFormula write SetDataFormula;

    {@prop DataSource - Refer�ncia ao DataSource que controle utiliza para se conectar ao DataSet. :/}
    property    DataSource :TDataSource          read fDataSource  write SetDataSource;

    {@prop DisplayMask - Mascara de formata��o. :/}
    property    DisplayMask:string               read fDisplayMask write fDisplayMask;

    // readonly

    {@prop Field - Refer�ncia para o objeto TField determinado pelas props DataField e DataSource. :/}
    property    Field      :TField               read GetField;

    {@prop DataSet - Refer�ncia para o objeto TDataSet determinado pela prop DataSource. :/}
    property    DataSet    :TDataSet             read GetDataSet;
  end;
  {/@class}
  

  { TRLCustomDBResult }

  TRLDBResultBuiltIn=class
  public
    Id   :integer;
    Count:integer;
    Max  :variant;
    Min  :variant;
    Sum  :double;
    First:variant;
    Last :variant;
  end;

  {@class TRLCustomDBResult - Caixa de texto para resultado de c�culos matem�ticos com campos de um dataset.
   @ancestor TRLCustomDBText. }
  TRLCustomDBResult=class(TRLCustomDBText)
  private

    // variables

    fCount          :integer;
    fMax            :variant;
    fMin            :variant;
    fSum            :double;
    fInfo           :TRLResultInfo;
    fFirst          :variant;
    fLast           :variant;
    fFirstText      :string;
    fLastText       :string;
    fSimple         :variant;
    fOnCompute      :TRLOnComputeEvent;
    fNullValue      :variant;
    fResetAfterPrint:boolean;
    fMustResetValue :boolean;
    fBuiltInRegs    :TObjectList;
    fComputeNulls   :boolean;

    // assign methods

    procedure   SetInfo(const aValue:TRLResultInfo);
    function    GetValue:variant; 

    // builtin methods

    function    BuiltIn(aId:integer; aCanCreate:boolean=True):TRLDBResultBuiltIn;
    function    BuiltInCount(aId:integer):variant;
    function    BuiltInSum(aId:integer; aValue:variant):variant;
    function    BuiltInMin(aId:integer; aValue:variant):variant;
    function    BuiltInMax(aId:integer; aValue:variant):variant;
    function    BuiltInAvg(aId:integer; aValue:variant):variant;
    function    BuiltInFirst(aId:integer; aValue:variant):variant;
    function    BuiltInLast(aId:integer; aValue:variant):variant;

  protected

    // override methods

    function    GetFieldText:string; override;
    procedure   Initialize; override;
    procedure   ComputeDetail(aCaller:TObject); override;
    procedure   InternalPrint; override;
    function    GetAttribute(const aName:string):variant; override;

    {@method Resolve - Avalia uma fun��o built-in. :/}
    function    Resolve(Sender:TObject; const Identifier:string; Params:variant):variant;

  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;
    destructor  Destroy; override;

    // properties

    {@prop Info - Tipo de informa��o.
     @links TRLResultInfo. :/}
    property    Info           :TRLResultInfo     read fInfo            write SetInfo default riSimple;

    {@prop ResetAfterPrint - Zerar os acumuladores ap�s a impress�o. :/}
    property    ResetAfterPrint:boolean           read fResetAfterPrint write fResetAfterPrint default False;

    // readonly

    {@prop Value - Valor parcial. :/}
    property    Value:variant read GetValue;

    {@prop ComputeNulls - Indica se campos com valor nulo ser�o computados. :/}
    property    ComputeNulls:boolean read fComputeNulls write fComputeNulls default True;

    // events

    {@event OnCompute - Ocorre durante os c�lculos estat�sticos para valida��o do valor a ser computado.
     @links TRLOnComputeEvent. :/}
    property    OnCompute:TRLOnComputeEvent read fOnCompute write fOnCompute;
  end;
  {/@class}
  

  { TRLCustomSystemInfo }

  {@class TRLCustomSystemInfo - Caixa de texto com informa��es de sistema.
   @ancestor TRLCustomLabel. }
  TRLCustomSystemInfo=class(TRLCustomLabel)
  private

    // variables

    fInfoType:TRLInfoType;
    fText    :TCaption;

    // assign methods

    procedure   SetInfoType(const aValue:TRLInfoType);

  protected

    // override & reintroduce

    function    InternalMakeCaption:string; override;
    procedure   SetText(const aValue:TCaption); reintroduce;
    
  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;

    // custom properties

    {@prop Info - Tipo de informa��o.
     @links TRLInfoType. :/}
    property    Info:TRLInfoType read fInfoType write SetInfoType default itDate;

    {@prop Text - Texto auxiliar. :/}
    property    Text:TCaption    read fText     write SetText;
  end;
  {/@class}
  

  { TRLCustomMultiLine }

  {@class TRLCustomMultiLine - Classe base para controles multilinhas.
   @ancestor TRLCustomControl. }
  TRLCustomMultiLine=class(TRLCustomControl)
  private

    // variables

    fWordWrap      :boolean;
    fIntegralHeight:boolean;

    // assign methods

    procedure   SetWordWrap(const aValue:boolean);

  protected

    // override methods

    procedure   CalcSize(var aSize:TPoint); override;
    procedure   InternalPrint; override;
    procedure   InternalPaint; override;

  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;

    // custom properties

    {@prop WordWrap - Quebra autom�tica de linha.
     Determina se quebras autom�ticas de linha dever�o ser inseridas de modo a encaixar o texto de acordo com a
     largura do controle. :/}
    property    WordWrap      :boolean            read fWordWrap       write SetWordWrap     default True;

    {@prop IntegralHeight - Altura integral das linhas.
     Determina se as linhas que excederem a �rea cliente do controle ser�o exibidas. :/}
    property    IntegralHeight:boolean            read fIntegralHeight write fIntegralHeight default False;

    // events

    {@event BeforePrint - Antes da impress�o. Ocorre antes da impress�o do controle para alterar o texto ou suspender
     a sua impress�o.
     @links TRLBeforeTextEvent. :/}
    property    BeforePrint   :TRLBeforeTextEvent read fBeforeText     write fBeforeText;

    {@prop AutoSize - Redimensionamento autom�tico. Determina se o memo ir� se redimensionar automaticamente de
     acordo com o tamanho do seu texto. :/}
    property    AutoSize default True;
  end;
  {/@class}
  

  { TRLCustomMemo }

  {@class TRLCustomMemo - Classe base para caixa de texto multilinhas.
   @ancestor TRLCustomMultiLine. }
  TRLCustomMemo=class(TRLCustomMultiLine)
  private

    // variables

    fLines:TStrings;

    // assign methods

    procedure   SetLines(const aValue:TStrings);

    // event handlers

    procedure   TreatOnChange(Sender: TObject);

  protected

    // override methods

    function    InternalMakeCaption:string; override;
    
  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;
    destructor  Destroy; override;

    // custom properties
    
    {@prop Lines - Lista contendo as linhas de texto do memo. :/}
    property    Lines:TStrings read fLines write SetLines;
  end;
  {/@class}
  

  { TRLCustomDBMemo }

  {@class TRLCustomDBMemo - Classe base para caixa de texto multilinhas ligado a campo de dataset.
   @ancestor TRLCustomMultiLine. }
  TRLCustomDBMemo=class(TRLCustomMultiLine)
  private

    // variables

    fDataField  :TRLDataFieldProperty;
    fDataFormula:string;
    fDataSource :TDataSource;

    // assign methods

    function    GetField:TField;
    function    GetFieldLabel:string;
    function    GetDataSet:TDataSet;
    procedure   SetDataField(const aValue:TRLDataFieldProperty);
    procedure   SetDataFormula(const aValue:string);
    procedure   SetDataSource(const aValue:TDataSource);

  protected

    // override methods

    function    InternalMakeCaption:string; override;
    procedure   Notification(aComponent:TComponent; Operation:TOperation); override;
    function    GetFieldText:string;

  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;

    // custom properties
    
    {@prop Field - Refer�ncia para o objeto TField determinado pelas props DataField e DataSource. :/}
    property    Field      :TField               read GetField;
    
    {@prop DataSet - Refer�ncia para o objeto TDataSet determinado pela prop DataSource. :/}
    property    DataSet    :TDataSet             read GetDataSet;
    
    {@prop DataField - Nome do campo associado.
     @links TRLDataFieldProperty. :/}
    property    DataField  :TRLDataFieldProperty read fDataField   write SetDataField;

    {@prop DataFormula - Express�o matem�tica envolvendo campos, valores e literais. :/}
    property    DataFormula:string               read fDataFormula write SetDataFormula;

    {@prop DataSource - Refer�ncia ao DataSource que controle utiliza para se conectar ao DataSet. :/}
    property    DataSource :TDataSource          read fDataSource  write SetDataSource;
  end;
  {/@class}
  

  { TRLCustomImage }

  {@class TRLCustomImage - Classe base para caixa de imagem.
   @ancestor TRLCustomControl. }
  TRLCustomImage=class(TRLCustomControl)
  private

    // variables

    fPicture:TPicture;
    fStretch:boolean;
    fCenter :boolean;
    fScaled :boolean;

    // assign methods

    procedure   SetCenter(const aValue:boolean);
    procedure   SetPicture(const aValue:TPicture);
    procedure   SetStretch(const aValue:boolean);
    procedure   SetScaled(const aValue:boolean);

    // custom methods

    procedure   PictureChanged(Sender:TObject);

  protected

    // event handlers

    procedure   CalcSize(var aSize:TPoint); override;
    procedure   InternalPrint; override;
    procedure   InternalPaint; override;

  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;
    destructor  Destroy; override;

    // custom properties
    
    {@prop Center - Centraliza��o da imagem.
     Determina se a imagem deve ser posicionada ao centro da �rea cliente. :/}
    property    Center     :boolean             read fCenter      write SetCenter  default False;

    {@prop Stretch - Esticamento da imagem.
     Indica se a imagem deve ser esticada de modo a preencher totalmente a �rea cliente do controle. :/}
    property    Stretch    :boolean             read fStretch     write SetStretch default False;

    {@prop Scaled - Esticamento proporcional.
     Indica se a imagem deve ser esticada de modo a preencher �rea cliente do controle mantendo a mesma propor��o
     de altura e largura. :/}
    property    Scaled     :boolean             read fScaled      write SetScaled  default False;

    // objects

    {@prop Picture - Representa a imagem que aparece no fundo do controle. :/}
    property    Picture    :TPicture            read fPicture     write SetPicture;

    // events

    {@event BeforePrint - Antes da impress�o. Ocorre antes da impress�o do controle para modificar a imagem ou
     suspender a sua impress�o.
     @links TRLBeforePrintEvent. :/}
    property    BeforePrint:TRLBeforePrintEvent read fBeforePrint write fBeforePrint;
  end;
  {/@class}
  

  { TRLCustomDBImage }

  {@class TRLCustomDBImage - Classe base para caixa de imagem ligada a campo de dataset.
   @ancestor TRLCustomImage. }
  TRLCustomDBImage=class(TRLCustomImage)
  private

    // variables

    fDataField :TRLDataFieldProperty;
    fDataSource:TDataSource;

    // assign methods

    function    GetField:TField;
    function    GetDataSet:TDataSet;
    procedure   SetDataField(const aValue:TRLDataFieldProperty);
    procedure   SetDataSource(const aValue:TDataSource);

    // custom methods

    procedure   LoadPicture;

  protected

    // override methods

    procedure   Notification(aComponent:TComponent; Operation:TOperation); override;
    procedure   InternalPrint; override;

  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;

    // custom properties

    {@prop Field - Refer�ncia para o objeto TField determinado pelas props DataField e DataSource. :/}
    property    Field     :TField               read GetField;

    {@prop DataSet - Refer�ncia para o objeto TDataSet determinado pela prop DataSource. :/}
    property    DataSet   :TDataSet             read GetDataSet;

    {@prop DataField - Nome do campo associado.
     @links TRLDataFieldProperty. :/}
    property    DataField :TRLDataFieldProperty read fDataField  write SetDataField;

    {@prop DataSource - Refer�ncia ao DataSource que controle utiliza para se conectar ao DataSet. :/}
    property    DataSource:TDataSource          read fDataSource write SetDataSource;
  end;
  {/@class}
  

  { TRLCustomDraw }

  {@type TRLDrawKind - Tipo de figura geom�trica para o componente TRLDraw.
   Pode assumir um dos seguintes valores:
   dkRectangle - Desenha um ret�ngulo ou um quadrado;
   dkLine - Desenha uma linha reta;
   dkTriangle - Desenha um tri�ngulo;
   dkElipse - Desenha uma elipse ou um c�rculo;
   dkArrow - Desenha uma seta simples;
   dkCustom - Desenha um pol�gono cujos pontos s�o definidos na prop DrawData.
   @links TRLDraw, TRLCustomDraw.DrawData. :/}
  TRLDrawKind=(dkRectangle,dkLine,dkTriangle,dkElipse,dkArrow,dkCustom);

  {@type TRLDrawOptions - Op��es para desenho de figuras do RLDraw.
   Pode ser um conjunto dos seguintes valores:
   doKeepAspectRatio - A rela��o entre largura e altura da figura deve ser mantida;
   doKeepSize - O tamanho da figura ser� o original (mesmo do �ngulo zero) para qualquer �ngulo escolhido;
   doKeepVisible - A figura ter� um tamanho que permita que ela seja vista inteira em qualquer �ngulo escolhido.
   @links TRLDraw, TRLCustomDraw.DrawData. :}
  TRLDrawOption=(doKeepAspectRatio,doKeepSize,doKeepVisible);
  TRLDrawOptions=set of TRLDrawOption;
  {/@type}

  {@class TRLCustomDraw - Classe base para caixa de desenho de figuras geom�tricas.
   @ancestor TRLCustomControl. }
  TRLCustomDraw=class(TRLCustomControl)
  private

    // variables

    fAngle     :double;
    fBrush     :TBrush;
    fDrawKind  :TRLDrawKind;
    fPen       :TPen;
    fDrawData  :TStrings;
    fCenter    :boolean;
    fDrawWidth :integer;
    fDrawHeight:integer;
    fOptions   :TRLDrawOptions;

    // assign methods

    procedure   SetAngle(const aValue:double);
    procedure   SetBrush(const aValue:TBrush);
    procedure   SetDrawKind(const aValue:TRLDrawKind);
    procedure   SetPen(const aValue:TPen);
    procedure   SetDrawData(const Value:TStrings);
    procedure   SetCenter(const Value: boolean);
    procedure   SetDrawHeight(const Value: integer);
    procedure   SetDrawWidth(const Value: integer);
    procedure   SetOptions(const Value: TRLDrawOptions);
    //
    procedure   ReadKind(Reader: TReader);

    // event handlers

    procedure   ChangeResponse(Sender:TObject);

    // custom methods

    function    IsAngle:boolean;
    function    IsDrawData:Boolean;
    function    IsDrawSize: Boolean;
    procedure   ProducePoints(var aDest:TPointArray);
    procedure   ScaleToFit(var aPoints:TPointArray; const aRect:TRect);

  protected

    // override methods

    procedure   DefineProperties(Filer:TFiler); override;
    procedure   InternalPrint; override;
    procedure   InternalPaint; override;

  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;
    destructor  Destroy; override;

    // custom properties
    
    {@prop Angle - �ngulo de rota��o da figura. :/}
    property    Angle      :double              read fAngle       write SetAngle stored IsAngle;

    {@prop DrawKind - Tipo de figura geom�trica.
     @links TRLDrawKind. :/}
    property    DrawKind   :TRLDrawKind         read fDrawKind    write SetDrawKind default dkRectangle;

    // agregates

    {@prop Brush - Cor e padr�o de preenchimento da figura. :/}
    property    Brush      :TBrush              read fBrush       write SetBrush;

    {@prop Pen - Cor e estilo dos tra�oes usados no desenho da figura. :/}
    property    Pen        :TPen                read fPen         write SetPen;

    {@prop DrawData - Lista de coordenadas para desenho do pol�gono.
     A lista � uma sequ�ncia de n�meros inteiros separados por espa�os. Cada par de n�meros
     representa a coordenada absoluta de um ponto do pol�gono. Todos os pontos ser�o
     ligados. O primeiro e o �ltimo fechar�o o pol�gono. O pol�gono ser� desenhado e preenchido
     de acordo com as props Pen e Brush. :/}
    property    DrawData:TStrings read fDrawData write SetDrawData stored IsDrawData;

    {@prop Center - A figura deve ser centralizada na �rea cliente. :/}
    property    Center:boolean read fCenter write SetCenter default True;

    {@prop DrawWidth - Largura da figura em pixels. Quando n�o informada, fica valendo a largura do componente. :/}
    property    DrawWidth :integer read fDrawWidth write SetDrawWidth stored IsDrawSize;

    {@prop DrawHeight - Altura da figura em pixels. Quando n�o informada, fica valendo a altura do componente. :/}
    property    DrawHeight:integer read fDrawHeight write SetDrawHeight stored IsDrawSize;

    {@prop Options - Determina v�rias op��es de desenho da figura. @links TRLDrawOptions. :/}
    property    Options:TRLDrawOptions read fOptions write SetOptions default [];

    // events

    {@event BeforePrint - Antes da impress�o. Ocorre antes da impress�o do controle para modificar a imagem
                          ou suspender a sua impress�o.
     @links TRLBeforePrintEvent. :/}
    property    BeforePrint:TRLBeforePrintEvent read fBeforePrint write fBeforePrint;
  end;
  {/@class}
  

  { TRLCustomSite }

  {@class TRLCustomSite - Classe base da qual derivam todos os paineis de impress�o como: TRLBand, TRLPanel,
   TRLGroup e o pr�prio TRLReport. Derive a partir do TRLCustomSite para criar qualquer painel customizado.
   Nota: Descendentes do TRLCustomSite podem conter controles e outros paineis.
   @links TRLPanel, TRLBand, TRLGroup, TRLReport.
   @ancestor TRLCustomControl. }
  TRLCustomSite=class(TRLCustomControl)
  private

    // variables

    fBackground      :TRLBackground;
    fDegrade         :TRLDegradeEffect;
    fInsideMargins   :TRLMargins;
    fMargins         :TRLMargins;
    fSurface         :TRLGraphicSurface;
    fPrintPosition   :TPoint;
    fPrintSize       :TPoint;

    // events

    fOnDraw       :TRLOnDrawEvent;

    // assign methods

    procedure   SetBackground(const aValue:TRLBackground);
    procedure   SetDegrade(const aValue:TRLDegradeEffect);
    procedure   SetInsideMargins(const aValue:TRLMargins);
    procedure   SetMargins(const aValue:TRLMargins);
    //
    procedure   DrawFrame(Rect:TRect; aColor:TColor; aRound:boolean);
    procedure   DrawTracks;
    procedure   DrawUnusedRect(Rect:TRect);
    procedure   InvalidateAll;
    procedure   Signup(const aSignature:string; aBig:boolean=False);
    // calc
    function    CalcClientPixels:TRect;
    function    CalcBordersPixels:TRect;
    function    CalcBordersRect:TRect;
    function    CalcMarginalRect:TRect;
    function    CalcPrintBordersRect:TRect;
    function    CalcPrintClientPixels:TRect;
    function    CalcPrintMarginalRect:TRect;
    function    CalcPrintWastedPixels:TRect;
    function    CalcPrintWastedPixelsSum:TRect;
    function    CalcGlobalPrintPosition:TPoint;
    function    CalcPrintBordersPixels:TRect;
    function    CalcPrintMarginalPixels:TRect;
  protected

    // override & reintroduce

    procedure   Loaded; override;
    procedure   CalcSize(var aSize:TPoint); override;

    {@method GetClientRect - Margens externas do painel.
     Retorna ret�ngulo contendo as coordenadas da �rea cliente do painel.
     A �rea cliente corresponde ao ret�ngulo (0,0,Width,Height), deduzido
     das margens externas, internas e das bordas. :/}
    function    GetClientRect:TRect; override;

    function    CanPrint:boolean; override;
    function    CalcWastedPixels:TRect; override;
    function    CalcPrintClientRect:TRect; override;
    function    CalcPrintSizeRect:TRect; override;
    function    CalcPrintBoundsRect:TRect; override;
    procedure   SetClientRect(const aValue:TRect); override;
    procedure   DrawBounds; override;
    procedure   InternalPrint; override;
    procedure   InternalPaint; override;
    procedure   InternalPaintFinish; override;
    procedure   RealignControls; override;
    procedure   InternalMeasureHeight; override;

    {@method AlignControls - Alinha os controles filhos. N�o utilize este m�todo diretamente.
     Ele provoca o alinhamento os controles filhos do panel segundo a propriedade estendida Align de cada controle
     atrav�s do m�todo AlignControls e prossegue recursivamente. :}
    procedure   AlignControls(aRect:TRect); reintroduce; overload;
    procedure   AlignControls(aControl:TControl; var Rect:TRect); overload; override;
    {/@method}

    {@method DoOnDraw - Invoca o evento OnDraw. N�o utilize este m�todo diretamente.
     Ele � invocado durante a impress�o do panel para permitir que um desenho qualquer seja feito em sua superf�cie. :/}
    procedure   DoOnDraw(aSurface:TRLGraphicSurface; aRect:TRect);

    // dynamic methods

    {@method SurfaceOpening - Uma nova superf�cie de impress�o est� sendo aberta.
     Local ideal para inicializa��es relativas � p�gina ou sequ�ncia de dados. :/}
    procedure   SurfaceOpening; dynamic;

    {@method SurfaceBeginDraw - Os controles est�o sendo desenhados na nova superf�cie de desenho. :/}
    procedure   SurfaceBeginDraw; dynamic;
    
    {@method SurfaceOpened - A superf�cie de impress�o foi aberta e os controles est�ticos j� foram desenhados. :/}
    procedure   SurfaceOpened; dynamic;
    
    {@method WriteSurface - A superf�cie de impress�o est� pronta para a rotina de trabalho, se houver. :/}
    procedure   WriteSurface; dynamic;
    
    {@method SurfaceEndDraw - Os controles est�ticos que dependem do tamanho do site e os de finaliza��o est�o sendo desenhados. :/}
    procedure   SurfaceEndDraw; dynamic;
    
    {@method SurfaceClosed - A superf�cie j� foi fechada e agora dever� ser acumulada na superf�cie do controle pai. :/}
    procedure   SurfaceClosed; dynamic;
    
    {@method TruncateSurface - O desenho da superf�cie j� foi terminado e sua altura definitiva deve ser determinada. :/}
    procedure   TruncateSurface; dynamic;

    {@method MarkPrintPosition - Primeira marca��o da linha/coluna e dimens�es de impress�o. :/}
    procedure   MarkPrintPosition; dynamic;
    
    {@method ThrowSurface - Procede a transfer�ncia e posicionamento da superf�cie de impress�o sobre a superf�cie do controle pai. :/}
    procedure   ThrowSurface; dynamic;
    
    {@method PrepareBackgroundSurface - Prepara a superf�cie de desenho do controle pai antes da reloca��o.
     Neste momento o controle est� ciente do sua posi��o e tamanho finais e deve providenciar a prepara��o da
     superf�cie do controle pai.
     @links TRLGraphicSurface. :/}
    procedure   PrepareBackgroundSurface(aBackgroundSurface:TRLGraphicSurface; const aRect:TRect); dynamic;

    procedure   DrawClient; dynamic;
    
    {@method DrawBackground - Desenha imagem de fundo.
     N�o utilize este m�todo diretamente. Ele desenha a imagem definida em Background no fundo do painel. :/}
    procedure   DrawBackground(const aRect:TRect); dynamic;
    
    function    CalcEffectiveRect:TRect; dynamic;
    function    CalcMarginalPixels:TRect; dynamic;

  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;
    destructor  Destroy; override;

    // override methods
    
    procedure   SetBounds(aLeft,aTop,aWidth,aHeight:integer); override;
    procedure   PaintAsCustomSite;
    procedure   Initialize; override;
    procedure   ComputeDetail(aCaller:TObject); override;

    // static methods
    
    {@method OpenSurface - Cria uma nova superf�cie de desenho e inicializa-a.
     N�o utilize este m�todo diretamente. Est� m�todo � invocado pelo o m�todo Print. :/}
    procedure   OpenSurface;

    {@method CloseSurface - Fecha superf�cie de desenho e envia-a para o panel pai.
     N�o utilize este m�todo diretamente. Est� m�todo � invocado ap�s o m�todo Print. Ele fecha a superf�cie de
     desenho e a repassa para o panel pai para ser devidamente posicionada. :/}
    procedure   CloseSurface;

    // agregates
    
    {@prop Background - Imagem para o fundo do painel.
     Utilize Background para colocar uma imagem no fundo do painel. A imagem deve ser um bitmap ou icone e pode ser
     disposta de v�rias formas de acordo com a propriedade Arrange.
     @links TRLBackground. :/}
    property    Background     :TRLBackground       read fBackground      write SetBackground;

    {@prop Degrade - Efeito de transi��o de cores no fundo do painel.
     Utilize Degrade para produzir o efeito de transi��o de cores no fundo do painel. Pode-se configurar as cores
     origem e destino, bem como a dire��o e a qualidade do efeito.
     @links TRLDegradeEffect. :/}
    property    Degrade        :TRLDegradeEffect    read fDegrade         write SetDegrade;

    {@prop InsideMargins - Margens internas do painel.
     Utilize InsideMargins quando for necess�rio posicionar os controles dentro do painel com um afastamento lateral
     dentro do ret�ngulo definido por Margins e Borders.
     @links TRLMargins. :/}
    property    InsideMargins  :TRLMargins          read fInsideMargins   write SetInsideMargins;

    {@prop Margins - Margens externas do painel.
     Utilize Margins quando for necess�rio posicionar os controles dentro do painel com um afastamento lateral ou para
     reduzir o ret�ngulo das bordas.
     @links TRLMargins. :/}
    property    Margins        :TRLMargins          read fMargins         write SetMargins;

    // events

    {@event OnDraw - Na hora de desenhar o fundo do site.
     @links TRLOnDrawEvent. :/}
    property    OnDraw         :TRLOnDrawEvent      read fOnDraw          write fOnDraw;

    {@event BeforePrint - Antes da impress�o. Ocorre antes da impress�o do controle para modific�-lo ou suspender
     sua impress�o.
     @links TRLBeforePrintEvent. :/}
    property    BeforePrint    :TRLBeforePrintEvent read fBeforePrint     write fBeforePrint;

    // readonly

    {@prop Surface - Superf�cie de desenho.
     @links TRLGraphicSurface. :/}
    property    Surface        :TRLGraphicSurface   read fSurface;

    // standard properties
    
    property    OnDragDrop;
    property    OnDragOver;
    property    OnEndDrag;
  end;
  {/@class}
  

  { TRLCustomPanel }

  {@class TRLCustomPanel - Classe base para containers de controles.
   Utilize um TRLCustomPanel como container para controles ou outros paineis.
   @ancestor TRLCustomSite. }
  TRLCustomPanel=class(TRLCustomSite)
  protected

    // override methods

    procedure   DrawBounds; override;
    
  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;
  end;
  {/@class}
  

  { TRLCustomBandSet }

  {@class TRLCustomBandSet - Classe base para cria��o de bands.
   @ancestor TRLCustomSite. }
  TRLCustomBandSet=class(TRLCustomSite)
  private

    // variables

    fBandSets:TList;

    // custom methods

    function    FindParentBandSet:TRLCustomBandSet;

  protected

    // override methods

    procedure   SurfaceOpened; override;
    procedure   SurfaceClosed; override;
    procedure   SurfaceBeginDraw; override;

    // custom methods

    procedure   AddBandSet(aBandSet:TRLCustomBandSet);
    function    CountBandSet(aBandSet:TRLCustomBandSet):integer;

  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;
    destructor  Destroy; override;

    // custom methods
    
    function    IsFirstBandSet:boolean;
    function    BandSetCount:integer;
  end;
  {/@class}

  {@type TRLBandOption - Op��o para formata��o e comportamento de uma band.
   Pode assumir um dos seguintes valores:
   boOptimisticPageBreak - Quebra de p�gina otimista. O c�lculo de espa�o para
   for�ar a quebra de p�gina � feito somente ap�s a renderiza��o da band. Assim,
   o usu�rio pode modificar a altura da band e interferir na decis�o da quebra.
   @links TRLBand.Options. :/}
  TRLBandOption=(boOptimisticPageBreak);

  {@type TRLBandOptions - Conjunto de op��es para formata��o e comportamento de uma band.
   @links TRLBandOption. :/}
  TRLBandOptions=set of TRLBandOption;

  { TRLCustomBand }

  {@class TRLCustomBand - Classe base da qual derivam as bandas de impress�o.
   Derive a partir da TRLCustomBand para criar bandas de impress�o de dados.
   As bandas de impress�o formam a base do algor�tmo de pagina��o do FortesReport.
   @links TRLBand, TRLDetailGrid.
   @ancestor TRLCustomBandSet. }
  TRLCustomBand=class(TRLCustomBandSet)
  private

    // variables

    fBandType      :TRLBandType;
    fComputable    :boolean;
    fPageBreaking  :TRLPageBreaking;
    fCompletion    :TRLCompletionType;
    fAlignToBottom :boolean;
    fCarbonCopies  :integer;
    fCarbonIndex   :integer;
    fGroupIndex    :integer;
    fIntegralHeight:boolean;
    fOptions       :TRLBandOptions;

    // assign methods

    procedure   SetBandType(const aValue:TRLBandType);
    procedure   SetCarbonCopies(const aValue:integer);
    procedure   SetGroupIndex(const aValue:integer);
    procedure   AdjustCarbonGroup;
    procedure   AdjustFromCarbonGroup;

    procedure   NotifyDataBandPrinted;
    function    GetCompleting:boolean;
    procedure   CheckPageBreak;

  protected

    // override methods
    procedure   SurfaceClosed; override;

    {@method ThrowSurface - Procede a transfer�ncia e posicionamento da superf�cie de impress�o sobre a superf�cie
     do controle pai.
     Determina a posi��o e as dimens�es de impress�o antes da reloca��o para o controle pai. :/}
    procedure   ThrowSurface; override;

    {@method VerticalExceeded - O limite vertical foi excedido e uma atitude deve ser tomada.
     No caso das bands simples, a impress�o para para uma nova p�gina. :/}
    procedure   VerticalExceeded; dynamic;

    procedure   MarkPrintPosition; override;
    procedure   InternalPrint; override;

    // dynamic methods

    {@method HeightFits - A band cabe na p�gina atual. Se n�o couber, aAvailableHeight representar� o espa�o dispon�vel
     em pixels. :/}
    function    HeightFits(aHeight:integer; var aAvailable:integer):boolean; dynamic;

    {@method SkipToNextPosition - Move o cursor do parentpager para a posi��o da pr�xima band. :/}
    procedure   SkipToNextPosition(aWidth,aHeight:integer); dynamic;

    function    GetBandTypeName:string; dynamic;

    {@method IsDataBand - Indica se a band � uma band de dados.
     Se o tipo da band � btDetail ou btSummary e ela n�o est� sendo impressa como um lastro, ent�o ela � uma band
     de dados.
     @links IsBallast, BandType. :/}
    function    IsDataBand:boolean;

  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;

    // override methods

    procedure   InternalPaintFinish; override;

    // internal custom properties
    
    {@prop Completing - Indica se a band est� sendo impressa ap�s o fim dos dados para completar o espa�o que sobrou. :/}
    property    Completing    :boolean           read GetCompleting;

    {@prop CarbonIndex - N�mero da c�pia da band. :/}
    property    CarbonIndex   :integer           read fCarbonIndex    write fCarbonIndex;

    // publishable
    
    {@prop AlignToBottom - Alinhado a parte inferior da p�gina.
     For�a a band a ser impressa na parte inferior da p�gina como se fosse um btFooter. :/}
    property    AlignToBottom :boolean           read fAlignToBottom  write fAlignToBottom  default False;

    {@prop BandType - Define o comportamento da banda.
     Utilize a propriedade BandType para definir o comportamento da banda em rela��o aos dados impressos.
     @links TRLBandType. :/}
    property    BandType      :TRLBandType       read fBandType       write SetBandType     default btDetail;

    {@prop CarbonCopies - N�mero de c�pias da band. :/}
    property    CarbonCopies  :integer           read fCarbonCopies   write SetCarbonCopies default 1;

    {@prop Completion - Tipo de preenchimento de p�gina.
     @links TRLCompletionType. :/}
    property    Completion    :TRLCompletionType read fCompletion     write fCompletion     default ctNone;

    {@prop Computable - Indica se a band � v�lida para estat�sticas. :/}
    property    Computable    :boolean           read fComputable     write fComputable     default True;

    {@prop GroupIndex - Agrupamento de bands. :/}
    property    GroupIndex    :integer           read fGroupIndex     write SetGroupIndex   default 0;

    {@prop PageBreaking - Quebra de p�gina.
     @links TRLPageBreaking. :/}
    property    PageBreaking  :TRLPageBreaking   read fPageBreaking   write fPageBreaking   default pbNone;

    {@prop IntegralHeight - Determina se a band poder� ser exibida parcialmente.
     Se a band com o seu conte�do n�o couber na p�gina, a band poder� ser dividida em partes por p�gina. :/}
    property    IntegralHeight:boolean           read fIntegralHeight write fIntegralHeight default True;

    {@prop Options - Op��es diversas de formata��o e comportamento da band.
     @links TRLBandOptions. :/}
    property    Options       :TRLBandOptions    read fOptions        write fOptions        default [];

    // standard
    
    {@prop AutoExpand - Expans�o autom�tica de acordo com crescimento do conte�do. :/}
    property    AutoExpand default True;
  end;
  {/@class}
  

  { TRLCustomDetailGrid }

  {@type TRLDetailGridOrganization - Organiza��o para impress�o das bandas.
   Pode assumir um dos seguintes valores:
   goInRows - Todas as bandas de uma linha s�o impressas antes de passar para a linha seguinte (padr�o);
   goInColumns - As bandas s�o impressas verticalmente em coluna at� o fim da p�gina e ent�o a impress�o passa para
   o topo da pr�xima coluna.
   @links TRLDetailGrid. :/}
  TRLDetailGridOrganization=(goInRows,goInColumns);

  {@class TRLCustomDetailGrid - Classe base para bandas de detalhe multi-colunas.
   Banda de tipo fixado em btDetail. Ideal para a impress�o de etiquetas e relat�rios em colunas.
   @ancestor TRLCustomBand. }
  TRLCustomDetailGrid=class(TRLCustomBand)
  private

    // variables

    fColIndex   :integer;
    fColCount   :integer;
    fColSpacing :double;
    fColWidth   :double;
    fRowIndex   :integer;
    fTopRow     :integer;
    fBottomRow  :integer;
    fOrganization:TRLDetailGridOrganization;

    // assign methods

    procedure   SetColCount(const aValue:integer);
    procedure   SetColSpacing(const aValue:double);
    procedure   SetColWidth(const aValue:double);
    function    GetClientCellRect(aColIndex,aRowIndex:integer):TRect;

    //

    function    IsManyCols:boolean;

  protected

    // override methods

    function    GetBandTypeName:string; override;
    function    CalcEffectiveRect:TRect; override;
    procedure   MarkPrintPosition; override;
    procedure   SurfaceOpening; override;
    procedure   SurfaceClosed; override;

    {@method VerticalExceeded - O limite vertical foi excedido e uma atitude deve ser tomada.
     No caso do detailgrid, se a orienta��o for colbycol, ent�o a impress�o deve passar para uma nova coluna. :/}
    procedure   VerticalExceeded; override;

    {@method HeightFits - A band cabe na p�gina atual.
     Se n�o couber, aAvailableHeight representar� o espa�o dispon�vel em pixels. :/}
    function    HeightFits(aHeight:integer; var aAvailable:integer):boolean; override;

    {@method SkipToNextPosition - Move o cursor do parentpager para a posi��o da pr�xima band na coluna � direita
     ou abaixo. :/}
    procedure   SkipToNextPosition(aWidth,aHeight:integer); override;

  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;

    // override methods

    procedure   DrawClient; override;

    // custom methods

    procedure   Initialize; override;

    // internal custom properties

    {@prop ColIndex - �ndice da coluna imprimindo. :/}
    property    ColIndex  :integer read fColIndex;

    {@prop ColCount - Total de colunas da grid. :/}
    property    ColCount  :integer read fColCount   write SetColCount default 1;

    {@prop ColSpacing - Espa�o entre as colunas em mil�metros. :/}
    property    ColSpacing:double  read fColSpacing write SetColSpacing stored IsManyCols;

    {@prop ColWidth - Largura das colunas em mil�metros. :/}
    property    ColWidth  :double  read fColWidth   write SetColWidth stored IsManyCols;

    {@prop RowIndex - �ndice da linha imprimindo. :/}
    property    RowIndex  :integer read fRowIndex;

    {@prop Organization - Determina a dire��o para a impress�o das bandas.
     @links TRLDetailGridOrganization. :/}
    property    Organization:TRLDetailGridOrganization read fOrganization write fOrganization default goInRows;
  end;
  {/@class}
  

  { TRLCustomPager }

  {@type TRLPagerStatusType - Estado do pager.
   Indica os estados que o pager pode assumir.
   Pode ser um dos seguintes valores:
   psCompleting - Est� completando a p�gina com bands em branco. :/}
  TRLPagerStatusType=(psCompleting);
  
  {@type TRLPagerStatus - Conjunto de estados do pager.
   Indica os trabalhos que o pager est� executando. :/}
  TRLPagerStatus=set of TRLPagerStatusType;

  {@class TRLCustomPager - Classe base para paginadores.
   Derive a partir da TRLCustomPager para criar controles de quebra de p�gina.
   Os paginadores s�o containers para as bandas de impress�o e controlam a quantidade de bandas que podem ser
   impressas por p�gina.
   @links TRLReport, TRLSubDetail, TRLGroup.
   @ancestor TRLCustomBandSet. }
  TRLCustomPager=class(TRLCustomBandSet)
  private

    // variables

    fAllowedBands     :TRLAllowedBands;
    fDetailCount      :integer;
    fSortedBands      :TRLSortedBands;
    fMaxBands         :integer;
    fMinBands         :integer;
    fRelativePagerRow :integer;
    fDetailsInSurface :integer;
    fNewPageNeeded    :boolean;
    fPageBreaking     :TRLPageBreaking;
    fJumpPending      :boolean;
    fJumpLength       :integer;
    fNewPageCaller    :TObject;
    fForceMinBands    :boolean;
    fFooterMeasuring  :TRLFooterMeasuring;
    fDataBandPrinted  :boolean;
    fPagerStatus      :TRLPagerStatus;

    // assign methods

    function    GetSummaryHeight:integer;
    function    GetSummaryHeightSum:integer;
    function    GetFooterHeight:integer;
    function    GetFooterHeightSum:integer;
    function    GetColumnFooterHeight:integer;
    function    GetColumnFooterHeightSum:integer;
    function    GetWastedBottomSum:integer;
    function    GetNewPageNeeded:boolean;
    procedure   SetAllowedBands(const aValue:TRLAllowedBands);

    // custom methods

    function    CreateChild(aType:TRLBandType):TRLCustomBand;
    function    FindChild(aType:TRLBandType):TRLCustomBand;
    procedure   KillChild(aType:TRLBandType);
    procedure   SortBands;
    function    IsSatisfied:boolean;
    procedure   InitializePageInfo;

  protected

    // override methods

    procedure   SurfaceOpening; override;
    procedure   TruncateSurface; override;
    procedure   SurfaceClosed; override;
    procedure   MarkPrintPosition; override;
    procedure   SurfaceBeginDraw; override;
    procedure   SurfaceEndDraw; override;
    procedure   Notification(aComponent: TComponent; Operation:TOperation); override;

    // dynamic

    procedure   InternalBeginDoc; dynamic;
    procedure   InternalEndDoc; dynamic;

    // static

    procedure   InternalNewPage(aCaller:TObject; aMoveOnly:boolean=False);

  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;
    destructor  Destroy; override;

    // override methods

    procedure   Initialize; override;
    procedure   ComputeDetail(aCaller:TObject); override;

    // custom methods

    function    PrintBands(aType:TRLBandType):TRLPrintBandResults;
    procedure   PrintBand(aBand:TRLCustomBand);
    procedure   PrintDetails;
    procedure   PrintHeaders;
    procedure   PrintFooters(aSummarize:boolean=False);
    procedure   PrintCompletion;
    procedure   PrintSite(aSite: TRLCustomSite);
    procedure   PrintPagers(aClass:TRLPagerClassType);
    procedure   PrintEmptySkippers;
    procedure   MeasureFooters;
    function    GetRelativeFooterRow:integer;
    function    GoFooterRow:boolean;
    function    GetRelativeSummaryRow:integer;
    function    GoSummaryRow:boolean;
    function    GetRelativeColumnFooterRow:integer;
    function    GoColumnFooterRow:boolean;
    procedure   InvalidatePage;
    procedure   BeginDoc;
    procedure   EndDoc;
    procedure   NewPage;

    // custom properties

    {@prop MaxBands - N�mero m�ximo de bands para o pager. :/}
    property    MaxBands         :integer             read fMaxBands          write fMaxBands        default 0;

    {@prop MinBands - N�mero m�nimo de bands para o pager. :/}
    property    MinBands         :integer             read fMinBands          write fMinBands        default 0;

    {@prop PageBreaking - Quebra de p�gina do pager.
     @links TRLPageBreaking. :/}
    property    PageBreaking     :TRLPageBreaking     read fPageBreaking      write fPageBreaking    default pbNone;

    {@prop AllowedBands - Tipos de bands inseridas.
     @links TRLAllowedBands. :/}
    property    AllowedBands     :TRLAllowedBands     read fAllowedBands      write SetAllowedBands  default [];

    {@prop ForceMinBands - For�ar a quantidade m�nima de bands. :/}
    property    ForceMinBands    :boolean             read fForceMinBands     write fForceMinBands   default False;

    {@prop FooterMeasuring - Antecipa��o do c�lculo da altura dos rodap�s.
     @links TRLFooterMeasuring. :/}
    property    FooterMeasuring  :TRLFooterMeasuring  read fFooterMeasuring   write fFooterMeasuring default fmNone;

    // internal custom properties

    {@prop RelativePagerRow - N�mero da linha atual relativa ao pager. :/}
    property    RelativePagerRow :integer             read fRelativePagerRow  write fRelativePagerRow;

    {@prop DetailsInSurface - Quantidade de detalhes impressos na p�gina atual. :/}
    property    DetailsInSurface :integer             read fDetailsInSurface  write fDetailsInSurface;

    {@prop NewPageNeeded - Indica a necessidade de salto de p�gina. :/}
    property    NewPageNeeded    :boolean             read GetNewPageNeeded   write fNewPageNeeded;

    {@prop DataBandPrinted - Indica se alguma band de dados j� foi impressa na p�gina atual. :/}
    property    DataBandPrinted  :boolean             read fDataBandPrinted   write fDataBandPrinted;

    // readonly
    
    {@prop DetailCount - N�mero de bands de detalhe impressas desde o in�cio da impress�o. :/}
    property    DetailCount      :integer             read fDetailCount;

    // colections

    {@prop SortedBands - Lista de bands agrupadas pelo tipo.
     @links TRLSortedBands. :/}
    property    SortedBands      :TRLSortedBands      read fSortedBands;

    {@prop PagerStatus - Estado do pager.
     Indica se o pager est� completando a p�gina com bands vazias ap�s o t�rmino dos dados.
     @links TRLPagerStatus. :/}
    property    PagerStatus      :TRLPagerStatus      read fPagerStatus;
  end;
  {/@class}
  

  { TRLCustomGroup }

  {@class TRLCustomGroup - Classe base para sequ�ncias de registros de dados.
   Utilize descendentes do TRLCustomGroup para imprimir sequ�ncias de registros de dados.
   @ancestor TRLCustomPager. }
  TRLCustomGroup=class(TRLCustomPager)
  private

    // variables

    fOnGetBreak :TRLOnGetBreakEvent;
    fDataFields :TRLDataFieldsProperty;
    fDataFormula:string;
    fLastKey    :string;
    fBroken     :boolean;

    // assign methods

    function    GetKey:string;
    function    CheckBreak:boolean;
    procedure   SetDataFields(const Value: TRLDataFieldsProperty);
    procedure   SetDataFormula(const Value: string);

  protected

    // override methods

    procedure   InternalPrint; override;
    
  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;

    // override methods

    procedure   ComputeDetail(aCaller:TObject); override;
    procedure   InternalPaintFinish; override;

    // custom properties
    
    {@prop DataFields - Campo ou conjunto de campos que determinam a quebra de sequ�ncia de registros.
     Informe os campos determinantes da quebra de sequ�ncia de registros. Os campos devem ser separados por
     ponto-e-v�rgula ";". A quebra automatica � detectada atrav�s da compara��o no conte�do dos campos do �ltimo
     registro impresso com o atual.
     @links TRLDataFieldsProperty. :/}
    property    DataFields:TRLDataFieldsProperty read fDataFields  write SetDataFields;

    {@prop DataFormula - Express�o matem�tica envolvendo campos, valores e literais. @links DataFields. :/}
    property    DataFormula:string               read fDataFormula write SetDataFormula;

    {@prop Enabled - Quebra de registros habilitada.
     Quando setada para False, esta propriedade desativa as quebras de sequ�ncia do grupo, por�m sem interferir
     nos controles e grupos internos, que s�o impressos normalmente. :/}
    property    Enabled;

    // events
    
    {@event OnGetBreak - Evento que determina da quebra de sequ�ncia de registros.
     Informe na implementa��o do evento OnGetBreak quando a quebra de sequ�ncia dever� ser efetuada. Sender � uma
     refer�ncia ao componente de grupo que originou a chamada. O par�metro BreakIt dever� ser setado para True para
     que a quebra aconte�a.
     Nota: Este evento � chamado a partir do segundo registro da sequ�ncia a ser impresso.
     @links TRLOnGetBreakEvent. :/}
    property    OnGetBreak:TRLOnGetBreakEvent    read fOnGetBreak  write fOnGetBreak;
  end;
  {/@class}
  

  { TRLCustomSkipper }

  {@class TRLCustomSkipper - Classe base para pager com fontes de dados.
   Derive a partir da TRLCustomSkipper para criar fontes de dados para as bandas.
   As fontes de dados, al�m de acumularem a fun��o de paginadores, controlam a sequ�ncia de dados, automaticamente
   quando a fonte � uma DataSource, ou atrav�s de eventos de intera��o.
   @links TRLReport, TRLSubDetail.
   @ancestor TRLCustomPager. }
  TRLCustomSkipper=class(TRLCustomPager)
  private

    // variables

    fRecordAction:TRLRecordAction;
    fDataSource  :TDataSource;
    fOnDataCount :TRLOnDataCountEvent;
    fOnDataRecord:TRLOnDataRecordEvent;
    fOnNeedData  :TRLOnNeedDataEvent;
    fDataEof     :boolean;
    fRecNo       :integer;
    fCopyNo      :integer;
    fRecordMoved :boolean;
    fRecordRange :TRLRecordRange;
    fRangeCount  :integer;
    fPrintEmpty  :boolean;

    //

    function    IsNextNRecordRange:boolean;

    // assign methods

    procedure   SetDataSource(const aValue:TDataSource);

  protected

    // override methods

    procedure   Notification(aComponent: TComponent; Operation:TOperation); override;
    procedure   InternalPrint; override;
    
    procedure   PrintAnything;

  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;

    // custom methods

    function    DataCount:integer; dynamic;
    procedure   DataFirst; dynamic;
    procedure   DataNext; dynamic;

    // custom properties
    
    {@prop DataSource - Refer�ncia ao DataSource de onde os registros ser�o obtidos. :/}
    property    DataSource  :TDataSource          read fDataSource   write SetDataSource;

    {@prop RecordRange - Indica a faixa de registros a processar. @links TRLRecordRange, RangeCount. :/}
    property    RecordRange :TRLRecordRange       read fRecordRange  write fRecordRange default rrAllRecords;

    {@prop RangeCount - Indica a quantidade de registros a processar a partir do atual se a prop RecordRange for rrNextN. @links RecordRange. :/}
    property    RangeCount  :integer              read fRangeCount   write fRangeCount stored IsNextNRecordRange;

    // internal custom properties

    {@prop RecordMoved - Indice se o registro foi movido por algum processo subsequente. :/}
    property    RecordMoved :boolean              read fRecordMoved  write fRecordMoved;

    // events

    {@event OnDataCount - Ao solicitar a quantidade de registros.
     @links TRLOnDataCountEvent. :/}
    property    OnDataCount :TRLOnDataCountEvent  read fOnDataCount  write fOnDataCount;

    {@event OnDataRecord - Ao selecionar um registro a imprimir.
     @links TRLOnDataRecordEvent. :/}
    property    OnDataRecord:TRLOnDataRecordEvent read fOnDataRecord write fOnDataRecord;

    {@event OnNeedData - Ao solicitar novos registros.
     @links TRLOnNeedDataEvent. :/}
    property    OnNeedData  :TRLOnNeedDataEvent   read fOnNeedData   write fOnNeedData;

    // readonly
    
    {@prop DataEof - Indica o final dos dados de entrada. :/}
    property    DataEof     :boolean              read fDataEof;
    
    {@prop RecordAction - A��o tomada para �ltimo registro.
     @links TRLRecordAction. :/}
    property    RecordAction:TRLRecordAction      read fRecordAction;
    
    {@prop RecNo - N�mero do registro atual. :/}
    property    RecNo       :integer              read fRecNo;
    
    {@prop CopyNo - N�mero da c�pia da band atual. :/}
    property    CopyNo      :integer              read fCopyNo;

    {@prop PrintEmpty - Indica se o relat�rio deve ser gerado e impresso mesmo que n�o haja registros a imprimir. :/}
    property    PrintEmpty:boolean read fPrintEmpty write fPrintEmpty default False;
  end;
  {/@class}
  

  { TRLCustomSubDetail }

  {@class TRLCustomSubDetail - Mini relat�rio para relacionamentos tipo master/detail.
   Utilize os descendentes do TRLCustomSubDetail para imprimir registros ou sequ�ncias de dados relacionadas com
   os registros da fontes de dados principal. O controle de sub-detalhe � especialmente �til quando se quer listar
   registros de uma base que possui registros filhos ou relacionados (Master/Detail), aonde um TRLReport responderia
   pelos registros principais e o TRLSubDetail pelos registros filhos.
   @links TRLSubDetail.
   @ancestor TRLCustomSkipper. }
  TRLCustomSubDetail=class(TRLCustomSkipper)
  private

    // variables

    fPositioning:TRLBandType;

    // assign methods

    procedure   SetPositioning(const Value:TRLBandType);

  public

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;

    // override methods

    procedure   InternalPaintFinish; override;

    // custom properties

    {@prop Positioning - Posicionamento do subdetail. Equivalente � prop BandType da TRLBand.
     @links TRLBandType. :/}
    property    Positioning:TRLBandType read fPositioning write SetPositioning default btDetail;
  end;
  {/@class}

  { TRLCustomReport }

  {@class TRLCustomReport - Componente principal na confec��o de relat�rios.
   Utilize os descendentes do TRLCustomReport como ponto de partida na confec��o de qualquer relat�rio com o
   FortesReport. Um componente TRLCustomReport pode listar registros de uma fonte de dados, solicitar os dados
   atrav�s de eventos em tempo de execu��o ou apenas imprimir p�ginas confeccionadas com os componentes da biblioteca.
   @links TRLReport.
   @ancestor TRLCustomSkipper. }
  TRLCustomReport=class(TRLCustomSkipper)
  private

    // variables

    fParseInvoker     :TObject;

    // property variables

    fOnPageEnding     :TNotifyEvent;
    fOnPageStarting   :TNotifyEvent;
    fCanceled         :boolean;
    fPages            :TRLGraphicStorage;
    fPageSurface      :TRLGraphicSurface;
    fNextReport       :TRLCustomReport;
    fPriorReport      :TRLCustomReport;
    fFirstPageNumber  :integer;
    fPageIndex        :integer;
    fPageSetup        :TRLPageSetup;
    fPrintDialog      :boolean;
    fPrinterMetrics   :TRLPrinterMetrics;
    fReportState      :TRLReportState;
    fShowDesigners    :boolean;
    fShowTracks       :boolean;
    fShowExplosion    :boolean;
    fTitle            :string;
    fReportDateTime   :TDateTime;
    fDefaultFilter    :TRLCustomPrintFilter;
    fExpressionParser :TRLExpressionParser;
    fShowProgress     :boolean;
    fPrintQuality     :TRLPrintQuality;
    fOnFilterText     :TRLBeforeTextEvent;
    fAdjustableMargins:boolean;
    fPreviewOptions   :TRLPreviewOptions;
    fForcePrepare     :boolean;

    // assign methods
    
    function    GetCurrentPage:TRLGraphicSurface;
    function    GetPageByNumber(n:integer):TRLGraphicSurface;
    function    GetPageNumber:integer;
    function    GetLastPageNumber:integer;
    procedure   SetPriorReport(const aValue:TRLCustomReport);
    procedure   SetNextReport(const aValue:TRLCustomReport);
    procedure   SetPageIndex(const aValue:integer);
    procedure   SetPageNumber(const aValue:integer);
    procedure   SetShowDesigners(const aValue:boolean);
    procedure   SetShowTracks(const aValue:boolean);
    procedure   SetShowExplosion(const aValue:boolean);
    procedure   SetPrintQuality(const aValue:TRLPrintQuality);
    procedure   SetDefaultFilter(const aValue:TRLCustomPrintFilter);
    procedure   SetExpressionParser(const aValue:TRLExpressionParser); 
    procedure   SetAdjustableMargins(const aValue:boolean);
    procedure   SetPageSetup(const Value: TRLPageSetup);
    procedure   SetPreviewOptions(const Value: TRLPreviewOptions);

    // custom events

    procedure   ParserResource(Sender:TObject; const aIdentifier:string; aParams:variant; var aResult:variant);
    procedure   ParserTokener(Sender:TObject; var aToken:string; var aKind:TRLParserTokenKind);
    procedure   ParserFindAgregate(Sender:TObject; aOwner:TPersistent; const aName:string; var aAgregate:TPersistent);
    procedure   ParserGetAttribute(Sender:TObject; aOwner:TPersistent; const aName:string; var aValue:variant);
    procedure   ParserSetAttribute(Sender:TObject; aOwner:TPersistent; const aName:string; const aValue:variant; var aHandled:boolean);

    // custom methods

    function    GetOrientedUnprintablePixels:TRect;
    function    GetOrientedUnprintableRect:TRect;
    procedure   CreateProgress;
    procedure   DestroyProgress;
    procedure   ProgressCanceled(Sender:TObject; var CancelIt:boolean);
    procedure   DoPageStarting;
    procedure   DoPageEnding;
    procedure   DoFilterText(var aText:string; var aPrintIt:boolean);
    procedure   UpdateMacros;

  protected

    // override methods
    
    function    CalcSizeRect:TRect; override;
    procedure   SurfaceOpening; override;
    procedure   SurfaceBeginDraw; override;
    procedure   SurfaceEndDraw; override;
    procedure   SurfaceClosed; override;
    procedure   Notification(aComponent: TComponent; Operation: TOperation); override;
    procedure   DrawBackground(const aRect:TRect); override;
    procedure   CalcSize(var aSize:TPoint); override;
    function    CalcMarginalPixels:TRect; override;
    procedure   InternalPrint; override;
    procedure   InternalEndDoc; override;

    // custom methods
    
    procedure   BeforeSave;
    procedure   AfterLoad;
    procedure   ReloadPrinter;
    
  public

    // variables

    ProgressForm :TfrmRLFeedBack;
    PreviewClosed:boolean;

    // constructors & destructors

    constructor Create(aOwner:TComponent); override;
    destructor  Destroy; override;

    // override methods
    
    procedure   DataFirst; override;
    procedure   DataNext; override;
    procedure   InternalPaintFinish; override;
    function    FindParentSurface:TRLGraphicSurface; override;

    // custom methods

    procedure   Clear;
    function    ShowPrintDialog:boolean;
    function    Prepare:boolean;
    function    Preview(Dest:TRLPreview=nil):boolean;
    function    PreviewModal:boolean;
    procedure   ClosePreview;
    procedure   SaveToStream(aStream:TStream);
    procedure   LoadFromStream(aStream:TStream);
    procedure   LoadFromFile(const aFileName:string);
    procedure   SaveToFile(const aFileName:string);
    procedure   Cancel;
    procedure   SetProgressPhase(const aPhase:string);
    procedure   SetProgressSize(aMax:integer);
    procedure   StepProgress(aStep:integer=1);
    function    Parse(Sender:TObject; const aExpression:string):variant;

    // custom properties
    
    {@prop AdjustableMargins - Determina se as margens poder�o ser aumentadas de acordo com a �rea n�o imprim�vel da
     impressora. :/}
    property    AdjustableMargins :boolean              read fAdjustableMargins   write SetAdjustableMargins default False;

    {@prop FirstPageNumber - N�mera��o para a primeira p�gina. :/}
    property    FirstPageNumber   :integer              read fFirstPageNumber     write fFirstPageNumber     default 1;
    
    {@prop ForcePrepare - Indica se o relat�rio deve ser sempre preparado antes de imprimir ou visualizar.
     @links Prepare. :/}
    property    ForcePrepare      :boolean              read fForcePrepare        write fForcePrepare        default True;

    {@prop PrintDialog - Indica se um di�logo de sele��o ser� exibido antes da impress�o. :/}
    property    PrintDialog       :boolean              read fPrintDialog         write fPrintDialog         default True;

    {@prop ShowDesigners - Exibir r�gua e delineadores dos controles em tempo de design. :/}
    property    ShowDesigners     :boolean              read fShowDesigners       write SetShowDesigners     default True;
    
    {@prop ShowTracks - Exibir r�gua em tempo de design. :/}
    property    ShowTracks        :boolean              read fShowTracks          write SetShowTracks        default True;
    
    {@prop ShowExplosion - N�o implementada. :/}
    property    ShowExplosion     :boolean              read fShowExplosion       write SetShowExplosion     default False;
    
    {@prop Title - T�tulo do relat�rio.
     Pode ser recuperado pelo componente TRLSystemInfo. :/}
    property    Title             :string               read fTitle               write fTitle;

    {@prop ShowProgress - Exibir barra de progresso. :/}
    property    ShowProgress      :boolean              read fShowProgress        write fShowProgress        default True;

    {@prop PrintQuality - Qualidade de impress�o.
     @links TRLPrintQuality. :/}
    property    PrintQuality      :TRLPrintQuality      read fPrintQuality        write SetPrintQuality      default pqFullFeature;

    {@prop ReportDateTime - Data e hora de impress�o do relat�rio. :/}
    property    ReportDateTime    :TDateTime            read fReportDateTime      write fReportDateTime;

    // external

    {@prop DefaultFilter - Filtro padr�o de impress�o.
     @links TRLCustomPrintFilter. :/}
    property    DefaultFilter     :TRLCustomPrintFilter read fDefaultFilter       write SetDefaultFilter;
    
    {@prop ExpressionParser - Refer�ncia para um objeto avaliador de express�es matem�ticas.
     @links TRLExpressionParser. :/}
    property    ExpressionParser  :TRLExpressionParser  read fExpressionParser    write SetExpressionParser;
    
    {@prop PriorReport - Relat�rio anterior da composi��o.
     @links TRLCustomReport. :/}
    property    PriorReport       :TRLCustomReport      read fPriorReport         write SetPriorReport;

    {@prop NextReport - Relat�rio seguinte da composi��o.
     @links TRLCustomReport. :/}
    property    NextReport        :TRLCustomReport      read fNextReport          write SetNextReport;
    
    // internal custom properties

    {@prop PageIndex - �ndice da p�gina atual. :/}
    property    PageIndex         :integer              read fPageIndex           write SetPageIndex;
    
    {@prop PageNumber - N�mero da p�gina atual (FirstPageNumber+PageIndex). :/}
    property    PageNumber        :integer              read GetPageNumber        write SetPageNumber;
    
    {@prop ReportState - Estado da prepara��o do relat�rio.
     @links TRLReportState. :/}
    property    ReportState       :TRLReportState       read fReportState;

    // readonly

    {@prop Canceled - Indica se o relat�rio foi cancelado durante a prepara��o. :/}
    property    Canceled          :boolean              read fCanceled;

    {@prop LastPageNumber - N�mero da �ltima p�gina. :/}
    property    LastPageNumber    :integer              read GetLastPageNumber;

    {@prop PageByNumber - Refer�ncia ao objeto p�gina pelo n�mero.
     @links TRLGraphicSurface. :/}
    property    PageByNumber[n:integer]:TRLGraphicSurface read GetPageByNumber;

    // agregates

    {@prop PrinterMetrics - Dimens�es do papel na impressora.
     @links TRLPrinterMetrics. :/}
    property    PrinterMetrics    :TRLPrinterMetrics    read fPrinterMetrics;

    {@prop Pages - Lista de p�ginas preparadas.
     @links TRLGraphicStorage. :/}
    property    Pages             :TRLGraphicStorage    read fPages;

    {@prop CurrentPage - Refer�ncia � p�gina atual.
     @links TRLGraphicSurface. :/}
    property    CurrentPage       :TRLGraphicSurface    read GetCurrentPage;

    {@prop PageSetup - Configura��o do papel.
     @links TRLPageSetup. :/}
    property    PageSetup         :TRLPageSetup         read fPageSetup           write SetPageSetup;

    {@prop PreviewOptions - Op��es de pr�-visualiza��o.
     @links TRLPreviewOptions. :/}
    property    PreviewOptions    :TRLPreviewOptions    read fPreviewOptions      write SetPreviewOptions;

    // events

    {@event OnPageEnding - Ao terminar uma p�gina. :/}
    property    OnPageEnding      :TNotifyEvent         read fOnPageEnding        write fOnPageEnding;

    {@event OnPageStarting - No in�cio de cada p�gina. :/}
    property    OnPageStarting    :TNotifyEvent         read fOnPageStarting      write fOnPageStarting;

    {@event OnFilterText - Ao imprimir qualquer texto.
     Captura de textos antes do envio para a impressora.
     @links TRLBeforeTextEvent. :/}
    property    OnFilterText      :TRLBeforeTextEvent   read fOnFilterText        write fOnFilterText;

    // standard
    
    property    ParentFont  default False;
    property    ParentColor default False;
    property    Color       default clWhite;
  end;
  {/@class}
  

  // FINAL COMPONENTS

  { TRLLabel }

  {@class TRLLabel - Caixa de texto padr�o.
   Utilize o TRLLabel para imprimir textos est�ticos sobre o relat�rio.
   @icon TRLLabel.jpg
   @ancestor TRLCustomLabel.
   @pub }
  TRLLabel=class(TRLCustomLabel)
  published

    // properties

    {@prop Align = ancestor /}
    property    Align;
    {@prop Alignment = ancestor /}
    property    Alignment;
    {@prop Anchors = ancestor /}
    property    Anchors;
    {@prop AutoSize = ancestor /}
    property    AutoSize;
    {@prop Behavior = ancestor /}
    property    Behavior;
    {@prop Borders = ancestor /}
    property    Borders;
    {@prop Caption = ancestor /}
    property    Caption;
    {@prop Color = ancestor /}
    property    Color;
    {@prop Constraints = ancestor /}
    property    Constraints;
    {@prop Font = ancestor /}
    property    Font;
    {@prop FriendlyName = ancestor /}
    property    FriendlyName;
    {@prop Holder = ancestor /}
    property    Holder;
    {@prop HoldStyle = ancestor /}
    property    HoldStyle;
    {@prop Layout = ancestor /}
    property    Layout;
    {@prop ParentColor = ancestor /}
    property    ParentColor;
    {@prop ParentFont = ancestor /}
    property    ParentFont;
    {@prop RealBounds = ancestor /}
    property    RealBounds;
    {@prop SecondHolder = ancestor /}
    property    SecondHolder;
    {@prop SecondHoldStyle = ancestor /}
    property    SecondHoldStyle;
    {@prop Transparent = ancestor /}
    property    Transparent;
    {@prop Visible = ancestor /}
    property    Visible;

    // events

    {@event AfterPrint = ancestor /}
    property    AfterPrint;
    {@event BeforePrint = ancestor /}
    property    BeforePrint;
    {@event OnMeasureHeight = ancestor /}
    property    OnMeasureHeight;
  end;
  {/@class}
  

  { TRLAngleLabel }

  {@class TRLAngleLabel - Caixa de texto de com rota��o por �ngulo.
   @icon TRLAngleLabel.jpg
   @ancestor TRLCustomAngleLabel.
   @pub }
  TRLAngleLabel=class(TRLCustomAngleLabel)
  published

    // properties

    {@prop Align = ancestor /}
    property    Align;
    {@prop Alignment = ancestor /}
    property    Alignment;
    {@prop Anchors = ancestor /}
    property    Anchors;
    {@prop Angle = ancestor /}
    property    Angle;
    {@prop AngleBorders = ancestor /}
    property    AngleBorders;
    {@prop AutoSize = ancestor /}
    property    AutoSize;
    {@prop Behavior = ancestor /}
    property    Behavior;
    {@prop Borders = ancestor /}
    property    Borders;
    {@prop Caption = ancestor /}
    property    Caption;
    {@prop Color = ancestor /}
    property    Color;
    {@prop Constraints = ancestor /}
    property    Constraints;
    {@prop Font = ancestor /}
    property    Font;
    {@prop FriendlyName = ancestor /}
    property    FriendlyName;
    {@prop Holder = ancestor /}
    property    Holder;
    {@prop HoldStyle = ancestor /}
    property    HoldStyle;
    {@prop Layout = ancestor /}
    property    Layout;
    {@prop ParentColor = ancestor /}
    property    ParentColor;
    {@prop ParentFont = ancestor /}
    property    ParentFont;
    {@prop RealBounds = ancestor /}
    property    RealBounds;
    {@prop SecondHolder = ancestor /}
    property    SecondHolder;
    {@prop SecondHoldStyle = ancestor /}
    property    SecondHoldStyle;
    {@prop Transparent = ancestor /}
    property    Transparent;
    {@prop Visible = ancestor /}
    property    Visible;

    // events

    {@event AfterPrint = ancestor /}
    property    AfterPrint;
    {@event BeforePrint = ancestor /}
    property    BeforePrint;
    {@event OnMeasureHeight = ancestor /}
    property    OnMeasureHeight;
  end;
  {/@class}


  { TRLDBText }

  {@class TRLDBText - Caixa de texto ligada a campo de dataset.
   @icon TRLDBText.jpg
   @ancestor TRLCustomDBText.
   @pub }
  TRLDBText=class(TRLCustomDBText)
  published

    // properties

    {@prop Align = ancestor /}
    property    Align;
    {@prop Alignment = ancestor /}
    property    Alignment;
    {@prop Anchors = ancestor /}
    property    Anchors;
    {@prop AutoSize = ancestor /}
    property    AutoSize;
    {@prop Behavior = ancestor /}
    property    Behavior;
    {@prop Borders = ancestor /}
    property    Borders;
    {@prop Color = ancestor /}
    property    Color;
    {@prop Constraints = ancestor /}
    property    Constraints;
    {@prop DataField = ancestor /}
    property    DataField;
    {@prop DataFormula = ancestor /}
    property    DataFormula;
    {@prop DataSource = ancestor /}
    property    DataSource;
    {@prop DisplayMask = ancestor /}
    property    DisplayMask;
    {@prop Font = ancestor /}
    property    Font;
    {@prop FriendlyName = ancestor /}
    property    FriendlyName;
    {@prop Holder = ancestor /}
    property    Holder;
    {@prop HoldStyle = ancestor /}
    property    HoldStyle;
    {@prop Layout = ancestor /}
    property    Layout;
    {@prop ParentColor = ancestor /}
    property    ParentColor;
    {@prop ParentFont = ancestor /}
    property    ParentFont;
    {@prop RealBounds = ancestor /}
    property    RealBounds;
    {@prop SecondHolder = ancestor /}
    property    SecondHolder;
    {@prop SecondHoldStyle = ancestor /}
    property    SecondHoldStyle;
    {@prop Text = ancestor /}
    property    Text;
    {@prop Transparent = ancestor /}
    property    Transparent;
    {@prop Visible = ancestor /}
    property    Visible;

    // events

    {@event AfterPrint = ancestor /}
    property    AfterPrint;
    {@event BeforePrint = ancestor /}
    property    BeforePrint;
    {@event OnMeasureHeight = ancestor /}
    property    OnMeasureHeight;
  end;
  {/@class}


  { TRLDBResult }

  {@class TRLDBResult - Caixa de texto de resultado de opera��es matem�ticas ou estat�ticas com campos de dataset.
   @icon TRLDBResult.jpg
   @ancestor TRLCustomDBResult.
   @pub }
  TRLDBResult=class(TRLCustomDBResult)
  published

    // properties

    {@prop Align = ancestor /}
    property    Align;
    {@prop Alignment = ancestor /}
    property    Alignment;
    {@prop Anchors = ancestor /}
    property    Anchors;
    {@prop AutoSize = ancestor /}
    property    AutoSize;
    {@prop Behavior = ancestor /}
    property    Behavior;
    {@prop Borders = ancestor /}
    property    Borders;
    {@prop Color = ancestor /}
    property    Color;
    {@prop Constraints = ancestor /}
    property    Constraints;
    {@prop ComputeNulls = ancestor /}
    property    ComputeNulls;
    {@prop DataField = ancestor /}
    property    DataField;
    {@prop DataFormula = ancestor /}
    property    DataFormula;
    {@prop DataSource = ancestor /}
    property    DataSource;
    {@prop DisplayMask = ancestor /}
    property    DisplayMask;
    {@prop Font = ancestor /}
    property    Font;
    {@prop FriendlyName = ancestor /}
    property    FriendlyName;
    {@prop Holder = ancestor /}
    property    Holder;
    {@prop HoldStyle = ancestor /}
    property    HoldStyle;
    {@prop Info = ancestor /}
    property    Info;
    {@prop Layout = ancestor /}
    property    Layout;
    {@prop ParentColor = ancestor /}
    property    ParentColor;
    {@prop ParentFont = ancestor /}
    property    ParentFont;
    {@prop RealBounds = ancestor /}
    property    RealBounds;
    {@prop ResetAfterPrint = ancestor /}
    property    ResetAfterPrint;
    {@prop SecondHolder = ancestor /}
    property    SecondHolder;
    {@prop SecondHoldStyle = ancestor /}
    property    SecondHoldStyle;
    {@prop Text = ancestor /}
    property    Text;
    {@prop Transparent = ancestor /}
    property    Transparent;
    {@prop Visible = ancestor /}
    property    Visible;

    // events

    {@event AfterPrint = ancestor /}
    property    AfterPrint;
    {@event BeforePrint = ancestor /}
    property    BeforePrint;
    {@event OnCompute = ancestor /}
    property    OnCompute;
    {@event OnMeasureHeight = ancestor /}
    property    OnMeasureHeight;
  end;
  {/@class}


  { TRLSystemInfo }

  {@class TRLSystemInfo - Caixa de texto de com informa��es do sistema.
   @icon TRLSystemInfo.jpg
   @ancestor TRLCustomSystemInfo.
   @pub }
  TRLSystemInfo=class(TRLCustomSystemInfo)
  published

    // properties

    {@prop Align = ancestor /}
    property    Align;
    {@prop Alignment = ancestor /}
    property    Alignment;
    {@prop Anchors = ancestor /}
    property    Anchors;
    {@prop AutoSize = ancestor /}
    property    AutoSize;
    {@prop Behavior = ancestor /}
    property    Behavior;
    {@prop Borders = ancestor /}
    property    Borders;
    {@prop Color = ancestor /}
    property    Color;
    {@prop Constraints = ancestor /}
    property    Constraints;
    {@prop Font = ancestor /}
    property    Font;
    {@prop FriendlyName = ancestor /}
    property    FriendlyName;
    {@prop Holder = ancestor /}
    property    Holder;
    {@prop HoldStyle = ancestor /}
    property    HoldStyle;
    {@prop Info = ancestor /}
    property    Info;
    {@prop Layout = ancestor /}
    property    Layout;
    {@prop ParentColor = ancestor /}
    property    ParentColor;
    {@prop ParentFont = ancestor /}
    property    ParentFont;
    {@prop RealBounds = ancestor /}
    property    RealBounds;
    {@prop SecondHolder = ancestor /}
    property    SecondHolder;
    {@prop SecondHoldStyle = ancestor /}
    property    SecondHoldStyle;
    {@prop Text = ancestor /}
    property    Text;
    {@prop Transparent = ancestor /}
    property    Transparent;
    {@prop Visible = ancestor /}
    property    Visible;

    // events

    {@event AfterPrint = ancestor /}
    property    AfterPrint;
    {@event BeforePrint = ancestor /}
    property    BeforePrint;
    {@event OnMeasureHeight = ancestor /}
    property    OnMeasureHeight;
  end;
  {/@class}


  { TRLMemo }

  {@class TRLMemo - Caixa de texto multilinhas.
   @icon TRLMemo.jpg
   @ancestor TRLCustomMemo.
   @pub }
  TRLMemo=class(TRLCustomMemo)
  published

    // properties

    {@prop Align = ancestor /}
    property    Align;
    {@prop Alignment = ancestor /}
    property    Alignment;
    {@prop Anchors = ancestor /}
    property    Anchors;
    {@prop AutoSize = ancestor /}
    property    AutoSize;
    {@prop Behavior = ancestor /}
    property    Behavior;
    {@prop Borders = ancestor /}
    property    Borders;
    {@prop Color = ancestor /}
    property    Color;
    {@prop Constraints = ancestor /}
    property    Constraints;
    {@prop Font = ancestor /}
    property    Font;
    {@prop FriendlyName = ancestor /}
    property    FriendlyName;
    {@prop Holder = ancestor /}
    property    Holder;
    {@prop HoldStyle = ancestor /}
    property    HoldStyle;
    {@prop IntegralHeight = ancestor /}
    property    IntegralHeight;
    {@prop Layout = ancestor /}
    property    Layout;
    {@prop Lines = ancestor /}
    property    Lines;
    {@prop ParentColor = ancestor /}
    property    ParentColor;
    {@prop ParentFont = ancestor /}
    property    ParentFont;
    {@prop RealBounds = ancestor /}
    property    RealBounds;
    {@prop SecondHolder = ancestor /}
    property    SecondHolder;
    {@prop SecondHoldStyle = ancestor /}
    property    SecondHoldStyle;
    {@prop Transparent = ancestor /}
    property    Transparent;
    {@prop Visible = ancestor /}
    property    Visible;
    {@prop WordWrap = ancestor /}
    property    WordWrap;

    // events

    {@event AfterPrint = ancestor /}
    property    AfterPrint;
    {@event BeforePrint = ancestor /}
    property    BeforePrint;
    {@event OnMeasureHeight = ancestor /}
    property    OnMeasureHeight;
  end;
  {/@class}


  { TRLDBMemo }

  {@class TRLDBMemo - Caixa de texto multilinhas ligada a campo de dataset.
   @icon TRLDBMemo.jpg
   @ancestor TRLCustomDBMemo.
   @pub }
  TRLDBMemo=class(TRLCustomDBMemo)
  published

    // properties

    {@prop Align = ancestor /}
    property    Align;
    {@prop Alignment = ancestor /}
    property    Alignment;
    {@prop Anchors = ancestor /}
    property    Anchors;
    {@prop AutoSize = ancestor /}
    property    AutoSize;
    {@prop Behavior = ancestor /}
    property    Behavior;
    {@prop Borders = ancestor /}
    property    Borders;
    {@prop Color = ancestor /}
    property    Color;
    {@prop Constraints = ancestor /}
    property    Constraints;
    {@prop DataField = ancestor /}
    property    DataField;
    {@prop DataFormula = ancestor /}
    property    DataFormula;
    {@prop DataSource = ancestor /}
    property    DataSource;
    {@prop Font = ancestor /}
    property    Font;
    {@prop FriendlyName = ancestor /}
    property    FriendlyName;
    {@prop Holder = ancestor /}
    property    Holder;
    {@prop HoldStyle = ancestor /}
    property    HoldStyle;
    {@prop IntegralHeight = ancestor /}
    property    IntegralHeight;
    {@prop Layout = ancestor /}
    property    Layout;
    {@prop ParentColor = ancestor /}
    property    ParentColor;
    {@prop ParentFont = ancestor /}
    property    ParentFont;
    {@prop RealBounds = ancestor /}
    property    RealBounds;
    {@prop SecondHolder = ancestor /}
    property    SecondHolder;
    {@prop SecondHoldStyle = ancestor /}
    property    SecondHoldStyle;
    {@prop Transparent = ancestor /}
    property    Transparent;
    {@prop Visible = ancestor /}
    property    Visible;
    {@prop WordWrap = ancestor /}
    property    WordWrap;

    // events

    {@event AfterPrint = ancestor /}
    property    AfterPrint;
    {@event BeforePrint = ancestor /}
    property    BeforePrint;
    {@event OnMeasureHeight = ancestor /}
    property    OnMeasureHeight;
  end;
  {/@class}


  { TRLImage }

  {@class TRLImage - Caixa de imagem.
   @icon TRLImage.jpg
   @ancestor TRLCustomImage.
   @pub }
  TRLImage=class(TRLCustomImage)
  published

    // properties

    {@prop Align = ancestor /}
    property    Align;
    {@prop Anchors = ancestor /}
    property    Anchors;
    {@prop AutoSize = ancestor /}
    property    AutoSize;
    {@prop Behavior = ancestor /}
    property    Behavior;
    {@prop Borders = ancestor /}
    property    Borders;
    {@prop Center = ancestor /}
    property    Center;
    {@prop Font = ancestor /}
    property    Font;
    {@prop FriendlyName = ancestor /}
    property    FriendlyName;
    {@prop Holder = ancestor /}
    property    Holder;
    {@prop HoldStyle = ancestor /}
    property    HoldStyle;
    {@prop Picture = ancestor /}
    property    Picture;
    {@prop RealBounds = ancestor /}
    property    RealBounds;
    {@prop Scaled = ancestor /}
    property    Scaled;
    {@prop SecondHolder = ancestor /}
    property    SecondHolder;
    {@prop SecondHoldStyle = ancestor /}
    property    SecondHoldStyle;
    {@prop Stretch = ancestor /}
    property    Stretch;
    {@prop Transparent = ancestor /}
    property    Transparent;
    {@prop Visible = ancestor /}
    property    Visible;

    // events

    {@event AfterPrint = ancestor /}
    property    AfterPrint;
    {@event BeforePrint = ancestor /}
    property    BeforePrint;
    {@event OnMeasureHeight = ancestor /}
    property    OnMeasureHeight;
  end;
  {/@class}


  { TRLDBImage }

  {@class TRLDBImage - Caixa de imagem ligada a campo de dataset.
   @icon TRLDBImage.jpg
   @ancestor TRLCustomDBImage.
   @pub }
  TRLDBImage=class(TRLCustomDBImage)
  published

    // properties

    {@prop Align = ancestor /}
    property    Align;
    {@prop Anchors = ancestor /}
    property    Anchors;
    {@prop AutoSize = ancestor /}
    property    AutoSize;
    {@prop Behavior = ancestor /}
    property    Behavior;
    {@prop Borders = ancestor /}
    property    Borders;
    {@prop Center = ancestor /}
    property    Center;
    {@prop DataField = ancestor /}
    property    DataField;
    {@prop DataSource = ancestor /}
    property    DataSource;
    {@prop Font = ancestor /}
    property    Font;
    {@prop FriendlyName = ancestor /}
    property    FriendlyName;
    {@prop Holder = ancestor /}
    property    Holder;
    {@prop HoldStyle = ancestor /}
    property    HoldStyle;
    {@prop RealBounds = ancestor /}
    property    RealBounds;
    {@prop Scaled = ancestor /}
    property    Scaled;
    {@prop SecondHolder = ancestor /}
    property    SecondHolder;
    {@prop SecondHoldStyle = ancestor /}
    property    SecondHoldStyle;
    {@prop Stretch = ancestor /}
    property    Stretch;
    {@prop Transparent = ancestor /}
    property    Transparent;
    {@prop Visible = ancestor /}
    property    Visible;

    // events

    {@event AfterPrint = ancestor /}
    property    AfterPrint;
    {@event BeforePrint = ancestor /}
    property    BeforePrint;
    {@event OnMeasureHeight = ancestor /}
    property    OnMeasureHeight;
  end;
  {/@class}


  { TRLDraw }

  {@class TRLDraw - Caixa de desenho para figuras geom�tricas.
   As figuras podem ser de um tipo pr�-determinado ou customizado pelo usu�rio.
   @icon TRLDraw.jpg
   @ancestor TRLCustomDraw.
   @pub }
  TRLDraw=class(TRLCustomDraw)
  published

    // properties

    {@prop Align = ancestor /}
    property    Align;
    {@prop Anchors = ancestor /}
    property    Anchors;
    {@prop Angle = ancestor /}
    property    Angle;
    {@prop Behavior = ancestor /}
    property    Behavior;
    {@prop Borders = ancestor /}
    property    Borders;
    {@prop Brush = ancestor /}
    property    Brush;
    {@prop Center = ancestor /}
    property    Center;
    {@prop Color = ancestor /}
    property    Color;
    {@prop Constraints = ancestor /}
    property    Constraints;
    {@prop DrawData = ancestor /}
    property    DrawData;
    {@prop DrawHeight = ancestor /}
    property    DrawHeight;
    {@prop DrawKind = ancestor /}
    property    DrawKind;
    {@prop DrawWidth = ancestor /}
    property    DrawWidth;
    {@prop Font = ancestor /}
    property    Font;
    {@prop FriendlyName = ancestor /}
    property    FriendlyName;
    {@prop Holder = ancestor /}
    property    Holder;
    {@prop HoldStyle = ancestor /}
    property    HoldStyle;
    {@prop Options = ancestor /}
    property    Options;
    {@prop ParentColor = ancestor /}
    property    ParentColor;
    {@prop Pen = ancestor /}
    property    Pen;
    {@prop RealBounds = ancestor /}
    property    RealBounds;
    {@prop SecondHolder = ancestor /}
    property    SecondHolder;
    {@prop SecondHoldStyle = ancestor /}
    property    SecondHoldStyle;
    {@prop Transparent = ancestor /}
    property    Transparent;
    {@prop Visible = ancestor /}
    property    Visible;

    // events

    {@event AfterPrint = ancestor /}
    property    AfterPrint;
    {@event BeforePrint = ancestor /}
    property    BeforePrint;
    {@event OnMeasureHeight = ancestor /}
    property    OnMeasureHeight;
  end;
  {/@class}


  { TRLPanel }

  {@class TRLPanel - Container para controles.
                     Utilize o TRLPanel como container para controles ou outros paineis.
   @icon TRLPanel.jpg
   @ancestor TRLCustomPanel.
   @pub }
  TRLPanel=class(TRLCustomPanel)
  published

    // properties

    {@prop Align = ancestor /}
    property    Align;
    {@prop Alignment = ancestor /}
    property    Alignment;
    {@prop Anchors = ancestor /}
    property    Anchors;
    {@prop AutoExpand = ancestor /}
    property    AutoExpand;
    {@prop AutoSize = ancestor /}
    property    AutoSize;
    {@prop Background = ancestor /}
    property    Background;
    {@prop Behavior = ancestor /}
    property    Behavior;
    {@prop Borders = ancestor /}
    property    Borders;
    {@prop Color = ancestor /}
    property    Color;
    {@prop Constraints = ancestor /}
    property    Constraints;
    {@prop Degrade = ancestor /}
    property    Degrade;
    {@prop Font = ancestor /}
    property    Font;
    {@prop FriendlyName = ancestor /}
    property    FriendlyName;
    {@prop Holder = ancestor /}
    property    Holder;
    {@prop HoldStyle = ancestor /}
    property    HoldStyle;
    {@prop InsideMargins = ancestor /}
    property    InsideMargins;
    {@prop Layout = ancestor /}
    property    Layout;
    {@prop Margins = ancestor /}
    property    Margins;
    {@prop ParentColor = ancestor /}
    property    ParentColor;
    {@prop ParentFont = ancestor /}
    property    ParentFont;
    {@prop RealBounds = ancestor /}
    property    RealBounds;
    {@prop SecondHolder = ancestor /}
    property    SecondHolder;
    {@prop SecondHoldStyle = ancestor /}
    property    SecondHoldStyle;
    {@prop Transparent = ancestor /}
    property    Transparent;
    {@prop Visible = ancestor /}
    property    Visible;

    // events

    {@event AfterPrint = ancestor /}
    property    AfterPrint;
    {@event BeforePrint = ancestor /}
    property    BeforePrint;
    {@event OnDraw = ancestor /}
    property    OnDraw;
    {@event OnMeasureHeight = ancestor /}
    property    OnMeasureHeight;
  end;
  {/@class}


  { TRLBand }

  {@class TRLBand - Banda de impress�o.
   Utilize a banda de impress�o para representar registros de dados ou quebras de sequ�ncias de dados. Ela deve ser
   colocada dentro de um Report, Group ou SubDetail.
   O comportamento da banda � controlado atrav�s da propriedade BandType.
   @icon TRLBand.jpg
   @ancestor TRLCustomBand.
   @pub }
  TRLBand=class(TRLCustomBand)
  published

    // properties

    {@prop AlignToBottom = ancestor /}
    property    AlignToBottom;
    {@prop AutoExpand = ancestor /}
    property    AutoExpand;
    {@prop AutoSize = ancestor /}
    property    AutoSize;
    {@prop Background = ancestor /}
    property    Background;
    {@prop BandType = ancestor /}
    property    BandType;
    {@prop Borders = ancestor /}
    property    Borders;
    {@prop CarbonCopies = ancestor /}
    property    CarbonCopies;
    {@prop Color = ancestor /}
    property    Color;
    {@prop Constraints = ancestor /}
    property    Constraints;
    {@prop Completion = ancestor /}
    property    Completion;
    {@prop Computable = ancestor /}
    property    Computable;
    {@prop Degrade = ancestor /}
    property    Degrade;
    {@prop Font = ancestor /}
    property    Font;
    {@prop FriendlyName = ancestor /}
    property    FriendlyName;
    {@prop GroupIndex = ancestor /}
    property    GroupIndex;
    {@prop InsideMargins = ancestor /}
    property    InsideMargins;
    {@prop IntegralHeight = ancestor /}
    property    IntegralHeight;
    {@prop Margins = ancestor /}
    property    Margins;
    {@prop Options = ancestor /}
    property    Options;
    {@prop PageBreaking = ancestor /}
    property    PageBreaking;
    {@prop ParentColor = ancestor /}
    property    ParentColor;
    {@prop ParentFont = ancestor /}
    property    ParentFont;
    {@prop RealBounds = ancestor /}
    property    RealBounds;
    {@prop Transparent = ancestor /}
    property    Transparent;
    {@prop Visible = ancestor /}
    property    Visible;

    // events

    {@event AfterPrint = ancestor /}
    property    AfterPrint;
    {@event BeforePrint = ancestor /}
    property    BeforePrint;
    {@event OnMeasureHeight = ancestor /}
    property    OnMeasureHeight;
  end;
  {/@class}


  { TRLDetailGrid }

  {@class TRLDetailGrid - Banda de detalhe multi-colunas.
   Banda de tipo fixo btDetail. Ideal para a impress�o de etiquetas e relat�rios em colunas.
   @icon TRLDetailGrid.jpg
   @ancestor TRLCustomDetailGrid.
   @pub }
  TRLDetailGrid=class(TRLCustomDetailGrid)
  published

    // properties

    {@prop AutoExpand = ancestor /}
    property    AutoExpand;
    {@prop AutoSize = ancestor /}
    property    AutoSize;
    {@prop Background = ancestor /}
    property    Background;
    {@prop Borders = ancestor /}
    property    Borders;
    {@prop ColCount = ancestor /}
    property    ColCount;
    {@prop Color = ancestor /}
    property    Color;
    {@prop Constraints = ancestor /}
    property    Constraints;
    {@prop ColSpacing = ancestor /}
    property    ColSpacing;
    {@prop ColWidth = ancestor /}
    property    ColWidth;
    {@prop Completion = ancestor /}
    property    Completion;
    {@prop Computable = ancestor /}
    property    Computable;
    {@prop Degrade = ancestor /}
    property    Degrade;
    {@prop Font = ancestor /}
    property    Font;
    {@prop FriendlyName = ancestor /}
    property    FriendlyName;
    {@prop GroupIndex = ancestor /}
    property    GroupIndex;
    {@prop InsideMargins = ancestor /}
    property    InsideMargins;
    {@prop IntegralHeight = ancestor /}
    property    IntegralHeight;
    {@prop Margins = ancestor /}
    property    Margins;
    {@prop Organization = ancestor /}
    property    Organization;
    {@prop PageBreaking = ancestor /}
    property    PageBreaking;
    {@prop ParentColor = ancestor /}
    property    ParentColor;
    {@prop ParentFont = ancestor /}
    property    ParentFont;
    {@prop RealBounds = ancestor /}
    property    RealBounds;
    {@prop Transparent = ancestor /}
    property    Transparent;
    {@prop Visible = ancestor /}
    property    Visible;

    // events

    {@event AfterPrint = ancestor /}
    property    AfterPrint;
    {@event BeforePrint = ancestor /}
    property    BeforePrint;
  end;
  {/@class}


  { TRLGroup }

  {@class TRLGroup - Sequ�ncia de registros de dados.
   Insira bands sobre um componente de grupo para imprimir sequ�ncias de registros de dados.
   A quebra de sequ�ncia dos registros ser� detectada automaticamente se for indicado um campo ou conjunto de campos
   atrav�s da propriedade DataFields, ou ainda pela express�o contida em DataFormula. A quebra tamb�m poder� ser feita
   interativamente durante as chamadas ao evento OnGetBreak. Um componente de grupo deve conter pelo menos uma band de
   detalhe para imprimir os registros da sequ�ncia. Adicionalmente, podem ser inseridos quaisquer outros tipos de band
   como, por exemplo: btSummary para mostrar somat�rios e estat�sticas ao final da sequ�ncia, ou btHeader para mostrar
   cabe�alhos. Grupos podem ser inseridos recursivamente dentro de outros grupos formando uma cadeia de sequ�ncias
   hier�rquicas. Subdetalhes tamb�m podem ser inseridos dentro de grupos e vice-versa. Um grupo pode ser desativado
   sem no entanto influenciar na impress�o dos seus controles atrav�s da propriedade Enabled.
   @links TRLSubDetail.
   @icon TRLGroup.jpg
   @ancestor TRLCustomGroup.
   @pub }
  TRLGroup=class(TRLCustomGroup)
  published

    // properties

    {@prop AllowedBands = ancestor /}
    property    AllowedBands;
    {@prop Background = ancestor /}
    property    Background;
    {@prop Borders = ancestor /}
    property    Borders;
    {@prop Color = ancestor /}
    property    Color;
    {@prop Constraints = ancestor /}
    property    Constraints;
    {@prop DataFields = ancestor /}
    property    DataFields;
    {@prop DataFormula = ancestor /}
    property    DataFormula;
    {@prop Degrade = ancestor /}
    property    Degrade;
    {@prop Enabled = ancestor /}
    property    Enabled;
    {@prop Font = ancestor /}
    property    Font;
    {@prop FooterMeasuring = ancestor /}
    property    FooterMeasuring;
    {@prop ForceMinBands = ancestor /}
    property    ForceMinBands;
    {@prop FriendlyName = ancestor /}
    property    FriendlyName;
    {@prop InsideMargins = ancestor /}
    property    InsideMargins;
    {@prop Margins = ancestor /}
    property    Margins;
    {@prop MaxBands = ancestor /}
    property    MaxBands;
    {@prop MinBands = ancestor /}
    property    MinBands;
    {@prop PageBreaking = ancestor /}
    property    PageBreaking;
    {@prop ParentColor = ancestor /}
    property    ParentColor;
    {@prop ParentFont = ancestor /}
    property    ParentFont;
    {@prop RealBounds = ancestor /}
    property    RealBounds;
    {@prop Transparent = ancestor /}
    property    Transparent;
    {@prop Visible = ancestor /}
    property    Visible;

    // events

    {@event AfterPrint = ancestor /}
    property    AfterPrint;
    {@event BeforePrint = ancestor /}
    property    BeforePrint;
    {@event OnGetBreak = ancestor /}
    property    OnGetBreak;
  end;
  {/@class}
  

  { TRLSubDetail }

  {@class TRLSubDetail - Sub-relat�rio.
   Utilize o TRLSubDetail para imprimir registros ou sequ�ncias de dados relacionadas com os registros da fontes de
   dados principal. O controle de sub-detalhe � especialmente �til quando se quer listar registros de uma base que
   possui registros filhos ou relacionados (Master/Detail), aonde um TRLReport responderia pelos registros principais
   e o TRLSubDetail pelos registros filhos.
   @links TRLGroup.
   @icon TRLSubDetail.jpg
   @ancestor TRLCustomSubDetail.
   @pub }
  TRLSubDetail=class(TRLCustomSubDetail)
  published

    // properties

    {@prop AllowedBands = ancestor /}
    property    AllowedBands;
    {@prop Background = ancestor /}
    property    Background;
    {@prop Borders = ancestor /}
    property    Borders;
    {@prop Color = ancestor /}
    property    Color;
    {@prop Constraints = ancestor /}
    property    Constraints;
    {@prop DataSource = ancestor /}
    property    DataSource;
    {@prop Degrade = ancestor /}
    property    Degrade;
    {@prop Font = ancestor /}
    property    Font;
    {@prop FooterMeasuring = ancestor /}
    property    FooterMeasuring;
    {@prop ForceMinBands = ancestor /}
    property    ForceMinBands;
    {@prop FriendlyName = ancestor /}
    property    FriendlyName;
    {@prop InsideMargins = ancestor /}
    property    InsideMargins;
    {@prop Margins = ancestor /}
    property    Margins;
    {@prop MaxBands = ancestor /}
    property    MaxBands;
    {@prop MinBands = ancestor /}
    property    MinBands;
    {@prop PageBreaking = ancestor /}
    property    PageBreaking;
    {@prop ParentColor = ancestor /}
    property    ParentColor;
    {@prop ParentFont = ancestor /}
    property    ParentFont;
    {@prop Positioning = ancestor /}
    property    Positioning;
    {@prop PrintEmpty = ancestor /}
    property    PrintEmpty;
    {@prop RangeCount = ancestor /}
    property    RangeCount;
    {@prop RealBounds = ancestor /}
    property    RealBounds;
    {@prop RecordRange = ancestor /}
    property    RecordRange;
    {@prop Transparent = ancestor /}
    property    Transparent;
    {@prop Visible = ancestor /}
    property    Visible;

    // events

    {@event AfterPrint = ancestor /}
    property    AfterPrint;
    {@event BeforePrint = ancestor /}
    property    BeforePrint;
    {@event OnDataCount = ancestor /}
    property    OnDataCount;
    {@event OnDataRecord = ancestor /}
    property    OnDataRecord;
    {@event OnNeedData = ancestor /}
    property    OnNeedData;
  end;
  {/@class}


  { TRLReport }

  {@class TRLReport - Componente principal na constru��o de relat�rios.
   Utilize o TRLReport como ponto de partida na confec��o de qualquer relat�rio com o FortesReport. Um componente
   TRLReport pode listar registros de uma fonte de dados, solicitar os dados atrav�s de eventos em tempo de execu��o
   ou apenas imprimir p�ginas confeccionadas com os componentes da biblioteca.
   @icon TRLReport.jpg
   @ancestor TRLCustomReport.
   @pub }
  TRLReport=class(TRLCustomReport)
  published

    // properties

    {@prop AllowedBands = ancestor /}
    property    AllowedBands;
    {@prop AdjustableMargins = ancestor /}
    property    AdjustableMargins;
    {@prop Background = ancestor /}
    property    Background;
    {@prop Borders = ancestor /}
    property    Borders;
    {@prop Color = ancestor /}
    property    Color;
    {@prop Constraints = ancestor /}
    property    Constraints;
    {@prop DataSource = ancestor /}
    property    DataSource;
    {@prop DefaultFilter = ancestor /}
    property    DefaultFilter;
    {@prop Degrade = ancestor /}
    property    Degrade;
    {@prop FirstPageNumber = ancestor /}
    property    FirstPageNumber;
    {@prop Font = ancestor /}
    property    Font;
    {@prop FooterMeasuring = ancestor /}
    property    FooterMeasuring;
    {@prop ForceMinBands = ancestor /}
    property    ForceMinBands;
    {@prop ForcePrepare = ancestor /}
    property    ForcePrepare;
    {@prop FriendlyName = ancestor /}
    property    FriendlyName;
    {@prop InsideMargins = ancestor /}
    property    InsideMargins;
    {@prop Margins = ancestor /}
    property    Margins;
    {@prop MaxBands = ancestor /}
    property    MaxBands;
    {@prop MinBands = ancestor /}
    property    MinBands;
    {@prop NextReport = ancestor /}
    property    NextReport;
    {@prop PageSetup = ancestor /}
    property    PageSetup;
    {@prop ParentColor = ancestor /}
    property    ParentColor;
    {@prop ParentFont = ancestor /}
    property    ParentFont;
    {@prop PreviewOptions = ancestor /}
    property    PreviewOptions;
    {@prop PrintDialog = ancestor /}
    property    PrintDialog;
    {@prop PrintEmpty = ancestor /}
    property    PrintEmpty default True;
    {@prop PrintQuality = ancestor /}
    property    PrintQuality;
    {@prop RangeCount = ancestor /}
    property    RangeCount;
    {@prop RealBounds = ancestor /}
    property    RealBounds;
    {@prop RecordRange = ancestor /}
    property    RecordRange;
    {@prop ShowDesigners = ancestor /}
    property    ShowDesigners;
    {@prop ShowExplosion = ancestor /}
    property    ShowExplosion;
    {@prop ShowProgress = ancestor /}
    property    ShowProgress;
    {@prop ShowTracks = ancestor /}
    property    ShowTracks;
    {@prop Title = ancestor /}
    property    Title;
    {@prop ExpressionParser = ancestor /}
    property    ExpressionParser;
    {@prop Transparent = ancestor /}
    property    Transparent;
    {@prop Visible = ancestor /}
    property    Visible;

    // events

    {@event AfterPrint = ancestor /}
    property    AfterPrint;
    {@event BeforePrint = ancestor /}
    property    BeforePrint;
    {@event OnDataCount = ancestor /}
    property    OnDataCount;
    {@event OnDataRecord = ancestor /}
    property    OnDataRecord;
    {@event OnFilterText = ancestor /}
    property    OnFilterText;
    {@event OnNeedData = ancestor /}
    property    OnNeedData;
    {@event OnPageEnding = ancestor /}
    property    OnPageEnding;
    {@event OnPageStarting = ancestor /}
    property    OnPageStarting;
  end;
  {/@class}
  

{@proc LoadReportDialog - Carrega e pr�-visualiza relat�rio com di�logo.
 Exibe um di�logo para carga de relat�rio salvo em disco e em seguida chama o preview padr�o. :/}
procedure LoadReportDialog;

{@proc LoadReportFromFile - Carrega e pr�-visualiza relat�rio a partir de um arquivo. :/}
procedure LoadReportFromFile(const aFileName:string);

{/@unit}

implementation

uses
  RLSpoolFilter;

const
  faSlaveLeftSet  =[faLeft,faTop,faBottom,faLeftMost,faClient,faLeftTop,faLeftBottom,faCenterLeft,faClientLeft,faClientTop,faClientBottom,faWidth,faLeftOnly];
  faSlaveTopSet   =[faLeft,faTop,faRight,faLeftMost,faRightMost,faClient,faLeftTop,faRightTop,faCenterTop,faClientLeft,faClientTop,faClientRight,faHeight,faTopOnly];
  faSlaveRightSet =[faTop,faRight,faBottom,faRightMost,faClient,faRightTop,faRightBottom,faCenterRight,faClientTop,faClientRight,faClientBottom,faWidth,faRightOnly];
  faSlaveBottomSet=[faLeft,faRight,faBottom,faLeftMost,faRightMost,faClient,faLeftBottom,faRightBottom,faCenterBottom,faClientLeft,faClientRight,faClientBottom,faHeight,faBottomOnly];
  faLeftSet       =[faLeft,faLeftMost,faLeftTop,faLeftBottom,faCenterLeft,faClientLeft,faLeftOnly];
  faTopSet        =[faTop,faLeftTop,faRightTop,faCenterTop,faClientTop,faTopOnly];
  faRightSet      =[faRight,faRightMost,faRightTop,faRightBottom,faCenterRight,faClientRight,faRightOnly];
  faBottomSet     =[faBottom,faLeftBottom,faRightBottom,faCenterBottom,faClientBottom,faBottomOnly];
  //
  faSlaveWidthSet =faSlaveLeftSet*faSlaveRightSet;
  faSlaveHeightSet=faSlaveTopSet*faSlaveBottomSet;
  faFreeLeftSet   =[Low(TRLControlAlign)..High(TRLControlAlign)]-faSlaveLeftSet;
  faFreeTopSet    =[Low(TRLControlAlign)..High(TRLControlAlign)]-faSlaveTopSet;
  faFreeRightSet  =[Low(TRLControlAlign)..High(TRLControlAlign)]-faSlaveRightSet;
  faFreeBottomSet =[Low(TRLControlAlign)..High(TRLControlAlign)]-faSlaveBottomSet;
  faFreeWidthSet  =[Low(TRLControlAlign)..High(TRLControlAlign)]-faSlaveWidthSet;
  faFreeHeightSet =[Low(TRLControlAlign)..High(TRLControlAlign)]-faSlaveHeightSet;

const
  BandTypeNames:array[TRLBandType] of string=('Header','Title','ColumnHeader','Detail','ColumnFooter','Summary','Footer');
  InfoTypeNames:array[TRLInfoType] of string=('CarbonCopy','Date','DetailCount','FullDate','Hour','Junction','LastPageNumber','Mend','Now','PageNumber','PagePreview','Title','RecNo','CopyNo');
  faFromAlign  :array[TAlign] of TRLControlAlign=(
faNone,faTop,faBottom,faLeft,faRight,faClient
{$ifndef DELPHI5}
,faNone
{$endif}
);
  fkFromAnchor :array[TAnchorKind] of TRLControlAnchorsType=(fkLeft,fkTop,fkRight,fkBottom);

procedure LoadReportFromFile(const aFileName:string);
var
  form      :TForm;
  report    :TRLCustomReport;
  savecursor:TCursor;
begin
  if not FileExists(aFileName) then
    raise Exception.Create(LS_FileNotFoundStr+' "'+aFileName+'"');
  //
  savecursor   :=Screen.Cursor;
  Screen.Cursor:=crHourGlass;
  try
    form:=TForm.Create(nil);
    try
      report:=TRLCustomReport.Create(form);
      report.LoadFromFile(aFileName);
      Screen.Cursor:=savecursor;
      report.Preview;
    finally
      FreeObj(form);
    end;
  except
    Screen.Cursor:=savecursor;
    raise;
  end;
end;

procedure LoadReportDialog;
var
  dialog:TOpenDialog;
begin
  dialog:=TOpenDialog.Create(nil);
  try
    dialog.DefaultExt :=FormatFileExt(RLFILEEXT);
    dialog.Filter     :=AddFileFilter('',CS_ProductTitleStr,RLFILEEXT);
    dialog.FilterIndex:=1;
    dialog.Title      :=LS_LoadReportStr;
    if dialog.Execute then
      LoadReportFromFile(dialog.FileName);
  finally
    FreeObj(dialog);
  end;
end;

// controle dentro de frame
function ControlWithin(aControl:TControl):TControl;
begin
  if (aControl is TCustomFrame) and (TCustomFrame(aControl).ControlCount>0) then
    Result:=ControlWithin(TCustomFrame(aControl).Controls[0])
  else
    Result:=aControl;
end;

function IsStaticCustomControl(aControl:TControl):boolean;
begin
  Result:=((aControl is TRLCustomControl) and not (aControl is TRLCustomSite)) or (aControl is TRLCustomPanel);
end;

function IsTransparent(aControl:TRLCustomControl):boolean;
begin
  Result:=aControl.Transparent;
end;

// alinhamento de controle
function GetControlAlignOf(aControl:TControl):TRLControlAlign;
begin
  aControl:=ControlWithin(aControl);
  if aControl is TRLCustomControl then
    Result:=TRLCustomControl(aControl).Align
  else if aControl is TControl then
    Result:=faFromAlign[TControl(aControl).Align]
  else
    Result:=faNone;
end;

function GetControlAnchorsOf(aControl:TControl):TRLControlAnchors;
var
  i:TAnchorKind;
begin
  if aControl is TRLCustomControl then
    Result:=TRLCustomControl(aControl).Anchors
  else if aControl is TControl then
  begin
    Result:=[];
    for i:=Low(TAnchorKind) to High(TAnchorKind) do
      if i in TControl(aControl).Anchors then
        Result:=Result+[fkFromAnchor[i]];
  end
  else
    Result:=[];
end;

function GetScreenLeft(aControl:TControl):integer; overload;
begin
  Result:=aControl.Left;
  if aControl.Parent<>nil then
    Inc(Result,GetScreenLeft(aControl.Parent));
end;
function GetScreenLeft(aControl:TControl; aLeft:integer):integer; overload;
begin
  Result:=aLeft;
  if aControl.Parent<>nil then
    Inc(Result,GetScreenLeft(aControl.Parent));
end;

procedure SetScreenLeft(aControl:TControl; aLeft:integer); overload;
begin
  aControl.Left:=aControl.Left+aLeft-GetScreenLeft(aControl);
end;
procedure SetScreenLeft(aControl:TControl; aLeft:integer; var aResult:integer); overload;
begin
  aResult:=aControl.Left+aLeft-GetScreenLeft(aControl);
end;

function GetScreenTop(aControl:TControl):integer; overload;
begin
  Result:=aControl.Top;
  if aControl.Parent<>nil then
    Inc(Result,GetScreenTop(aControl.Parent));
end;
function GetScreenTop(aControl:TControl; aTop:integer):integer; overload;
begin
  Result:=aTop;
  if aControl.Parent<>nil then
    Inc(Result,GetScreenTop(aControl.Parent));
end;

procedure SetScreenTop(aControl:TControl; aTop:integer); overload;
begin
  aControl.Top:=aControl.Top+aTop-GetScreenTop(aControl);
end;
procedure SetScreenTop(aControl:TControl; aTop:integer; var aResult:integer); overload;
begin
  aResult:=aControl.Top+aTop-GetScreenTop(aControl);
end;

function GetScreenPos(aControl:TControl):TPoint; overload;
begin
  Result:=Point(aControl.Left,aControl.Top);
  if aControl.Parent<>nil then
    with GetScreenPos(aControl.Parent) do
    begin
      Inc(Result.x,x);
      Inc(Result.y,y);
    end;
end;
function GetScreenPos(aControl:TControl; aPos:TPoint):TPoint; overload;
begin
  Result:=aPos;
  if aControl.Parent<>nil then
    with GetScreenPos(aControl.Parent) do
    begin
      Inc(Result.x,x);
      Inc(Result.y,y);
    end;
end;

procedure SetScreenPos(aControl:TControl; aPos:TPoint); overload;
var
  p:TPoint;
begin
  p:=GetScreenPos(aControl);
  with aControl do
    SetBounds(Left+aPos.x-p.x,Top+aPos.y-p.y,Width,Height);
end;
procedure SetScreenPos(aControl:TControl; aPos:TPoint; var aResult:TPoint); overload;
var
  p:TPoint;
begin
  p:=GetScreenPos(aControl);
  aResult.X:=aControl.Left+aPos.x-p.x;
  aResult.Y:=aControl.Top +aPos.y-p.y;
end;

function ReportOrNIL(aSource:TObject):TRLCustomReport;
begin
  if Assigned(aSource) and (aSource is TRLCustomReport) then
    Result:=TRLCustomReport(aSource)
  else
    Result:=nil;
end;

{ TRLBorders }

constructor TRLBorders.Create(aOwner:TRLCustomControl);
begin
  // variables
  fParentControl:=aOwner;
  fSides        :=sdNone;
  fDrawLeft     :=False;
  fDrawTop      :=False;
  fDrawRight    :=False;
  fDrawBottom   :=False;
  fWidth        :=1;
  fColor        :=clBlack;
  fStyle        :=bsSolid;
  fFixedLeft    :=False;
  fFixedTop     :=False;
  fFixedRight   :=False;
  fFixedBottom  :=False;
  //
  inherited Create;
end;

procedure TRLBorders.AdjustParent;
begin
  with ParentControl do
  begin
    AdjustBounds;
    Invalidate;
  end;
end;

procedure TRLBorders.PaintTo(aCanvas:TCanvas; aRect:TRect);
var
  w:integer;
begin
  if Width>0 then
  begin
    w:=Self.Width;
    aCanvas.Pen.Color  :=Self.Color;
    aCanvas.Pen.Style  :=psSolid;
    aCanvas.Pen.Mode   :=pmCopy;
    aCanvas.Pen.Width  :=1;
    aCanvas.Brush.Color:=Self.Color;
    aCanvas.Brush.Style:=bsSolid;
    if CanDrawLeft then
      aCanvas.Rectangle(aRect.Left,aRect.Top,aRect.Left+w,aRect.Bottom);
    if CanDrawTop then
      aCanvas.Rectangle(aRect.Left,aRect.Top,aRect.Right,aRect.Top+w);
    if CanDrawRight then
      aCanvas.Rectangle(aRect.Right-w,aRect.Top,aRect.Right,aRect.Bottom);
    if CanDrawBottom then
      aCanvas.Rectangle(aRect.Left,aRect.Bottom-w,aRect.Right,aRect.Bottom);
  end;
end;

procedure TRLBorders.PaintTo(aSurface:TRLGraphicSurface; aRect:TRect);
var
  w:integer;
begin
  if Width>0 then
  begin
    w:=Self.Width;
    aSurface.Pen.Color  :=Self.Color;
    aSurface.Pen.Style  :=psSolid;
    aSurface.Pen.Mode   :=pmCopy;
    aSurface.Pen.Width  :=1;
    aSurface.Brush.Color:=Self.Color;
    aSurface.Brush.Style:=bsSolid;
    if CanDrawLeft then
      aSurface.Rectangle(aRect.Left,aRect.Top,aRect.Left+w,aRect.Bottom);
    if CanDrawTop then
      aSurface.Rectangle(aRect.Left,aRect.Top,aRect.Right,aRect.Top+w);
    if CanDrawRight then
      aSurface.Rectangle(aRect.Right-w,aRect.Top,aRect.Right,aRect.Bottom);
    if CanDrawBottom then
      aSurface.Rectangle(aRect.Left,aRect.Bottom-w,aRect.Right,aRect.Bottom);
  end;
end;

procedure TRLBorders.CheckSides;
begin
  if fDrawLeft and fDrawTop and fDrawRight and fDrawBottom and (fSides=sdAll) then
  else if not fDrawLeft and not fDrawTop and not fDrawRight and not fDrawBottom and (fSides=sdNone) then
  else
    fSides:=sdCustom;
end;

procedure TRLBorders.SetDrawLeft(const aValue:boolean);
begin
  if aValue=fDrawLeft then
    Exit;
  fDrawLeft:=aValue;
  if not fDrawLeft then
    fFixedLeft:=False;
  CheckSides;
  AdjustParent;
end;

procedure TRLBorders.SetDrawTop(const aValue:boolean);
begin
  if aValue=fDrawTop then
    Exit;
  fDrawTop:=aValue;
  if not fDrawTop then
    fFixedTop:=False;
  CheckSides;
  AdjustParent;
end;

procedure TRLBorders.SetDrawRight(const aValue:boolean);
begin
  if aValue=fDrawRight then
    Exit;
  fDrawRight:=aValue;
  if not fDrawRight then
    fFixedRight:=False;
  CheckSides;
  AdjustParent;
end;

procedure TRLBorders.SetDrawBottom(const aValue:boolean);
begin
  if aValue=fDrawBottom then
    Exit;
  fDrawBottom:=aValue;
  if not fDrawBottom then
    fFixedBottom:=False;
  CheckSides;
  AdjustParent;
end;

procedure TRLBorders.SetWidth(const aValue:integer);
begin
  if aValue=fWidth then
    Exit;
  if aValue<0 then
    Exit;
  fWidth:=aValue;
  AdjustParent;
end;

procedure TRLBorders.SetColor(const aValue:TColor);
begin
  if aValue=fColor then
    Exit;
  fColor:=aValue;
  ParentControl.Invalidate;
end;

procedure TRLBorders.SetStyle(const aValue:TBrushStyle);
begin
  if aValue=fStyle then
    Exit;
  fStyle:=aValue;
  ParentControl.Invalidate;
end;

procedure TRLBorders.SetParentControl(const aValue:TRLCustomControl);
begin
  if aValue=fParentControl then
    Exit;
  fParentControl:=aValue;
  AdjustParent;
end;

procedure TRLBorders.SetSides(const aValue:TRLBorderSides);
begin
  if aValue=fSides then
    Exit;
  fSides:=aValue;
  case fSides of
    sdNone: begin
              fDrawLeft   :=False;
              fDrawTop    :=False;
              fDrawRight  :=False;
              fDrawBottom :=False;
              fFixedLeft  :=False;
              fFixedTop   :=False;
              fFixedRight :=False;
              fFixedBottom:=False;
            end;
    sdAll : begin
              fDrawLeft  :=True;
              fDrawTop   :=True;
              fDrawRight :=True;
              fDrawBottom:=True;
            end;
  else
    Exit;
  end;
  AdjustParent;
end;

procedure TRLBorders.SetFixedLeft(const aValue:boolean);
begin
  if aValue=fFixedLeft then
    Exit;
  fFixedLeft:=aValue;
  if aValue and not DrawLeft then
    DrawLeft:=True;
end;

procedure TRLBorders.SetFixedTop(const aValue:boolean);
begin
  if aValue=fFixedTop then
    Exit;
  fFixedTop:=aValue;
  if aValue and not DrawTop then
    DrawTop:=True;
end;

procedure TRLBorders.SetFixedRight(const aValue:boolean);
begin
  if aValue=fFixedRight then
    Exit;
  fFixedRight:=aValue;
  if aValue and not DrawRight then
    DrawRight:=True;
end;

procedure TRLBorders.SetFixedBottom(const aValue:boolean);
begin
  if aValue=fFixedBottom then
    Exit;
  fFixedBottom:=aValue;
  if aValue and not fDrawBottom then
    DrawBottom:=True;
end;

function TRLBorders.CanDrawLeft:boolean;
begin
  Result:=DrawLeft and (FixedLeft or ((ParentControl.MasterReport<>nil) and (ParentControl.MasterReport.PrintQuality=pqFullFeature)));
end;

function TRLBorders.CanDrawTop:boolean;
begin
  Result:=DrawTop and (FixedTop or ((ParentControl.MasterReport<>nil) and (ParentControl.MasterReport.PrintQuality=pqFullFeature)));
end;

function TRLBorders.CanDrawRight:boolean;
begin
  Result:=DrawRight and (FixedRight or ((ParentControl.MasterReport<>nil) and (ParentControl.MasterReport.PrintQuality=pqFullFeature)));
end;

function TRLBorders.CanDrawBottom:boolean;
begin
  Result:=DrawBottom and (FixedBottom or ((ParentControl.MasterReport<>nil) and (ParentControl.MasterReport.PrintQuality=pqFullFeature)));
end;

function TRLBorders.IsCustom: boolean;
begin
  Result:=(fSides=sdCustom);
end;

{ TRLMargins }

constructor TRLMargins.Create(aOwner:TRLCustomControl);
begin
  // variables
  fParentControl      :=aOwner;
  fLeftMargin         :=0;
  fTopMargin          :=0;
  fRightMargin        :=0;
  fBottomMargin       :=0;
  fDefaultLeftMargin  :=0;
  fDefaultTopMargin   :=0;
  fDefaultRightMargin :=0;
  fDefaultBottomMargin:=0;
  //
  inherited Create;
end;

procedure TRLMargins.ReadLeftMargin(Reader:TReader);
begin
  fLeftMargin:=Reader.ReadFloat;
end;

procedure TRLMargins.WriteLeftMargin(Writer:TWriter);
begin
  Writer.WriteFloat(fLeftMargin);
end;

procedure TRLMargins.ReadTopMargin(Reader:TReader);
begin
  fTopMargin:=Reader.ReadFloat;
end;

procedure TRLMargins.WriteTopMargin(Writer:TWriter);
begin
  Writer.WriteFloat(fTopMargin);
end;

procedure TRLMargins.ReadRightMargin(Reader:TReader);
begin
  fRightMargin:=Reader.ReadFloat;
end;

procedure TRLMargins.WriteRightMargin(Writer:TWriter);
begin
  Writer.WriteFloat(fRightMargin);
end;

procedure TRLMargins.ReadBottomMargin(Reader:TReader);
begin
  fBottomMargin:=Reader.ReadFloat;
end;

procedure TRLMargins.WriteBottomMargin(Writer:TWriter);
begin
  Writer.WriteFloat(fBottomMargin);
end;

procedure TRLMargins.DefineProperties(Filer:TFiler);
begin
  Filer.DefineProperty('LeftMargin'  ,ReadLeftMargin  ,WriteLeftMargin  ,fLeftMargin<>fDefaultLeftMargin);
  Filer.DefineProperty('TopMargin'   ,ReadTopMargin   ,WriteTopMargin   ,fTopMargin<>fDefaultTopMargin);
  Filer.DefineProperty('RightMargin' ,ReadRightMargin ,WriteRightMargin ,fRightMargin<>fDefaultRightMargin);
  Filer.DefineProperty('BottomMargin',ReadBottomMargin,WriteBottomMargin,fBottomMargin<>fDefaultBottomMargin);
end;

procedure TRLMargins.SetDefaults(aLeft,aTop,aRight,aBottom:double);
begin
  fDefaultLeftMargin  :=aLeft;
  fDefaultTopMargin   :=aTop;
  fDefaultRightMargin :=aRight;
  fDefaultBottomMargin:=aBottom;
  fLeftMargin         :=aLeft;
  fTopMargin          :=aTop;
  fRightMargin        :=aRight;
  fBottomMargin       :=aBottom;
end;

procedure TRLMargins.AdjustParent;
begin
  with ParentControl do
  begin
    AdjustBounds;
    Invalidate;
  end;
end;

procedure TRLMargins.SetLeftMargin(const aValue:double);
begin
  if aValue=fLeftMargin then
    Exit;
  fLeftMargin:=aValue;
  AdjustParent;
end;

procedure TRLMargins.SetRightMargin(const aValue:double);
begin
  if aValue=fRightMargin then
    Exit;
  fRightMargin:=aValue;
  AdjustParent;
end;

procedure TRLMargins.SetTopMargin(const aValue:double);
begin
  if aValue=fTopMargin then
    Exit;
  fTopMargin:=aValue;
  AdjustParent;
end;

procedure TRLMargins.SetBottomMargin(const aValue:double);
begin
  if aValue=fBottomMargin then
    Exit;
  fBottomMargin:=aValue;
  AdjustParent;
end;

procedure TRLMargins.Assign(Source:TPersistent);
begin
  if Source is TRLMargins then
    with TRLMargins(Source) do
    begin
      Self.LeftMargin   :=LeftMargin;
      Self.TopMargin    :=TopMargin;
      Self.RightMargin  :=RightMargin;
      Self.BottomMargin :=BottomMargin;
    end
  else
    inherited;
end;

{ TRLPageSetup }

constructor TRLPageSetup.Create(aOwner:TRLCustomReport);
begin
  // variables
  fParentReport  :=ReportOrNIL(aOwner);
  fPaperSize     :=fpA4;
  fPaperWidth    :=PaperInfoArray[fPaperSize].Width;
  fPaperHeight   :=PaperInfoArray[fPaperSize].Height;
  fOrientation   :=poPortrait;
  fForceEmulation:=False;
  //
  inherited Create;
end;

procedure TRLPageSetup.AdjustParent;
begin
  with ParentReport do
  begin
    ReloadPrinter;
    AdjustBounds;
    Invalidate;
  end;
end;

procedure TRLPageSetup.SetPaperSize(const aValue:TRLPaperSize);
begin
  if aValue=fPaperSize then
    Exit;
  fPaperSize:=aValue;
  if fPaperSize<>fpCustom then
  begin
    fPaperWidth :=PaperInfoArray[fPaperSize].Width;
    fPaperHeight:=PaperInfoArray[fPaperSize].Height;
  end;
  AdjustParent;
end;

procedure TRLPageSetup.SetPaperHeight(const aValue:double);
begin
  if aValue=fPaperHeight then
    Exit;
  if (fPaperSize<>fpCustom) or (aValue=0) then
    Exit;
  fPaperHeight:=aValue;
  AdjustParent;
end;

procedure TRLPageSetup.SetPaperWidth(const aValue:double);
begin
  if aValue=fPaperWidth then
    Exit;
  if (fPaperSize<>fpCustom) or (aValue=0) then
    Exit;
  fPaperWidth:=aValue;
  AdjustParent;
end;

procedure TRLPageSetup.SetOrientation(const aValue:TRLPageOrientation);
begin
  if aValue=fOrientation then
    Exit;
  fOrientation:=aValue;
  AdjustParent;
end;

function TRLPageSetup.GetOrientedWidth:double;
begin
  if fOrientation=poPortrait then
    Result:=PaperWidth
  else
    Result:=PaperHeight;
end;

function TRLPageSetup.GetOrientedHeight:double;
begin
  if fOrientation=poPortrait then
    Result:=PaperHeight
  else
    Result:=PaperWidth;
end;    

procedure TRLPageSetup.SetOrientedHeight(const aValue:double);
begin
  if fOrientation=poPortrait then
    PaperHeight:=aValue
  else
    PaperWidth:=aValue;
end;

procedure TRLPageSetup.SetOrientedWidth(const aValue:double);
begin
  if fOrientation=poPortrait then
    PaperWidth:=aValue
  else
    PaperHeight:=aValue;
end;

function TRLPageSetup.IsCustomPaperSize: boolean;
begin
  Result:=(fPaperSize=fpCustom);
end;

procedure TRLPageSetup.Assign(Source: TRLPageSetup);
begin
  PaperSize     :=Source.PaperSize;
  Orientation   :=Source.Orientation;
  PaperWidth    :=Source.PaperWidth;
  PaperHeight   :=Source.PaperHeight;
  ForceEmulation:=Source.ForceEmulation;
end;

{ TRLBackground }

constructor TRLBackground.Create(aOwner:TRLCustomSite);
begin
  // variables
  fParentSite :=aOwner;
  fAlign      :=faClient;
  fArrange    :=baAligned;
  fAutoSize   :=True;
  fHeight     :=40;
  fStretch    :=False;
  fWidth      :=40;
  // objects
  fPicture    :=TPicture.Create;
  //
  inherited Create;
end;

destructor TRLBackground.Destroy;
begin
  FreeObj(fPicture);
  //
  inherited;
end;

procedure TRLBackground.AdjustSize;
begin
  if (fPicture.Graphic<>nil) and not fPicture.Graphic.Empty then
  begin
    fWidth :=fPicture.Width;
    fHeight:=fPicture.Height;
  end;
end;

procedure TRLBackground.PaintTo(aCanvas:TCanvas; aRect:TRect);
var
  x,y,d:integer;
  r:TRect;
  b:TBitmap;
begin
  if (fPicture.Graphic=nil) or fPicture.Graphic.Empty then
    Exit;
  case fArrange of
    baAligned    : begin
                     case fAlign of
                       faNone        : r:=Classes.Rect(aRect.Left,aRect.Top,aRect.Left+fWidth,aRect.Top+fHeight);
                       faLeft,
                       faLeftMost    : r:=Classes.Rect(aRect.Left,aRect.Top,aRect.Left+fWidth,aRect.Bottom);
                       faTop         : r:=Classes.Rect(aRect.Left,aRect.Top,aRect.Right,aRect.Top+fHeight);
                       faRight,
                       faRightMost   : r:=Classes.Rect(aRect.Right-fWidth,aRect.Top,aRect.Right,aRect.Bottom);
                       faBottom      : r:=Classes.Rect(aRect.Left,aRect.Bottom-fHeight,aRect.Right,aRect.Bottom);
                       faClient      : r:=aRect;
                       faLeftTop     : r:=Classes.Rect(aRect.Left,aRect.Top,aRect.Left+fWidth,aRect.Top+fHeight);
                       faRightTop    : r:=Classes.Rect(aRect.Right-fWidth,aRect.Top,aRect.Right,aRect.Top+fHeight);
                       faLeftBottom  : r:=Classes.Rect(aRect.Left,aRect.Bottom-fHeight,aRect.Left+fWidth,aRect.Bottom);
                       faRightBottom : r:=Classes.Rect(aRect.Right-fWidth,aRect.Bottom-fHeight,aRect.Right,aRect.Bottom);
                       faCenter      : begin
                                         x:=(aRect.Left+aRect.Right -fWidth ) div 2;
                                         y:=(aRect.Top +aRect.Bottom-fHeight) div 2;
                                         r:=Classes.Rect(x,y,x+fWidth,y+fHeight);
                                       end;
                       faCenterLeft,
                       faClientLeft  : begin
                                         y:=(aRect.Top+aRect.Bottom-fHeight) div 2;
                                         r:=Classes.Rect(aRect.Left,y,aRect.Left+fWidth,y+fHeight);
                                       end;
                       faCenterTop,
                       faClientTop   : begin
                                         x:=(aRect.Left+aRect.Right-fWidth) div 2;
                                         r:=Classes.Rect(x,aRect.Top,x+fWidth,aRect.Top+fHeight);
                                       end;
                       faCenterRight,
                       faClientRight : begin
                                         y:=(aRect.Top+aRect.Bottom-fHeight) div 2;
                                         r:=Classes.Rect(aRect.Right-fWidth,y,aRect.Right,y+fHeight);
                                       end;
                       faCenterBottom,
                       faClientBottom: begin
                                         x:=(aRect.Left+aRect.Right-fWidth) div 2;
                                         r:=Classes.Rect(x,aRect.Bottom-fHeight,x+fWidth,aRect.Bottom);
                                       end;
                       faHeight      : begin
                                         x:=(aRect.Left+aRect.Right-fWidth) div 2;
                                         r:=Classes.Rect(x,aRect.Top,x+fWidth,aRect.Bottom);
                                       end;
                       faWidth       : begin
                                         y:=(aRect.Top+aRect.Bottom-fHeight) div 2;
                                         r:=Classes.Rect(aRect.Left,y,aRect.Right,y+fHeight);
                                       end;
                       faLeftOnly    : begin
                                         y:=(aRect.Top+aRect.Bottom-fHeight) div 2;
                                         r:=Classes.Rect(aRect.Left,y,aRect.Left+fWidth,y+fHeight);
                                       end;
                       faRightOnly   : begin
                                         y:=(aRect.Top+aRect.Bottom-fHeight) div 2;
                                         r:=Classes.Rect(aRect.Right-fWidth,y,aRect.Right,y+fHeight);
                                       end;
                       faTopOnly     : begin
                                         x:=(aRect.Left+aRect.Right-fWidth) div 2;
                                         r:=Classes.Rect(x,aRect.Top,x+fWidth,aRect.Top+fHeight);
                                       end;
                       faBottomOnly  : begin
                                         x:=(aRect.Left+aRect.Right-fWidth) div 2;
                                         r:=Classes.Rect(x,aRect.Bottom-fHeight,x+fWidth,aRect.Bottom);
                                       end;
                     end;
                     if fStretch then
                     else
                     begin
                       r.Right :=r.Left+fPicture.Width;
                       r.Bottom:=r.Top +fPicture.Height;
                     end;
                     aCanvas.StretchDraw(r,fPicture.Graphic);
                   end;
    baCenter     : begin
                     r.Left:=(aRect.Left+aRect.Right -fWidth ) div 2;
                     r.Top :=(aRect.Top +aRect.Bottom-fHeight) div 2;
                     if fStretch then
                     begin
                       r.Right :=r.Left+fWidth;
                       r.Bottom:=r.Top +fHeight;
                     end
                     else
                     begin
                       r.Right :=r.Left+fPicture.Width;
                       r.Bottom:=r.Top +fPicture.Height;
                     end;
                     aCanvas.StretchDraw(r,fPicture.Graphic);
                   end;
    baSidebySide,
    baDistributed: begin
                     b:=TBitmap.Create;
                     try
                       b.Width :=RectWidth(aRect);
                       b.Height:=RectHeight(aRect);
                       d:=0;
                       y:=0;
                       repeat
                         x:=-d*fWidth div 2;
                         repeat
                           r.Left:=x;
                           r.Top :=y;
                           if fStretch then
                           begin
                             r.Right :=r.Left+fWidth;
                             r.Bottom:=r.Top +fHeight;
                           end
                           else
                           begin
                             r.Right :=r.Left+fPicture.Width;
                             r.Bottom:=r.Top +fPicture.Height;
                           end;
                           b.Canvas.StretchDraw(r,fPicture.Graphic);
                           Inc(x,fWidth);
                         until x>b.Width;
                         if fArrange=baDistributed then
                           d:=1-d;
                         Inc(y,fHeight);
                       until y>b.Height;
                       aCanvas.StretchDraw(aRect,b);
                     finally
                       FreeObj(b);
                     end;
                   end;
  end;
end;

procedure TRLBackground.PaintTo(aSurface:TRLGraphicSurface; aRect:TRect); 
var
  x,y,d:integer;
  r:TRect;
  b:TBitmap;
begin
  if (fPicture.Graphic=nil) or fPicture.Graphic.Empty then
    Exit;
  case fArrange of
    baAligned    : begin
                     case fAlign of
                       faNone        : r:=Classes.Rect(aRect.Left,aRect.Top,aRect.Left+fWidth,aRect.Top+fHeight);
                       faLeft,
                       faLeftMost    : r:=Classes.Rect(aRect.Left,aRect.Top,aRect.Left+fWidth,aRect.Bottom);
                       faTop         : r:=Classes.Rect(aRect.Left,aRect.Top,aRect.Right,aRect.Top+fHeight);
                       faRight,
                       faRightMost   : r:=Classes.Rect(aRect.Right-fWidth,aRect.Top,aRect.Right,aRect.Bottom);
                       faBottom      : r:=Classes.Rect(aRect.Left,aRect.Bottom-fHeight,aRect.Right,aRect.Bottom);
                       faClient      : r:=aRect;
                       faLeftTop     : r:=Classes.Rect(aRect.Left,aRect.Top,aRect.Left+fWidth,aRect.Top+fHeight);
                       faRightTop    : r:=Classes.Rect(aRect.Right-fWidth,aRect.Top,aRect.Right,aRect.Top+fHeight);
                       faLeftBottom  : r:=Classes.Rect(aRect.Left,aRect.Bottom-fHeight,aRect.Left+fWidth,aRect.Bottom);
                       faRightBottom : r:=Classes.Rect(aRect.Right-fWidth,aRect.Bottom-fHeight,aRect.Right,aRect.Bottom);
                       faCenter      : begin
                                         x:=(aRect.Left+aRect.Right -fWidth ) div 2;
                                         y:=(aRect.Top +aRect.Bottom-fHeight) div 2;
                                         r:=Classes.Rect(x,y,x+fWidth,y+fHeight);
                                       end;
                       faCenterLeft,
                       faClientLeft  : begin
                                         y:=(aRect.Top+aRect.Bottom-fHeight) div 2;
                                         r:=Classes.Rect(aRect.Left,y,aRect.Left+fWidth,y+fHeight);
                                       end;
                       faCenterTop,
                       faClientTop   : begin
                                         x:=(aRect.Left+aRect.Right-fWidth) div 2;
                                         r:=Classes.Rect(x,aRect.Top,x+fWidth,aRect.Top+fHeight);
                                       end;
                       faCenterRight,
                       faClientRight : begin
                                         y:=(aRect.Top+aRect.Bottom-fHeight) div 2;
                                         r:=Classes.Rect(aRect.Right-fWidth,y,aRect.Right,y+fHeight);
                                       end;
                       faCenterBottom,
                       faClientBottom: begin
                                         x:=(aRect.Left+aRect.Right-fWidth) div 2;
                                         r:=Classes.Rect(x,aRect.Bottom-fHeight,x+fWidth,aRect.Bottom);
                                       end;
                       faHeight      : begin
                                         x:=(aRect.Left+aRect.Right-fWidth) div 2;
                                         r:=Classes.Rect(x,aRect.Top,x+fWidth,aRect.Bottom);
                                       end;
                       faWidth       : begin
                                         y:=(aRect.Top+aRect.Bottom-fHeight) div 2;
                                         r:=Classes.Rect(aRect.Left,y,aRect.Right,y+fHeight);
                                       end;
                       faLeftOnly    : begin
                                         y:=(aRect.Top+aRect.Bottom-fHeight) div 2;
                                         r:=Classes.Rect(aRect.Left,y,aRect.Left+fWidth,y+fHeight);
                                       end;
                       faRightOnly   : begin
                                         y:=(aRect.Top+aRect.Bottom-fHeight) div 2;
                                         r:=Classes.Rect(aRect.Right-fWidth,y,aRect.Right,y+fHeight);
                                       end;
                       faTopOnly     : begin
                                         x:=(aRect.Left+aRect.Right-fWidth) div 2;
                                         r:=Classes.Rect(x,aRect.Top,x+fWidth,aRect.Top+fHeight);
                                       end;
                       faBottomOnly  : begin
                                         x:=(aRect.Left+aRect.Right-fWidth) div 2;
                                         r:=Classes.Rect(x,aRect.Bottom-fHeight,x+fWidth,aRect.Bottom);
                                       end;
                     end;
                     if fStretch then
                     else
                     begin
                       r.Right :=r.Left+fPicture.Width;
                       r.Bottom:=r.Top +fPicture.Height;
                     end;
                     aSurface.StretchDraw(r,fPicture.Graphic);
                   end;
    baCenter     : begin
                     r.Left:=(aRect.Left+aRect.Right -fWidth ) div 2;
                     r.Top :=(aRect.Top +aRect.Bottom-fHeight) div 2;
                     if fStretch then
                     begin
                       r.Right :=r.Left+fWidth;
                       r.Bottom:=r.Top +fHeight;
                     end
                     else
                     begin
                       r.Right :=r.Left+fPicture.Width;
                       r.Bottom:=r.Top +fPicture.Height;
                     end;
                     aSurface.StretchDraw(r,fPicture.Graphic);
                   end;
    baSidebySide,
    baDistributed: begin
                     b:=TBitmap.Create;
                     try
                       b.Width :=RectWidth(aRect);
                       b.Height:=RectHeight(aRect);
                       d:=0;
                       y:=0;
                       repeat
                         x:=-d*fWidth div 2;
                         repeat
                           r.Left:=x;
                           r.Top :=y;
                           if fStretch then
                           begin
                             r.Right :=r.Left+fWidth;
                             r.Bottom:=r.Top +fHeight;
                           end
                           else
                           begin
                             r.Right :=r.Left+fPicture.Width;
                             r.Bottom:=r.Top +fPicture.Height;
                           end;
                           b.Canvas.StretchDraw(r,fPicture.Graphic);
                           Inc(x,fWidth);
                         until x>b.Width;
                         if fArrange=baDistributed then
                           d:=1-d;
                         Inc(y,fHeight);
                       until y>b.Height;
                       aSurface.StretchDraw(aRect,b);
                     finally
                       FreeObj(b);
                     end;
                   end;
  end;
end;

procedure TRLBackground.SetAlign(const aValue:TRLControlAlign);
begin
  if aValue=fAlign then
    Exit;
  fAlign:=aValue;
  ParentSite.Invalidate;
end;

procedure TRLBackground.SetArrange(const aValue:TRLImageArrange);
begin
  if aValue=fArrange then
    Exit;
  fArrange:=aValue;
  ParentSite.Invalidate;
end;

procedure TRLBackground.SetAutoSize(const aValue:boolean);
begin
  if aValue=fAutoSize then
    Exit;
  fAutoSize:=aValue;
  if aValue then
    AdjustSize;
  ParentSite.Invalidate;
end;

procedure TRLBackground.SetHeight(const aValue:integer);
begin
  if aValue=fHeight then
    Exit;
  fHeight:=aValue;
  ParentSite.Invalidate;
end;

procedure TRLBackground.SetPicture(const aValue:TPicture);
begin
  fPicture.Assign(aValue);
  if fAutoSize then
    AdjustSize;
  ParentSite.Invalidate;
end;

procedure TRLBackground.SetStretch(const aValue:boolean);
begin
  if aValue=fStretch then
    Exit;
  fStretch:=aValue;
  ParentSite.Invalidate;
end;

procedure TRLBackground.SetWidth(const aValue:integer);
begin
  if aValue=fWidth then
    Exit;
  fWidth:=aValue;
  ParentSite.Invalidate;
end;

{ TRLDegradeEffect }

constructor TRLDegradeEffect.Create(aOwner:TRLCustomSite);
begin
  // variables
  fParentSite   :=aOwner;
  fDirection    :=ddNone;
  fOppositeColor:=clBlack;
  fGranularity  :=1;
  //
  inherited Create;
end;

procedure TRLDegradeEffect.PaintTo(aCanvas:TCanvas; aRect:TRect; aColor:TColor);
type
  TRGBInfo=record
    red,green,blue,pallete:byte;
  end;
var
  i,barcount,barwidth,totalwidth:integer;
  p:double;
  r:TRect;
  cl1,cl2:TRGBInfo;
function RGBInfo(Color:TColor):TRGBInfo;
var
  l:integer;
begin
  l:=ColorToRGB(Color);
  Move(l,Result,4);
end;
begin
  cl1:=RGBInfo(fParentSite.Color);
  cl2:=RGBInfo(fOppositeColor);
  if fDirection=ddVertical then
    totalwidth:=RectHeight(aRect)
  else
    totalwidth:=RectWidth(aRect);
  barwidth:=fGranularity; 
  barcount:=(totalwidth+barwidth-1) div barwidth;
  //
  for i:=0 to barcount-1 do
  begin
    p:=i/barcount;
    aCanvas.Brush.Style:=bsSolid;
    aCanvas.Brush.Color:=Round(p*cl2.Blue )*65536+(cl1.Blue -Round(p*cl1.Blue ))*65536+
                         Round(p*cl2.Green)*256  +(cl1.Green-Round(p*cl1.Green))*256  +
                         Round(p*cl2.Red  )*1    +(cl1.Red  -Round(p*cl1.Red  ))*1;
    if fDirection=ddVertical then
    begin
      r.Left  :=aRect.Left;
      r.Top   :=aRect.Top+i*barwidth;
      r.Right :=aRect.Right;
      r.Bottom:=r.Top+barwidth;
      if r.Bottom>aRect.Bottom then
        r.Bottom:=aRect.Bottom;
    end
    else
    begin
      r.Left  :=aRect.Left+i*barwidth;
      r.Top   :=aRect.Top;
      r.Right :=r.Left+barwidth;
      r.Bottom:=aRect.Bottom;
      if r.Right>aRect.Right then
        r.Right:=aRect.Right;
    end;
    aCanvas.FillRect(r);
  end;
end;

procedure TRLDegradeEffect.PaintTo(aSurface:TRLGraphicSurface; aRect:TRect; aColor:TColor);
type
  TRGBInfo=record
    red,green,blue,pallete:byte;
  end;
var
  i,barcount,barwidth,totalwidth:integer;
  p:double;
  r:TRect;
  cl1,cl2:TRGBInfo;
function RGBInfo(Color:TColor):TRGBInfo;
var
  l:integer;
begin
  l:=ColorToRGB(Color);
  Move(l,Result,4);
end;
begin
  cl1:=RGBInfo(fParentSite.Color);
  cl2:=RGBInfo(fOppositeColor);
  if fDirection=ddVertical then
    totalwidth:=RectHeight(aRect)
  else
    totalwidth:=RectWidth(aRect);
  barwidth:=fGranularity; 
  barcount:=(totalwidth+barwidth-1) div barwidth;
  //
  for i:=0 to barcount-1 do
  begin
    p:=i/barcount;
    aSurface.Brush.Style:=bsSolid;
    aSurface.Brush.Color:=Round(p*cl2.Blue )*65536+(cl1.Blue -Round(p*cl1.Blue ))*65536+
                          Round(p*cl2.Green)*256  +(cl1.Green-Round(p*cl1.Green))*256  +
                          Round(p*cl2.Red  )*1    +(cl1.Red  -Round(p*cl1.Red  ))*1;
    if fDirection=ddVertical then
    begin
      r.Left  :=aRect.Left;
      r.Top   :=aRect.Top+i*barwidth;
      r.Right :=aRect.Right;
      r.Bottom:=r.Top+barwidth;
      if r.Bottom>aRect.Bottom then
        r.Bottom:=aRect.Bottom;
    end
    else
    begin
      r.Left  :=aRect.Left+i*barwidth;
      r.Top   :=aRect.Top;
      r.Right :=r.Left+barwidth;
      r.Bottom:=aRect.Bottom;
      if r.Right>aRect.Right then
        r.Right:=aRect.Right;
    end;
    aSurface.FillRect(r);
  end;
end;

procedure TRLDegradeEffect.SetDirection(const aValue:TRLDegradeDirection);
begin
  if aValue=fDirection then
    Exit;
  fDirection:=aValue;
  fParentSite.Invalidate;
end;

procedure TRLDegradeEffect.SetGranularity(const aValue:integer);
begin
  if aValue=fGranularity then
    Exit;
  fGranularity:=aValue;
  fParentSite.Invalidate;
end;

procedure TRLDegradeEffect.SetOppositeColor(const aValue:TColor);
begin
  if aValue=fOppositeColor then
    Exit;
  fOppositeColor:=aValue;
  fParentSite.Invalidate;
end;

{ TRLSortedBands }

constructor TRLSortedBands.Create;
var
  i:TRLBandType;
begin
  for i:=Low(TRLBandType) to High(TRLBandType) do
    with fTypes[i] do
    begin
      List   :=TList.Create;
      Printed:=False;
    end;
  //
  inherited Create;
end;

destructor TRLSortedBands.Destroy;
var
  i:TRLBandType;
begin
  for i:=Low(TRLBandType) to High(TRLBandType) do
    with fTypes[i] do
      FreeObj(List);
  //    
  inherited;
end;

procedure TRLSortedBands.Add(aBand:TRLCustomSite);
var
  i:integer;
  t:TRLBandType;
begin
{$ifdef KYLIX1}
  t:=btDetail;
{$endif}
  if aBand is TRLCustomBand then
    t:=TRLCustomBand(aBand).BandType
  else if aBand is TRLCustomSubDetail then
    t:=TRLCustomSubDetail(aBand).Positioning
  else
    Exit;
  with fTypes[t].List do
  begin
    i:=0;
    while (i<=Count-1) and (aBand.Top>=TRLCustomSite(Items[i]).Top) do
      Inc(i);
    if i>Count-1 then
      Add(aBand)
    else
      Insert(i,aBand);
  end;
end;

procedure TRLSortedBands.Clear;
var
  i:TRLBandType;
begin
  for i:=Low(TRLBandType) to High(TRLBandType) do
    fTypes[i].List.Clear;
end;

procedure TRLSortedBands.ResetAll;
var
  i:TRLBandType;
begin
  for i:=Low(TRLBandType) to High(TRLBandType) do
    fTypes[i].Printed:=False;
end;

procedure TRLSortedBands.ResetPage;
var
  i:TRLBandType;
begin
  for i:=Low(TRLBandType) to High(TRLBandType) do
    if i in [btTitle] then
    else
      fTypes[i].Printed:=False;
end;

function TRLSortedBands.GetList(aType:TRLBandType):TList;
begin
  Result:=fTypes[aType].List;
end;

function TRLSortedBands.GetPrinted(aType:TRLBandType):boolean;
begin
  Result:=fTypes[aType].Printed;
end;

procedure TRLSortedBands.SetPrinted(aType:TRLBandType; aValue:boolean);
begin
  fTypes[aType].Printed:=aValue;
end;

{ TRLRealBounds }

constructor TRLRealBounds.Create(aOwner:TRLCustomControl);
begin
  fParentControl:=aOwner;
  fUsedUnit     :=buNone;
  fLeft         :=0;
  fTop          :=0;
  fWidth        :=0;
  fHeight       :=0;
  //
  inherited Create;
end;

procedure TRLRealBounds.AdjustParent;
begin
end;

procedure TRLRealBounds.SetUsedUnit(const aValue:TRLRealBoundsUnit);
begin
  fUsedUnit:=aValue;
  AdjustParent;
end;

procedure TRLRealBounds.SetWidth(const aValue:double);
begin
  fWidth:=aValue;
  AdjustParent;
end;

procedure TRLRealBounds.SetHeight(const aValue:double);
begin
  fHeight:=aValue;
  AdjustParent;
end;

procedure TRLRealBounds.SetLeft(const aValue:double);
begin
  fLeft:=aValue;
  AdjustParent;
end;

procedure TRLRealBounds.SetTop(const aValue:double);
begin
  fTop:=aValue;
  AdjustParent;
end;

{ TRLCustomControl }

constructor TRLCustomControl.Create(aOwner:TComponent);
begin
  // initialization
  fAfterPrint     :=nil;
  fAlign          :=faNone;
  fAnchors        :=[];
  fBeforePrint    :=nil;
  fBeforeText     :=nil;
  fHolder         :=nil;
  fHoldStyle      :=hsAsColumn;
  fSecondHolder   :=nil;
  fSecondHoldStyle:=hsAsColumn;
  fRealBounds     :=nil;
  fAlignment      :=taLeftJustify;
  fAutoSize       :=False;
  fAutoSizeDir    :=[];
  fAutoExpand     :=False;
  fAutoTrunc      :=False;
  fLayout         :=tlTop;
  fControlState   :=[];
  fBehavior       :=[];
  fDefaultBehavior:=fBehavior;
  fTransparent    :=True;
  fSizeFixed      :=False;
  fFriendlyName   :='';
  fOnMeasureHeight:=nil;     
  // objects
  fBorders        :=TRLBorders.Create(Self);
  fHoldeds        :=TList.Create;
  fRealBounds     :=TRLRealBounds.Create(Self);
  //
  inherited Create(aOwner);
  // customization
  ControlStyle    :=ControlStyle+[csOpaque,csReplicatable];
  //
  MakeCaption;
end;

destructor TRLCustomControl.Destroy;
begin
  FreeObj(fRealBounds);
  FreeObj(fHoldeds);
  FreeObj(fBorders);
  //
  inherited;
end;

procedure TRLCustomControl.ComputeDetail(aCaller:TObject);
begin
end;

procedure TRLCustomControl.Initialize;
begin
end;

// invoca evento apos a impressao
procedure TRLCustomControl.DoAfterPrint;
begin
  if Assigned(fAfterPrint) then
    fAfterPrint(Self);
end;

procedure TRLCustomControl.DrawBounds;
var
  r:TRect;
begin
  r:=CalcSizeRect;
  with Canvas do
  begin
    Pen.Color:=clBlack;
    Pen.Style:=psSolid;
    Pen.Mode :=pmCopy;
    MoveTo(r.Left   ,r.Top+5   ); LineTo(r.Left   ,r.Top     ); LineTo(r.Left +5,r.Top     );
    MoveTo(r.Right-5,r.Top     ); LineTo(r.Right-1,r.Top     ); LineTo(r.Right-1,r.Top+5   );
    MoveTo(r.Right-1,r.Bottom-5); LineTo(r.Right-1,r.Bottom-1); LineTo(r.Right-5,r.Bottom-1);
    MoveTo(r.Left +5,r.Bottom-1); LineTo(r.Left   ,r.Bottom-1); LineTo(r.Left   ,r.Bottom-5);
  end;
end;

procedure TRLCustomControl.Notification(aComponent:TComponent; Operation:TOperation);
var
  i:integer;
begin
  inherited;
  //
  if Operation=opRemove then
  begin
    if aComponent=fHolder then
      fHolder:=nil;
    if aComponent=fSecondHolder then
      fSecondHolder:=nil;
    if fHoldeds<>nil then
    begin
      i:=fHoldeds.IndexOf(aComponent);
      if i<>-1 then
        fHoldeds.Delete(i);
    end;
  end;  
end;

// anula alinhamento natural do delphi
procedure TRLCustomControl.RequestAlign;
begin
end;

procedure TRLCustomControl.PaintAsCustomControl;
var
  r:TRect;
begin
  r:=CalcSizeRect;
  with Canvas do
  begin
    Brush.Color:=Self.Color;
    Brush.Style:=bsSolid;
    FillRect(r);
  end;
  Borders.PaintTo(Canvas,r);
end;

procedure TRLCustomControl.InternalPaintFinish;
var
  p:TRLCustomReport;
begin
  p:=FindParentReport;
  if not Assigned(p) or p.ShowDesigners then
    DrawBounds;
end;

procedure TRLCustomControl.InternalPaint;
begin
  PaintAsCustomControl;
end;

procedure TRLCustomControl.Paint;
var
  r:TRLCustomReport;
begin
  r:=FindParentReport;
  if Assigned(r) and (r.ReportState in [rsWriting,rsClosing]) then // 3.20
  else
  begin
    InternalPaint;
    InternalPaintFinish;
  end;  
end;

function TRLCustomControl.IsFriendlyName:boolean;
begin
  Result:=(fFriendlyName<>'') and (fFriendlyName<>Name);
end;

function TRLCustomControl.IsCaption:boolean;
begin
  Result:=(fCaption<>'') and (fCaption<>GetDefaultCaption);
end;

function TRLCustomControl.IsBehavior:boolean;
begin
  Result:=(fBehavior<>fDefaultBehavior);
end;

procedure TRLCustomControl.PrintAsCustomControl;
var
  r:TRect;
  s:TRLGraphicSurface;
begin
  r:=CalcPrintBoundsRect;
  s:=RequestParentSurface;
  s.GeneratorId:=Integer(Self);
  NewGroupId;
  if not IsTransparent(Self) then
  begin
    s.Brush.Color:=Self.Color;
    s.Brush.Style:=bsSolid;
    s.FillRect(r);
  end;
  Borders.PaintTo(s,r);
end;

procedure TRLCustomControl.InternalPrint;
begin
  PrintAsCustomControl;
end;

procedure TRLCustomControl.Print;
begin
  Include(fControlState,stPrinting);
  try
    InternalPrint;
  finally
    Exclude(fControlState,stPrinting);
  end;
end;

procedure TRLCustomControl.CalcSize(var aSize:TPoint);
begin
  aSize:=Point(Width,Height);
end;

procedure TRLCustomControl.AdjustAlignment(var aRect:TRect);
var
  newwidth,newheight:integer;
begin
  newwidth:=RectWidth(aRect);
  case Alignment of
    taLeftJustify : aRect.Right:=Left+newwidth;
    taCenter      : begin
                      if Odd(newwidth) then
                        Inc(newwidth);
                      aRect.Left :=Left+(Width-newwidth) div 2;
                      aRect.Right:=aRect.Left+newwidth;
                    end;
    taRightJustify: begin
                      aRect.Right:=Left+Width;
                      aRect.Left :=aRect.Right-newwidth;
                    end;
    taJustify     : aRect.Right:=Left+newwidth;                
  end;
  newheight:=RectHeight(aRect);
  case Layout of
    tlTop   : aRect.Bottom:=Top+newheight;
    tlCenter: begin
                if Odd(newheight) then
                  Inc(newheight);
                aRect.Top   :=Top+(Height-newheight) div 2;
                aRect.Bottom:=aRect.Top+newheight;
              end;
    tlBottom: begin
                aRect.Bottom:=Top+Height;
                aRect.Top   :=aRect.Bottom-newheight;
              end;
  end;
end;

procedure TRLCustomControl.AdjustBounds;
var
  p:TPoint;
  r:TRect;
begin
{  if csLoading in ComponentState then
    Exit;}///barcode
  if stAdjustingBounds in fControlState then
    Exit;
  Include(fControlState,stAdjustingBounds);
  try
    CalcSize(p);
    if csDesigning in ComponentState then
    begin
      if p.X=0 then
        p.X:=1;
      if p.Y=0 then
        p.Y:=1;
    end;
    r.Left  :=Left;
    r.Top   :=Top;
    r.Right :=r.Left+p.X;
    r.Bottom:=r.Top +p.Y;
    AdjustAlignment(r);
    BoundsRect:=r;
  finally
    Exclude(fControlState,stAdjustingBounds);
  end;
end;

{$ifdef Win32}
procedure TRLCustomControl.CMColorChanged(var Message: TMessage);
begin
  if not (csLoading in ComponentState) and (Color<>clWhite) then
    fTransparent:=False;
  //  
  inherited;
end;
procedure TRLCustomControl.CMFontChanged(var Message:TMessage);
begin
  AdjustBounds;
  Invalidate;
  //
  inherited;
end;
{$else}
procedure TRLCustomControl.ColorChanged;
begin
  if not (csLoading in ComponentState) and (Color<>clWhite) then
    fTransparent:=False;
  //
  inherited;
end;
procedure TRLCustomControl.FontChanged;
begin
  AdjustBounds;
  Invalidate;
  //
  inherited;
end;
{$endif}

type TFriendControl=class(TControl) end;

function GetControlImage(aControl:TControl; var aBitmap:TBitmap):boolean;
{$ifdef CLX}
var c:TFriendControl;
{$ifndef CPP}
var h:QPaintDeviceH;
{$endif}
{$endif}
begin
  Result:=False;
  aBitmap:=TBitmap.Create;
  try
    aBitmap.Width :=aControl.Width;
    aBitmap.Height:=aControl.Height;
{$ifdef CLX}
    c:=TFriendControl(aControl);
{$ifndef CPP}
    h:=c.GetPaintDevice;
    QPainter_redirect(h,aBitmap.Handle);
{$endif}
    c.Repaint;
{$ifndef CPP}
    QPainter_redirect(h,nil);
{$endif}
{$else}
    if aControl is TWinControl then
      TWinControl(aControl).PaintTo(aBitmap.Canvas.Handle,0,0)
    else if aControl is TControl then
      aControl.Perform(WM_PAINT,aBitmap.Canvas.Handle,0)
    else    
      Abort;  
{$endif}
    Result:=True;
  except
    aBitmap.Free;
    aBitmap:=nil;
  end;
end;

procedure GetControlsByPrintOrder(aParent:TWinControl; aList:TList);
var
  i,j:integer;
  c:TControl;
  function IsPriorPrintOrder(aCtrl,aRef:TControl):boolean;
  begin
    Result:=(aCtrl.ComponentIndex<aRef.ComponentIndex);
  end;
begin
  for i:=0 to aParent.ControlCount-1 do
  begin
    c:=aParent.Controls[i];
    j:=0;
    while (j<aList.Count) and IsPriorPrintOrder(TControl(aList[j]),c) do
      Inc(j);
    aList.Insert(j,c);
  end;
end;

procedure PrepareStaticsAllFrom(aParent:TWinControl);
var
  i:integer;
  c:TControl;
  l:TList;
begin
  l:=TList.Create;
  try
    // monta lista sorteada por creation order
    GetControlsByPrintOrder(aParent,l);
    for i:=0 to l.Count-1 do
    begin
      c:=TControl(l[i]);
      // control ou panel n�o site
      if IsStaticCustomControl(c) then
        with TRLCustomControl(c) do
          if CanPrint then
          begin
            AdjustBounds;
            PrepareStatics;
          end
          else
      else if c is TCustomFrame then
        if TCustomFrame(c).Visible then
          PrepareStaticsAllFrom(TCustomFrame(c));
    end;
  finally
    l.free;
  end;
end;

procedure PrintNonNative(aParent:TWinControl; aControl:TControl);
var
  site:TWinControl;
  offs:TPoint;
  bmp :TBitmap;
begin
  // procura o parentsite para pegar o surface de desenho e as coordenadas relativas do controle aControl
  site:=aParent;
  offs:=Point(aControl.Left,aControl.Top);
  while (site<>nil) and not (site is TRLCustomSite) do
  begin
    Inc(offs.X,site.Left);
    Inc(offs.Y,site.Top);
    site:=site.Parent;
  end;
  //
  if site<>nil then
    if GetControlImage(aControl,bmp) then
      try
        TRLCustomSite(site).Surface.Draw(offs.X,offs.Y,bmp);
      finally
        bmp.Free;
      end;
end;

procedure PrintStaticsAllFrom(aParent:TWinControl);
var
  i:integer;
  c:TControl;
  l:TList;
begin
  l:=TList.Create;
  try
    // monta lista sorteada por creation order
    GetControlsByPrintOrder(aParent,l);
    for i:=0 to l.Count-1 do
    begin
      c:=TControl(l[i]);
      // control ou panel n�o site
      if IsStaticCustomControl(c) then
        with TRLCustomControl(c) do
          if CouldPrint then
          begin
            Print;
            DoAfterPrint;
          end
          else
      else if c is TCustomFrame then
        if TCustomFrame(c).Visible then
          PrintStaticsAllFrom(TCustomFrame(c))
        else
      else if not (c is TRLCustomControl) then
        if c.Visible then
          PrintNonNative(aParent,c);
    end;
  finally
    l.free;
  end;
end;

procedure PrintNonStaticsAllFrom(aParent:TWinControl);
var
  i:integer;
  c:TControl;
  l:TList;
begin
  l:=TList.Create;
  try
    // monta lista sorteada por creation order
    GetControlsByPrintOrder(aParent,l);
    for i:=0 to l.Count-1 do
    begin
      c:=TControl(l[i]);
      // control ou panel n�o site
      if c is TCustomFrame then
        if TCustomFrame(c).Visible then
          PrintNonStaticsAllFrom(TCustomFrame(c))
        else
      else if not IsStaticCustomControl(c) then
        with TRLCustomControl(c) do
          if CanPrint then
          begin
            Print;
            DoAfterPrint;
          end;
    end;
  finally
    l.free;
  end;
end;

procedure TRLCustomControl.PrepareStatics;
begin
  if Enabled then
    PrepareStaticsAllFrom(Self);
end;

procedure TRLCustomControl.PrintStatics;
begin
  if Enabled then
    PrintStaticsAllFrom(Self);
end;

procedure TRLCustomControl.PrintNonStatics;
begin
  if Enabled then
    PrintNonStaticsAllFrom(Self);
end;

function TRLCustomControl.IsBallast:boolean;
var
  p:TRLCustomPager;
  s:TRLCustomSkipper;
begin
  s:=FindParentSkipper;
  p:=FindParentPager;
  if (p<>nil) and (psCompleting in p.PagerStatus) then
    Result:=True
  else if (s<>nil) and (s.RecordAction=raBlankAndRetain) then
    Result:=True
  else
    Result:=False;
end;

procedure TRLCustomControl.MakeCaption;
begin
  Caption:=GetMadeCaption;
end;

function TRLCustomControl.GetMadeCaption:string;
begin
  if IsBallast then
    Result:=''
  else
    Result:=InternalMakeCaption;
end;

function TRLCustomControl.InternalMakeCaption:string;
begin
  Result:=GetCaption;
end;

function TRLCustomControl.GetDefaultCaption:TCaption;
begin
  if fFriendlyName<>'' then
    Result:=fFriendlyName
  else
    Result:=Name;
end;

// relatorio anterior
function TRLCustomControl.FindParentReport:TRLCustomReport;
var
  w:TControl;
begin
  w:=Self;
  while (w<>nil) and not (w is TRLCustomReport) do
    w:=w.Parent;
  Result:=TRLCustomReport(w);
end;

// relatorio mestre, o primeiro da lista
function TRLCustomControl.GetMasterReport:TRLCustomReport;
begin
  Result:=FindParentReport;
  if Result<>nil then
    if Result.PriorReport<>nil then
      Result:=Result.PriorReport.MasterReport;
end;

// site anterior
function TRLCustomControl.FindParentSite:TRLCustomSite;
var
  w:TControl;
begin
  w:=Parent;
  while (w<>nil) and not (w is TRLCustomSite) do
    w:=w.Parent;
  Result:=TRLCustomSite(w);
end;

// band anterior 
function TRLCustomControl.FindParentBand:TRLCustomBand;
var
  w:TControl;
begin
  w:=Parent;
  while (w<>nil) and not (w is TRLCustomBand) do
    w:=w.Parent;
  Result:=TRLCustomBand(w);
end;

function TRLCustomControl.FindParentGroup:TRLCustomGroup;
var
  w:TControl;
begin
  Result:=nil;
  w:=Parent;
  while (w<>nil) and not (w is TRLCustomGroup) do
    if w is TRLCustomPager then
      Exit
    else
      w:=w.Parent;
  Result:=TRLCustomGroup(w);
end;

// controlador de registros atual ou anterior (DlReport ou subdetail)
function TRLCustomControl.FindParentSkipper:TRLCustomSkipper;
var
  w:TControl;
begin
  w:=Self;
  while (w<>nil) and not (w is TRLCustomSkipper) do
    w:=w.Parent;
  Result:=TRLCustomSkipper(w);
end;

function TRLCustomControl.FindParentPager:TRLCustomPager;
var
  w:TControl;
begin
  w:=Parent;
  while (w<>nil) and not (w is TRLCustomPager) do
    w:=w.Parent;
  Result:=TRLCustomPager(w);
end;

function TRLCustomControl.FindParentSurface:TRLGraphicSurface;
var
  p:TRLCustomSite;
begin
  p:=FindParentSite;
  if Assigned(p) then
    Result:=p.Surface
  else
    Result:=nil;
end;

// pager atual ou anterior (DlReport, subdetail ou group)
function TRLCustomControl.RequestParentPager:TRLCustomPager;
begin
  Result:=FindParentPager;
  if Result=nil then
    raise Exception.Create(LS_NotFoundStr+': '+Name+'.ParentPager');
end;

function TRLCustomControl.RequestParentSkipper:TRLCustomSkipper;
begin
  Result:=FindParentSkipper;
  if Result=nil then
    raise Exception.Create(LS_NotFoundStr+': '+Name+'.ParentSkipper');
end;

function TRLCustomControl.RequestParentReport:TRLCustomReport;
begin
  Result:=FindParentReport;
  if Result=nil then
    raise Exception.Create(LS_NotFoundStr+': '+Name+'.ParentReport');
end;

function TRLCustomControl.RequestParentSurface:TRLGraphicSurface;
begin
  Result:=FindParentSurface;
  if Result=nil then
    raise Exception.Create(LS_NotFoundStr+': '+Name+'.ParentSurface');
end;

procedure TRLCustomControl.DoBeforePrint(var aPrintIt:boolean);
begin
  if Assigned(fBeforePrint) then
    fBeforePrint(Self,aPrintIt);
end;

procedure TRLCustomControl.DoBeforeText(var aText:string; var aPrintIt:boolean);
begin
  if Assigned(fBeforeText) then
    fBeforeText(Self,aText,aPrintIt);
end;

procedure TRLCustomControl.DoOnMeasureHeight;
begin
  if Assigned(fOnMeasureHeight) then
    fOnMeasureHeight(Self);
end;

function TRLCustomControl.CanPrint:boolean;
var
  s:string;
begin
  fCouldPrint:=Visible;
  if fCouldPrint then
  begin
    DoBeforePrint(fCouldPrint);
    if fCouldPrint then
    begin
      s:=GetMadeCaption;
      DoBeforeText(s,fCouldPrint);
      if fCouldPrint then
      begin
        FindParentReport.DoFilterText(s,fCouldPrint);
        if fCouldPrint then
          Caption:=s;
      end;
    end;
  end;
  Result:=fCouldPrint;
end;

function TRLCustomControl.CalcSizeRect:TRect;
begin
  Result:=BoundsRect;
  MoveRect(Result,0,0);
end;

function TRLCustomControl.GetClientRect:TRect;
var
  w:integer;
begin
  Result:=CalcSizeRect;
  w:=fBorders.Width;
  if w>0 then
  begin
    Inc(w);
    if fBorders.CanDrawLeft then
      Inc(Result.Left,w);
    if fBorders.CanDrawTop then
      Inc(Result.Top,w);
    if fBorders.CanDrawRight then
      Dec(Result.Right,w);
    if fBorders.CanDrawBottom then
      Dec(Result.Bottom,w);
  end;
end;

function TRLCustomControl.CalcPrintBoundsRect:TRect;
var
  p:TControl;
begin
  Result:=BoundsRect;
  //
  p:=Parent;
  while (p<>nil) and not (p is TRLCustomSite) do
  begin
    OffsetRect(Result,p.Left,p.Top);
    p:=p.Parent;
  end;
end;

function TRLCustomControl.CalcPrintSizeRect:TRect;
begin
  Result:=BoundsRect;
  MoveRect(Result,0,0);
end;

function TRLCustomControl.CalcPrintClientRect:TRect;
var
  w,h:integer;
begin
  Result:=CalcPrintBoundsRect;
  if fBorders.Width>0 then
  begin
    w:=fBorders.Width;
    h:=fBorders.Width;
    if fBorders.CanDrawLeft then
      Inc(Result.Left,w);
    if fBorders.CanDrawTop then
      Inc(Result.Top,h);
    if fBorders.CanDrawRight then
      Dec(Result.Right,w);
    if fBorders.CanDrawBottom then
      Dec(Result.Bottom,h);
  end;
end;

function TRLCustomControl.CalcWastedPixels:TRect;
begin
  Result:=Rect(0,0,0,0);
  if fBorders.Width>0 then
  begin
    if fBorders.CanDrawLeft then
      Inc(Result.Left  ,fBorders.Width);
    if fBorders.CanDrawTop then
      Inc(Result.Top   ,fBorders.Width);
    if fBorders.CanDrawRight then
      Inc(Result.Right ,fBorders.Width);
    if fBorders.CanDrawBottom then
      Inc(Result.Bottom,fBorders.Width);
  end;
end;

procedure TRLCustomControl.SetClientRect(const aValue:TRect);
var
  rWasted:TRect;
  newRect:TRect;
begin
  rWasted:=CalcWastedPixels;
  newRect:=aValue;
  Dec(newRect.Left  ,rWasted.Left);
  Dec(newRect.Top   ,rWasted.Top);
  Inc(newRect.Right ,rWasted.Right);
  Inc(newRect.Bottom,rWasted.Bottom);
  BoundsRect:=newRect;
end;

procedure TRLCustomControl.SetAlign(const aValue:TRLControlAlign);
var
  old:TRLControlAlign;
begin
  old:=fAlign;
  if aValue=old then
    Exit;
  if aValue<>faNone then
    fAnchors:=[];
  fAlign:=aValue;
  //
  if ((old in faFreeHeightSet) and (aValue in faFreeWidthSet)) or
     ((old in faFreeWidthSet) and (aValue in faFreeHeightSet)) then
  begin
    fAlign:=faNone;
    AdjustBounds;
    fAlign:=aValue;
  end;
  Realign;
end;

procedure TRLCustomControl.SetAnchors(const aValue:TRLControlAnchors);
begin
  if aValue<>[] then
    fAlign:=faNone;
  fAnchors:=aValue;
end;

procedure TRLCustomControl.Hold(aControl:TRLCustomControl; aPlace:integer);
var
  m,n,p:TPoint;
begin
  if aControl=Self then
    Exit;
  if fHoldeds.IndexOf(aControl)=-1 then
    fHoldeds.Add(aControl);
  // guarda posi��o relativa
  m  :=GetScreenPos(Self);
  n  :=GetScreenPos(aControl);
  p.x:=n.x-m.x;
  p.y:=n.y-m.y;
  case aPlace of
    0: aControl.HolderOffset:=p;
    1: aControl.SecondHolderOffset:=p;
  end;  
  // ajusta posi��o do controle amarrado
  aControl.AdjustBounds;
end;

procedure TRLCustomControl.Unhold(aControl:TRLCustomControl);
var
  i:integer;
begin
  i:=fHoldeds.IndexOf(aControl);
  if i<>-1 then
    fHoldeds.Delete(i);
end;

procedure TRLCustomControl.SetHolder(const aValue:TRLCustomControl);
var
  old:TRLCustomControl;
begin
  old:=fHolder;
  if aValue=old then
    Exit;
  fHolder:=aValue;
  if old<>nil then
    old.Unhold(Self);
  if aValue<>nil then
    aValue.Hold(Self,0);
end;

procedure TRLCustomControl.SetHoldStyle(const aValue:TRLHoldStyle);
begin
  if aValue=fHoldStyle then
    Exit;
  fHoldStyle:=aValue;
  if fHolder<>nil then
  begin
    fHolder.Unhold(Self);
    fHolder.Hold(Self,0);
  end;
end;

procedure TRLCustomControl.SetSecondHolder(const aValue:TRLCustomControl);
var
  old:TRLCustomControl;
begin
  old:=fSecondHolder;
  if aValue=old then
    Exit;
  fSecondHolder:=aValue;
  if old<>nil then
    old.Unhold(Self);
  if aValue<>nil then
    aValue.Hold(Self,1);
end;

procedure TRLCustomControl.SetSecondHoldStyle(const aValue:TRLHoldStyle);
begin
  if aValue=fSecondHoldStyle then
    Exit;
  fSecondHoldStyle:=aValue;
  if fSecondHolder<>nil then
  begin
    fSecondHolder.Unhold(Self);
    fSecondHolder.Hold(Self,1);
  end;
end;

// ajusta a altura do controle pai para comportar este controle
procedure TRLCustomControl.ExpandParentSite;
var
  w,h:integer;
  s:TRLCustomSite;
begin
  if csLoading in ComponentState then
    Exit;
  if stRestoringBounds in fControlState then
    Exit;
  if stExpandingParent in fControlState then
    Exit;
  Include(fControlState,stExpandingParent);
  try
    w:=(BoundsRect.Right -BoundsRect.Left)-(OldBoundsRect.Right -OldBoundsRect.Left);
    h:=(BoundsRect.Bottom-BoundsRect.Top )-(OldBoundsRect.Bottom-OldBoundsRect.Top);
    // detecta controle escravo de largura
    if Align in faFreeWidthSet then
    begin
      // procura o site pai n�o escravo de largura
      s:=FindParentSite;
      while (s<>nil) and not (s.Align in faFreeWidthSet) do
        s:=s.FindParentSite;
      if (s<>nil) and (asWidthDir in s.AutoSizeDir) then
        if s.AutoSize then
          s.AdjustBounds
        else if s.AutoExpand and (beSiteExpander in Behavior) then
          s.Width:=s.Width+w;
    end;
    // detecta controle escravo de altura
    if Align in faFreeHeightSet then
    begin
      // procura o site pai n�o escravo de altura
      s:=FindParentSite;
      while (s<>nil) and not (s.Align in faFreeHeightSet) do
        s:=s.FindParentSite;
      if (s<>nil) and (asHeightDir in s.AutoSizeDir) then
        if s.AutoSize then
          s.AdjustBounds
        else if s.AutoExpand and (beSiteExpander in Behavior) then
          s.Height:=s.Height+h;
    end;
  finally
    Exclude(fControlState,stExpandingParent);
  end;
end;

procedure TRLCustomControl.Realign;
var
  p:TRLCustomSite;
begin
  if csLoading in ComponentState then
    Exit;
  p:=FindParentSite;
  if p<>nil then
    p.RealignControls;
end;

procedure TRLCustomControl.RealignControls;
begin
end;

function TRLCustomControl.CanSetWidth:boolean;
begin
  Result:=(Align in faFreeWidthSet) and not ((asWidthDir in AutoSizeDir) and AutoSize);
end;

function TRLCustomControl.CanSetHeight:boolean;
begin
  Result:=(Align in faFreeHeightSet) and not ((asHeightDir in AutoSizeDir) and AutoSize);
end;

procedure TRLCustomControl.RealignHoldeds;
var
  i:integer;
begin
  if stAdjustingHoldeds in fControlState then
    Exit;
  Include(fControlState,stAdjustingHoldeds);
  try
    for i:=0 to fHoldeds.Count-1 do
      TRLCustomControl(fHoldeds[i]).AdjustBounds;
  finally
    Exclude(fControlState,stAdjustingHoldeds);
  end;
end;

procedure TRLCustomControl.OriginalSetBounds(aLeft,aTop,aWidth,aHeight:integer);
begin
  inherited SetBounds(aLeft,aTop,aWidth,aHeight);
end;

// 
procedure TRLCustomControl.AdjustToFixedSize(var aLeft,aTop,aWidth,aHeight:integer);
begin
  if fSizeFixed then
  begin
    aWidth :=fFixedSize.X;
    aHeight:=fFixedSize.Y;
  end;
end;

// adequa o frame que cont�m o control
procedure TRLCustomControl.AdjustToParentFrame(var aLeft,aTop,aWidth,aHeight:integer);
var
  r:TRect;
begin
  if (Parent<>nil) and (Parent is TCustomFrame) then
  begin
    r.Left  :=Parent.Left+aLeft;
    r.Top   :=Parent.Top +aTop;
    r.Right :=r.Left+aWidth;
    r.Bottom:=r.Top +aHeight;
    aLeft   :=0;
    aTop    :=0;
    Parent.BoundsRect:=r;
  end;
end;

//
procedure TRLCustomControl.AdjustToHolder(aHolder:TRLCustomControl; var aLeft,aTop,aWidth,aHeight:integer);
var
  m,p,r,holdofs:TPoint;
  ox,oy:integer;
  holdst:TRLHoldStyle;
begin
{$ifdef KYLIX1}
  holdofs:=Point(0,0);
  holdst :=hsAsColumn;
{$endif}
  if aHolder=nil then
    Exit
  else if aHolder=fHolder then
  begin
    holdofs:=HolderOffset;
    holdst :=HoldStyle;
  end
  else if aHolder=fSecondHolder then
  begin
    holdofs:=SecondHolderOffset;
    holdst :=SecondHoldStyle;
  end
  else
    Exit;
  //
  case Alignment of
    taLeftJustify : ox:=0;
    taCenter      : ox:=(aHolder.Width-aWidth) div 2;
    taRightJustify: ox:=aHolder.Width-aWidth;
    taJustify     : ox:=0;
  else
    ox:=0;
  end;
  //
  case Layout of
    tlTop    : oy:=0;
    tlCenter : oy:=(aHolder.Height-aHeight) div 2;
    tlBottom : oy:=aHolder.Height-aHeight;
    tlJustify: oy:=0;
  else
    oy:=0;
  end;
  //
  case holdst of
    hsAsColumn    : begin
                      SetScreenLeft(Self,GetScreenLeft(aHolder)+ox,aLeft);
                      if CanSetWidth then
                        aWidth:=aHolder.Width;
                    end;
    hsHorizontally: SetScreenLeft(Self,GetScreenLeft(aHolder)+holdofs.X+ox,aLeft);
    hsVertically  : SetScreenTop(Self,GetScreenTop(aHolder)+holdofs.Y+oy,aTop);
    hsRelatively  : begin
                      m:=GetScreenPos(aHolder);
                      p:=Point(m.X+holdofs.X+ox,m.Y+holdofs.Y+oy);
                      SetScreenPos(Self,p,r);
                      aLeft:=r.X;
                      aTop :=r.Y;
                    end;
    hsCopyWidth   : if CanSetWidth then
                      aWidth:=aHolder.Width;
    hsCopyHeight  : if CanSetHeight then
                      aHeight:=aHolder.Height;
    hsCopySize    : begin
                      if CanSetWidth then
                        aWidth:=aHolder.Width;
                      if CanSetHeight then
                        aHeight:=aHolder.Height;
                    end;
  end;
end;

procedure TRLCustomControl.AdjustToConstraints(var aWidth,aHeight:integer);
begin
  if (Constraints.MinWidth>0) and (aWidth<Constraints.MinWidth) then
    aWidth:=Constraints.MinWidth
  else if (Constraints.MaxWidth>0) and (aWidth>Constraints.MaxWidth) then
    aWidth:=Constraints.MaxWidth;
  if (Constraints.MinHeight>0) and (aHeight<Constraints.MinHeight) then
    aHeight:=Constraints.MinHeight
  else if (Constraints.MaxHeight>0) and (aHeight>Constraints.MaxHeight) then
    aHeight:=Constraints.MaxHeight;
end;

procedure TRLCustomControl.SetBounds(aLeft,aTop,aWidth,aHeight:integer);
var
  SavedBoundsRect:TRect;
begin
  SavedBoundsRect:=BoundsRect;
  OldBoundsRect  :=SavedBoundsRect;
  //
  AdjustToFixedSize(aLeft,aTop,aWidth,aHeight);
  AdjustToParentFrame(aLeft,aTop,aWidth,aHeight);
  AdjustToHolder(fHolder,aLeft,aTop,aWidth,aHeight);
  AdjustToHolder(fSecondHolder,aLeft,aTop,aWidth,aHeight);
  AdjustToConstraints(aWidth,aHeight);
  // se as coordenadas mudaram em rela��o ao controle pai...
  if (OldBoundsRect.Left<>aLeft) or
     (OldBoundsRect.Top<>aTop) or
     (RectWidth(OldBoundsRect)<>aWidth) or
     (RectHeight(OldBoundsRect)<>aHeight) then
  begin
    OriginalSetBounds(aLeft,aTop,aWidth,aHeight);
    OldBoundsRect:=SavedBoundsRect;
    ExpandParentSite;
    Realign;
  end;
  // incondicionalmente realinha os controles internos e "agarrados"
  RealignControls;
  RealignHoldeds;
end;

procedure TRLCustomControl.SetTransparent(const aValue:boolean);
begin
  if aValue=fTransparent then
    Exit;
  if aValue then
    if Self is TRLCustomReport then
      Color:=clWhite
    else
      ParentColor:=True;
  fTransparent:=aValue;
end;

procedure TRLCustomControl.SetAlignment(const aValue:TRLTextAlignment);
begin
  if aValue=fAlignment then
    Exit;
  fAlignment:=aValue;
  Invalidate;
end;

procedure TRLCustomControl.SetAutoSize(const aValue:boolean);
begin
  if aValue=fAutoSize then
    Exit;
  fAutoSize:=aValue;
  if aValue then
    AdjustBounds;
  Invalidate;
end;

procedure TRLCustomControl.SetAutoExpand(const aValue:boolean);
begin
  if aValue=fAutoExpand then
    Exit;
  fAutoExpand:=aValue;
  if aValue then
    AdjustBounds;
  Invalidate;
end;

procedure TRLCustomControl.SetAutoTrunc(const aValue:boolean);
begin
  if aValue=fAutoTrunc then
    Exit;
  fAutoTrunc:=aValue;
  if aValue then
    AdjustBounds;
end;

function TRLCustomControl.GetCaption:TCaption;
begin
  if IsPreparing then
    Result:=fPreparingCaption
  else if (fCaption='') and (csDesigning in ComponentState) then
    Result:=GetDefaultCaption
  else
    Result:=fCaption;
end;

procedure TRLCustomControl.SetCaption(const aValue:TCaption);
begin
  // fPreparingCaption � o caption para efeitos de impress�o, e � descartado quando o relat�rio termina
  // fCaption cont�m o texto oficial do caption, que deve ser gravado do dfm
  fPreparingCaption:=aValue;
  if IsPreparing then
  else if (aValue=GetDefaultCaption) and (csDesigning in ComponentState) then
    fCaption:=''
  else
    fCaption:=aValue;
  //
  AdjustBounds;
  Invalidate;
end;

procedure TRLCustomControl.SetLayout(const aValue:TRLTextLayout);
begin
  if aValue=fLayout then
    Exit;
  fLayout:=aValue;
  Invalidate;
end;

procedure PushBoundsAllFrom(aParent:TWinControl);
var
  i:integer;
  c:TControl;
begin
  for i:=0 to aParent.ControlCount-1 do
  begin
    c:=aParent.Controls[i];
    if c is TRLCustomControl then
    begin
      TRLCustomControl(c).PushBoundsRect;
      if c is TRLCustomSite then
        PushBoundsAllFrom(TRLCustomSite(c));
    end
    else if c is TCustomFrame then
      PushBoundsAllFrom(TCustomFrame(c));
  end;
end;

procedure PopBoundsAllFrom(aParent:TWinControl);
var
  i:integer;
  c:TControl;
begin
  for i:=0 to aParent.ControlCount-1 do
  begin
    c:=aParent.Controls[i];
    if c is TRLCustomControl then
    begin
      TRLCustomControl(c).PopBoundsRect;
      if c is TRLCustomSite then
        PopBoundsAllFrom(TRLCustomSite(c));
    end
    else if c is TCustomFrame then
      PopBoundsAllFrom(TCustomFrame(c));
  end;
end;

procedure TRLCustomControl.PushBoundsRect;
begin
  fPeekBoundsRect:=BoundsRect;
end;

procedure TRLCustomControl.PopBoundsRect;
begin
  Include(fControlState,stRestoringBounds);
  try
    BoundsRect:=fPeekBoundsRect;
  finally
    Exclude(fControlState,stRestoringBounds);
  end;
end;

procedure TRLCustomControl.SetBorders(const aValue:TRLBorders);
begin
  fBorders:=aValue;
  fBorders.ParentControl:=Self;
  Invalidate;
end;

procedure TRLCustomControl.SetRealBounds(const aValue:TRLRealBounds);
begin
  fRealBounds:=aValue;
end;

function TRLCustomControl.IsPreparing:boolean;
var
  r:TRLCustomReport;
begin
  r     :=FindParentReport;
  Result:=Assigned(r) and (r.ReportState in [rsWriting,rsClosing]);
end;

procedure TRLCustomControl.CheckParent(var aControl:TWinControl);
begin
  // uma band n�o pode conter outras
  if (Self is TRLCustomBand) and (aControl is TRLCustomBand) then
    aControl:=aControl.Parent;
  // um panel n�o pode conter bands ou paginadores
  if (Self is TRLCustomBand) or (Self is TRLCustomPager) then
    while (aControl<>nil) and (aControl is TRLCustomPanel) do
      aControl:=aControl.Parent;
end;

procedure TRLCustomControl.SetName(const Value:TComponentName);
begin
  inherited SetName(Value);
  //
  AdjustBounds;
  Invalidate;
end;

procedure TRLCustomControl.SetFriendlyName(const Value:string);
var
  i:integer;
begin
  if Value=fFriendlyName then
    Exit;
  //
  if (Value='') or (Value=Name) then
    fFriendlyName:=''
  else if not IsValidIdent(Value) then
    if csLoading in ComponentState then
      fFriendlyName:=''
    else
      raise Exception.Create(LS_InvalidNameStr+' "'+Value+'"')
  else
  begin
    for i:=0 to Owner.ComponentCount-1 do
      if Owner.Components[i] is TRLCustomControl then
        if AnsiSameText(Value,TRLCustomControl(Owner.Components[i]).FriendlyName) then
          raise Exception.Create(LS_DuplicateNameStr+' "'+Value+'"');
    fFriendlyName:=Value;
  end;
  //
  AdjustBounds;
  Invalidate;
end;

function TRLCustomControl.IsMeasurable:boolean;
begin
  Result:=AutoSize or AutoExpand or Assigned(fOnMeasureHeight);
end;

// try to Measure controls height before it be printed
procedure TRLCustomControl.MeasureHeight;
begin
  if not Visible then
    Exit;
  if not IsMeasurable then
    Exit;
  if csLoading in ComponentState then
    Exit;
  if stMeasuringHeights in fControlState then
    Exit;
  Include(fControlState,stMeasuringHeights);
  try
    InternalMeasureHeight;
    DoOnMeasureHeight;
  finally
    Exclude(fControlState,stMeasuringHeights);
  end;
  AdjustBounds;
end;

procedure TRLCustomControl.InternalMeasureHeight;
begin
  Caption:=GetMadeCaption;
end;

function TRLCustomControl.GetAttribute(const aName:string):variant;
begin
  Result:=Caption;
end;

function TRLCustomControl.SetAttribute(const aName:string; aValue:variant):boolean;
begin
  Result:=False;
end;

{$ifdef Win32}
procedure TRLCustomControl.SetParent(aParent:TWinControl);
var
  p:TWinControl;
{$else}
procedure TRLCustomControl.SetParent(const aParent:TWidgetControl);
var
  p:TWidgetControl;
{$endif}
begin
  p:=aParent;
  if p<>nil then
    CheckParent(p);
  //  
  inherited SetParent(p);
  //
  if p<>nil then
  begin
    AdjustBounds;
    Realign;
  end;  
end;

function TRLCustomControl.GetClientHeight:integer;
begin
  Result:=RectHeight(ClientRect);
end;

function TRLCustomControl.GetClientWidth:integer;
begin
  Result:=RectWidth(ClientRect);
end;

procedure TRLCustomControl.SetClientSize(const Value:TPoint);
var
  r:TRect;
begin
  r:=GetClientRect;
  SetBounds(Left,Top,Width-RectWidth(r)+Value.X,Height-RectHeight(r)+Value.Y);
end;

procedure TRLCustomControl.SetClientHeight(const Value:integer);
begin
  SetClientSize(Point(Width,Value));
end;

procedure TRLCustomControl.SetClientWidth(const Value:integer);
begin
  SetClientSize(Point(Value,Height));
end;

{ TRLCustomDBControl }

constructor TRLCustomDBControl.Create(aOwner:TComponent);
begin
  fDataField :='';
  fDataSource:=nil;
  //
  inherited Create(aOwner);
  // customization
  Width :=65;
  Height:=17;
end;

procedure TRLCustomDBControl.Notification(aComponent:TComponent; Operation:TOperation);
begin
  inherited;
  //
  if Operation=opRemove then
    if aComponent=fDataSource then
      fDataSource:=nil;
end;

procedure TRLCustomDBControl.SetDataSource(const aValue:TDataSource);
begin
  if aValue=fDataSource then
    Exit;
  fDataSource:=aValue;
  if aValue<>nil then
    aValue.FreeNotification(Self);
  Invalidate;
end;

procedure TRLCustomDBControl.SetDataField(const aValue:TRLDataFieldProperty);
begin
  if aValue=fDataField then
    Exit;
  fDataField:=aValue;
  MakeCaption;
end;

function TRLCustomDBControl.GetDataSet:TDataSet;
begin
  if Assigned(fDataSource) then
    Result:=fDataSource.DataSet
  else
    Result:=nil;
end;

function TRLCustomDBControl.GetField:TField;
begin
  if (DataSet<>nil) and (fDataField<>'') then
  begin
    Result:=DataSet.FindField(fDataField);
    if Result=nil then
      raise Exception.Create(LS_NotFoundStr+': '+Name+'.DataField "'+fDataField+'"');
  end
  else
    Result:=nil;
end;

function TRLCustomDBControl.InternalMakeCaption:string;
var
  f:TField;
begin
  if not IsPreparing then
    if fFriendlyName<>'' then
      Result:=fFriendlyName
    else if fDataField<>'' then
      Result:=fDataField
    else
      Result:=Name
  else
  begin
    f:=GetField;
    if (f<>nil) and f.DataSet.Active and not f.DataSet.Eof then
      Result:=f.DisplayText
    else
      Result:='';
  end;    
end;

{ TRLCustomLabel }

constructor TRLCustomLabel.Create(aOwner:TComponent);
begin
  inherited Create(aOwner);
  // customization
  Width      :=65;
  Height     :=17;
  AutoSizeDir:=[asWidthDir];
  AutoSize   :=True;
end;

procedure TRLCustomLabel.InternalPaint;
var
  s:string;
  r:TRect;
begin
  PaintAsCustomControl;
  s:=Caption;
  if (s='') and not IsPreparing then
    s:=Name;
  r:=GetClientRect;
  with Canvas do
  begin
    Font       :=Self.Font;
    Brush.Color:=Self.Color;
    Brush.Style:=bsSolid;
  end;
  CanvasTextRectEx(Canvas,r,r.Left,r.Top,s,ToMetaTextAlignment(TAlignment(Alignment)),ToMetaTextLayout(TTextLayout(Layout)),MetaTextFlagAutoSize or MetaTextFlagIntegralHeight);
end;

procedure TRLCustomLabel.InternalPrint;
var
  w,o,h,t,l:integer;
  r:TRect;
  s:string;
  f:TRLMetaTextFlags;
begin
  inherited;
  //
  r:=CalcPrintClientRect;
  with RequestParentSurface do
  begin
    GeneratorId:=Integer(Self);
    NewGroupId;
    Font:=Self.Font;
    s   :=Caption; 
    o   :=TextWidth(' ') div 2;
    w   :=TextWidth(s+' ');
    h   :=TextHeight(s+' ');
    case Alignment of
      taCenter      : l:=(r.Left+r.Right-w) div 2+o;
      taRightJustify: l:=r.Right-w+o;
    else
      l:=r.Left+o;
    end;
    case Layout of
      tlCenter: t:=(r.Top+r.Bottom-h) div 2;
      tlBottom: t:=r.Bottom-h;
    else
      t:=r.Top;
    end;
    Brush.Style:=bsClear;
    f:=MetaTextFlagIntegralHeight;
    if AutoSize then
      f:=f or MetaTextFlagAutoSize;
    TextRectEx(r,l,t,s,ToMetaTextAlignment(TAlignment(Alignment)),ToMetaTextLayout(TTextLayout(Layout)),f);
  end;
end;

procedure TRLCustomLabel.CalcSize(var aSize:TPoint);
var
  w:integer;
  c:string;
begin
  aSize:=Point(Width,Height);
  if not AutoSize then
    Exit;
  // texto a utilizar para o c�lculo
  c:=Caption;
  if (c='') and not IsPreparing then
    c:=Name;
  // dimens�es do texto
  aSize.X:=0;
  aSize.Y:=0;
  with TextBounds(c+' ',Self.Font,0) do
  begin
    Inc(aSize.X,X);
    Inc(aSize.Y,Y);
  end;
  // adicional das bordas
  w:=fBorders.Width;
  if w>0 then
  begin
    Inc(w);
    if fBorders.CanDrawLeft then
      Inc(aSize.X,w);
    if fBorders.CanDrawTop then
      Inc(aSize.Y,w);
    if fBorders.CanDrawRight then
      Inc(aSize.X,w);
    if fBorders.CanDrawBottom then
      Inc(aSize.Y,w);
  end;
end;

{ TRLCustomAngleLabel }

constructor TRLCustomAngleLabel.Create(aOwner:TComponent);
begin
  fAngle       :=0;
  fAngleBorders:=False;
  //
  inherited Create(aOwner);
  // customization
  Width      :=65;
  Height     :=17;
  AutoSizeDir:=[asWidthDir];
  AutoSize   :=True;
end;

procedure TRLCustomAngleLabel.InternalPaint;
var
  w,o,h,t,l:integer;
  s:string;
  r:TRect;
  m,a:TBitmap;
begin
  PaintAsCustomControl;
  s:=Caption;
  if (s='') and not IsPreparing then
    s:=Name;
  r:=GetClientRect;
  with Canvas do
  begin
    Font:=Self.Font;
    o:=0;
    w:=TextWidth(s+' ');
    h:=TextHeight(s+' ');
    //
    m:=TBitmap.Create;
    try
      m.PixelFormat       :=pf32bit;
      m.Width             :=w;
      m.Height            :=h;
      m.Transparent       :=Self.Transparent;
      m.TransparentColor  :=Self.Color;
      m.TransparentMode   :=tmFixed;
      m.Canvas.Font       :=Self.Font;
      m.Canvas.Brush.Color:=Self.Color;
      m.Canvas.Brush.Style:=bsSolid;
      m.Canvas.Pen.Style  :=psClear;
      m.Canvas.Rectangle(0,0,m.Width+1,m.Height+1);
      m.Canvas.TextOut(1,-1,s);
      //
      a:=RotatedBitmap(m,fAngle);
      try
        case Alignment of
          taCenter      : l:=(r.Left+r.Right-a.Width) div 2+o;
          taRightJustify: l:=r.Right-a.Width+o;
        else
          l:=r.Left+o;
        end;
        case Layout of
          tlCenter      : t:=(r.Top+r.Bottom-a.Height) div 2;
          tlBottom      : t:=r.Bottom-a.Height;
        else
          t:=r.Top;
        end;
        Draw(l,t,a);
      finally
        a.free;
      end;
    finally
      m.free;
    end;
  end;  
end;

procedure TRLCustomAngleLabel.InternalPrint;
var
  w,o,h,t,l:integer;
  s:string;
  r:TRect;
  m,a:TBitmap;
begin
  inherited;
  //
  s:=Caption;
  r:=CalcPrintClientRect;
  with RequestParentSurface do
  begin
    GeneratorId:=Integer(Self);
    NewGroupId;
    Font:=Self.Font;
    o:=0;
    w:=TextWidth(Caption+' ');
    h:=TextHeight(Caption+' ');
    //
    m:=TBitmap.Create;
    try
      m.PixelFormat       :=pf32bit;
      m.Width             :=w;
      m.Height            :=h;
      m.Transparent       :=Self.Transparent;
      m.TransparentColor  :=Self.Color;
      m.TransparentMode   :=tmFixed;
      m.Canvas.Font       :=Self.Font;
      m.Canvas.Brush.Color:=Self.Color;
      m.Canvas.Brush.Style:=bsSolid;
      m.Canvas.Pen.Style  :=psClear;
      m.Canvas.Rectangle(0,0,m.Width+1,m.Height+1);
      m.Canvas.TextOut(1,-1,s);
      //
      a:=RotatedBitmap(m,fAngle);
      try
        case Alignment of
          taCenter      : l:=(r.Left+r.Right-a.Width) div 2+o;
          taRightJustify: l:=r.Right-a.Width+o;
        else
          l:=r.Left+o;
        end;
        case Layout of
          tlCenter      : t:=(r.Top+r.Bottom-a.Height) div 2;
          tlBottom      : t:=r.Bottom-a.Height;
        else
          t:=r.Top;
        end;
        Draw(l,t,a);
      finally
        a.free;
      end;
    finally
      m.free;
    end;
  end;
end;

procedure TRLCustomAngleLabel.CalcSize(var aSize:TPoint);
var
  w:integer;
  c:string;
begin
  aSize:=Point(Width,Height);
  if not AutoSize then
    Exit;
  // texto a utilizar para o c�lculo
  c:=Caption;
  if (c='') and not IsPreparing then
    c:=Name;
  // dimens�es do texto
  aSize.X:=0;
  aSize.Y:=0;
  with TextBounds(c+' ',Self.Font,fAngle) do
  begin
    Inc(aSize.X,X);
    Inc(aSize.Y,Y);
  end;
  // adicional das bordas
  w:=fBorders.Width;
  if w>0 then
  begin
    Inc(w);
    if fBorders.CanDrawLeft then
      Inc(aSize.X,w);
    if fBorders.CanDrawTop then
      Inc(aSize.Y,w);
    if fBorders.CanDrawRight then
      Inc(aSize.X,w);
    if fBorders.CanDrawBottom then
      Inc(aSize.Y,w);
  end;
end;

procedure TRLCustomAngleLabel.SetAngle(const aValue:double);
begin
  if aValue=fAngle then
    Exit;
  fAngle:=aValue;
  AdjustBounds;
  Invalidate;
end;

procedure TRLCustomAngleLabel.SetAngleBorders(const aValue:boolean);
begin
  if aValue=fAngleBorders then
    Exit;
  fAngleBorders:=aValue;
  Invalidate;
end;

function TRLCustomAngleLabel.IsAngle:boolean;
begin
  Result:=(abs(fAngle-Round(fAngle))<1/10);
end;

{ TRLCustomDBText }

constructor TRLCustomDBText.Create(aOwner:TComponent);
begin
  fText       :='';
  fDataField  :='';
  fDataFormula:='';
  fDataSource :=nil;
  fDisplayMask:='';
  //
  inherited Create(aOwner);
end;

procedure TRLCustomDBText.Notification(aComponent:TComponent; Operation:TOperation);
begin
  inherited;
  //
  if Operation=opRemove then
    if aComponent=fDataSource then
      fDataSource:=nil;
end;

procedure TRLCustomDBText.SetDataSource(const aValue:TDataSource);
begin
  if aValue=fDataSource then
    Exit;
  fDataSource:=aValue;
  if aValue<>nil then
    aValue.FreeNotification(Self);
  MakeCaption;
end;

procedure TRLCustomDBText.SetDataField(const aValue:TRLDataFieldProperty);
begin
  if aValue=fDataField then
    Exit;
  if aValue<>'' then
    fDataFormula:='';
  fDataField:=aValue;
  MakeCaption;
end;

procedure TRLCustomDBText.SetDataFormula(const aValue:string);
begin
  if aValue=fDataFormula then
    Exit;
  if aValue<>'' then
    fDataField:='';
  fDataFormula:=aValue;
  MakeCaption;
end;

function TRLCustomDBText.GetDataSet:TDataSet;
begin
  if Assigned(fDataSource) then
    Result:=fDataSource.DataSet
  else
    Result:=nil;
end;

function TRLCustomDBText.GetField:TField;
begin
  if (DataSet<>nil) and (fDataField<>'') then
  begin
    Result:=DataSet.FindField(fDataField);
    if Result=nil then
      raise Exception.Create(LS_NotFoundStr+': '+Name+'.DataField "'+fDataField+'"');
  end
  else
    Result:=nil;
end;

function TRLCustomDBText.ApplyMask(const aValue:variant):string;
var
  m:string;
  p:TFloatFormat;
  c:integer;
  v:double;
begin
  if VarIsNull(aValue) or VarIsEmpty(aValue) then
    Result:=''
  else if fDisplayMask='' then
    if Field<>nil then
      if Field is TNumericField then
        with TNumericField(Field) do
        begin
          if EditFormat='' then
            m:=DisplayFormat
          else
            m:=EditFormat;
          v:=aValue;
          if m<>'' then
            Result:=FormatFloat(m,v)
          else
          begin
            if (Field is TFloatField) and TFloatField(Field).Currency then
            begin
              p:=ffCurrency;
              c:=CurrencyDecimals;
            end
            else
            begin
              p:=ffGeneral;
              c:=0;
            end;
            if Field is TFloatField then
              Result:=FloatToStrF(v,p,TFloatField(Field).Precision,c)
            else
              Result:=FloatToStrF(v,p,0,c);
          end;
        end
      else
        Result:=aValue
    else
      Result:=aValue
  else if VarType(aValue) in [varSmallint,varInteger,varSingle,varDouble,varCurrency] then
    Result:=FormatFloat(fDisplayMask,aValue)
  else
    Result:=FormatMaskText(fDisplayMask,aValue);
end;

function TRLCustomDBText.GetFieldText:string;
var
  d:TDataSet;
  f:TField;
  p:TRLCustomReport;
begin
  p:=FindParentReport;
  if not IsPreparing then
    if fFriendlyName<>'' then
      Result:=fFriendlyName
    else if fDataField<>'' then
      Result:=GetFieldLabel
    else if fDataFormula<>'' then
      Result:='('+fDataFormula+')'
    else
      Result:=Name
  else
  begin
    d:=GetDataSet;
    f:=GetField;
    if Assigned(d) and d.Active and not d.Eof then
      if f<>nil then
        Result:=f.DisplayText
      else if fDataFormula<>'' then
        Result:=ApplyMask(p.Parse(Self,fDataFormula))
      else
        Result:=''
    else
      Result:='';
  end;
end;

function TRLCustomDBText.InternalMakeCaption:string;
var
  i:integer;
begin
  Result:=GetFieldText;
  if fText<>'' then
  begin
    i:=Pos('#',fText);
    if i>0 then
      Result:=Copy(fText,1,i-1)+Result+Copy(fText,i+1,Length(fText))
    else
      Result:=fText+Result;
  end;
end;

procedure TRLCustomDBText.SetText(const aValue:TCaption);
begin
  if aValue=fText then
    Exit;
  fText:=aValue;
  MakeCaption;
end;

function TRLCustomDBText.GetFieldLabel: string;
var
  f:TField;
begin
  if (DataSet<>nil) and (fDataField<>'') then
    f:=DataSet.FindField(fDataField)
  else
    f:=nil;
  if f<>nil then
    Result:=f.DisplayLabel
  else
    Result:=fDataField;
end;

function GetNullValue(aField:TField):variant;
begin
  if aField<>nil then
    if aField is TNumericField then
      Result:=0
    else if aField is TBooleanField then
      Result:=False
    else if aField is TStringField then
      Result:=''
    else if aField is TDateTimeField then
      Result:=0
    else if aField is TBinaryField then
      Result:=''
    else if aField is TBlobField then
      Result:=''
    else if aField is TObjectField then
      Result:=0
    else if aField is TVariantField then
      Result:=0
    else if aField is TInterfaceField then
      Result:=''
    else
      Result:=Null
  else
    Result:=Null;
end;

{ TRLCustomDBResult }

constructor TRLCustomDBResult.Create(aOwner:TComponent);
begin
  fInfo           :=riSimple;
  fResetAfterPrint:=False;
  fMustResetValue :=False;
  fBuiltInRegs    :=nil;
  fComputeNulls   :=True;
  //
  fBuiltInRegs:=TObjectList.Create;
  //
  inherited Create(aOwner);
  //
  Initialize;
end;

destructor TRLCustomDBResult.Destroy;
begin
  inherited;
  //
  if Assigned(fBuiltInRegs) then
    fBuiltInRegs.free;
end;

procedure TRLCustomDBResult.InternalPrint;
begin
  inherited;
  //
  if fResetAfterPrint then
    fMustResetValue:=True;
end;

procedure TRLCustomDBResult.Initialize;
begin
  fNullValue:=GetNullValue(Field);
  fCount    :=0;
  fSum      :=0;
  fMax      :=fNullValue;
  fMin      :=fNullValue;
  fLast     :=fNullValue;
  fFirst    :=fNullValue;
  fLastText :='';
  fFirstText:='';
  fSimple   :=fNullValue;
  fBuiltInRegs.Clear;
end;

procedure TRLCustomDBResult.ComputeDetail(aCaller:TObject);
var
  datasetref:TDataSet;
  fieldref  :TField;
  fieldvalue:variant;
  fieldtext :string;
  computeit :boolean;
begin
  inherited;
  //
  if fMustResetValue then
  begin
    Initialize;
    fMustResetValue:=False;
  end;
  //
  datasetref:=DataSet;
  fieldref  :=Field;
  fieldvalue:=Null;
  fieldtext :='';
  if fDataFormula<>'' then
  begin
    fieldvalue:=RequestParentReport.Parse(Self,fDataFormula);
    if (VarIsNull(fieldvalue) or VarIsEmpty(fieldvalue)) and fComputeNulls then
      fieldvalue:=GetNullValue(Field);
    fieldtext:=VarToStr(fieldvalue);
  end
  else if Assigned(datasetref) and datasetref.Active and not datasetref.Eof and (fieldref<>nil) then
  begin
    fieldvalue:=fieldref.Value;
    fieldtext :=fieldref.AsString;
  end;
  computeit:=True;
  if Assigned(fOnCompute) then
    fOnCompute(Self,fieldvalue,fieldtext,computeit);
  if not computeit then
    Exit;
  //
  if VarIsNull(fieldvalue) or VarIsEmpty(fieldvalue) then
    if fComputeNulls then
      fieldvalue:=GetNullValue(Field)
    else
      Exit;
  fSimple:=fieldvalue;
  Inc(fCount);
  if fCount=1 then
  begin
    fFirst    :=fieldvalue;
    fFirstText:=fieldtext;
  end;
  fLast    :=fieldvalue;
  fLastText:=fieldtext;
{$ifdef DELPHI5}
  if VarType(fieldvalue) in [varSmallint,varInteger,varSingle,varDouble,varCurrency] then
    fSum:=fSum+fieldvalue;
{$else}    
  if VarIsNumeric(fieldvalue) then
    fSum:=fSum+fieldvalue;
{$endif}
  if (fCount=1) or (fieldvalue>fMax) then
    fMax:=fieldvalue;
  if (fCount=1) or (fieldvalue<fMin) then
    fMin:=fieldvalue;
end;

function TRLCustomDBResult.GetFieldText:string;
var
  n:string;
begin
  if not IsPreparing then
  begin
    if fFriendlyName<>'' then
      n:=fFriendlyName
    else if fDataField<>'' then
      n:=GetFieldLabel
    else if fDataFormula<>'' then
      n:='('+fDataFormula+')'
    else
      n:='';
    case fInfo of
      riAverage  : Result:='(Average '+n+')';
      riCount    : Result:='(Count)';
      riFirst    : Result:='(First '+n+')';
      riLast     : Result:='(Last '+n+')';
      riMax      : Result:='(Max '+n+')';
      riMin      : Result:='(Min '+n+')';
      riSum      : Result:='(Sum '+n+')';
      riFirstText: Result:='(FirstText '+n+')';
      riLastText : Result:='(LastText '+n+')';
      riSimple   : Result:='(Simple '+n+')';
    end
  end
  else if VarIsNull(Self.Value) or VarIsEmpty(Self.Value) then
    Result:=''
  else
    case fInfo of
      riCount   : Result:=Self.Value;
      riFirstText,
      riLastText: Result:=Self.Value;
    else
      Result:=ApplyMask(Self.Value);
    end;
end;

function TRLCustomDBResult.GetValue:variant;
begin
  case fInfo of
    riAverage  : if fCount=0 then
                   Result:=0
                 else
                   Result:=fSum/fCount;
    riCount    : Result:=fCount;
    riMax      : Result:=fMax;
    riMin      : Result:=fMin;
    riSum      : Result:=fSum;
    riFirst    : Result:=fFirst;
    riLast     : Result:=fLast;
    riFirstText: Result:=fFirstText;
    riLastText : Result:=fLastText;
    riSimple   : Result:=fSimple;
  else
    Result:=GetNullValue(Field);
  end;
end;

function TRLCustomDBResult.GetAttribute(const aName:string):variant; 
begin
  Result:=GetValue;
end;

function TRLCustomDBResult.Resolve(Sender:TObject; const Identifier:string; Params:variant):variant;
var
  id:integer;
begin
  id:=TRLExpressionParser(Sender).IdentifierId;
  if AnsiSameText(Identifier,'count') then
    Result:=BuiltInCount(id)
  else if AnsiSameText(Identifier,'sum') then
    Result:=BuiltInSum(id,Params[0])
  else if AnsiSameText(Identifier,'min') then
    Result:=BuiltInMin(id,Params[0])
  else if AnsiSameText(Identifier,'max') then
    Result:=BuiltInMax(id,Params[0])
  else if AnsiSameText(Identifier,'avg') then
    Result:=BuiltInAvg(id,Params[0])
  else if AnsiSameText(Identifier,'first') then
    Result:=BuiltInFirst(id,Params[0])
  else if AnsiSameText(Identifier,'last') then
    Result:=BuiltInLast(id,Params[0])
  else
    Result:=Unassigned;
end;

procedure TRLCustomDBResult.SetInfo(const aValue:TRLResultInfo);
begin
  if aValue=fInfo then
    Exit;
  fInfo:=aValue;
  MakeCaption;
end;

function TRLCustomDBResult.BuiltIn(aId:integer; aCanCreate:boolean=True):TRLDBResultBuiltIn;
var
  i:integer;
begin
  Result:=nil;
  for i:=0 to fBuiltInRegs.Count-1 do
    if TRLDBResultBuiltIn(fBuiltInRegs[i]).Id=aId then
    begin
      Result:=TRLDBResultBuiltIn(fBuiltInRegs[i]);
      Break;
    end;
  if (Result=nil) and aCanCreate then
  begin
    Result:=TRLDBResultBuiltIn.Create;
    Result.Id   :=aId;
    Result.Count:=0;
    Result.Max  :=Null;
    Result.Min  :=Null;
    Result.Sum  :=0;
    Result.First:=Null;
    Result.Last :=Null;
    fBuiltInRegs.Add(Result);
  end;
end;

function TRLCustomDBResult.BuiltInCount(aId:integer):variant;
begin
  with BuiltIn(aId) do
  begin
    Inc(Count);
    Result:=Count;
  end;
end;

function TRLCustomDBResult.BuiltInSum(aId:integer; aValue:variant):variant;
begin
  with BuiltIn(aId) do
  begin
    Sum:=Sum+aValue;
    Result:=Sum;
  end;
end;

function TRLCustomDBResult.BuiltInMin(aId:integer; aValue:variant):variant;
begin
  with BuiltIn(aId) do
  begin
    if VarIsNull(Min) or VarIsEmpty(Min) or (aValue<Min) then
      Min:=aValue;
    Result:=Min;
  end;
end;

function TRLCustomDBResult.BuiltInMax(aId:integer; aValue:variant):variant;
begin
  with BuiltIn(aId) do
  begin
    if VarIsNull(Max) or VarIsEmpty(Max) or (aValue<Max) then
      Max:=aValue;
    Result:=Max;
  end;
end;

function TRLCustomDBResult.BuiltInAvg(aId:integer; aValue:variant):variant;
begin
  with BuiltIn(aId) do
  begin
    Inc(Count);
    Sum:=Sum+aValue;
    Result:=Sum/Count;
  end;
end;

function TRLCustomDBResult.BuiltInFirst(aId:integer; aValue:variant):variant;
begin
  with BuiltIn(aId) do
  begin
    Inc(Count);
    if Count=1 then
      First:=aValue;
    Result:=First;
  end;
end;

function TRLCustomDBResult.BuiltInLast(aId:integer; aValue:variant):variant;
begin
  with BuiltIn(aId) do
  begin
    Result:=Last;
    Last  :=aValue;
  end;
end;

{ RunMemo }

function CanvasTextWidth(Canvas:TObject; const Text:string):integer;
begin
  if Canvas is TRLGraphicSurface then
    Result:=(Canvas as TRLGraphicSurface).TextWidth(Text)
  else if Canvas is TCanvas then
    Result:=(Canvas as TCanvas).TextWidth(Text)
  else
    Result:=0;
end;

function CanvasTextHeight(Canvas:TObject; const Text:string):integer;
begin
  if Canvas is TRLGraphicSurface then
    Result:=(Canvas as TRLGraphicSurface).TextHeight(Text)
  else if Canvas is TCanvas then
    Result:=(Canvas as TCanvas).TextHeight(Text)
  else
    Result:=0;
end;

function NextLine(const Buffer:string; var Pos:integer; var Wrapped:boolean; var LineWidth:integer; Canvas:TObject; MaxWidth:integer):string;
var
  SpaceWidth,TabWidth,Pos0,PosAux:integer;
  HasText:boolean;
begin
  SpaceWidth:=CanvasTextWidth(Canvas,' ');
  TabWidth  :=SpaceWidth*8;
  Wrapped   :=False;
  LineWidth :=0;
  HasText   :=False;
  //
  Pos0:=Pos;
  while True do
    if Pos<=Length(Buffer) then
      if Buffer[Pos] in [#9,#32] then
      begin
        if (LineWidth>MaxWidth) and HasText then
        begin
          Wrapped:=True;
          Result :=Copy(Buffer,Pos0,Pos-Pos0);
          while (Pos<=Length(Buffer)) and (Buffer[Pos] in [#9,#32]) do
            Inc(Pos);
          Break;
        end;
        if Buffer[Pos]=#9 then
          Inc(LineWidth,TabWidth)
        else
          Inc(LineWidth,SpaceWidth);
        Inc(Pos);
      end
      else if Buffer[Pos] in [#13] then
      begin
        Result:=Copy(Buffer,Pos0,Pos-Pos0);
        Inc(Pos);
        if (Pos<=Length(Buffer)) and (Buffer[Pos] in [#10]) then
          Inc(Pos);
        Break;
      end
      else
      begin
        PosAux:=Pos;
        while (Pos<=Length(Buffer)) and not (Buffer[Pos] in [#9,#32,#13]) do
        begin
          Inc(LineWidth,CanvasTextWidth(Canvas,Buffer[Pos]));
          Inc(Pos);
        end;
        if (LineWidth>MaxWidth) and HasText then
        begin
          Pos    :=PosAux;
          Wrapped:=True;
          Result :=Copy(Buffer,Pos0,Pos-Pos0);
          while (Pos<=Length(Buffer)) and (Buffer[Pos] in [#9,#32]) do
            Inc(Pos);
          Break;
        end;
        HasText:=True;
      end
    else
    begin
      Result:=Copy(Buffer,Pos0,Pos-Pos0);
      Break;
    end;
end;

procedure CanvasTextRect(Canvas:TObject; const ARect:TRect; const Text:string; Alignment:TRLTextAlignment=taLeftJustify);
var
  X,Y:integer;
begin
  if Canvas is TRLGraphicSurface then
  begin
    case Alignment of
      taCenter      : X:=(ARect.Left+ARect.Right-(Canvas as TRLGraphicSurface).TextWidth(Text)) div 2;
      taRightJustify: X:=ARect.Right-(Canvas as TRLGraphicSurface).TextWidth(Text);
      taJustify     : X:=ARect.Left;
    else // taLeftJustify
      X:=ARect.Left;
    end;
    Y:=ARect.Top;
    (Canvas as TRLGraphicSurface).TextRectEx(ARect,X,Y,Text,ToMetaTextAlignment(TAlignment(Alignment)),ToMetaTextLayout(TTextLayout(tlTop)),MetaTextFlagIntegralHeight or MetaTextFlagAutoSize);
  end
  else if Canvas is TCanvas then
    CanvasTextRectEx(Canvas as TCanvas,ARect,ARect.Left,ARect.Top,Text,ToMetaTextAlignment(TAlignment(Alignment)),ToMetaTextLayout(TTextLayout(tlTop)),MetaTextFlagIntegralHeight);
end;

procedure RunMemo(const Buffer:string; Canvas:TObject; Alignment:TRLTextAlignment; const ARect:TRect; MaxWidth,MaxHeight:integer; var Size:TPoint);
var
  LineHeight:integer;
  LineWidth :integer;
  LineOffset:integer;
  Pos       :integer;
  Wrapped   :boolean;
  TextLn    :string;
  Aux       :TRect;
  LineAlign :TRLTextAlignment;
begin
  Size.X     :=0;
  LineHeight :=CanvasTextHeight(Canvas,'A');
  LineOffset :=0;
  Pos        :=1;
  while Pos<=Length(Buffer) do
  begin
    TextLn:=NextLine(Buffer,Pos,Wrapped,LineWidth,Canvas,MaxWidth);
    if LineWidth>Size.X then
      Size.X:=LineWidth;
    Aux:=Rect(ARect.Left+0,ARect.Top+LineOffset,ARect.Left+MaxWidth,ARect.Top+LineOffset+LineHeight);
    if Aux.Bottom>ARect.Bottom then
      Aux.Bottom:=ARect.Bottom;
    LineAlign:=Alignment;
    if (LineAlign=taJustify) and not Wrapped then
      LineAlign:=taLeftJustify;
    CanvasTextRect(Canvas,Aux,TextLn,LineAlign);
    Inc(LineOffset,LineHeight);
    if LineOffset>MaxHeight then
      Break;
  end;
  Size.Y:=LineOffset;
end;

function MemoSize(const Buffer:string; Font:TFont; MaxWidth:integer):TPoint;
var
  AuxBitmap:TBitmap;
begin
  AuxBitmap:=TBitmap.Create;
  try
    AuxBitmap.Width :=1;
    AuxBitmap.Height:=1;
    AuxBitmap.Canvas.Font.Assign(Font);
    RunMemo(Buffer,AuxBitmap.Canvas,taLeftJustify,Rect(0,0,MaxWidth,MaxInt),MaxWidth,MaxInt,Result);
  finally
    AuxBitmap.Free;
  end;
end;

procedure MemoDraw(const Buffer:string; Canvas:TObject; Alignment:TRLTextAlignment; const ARect:TRect; WordWrap:boolean);
var
  FooSize  :TPoint;
  MaxWidth :integer;
  MaxHeight:integer;
begin
  if WordWrap then
    MaxWidth:=ARect.Right-ARect.Left
  else
    MaxWidth:=MaxInt;
  MaxHeight:=ARect.Bottom-ARect.Top;  
  RunMemo(Buffer,Canvas,Alignment,ARect,MaxWidth,MaxHeight,FooSize);
end;

{ TRLCustomMultiLine }

constructor TRLCustomMultiLine.Create(aOwner:TComponent);
begin
  fWordWrap      :=True;
  fIntegralHeight:=False;
  inherited Create(aOwner);
  // customization
  Width      :=185;
  Height     :=89;
  Behavior   :=[beSiteExpander];
  fDefaultBehavior:=Behavior;
  AutoSizeDir:=[asHeightDir];
  AutoSize   :=True;
end;

procedure TRLCustomMultiLine.InternalPaint;
var
  r:TRect;
  s:string;
begin
  PaintAsCustomControl;
  s:=Caption;
  if (s='') and not IsPreparing then
    s:=Name;
  r:=GetClientRect;
  with Canvas do
  begin
    Font:=Self.Font;
    if IsTransparent(Self) then
      Brush.Style:=bsClear
    else
    begin
      Brush.Style:=bsSolid;
      Brush.Color:=Self.Color;
    end;
    MemoDraw(s,Self.Canvas,Self.Alignment,r,Self.WordWrap);
  end;
end;

procedure TRLCustomMultiLine.InternalPrint;
var
  r:TRect;
begin
  inherited;
  //
  r:=CalcPrintClientRect;
  with RequestParentSurface do
  begin
    GeneratorId:=Integer(Self);
    NewGroupId;
    Font:=Self.Font;
    if IsTransparent(Self) then
      Brush.Style:=bsClear
    else
    begin
      Brush.Style:=bsSolid;
      Brush.Color:=Self.Color;
    end;
    MemoDraw(Caption,Self.RequestParentSurface,Self.Alignment,r,Self.WordWrap);
  end;
end;

procedure TRLCustomMultiLine.CalcSize(var aSize:TPoint);
var
  w:integer;
  aux:TPoint;
  c:string;
begin
  aSize:=Point(Width,Height);
  if not AutoSize then
    Exit;
  // texto a utilizar para o c�lculo
  c:=Caption;
  if (c='') and not IsPreparing then
    c:=Name;
  // dimens�es do texto
  aSize.Y:=0;
  aux:=MemoSize(c,Self.Font,aSize.X);
  if aux.Y=0 then
    Inc(aSize.Y,TextBounds(' ',Self.Font,0).Y)
  else  
    Inc(aSize.Y,aux.Y);
  // adicional das bordas
  w:=fBorders.Width;
  if w>0 then
  begin
    Inc(w);
    if fBorders.CanDrawTop then
      Inc(aSize.Y,w);
    if fBorders.CanDrawBottom then
      Inc(aSize.Y,w);
  end;
end;

procedure TRLCustomMultiLine.SetWordWrap(const aValue:boolean);
begin
  if aValue=fWordWrap then
    Exit;
  fWordWrap:=aValue;
  MakeCaption;
end;

{ TRLCustomMemo }

constructor TRLCustomMemo.Create(aOwner:TComponent);
begin
  fLines:=TStringList.Create;
  TStringList(fLines).OnChange:=TreatOnChange;
  //
  inherited Create(aOwner);
end;

destructor TRLCustomMemo.Destroy;
begin
  FreeObj(fLines);
  //
  inherited;
end;

function TRLCustomMemo.InternalMakeCaption:string;
begin
  Result:=fLines.Text; 
  if not IsPreparing and (Trim(Result)='') then
    Result:=GetDefaultCaption;
end;

procedure TRLCustomMemo.SetLines(const aValue:TStrings);
begin
  fLines.Assign(aValue);
end;

procedure TRLCustomMemo.TreatOnChange(Sender:TObject);
begin
  MakeCaption;
end;

{ TRLCustomDBMemo }

constructor TRLCustomDBMemo.Create(aOwner:TComponent);
begin
  fDataField :='';
  fDataSource:=nil;
  //
  inherited Create(aOwner);
end;

procedure TRLCustomDBMemo.Notification(aComponent:TComponent; Operation:TOperation);
begin
  inherited;
  //
  if Operation=opRemove then
    if aComponent=fDataSource then
      fDataSource:=nil;
end;

procedure TRLCustomDBMemo.SetDataSource(const aValue:TDataSource);
begin
  if aValue=fDataSource then
    Exit;
  fDataSource:=aValue;
  if aValue<>nil then
    aValue.FreeNotification(Self);
  MakeCaption;
end;

procedure TRLCustomDBMemo.SetDataField(const aValue:TRLDataFieldProperty);
begin
  if aValue=fDataField then
    Exit;
  if aValue<>'' then
    fDataFormula:='';
  fDataField:=aValue;
  MakeCaption;
end;

procedure TRLCustomDBMemo.SetDataFormula(const aValue:string);
begin
  if aValue=fDataFormula then
    Exit;
  if aValue<>'' then
    fDataField:='';
  fDataFormula:=aValue;
  MakeCaption;
end;

function TRLCustomDBMemo.GetDataSet:TDataSet;
begin
  if Assigned(fDataSource) then
    Result:=fDataSource.DataSet
  else
    Result:=nil;
end;

function TRLCustomDBMemo.GetField:TField;
begin
  if (DataSet<>nil) and (fDataField<>'') then
  begin
    Result:=DataSet.FindField(fDataField);
    if Result=nil then
      raise Exception.Create(LS_NotFoundStr+': '+Name+'.DataField "'+fDataField+'"');
  end
  else
    Result:=nil;
end;

function TRLCustomDBMemo.GetFieldText:string;
var
  d:TDataSet;
  f:TField;
  p:TRLCustomReport;
begin
  p:=FindParentReport;
  if not IsPreparing then
    if fFriendlyName<>'' then
      Result:=fFriendlyName
    else if fDataField<>'' then
      Result:=GetFieldLabel
    else if fDataFormula<>'' then
      Result:='('+fDataFormula+')'
    else
      Result:=Name
  else
  begin
    d:=GetDataSet;
    f:=GetField;
    if Assigned(d) and d.Active and not d.Eof then
      if f<>nil then
        Result:=f.AsString
      else if fDataFormula<>'' then
        Result:=p.Parse(Self,fDataFormula)
      else
        Result:=''
    else
      Result:='';
  end;
end;

function TRLCustomDBMemo.InternalMakeCaption:string;
begin
  Result:=GetFieldText;
end;

function TRLCustomDBMemo.GetFieldLabel: string;
var
  f:TField;
begin
  if (DataSet<>nil) and (fDataField<>'') then
    f:=DataSet.FindField(fDataField)
  else
    f:=nil;
  if f<>nil then
    Result:=f.DisplayLabel
  else
    Result:=fDataField;
end;

{ TRLCustomImage }

constructor TRLCustomImage.Create(aOwner:TComponent);
begin
  // variables
  fStretch:=False;
  fCenter :=False;
  fScaled :=False;
  // objects
  fPicture         :=TPicture.Create;
  fPicture.OnChange:=PictureChanged;
  //
  inherited Create(aOwner);
  // customization
  Height     :=105;
  Width      :=105;
  AutoSizeDir:=[asWidthDir,asHeightDir];
end;

destructor TRLCustomImage.Destroy;
begin
  FreeObj(fPicture);
  //
  inherited;
end;

procedure TRLCustomImage.CalcSize(var aSize:TPoint);
var
  w:integer;
begin
  aSize:=Point(Width,Height);
  if (fPicture=nil) or not AutoSize then
    Exit;
  // pega size da imagem
  aSize.X:=fPicture.Width;
  aSize.Y:=fPicture.Height;
  // adicional das bordas
  w:=fBorders.Width;
  if w>0 then
  begin
    Inc(w);
    if fBorders.CanDrawLeft then
      Inc(aSize.X,w);
    if fBorders.CanDrawTop then
      Inc(aSize.Y,w);
    if fBorders.CanDrawRight then
      Inc(aSize.X,w);
    if fBorders.CanDrawBottom then
      Inc(aSize.Y,w);
  end;
end;

procedure TRLCustomImage.InternalPaint;
var
  r:TRect;
  b:TBitmap;
begin
  PaintAsCustomControl;
  r:=GetClientRect;
  if (fPicture<>nil) and (fPicture.Graphic<>nil) then
    if fScaled then
    begin
      r:=ScaleRect(Rect(0,0,fPicture.Graphic.Width,fPicture.Graphic.Height),r,fCenter);
      Canvas.StretchDraw(r,fPicture.Graphic);
    end
    else if fStretch then
      Canvas.StretchDraw(r,fPicture.Graphic)
    else
    begin
      b:=ClipGraphic(fPicture.Graphic,r,fCenter);
      try
        Canvas.StretchDraw(r,b);
      finally
        b.free;
      end;
    end;
end;

procedure TRLCustomImage.PictureChanged(Sender:TObject);
begin
  if AutoSize and (fPicture.Width>0) and (fPicture.Height>0) then
    BoundsRect:=Rect(Left,Top,Left+fPicture.Width,Top+fPicture.Height);
end;

procedure TRLCustomImage.InternalPrint;
var
  r:TRect;
begin
  inherited;
  //
  r:=CalcPrintClientRect;
  if (fPicture<>nil) and (fPicture.Graphic<>nil) then
    with RequestParentSurface do
    begin
      GeneratorId:=Integer(Self);
      NewGroupId;
      if fScaled then
        ScaleDraw(r,fPicture.Graphic,fCenter)
      else if fStretch then
        StretchDraw(r,fPicture.Graphic)
      else
        ClipDraw(r,fPicture.Graphic,fCenter);
    end;    
end;

procedure TRLCustomImage.SetCenter(const aValue:boolean);
begin
  if aValue=fCenter then
    Exit;
  fCenter:=aValue;
  Invalidate;
end;

procedure TRLCustomImage.SetPicture(const aValue:TPicture);
begin
  fPicture.Assign(aValue);
  Invalidate;
end;

procedure TRLCustomImage.SetStretch(const aValue:boolean);
begin
  if aValue=fStretch then
    Exit;
  fStretch:=aValue;
  if fStretch then
    fScaled:=False;
  Invalidate;
end;

procedure TRLCustomImage.SetScaled(const aValue:boolean);
begin
  if aValue=fScaled then
    Exit;
  fScaled:=aValue;
  if fScaled then
    fStretch:=False;
  Invalidate;
end;

{ TRLCustomDBImage }

constructor TRLCustomDBImage.Create(aOwner:TComponent);
begin
  fDataField :='';
  fDataSource:=nil;
  //
  inherited Create(aOwner);
end;

procedure TRLCustomDBImage.LoadPicture;
var
  f:TField;
begin
  fPicture.Graphic:=nil;
  f:=GetField;
  if (f<>nil) and f.DataSet.Active and not f.DataSet.Eof then
    fPicture.Assign(f);
end;

procedure TRLCustomDBImage.Notification(aComponent:TComponent; Operation:TOperation);
begin
  inherited;
  //
  if Operation=opRemove then
    if aComponent=fDataSource then
    begin
      LoadPicture;
      Invalidate;
      fDataSource:=nil;
    end;
end;

procedure TRLCustomDBImage.SetDataSource(const aValue:TDataSource);
begin
  if aValue=fDataSource then
    Exit;
  fDataSource:=aValue;
  if aValue<>nil then
    aValue.FreeNotification(Self);
  LoadPicture;
  Invalidate;
end;

procedure TRLCustomDBImage.SetDataField(const aValue:TRLDataFieldProperty);
begin
  if aValue=fDataField then
    Exit;
  fDataField:=aValue;
  LoadPicture;
  AdjustBounds;
  Invalidate;
end;

function TRLCustomDBImage.GetDataSet:TDataSet;
begin
  if Assigned(fDataSource) then
    Result:=fDataSource.DataSet
  else
    Result:=nil;
end;

function TRLCustomDBImage.GetField:TField;
begin
  if (DataSet<>nil) and (fDataField<>'') then
  begin
    Result:=DataSet.FindField(fDataField);
    if Result=nil then
      raise Exception.Create(LS_NotFoundStr+': '+Name+'.DataField "'+fDataField+'"');
  end
  else
    Result:=nil;
end;

procedure TRLCustomDBImage.InternalPrint;
begin
  LoadPicture;
  //
  inherited;
end;

{ TRLCustomSystemInfo }

constructor TRLCustomSystemInfo.Create(aOwner:TComponent);
begin
  fInfoType:=itDate;
  fText    :='';
  //
  inherited Create(aOwner);
end;

function TRLCustomSystemInfo.InternalMakeCaption:string;
const
  CLEARCONST='^CLEAR';
var
  i,p:integer;
  s,v:string;
  r  :TRLCustomReport;

function JunctionStr:string;
var
  s,t1,t2:string;
  i:integer;
  r:TRLReportState;
  p:TRLCustomReport;
begin
  // a propriedade TEXT pode vir na seguinte forma: "Esta p�gina # o relat�rio\|continua;encerra";
  t1:='';
  t2:='';
  s:=fText;
  i:=Pos('|',s);
  if i>0 then
  begin
    // elimina os textos antes da barra e ap�s a segunda barra, se houver
    Delete(s,1,i);
    i:=Pos('|',s);
    if i>0 then
      s:=Copy(s,1,i-1);
    // primeiro e segundo par�metros
    i:=Pos(';',s);
    if i=0 then
      i:=Length(s)+1;
    t1:=Copy(s,1,i-1);
    t2:=Copy(s,i+1,MaxInt);
  end;
  if t1='' then
    t1:=LS_PageBreakStr;
  if t2='' then
    t2:=LS_ReportEndStr;
  //
  p:=MasterReport;
  if Assigned(p) then
    r:=p.ReportState
  else
    r:=rsAbout;
  if r=rsClosing then
    Result:=t2
  else
    Result:=t1;
end;

function MendStr:string;
var
  s,t1,t2:string;
  i,q:integer;
begin
  // a propriedade TEXT pode vir na seguinte forma: "Esta p�gina � a # o relat�rio\|continua��o;";
  t1:='';
  t2:='';
  s:=fText;
  i:=Pos('|',s);
  if i>0 then
  begin
    // elimina os textos antes da barra e ap�s a segunda barra, se houver
    Delete(s,1,i);
    i:=Pos('|',s);
    if i>0 then
      s:=Copy(s,1,i-1);
    // primeiro e segundo par�metros
    i:=Pos(';',s);
    if i=0 then
      i:=Length(s)+1;
    t1:=Copy(s,1,i-1);
    t2:=Copy(s,i+1,MaxInt);
  end;
  if t1='' then
    t1:=LS_PageMendStr;
  if t2='' then
    t2:=CLEARCONST;  
  //
  q:=RequestParentPager.DetailCount;
  if q>0 then
    Result:=t1
  else
    Result:=t2;
end;

function PagePreviewStr:string;
begin
  Result:=IntToStr(MasterReport.PageNumber)+#9+'{LastPageNumber}';
end;

begin
  r:=FindParentReport;
  //
  if not IsPreparing then
    if fFriendlyName<>'' then
      s:=fFriendlyName
    else if fInfoType=itPagePreview then
      s:='('+InfoTypeNames[itPageNumber]+')'+#9+'('+InfoTypeNames[itLastPageNumber]+')'
    else
      s:='('+InfoTypeNames[fInfoType]+')'
  else
    case fInfoType of
      itCarbonCopy    : s:=IntToStr(FindParentBand.CarbonIndex+1);
      itDate          : s:=DateToStr(MasterReport.ReportDateTime);
      itDetailCount   : s:=IntToStr(FindParentPager.DetailCount);
      itFullDate      : s:=FormatDateTime(LongDateFormat,MasterReport.ReportDateTime);
      itHour          : s:=TimeToStr(MasterReport.ReportDateTime);
      itJunction      : s:=JunctionStr;
      itLastPageNumber: s:='{LastPageNumber}';
      itMend          : s:=MendStr;
      itNow           : s:=DateTimeToStr(MasterReport.ReportDateTime);
      itPageNumber    : s:=IntToStr(MasterReport.PageNumber);
      itPagePreview   : s:=PagePreviewStr;
      itTitle         : s:=r.Title;
      itRecNo         : s:=IntToStr(FindParentSkipper.RecNo);
      itCopyNo        : s:=IntToStr(FindParentSkipper.CopyNo);
    end;
  // brecha para eliminar o texto
  if Pos(CLEARCONST,s)>0 then
    Result:=''
  else
  begin
    // elimina op��es embutidas em TEXT
    Result:=fText;
    i:=Pos('|',Result);
    if i>0 then
      Result:=Copy(Result,1,i-1);
    // substitui par�metros em TEXT
    repeat
      // pr�ximo par�metro de S
      p:=Pos(#9,s);
      if p=0 then
        p:=Length(s)+1;
      v:=Copy(s,1,p-1);
      Delete(s,1,p);
      // pr�ximo lugar em Result
      i:=Pos('#',Result);
      if i=0 then
        Result:=Result+v
      else
      begin
        Delete(Result,i,1);
        Insert(v,Result,i);
      end;
    until s='';
  end;
end;

procedure TRLCustomSystemInfo.SetInfoType(const aValue:TRLInfoType);
begin
  if aValue=fInfoType then
    Exit;
  fInfoType:=aValue;
  MakeCaption;
end;

procedure TRLCustomSystemInfo.SetText(const aValue:TCaption);
begin
  if aValue=fText then
    Exit;
  fText:=aValue;
  MakeCaption;
end;

{ TRLCustomDraw }

constructor TRLCustomDraw.Create(aOwner:TComponent);
begin
  // initialization
  fAngle     :=0;
  fDrawKind  :=dkRectangle;
  fCenter    :=True;
  fDrawData  :=nil;
  fDrawWidth :=0;
  fDrawHeight:=0;
  fOptions   :=[];
  // objects
  fBrush         :=TBrush.Create;
  fBrush.OnChange:=ChangeResponse;
  fPen           :=TPen.Create;
  fPen.OnChange  :=ChangeResponse;
  fDrawData      :=TStringList.Create;
  //
  inherited Create(aOwner);
  // customization
  Width :=48;
  Height:=48;
end;

destructor TRLCustomDraw.Destroy;
begin
  FreeObj(fDrawData);
  FreeObj(fBrush);
  FreeObj(fPen);
  //
  inherited;
end;

procedure PointArray(aPoints:array of TPoint; var aDest:TPointArray);
var
  i:integer;
begin
  SetLength(aDest,High(aPoints)+1);
  for i:=0 to High(aPoints) do
    aDest[i]:=aPoints[i]; 
end;

procedure RectToPoints(const aRect:TRect; var aPoints:TPointArray);
begin
  SetLength(aPoints,4);
  aPoints[0].x:=aRect.Left;
  aPoints[0].y:=aRect.Top;
  aPoints[1].x:=aRect.Right;
  aPoints[1].y:=aRect.Top;
  aPoints[2].x:=aRect.Right;
  aPoints[2].y:=aRect.Bottom;
  aPoints[3].x:=aRect.Left;
  aPoints[3].y:=aRect.Bottom;
end;

procedure ProduceRectanglePoints(var aDest:TPointArray);
begin
  PointArray([Point(0,0),Point(1,0),Point(1,1),Point(0,1)],aDest);
end;

procedure ProduceElipsePoints(var aDest:TPointArray);
const
  MaxPoints=36;
  Axis     =1000;        
var
  d,s,c:double;
  i    :integer;
begin
  SetLength(aDest,MaxPoints);
  i:=0;
  while i<MaxPoints do
  begin
    d:=2*Pi*i/MaxPoints;
    s:=Sin(d);
    c:=Cos(d);
    aDest[i]:=Point(Round(Axis+c*Axis),Round(Axis+s*Axis));
    Inc(i);
  end;
end;

procedure ProduceLinePoints(var aDest:TPointArray);
begin
  PointArray([Point(0,0),Point(1,0)],aDest);
end;

procedure ProduceTriaglePoints(var aDest:TPointArray);
begin
  PointArray([Point(0,87),Point(50,0),Point(100,87)],aDest);
end;

procedure ProduceArrowPoints(var aDest:TPointArray);
begin
  PointArray([Point(0,2),Point(5,2),Point(5,0),Point(8,3),Point(5,6),Point(5,4),Point(0,4)],aDest);
end;

function PointsToStr(const aPoints:TPointArray):string;
var
  len,i:integer;
begin
  Result:='';
  len:=High(aPoints)+1;
  for i:=0 to len-1 do
  begin
    if i>0 then
      Result:=Result+#13;
    Result:=Result+IntToStr(aPoints[i].x)+' '+IntToStr(aPoints[i].y);
  end;
end;

procedure ProducePolygonPoints(var aDest:TPointArray; const aPoints:string);
  function NextInt(var i,n:integer):boolean;
  const
    SpaceSet=[#32,#9,#13,#10,#26];
    NumSet  =['0'..'9'];
  var
    m:integer;
  begin
    Result:=False;
    while (i<=Length(aPoints)) and (aPoints[i] in SpaceSet) do
      Inc(i);
    m:=i;
    while (i<=Length(aPoints)) and (aPoints[i] in NumSet) do
      Inc(i);
    if i-m>0 then
    begin
      n     :=StrToIntDef(Copy(aPoints,m,i-m),0);
      Result:=True;
    end;
  end;
var
  i,q:integer;
  p:TPoint;
begin
  // conta os pontos
  q:=0;
  i:=1;
  while NextInt(i,p.x) do
    if NextInt(i,p.y) then
      Inc(q);
  // popula
  SetLength(aDest,q);
  q:=0;
  i:=1;
  while NextInt(i,p.x) do
    if NextInt(i,p.y) then
    begin
      aDest[q]:=p;
      Inc(q);
    end;
end;

procedure TRLCustomDraw.ProducePoints(var aDest:TPointArray);
begin
  case fDrawKind of
    dkRectangle: ProduceRectanglePoints(aDest);
    dkTriangle : ProduceTriaglePoints(aDest);
    dkLine     : ProduceLinePoints(aDest);
    dkElipse   : ProduceElipsePoints(aDest);
    dkArrow    : ProduceArrowPoints(aDest);
    dkCustom   : ProducePolygonPoints(aDest,fDrawData.Text);
  else
    SetLength(aDest,0);
  end;
end;

procedure TRLCustomDraw.ScaleToFit(var aPoints:TPointArray; const aRect:TRect);
var
  r:TRect;
  n:integer;
begin
  r:=aRect;
  if fDrawWidth<>0 then
    r.Right:=r.Left+fDrawWidth;
  if fDrawHeight<>0 then
    r.Bottom:=r.Top+fDrawHeight;
  if doKeepVisible in fOptions then
  begin
    n       :=Min(r.Right-r.Left,r.Bottom-r.Top);
    r.Right :=r.Left+n;
    r.Bottom:=r.Top +n;
  end;
  if doKeepAspectRatio in fOptions then
    ScalePoints(aPoints,r)
  else
    StretchPoints(aPoints,r);
end;

procedure TRLCustomDraw.InternalPaint;
var
  r:TRect;
  p:TPointArray;
begin
  PaintAsCustomControl;
  r:=GetClientRect;
  with Canvas do
  begin
    Brush:=Self.Brush;
    Pen  :=Self.Pen;
    //
    Dec(r.Right);
    Dec(r.Bottom);
    if Pen.Width>1 then
    begin
      Inc(r.Left,Pen.Width div 2);
      Inc(r.Top,Pen.Width div 2);
      Dec(r.Right,(Pen.Width-1) div 2);
      Dec(r.Bottom,(Pen.Width-1) div 2);
    end;
    //
    ProducePoints(p);
    ScaleToFit(p,r);
    RotatePoints(p,fAngle);
    if doKeepSize in fOptions then
    else
      ScaleToFit(p,r);
    if fCenter then
      CenterPoints(p,r);
    Polygon(p);
  end;
end;

procedure TRLCustomDraw.InternalPrint;
var
  r:TRect;
  p:TPointArray;
begin
  inherited;
  //
  r:=CalcPrintClientRect;
  with RequestParentSurface do
  begin
    GeneratorId:=Integer(Self);
    NewGroupId;
    Brush:=Self.Brush;
    Pen  :=Self.Pen;
    //
    Dec(r.Right);
    Dec(r.Bottom);
    if Pen.Width>1 then
    begin
      Inc(r.Left,Pen.Width div 2);
      Inc(r.Top,Pen.Width div 2);
      Dec(r.Right,(Pen.Width-1) div 2);
      Dec(r.Bottom,(Pen.Width-1) div 2);
    end;
    //
    ProducePoints(p);
    ScaleToFit(p,r);
    RotatePoints(p,fAngle);
    if doKeepSize in fOptions then
    else
      ScaleToFit(p,r);
    if fCenter then
      CenterPoints(p,r);
    Polygon(p);
  end;
end;

procedure TRLCustomDraw.ChangeResponse(Sender:TObject);
begin
  Invalidate;
end;

procedure TRLCustomDraw.SetAngle(const aValue:double);
begin
  if aValue=fAngle then
    Exit;
  fAngle:=aValue;
  Invalidate;
end;

procedure TRLCustomDraw.SetBrush(const aValue:TBrush);
begin
  fBrush.Assign(aValue);
  Invalidate;
end;

procedure TRLCustomDraw.SetDrawKind(const aValue:TRLDrawKind);
var
  p:TPointArray;
begin
  if aValue=fDrawKind then
    Exit;
  fDrawKind:=aValue;
  if fDrawKind<>dkCustom then
  begin
    ProducePoints(p);
    fDrawData.Text:=PointsToStr(p);
  end;
  Invalidate;
end;

procedure TRLCustomDraw.SetPen(const aValue:TPen);
begin
  fPen.Assign(aValue);
  Invalidate;
end;

function TRLCustomDraw.IsAngle: boolean;
begin
  Result:=(Abs(fAngle-Round(fAngle))<1/10);
end;

function TRLCustomDraw.IsDrawData: Boolean;
begin
  Result:=(fDrawKind in [dkCustom]);
end;

procedure TRLCustomDraw.SetDrawData(const Value:TStrings);
begin
  if Value.Text=fDrawData.Text then
    Exit;
  fDrawData.Assign(Value);
  fDrawKind:=dkCustom;
  Invalidate;
end;

procedure TRLCustomDraw.SetCenter(const Value: boolean);
begin
  if fCenter=Value then
    Exit;
  fCenter:=Value;
  Invalidate;
end;

procedure TRLCustomDraw.ReadKind(Reader:TReader);
var
  kindname:string;
begin
  kindname:=Reader.ReadIdent;
  if AnsiSameText(kindname,'dkRectangle') then
  begin
    fDrawKind:=dkRectangle;
    fOptions :=[doKeepSize];
  end  
  else if AnsiSameText(kindname,'dkLine') then
  begin
    fDrawKind     :=dkCustom;
    fDrawData.Text:='0 0 1 1';
    fOptions      :=[doKeepSize];
  end
  else if AnsiSameText(kindname,'dkTriangle') then
  begin
    fDrawKind:=dkTriangle;
    fOptions :=[doKeepSize];
  end
  else if AnsiSameText(kindname,'dkElipse') then
  begin
    fDrawKind:=dkElipse;
    fOptions :=[doKeepSize];
  end
  else if AnsiSameText(kindname,'dkArrow') then
  begin
    fDrawKind:=dkArrow;
    fOptions :=[doKeepSize];
  end
  else if AnsiSameText(kindname,'dkCircle') then
  begin
    fDrawKind:=dkElipse;
    fOptions :=[doKeepAspectRatio];
  end
  else if AnsiSameText(kindname,'dkHorzLine') then
  begin
    fDrawKind:=dkLine;
    fOptions :=[doKeepSize];
  end
  else if AnsiSameText(kindname,'dkVertLine') then
  begin
    fDrawKind:=dkLine;
    fAngle   :=fAngle+90;
    fOptions :=[doKeepSize,doKeepVisible];
  end
  else if AnsiSameText(kindname,'dkReverseLine') then
  begin
    fDrawKind     :=dkCustom;
    fDrawData.Text:='1 0 0 1';
    fOptions      :=[doKeepSize];
  end;
end;

procedure TRLCustomDraw.DefineProperties(Filer: TFiler);
begin
  Filer.DefineProperty('Kind',ReadKind,nil,False);
end;

procedure TRLCustomDraw.SetDrawHeight(const Value: integer);
begin
  if Value=fDrawHeight then
    Exit;
  fDrawHeight:=Value;
  AdjustBounds;
  Invalidate;
end;

procedure TRLCustomDraw.SetDrawWidth(const Value: integer);
begin
  if Value=fDrawWidth then
    Exit;
  fDrawWidth:=Value;
  AdjustBounds;
  Invalidate;
end;

procedure TRLCustomDraw.SetOptions(const Value: TRLDrawOptions);
begin
  if Value=fOptions then
    Exit;
  fOptions:=Value;
  AdjustBounds;
  Invalidate;
end;

function TRLCustomDraw.IsDrawSize: Boolean;
begin
  Result:=(fDrawWidth<>0) or (fDrawHeight<>0);
end;

{ TRLCustomSite }

constructor TRLCustomSite.Create(aOwner:TComponent);
begin
  // initialization
  fOnDraw          :=nil;
  // objects
  fBackground      :=TRLBackground.Create(Self);
  fDegrade         :=TRLDegradeEffect.Create(Self);
  fInsideMargins   :=TRLMargins.Create(Self);
  fMargins         :=TRLMargins.Create(Self);
  fSurface         :=TRLGraphicSurface.Create;
  //
  inherited Create(aOwner);
  // customization
  ControlStyle  :=ControlStyle+[csAcceptsControls,csCaptureMouse,csClickEvents,csOpaque,csDoubleClicks,csReplicatable];
end;

destructor TRLCustomSite.Destroy;
begin
  FreeObj(fSurface);
  FreeObj(fMargins);
  FreeObj(fInsideMargins);
  FreeObj(fDegrade);
  FreeObj(fBackground);
  //
  inherited;
end;

// anula alinhamento natural do delphi
procedure TRLCustomSite.AlignControls(aControl:TControl; var Rect:TRect);
begin
end;

// novo alinhamento de controles
procedure TRLCustomSite.AlignControls(aRect:TRect);
type
  TAlignControlArray=array[TRLControlAlign] of TList;
var
  alignarray:TAlignControlArray;
  align     :TRLControlAlign;
  control   :TControl;
  anchors   :TRLControlAnchors;
  alignrect :TRect;
  auxrect   :TRect;
  leftrect  :TRect;
  rightrect :TRect;
  l         :TList;
  i,j,w,h   :integer;
// retorna TRUE se os controles na ordem correta segundo o alinhamento e suas posi��es
function IsOrdered(aControl1,aControl2:TControl; aAlign:TRLControlAlign):boolean;
begin
  case aAlign of
    faTop         : Result:=(aControl1.Top<aControl2.Top);
    faBottom      : Result:=(aControl1.Top>aControl2.Top);
    faLeft        : Result:=(aControl1.Left<aControl2.Left);
    faLeftMost    : Result:=(aControl1.Left<aControl2.Left);
    faClient      : Result:=(aControl1.Left<aControl2.Left);
    faRight       : Result:=(aControl1.Left>aControl2.Left);
    faRightMost   : Result:=(aControl1.Left>aControl2.Left);
    faLeftTop     : Result:=(aControl1.Left<aControl2.Left) and (aControl1.Top<aControl2.Top);
    faRightTop    : Result:=(aControl1.Left>aControl2.Left) and (aControl1.Top<aControl2.Top);
    faLeftBottom  : Result:=(aControl1.Left<aControl2.Left) and (aControl1.Top>aControl2.Top);
    faRightBottom : Result:=(aControl1.Left>aControl2.Left) and (aControl1.Top>aControl2.Top);
    faCenter      : Result:=(aControl1.Left<aControl2.Left);
    faCenterLeft  : Result:=(aControl1.Top<aControl2.Top);
    faCenterTop   : Result:=(aControl1.Left<aControl2.Left);
    faCenterRight : Result:=(aControl1.Top<aControl2.Top);
    faCenterBottom: Result:=(aControl1.Left>aControl2.Left);
    faClientLeft  : Result:=(aControl1.Top<aControl2.Top);
    faClientTop   : Result:=(aControl1.Left<aControl2.Left);
    faClientRight : Result:=(aControl1.Top<aControl2.Top);
    faClientBottom: Result:=(aControl1.Left>aControl2.Left);
    faHeight      : Result:=(aControl1.Top<aControl2.Top);
    faWidth       : Result:=(aControl1.Left<aControl2.Left);
    faLeftOnly    : Result:=(aControl1.Left<aControl2.Left);
    faRightOnly   : Result:=(aControl1.Left>aControl2.Left);
    faTopOnly     : Result:=(aControl1.Top<aControl2.Top);
    faBottomOnly  : Result:=(aControl1.Top>aControl2.Top);
  else
    Result:=True;
  end
end;
// retorna n�vel de alinhamento (prioridade)
function AlignPriority(aControl:TControl):integer;
begin
  if IsStaticCustomControl(aControl) then
    Result:=0
  else if aControl is TRLCustomBand then
    case TRLCustomBand(aControl).BandType of
      btHeader      : Result:=10;
      btTitle       : Result:=20;
      btColumnHeader: Result:=30;
      btDetail      : Result:=40;
      btColumnFooter: Result:=50;
      btSummary     : Result:=60;
      btFooter      : Result:=70;
    else
      Result:=10;
    end
  else if aControl is TRLCustomSubDetail then
    case TRLCustomSubDetail(aControl).Positioning of
      btHeader      : Result:=11;
      btTitle       : Result:=21;
      btColumnHeader: Result:=31;
      btDetail      : Result:=41;
      btColumnFooter: Result:=51;
      btSummary     : Result:=61;
      btFooter      : Result:=71;
    else
      Result:=100;
    end
  else if aControl is TRLCustomGroup then
    Result:=32
  else
    Result:=100;
end;
// retorna ID do grupo de controles
function AlignGroup(aControl:TControl):integer;
begin
  if aControl is TRLCustomBand then
    Result:=TRLCustomBand(aControl).GroupIndex
  else
    Result:=0;
end;
// retorna TRUE se os controles na ordem correta segundo grupos, n�veis e suas posi��es perante a um alinhamento
function IsPrior(aControl1,aControl2:TControl; aAlign:TRLControlAlign):boolean;
var
  prio1,prio2,group1,group2:integer;
  ctrl1,ctrl2:TControl;
begin
  ctrl1:=ControlWithin(aControl1);
  ctrl2:=ControlWithin(aControl2);
  prio1:=AlignPriority(ctrl1);
  prio2:=AlignPriority(ctrl2);
  if prio1=prio2 then
    if (ctrl1 is TRLCustomBand) and (ctrl2 is TRLCustomBand) then
    begin
      group1:=AlignGroup(ctrl1);
      group2:=AlignGroup(ctrl2);
      if group1=group2 then
        Result:=IsOrdered(aControl1,aControl2,aAlign)
      else
        Result:=(group1<group2);
    end
    else
      Result:=IsOrdered(aControl1,aControl2,aAlign)
  else
    Result:=(prio1<prio2);
end;
// adiciona controle numa lista na posi��o ideal para o alinhamento
procedure AddToList(aControl:TControl; var aArray:TAlignControlArray);
var
  a:TRLControlAlign;
  i:integer;
begin
  a:=GetControlAlignOf(aControl);
  if a=faNone then
    i:=aArray[a].Count
  else
  begin
    i:=0;
    while (i<=aArray[a].Count-1) and not IsPrior(aControl,TControl(aArray[a][i]),a) do
      Inc(i);
  end;
  if i=aArray[a].Count then
    aArray[a].Add(aControl)
  else
    aArray[a].Insert(i,aControl);
end;
procedure SetControlBoundsRect(aControl:TControl; aBoundsRect:TRect);
var
  ctrl:TControl;
begin
  ctrl:=ControlWithin(aControl);
  if ctrl<>aControl then
  begin
    OffsetRect(aBoundsRect,-aControl.Left,-aControl.Top);
    aControl:=ctrl;
  end;
  aControl.BoundsRect:=aBoundsRect;
end;
begin
  // limpa vetor de listas
  for align:=Low(TRLControlAlign) to High(TRLControlAlign) do
    alignarray[align]:=nil;
  try
    // criar listas de alinhamento
    for align:=Low(TRLControlAlign) to High(TRLControlAlign) do
      alignarray[align]:=TList.Create;
    // adiciona controles �s listas de alinhamento
    for i:=0 to ControlCount-1 do
    begin
      control:=Controls[i];
      if not (csDesigning in ComponentState) and not control.Visible then
        Continue;
      AddToList(control,alignarray);
    end;

    // ret�ngulo de alinhamento
    alignrect:=aRect;
    
    // alinhamentos de alta prioridade: leftmost, rightmost
    l:=alignarray[faLeftMost];
    for i:=0 to l.Count-1 do
    begin
      control:=TControl(l[i]);
      SetControlBoundsRect(control,Classes.Rect(alignrect.Left,alignrect.Top,alignrect.Left+control.Width,alignrect.Bottom));
      Inc(alignrect.Left,control.Width);
    end;
    l:=alignarray[faRightMost];
    for i:=0 to l.Count-1 do
    begin
      control:=TControl(l[i]);
      SetControlBoundsRect(control,Classes.Rect(alignrect.Right-control.Width,alignrect.Top,alignrect.Right,alignrect.Bottom));
      Dec(alignrect.Right,control.Width);
    end;

    // alinhamentos de m�dia prioridade: top,bottom
    l:=alignarray[faTop];
    for i:=0 to l.Count-1 do
    begin
      control:=TControl(l[i]);
      SetControlBoundsRect(control,Classes.Rect(alignrect.Left,alignrect.Top,alignrect.Right,alignrect.Top+control.Height));
      Inc(alignrect.Top,control.Height);
    end;
    l:=alignarray[faBottom];
    for i:=0 to l.Count-1 do
    begin
      control:=TControl(l[i]);
      SetControlBoundsRect(control,Classes.Rect(alignrect.Left,alignrect.Bottom-control.Height,alignrect.Right,alignrect.Bottom));
      Dec(alignrect.Bottom,control.Height);
    end;

    // alinhamentos de baixa prioridade: left,right
    l:=alignarray[faLeft];
    for i:=0 to l.Count-1 do
    begin
      control:=TControl(l[i]);
      SetControlBoundsRect(control,Classes.Rect(alignrect.Left,alignrect.Top,alignrect.Left+control.Width,alignrect.Bottom));
      Inc(alignrect.Left,control.Width);
    end;
    l:=alignarray[faRight];
    for i:=0 to l.Count-1 do
    begin
      control:=TControl(l[i]);
      SetControlBoundsRect(control,Classes.Rect(alignrect.Right-control.Width,alignrect.Top,alignrect.Right,alignrect.Bottom));
      Dec(alignrect.Right,control.Width);
    end;

    // alinhamento pela sobra de espa�o: client
    auxrect:=alignrect;
    l      :=alignarray[faClient];
    if l.Count>0 then
    begin
      w:=RectWidth(auxrect) div l.Count;
      for i:=0 to l.Count-1 do
      begin
        control:=TControl(l[i]);
        if i=l.Count-1 then
          w:=RectWidth(auxrect);
        SetControlBoundsRect(control,Classes.Rect(auxrect.Left,auxrect.Top,auxrect.Left+w,auxrect.Bottom));
        Inc(auxrect.Left,control.Width);
      end;
    end;

    // outros alinhamentos que pegam a mesma sobra de espa�o 
    leftrect :=alignrect;
    rightrect:=alignrect;

    // sobras ao topo
    auxrect:=alignrect;
    l      :=alignarray[faLeftTop];
    for i:=0 to l.Count-1 do
    begin
      control:=TControl(l[i]);
      SetControlBoundsRect(control,Classes.Rect(auxrect.Left,auxrect.Top,auxrect.Left+control.Width,auxrect.Top+control.Height));
      if control.BoundsRect.Bottom>leftrect.Top then
        leftrect.Top:=control.BoundsRect.Bottom;
      Inc(auxrect.Left,control.Width);
    end;
    l:=alignarray[faRightTop];
    for i:=0 to l.Count-1 do
    begin
      control:=TControl(l[i]);
      SetControlBoundsRect(control,Classes.Rect(auxrect.Right-control.Width,auxrect.Top,auxrect.Right,auxrect.Top+control.Height));
      if control.BoundsRect.Bottom>rightrect.Top then
        rightrect.Top:=control.BoundsRect.Bottom;
      Dec(auxrect.Right,control.Width);
    end;
    l:=alignarray[faClientTop];
    if l.Count>0 then
    begin
      h:=(auxrect.Right-auxrect.Left) div l.Count;
      for i:=0 to l.Count-1 do
      begin
        control:=TControl(l[i]);
        if i=l.Count-1 then
          w:=auxrect.Right-auxrect.Left
        else
          w:=h;
        SetControlBoundsRect(control,Classes.Rect(auxrect.Left,auxrect.Top,auxrect.Left+w,auxrect.Top+control.Height));
        Inc(auxrect.Left,control.Width);
      end;
    end;

    // sobras � base
    auxrect:=alignrect;
    l      :=alignarray[faLeftBottom];
    for i:=0 to l.Count-1 do
    begin
      control:=TControl(l[i]);
      SetControlBoundsRect(control,Classes.Rect(auxrect.Left,auxrect.Bottom-control.Height,auxrect.Left+control.Width,auxrect.Bottom));
      if control.BoundsRect.Top<leftrect.Bottom then
        leftrect.Bottom:=control.BoundsRect.Top;
      Inc(auxrect.Left,control.Width);
    end;
    l:=alignarray[faRightBottom];
    for i:=0 to l.Count-1 do
    begin
      control:=TControl(l[i]);
      SetControlBoundsRect(control,Classes.Rect(auxrect.Right-control.Width,auxrect.Bottom-control.Height,auxrect.Right,auxrect.Bottom));
      if control.BoundsRect.Top<rightrect.Bottom then
        rightrect.Bottom:=control.BoundsRect.Top;
      Dec(auxrect.Right,control.Width);
    end;
    l:=alignarray[faClientBottom];
    if l.Count>0 then
    begin
      h:=(auxrect.Right-auxrect.Left) div l.Count;
      for i:=0 to l.Count-1 do
      begin
        control:=TControl(l[i]);
        if i=l.Count-1 then
          w:=auxrect.Right-auxrect.Left
        else
          w:=h;
        SetControlBoundsRect(control,Classes.Rect(auxrect.Left,auxrect.Bottom-control.Height,auxrect.Left+w,auxrect.Bottom));
        Inc(auxrect.Left,control.Width);
      end;
    end;

    // sobras � esquerda
    auxrect:=leftrect;
    l      :=alignarray[faClientLeft];
    if l.Count>0 then
    begin
      h:=(auxrect.Bottom-auxrect.Top) div l.Count;
      for i:=0 to l.Count-1 do
      begin
        control:=TControl(l[i]);
        if i=l.Count-1 then
          w:=auxrect.Bottom-auxrect.Top                                                                              
        else
          w:=h;
        SetControlBoundsRect(control,Classes.Rect(auxrect.Left,auxrect.Top,auxrect.Left+control.Width,auxrect.Top+w));
        Inc(auxrect.Top,w);
      end;
    end;

    // sobras � direita
    auxrect:=rightrect;
    l      :=alignarray[faClientRight];
    if l.Count>0 then
    begin
      h:=(auxrect.Bottom-auxrect.Top) div l.Count;
      for i:=0 to l.Count-1 do
      begin
        control:=TControl(l[i]);
        if i=l.Count-1 then
          w:=auxrect.Bottom-auxrect.Top
        else
          w:=h;
        SetControlBoundsRect(control,Classes.Rect(auxrect.Right-control.Width,auxrect.Top,auxrect.Right,auxrect.Top+w));
        Inc(auxrect.Top,control.Height);
      end;
    end;

    // alinhamentos parciais
    auxrect:=alignrect;
    
    // somente � esquerda
    l:=alignarray[faLeftOnly];
    for i:=0 to l.Count-1 do
    begin
      control:=TControl(l[i]);
      SetControlBoundsRect(control,Classes.Rect(auxrect.Left,control.Top,auxrect.Left+control.Width,control.Top+control.Height));
    end;
    // somente � direita
    l:=alignarray[faRightOnly];
    for i:=0 to l.Count-1 do
    begin
      control:=TControl(l[i]);
      SetControlBoundsRect(control,Classes.Rect(auxrect.Right-control.Width,control.Top,auxrect.Right,control.Top+control.Height));
    end;
    // somente ao topo
    l:=alignarray[faTopOnly];
    for i:=0 to l.Count-1 do
    begin
      control:=TControl(l[i]);
      SetControlBoundsRect(control,Classes.Rect(control.Left,auxrect.Top,control.Left+control.Width,auxrect.Top+control.Height));
    end;
    // somente � base
    l:=alignarray[faBottomOnly];
    for i:=0 to l.Count-1 do
    begin
      control:=TControl(l[i]);
      SetControlBoundsRect(control,Classes.Rect(control.Left,auxrect.Bottom-control.Height,control.Left+control.Width,auxrect.Bottom));
    end;
    // somente � altura
    l:=alignarray[faHeight];
    for i:=0 to l.Count-1 do
    begin
      control:=TControl(l[i]);
      SetControlBoundsRect(control,Classes.Rect(control.Left,auxrect.Top,control.Left+control.Width,auxrect.Bottom));
    end;
    // somente � largura
    l:=alignarray[faWidth];
    for i:=0 to l.Count-1 do
    begin
      control:=TControl(l[i]);
      SetControlBoundsRect(control,Classes.Rect(auxrect.Left,control.Top,auxrect.Right,control.Top+control.Height));
    end;

    // alinhamentos aos centros
    
    // centro � esquerda
    auxrect:=alignrect;
    l      :=alignarray[faCenterLeft];
    if l.Count>0 then
    begin
      h:=(auxrect.Bottom-auxrect.Top) div l.Count;
      for i:=0 to l.Count-1 do
      begin
        control:=TControl(l[i]);
        if i=l.Count-1 then
          w:=auxrect.Bottom-auxrect.Top
        else
          w:=h;
        j:=(w-control.Height) div 2;
        SetControlBoundsRect(control,Classes.Rect(auxrect.Left,auxrect.Top+j,auxrect.Left+control.Width,auxrect.Top+j+control.Height));
        Inc(auxrect.Top,w);
      end;
    end;
    // centro ao topo
    auxrect:=alignrect;
    l      :=alignarray[faCenterTop];
    if l.Count>0 then
    begin
      h:=(auxrect.Right-auxrect.Left) div l.Count;
      for i:=0 to l.Count-1 do
      begin
        control:=TControl(l[i]);
        if i=l.Count-1 then
          w:=auxrect.Right-auxrect.Left
        else
          w:=h;
        j:=(w-control.Width) div 2;
        SetControlBoundsRect(control,Classes.Rect(auxrect.Left+j,auxrect.Top,auxrect.Left+j+control.Width,auxrect.Top+control.Height));
        Inc(auxrect.Left,w);
      end;
    end;
    // centro � direita
    auxrect:=alignrect;
    l      :=alignarray[faCenterRight];
    if l.Count>0 then
    begin
      h:=(auxrect.Bottom-auxrect.Top) div l.Count;
      for i:=0 to l.Count-1 do
      begin
        control:=TControl(l[i]);
        if i=l.Count-1 then
          w:=auxrect.Bottom-auxrect.Top
        else
          w:=h;
        j:=(w-control.Height) div 2;
        SetControlBoundsRect(control,Classes.Rect(auxrect.Right-control.Width,auxrect.Top+j,auxrect.Right,auxrect.Top+j+control.Height));
        Inc(auxrect.Top,w);
      end;
    end;
    // centro � base
    auxrect:=alignrect;
    l      :=alignarray[faCenterBottom];
    if l.Count>0 then
    begin
      h:=(auxrect.Right-auxrect.Left) div l.Count;
      for i:=0 to l.Count-1 do
      begin
        control:=TControl(l[i]);
        if i=l.Count-1 then
          w:=auxrect.Right-auxrect.Left
        else
          w:=h;
        j:=(w-control.Width) div 2;
        SetControlBoundsRect(control,Classes.Rect(auxrect.Left+j,auxrect.Bottom-control.Height,auxrect.Left+j+control.Width,auxrect.Bottom));
        Inc(auxrect.Left,w);
      end;
    end;
    // centro
    auxrect:=alignrect;
    l      :=alignarray[faCenter];
    if l.Count>0 then
    begin
      h:=0;
      w:=0;
      for i:=0 to l.Count-1 do
      begin
        control:=TControl(l[i]);
        Inc(h,control.Height);
        Inc(w,control.Width);
      end;
      auxrect.Top :=(auxrect.Top +auxrect.Bottom-h) div 2;
      auxrect.Left:=(auxrect.Left+auxrect.Right -w) div 2;
      for i:=0 to l.Count-1 do
      begin
        control:=TControl(l[i]);
        SetControlBoundsRect(control,Classes.Rect(auxrect.Left,auxrect.Top,auxrect.Left+control.Width,auxrect.Top+control.Height));
        Inc(auxrect.Left,control.Width);
      end;
    end;

    // ajusta controles ancorados
    w:=RectWidth(OldBoundsRect);
    h:=RectHeight(OldBoundsRect);
    l:=alignarray[faNone];
    for i:=0 to l.Count-1 do
    begin
      control  :=TControl(l[i]);
      alignrect:=control.BoundsRect;
      anchors  :=GetControlAnchorsOf(control);
      if fkRight in anchors then
        if fkLeft in anchors then
          Inc(alignrect.Right,Width-w)
        else
          OffsetRect(alignrect,Width-w,0)
      else if (fkLeft in anchors) and (anchors*[fkTop,fkBottom]=[]) then
        OffsetRect(alignrect,0,Round(alignrect.Top*Height/h));
      if fkBottom in anchors then
        if fkTop in anchors then
          Inc(alignrect.Bottom,Height-h)
        else
          OffsetRect(alignrect,0,Height-h)
      else if (fkTop in anchors) and (anchors*[fkLeft,fkRight]=[]) then
        OffsetRect(alignrect,Round(alignrect.Left*Width/w),0);
      SetControlBoundsRect(control,alignrect);
    end;

  finally
    for align:=Low(TRLControlAlign) to High(TRLControlAlign) do
      FreeObj(alignarray[align]);
  end;
end;

// alinha os controles do panel e dos panels parentizados
procedure TRLCustomSite.RealignControls;
var
  i:integer;
  c:TControl;
begin
  if csLoading in ComponentState then
    Exit;
  if stAligningControls in fControlState then
    Exit;
  Include(fControlState,stAligningControls);
  try
    AlignControls(ClientRect);
    //
    for i:=0 to ControlCount-1 do
    begin
      c:=ControlWithin(Controls[i]);
      if c is TRLCustomSite then
        TRLCustomSite(c).RealignControls;
    end;
  finally
    Exclude(fControlState,stAligningControls);
  end;
end;

procedure TRLCustomSite.DrawClient;
begin
  DrawFrame(GetClientRect,clGray,True);
end;

// desenha frames delimitadores
procedure TRLCustomSite.DrawBounds;
begin
  DrawFrame(CalcSizeRect,clBlue,False);
end;

// desenha uma frame colorida e com cantos arredondados 
procedure TRLCustomSite.DrawFrame(Rect:TRect; aColor:TColor; aRound:boolean);
var
  curv:integer;
begin
  with Canvas do
  begin
    Pen.Color  :=aColor;
    Pen.Style  :=psDot;
    Pen.Mode   :=pmCopy;
    Brush.Style:=bsClear;
    if aRound then
    begin
{$ifdef Win32}
      curv:=6;
{$else}
      curv:=2;
{$endif}
      RoundRect(Rect.Left,Rect.Top,Rect.Right,Rect.Bottom,curv,curv);
    end
    else
      Rectangle(Rect.Left,Rect.Top,Rect.Right,Rect.Bottom);
  end;
end;

// desenha regua 
procedure TRLCustomSite.DrawTracks;
const
  clCm  =$00DFDFDF;
  clHalf=$00F1F1F1;
var
  x,y:integer;
  cm,f:double;
  bCm,num:boolean;
  r:TRect;
begin
  num:=True; //Self is TRLCustomReport;
  r  :=CalcSizeRect;
  f  :=ScreenPPI/(InchAsMM/10);
  with Canvas do
  begin
    if num then
    begin
      Font.Name :='Small Fonts';
      Font.Size :=6;
      Font.Style:=[];
      Font.Color:=clBlack;
    end;
    Pen.Color  :=clAqua;
    Pen.Mode   :=pmCopy;
    Brush.Style:=bsClear;
    bCm:=False;
    cm :=1/2;
    repeat
      y:=r.Top+Round(cm*f);
      if y>r.Bottom then
        Break;
      if bCm then
      begin
        if num then
          TextOut(r.Left+1,y+1,IntToStr(Round(cm)));
        Pen.Style:=psSolid;
      end
      else
        Pen.Style:=psDot;
      MoveTo(r.Left,y); LineTo(r.Right,y);
      cm :=cm+1/2;
      bCm:=not bCm;
    until False;
    bCm:=False;
    cm :=1/2;
    repeat
      x:=r.Left+Round(cm*f);
      if x>r.Right then
        Break;
      if bCm then
      begin
        if num then
          TextOut(x+1,r.Top+1,IntToStr(Round(cm)));
        Pen.Style:=psSolid;
      end
      else
        Pen.Style:=psDot;
      MoveTo(x,r.Top); LineTo(x,r.Bottom);
      cm :=cm+1/2;
      bCm:=not bCm;
    until False;
  end;
end;

// preenche regiao nao utilizada com barras 
procedure TRLCustomSite.DrawUnusedRect(Rect:TRect);
const
  clDarkness=$00F4F4F4;
begin
  with Canvas do
  begin
    Pen.Color  :=clDarkness;
    Pen.Style  :=psSolid;
    Pen.Mode   :=pmCopy;
    Brush.Color:=clDarkness;
    Brush.Style:=bsSolid;
    Rectangle(Rect.Left,Rect.Top,Rect.Right,Rect.Bottom);
  end;
end;

// zera contadores 
procedure InitializeAllFrom(aParent:TWinControl);
var
  i:integer;
begin
  for i:=0 to aParent.ControlCount-1 do
    if aParent.Controls[i] is TRLCustomControl then
      TRLCustomControl(aParent.Controls[i]).Initialize
    else if aParent.Controls[i] is TCustomFrame then
      InitializeAllFrom(TCustomFrame(aParent.Controls[i]));
end;

procedure TRLCustomSite.Initialize;
begin
  InitializeAllFrom(Self);
end;

// incrementa contadores 
procedure ComputeDetailAllFrom(aParent:TWinControl; aCaller:TObject);
var
  i:integer;
begin
  for i:=0 to aParent.ControlCount-1 do
    if aParent.Controls[i]<>aCaller then
      if IsStaticCustomControl(aParent.Controls[i]) or (aParent.Controls[i] is TRLCustomBand) then
        TRLCustomControl(aParent.Controls[i]).ComputeDetail(aCaller)
      else if aParent.Controls[i] is TCustomFrame then
        ComputeDetailAllFrom(TCustomFrame(aParent.Controls[i]),aCaller);
end;

procedure TRLCustomSite.ComputeDetail(aCaller:TObject);
begin
  ComputeDetailAllFrom(Self,aCaller);
end;

// forca o redesenho do panel e dos panels filhos
procedure InvalidateAllFrom(aParent:TWinControl);
var
  i:integer;
begin
  aParent.Invalidate;
  for i:=0 to aParent.ControlCount-1 do
    if aParent.Controls[i] is TRLCustomSite then
      TRLCustomSite(aParent.Controls[i]).InvalidateAll
    else if aParent.Controls[i] is TRLCustomControl then
      TRLCustomControl(aParent.Controls[i]).Invalidate
    else if aParent.Controls[i] is TCustomFrame then
      InvalidateAllFrom(TCustomFrame(aParent.Controls[i]));
end;

procedure TRLCustomSite.InvalidateAll;
begin
  InvalidateAllFrom(Self);
end;

// invoca evento durante a impress�o 
procedure TRLCustomSite.DoOnDraw(aSurface:TRLGraphicSurface; aRect:TRect);
var
  r:TRect;
begin
  if Assigned(fOnDraw) then
  begin
    r:=GetClientRect;
    OffsetRect(r,aRect.Left,aRect.Top);
    fOnDraw(Self,aSurface,r);
  end;  
end;

procedure TRLCustomSite.OpenSurface;
var
  s:TRLCustomSite;
begin
  if Surface.Opened then
    Exit;
  // por precau��o, abre o canvas do controle pai antes
  s:=FindParentSite;
  if (s<>nil) and not s.Surface.Opened then
    s.OpenSurface;
  //
  SurfaceOpening;
  MarkPrintPosition;
  Surface.Open;
  Surface.Clear;
  Surface.Margins:=ClientRect;
  if Enabled then
    SurfaceBeginDraw;
  SurfaceOpened;
end;

procedure TRLCustomSite.CloseSurface;
begin
  if not Surface.Opened then
    Exit;
  //
  if Enabled then
    SurfaceEndDraw;
  TruncateSurface;
  ThrowSurface;
  Surface.Close;
  SurfaceClosed;
end;

procedure TRLCustomSite.ThrowSurface;
var
  destsurface:TRLGraphicSurface;
  destrect   :TRect;
begin
  destsurface:=RequestParentSurface;
  destrect:=CalcPrintBoundsRect;
  //
  if Enabled then
    PrepareBackgroundSurface(destsurface,destrect);
  destsurface.Draw(destrect.Left,destrect.Top,Surface);
end;

procedure TRLCustomSite.PrepareBackgroundSurface(aBackgroundSurface:TRLGraphicSurface; const aRect:TRect);
var
  m:TRect;
begin
  aBackgroundSurface.GeneratorId:=Integer(Self);
  NewGroupId;
  if (Degrade.Direction<>ddNone) and (Degrade.OppositeColor<>Color) then
    Degrade.PaintTo(aBackgroundSurface,aRect,Color)
  else if not IsTransparent(Self) then
  begin
    aBackgroundSurface.Brush.Color:=Color;
    aBackgroundSurface.Brush.Style:=bsSolid;
    aBackgroundSurface.FillRect(aRect);
  end;
  Background.PaintTo(aBackgroundSurface,aRect);
  m:=CalcPrintMarginalRect;
  OffsetRect(m,aRect.Left,aRect.Top);
  DoOnDraw(aBackgroundSurface,m);
  Borders.PaintTo(aBackgroundSurface,m);
end;

procedure TRLCustomSite.SurfaceOpening;
begin
end;

procedure TRLCustomSite.SurfaceBeginDraw;
begin
  PrepareStatics;
  PrintStatics;
end;

procedure TRLCustomSite.SurfaceOpened;
begin
end;

procedure TRLCustomSite.WriteSurface;
begin
end;

procedure TRLCustomSite.SurfaceEndDraw;
begin
end;

procedure TRLCustomSite.SurfaceClosed;
begin
end;

procedure TRLCustomSite.TruncateSurface;
begin
end;

procedure TRLCustomSite.MarkPrintPosition;
var
  p:TWinControl;
begin
  fPrintPosition.x:=Left;
  fPrintPosition.y:=Top;
  fPrintSize.x    :=Width;
  fPrintSize.y    :=Height;
  //
  p:=Parent;
  while (p<>nil) and not (p is TRLCustomSite) do
  begin
    Inc(fPrintPosition.x,p.Left);
    Inc(fPrintPosition.y,p.Top);
    p:=p.Parent;
  end;
end;

procedure TRLCustomSite.DrawBackground(const aRect:TRect);
begin
  Background.PaintTo(Canvas,aRect);
end;

function TRLCustomSite.CalcEffectiveRect:TRect;
begin
  Result:=CalcSizeRect;
end;

procedure TRLCustomSite.Signup(const aSignature:string; aBig:boolean=False);
var
  w,h:integer;
  t:TRect;
  s:string;
begin
  with Canvas do
  begin
    if aBig then
    begin
      Font.Name:='MS Sans Serif';
      Font.Size:=8;
    end
    else
    begin
      Font.Name:='Small Fonts';
      Font.Size:=6;
    end;
    Font.Style :=[];
    Font.Color :=clWhite;
    s:=' '+aSignature+' ';
    w:=TextWidth(s);
    h:=TextHeight(s);
    t.Left     :=1;
    t.Top      :=1;
    t.Right    :=t.Left+w;
    t.Bottom   :=t.Top+h;
    Pen.Color  :=clBlue;
    Pen.Style  :=psSolid;
    Pen.Mode   :=pmCopy;
    Brush.Color:=clBlue;
    Brush.Style:=bsSolid;
    RoundRect(t.Left,t.Top,t.Right,t.Bottom,5,5);
    Brush.Style:=bsClear;
    TextRect(t,t.Left,t.Top,s);
  end;
end;

procedure TRLCustomSite.PaintAsCustomSite;
var
  z,s,e,r:TRect;
begin
  z:=CalcSizeRect;
  s:=z;
  e:=CalcEffectiveRect;
  // pinta fundo
  with Canvas do
  begin
    Brush.Color:=Self.Color;
    Brush.Style:=bsSolid;
    FillRect(z);
  end;
  // preenche espa�os n�o client
  if e.Top>s.Top then
  begin
    r       :=s;
    r.Bottom:=e.Top;
    DrawUnusedRect(r);
    s.Top   :=e.Top;
  end;
  if e.Bottom<s.Bottom then
  begin
    r       :=s;
    r.Top   :=e.Bottom;
    DrawUnusedRect(r);
    s.Bottom:=e.Bottom;
  end;
  if e.Left>s.Left then
  begin
    r      :=s;
    r.Right:=e.Left;
    DrawUnusedRect(r);
    s.Left :=e.Left;
  end;
  if e.Right<s.Right then
  begin
    r      :=s;
    r.Left :=e.Right;
    DrawUnusedRect(r);
    s.Right:=e.Right;
  end;
  //
  if (Degrade.Direction<>ddNone) and (Degrade.OppositeColor<>Color) then
    Degrade.PaintTo(Canvas,e,Color);
  DrawBackground(e);
  Borders.PaintTo(Canvas,CalcMarginalRect);
end;

// desenha o panel em tela
procedure TRLCustomSite.InternalPaint;
begin
  PaintAsCustomSite;
end;

procedure TRLCustomSite.InternalPaintFinish;
var
  p:TRLCustomReport;
begin
  p:=FindParentReport;
  if not Assigned(p) or (p.ShowDesigners and p.ShowTracks) then
    DrawTracks;
  if not Assigned(p) or p.ShowDesigners then
  begin
    DrawClient;
    DrawBounds;
  end;
end;

procedure TRLCustomSite.InternalPrint;
begin
  OpenSurface;
  WriteSurface;
  CloseSurface;
end;

procedure TRLCustomSite.CalcSize(var aSize:TPoint);
var
  i,totalwidth,totalheight,maxright,maxbottom:integer;
  control  :TControl;
  ctrlalign:TRLControlAlign;
  clirect  :TRect;
  ctrlsize :TPoint;
begin
  aSize:=Point(Width,Height);
  if not AutoSize then
    Exit;
  // totaliza tamanho dos controles
  totalwidth :=0;
  totalheight:=0;
  maxright   :=0;
  maxbottom  :=0;
  for i:=0 to ControlCount-1 do
  begin
    control  :=Controls[i];
    ctrlalign:=GetControlAlignOf(control);
    ctrlsize :=Point(control.Width,control.Height);
    if ctrlalign=faNone then
    begin
      maxright :=Max(maxright ,control.Left+ctrlsize.X);
      maxbottom:=Max(maxbottom,control.Top+ctrlsize.Y);
    end
    else
    begin
      if ctrlalign in faFreeWidthSet then
        Inc(totalwidth,ctrlsize.X);
      if ctrlalign in faFreeHeightSet then
        Inc(totalheight,ctrlsize.Y);
    end;    
  end;
  //
  clirect:=GetClientRect;
  Dec(maxright,clirect.Left);
  Dec(maxbottom,clirect.Top);
  totalwidth :=Max(totalwidth ,maxright);
  totalheight:=Max(totalheight,maxbottom);
  //
  if (Align in faSlaveWidthSet) or (totalwidth=0) then
    totalwidth:=RectWidth(clirect);
  if (Align in faSlaveHeightSet) or (totalheight=0) then
    totalheight:=RectHeight(clirect);
  // incremento das bordas, margens e etc.
  aSize.X:=(Width-RectWidth(clirect))+totalwidth;
  aSize.Y:=(Height-RectHeight(clirect))+totalheight;
end;

// margens externas em pixels
function TRLCustomSite.CalcMarginalPixels:TRect;
begin
  Result.Left  :=Round(ScreenPPI*fMargins.LeftMargin  /InchAsMM);
  Result.Top   :=Round(ScreenPPI*fMargins.TopMargin   /InchAsMM);
  Result.Right :=Round(ScreenPPI*fMargins.RightMargin /InchAsMM);
  Result.Bottom:=Round(ScreenPPI*fMargins.BottomMargin/InchAsMM);
end;

// retangulo interno as margens
function TRLCustomSite.CalcMarginalRect:TRect;
begin
  Result:=ReduceRect(CalcEffectiveRect,CalcMarginalPixels);
end;

function TRLCustomSite.CalcBordersPixels:TRect;
var
  w,h:integer;
begin
  Result:=Rect(0,0,0,0);
  if fBorders.Width>0 then
  begin
    w:=fBorders.Width;
    h:=fBorders.Width;
    if fBorders.CanDrawLeft then
      Inc(Result.Left,w);
    if fBorders.CanDrawTop then
      Inc(Result.Top,h);
    if fBorders.CanDrawRight then
      Inc(Result.Right,w);
    if fBorders.CanDrawBottom then
      Inc(Result.Bottom,h);
  end;
end;

// retangulo interno as bordas
function TRLCustomSite.CalcBordersRect:TRect;
begin
  Result:=ReduceRect(CalcMarginalRect,CalcBordersPixels);
end;

function TRLCustomSite.CalcClientPixels:TRect;
begin
  Result.Left  :=Round(ScreenPPI*fInsideMargins.LeftMargin  /InchAsMM);
  Result.Top   :=Round(ScreenPPI*fInsideMargins.TopMargin   /InchAsMM);
  Result.Right :=Round(ScreenPPI*fInsideMargins.RightMargin /InchAsMM);
  Result.Bottom:=Round(ScreenPPI*fInsideMargins.BottomMargin/InchAsMM);
end;

// retangulo livre de bordas e margens para desenho interno ou posicionamento de controls
function TRLCustomSite.GetClientRect:TRect;
begin
  Result:=ReduceRect(CalcBordersRect,CalcClientPixels);
end;

function TRLCustomSite.CalcPrintBoundsRect:TRect;
begin
  Result:=Rect(fPrintPosition.X,fPrintPosition.Y,fPrintPosition.X+fPrintSize.X,fPrintPosition.Y+fPrintSize.Y);
end;

function TRLCustomSite.CalcPrintSizeRect:TRect;
begin
  Result:=CalcPrintBoundsRect;
  MoveRect(Result,0,0);
end;

function TRLCustomSite.CalcPrintWastedPixels:TRect;
begin
  Result:=DiffRect(CalcPrintSizeRect,CalcPrintClientRect);
end;

function TRLCustomSite.CalcPrintWastedPixelsSum:TRect;
var
  p:TRLCustomPager;
  w:TRect;
begin
  Result:=CalcPrintWastedPixels;
  p:=FindParentPager;
  if p<>nil then
  begin
    w:=p.CalcPrintWastedPixelsSum;
    Inc(Result.Left  ,w.Left);
    Inc(Result.Top   ,w.Top);
    Inc(Result.Right ,w.Right);
    Inc(Result.Bottom,w.Bottom);
  end;
end;

// espacos perdidos em pixels de tela 
function TRLCustomSite.CalcWastedPixels:TRect;
begin
  Result:=DiffRect(CalcSizeRect,GetClientRect);
end;

function TRLCustomSite.CanPrint:boolean;
begin
  fCouldPrint:=Visible and not (stPrinting in fControlState);
  if fCouldPrint then
    DoBeforePrint(fCouldPrint);
  Result:=fCouldPrint;
end;

function TRLCustomSite.CalcPrintMarginalPixels:TRect;
begin
  Result:=CalcMarginalPixels;
end;

function TRLCustomSite.CalcPrintMarginalRect:TRect;
var
  m:TRect;
begin
  Result:=CalcPrintSizeRect;
  m     :=CalcPrintMarginalPixels;
  Inc(Result.Left  ,m.Left  );
  Inc(Result.Top   ,m.Top   );
  Dec(Result.Right ,m.Right );
  Dec(Result.Bottom,m.Bottom);
end;

function TRLCustomSite.CalcPrintBordersPixels:TRect;
begin
  Result:=CalcBordersPixels;
end;

function TRLCustomSite.CalcPrintBordersRect:TRect;
begin
  Result:=ReduceRect(CalcPrintMarginalRect,CalcPrintBordersPixels);
end;

function TRLCustomSite.CalcPrintClientPixels:TRect;
begin
  Result:=CalcClientPixels;
end;

function TRLCustomSite.CalcPrintClientRect:TRect;
begin
  Result:=ReduceRect(CalcPrintBordersRect,CalcPrintClientPixels);
end;

function TRLCustomSite.CalcGlobalPrintPosition:TPoint;
var
  p:TRLCustomSite;
begin
  Result:=fPrintPosition;
  p:=FindParentSite;
  if p<>nil then
    with p.CalcGlobalPrintPosition do
    begin
      Inc(Result.x,x);
      Inc(Result.y,y);
    end;
end;

procedure TRLCustomSite.SetClientRect(const aValue:TRect);
begin
  BoundsRect:=IncreaseRect(aValue,CalcWastedPixels);
end;

procedure TRLCustomSite.SetBounds(aLeft,aTop,aWidth,aHeight:integer);
begin
  inherited SetBounds(aLeft,aTop,aWidth,aHeight);
  //
  fPrintSize.X:=Width;
  fPrintSize.Y:=Height;
end;

procedure TRLCustomSite.SetBackground(const aValue:TRLBackground);
begin
  fBackground:=aValue;
  fBackground.ParentSite:=Self;
  Invalidate;
end;

procedure TRLCustomSite.SetDegrade(const aValue:TRLDegradeEffect);
begin
  fDegrade:=aValue;
  Invalidate;
end;

procedure TRLCustomSite.SetInsideMargins(const aValue:TRLMargins);
begin
  fInsideMargins.Assign(aValue);
  Invalidate;
end;

procedure TRLCustomSite.SetMargins(const aValue:TRLMargins);
begin
  fMargins.Assign(aValue);
  Invalidate;
end;

procedure TRLCustomSite.Loaded;
begin
  inherited;
  //
  AdjustBounds;
  AlignControls(ClientRect);
end;

procedure TRLCustomSite.InternalMeasureHeight;
var
  c:TControl;
  i:integer;
begin
  for i:=0 to ControlCount-1 do
  begin
    c:=ControlWithin(Controls[i]);
    if c is TRLCustomControl then
      TRLCustomControl(c).MeasureHeight;
  end;
  //
  inherited;
end;

{ TRLCustomPanel }

constructor TRLCustomPanel.Create(aOwner: TComponent);
begin
  inherited Create(aOwner);
  // customization
  Width      :=64;
  Height     :=32;
  AutoSizeDir:=[asWidthDir,asHeightDir];
end;

procedure TRLCustomPanel.DrawBounds;
var
  r:TRect;
begin
  r:=CalcSizeRect;
  with Canvas do
  begin
    Pen.Color:=clBlack;
    Pen.Style:=psSolid;
    Pen.Mode :=pmCopy;
    MoveTo(r.Left   ,r.Top+5   ); LineTo(r.Left   ,r.Top     ); LineTo(r.Left +5,r.Top     );
    MoveTo(r.Right-5,r.Top     ); LineTo(r.Right-1,r.Top     ); LineTo(r.Right-1,r.Top+5   );
    MoveTo(r.Right-1,r.Bottom-5); LineTo(r.Right-1,r.Bottom-1); LineTo(r.Right-5,r.Bottom-1);
    MoveTo(r.Left +5,r.Bottom-1); LineTo(r.Left   ,r.Bottom-1); LineTo(r.Left   ,r.Bottom-5);
  end;
end;

{ TRLCustomBandSet }

constructor TRLCustomBandSet.Create(aOwner: TComponent);
begin
  fBandSets:=nil;
  //
  fBandSets:=TList.Create;
  //
  inherited;
end;

destructor TRLCustomBandSet.Destroy;
begin
  FreeObj(fBandSets);
  //
  inherited;
end;

procedure TRLCustomBandSet.SurfaceOpened;
var
  p:TRLCustomBandSet;
begin
  inherited;
  //
  fBandSets.Clear;
  p:=FindParentBandSet;
  if Assigned(p) then
    p.AddBandSet(Self);
end;

procedure TRLCustomBandSet.SurfaceClosed;
begin
  inherited;
  //
  fBandSets.Clear;
end;

procedure TRLCustomBandSet.SurfaceBeginDraw;
begin
  inherited;
  //
  if (Self is TRLBand) or (Self is TRLDetailGrid) then
    PrintNonStatics;
end;

function TRLCustomBandSet.FindParentBandSet:TRLCustomBandSet;
var
  w:TControl;
begin
  w:=Parent;
  while (w<>nil) and not (w is TRLCustomBandSet) do
    w:=w.Parent;
  Result:=TRLCustomBandSet(w);
end;

function TRLCustomBandSet.CountBandSet(aBandSet: TRLCustomBandSet): integer;
var
  i:integer;
begin
  Result:=0;
  for i:=0 to fBandSets.Count-1 do
    if fBandSets[i]=aBandSet then
      Inc(Result);
end;

procedure TRLCustomBandSet.AddBandSet(aBandSet: TRLCustomBandSet);
begin
  fBandSets.Add(aBandSet);
end;

function TRLCustomBandSet.BandSetCount: integer;
var
  p:TRLCustomBandSet;
begin
  p:=FindParentBandSet;
  if Assigned(p) then
    Result:=p.CountBandSet(Self)
  else
    Result:=0;
end;

function TRLCustomBandSet.IsFirstBandSet: boolean;
begin
  Result:=(BandSetCount=1);
end;

{ TRLCustomBand }

constructor TRLCustomBand.Create(aOwner:TComponent);
begin
  // initialization
  fBandType      :=btDetail;
  fComputable    :=True;
  fPageBreaking  :=pbNone;
  fCompletion    :=ctNone;
  fAlignToBottom :=False;
  fCarbonCopies  :=1;
  fCarbonIndex   :=0;
  fGroupIndex    :=0;
  fIntegralHeight:=True;
  // objects
  inherited Create(aOwner);
  // customization
  fAlign     :=faTop;
  fAutoExpand:=True;
  AutoSizeDir:=[asHeightDir];
  //
  Height:=16;
  Width :=185;
end;

function TRLCustomBand.HeightFits(aHeight:integer; var aAvailable:integer):boolean;
var
  pager:TRLCustomPager;
  footr:integer;
  pgrow:integer;
begin
  pager     :=RequestParentPager;
  // excedeu a �ltima linha para bands de dados?
  footr     :=pager.GetRelativeFooterRow;
  pgrow     :=pager.RelativePagerRow;
  aAvailable:=footr-pgrow; /// consider columnfooterrow?
  Result    :=(aHeight<=aAvailable);
end;

procedure TRLCustomBand.ThrowSurface;
var
  destsurface:TRLGraphicSurface;
  destrect   :TRect;
  srcrect    :TRect;
  fullrect   :TRect;
  report     :TRLCustomReport;
  pager      :TRLCustomPager;
  vertspace  :integer;
  totalcut   :integer;
  cutheight  :integer;
  cutwidth   :integer;
  freerow    :integer;
  function CounterExceeds:boolean;
  begin
    Result:=(pager.MaxBands>0) and (pager.DetailsInSurface+1>pager.MaxBands) and not Completing;
  end;
begin
  report     :=RequestParentReport;
  pager      :=RequestParentPager;
  destsurface:=RequestParentSurface;
  // checa se � preciso saltar a p�gina antes de imprimir esta band
  if (IsDataBand and report.NewPageNeeded) or                     // se o �ltimo controle impresso recomendou que o salto fosse feito na pr�xima band de dados
     ((PageBreaking=pbBeforePrint) and report.DataBandPrinted) or // se a quebra deve ser feita antes desta band e j� foi impresso algum detalhe
     ((BandType=btDetail) and CounterExceeds) then                // se esta band excede o m�ximo previsto 
    pager.InternalNewPage(Self,not pager.IsSatisfied);
  // bands alinhadas ao rodap� da p�gina (footers s�o sempre alinhados)            
  if AlignToBottom or (BandType in [btFooter]) then
    case BandType of
      btFooter      : pager.GoFooterRow;
      btSummary     : if not pager.GoSummaryRow then
                      begin
                        pager.InternalNewPage(Self,not pager.IsSatisfied);
                        pager.GoSummaryRow;
                      end;
      btColumnFooter: if not pager.GoColumnFooterRow then
                      begin
                        pager.InternalNewPage(Self,not pager.IsSatisfied);
                        pager.GoColumnFooterRow;
                      end;
    end;
  MarkPrintPosition;
  //
  totalcut :=0;
  cutheight:=fPrintSize.Y;
  cutwidth :=fPrintSize.X;
  while totalcut<fPrintSize.Y do
  begin
    cutheight:=fPrintSize.Y-totalcut;
    // se a band tem obrigatoriamente que ser impressa nesta p�gina...
    if BandType in [btFooter,btColumnFooter] then
    // se a band (ou peda�o) couber na p�gina...
    else if HeightFits(cutheight,vertspace) then
    // se n�o puder dividir a band ou o peda�o que couber for menor que o tamanho m�nimo...
    else if IntegralHeight or (vertspace<Constraints.MinHeight) then
      VerticalExceeded
    else if not IntegralHeight then
      if Surface.FindFreeRow(totalcut+vertspace,freerow) and (freerow>=Constraints.MinHeight) and (freerow>totalcut) then
        cutheight:=freerow-totalcut
      else
        VerticalExceeded
    else
      cutheight:=vertspace;
    // tamanho da band descontando o peda�o j� impresso
    srcrect :=Rect(0,totalcut,fPrintSize.X,totalcut+cutheight);
    destrect:=srcrect;
    MoveRect(destrect,fPrintPosition.X,fPrintPosition.Y);
    //
    if Enabled then
    begin
      destsurface.SetClipRect(destrect);
      try
        fullrect:=Rect(fPrintPosition.X,fPrintPosition.Y-totalcut,fPrintPosition.X+fPrintSize.X,fPrintPosition.Y-totalcut+fPrintSize.Y);
        PrepareBackgroundSurface(destsurface,fullrect);
      finally
        destsurface.ResetClipRect;
      end;
    end;
    destsurface.CopyRect(destrect,Surface,srcrect);
    //
    Inc(totalcut,RectHeight(srcrect));
    if totalcut<fPrintSize.Y then
      VerticalExceeded;
  end;
  //
  SkipToNextPosition(cutwidth,cutheight);
end;

procedure TRLCustomBand.VerticalExceeded;
begin
  // move para a pr�xima p�gina
  RequestParentPager.InternalNewPage(Self,False);
  MarkPrintPosition;
end;

procedure TRLCustomBand.SkipToNextPosition(aWidth,aHeight:integer);
begin
  with RequestParentPager do
    RelativePagerRow:=RelativePagerRow+aHeight;
end;

procedure TRLCustomBand.CheckPageBreak;
var
  vertspace:integer;
begin
  // se a band tem obrigatoriamente que ser impressa nesta p�gina...
  if BandType in [btFooter,btColumnFooter] then
  // se a band couber na p�gina...
  else if HeightFits(fPrintSize.Y,vertspace) then
  // se n�o puder dividir a band ou o peda�o que couber for menor que o tamanho m�nimo...
  else if IntegralHeight or (vertspace<Constraints.MinHeight) then
    VerticalExceeded;
end;

procedure TRLCustomBand.SurfaceClosed;
begin
  inherited;
  //
  if (BandType=btDetail) and Computable then
    with RequestParentPager do
      DetailsInSurface:=DetailsInSurface+1;
  if PageBreaking=pbAfterPrint then
    RequestParentReport.InvalidatePage;
end;

function TRLCustomBand.GetBandTypeName:string;
begin
  Result:=BandTypeNames[fBandType];
end;

procedure TRLCustomBand.InternalPaintFinish;
var
  p:TRLCustomReport;
begin
  inherited;
  //
  p:=FindParentReport;
  if not Assigned(p) or p.ShowDesigners then
    Signup(GetBandTypeName+' '+Name);
end;

procedure TRLCustomBand.NotifyDataBandPrinted;
var
  p:TRLCustomPager;
begin
  p:=FindParentPager;
  while p<>nil do
  begin
    p.DataBandPrinted:=True;
    p:=p.FindParentPager;
  end;
end;

function TRLCustomBand.IsDataBand:boolean;
begin
  Result:=(BandType in [btDetail,btSummary]) and not IsBallast;
end;  

procedure TRLCustomBand.InternalPrint;
var
  compute:boolean;
  dataprt:boolean;
begin
  // se for detail comput�vel deve computar o registro
  compute:=(BandType=btDetail) and Computable and not IsBallast;
  // se for band de dados, deve setar o flag de dados impressos
  dataprt:=compute or (BandType=btSummary);
  // computa o registro nos controles da pr�pria band
  if compute then
    Self.ComputeDetail(Self);
  //
  inherited;
  // computa o registro para o pager
  if compute then
    RequestParentPager.ComputeDetail(Self);
  // seta flag de dados impressos
  if dataprt then
    NotifyDataBandPrinted;
end;

procedure TRLCustomBand.MarkPrintPosition;
begin
  fPrintPosition.x:=Left;
  fPrintPosition.y:=RequestParentPager.RelativePagerRow;
  fPrintSize.x    :=Width;
  fPrintSize.y    :=Height;
end;

procedure TRLCustomBand.SetBandType(const aValue:TRLBandType);
begin
  if aValue=fBandType then
    Exit;
  fBandType:=aValue;
  //
  Realign;
  Invalidate;
end;

procedure TRLCustomBand.AdjustCarbonGroup;
var
  p:TRLCustomSite;
  b:TControl;
  i:integer;
begin
  if fGroupIndex>0 then
  begin
    p:=FindParentSite;
    if p=nil then
      Exit;
    for i:=0 to p.ControlCount-1 do
    begin
      b:=p.Controls[i];
      if (b is TRLCustomBand) and not (b=Self) and (TRLCustomBand(b).GroupIndex=fGroupIndex) then
        TRLCustomBand(b).fCarbonCopies:=fCarbonCopies;
    end;
  end;
end;

procedure TRLCustomBand.AdjustFromCarbonGroup;
var
  p:TRLCustomSite;
  b:TControl;
  i:integer;
begin
  if fGroupIndex>0 then
  begin
    p:=FindParentSite;
    if p=nil then
      Exit;
    for i:=0 to p.ControlCount-1 do
    begin
      b:=p.Controls[i];
      if (b is TRLCustomBand) and not (b=Self) and (TRLCustomBand(b).GroupIndex=fGroupIndex) then
      begin
        fCarbonCopies:=TRLCustomBand(b).CarbonCopies;
        Break;
      end;
    end;
  end;
end;

procedure TRLCustomBand.SetCarbonCopies(const aValue:integer);
begin
  if aValue=fCarbonCopies then
    Exit;
  if aValue<1 then
    fCarbonCopies:=1
  else
    fCarbonCopies:=aValue;
  AdjustCarbonGroup;
end;

procedure TRLCustomBand.SetGroupIndex(const aValue:integer);
begin
  if aValue=fGroupIndex then
    Exit;
  if aValue<0 then
    fGroupIndex:=0
  else
    fGroupIndex:=aValue;
  AdjustFromCarbonGroup;
end;

function TRLCustomBand.GetCompleting:boolean;
var
  pager:TRLCustomPager;
begin
  pager :=FindParentPager;
  Result:=(pager<>nil) and (psCompleting in pager.PagerStatus);
end;

{ TRLCustomDetailGrid }

constructor TRLCustomDetailGrid.Create(aOwner:TComponent);
begin
  fBandType    :=btDetail;
  fColIndex    :=0;
  fColCount    :=1;
  fColSpacing  :=0;
  fColWidth    :=0;
  fRowIndex    :=0;
  fOrganization:=goInRows;
  //
  inherited Create(aOwner);
end;

procedure TRLCustomDetailGrid.Initialize;
begin
  inherited;
  //
  fColIndex:=0;
  fRowIndex:=0;
end;

function TRLCustomDetailGrid.GetClientCellRect(aColIndex,aRowIndex:integer):TRect;
var
  w,ws,h:integer;
  r:TRect;
begin
  r:=CalcSizeRect;
  //
  ws:=Round(fColSpacing*ScreenPPI/InchAsMM);
  if fColCount>0 then
    if fColWidth>0 then
      w:=Round(fColWidth*ScreenPPI/InchAsMM)
    else
      w:=Round((RectWidth(r)-(fColCount-1)*ws)/fColCount)
  else
    w:=r.Right-r.Left;
  //
  h:=r.Bottom-r.Top;
  //
  Result.Left  :=aColIndex*(w+ws);
  Result.Top   :=aRowIndex*h;
  Result.Right :=Result.Left+w;
  Result.Bottom:=Result.Top+h;
end;

procedure TRLCustomDetailGrid.DrawClient;
  procedure DrawBall(aRect:TRect; const aCaption:string);
  var
    tw,th,d:integer;
    t      :TRect;
  begin
    with Canvas do
    begin
      Pen.Style  :=psSolid;
      Pen.Color  :=clBlue;
      Pen.Mode   :=pmCopy;
      Brush.Style:=bsClear;
      with Font do
      begin
        Name :='Small Fonts';
        Size :=6;
        Style:=[];
        Color:=clBlue;
      end;
      tw:=TextWidth(' '+aCaption+' ');
      th:=TextHeight(aCaption);
      if tw>th then
        d:=tw
      else
        d:=th;
      // text rect
      t:=aRect;
      t.Right:=t.Left  +d+2;
      t.Top  :=t.Bottom-d-2;
      TextOut((t.Left+t.Right-tw) div 2,(t.Top+t.Bottom-th) div 2,aCaption);
      Ellipse(t.Left,t.Top,t.Right,t.Bottom);
    end;
  end;
var
  x:integer;
  r:TRect;
begin
  inherited;
  //
  x:=0;
  repeat
    r:=GetClientCellRect(x,0);
    DrawFrame(r,clGray,True);
    DrawBall(r,IntToStr(x+1));
    Inc(x);
  until not (x<fColCount);
end;

function TRLCustomDetailGrid.CalcEffectiveRect:TRect;
begin
  Result:=CalcSizeRect;
  with GetClientCellRect(0,0) do
  begin
    Result.Right :=Result.Left+(Right-Left);
    Result.Bottom:=Result.Top +(Bottom-Top);
  end;  
end;

procedure TRLCustomDetailGrid.VerticalExceeded;
begin
  // se a organiza��o � em colunas, passa para a pr�xima coluna
  if fOrganization=goInColumns then
  begin
    Inc(fColIndex);
    if fColIndex>fColCount-1 then
    begin
      with RequestParentPager do
      begin
        InternalNewPage(Self,False);
        fTopRow   :=RelativePagerRow;
        fBottomRow:=fTopRow;
      end;
      fColIndex:=0;
    end;
  end
  else
    with RequestParentPager do
    begin
      InternalNewPage(Self,False);
      fTopRow   :=RelativePagerRow;
      fBottomRow:=fTopRow;
    end;
  fRowIndex:=0;
  //
  MarkPrintPosition;
end;

procedure TRLCustomDetailGrid.SkipToNextPosition(aWidth,aHeight:integer);
begin
  case fOrganization of
    goInRows   : begin
                   Inc(fColIndex);
                   if fColIndex>fColCount-1 then
                   begin
                     Inc(fRowIndex);
                     fColIndex:=0;
                   end;
                 end;
    goInColumns: Inc(fRowIndex);
  end;
end;

procedure TRLCustomDetailGrid.SurfaceOpening;
begin
  if (fColIndex=0) and (fRowIndex=0) then
  begin
    fTopRow   :=RequestParentPager.RelativePagerRow;
    fBottomRow:=fTopRow;
  end;
end;

procedure TRLCustomDetailGrid.SurfaceClosed;
begin
  inherited;
  //
  RequestParentPager.RelativePagerRow:=fBottomRow;
end;

procedure TRLCustomDetailGrid.MarkPrintPosition;
var
  cellrect:TRect;
  avail   :integer;
begin
  cellrect        :=GetClientCellRect(fColIndex,fRowIndex);
  fPrintPosition.x:=Left+cellrect.Left;
  fPrintPosition.y:=fTopRow+cellrect.Top;
  fPrintSize.x    :=RectWidth(cellrect);
  fPrintSize.y    :=RectHeight(cellrect);
  //
  if HeightFits(fPrintSize.y,avail) then
    fBottomRow:=Max(fBottomRow,fTopRow+cellrect.Bottom)
  else if not IntegralHeight then  
    fBottomRow:=Max(fBottomRow,fTopRow+cellrect.Top+avail);
end;

function TRLCustomDetailGrid.HeightFits(aHeight:integer; var aAvailable:integer):boolean;
var
  pagerrow:integer;
  pager   :TRLCustomPager;
begin
  pager     :=RequestParentPager;
  // excedeu a �ltima linha para bands de dados?
  pagerrow  :=fTopRow+GetClientCellRect(fColIndex,fRowIndex).Top;
  aAvailable:=pager.GetRelativeFooterRow-pagerrow; /// consider columnfooterrow?
  Result    :=(aHeight<=aAvailable);
end;

function TRLCustomDetailGrid.GetBandTypeName:string;
begin
  Result:='DetailGrid';
end;

procedure TRLCustomDetailGrid.SetColCount(const aValue:integer);
begin
  if aValue=fColCount then
    Exit;
  if aValue<1 then
    fColCount:=1
  else
    fColCount:=aValue;
  RealignControls;
  Invalidate;
end;

procedure TRLCustomDetailGrid.SetColSpacing(const aValue:double);
begin
  if aValue=fColSpacing then
    Exit;
  fColSpacing:=aValue;
  RealignControls;
  Invalidate;
end;

procedure TRLCustomDetailGrid.SetColWidth(const aValue:double);
begin
  if aValue=fColWidth then
    Exit;
  fColWidth:=aValue;
  RealignControls;
  Invalidate;
end;

function TRLCustomDetailGrid.IsManyCols:boolean;
begin
  Result:=(fColCount>1);
end;

{ TRLCustomPager }

constructor TRLCustomPager.Create(aOwner:TComponent);
begin
  // initialization
  fAllowedBands     :=[];
  fDetailCount      :=0;
  fMaxBands         :=0;
  fMinBands         :=0;
  fRelativePagerRow :=0;
  fDetailsInSurface :=0;
  fNewPageNeeded    :=False;
  fPageBreaking     :=pbNone;
  fJumpPending      :=False;
  fJumpLength       :=0;
  fNewPageCaller    :=nil;
  fForceMinBands    :=False;
  fFooterMeasuring  :=fmNone;
  fDataBandPrinted  :=False;
  fPagerStatus      :=[];
  // objects
  fSortedBands:=TRLSortedBands.Create;
  //
  inherited Create(aOwner);
  // customization
  fAlign     :=faTop;
  AutoSizeDir:=[asHeightDir];
end;

destructor TRLCustomPager.Destroy;
begin
  FreeObj(fSortedBands);
  //
  inherited;
end;

function TRLCustomPager.CreateChild(aType:TRLBandType):TRLCustomBand;
begin
  Result:=FindChild(aType);
  if Result<>nil then
    Exit;
  Result:=TRLBand.Create(Owner);
  with Result do
  begin
    Parent:=Self;
    if Self is TRLCustomReport then
      Align:=faTop
    else
      case aType of
        btHeader,
        btTitle,
        btColumnHeader: Align:=faTop;
        btDetail      : Align:=faClient;
        btSummary,
        btColumnFooter,
        btFooter      : Align:=faBottom;
      end;
    BandType:=aType;
    Height  :=20;
    Name    :=NewComponentName(Result);
  end;
end;

function TRLCustomPager.FindChild(aType:TRLBandType):TRLCustomBand;
var
  i:integer;
begin
  Result:=nil;
  for i:=0 to ControlCount-1 do
    if (Controls[i] is TRLCustomBand) and (TRLCustomBand(Controls[i]).BandType=aType) then
    begin
      Result:=TRLCustomBand(Controls[i]);
      Break;
    end;
end;

procedure TRLCustomPager.KillChild(aType:TRLBandType);
var
  b:TRLCustomBand;
begin
  b:=FindChild(aType);
  FreeObj(b);
end;

procedure TRLCustomPager.Notification(aComponent:TComponent; Operation:TOperation);
begin
  inherited;
  //
  if ((aComponent is TRLCustomBand) and (TRLCustomBand(aComponent).Parent=Self)) or
     ((aComponent is TRLCustomPager) and (TRLCustomBand(aComponent).Parent=Self)) then
    case Operation of
      opInsert: Include(fAllowedBands,TRLCustomBand(aComponent).BandType);
      opRemove: Exclude(fAllowedBands,TRLCustomBand(aComponent).BandType);
    end;
end;

procedure TRLCustomPager.InternalNewPage(aCaller:TObject; aMoveOnly:boolean=False);
var
  savedcaller:TObject;
begin
  savedcaller   :=fNewPageCaller;
  fNewPageCaller:=aCaller;
  try
    // moveonly=True significa que o pager n�o vai se dividir entre a p�gina atual e a pr�xima
    if aMoveOnly then
    else
      CloseSurface;
    if (Parent<>nil) and (Parent is TRLCustomPager) then
      TRLCustomPager(Parent).InternalNewPage(aCaller);
    if aMoveOnly then
      MarkPrintPosition
    else
      OpenSurface;
  finally
    fNewPageCaller:=savedcaller;
  end;
end;

procedure TRLCustomPager.SurfaceOpening;
begin
  inherited;
  //
  PushBoundsRect;
  InitializePageInfo;
  SortedBands.ResetPage;
end;

procedure TRLCustomPager.SurfaceBeginDraw;
begin
  inherited;
  //
  PrintHeaders;
end;

procedure TRLCustomPager.SurfaceEndDraw;
begin
  PrintFooters;
  //
  inherited;
end;

procedure TRLCustomPager.TruncateSurface;
begin
  Inc(fRelativePagerRow,CalcPrintWastedPixels.Bottom);
  if AutoTrunc then
    fPrintSize.y:=fRelativePagerRow;
end;

procedure TRLCustomPager.SurfaceClosed;
var
  p:TRLCustomPager;
begin
  inherited;
  //
  p:=FindParentPager;
  if p<>nil then
    p.RelativePagerRow:=p.RelativePagerRow+RectHeight(CalcPrintBoundsRect);
  //
  PopBoundsRect;
end;

function TRLCustomPager.PrintBands(aType:TRLBandType):TRLPrintBandResults;
var
  i,icc,qcc,savei,savedgroup:integer;
  e:TRLCustomSite;
  l:TList;
begin
  l:=SortedBands.List[aType];
  if l.Count>0 then
  begin
    i:=0;
    while i<l.Count do
    begin
      if l.Items[i]=fNewPageCaller then
      begin
        Result:=brStackExit;
        Exit;
      end;
      e:=TRLCustomSite(l.Items[i]);
      if e is TRLCustomBand then
      begin
        savedgroup:=TRLCustomBand(l.Items[i]).GroupIndex;
        savei     :=i;
        qcc       :=TRLCustomBand(l.Items[i]).CarbonCopies;
        icc       :=0;
        while icc<qcc do
        begin
          i:=savei;
          while (i<l.Count) and (TRLCustomBand(l.Items[i]).GroupIndex=savedgroup) do
          begin
            TRLCustomBand(l.Items[i]).CarbonIndex:=icc;
            PrintBand(TRLCustomBand(l.Items[i]));
            Inc(i);
            if savedgroup=0 then
              Break;
          end;
          Inc(icc);
        end;
      end
      else if e is TRLCustomSubDetail then
      begin
        PrintSite(e);
        Inc(i);
      end;
    end;
    SortedBands.Printed[aType]:=True;
    Result:=brPrinted;
  end
  else
    Result:=brNoBands;
end;

procedure TRLCustomPager.PrintBand(aBand:TRLCustomBand);
begin
  with aBand do
  begin
    // save all bounds
    PushBoundsRect;
    PushBoundsAllFrom(aBand);
    //
    if Visible then
    begin
      if not (boOptimisticPageBreak in Options) then
        CheckPageBreak;
      if CanPrint then
      begin
        AdjustBounds;
        Print;
        DoAfterPrint;
      end;
    end;  
    // restore all bounds
    PopBoundsAllFrom(aBand);
    PopBoundsRect;
  end;
end;

procedure TRLCustomPager.PrintDetails;
begin
  if fFooterMeasuring=fmBeforeDetail then
    MeasureFooters;
  PrintPagers(TRLCustomGroup);
  if PrintBands(btDetail)=brStackExit then
    Exit;
end;

procedure TRLCustomPager.PrintSite(aSite:TRLCustomSite);
begin
  with aSite do
    if CanPrint then
    begin
      AdjustBounds;
      Print;
      DoAfterPrint;
    end;
end;

procedure TRLCustomPager.PrintPagers(aClass:TRLPagerClassType);
var
  i:integer;
begin
  for i:=0 to ControlCount-1 do
    if Controls[i] is aClass then
      PrintSite(TRLCustomSite(Controls[i]));
end;

procedure TRLCustomPager.PrintEmptySkippers;
var
  i:integer;
begin
  for i:=0 to ControlCount-1 do
    if Controls[i] is TRLCustomSkipper then
      if TRLCustomSkipper(Controls[i]).PrintEmpty then
        PrintSite(TRLCustomSkipper(Controls[i]));
end;

procedure TRLCustomPager.PrintHeaders;
begin
  if not Enabled then
    Exit;
  if not SortedBands.Printed[btHeader] then
    if PrintBands(btHeader)=brStackExit then
      Exit;
  if not SortedBands.Printed[btTitle] then
    if PrintBands(btTitle)=brStackExit then
      Exit;
  if not SortedBands.Printed[btColumnHeader] then
    if PrintBands(btColumnHeader)=brStackExit then
      Exit;
  if fFooterMeasuring=fmAfterHeader then
    MeasureFooters;
end;

procedure TRLCustomPager.PrintFooters(aSummarize:boolean=False);
begin
  if not Enabled then
    Exit;
  if not SortedBands.Printed[btColumnFooter] then
    if PrintBands(btColumnFooter)=brStackExit then
      Exit;
  if aSummarize then
    if not SortedBands.Printed[btSummary] then
      if PrintBands(btSummary)=brStackExit then
        Exit;
  if not SortedBands.Printed[btFooter] then
    if PrintBands(btFooter)=brStackExit then
      Exit;
end;

procedure TRLCustomPager.PrintCompletion;
var
  i,iHeight,iLast:integer;
  l:TList;
  b:TRLCustomBand;
begin
  Include(fPagerStatus,psCompleting);
  try
    l:=SortedBands.List[btDetail];
    if l.Count=0 then
      Exit;
    // encontra a band que ser� utilizada para completar a p�gina  
    b:=nil;
    for i:=0 to l.Count-1 do
      if TObject(l.Items[i]) is TRLCustomBand then
        with TRLCustomBand(l.Items[i]) do
          if (Completion<>ctNone) and Computable then
          begin
            b:=TRLCustomBand(l.Items[i]);
            Break;
          end;
    if b=nil then
      Exit;
    case b.Completion of
      ctMinBands: while fDetailsInSurface<fMinBands do
                    PrintBand(b);
      ctMaxBands: while fDetailsInSurface<fMaxBands do
                    PrintBand(b);
      ctFullPage: begin
                    iHeight:=RectHeight(b.CalcPrintBoundsRect);
                    iLast  :=GetRelativeColumnFooterRow;
                    while not (fRelativePagerRow+iHeight>=iLast) do
                      if (fMaxBands>0) and not (fDetailsInSurface<fMaxBands) then
                        Break
                      else
                        PrintBand(b);
                  end;
    end;
  finally
    Exclude(fPagerStatus,psCompleting);
  end;
end;

procedure TRLCustomPager.SortBands;
var
  i:integer;
  c:TControl;
begin
  SortedBands.Clear;
  for i:=0 to ControlCount-1 do
  begin
    c:=ControlWithin(Controls[i]);
    if c is TRLCustomBand then
      SortedBands.Add(TRLCustomBand(c))
    else
    begin
      if c is TRLCustomSubDetail then
        SortedBands.Add(TRLCustomSubDetail(c));
      if c is TRLCustomPager then
        TRLCustomPager(c).SortBands;
    end;    
  end;
end;

function TRLCustomPager.GoFooterRow:boolean;
var
  r:integer;
begin
  if not AutoTrunc then
  begin
    r     :=GetRelativeFooterRow;
    Result:=(fRelativePagerRow<r);
    if Result then
      fRelativePagerRow:=r;
  end
  else
    Result:=False;
end;

function TRLCustomPager.GoSummaryRow:boolean;
var
  r:integer;
begin
  r:=GetRelativeSummaryRow;
  Result:=fRelativePagerRow<r;
  if Result then
    fRelativePagerRow:=r;
end;

function TRLCustomPager.GoColumnFooterRow:boolean;
var
  r:integer;
begin
  r:=GetRelativeColumnFooterRow;
  Result:=fRelativePagerRow<r;
  if Result then
    fRelativePagerRow:=r;
end;

procedure TRLCustomPager.MeasureFooters;
var
  l:TList;
  i:integer;
begin
  l:=SortedBands.List[btFooter];
  for i:=0 to l.Count-1 do
    if TObject(l.Items[i]) is TRLCustomBand then
      TRLCustomBand(l.Items[i]).MeasureHeight;
  if (Parent<>nil) and (Parent is TRLCustomPager) then
    TRLCustomPager(Parent).MeasureFooters;
end;

function TRLCustomPager.GetFooterHeight:integer;
var
  l:TList;
  i:integer;
begin
  Result:=0;
  l:=SortedBands.List[btFooter];
  for i:=0 to l.Count-1 do
    if TObject(l.Items[i]) is TRLCustomBand then
      with TRLCustomBand(l.Items[i]) do
        if Visible then
          Inc(Result,Height);
end;

function TRLCustomPager.GetFooterHeightSum:integer;
begin
  Result:=GetFooterHeight;
  if (Parent<>nil) and (Parent is TRLCustomPager) then
    Inc(Result,TRLCustomPager(Parent).GetFooterHeightSum);
end;

function TRLCustomPager.GetColumnFooterHeight:integer;
var
  i:integer;
  l:TList;
begin
  Result:=0;
  l:=SortedBands.List[btColumnFooter];
  for i:=0 to l.Count-1 do
    if TObject(l.Items[i]) is TRLCustomBand then
      with TRLCustomBand(l.Items[i]) do
        if AlignToBottom and Visible then
          Inc(Result,Height);
end;

function TRLCustomPager.GetColumnFooterHeightSum:integer;
begin
  Result:=GetColumnFooterHeight;
  if (Parent<>nil) and (Parent is TRLCustomPager) then
    Inc(Result,TRLCustomPager(Parent).GetColumnFooterHeightSum);
end;

function TRLCustomPager.GetSummaryHeightSum:integer;
begin
  Result:=GetSummaryHeight;
  if (Parent<>nil) and (Parent is TRLCustomPager) then
    Inc(Result,TRLCustomPager(Parent).GetSummaryHeightSum);
end;

function TRLCustomPager.GetSummaryHeight:integer;
var
  i:integer;
  l:TList;
begin
  Result:=0;
  l:=SortedBands.List[btSummary];
  for i:=0 to l.Count-1 do
    if TObject(l.Items[i]) is TRLCustomBand then
      with TRLCustomBand(l.Items[i]) do
        if AlignToBottom and Visible then
          Inc(Result,Height);
end;

function TRLCustomPager.GetWastedBottomSum:integer;
begin
  Result:=CalcWastedPixels.Bottom;
  if (Parent<>nil) and (Parent is TRLCustomPager) then
    Inc(Result,TRLCustomPager(Parent).GetWastedBottomSum);
end;

function TRLCustomPager.GetRelativeFooterRow:integer;
var
  report:TRLCustomReport;
  printr:TRect;
  globxy:TPoint;
  wasted:integer;
  footer:integer;
begin
  report:=RequestParentReport;
  printr:=report.CalcPrintBoundsRect;
  globxy:=CalcGlobalPrintPosition;
  wasted:=GetWastedBottomSum;
  footer:=GetFooterHeightSum;
  Result:=printr.Bottom-globxy.y-wasted-footer;
end;

function TRLCustomPager.GetRelativeSummaryRow:integer;
begin
  Result:=GetRelativeFooterRow-GetSummaryHeightSum;
end;

function TRLCustomPager.GetRelativeColumnFooterRow:integer;
begin
  Result:=GetRelativeSummaryRow-GetColumnFooterHeightSum;
end;

procedure TRLCustomPager.MarkPrintPosition;
var
  p:TRLCustomPager;
begin
  p:=FindParentPager;
  if Assigned(p) then
  begin
    fPrintPosition.x:=Left;
    fPrintPosition.y:=p.RelativePagerRow;
    fPrintSize.x    :=Width;
    if AutoTrunc then
      fPrintSize.y:=(RequestParentReport.CalcPrintBoundsRect.Bottom-CalcGlobalPrintPosition.y)-p.CalcPrintWastedPixelsSum.Bottom-p.GetFooterHeightSum
    else
      fPrintSize.y:=Height;
  end
  else
  begin
    fPrintPosition.x:=0;
    fPrintPosition.y:=0;
    fPrintSize.x    :=Width;
    fPrintSize.y    :=Height;
  end;
end;

procedure TRLCustomPager.SetAllowedBands(const aValue:TRLAllowedBands);
var
  i:TRLBandType;
begin
  if aValue=fAllowedBands then
    Exit;
  fAllowedBands:=aValue;
  if csLoading in ComponentState then
    Exit;
  //
  if csDesigning in ComponentState then
    for i:=Low(TRLBandType) to High(TRLBandType) do
      if (i in aValue) xor (i in fAllowedBands) then
        if i in aValue then
          CreateChild(i)
        else
          KillChild(i);
end;

procedure TRLCustomPager.Initialize;
begin
  inherited;
  //
  fDetailCount:=0;
  InitializePageInfo;
end;

procedure TRLCustomPager.InitializePageInfo;
begin
  fDataBandPrinted :=False;
  fDetailsInSurface:=0;
  fNewPageNeeded   :=False;
  fJumpPending     :=False;
  fJumpLength      :=0;
  fRelativePagerRow:=CalcPrintWastedPixels.Top;
end;

procedure TRLCustomPager.ComputeDetail(aCaller:TObject);
begin
  inherited;
  //
  Inc(fDetailCount);
end;

procedure TRLCustomPager.InternalBeginDoc;
begin
  SortedBands.ResetAll;
  Initialize;
end;

procedure TRLCustomPager.InvalidatePage;
begin
  fNewPageNeeded:=True;
end;

function TRLCustomPager.GetNewPageNeeded:boolean;
begin
  Result        :=fNewPageNeeded;
  fNewPageNeeded:=False;
end;

procedure TRLCustomPager.InternalEndDoc;
begin
  PrintCompletion;
  PrintFooters(True);
  CloseSurface;
end;

procedure TRLCustomPager.BeginDoc;
begin
  InternalBeginDoc;
  MarkPrintPosition;
end;

procedure TRLCustomPager.EndDoc;
begin
  InternalEndDoc;
end;

procedure TRLCustomPager.NewPage;
begin
  InternalNewPage(nil);
end;

function TRLCustomPager.IsSatisfied: boolean;
begin
  Result:=True;
  if ForceMinBands and (MinBands>0) and (DetailsInSurface<MinBands) then
    Result:=False;
  if not DataBandPrinted then
    Result:=False;
end;

{ TRLCustomGroup }

constructor TRLCustomGroup.Create(aOwner:TComponent);
begin
  // initialization
  fOnGetBreak :=nil;
  fBroken     :=False;
  fDataFields :='';
  fDataFormula:='';

  // objects
  inherited Create(aOwner);
  // customization
  fAutoTrunc :=True;
  //
  Height     :=64;
end;

procedure TRLCustomGroup.InternalPaintFinish;
var
  p:TRLCustomReport;
begin
  inherited;
  //
  p:=FindParentReport;
  if not Assigned(p) or p.ShowDesigners then
    Signup('Group '+Name);
end;

procedure TRLCustomGroup.InternalPrint;
var
  b:boolean;
  r:TRLCustomReport;
  p:TRLCustomPager;
  s:TRLCustomSkipper;
begin
  r:=RequestParentReport;
  p:=RequestParentPager;
  s:=RequestParentSkipper;
  //
  if (PageBreaking=pbBeforePrint) and Assigned(r) and r.DataBandPrinted then
  begin
    if Assigned(p) then
      p.InternalNewPage(Self,not p.IsSatisfied);
    MarkPrintPosition;
  end;
  //
  BeginDoc;
  //
  b:=True; // flag de primeira quebra
  fLastKey:=GetKey;
  while not s.DataEof and not r.Canceled do
  begin
    fBroken:=False;
    if b then
      b:=False
    else if CheckBreak then
      Break;
    s.RecordMoved:=False;
    PrintDetails;
    if fBroken then
      Break;
    if not s.RecordMoved then
      s.DataNext;
  end;
  //
  EndDoc;
  //
  if PageBreaking=pbAfterPrint then
    r.InvalidatePage;
end;

function TRLCustomGroup.GetKey:string;
var
  i:integer;
  n,k:string;
  f:tfield;
  s:TRLCustomSkipper;
begin
  s:=RequestParentSkipper;
  if Assigned(s.DataSource) and s.DataSource.DataSet.Active then
    if fDataFormula<>'' then
      Result:=FindParentReport.Parse(Self,fDataFormula)
    else if fDataFields<>'' then
    begin
      Result:='';
      n:=fDataFields;
      repeat
        i:=Pos(';',n);
        if i=0 then
          i:=Length(n)+1;
        k:=Copy(n,1,i-1);
        if k<>'' then
        begin
          f:=s.DataSource.DataSet.FindField(k);
          if f=nil then
            raise Exception.Create(LS_NotFoundStr+': '+Name+'.DataField "'+k+'"');
          Result:=Result+f.AsString;
        end;
        Delete(n,1,i);
      until n='';
    end
    else
      Result:=''
  else
    Result:='';
end;

function TRLCustomGroup.CheckBreak:boolean;
var
  key:string;
  grp:TRLCustomGroup;
begin
  Result:=False;
  if Enabled then
    if Assigned(fOnGetBreak) then
      fOnGetBreak(Self,Result)
    else
    begin
      key     :=GetKey;
      Result  :=key<>fLastKey;
      fLastKey:=key;
    end
  else
  begin
    grp:=FindParentGroup;
    if grp<>nil then
      Result:=grp.CheckBreak;
  end;
  fBroken:=Result;
end;

procedure TRLCustomGroup.ComputeDetail(aCaller:TObject);
var
  p:TRLCustomPager;
begin
  inherited;
  //
  p:=FindParentPager;
  if p<>nil then
    p.ComputeDetail(aCaller);
end;

procedure TRLCustomGroup.SetDataFields(const Value: TRLDataFieldsProperty);
begin
  fDataFields := Value;
  if fDataFields<>'' then
    fDataFormula := '';
end;

procedure TRLCustomGroup.SetDataFormula(const Value: string);
begin
  fDataFormula := Value;
  if fDataFormula<>'' then
    fDataFields := '';
end;

{ TRLCustomSkipper }

constructor TRLCustomSkipper.Create(aOwner:TComponent);
begin
  // initialization
  fRecordAction:=raUseIt;
  fDataSource  :=nil;
  fOnNeedData  :=nil;
  fOnDataCount :=nil;
  fOnDataRecord:=nil;
  fRecordMoved :=False;
  fDataEof     :=True;
  fRecNo       :=0;
  fCopyNo      :=0;
  fRecordRange :=rrAllRecords;
  fRangeCount  :=0;
  fPrintEmpty  :=False;

  // objects
  inherited Create(aOwner);
  // customization
end;

function TRLCustomSkipper.DataCount:integer;
begin
  if Assigned(fOnDataCount) then
    fOnDataCount(Self,Result)
  else if Assigned(DataSource) and Assigned(DataSource.DataSet) and DataSource.DataSet.Active then 
    Result:=DataSource.DataSet.RecordCount
  else
    Result:=0;
end;

procedure TRLCustomSkipper.DataFirst;
var
  keepon:boolean;
begin
  fRecNo :=1;
  fCopyNo:=1;
  repeat
    if Assigned(DataSource) then
      if Assigned(DataSource.DataSet) and DataSource.DataSet.Active then
      begin
        if fRecordRange=rrAllRecords then
          DataSource.DataSet.First;
        keepon:=not DataSource.DataSet.Eof;
      end
      else
        keepon:=False
    else if Assigned(fOnNeedData) then
    begin
      keepon:=False;
      fOnNeedData(Self,keepon);
    end
    else
      keepon:=False;
    if (fRecordRange=rrNextN) and (fRecNo>fRangeCount) then
      keepon:=False;
    //
    fDataEof     :=not keepon;
    fRecordAction:=raUseIt;
    if Assigned(fOnDataRecord) then
      fOnDataRecord(Self,fRecNo,fCopyNo,fDataEof,fRecordAction);
  until fDataEof or not (fRecordAction in [raIgnoreIt]);
  fRecordMoved:=False;
end;

procedure TRLCustomSkipper.DataNext;
var
  keepon:boolean;
begin
  if fRecordAction in [raUseAndRetain] then
    Inc(fCopyNo)
  else
    fCopyNo:=1;
  if fRecordAction in [raUseIt] then
    Inc(fRecNo);
  repeat
    if fRecordAction in [raUseIt,raIgnoreIt] then
    begin
      if Assigned(DataSource) then
        if Assigned(DataSource.DataSet) and DataSource.DataSet.Active then
        begin
          DataSource.DataSet.Next;
          keepon:=not DataSource.DataSet.Eof;
        end
        else
          keepon:=False
      else if Assigned(fOnNeedData) then
      begin
        keepon:=False;
        fOnNeedData(Self,keepon);
      end
      else
        keepon:=False;
    end
    else
      keepon:=True;
    if fRecordRange=rrCurrentOnly then
      keepon:=False
    else if (fRecordRange=rrNextN) and (fRecNo>fRangeCount) then
      keepon:=False;
    //
    fDataEof     :=not keepon;
    fRecordAction:=raUseIt;
    if Assigned(fOnDataRecord) then
      fOnDataRecord(Self,fRecNo,fCopyNo,fDataEof,fRecordAction);
  until fDataEof or not (fRecordAction in [raIgnoreIt]);
  fRecordMoved:=True;
end;

procedure TRLCustomSkipper.Notification(aComponent:TComponent; Operation:TOperation);
begin
  inherited;
  //
  if Operation=opRemove then
    if aComponent=fDataSource then
      fDataSource:=nil
end;

procedure TRLCustomSkipper.InternalPrint;
var
  r:TRLCustomReport;
  p:TRLCustomPager;
begin
  r:=RequestParentReport;
  p:=RequestParentPager;
  //
  if (PageBreaking=pbBeforePrint) and Assigned(r) and r.DataBandPrinted then
  begin
    if Assigned(p) then
      p.InternalNewPage(Self,not p.IsSatisfied);
    MarkPrintPosition;
  end;
  //
  BeginDoc;
  //
  DataFirst;
  while not DataEof and not r.Canceled do
  begin
    fRecordMoved:=False;
    PrintDetails;
    if not fRecordMoved then
      DataNext;
  end;
  PrintAnything;
  //
  EndDoc;
  //
  if PageBreaking=pbAfterPrint then
    r.InvalidatePage;
end;

procedure TRLCustomSkipper.PrintAnything;
begin
  if fPrintEmpty and (fDetailCount=0) then
  begin
    OpenSurface;
    PrintEmptySkippers;
  end;  
end;

procedure TRLCustomSkipper.SetDataSource(const aValue:TDataSource);
begin
  if aValue=fDataSource then
    Exit;
  fDataSource:=aValue;
  if aValue<>nil then
    aValue.FreeNotification(Self);
end;

function TRLCustomSkipper.IsNextNRecordRange:boolean;
begin
  Result:=(RecordRange=rrNextN);
end;

{ TRLCustomSubDetail }

constructor TRLCustomSubDetail.Create(aOwner:TComponent);
begin
  // initialization
  // objects
  inherited Create(aOwner);
  // customization
  fPositioning:=btDetail;
  fAutoTrunc  :=True;
  //
  Height    :=64;
end;

procedure TRLCustomSubDetail.InternalPaintFinish;
var
  p:TRLCustomReport;
begin
  inherited;
  //
  p:=FindParentReport;
  if not Assigned(p) or p.ShowDesigners then
    Signup('SubDetail '+Name);
end;

procedure TRLCustomSubDetail.SetPositioning(const Value: TRLBandType);
begin
  if Value=fPositioning then
    Exit;
  fPositioning:=Value;
  //
  Realign;
  Invalidate;
end;

{TRLCustomReport}

constructor TRLCustomReport.Create(aOwner:TComponent);
begin
  // initialization
  fShowProgress       :=True;
  fDefaultFilter      :=nil;
  fExpressionParser   :=nil;
  fOnPageEnding       :=nil;
  fOnPageStarting     :=nil;
  fCanceled           :=False;
  fNextReport         :=nil;
  fPriorReport        :=nil;
  fFirstPageNumber    :=1;
  fPageIndex          :=0;
  fPrintDialog        :=True;
  fReportState        :=rsAbout;
  fShowDesigners      :=True;
  fShowTracks         :=True;
  fShowExplosion      :=False;
  fPrintQuality       :=pqFullFeature;
  fPageSurface        :=nil;
  fOnFilterText       :=nil;
  ProgressForm        :=nil;
  fParseInvoker       :=nil;
  fAdjustableMargins  :=False;
  fPreviewOptions     :=nil;
  fForcePrepare       :=True;
  //
  FillChar(fPrinterMetrics,SizeOf(fPrinterMetrics),0);
  // objects
  fPages:=TRLGraphicStorage.Create(nil);
  fPages.Link(Self);
  fPageSetup:=TRLPageSetup.Create(Self);
  fPreviewOptions:=TRLPreviewOptions.Create(Self);
  //
  inherited Create(aOwner);
  // customization
  fMargins.SetDefaults(10,10,10,10);
  fPrintEmpty:=True;
  //
  ParentFont :=False;
  Font.Name  :='Arial';
  Font.Size  :=10;
  Font.Style :=[];
  Font.Color :=clBlack;
  ParentColor:=False;
  Color      :=clWhite;
  //
  ReloadPrinter;
end;

destructor TRLCustomReport.Destroy;
begin
  if Assigned(fPages) then
    fPages.Unlink(Self);
  FreeObj(fPageSurface);
  FreeObj(fPageSetup);
  FreeObj(fPreviewOptions);
  //
  inherited;
end;

procedure TRLCustomReport.ReloadPrinter;
begin
  RLPrinter.LoadMetrics(fPrinterMetrics);
end;

procedure TRLCustomReport.CalcSize(var aSize:TPoint);
begin
  if PageSetup.PaperSize=fpDefault then
    aSize:=Point(Width,Height)
  else
    aSize:=Point(Round(ScreenPPI*PageSetup.OrientedWidth/InchAsMM),
                 Round(ScreenPPI*PageSetup.OrientedHeight/InchAsMM));
  fFixedSize:=aSize;
  fSizeFixed:=(PageSetup.PaperSize<>fpDefault);
end;

procedure TRLCustomReport.CreateProgress;
var
  q:integer;
  r:TRLCustomReport;
  m:TRLCustomReport;
begin
  m:=MasterReport;
  if m=Self then
  begin
    q:=1;
    r:=Self;
    while (r.NextReport<>nil) do
    begin
      r:=r.NextReport;
      Inc(q);
    end;
    m.ProgressForm:=TfrmRLFeedBack.Create(LS_PreparingReportStr,q);
    m.ProgressForm.Show;
    m.ProgressForm.SetFocus;
    m.ProgressForm.OnCancel:=ProgressCanceled;
  end
  else if m.ProgressForm<>nil then
    m.ProgressForm.NextBar;
end;

procedure TRLCustomReport.SetProgressSize(aMax:integer);
begin
  with MasterReport do
    if Assigned(ProgressForm) then
      ProgressForm.Max(aMax);
end;

procedure TRLCustomReport.SetProgressPhase(const aPhase:string);
begin
  with MasterReport do
    if Assigned(ProgressForm) then
      ProgressForm.StepCaption(aPhase);
end;

procedure TRLCustomReport.StepProgress(aStep:integer=1);
begin
  with MasterReport do
    if Assigned(ProgressForm) then
      ProgressForm.Tick;
end;

procedure TRLCustomReport.DestroyProgress;
begin
  FreeObj(ProgressForm);
end;

procedure TRLCustomReport.Cancel;
begin
  fCanceled:=True;
end;

procedure TRLCustomReport.ProgressCanceled(Sender:TObject; var CancelIt:boolean);
begin
  Cancel;
end;

procedure TRLCustomReport.Clear;
begin
  FreeObj(fPageSurface);
  //
  fPages.Clear;
  fReportState:=rsAbout;
  fCanceled   :=False;
  fPageIndex  :=0; // new 3.18
end;

procedure TRLCustomReport.SurfaceOpening;
begin
  inherited;
  //
  // Inc(MasterReport.fPageIndex); 3.18
end;

procedure TRLCustomReport.SurfaceBeginDraw;
begin
  inherited;
  //
  DoPageStarting;
end;

procedure TRLCustomReport.SurfaceEndDraw;
begin
  DoPageEnding;
  //
  inherited;
end;

procedure TRLCustomReport.SurfaceClosed;
begin
  inherited;
  //
  MasterReport.Pages.Add(fPageSurface);
  fPageSurface:=nil;
  Inc(MasterReport.fPageIndex); // new 3.18
end;

procedure TRLCustomReport.DoPageStarting;
begin
  if Assigned(fOnPageStarting) then
    fOnPageStarting(Self);
end;

procedure TRLCustomReport.DoPageEnding;
begin
  if Assigned(fOnPageEnding) then
    fOnPageEnding(Self);
end;

procedure TRLCustomReport.Notification(aComponent:TComponent; Operation:TOperation);
begin
  inherited;
  //
  if Operation=opRemove then
    if aComponent=fDataSource then
      fDataSource:=nil
    else if aComponent=fNextReport then
      fNextReport:=nil
    else if aComponent=fPriorReport then
      fPriorReport:=nil
    else if aComponent=fDefaultFilter then
      fDefaultFilter:=nil
    else if aComponent=fExpressionParser then
      fExpressionParser:=nil;
end;

procedure TRLCustomReport.DataFirst;
begin
  SetProgressSize(DataCount);
  //
  inherited;
end;

procedure TRLCustomReport.DataNext;
begin
  StepProgress;
  SetProgressPhase(LS_PageStr+' '+IntToStr(MasterReport.PageNumber));
  //
  inherited;
end;

function TRLCustomReport.GetOrientedUnprintablePixels:TRect;
var
  r:TRect;
begin
  if fPrinterMetrics.PPIX*fPrinterMetrics.PPIY=0 then
    Result:=Rect(0,0,0,0)
  else
  begin
    with fPrinterMetrics do
      r:=Rect(Round(MarginLeft  *ScreenPPI/PPIX),
              Round(MarginTop   *ScreenPPI/PPIY),
              Round(MarginRight *ScreenPPI/PPIX),
              Round(MarginBottom*ScreenPPI/PPIY));
    if fPageSetup.Orientation=poPortrait then
      Result:=r
    else
    begin
      // as landscape the margins are turned anti clockwise
      Result.Left  :=r.Top;
      Result.Top   :=r.Right;
      Result.Right :=r.Bottom;
      Result.Bottom:=r.Left;
    end;
  end;
end;

function TRLCustomReport.GetOrientedUnprintableRect:TRect;
var
  r:TRect;
begin
  r:=GetOrientedUnprintablePixels;
  Result.Left  :=r.Left;
  Result.Top   :=r.Top;
  Result.Right :=Round(fPageSetup.OrientedWidth *ScreenPPI/InchAsMM)-r.Right;
  Result.Bottom:=Round(fPageSetup.OrientedHeight*ScreenPPI/InchAsMM)-r.Bottom;
end;

// unprintable area
procedure TRLCustomReport.DrawBackground(const aRect:TRect);
var
  r:TRect;
begin
  inherited;
  //
  with Canvas do
  begin
    r:=GetOrientedUnprintableRect;
    DrawUnusedRect(Rect(0,0,r.Left,Height));              // left
    DrawUnusedRect(Rect(r.Left,0,Width,r.Top));           // top
    DrawUnusedRect(Rect(r.Right,r.Top,Width,Height));     // right
    DrawUnusedRect(Rect(r.Left,r.Bottom,r.Right,Height)); // bottom
  end;
end;

procedure TRLCustomReport.InternalPaintFinish;
begin
  inherited;
  //
  if fShowDesigners then
    Signup('Report '+Name,True);
end;

function TRLCustomReport.Prepare:boolean;
var
  keepon:boolean;
begin
  Result:=False;
  try
    PushBoundsRect;
    try
      Clear;
      //
      fReportState   :=rsWriting;
      fReportDateTime:=Now;
      if MasterReport.ShowProgress then
        CreateProgress;
      keepon:=True;
      DoBeforePrint(keepon);
      if not keepon then
        Exit;
      SortBands;
      ReloadPrinter;
      //
      BeginDoc;
      //
      DataFirst;
      while not DataEof and not MasterReport.Canceled do
      begin
        fRecordMoved:=False;
        PrintDetails;
        if not fRecordMoved then
          DataNext;
      end;
      fReportState:=rsClosing;
      PrintAnything;
      //
      EndDoc;
      // verifica cancelamento
      if MasterReport.Canceled then
      begin
        fReportState:=rsAbout;
        Exit;
      end;
      //
      DoAfterPrint;
      // prepara o pr�ximo relat�rio
      if fNextReport<>nil then
        if not fNextReport.Prepare then
          Exit;
      //
      UpdateMacros;
      //
      Result:=True;
    except
      on e:Exception do
      begin
        fReportState:=rsAbout;
        ShowMessage(Name+': '+LS_PrepareErrorStr+#13+e.Message);
      end;
    end;
  finally
    DestroyProgress;
    PopBoundsRect;
  end;
end;

function TRLCustomReport.PreviewModal:boolean;
begin
  Result:=False;
  if (csDesigning in ComponentState) or fForcePrepare then
    Clear;
  if Assigned(DefaultFilter) then
    PrintParams.Filter:=DefaultFilter;
  if fReportState=rsAbout then
    if not Prepare then
      Exit;
  with PreviewOptions do
    if Defaults=pdUseDefaults then
      PreviewPagesWithOptions(Self.Pages,True,DefaultFormStyle,DefaultPosition,DefaultWindowState,DefaultBorderIcons,DefaultHelpFile,DefaultHelpContext,DefaultCaption)
    else
      PreviewPagesWithOptions(Self.Pages,True,FormStyle,Position,WindowState,BorderIcons,HelpFile,HelpContext,Caption);
  Result:=True;
end;

function TRLCustomReport.Preview(Dest:TRLPreview=nil):boolean;
begin
  Result:=False;
  if (csDesigning in ComponentState) or fForcePrepare then
    Clear;
  if Assigned(DefaultFilter) then
    PrintParams.Filter:=DefaultFilter;
  if fReportState=rsAbout then
    if not Prepare then
      Exit;
  if Assigned(Dest) then
    Dest.Pages:=Self.Pages
  else
    with PreviewOptions do
      if Defaults=pdUseDefaults then
        PreviewPagesWithOptions(Self.Pages,DefaultShowModal,DefaultFormStyle,DefaultPosition,DefaultWindowState,DefaultBorderIcons,DefaultHelpFile,DefaultHelpContext,DefaultCaption)
      else
        PreviewPagesWithOptions(Self.Pages,ShowModal,FormStyle,Position,WindowState,BorderIcons,HelpFile,HelpContext,Caption);
  Result:=True;
end;

procedure TRLCustomReport.ClosePreview;
begin
  PreviewClosed:=True;
end;

function TRLCustomReport.ShowPrintDialog:boolean;
begin
  PrintParams.HelpContext:=Self.HelpContext;
  if PrintParams.HelpContext<>0 then
    PrintParams.Options:=PrintParams.Options+[rpoHelp];
  if Self.ReportState=rsReady then
    PrintParams.MaxPage:=Self.Pages.PageCount;
  PrintParams.Orientation:=Self.PageSetup.Orientation;
  with TRLPrintDialog.Create(nil) do
    try
      Result:=Execute;
    finally
      Free;
    end;
end;

procedure TRLCustomReport.InternalPrint;
var
  filter:TRLCustomPrintFilter;
begin
  RLPrinter.SetPaperSize(PageSetup.PaperWidth,PageSetup.PaperHeight,
    PageSetup.Orientation=poLandscape,PageSetup.ForceEmulation);
  if Assigned(DefaultFilter) then
    PrintParams.Filter:=DefaultFilter;
  //
  PrintParams.Clear;
  PrintParams.FromPage:=1;
  PrintParams.ToPage  :=MaxInt;
  //
  if fPrintDialog then
    if not ShowPrintDialog then
    begin
      fCanceled:=True;
      SysUtils.Abort;
    end
    else
  else
    PrintParams.Apply;
  //  
  if fReportState=rsAbout then
    if not Prepare then
      Exit;
  //
  filter:=PrintParams.Filter;
  if not Assigned(filter) then
    filter:=SpoolFilter;
  filter.ShowProgress:=Self.ShowProgress;
  FilterPages(Pages,filter,PrintParams.FromPage,PrintParams.ToPage,PrintParams.PrintInBackground);
end;

procedure TRLCustomReport.UpdateMacros;
begin
  // atualiza s�mbolos
  Pages.FirstPageNumber:=FirstPageNumber;
  Pages.LastPageNumber :=LastPageNumber;
  Pages.Title          :=Title;
  if PageSetup.Orientation=poLandscape then
    Pages.Orientation:=MetaOrientationLandscape
  else
    Pages.Orientation:=MetaOrientationPortrait;
  Pages.PaperWidth     :=PageSetup.PaperWidth;
  Pages.PaperHeight    :=PageSetup.PaperHeight;
  Pages.Width          :=Self.Width;
  Pages.Height         :=Self.Height;
end;

procedure TRLCustomReport.InternalEndDoc;
begin
  inherited;
  //
  fReportState:=rsReady;
end;

function TRLCustomReport.FindParentSurface:TRLGraphicSurface;
begin
  if not Assigned(fPageSurface) then
  begin
    fPageSurface:=TRLGraphicSurface.Create;
    with fPageSurface do
    begin
      Width      :=Self.Width;
      Height     :=Self.Height;
      if Self.PageSetup.Orientation=poLandscape then
        Orientation:=MetaOrientationLandscape
      else
        Orientation:=MetaOrientationPortrait;
      PaperWidth :=PageSetup.PaperWidth;
      PaperHeight:=PageSetup.PaperHeight;
      Open;
    end;
  end;
  //
  Result:=fPageSurface;
end;

function TRLCustomReport.GetCurrentPage:TRLGraphicSurface;
begin
  Result:=GetPageByNumber(PageNumber);
end;

function TRLCustomReport.GetPageByNumber(n:integer):TRLGraphicSurface;
begin
  if (fReportState=rsReady) and (n>=fFirstPageNumber) and (n<=LastPageNumber) then
    Result:=fPages[n-fFirstPageNumber]
  else
    Result:=nil;
end;

function TRLCustomReport.CalcSizeRect:TRect;
begin
  Result.Left:=0;
  Result.Top :=0;
  CalcSize(Result.BottomRight);
end;

procedure TRLCustomReport.SetPriorReport(const aValue:TRLCustomReport);
var
  old:TRLCustomReport;
begin
  old:=fPriorReport;
  if (aValue=old) or (aValue=Self) then
    Exit;
  fPriorReport:=aValue;
  if old<>nil then
    old.NextReport:=nil;
  if aValue<>nil then
  begin
    aValue.NextReport:=Self;
    aValue.FreeNotification(Self);
  end;
end;

procedure TRLCustomReport.SetNextReport(const aValue:TRLCustomReport);
var
  old:TRLCustomReport;
begin
  old:=fNextReport;
  if (aValue=old) or (aValue=Self) then
    Exit;
  fNextReport:=aValue;
  if old<>nil then
    old.PriorReport:=nil;
  if aValue<>nil then
  begin
    aValue.PriorReport:=Self;
    aValue.FreeNotification(Self);
  end;
end;

function TRLCustomReport.GetPageNumber;
begin
  Result:=fFirstPageNumber+fPageIndex;
end;

function TRLCustomReport.GetLastPageNumber:integer;
begin
  Result:=fPages.PageCount+fFirstPageNumber-1;
end;

procedure TRLCustomReport.SetPageIndex(const aValue:integer);
begin
  if (fReportState=rsReady) and (aValue>=0) and (aValue<=fPages.PageCount-1) then
    fPageIndex:=aValue;
end;

procedure TRLCustomReport.SetPageNumber(const aValue:integer);
begin
  SetPageIndex(aValue-fFirstPageNumber);
end;

procedure TRLCustomReport.SetShowDesigners(const aValue:boolean);
begin
  if aValue=fShowDesigners then
    Exit;
  fShowDesigners:=aValue;
  InvalidateAll;
end;

procedure TRLCustomReport.SetShowTracks(const aValue:boolean);
begin
  if aValue=fShowTracks then
    Exit;
  fShowTracks:=aValue;
  InvalidateAll;
end;

procedure TRLCustomReport.SetShowExplosion(const aValue:boolean);
begin
  if aValue=fShowExplosion then
    Exit;
  fShowExplosion:=aValue;
  InvalidateAll;
end;

procedure TRLCustomReport.BeforeSave;
begin
  // prepara antes de gravar
  if fReportState=rsAbout then
    if not Prepare then
      Exit;
end;

procedure TRLCustomReport.AfterLoad;
begin
  FirstPageNumber      :=Pages.FirstPageNumber;
  Title                :=Pages.Title;
  PageSetup.PaperSize  :=PaperSizeBySize(Pages.PaperWidth,Pages.PaperHeight);
  if Pages.Orientation=MetaOrientationLandscape then
    PageSetup.Orientation:=poLandscape
  else
    PageSetup.Orientation:=poPortrait;
  PageSetup.PaperWidth :=Pages.PaperWidth;
  PageSetup.PaperHeight:=Pages.PaperHeight;
  //
  fReportState:=rsReady;
end;

procedure TRLCustomReport.SaveToStream(aStream:TStream);
begin
  BeforeSave;
  Pages.SaveToStream(aStream);
end;

procedure TRLCustomReport.LoadFromStream(aStream:TStream);
begin
  Clear;
  Pages.LoadFromStream(aStream);
  AfterLoad;
end;

procedure TRLCustomReport.SaveToFile(const aFileName:string);
var
  f:TRLCustomSaveFilter;
begin
  BeforeSave;
  f:=SaveFilterByFileName(aFileName);
  if f<>nil then
  begin
    f.FileName:=aFileName;
    FilterPages(Pages,f,1,-1,SaveParams.SaveInBackground);
  end
  else
    Pages.SaveToFile(aFileName);
end;

procedure TRLCustomReport.LoadFromFile(const aFileName:string);
begin
  Clear;
  Pages.LoadFromFile(aFileName);
  AfterLoad;
end;

procedure TRLCustomReport.SetPrintQuality(const aValue:TRLPrintQuality);
begin
  if aValue=fPrintQuality then
    Exit;
  fPrintQuality:=aValue;
  InvalidateAll;
end;

procedure TRLCustomReport.SetDefaultFilter(const aValue:TRLCustomPrintFilter);
begin
  fDefaultFilter:=aValue;
  if aValue<>nil then
    aValue.FreeNotification(Self);
end;

function GetDataSourceOf(aControl:TControl):TDataSource;
begin
  if aControl is TRLCustomDBControl then
    Result:=TRLCustomDBControl(aControl).DataSource
  else if aControl is TRLCustomDBText then
    Result:=TRLCustomDBText(aControl).DataSource
  else if aControl is TRLCustomDBMemo then
    Result:=TRLCustomDBMemo(aControl).DataSource
  else if aControl is TRLCustomSkipper then
    Result:=TRLCustomSkipper(aControl).DataSource
  else
    Result:=nil;  
end;

procedure TRLCustomReport.ParserResource(Sender:TObject; const aIdentifier:string; aParams:variant; var aResult:variant);
var
  src:TDataSource;
  fld:TField;
  ctr:TWinControl;
begin
  aResult:=Unassigned;
  //
  if Assigned(fParseInvoker) and (fParseInvoker is TRLCustomDBResult) then
  begin
    aResult:=TRLCustomDBResult(fParseInvoker).Resolve(Sender,aIdentifier,aParams);
    if not VarIsEmpty(aResult) then
      Exit;
  end;
  //
  ctr:=TWinControl(fParseInvoker);
  while ctr<>nil do
  begin
    src:=GetDataSourceOf(ctr);
    if Assigned(src) and Assigned(src.DataSet) then
    begin
      fld:=src.DataSet.FindField(aIdentifier);
      if Assigned(fld) then
      begin
        // considerar valores nulos
        if fld.IsNull and Assigned(fParseInvoker) and (fParseInvoker is TRLCustomDBResult) and TRLCustomDBResult(fParseInvoker).ComputeNulls then
          aResult:=GetNullValue(fld)
        else
          aResult:=fld.Value;
        Break;
      end;
    end;  
    ctr:=ctr.Parent;
  end;
end;

procedure TRLCustomReport.ParserTokener(Sender:TObject; var aToken:string; var aKind:TRLParserTokenKind);
begin
end;

function MatchFriendlyName(aComp:TComponent; const aName:string):boolean;
begin
  Result:=AnsiSameText(aComp.Name,aName) or (aComp is TRLCustomControl) and AnsiSameText(TRLCustomControl(aComp).FriendlyName,aName);
end;

procedure TRLCustomReport.ParserFindAgregate(Sender:TObject; aOwner:TPersistent; const aName:string; var aAgregate:TPersistent);
var
  i:integer;
begin
  if aOwner is TComponent then
    with TComponent(aOwner) do
    begin
      i:=0;
      while (i<ComponentCount) and not MatchFriendlyName(Components[i],aName) do
        Inc(i);
      if i<ComponentCount then
        aAgregate:=Components[i];
    end;    
end;

procedure TRLCustomReport.ParserGetAttribute(Sender:TObject; aOwner:TPersistent; const aName:string; var aValue:variant);
var
  fld:TField;
begin
  if (aOwner is TDataSource) and Assigned(TDataSource(aOwner).DataSet) then
    aOwner:=TDataSource(aOwner).DataSet;
  if aOwner is TDataSet then
  begin
    fld:=TDataSet(aOwner).FindField(Name);
    if Assigned(fld) then
      aValue:=fld.Value;
  end
  else if aOwner is TRLCustomControl then
    aValue:=TRLCustomControl(aOwner).GetAttribute(aName)
  else if aOwner is TFont then
    with TFont(aOwner) do
      aValue:=Name+' '+IntToStr(Size);
end;

procedure TRLCustomReport.ParserSetAttribute(Sender:TObject; aOwner:TPersistent; const aName:string; const aValue:variant; var aHandled:boolean);
begin
  if aOwner is TRLCustomControl then
    aHandled:=TRLCustomControl(aOwner).SetAttribute(aName,aValue);
end;

procedure TRLCustomReport.SetExpressionParser(const aValue:TRLExpressionParser);
var
  old:TRLExpressionParser;
begin
  old:=fExpressionParser;
  if aValue=old then
    Exit;
  if old<>nil then
  begin
    old.ResourceProc    :=nil;
    old.TokenProc       :=nil;
    old.FindAgregateProc:=nil;
    old.SetAttributeProc:=nil;
    old.GetAttributeProc:=nil;
  end;
  fExpressionParser:=aValue;
  if aValue<>nil then
  begin
    aValue.ResourceProc    :=Self.ParserResource;
    aValue.TokenProc       :=Self.ParserTokener;
    aValue.FindAgregateProc:=Self.ParserFindAgregate;
    aValue.SetAttributeProc:=Self.ParserSetAttribute;
    aValue.GetAttributeProc:=Self.ParserGetAttribute;
    aValue.FreeNotification(Self);
  end;
end;

procedure TRLCustomReport.DoFilterText(var aText:string; var aPrintIt:boolean);
begin
  if Assigned(fOnFilterText) then
    fOnFilterText(Self,aText,aPrintIt);
end;

function TRLCustomReport.Parse(Sender:TObject; const aExpression:string):variant;
begin
  if Assigned(fExpressionParser) then
  begin
    fParseInvoker:=Sender;
    try
      Result:=fExpressionParser.Evaluate(aExpression);
    finally
      fParseInvoker:=nil;
    end;
  end
  else
    Result:=Null;
end;

function TRLCustomReport.CalcMarginalPixels:TRect;
var
  u:TRect;
begin
  Result:=inherited CalcMarginalPixels;
  if fAdjustableMargins then
  begin
    u:=GetOrientedUnprintablePixels;
    Result.Left  :=Max(Result.Left  ,u.Left);
    Result.Top   :=Max(Result.Top   ,u.Top);
    Result.Right :=Max(Result.Right ,u.Right);
    Result.Bottom:=Max(Result.Bottom,u.Bottom);
  end;  
end;

procedure TRLCustomReport.SetAdjustableMargins(const aValue:boolean);
begin
  if aValue=fAdjustableMargins then
    Exit;
  fAdjustableMargins:=aValue;
  AdjustBounds;
  Invalidate;
end;

procedure TRLCustomReport.SetPageSetup(const Value: TRLPageSetup);
begin
  fPageSetup.Assign(Value);
end;

procedure TRLCustomReport.SetPreviewOptions(const Value: TRLPreviewOptions);
begin
  fPreviewOptions.Assign(Value);
end;

{ TRLPreviewOptions }

constructor TRLPreviewOptions.Create(aOwner: TRLCustomReport);
begin
  fParentReport:=aOwner;
  fShowModal   :=False;
  fFormStyle   :=fsNormal;
  fPosition    :=poScreenCenter;
  fWindowState :=wsMaximized;
  fBorderIcons :=[biSystemMenu,biMinimize,biMaximize];
  fHelpFile    :='';
  fHelpContext :=0;
  fCaption     :=LS_PreviewStr;
  //
  inherited Create;
end;

procedure TRLPreviewOptions.Assign(Source: TRLPreviewOptions);
begin
  WindowState:=Source.WindowState;
  Position   :=Source.Position;
  FormStyle  :=Source.FormStyle;
  ShowModal  :=Source.ShowModal;
  BorderIcons:=Source.BorderIcons;
  HelpFile   :=Source.HelpFile;
  HelpContext:=Source.HelpContext;
  Caption    :=Source.Caption;
  Defaults   :=Source.Defaults;
end;

function TRLPreviewOptions.IsCaption: boolean;
begin
  Result:=(fCaption<>LS_PreviewStr);
end;

end.

