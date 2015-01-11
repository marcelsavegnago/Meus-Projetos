{******************************************************************************}
{ Projeto: Componente ACBrNFSe                                                 }
{  Biblioteca multiplataforma de componentes Delphi                            }
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

{$I ACBr.inc}

unit ACBrProvedorDigifred;

interface

uses
  Classes, SysUtils,
  pnfsConversao, pcnAuxiliar,
  ACBrNFSeConfiguracoes, ACBrNFSeUtil, ACBrUtil, ACBrDFeUtil,
  {$IFDEF COMPILER6_UP} DateUtils {$ELSE} ACBrD5, FileCtrl {$ENDIF};

type
  { TACBrProvedorDigifred }

 TProvedorDigifred = class(TProvedorClass)
  protected
   { protected }
  private
   { private }
  public
   { public }
   Constructor Create;

   function GetConfigCidade(ACodCidade, AAmbiente: Integer): TConfigCidade; OverRide;
   function GetConfigSchema(ACodCidade: Integer): TConfigSchema; OverRide;
   function GetConfigURL(ACodCidade: Integer): TConfigURL; OverRide;
   function GetURI(URI: String): String; OverRide;
   function GetAssinarXML(Acao: TnfseAcao): Boolean; OverRide;
   function GetValidarLote: Boolean; OverRide;

   function Gera_TagI(Acao: TnfseAcao; Prefixo3, Prefixo4, NameSpaceDad, Identificador, URI: String): AnsiString; OverRide;
   function Gera_CabMsg(Prefixo2, VersaoLayOut, VersaoDados, NameSpaceCab: String; ACodCidade: Integer): AnsiString; OverRide;
   function Gera_DadosSenha(CNPJ, Senha: String): AnsiString; OverRide;
   function Gera_TagF(Acao: TnfseAcao; Prefixo3: String): AnsiString; OverRide;

   function GeraEnvelopeRecepcionarLoteRPS(URLNS: String; CabMsg, DadosMsg, DadosSenha: AnsiString): AnsiString; OverRide;
   function GeraEnvelopeConsultarSituacaoLoteRPS(URLNS: String; CabMsg, DadosMsg, DadosSenha: AnsiString): AnsiString; OverRide;
   function GeraEnvelopeConsultarLoteRPS(URLNS: String; CabMsg, DadosMsg, DadosSenha: AnsiString): AnsiString; OverRide;
   function GeraEnvelopeConsultarNFSeporRPS(URLNS: String; CabMsg, DadosMsg, DadosSenha: AnsiString): AnsiString; OverRide;
   function GeraEnvelopeConsultarNFSe(URLNS: String; CabMsg, DadosMsg, DadosSenha: AnsiString): AnsiString; OverRide;
   function GeraEnvelopeCancelarNFSe(URLNS: String; CabMsg, DadosMsg, DadosSenha: AnsiString): AnsiString; OverRide;
   function GeraEnvelopeGerarNFSe(URLNS: String; CabMsg, DadosMsg, DadosSenha: AnsiString): AnsiString; OverRide;
   function GeraEnvelopeRecepcionarSincrono(URLNS: String; CabMsg, DadosMsg, DadosSenha: AnsiString): AnsiString; OverRide;
   function GeraEnvelopeSubstituirNFSe(URLNS: String; CabMsg, DadosMsg, DadosSenha: AnsiString): AnsiString; OverRide;

   function GetSoapAction(Acao: TnfseAcao; NomeCidade: String): String; OverRide;
   function GetRetornoWS(Acao: TnfseAcao; RetornoWS: AnsiString): AnsiString; OverRide;

   function GeraRetornoNFSe(Prefixo: String; RetNFSe: AnsiString; NomeCidade: String): AnsiString; OverRide;
   function GetLinkNFSe(ACodMunicipio, ANumeroNFSe: Integer; ACodVerificacao, AInscricaoM: String; AAmbiente: Integer): String; OverRide;
  end;

implementation

{ TProvedorDigifred }

constructor TProvedorDigifred.Create;
begin
  {----}
end;

function TProvedorDigifred.GetConfigCidade(ACodCidade,
  AAmbiente: Integer): TConfigCidade;
var
  ConfigCidade: TConfigCidade;
begin
  ConfigCidade.VersaoSoap    := '1.1';
  ConfigCidade.Prefixo2      := '';
  ConfigCidade.Prefixo3      := '';
  ConfigCidade.Prefixo4      := '';
  ConfigCidade.Identificador := 'Id';
  ConfigCidade.QuebradeLinha := ';';

  if AAmbiente = 1 then
    ConfigCidade.NameSpaceEnvelope := 'http://nfse.abrasf.org.br'
  else
    ConfigCidade.NameSpaceEnvelope := 'http://nfse.abrasf.org.br';

  ConfigCidade.AssinaRPS  := True;
  ConfigCidade.AssinaLote := True;

  Result := ConfigCidade;
end;

function TProvedorDigifred.GetConfigSchema(ACodCidade: Integer): TConfigSchema;
var
  ConfigSchema: TConfigSchema;
begin
  ConfigSchema.VersaoCabecalho       := '2.00';
  ConfigSchema.VersaoDados           := '2.00';
  ConfigSchema.VersaoXML             := '2';
  ConfigSchema.NameSpaceXML          := 'http://www.abrasf.org.br/';
  ConfigSchema.Cabecalho             := 'nfse.xsd';
  ConfigSchema.ServicoEnviar         := 'nfse.xsd';
  ConfigSchema.ServicoConSit         := 'nfse.xsd';
  ConfigSchema.ServicoConLot         := 'nfse.xsd';
  ConfigSchema.ServicoConRps         := 'nfse.xsd';
  ConfigSchema.ServicoConNfse        := 'nfse.xsd';
  ConfigSchema.ServicoCancelar       := 'nfse.xsd';
  ConfigSchema.ServicoGerar          := 'nfse.xsd';
  ConfigSchema.ServicoEnviarSincrono := 'nfse.xsd';
  ConfigSchema.ServicoSubstituir     := 'nfse.xsd';
  ConfigSchema.DefTipos              := '';

  Result := ConfigSchema;
end;

function TProvedorDigifred.GetConfigURL(ACodCidade: Integer): TConfigURL;
var
  ConfigURL: TConfigURL;
begin

  case ACodCidade of
   4308508: begin // Frederico Westphalen/RS
              ConfigURL.HomNomeCidade         := 'frederico';
              ConfigURL.ProNomeCidade         := 'frederico';
            end;
   4310009: begin // Ibiruba/RS
              ConfigURL.HomNomeCidade         := 'ibiruba';
              ConfigURL.ProNomeCidade         := 'ibiruba';
            end;
  end;

  ConfigURL.HomRecepcaoLoteRPS    := 'https://sim.digifred.net.br/'+ ConfigURL.HomNomeCidade + '_homolog/nfse/ws/principal';
  ConfigURL.HomConsultaLoteRPS    := ConfigURL.HomRecepcaoLoteRPS;
  ConfigURL.HomConsultaNFSeRPS    := ConfigURL.HomRecepcaoLoteRPS;
  ConfigURL.HomConsultaSitLoteRPS := ConfigURL.HomRecepcaoLoteRPS;
  ConfigURL.HomConsultaNFSe       := ConfigURL.HomRecepcaoLoteRPS;
  ConfigURL.HomCancelaNFSe        := ConfigURL.HomRecepcaoLoteRPS;
  ConfigURL.HomGerarNFSe          := ConfigURL.HomRecepcaoLoteRPS;
  ConfigURL.HomRecepcaoSincrono   := ConfigURL.HomRecepcaoLoteRPS;
  ConfigURL.HomSubstituiNFSe      := ConfigURL.HomRecepcaoLoteRPS;

  ConfigURL.ProRecepcaoLoteRPS    := 'https://sim.digifred.net.br/'+ ConfigURL.ProNomeCidade + '/nfse/ws/principal';
  ConfigURL.ProConsultaLoteRPS    := ConfigURL.ProRecepcaoLoteRPS;
  ConfigURL.ProConsultaNFSeRPS    := ConfigURL.ProRecepcaoLoteRPS;
  ConfigURL.ProConsultaSitLoteRPS := ConfigURL.ProRecepcaoLoteRPS;
  ConfigURL.ProConsultaNFSe       := ConfigURL.ProRecepcaoLoteRPS;
  ConfigURL.ProCancelaNFSe        := ConfigURL.ProRecepcaoLoteRPS;
  ConfigURL.ProGerarNFSe          := ConfigURL.ProRecepcaoLoteRPS;
  ConfigURL.ProRecepcaoSincrono   := ConfigURL.ProRecepcaoLoteRPS;
  ConfigURL.ProSubstituiNFSe      := ConfigURL.ProRecepcaoLoteRPS;

  Result := ConfigURL;
end;

function TProvedorDigifred.GetURI(URI: String): String;
begin
  Result := URI;
end;

function TProvedorDigifred.GetAssinarXML(Acao: TnfseAcao): Boolean;
begin
  case Acao of
    acRecepcionar: Result := True;
    acConsSit:     Result := False;
    acConsLote:    Result := False;
    acConsNFSeRps: Result := False;
    acConsNFSe:    Result := False;
    acCancelar:    Result := True;
    acGerar:       Result := False;
    acRecSincrono: Result := False;
    acSubstituir:  Result := False;
  end;
end;

function TProvedorDigifred.GetValidarLote: Boolean;
begin
  Result := True;
end;

function TProvedorDigifred.Gera_TagI(Acao: TnfseAcao; Prefixo3, Prefixo4,
  NameSpaceDad, Identificador, URI: String): AnsiString;
begin
  case Acao of
   acRecepcionar: Result := '<' + Prefixo3 + 'EnviarLoteRpsEnvio' + NameSpaceDad;
   acConsSit:     Result := '<' + Prefixo3 + 'ConsultarSituacaoLoteRpsEnvio' + NameSpaceDad;
   acConsLote:    Result := '<' + Prefixo3 + 'ConsultarLoteRpsEnvio' + NameSpaceDad;
   acConsNFSeRps: Result := '<' + Prefixo3 + 'ConsultarNfseRpsEnvio' + NameSpaceDad;
   acConsNFSe:    Result := '<' + Prefixo3 + 'ConsultarNfseEnvio' + NameSpaceDad;
   acCancelar:    Result := '<' + Prefixo3 + 'CancelarNfseEnvio' + NameSpaceDad +
                             '<' + Prefixo3 + 'Pedido>' +
                              '<' + Prefixo4 + 'InfPedidoCancelamento' +
                                 DFeUtil.SeSenao(Identificador <> '', ' ' + Identificador + '="' + URI + '"', '') + '>';
   acGerar:       Result := '<' + Prefixo3 + 'GerarNfseEnvio' + NameSpaceDad;
   acRecSincrono: Result := '<' + Prefixo3 + 'EnviarLoteRpsSincronoEnvio' + NameSpaceDad;
   acSubstituir:  Result := '<' + Prefixo3 + 'SubstituirNfseEnvio' + NameSpaceDad +
                             '<' + Prefixo3 + 'SubstituicaoNfse>' +
                              '<' + Prefixo3 + 'Pedido>' +
                               '<' + Prefixo4 + 'InfPedidoCancelamento' +
                                  DFeUtil.SeSenao(Identificador <> '', ' ' + Identificador + '="' + URI + '"', '') + '>';
  end;
end;

function TProvedorDigifred.Gera_CabMsg(Prefixo2, VersaoLayOut, VersaoDados,
  NameSpaceCab: String; ACodCidade: Integer): AnsiString;
begin
  Result := '<' + Prefixo2 + 'cabecalho versao="'  + VersaoLayOut + '"' + NameSpaceCab +
             '<versaoDados>' + VersaoDados + '</versaoDados>'+
            '</' + Prefixo2 + 'cabecalho>';
end;

function TProvedorDigifred.Gera_DadosSenha(CNPJ, Senha: String): AnsiString;
begin
  Result := '';
end;

function TProvedorDigifred.Gera_TagF(Acao: TnfseAcao; Prefixo3: String): AnsiString;
begin
  case Acao of
   acRecepcionar: Result := '</' + Prefixo3 + 'EnviarLoteRpsEnvio>';
   acConsSit:     Result := '</' + Prefixo3 + 'ConsultarSituacaoLoteRpsEnvio>';
   acConsLote:    Result := '</' + Prefixo3 + 'ConsultarLoteRpsEnvio>';
   acConsNFSeRps: Result := '</' + Prefixo3 + 'ConsultarNfseRpsEnvio>';
   acConsNFSe:    Result := '</' + Prefixo3 + 'ConsultarNfseEnvio>';
   acCancelar:    Result := '</' + Prefixo3 + 'Pedido>' +
                            '</' + Prefixo3 + 'CancelarNfseEnvio>';
   acGerar:       Result := '</' + Prefixo3 + 'GerarNfseEnvio>';
   acRecSincrono: Result := '</' + Prefixo3 + 'EnviarLoteRpsSincronoEnvio>';
   acSubstituir:  Result := '</' + Prefixo3 + 'SubstituicaoNfse>' +
                            '</' + Prefixo3 + 'SubstituirNfseEnvio>';
  end;
end;

function TProvedorDigifred.GeraEnvelopeRecepcionarLoteRPS(URLNS: String;
  CabMsg, DadosMsg, DadosSenha: AnsiString): AnsiString;
begin
  result := '<?xml version="1.0" encoding="UTF-8"?>' +
            '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/"' +
                       ' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' +
                       ' xmlns:xsd="http://www.w3.org/2001/XMLSchema">' +
             '<s:Body>' +
              '<ns2:RecepcionarLoteRpsRequest xmlns:ns2="' + URLNS + '">' +
               '<nfseCabecMsg>' +
                 '&lt;?xml version="1.0" encoding="UTF-8"?&gt;' +
                 StringReplace(StringReplace(CabMsg, '<', '&lt;', [rfReplaceAll]), '>', '&gt;', [rfReplaceAll]) +
               '</nfseCabecMsg>' +
               '<nfseDadosMsg>' +
                 '&lt;?xml version="1.0" encoding="UTF-8"?&gt;' +
                  StringReplace(StringReplace(DadosMsg, '<', '&lt;', [rfReplaceAll]), '>', '&gt;', [rfReplaceAll]) +
               '</nfseDadosMsg>' +
              '</ns2:RecepcionarLoteRpsRequest>' +
             '</s:Body>' +
            '</s:Envelope>';
end;

function TProvedorDigifred.GeraEnvelopeConsultarSituacaoLoteRPS(
  URLNS: String; CabMsg, DadosMsg, DadosSenha: AnsiString): AnsiString;
begin
  result := '<?xml version="1.0" encoding="UTF-8"?>' +
            '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/"' +
                       ' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' +
                       ' xmlns:xsd="http://www.w3.org/2001/XMLSchema">' +
             '<s:Body>' +
              '<ns2:ConsultarSituacaoLoteRpsRequest xmlns:ns2="' + URLNS + '">' +
               '<nfseCabecMsg>' +
                 StringReplace(StringReplace(CabMsg, '<', '&lt;', [rfReplaceAll]), '>', '&gt;', [rfReplaceAll]) +
               '</nfseCabecMsg>' +
               '<nfseDadosMsg>' +
                 StringReplace(StringReplace(DadosMsg, '<', '&lt;', [rfReplaceAll]), '>', '&gt;', [rfReplaceAll]) +
               '</nfseDadosMsg>' +
              '</ns2:ConsultarSituacaoLoteRpsRequest>' +
             '</s:Body>' +
            '</s:Envelope>';
end;

function TProvedorDigifred.GeraEnvelopeConsultarLoteRPS(URLNS: String;
  CabMsg, DadosMsg, DadosSenha: AnsiString): AnsiString;
begin
  result := '<?xml version="1.0" encoding="UTF-8"?>' +
            '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/"' +
                       ' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' +
                       ' xmlns:xsd="http://www.w3.org/2001/XMLSchema">' +
             '<s:Body>' +
              '<ns2:ConsultarLoteRpsRequest xmlns:ns2="' + URLNS + '">' +
               '<nfseCabecMsg>' +
                 StringReplace(StringReplace(CabMsg, '<', '&lt;', [rfReplaceAll]), '>', '&gt;', [rfReplaceAll]) +
               '</nfseCabecMsg>' +
               '<nfseDadosMsg>' +
                 StringReplace(StringReplace(DadosMsg, '<', '&lt;', [rfReplaceAll]), '>', '&gt;', [rfReplaceAll]) +
               '</nfseDadosMsg>' +
              '</ns2:ConsultarLoteRpsRequest>' +
             '</s:Body>' +
            '</s:Envelope>';
end;

function TProvedorDigifred.GeraEnvelopeConsultarNFSeporRPS(URLNS: String;
  CabMsg, DadosMsg, DadosSenha: AnsiString): AnsiString;
begin
  result := '<?xml version="1.0" encoding="UTF-8"?>' +
            '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/"' +
                       ' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' +
                       ' xmlns:xsd="http://www.w3.org/2001/XMLSchema">' +
             '<s:Body>' +
              '<ns2:ConsultarNfsePorRpsRequest xmlns:ns2="' + URLNS + '">' +
               '<nfseCabecMsg>' +
                 StringReplace(StringReplace(CabMsg, '<', '&lt;', [rfReplaceAll]), '>', '&gt;', [rfReplaceAll]) +
               '</nfseCabecMsg>' +
               '<nfseDadosMsg>' +
                 StringReplace(StringReplace(DadosMsg, '<', '&lt;', [rfReplaceAll]), '>', '&gt;', [rfReplaceAll]) +
               '</nfseDadosMsg>' +
              '</ns2:ConsultarNfsePorRpsRequest>' +
             '</s:Body>' +
            '</s:Envelope>';
end;

function TProvedorDigifred.GeraEnvelopeConsultarNFSe(URLNS: String; CabMsg,
  DadosMsg, DadosSenha: AnsiString): AnsiString;
begin
  result := '<?xml version="1.0" encoding="UTF-8"?>' +
            '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/"' +
                       ' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' +
                       ' xmlns:xsd="http://www.w3.org/2001/XMLSchema">' +
             '<s:Body>' +
              '<ns2:ConsultarNfseRequest xmlns:ns2="' + URLNS + '">' +
               '<nfseCabecMsg>' +
                 StringReplace(StringReplace(CabMsg, '<', '&lt;', [rfReplaceAll]), '>', '&gt;', [rfReplaceAll]) +
               '</nfseCabecMsg>' +
               '<nfseDadosMsg>' +
                 StringReplace(StringReplace(DadosMsg, '<', '&lt;', [rfReplaceAll]), '>', '&gt;', [rfReplaceAll]) +
               '</nfseDadosMsg>' +
              '</ns2:ConsultarNfseRequest>' +
             '</s:Body>' +
            '</s:Envelope>';
end;

function TProvedorDigifred.GeraEnvelopeCancelarNFSe(URLNS: String; CabMsg,
  DadosMsg, DadosSenha: AnsiString): AnsiString;
begin
  result := '<?xml version="1.0" encoding="UTF-8"?>' +
            '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/"' +
                       ' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' +
                       ' xmlns:xsd="http://www.w3.org/2001/XMLSchema">' +
             '<s:Body>' +
              '<ns2:CancelarNfseRequest xmlns:ns2="' + URLNS + '">' +
               '<nfseCabecMsg>' +
                 StringReplace(StringReplace(CabMsg, '<', '&lt;', [rfReplaceAll]), '>', '&gt;', [rfReplaceAll]) +
               '</nfseCabecMsg>' +
               '<nfseDadosMsg>' +
                 StringReplace(StringReplace(DadosMsg, '<', '&lt;', [rfReplaceAll]), '>', '&gt;', [rfReplaceAll]) +
               '</nfseDadosMsg>' +
              '</ns2:CancelarNfseRequest>' +
             '</s:Body>' +
            '</s:Envelope>';
end;

function TProvedorDigifred.GeraEnvelopeGerarNFSe(URLNS: String; CabMsg,
  DadosMsg, DadosSenha: AnsiString): AnsiString;
begin
  result := '<?xml version="1.0" encoding="UTF-8"?>' +
            '<s:Envelope xmlns:s="http://schemas.xmlsoap.org/soap/envelope/"' +
                       ' xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"' +
                       ' xmlns:xsd="http://www.w3.org/2001/XMLSchema">' +
             '<s:Body>' +
              '<ns2:RecepcionarLoteRpsRequest xmlns:ns2="' + URLNS + '">' +
               '<nfseCabecMsg>' +
                 '&lt;?xml version="1.0" encoding="UTF-8"?&gt;' +
                 StringReplace(StringReplace(CabMsg, '<', '&lt;', [rfReplaceAll]), '>', '&gt;', [rfReplaceAll]) +
               '</nfseCabecMsg>' +
               '<nfseDadosMsg>' +
                 '&lt;?xml version="1.0" encoding="UTF-8"?&gt;' +
                  StringReplace(StringReplace(DadosMsg, '<', '&lt;', [rfReplaceAll]), '>', '&gt;', [rfReplaceAll]) +
               '</nfseDadosMsg>' +
              '</ns2:RecepcionarLoteRpsRequest>' +
             '</s:Body>' +
            '</s:Envelope>';
end;

function TProvedorDigifred.GeraEnvelopeRecepcionarSincrono(URLNS: String;
  CabMsg, DadosMsg, DadosSenha: AnsiString): AnsiString;
begin
  Result := '';
end;

function TProvedorDigifred.GeraEnvelopeSubstituirNFSe(URLNS: String;
  CabMsg, DadosMsg, DadosSenha: AnsiString): AnsiString;
begin
  Result := '';
end;

function TProvedorDigifred.GetSoapAction(Acao: TnfseAcao; NomeCidade: String): String;
begin
  case Acao of
    acRecepcionar: Result := 'http://nfse.abrasf.org.br/RecepcionarLoteRps';
    acConsSit:     Result := 'http://nfse.abrasf.org.br/ConsultarSituacaoLoteRps';
    acConsLote:    Result := 'http://nfse.abrasf.org.br/ConsultarLoteRps';
    acConsNFSeRps: Result := 'http://nfse.abrasf.org.br/ConsultarNfsePorRps';
    acConsNFSe:    Result := 'http://nfse.abrasf.org.br/ConsultarNfseServicoPrestado';
    acCancelar:    Result := 'http://nfse.abrasf.org.br/CancelarNfse';
    acGerar:       Result := 'http://nfse.abrasf.org.br/GerarNfse';
    acRecSincrono: Result := '';
    acSubstituir:  Result := '';
  end;
end;

function TProvedorDigifred.GetRetornoWS(Acao: TnfseAcao; RetornoWS: AnsiString): AnsiString;
begin
  case Acao of
    acRecepcionar: Result := SeparaDados( RetornoWS, 'outputXML' );
    acConsSit:     Result := SeparaDados( RetornoWS, 'outputXML' );
    acConsLote:    Result := SeparaDados( RetornoWS, 'outputXML' );
    acConsNFSeRps: Result := SeparaDados( RetornoWS, 'outputXML' );
    acConsNFSe:    Result := SeparaDados( RetornoWS, 'outputXML' );
    acCancelar:    Result := SeparaDados( RetornoWS, 'outputXML' );
    acGerar:       Result := SeparaDados( RetornoWS, 'outputXML' );
    acRecSincrono: Result := RetornoWS;
    acSubstituir:  Result := RetornoWS;
  end;
end;

function TProvedorDigifred.GeraRetornoNFSe(Prefixo: String;
  RetNFSe: AnsiString; NomeCidade: String): AnsiString;
begin
  Result := '<?xml version="1.0" encoding="UTF-8"?>' +
            '<' + Prefixo + 'CompNfse xmlns="http://www.abrasf.org.br/nfse">' +
              RetNfse +
            '</' + Prefixo + 'CompNfse>';
end;

function TProvedorDigifred.GetLinkNFSe(ACodMunicipio, ANumeroNFSe: Integer;
  ACodVerificacao, AInscricaoM: String; AAmbiente: Integer): String;
begin
  Result := '';
end;

end.
